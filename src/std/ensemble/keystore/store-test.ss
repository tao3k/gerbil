;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Shared keystore — transaction failure and ownership regressions
(import :std/test
        :std/error
        :std/interface
        :std/io/interface
        :std/crypto/pkey
        :std/ensemble/ucan/did
        :std/ensemble/keystore
        ./store
        ./crypto)
(export store-test)

;; In-memory fault-injection backend that records lock mode and successful saves.
(defstruct (test-keystore keystore)
  ((snapshot :- :u8vector)
   (failure :- :t)
   (locked? :- :boolean)
   (write-locked? :- :boolean)
   (saves :- :fixnum)
   (closes :- :fixnum))
  final: #t transparent: #f)

;; Assert read locking and optionally fail before returning borrowed ciphertext.
(def (test-keystore-load-snapshot (self : test-keystore)) => :u8vector
  (check self.locked? => #t)
  (when (eq? self.failure 'load) (raise 'load-failure))
  self.snapshot)

;; Assert exclusive access; injected failures leave the previous snapshot intact.
(def (test-keystore-save-snapshot! (self : test-keystore) (snapshot : :u8vector))
  => :void
  (check self.locked? => #t)
  (check self.write-locked? => #t)
  (when (eq? self.failure 'save) (raise 'save-failure))
  (set! self.saves (+ self.saves 1))
  (set! self.snapshot snapshot))

;; Record nonrecursive lock acquisition and the mode requested by the base store.
(def (test-keystore-lock! (self : test-keystore) (write? : :boolean)) => :void
  (check self.locked? => #f)
  (set! self.locked? #t)
  (set! self.write-locked? write?))

;; Release recorded ownership, optionally raising to exercise post-operation cleanup.
(def (test-keystore-unlock! (self : test-keystore)) => :void
  (check self.locked? => #t)
  (set! self.locked? #f)
  (when (eq? self.failure 'unlock) (raise 'unlock-failure))
  (void))

;; Count close attempts and optionally fail, testing that base closure stays final.
(def (test-keystore-close-storage! (self : test-keystore)) => :void
  (check self.locked? => #f)
  (set! self.closes (+ self.closes 1))
  (when (eq? self.failure 'close) (raise 'close-failure))
  (void))

(implement KeystoreBackend test-keystore
  (load-snapshot test-keystore-load-snapshot)
  (save-snapshot! test-keystore-save-snapshot!)
  (lock! test-keystore-lock!)
  (unlock! test-keystore-unlock!)
  (close-storage! test-keystore-close-storage!))
(@implement Keystore test-keystore)
(@implement Closer test-keystore)

(def store-test
  (test-suite "shared keystore transactions"
    (test-case "load/save exceptions release locks and preserve committed data"
      (let* ((salt (make-u8vector 32 3)) (key (make-u8vector 64 4))
             (seed (make-u8vector 32 5)) (priv #f) (store #f)
             (backing (test-keystore salt key (make-mutex 'test-keystore) #f #f
                                     (encrypt-keystore key salt []) #f #f #f 0 0)))
        (using (backing :- test-keystore)
          (unwind-protect
            (begin
              (set! priv (bytes->ed25519-private-key seed))
              (set! store (keystore-init! backing))
              (check backing.locked? => #f)
              (check backing.write-locked? => #f)
              (set! backing.failure 'load)
              (check-exception (Keystore-list-keys store) (lambda (e) (eq? e 'load-failure)))
              (check backing.locked? => #f)
              (set! backing.failure 'save)
              (let (before (u8vector-copy backing.snapshot))
                (check-exception (Keystore-put-private-key! store priv)
                                 (lambda (e) (eq? e 'save-failure)))
                (check-exception (Keystore-generate-key! store)
                                 (lambda (e) (eq? e 'save-failure)))
                (check backing.snapshot => before))
              (check backing.locked? => #f)
              (set! backing.failure #f)
              (check (Keystore-list-keys store) => [])
              (check backing.write-locked? => #f)
              (check (Keystore-put-private-key! store priv) => (private-key->did priv))
              (check backing.write-locked? => #t)
              (check backing.saves => 1)
              (set! backing.failure 'save)
              (check (Keystore-put-private-key! store priv) => (private-key->did priv))
              (check backing.saves => 1)
              ;; Duplicate insertion is not a shortcut around authentication.
              (let (good backing.snapshot)
                (set! backing.snapshot (u8vector-copy good))
                (u8vector-set! backing.snapshot 60
                              (bitwise-xor 1 (u8vector-ref backing.snapshot 60)))
                (check-exception (Keystore-put-private-key! store priv) ContractViolation?)
                (check backing.locked? => #f)
                (set! backing.snapshot (encrypt-keystore key salt [seed seed]))
                (check-exception (Keystore-list-keys store) ContractViolation?)
                (check-exception (Keystore-put-private-key! store priv) ContractViolation?)
                (check backing.locked? => #f)
                (set! backing.snapshot good))
              (check (Keystore-list-keys store) => [(private-key->did priv)])
              (set! backing.failure 'unlock)
              (check-exception (Keystore-get-private-key store (private-key->did priv))
                               (lambda (e) (eq? e 'unlock-failure)))
              (check backing.locked? => #f)
              (set! backing.failure #f)
              (let (retrieved (Keystore-get-private-key store (private-key->did priv)))
                (unwind-protect
                  (check (private-key->did retrieved) => (private-key->did priv))
                  (foreign-release! (PrivKey-key retrieved))))
              (check backing.locked? => #f)
              (check backing.write-locked? => #f)
              (Closer-close store)
              (Closer-close store)
              (check backing.closes => 1)
              (check salt => (make-u8vector 32 0))
              (check key => (make-u8vector 64 0)))
            (begin
              (when store (Closer-close store))
              (when priv (foreign-release! (PrivKey-key priv)))
              (for-each wipe-keystore-bytes! [seed key salt]))))))
    (test-case "failed constructor retains caller ownership; close failure is final"
      (let* ((salt (make-u8vector 32 8)) (key (make-u8vector 64 9))
             (seed (make-u8vector 32 10))
             (backing (test-keystore salt key (make-mutex 'test-keystore) #f #f
                                     (encrypt-keystore key salt [seed seed])
                                     'close #f #f 0 0))
             (store #f))
        (using (backing :- test-keystore)
          (unwind-protect
            (begin
              (check-exception
                (let (unexpected (keystore-init! backing))
                  (Closer-close unexpected))
                ContractViolation?)
              (check backing.locked? => #f)
              (check backing.write-locked? => #f)
              (check backing.closes => 0)
              (check salt => (make-u8vector 32 8))
              (check key => (make-u8vector 64 9))
              (set! backing.snapshot (encrypt-keystore key salt []))
              (u8vector-set! backing.snapshot 60
                            (bitwise-xor 1 (u8vector-ref backing.snapshot 60)))
              (check-exception (keystore-init! backing) ContractViolation?)
              (check backing.locked? => #f)
              (check backing.closes => 0)
              (check salt => (make-u8vector 32 8))
              (check key => (make-u8vector 64 9))
              (set! backing.snapshot (encrypt-keystore key salt []))
              (set! store (keystore-init! backing))
              (check-exception (Closer-close store) (lambda (e) (eq? e 'close-failure)))
              (Closer-close store)
              (check backing.closes => 1)
              (check key => (make-u8vector 64 0))
              (check salt => (make-u8vector 32 0))
              (check-exception (Keystore-list-keys store) ContractViolation?))
            (begin
              (when store (Closer-close store))
              (for-each wipe-keystore-bytes! [seed key salt]))))))))
