;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Internal shared keystore operations
(import :std/error
        :std/interface
        :std/io/interface
        :std/crypto/pkey
        :std/ensemble/ucan/did
        ./interface
        ./crypto)
(export KeystoreBackend
        (struct-out keystore)
        keystore-init!)

;; Internal storage specialization used by the shared Keystore implementation.
;; Backend methods run under the base mutex, except during private construction
;; and failure cleanup. No method may retain decrypted seed buffers.
(interface KeystoreBackend
  ;; Read the current encrypted snapshot under a held storage lock. The caller
  ;; treats the returned bytes as read-only and authenticates them before use.
  (load-snapshot) => :u8vector

  ;; Publish an encrypted snapshot under an exclusive storage lock. The caller
  ;; must not mutate snapshot afterward; persistent backends sync before return.
  ;; A failure after publication must not be reported as a rollback.
  (save-snapshot! (snapshot : :u8vector)) => :void

  ;; Acquire shared access when write? is false, exclusive access otherwise.
  ;; Unwind any acquired lock if backend validation fails before returning.
  (lock! (write? : :boolean)) => :void

  ;; Release the storage lock acquired by lock!, including on transaction failure.
  (unlock!) => :void

  ;; Release backend resources without writing. Also supports cleanup of a
  ;; partially constructed backend; the base handles clearing its derived key.
  (close-storage!) => :void)

;; Common secret ownership, lifecycle, and per-instance serialization state.
;; Concrete subclasses supply storage methods; this caches their interface view.
(defstruct keystore
  ((salt :- :u8vector)
   (key :- :u8vector)
   (mutex :- :mutex)
   (closed? :- :boolean)
   (this :- KeystoreBackend))
  transparent: #f)

;; Initialize the cached backend interface, validate the initial snapshot, and
;; return the public interface. The concrete constructor supplies all fields.
;; Ownership transfers only on successful return; on failure the constructor
;; remains responsible for closing storage and wiping its salt/key.
(def (keystore-init! (self : keystore))
  => Keystore
  (unless (and (fx= (u8vector-length self.salt) 32)
               (fx= (u8vector-length self.key) 64))
    (raise-contract-violation keystore-init! "expected salt:32 and key:64"))
  (set! self.this (KeystoreBackend self))
  (keystore-transaction self (lambda (seeds index) (void)))
  (Keystore self))

;; Serialize an operation and call proc with decrypted seeds and a DID-to-seed
;; index under the requested storage lock. Reload and authenticate each time,
;; rejecting duplicate identities. Proc must not retain the borrowed seeds.
;; Cleanup wipes seeds and releases both locks on success or failure. A fresh
;; native key may escape through get; managed-memory cleansing is best effort.
(def (keystore-transaction (self : keystore)
                           (proc : :procedure)
                           (write? : :boolean := #f))
  => :t
  (do-with-lock self.mutex
    (when self.closed?
      (raise-contract-violation Keystore "keystore has been closed"))
    (self.this.lock! write?)
    (unwind-protect
      (let (seeds (decrypt-keystore self.key self.salt (self.this.load-snapshot)))
        (unwind-protect
          (let (index (make-hash-table))
            (for-each
             (lambda (seed)
               (let (did (keystore-seed->did seed))
                 (when (hash-key? index did)
                   (raise-contract-violation Keystore "duplicate key in snapshot"))
                 (hash-put! index did seed)))
             seeds)
            (proc seeds index))
          (for-each wipe-keystore-bytes! seeds)))
      (self.this.unlock!))))

;; Derive the canonical public DID from a borrowed seed, releasing the temporary
;; native private key on every exit path without modifying the seed.
(def (keystore-seed->did (seed : :u8vector)) => :string
  (let (priv (bytes->ed25519-private-key seed))
    (unwind-protect!
      (private-key->did priv)
      (foreign-release! (PrivKey-key priv)))))

;; Resolve supported DID aliases to the canonical encoding. Translate decoder
;; failures to the keystore's invalid-DID contract and release the public key.
(def (keystore-normalize-did (did : :string)) => :string
  ;; Decoders have several error classes; none should escape this contract or
  ;; retain the untrusted input as an irritant.
  (with-catch
   (lambda (e) (raise-contract-violation Keystore "invalid Ed25519 DID"))
   (lambda ()
     (let (pub (did->public-key did))
       (unwind-protect!
         (public-key->did pub)
         (foreign-release! (PubKey-key pub)))))))

;; Look up a normalized DID and import a fresh private key, checking its identity.
;; Transfer ownership only after the transaction and unlock complete; otherwise
;; release the native key, including when cleanup raises after a successful read.
(def (keystore-get-private-key (self : keystore)
                               (did : :string))
  => PrivKey
  (let ((priv #f) (success? #f))
    (unwind-protect
      (begin
        (keystore-transaction
         self
         (lambda (seeds index)
           (let* ((did (keystore-normalize-did did))
                  (seed (hash-get index did)))
             (unless seed
               (raise-contract-violation Keystore "key not found"))
             (set! priv (bytes->ed25519-private-key seed))
             (unless (equal? did (private-key->did priv))
               (raise-contract-violation Keystore "key identity mismatch"))
             priv)))
        ;; Ownership transfers only after cleanup and unlocking also succeed.
        (set! success? #t)
        priv)
      (when (and priv (not success?))
        (foreign-release! (PrivKey-key priv))))))

;; Insert a borrowed Ed25519 key under an exclusive transaction and return its
;; canonical DID. Existing identities do not rewrite the snapshot. Export through
;; the public key API and cleanse the returned seed buffer even if saving fails.
(def (keystore-insert! (self : keystore)
                       (priv : PrivKey)
                       (seeds : :list)
                       (index : HashTable))
  => :string
  (let* ((did (private-key->did priv))
         (seed (private-key->private-bytes priv)))
    (unwind-protect
      (begin
        (unless (fx= (u8vector-length seed) 32)
          (raise-contract-violation Keystore "expected 32-byte Ed25519 seed"))
        (unless (equal? did (keystore-seed->did seed))
          (raise-contract-violation Keystore "key identity mismatch"))
        (unless (hash-key? index did)
          (self.this.save-snapshot! (encrypt-keystore self.key self.salt (cons seed seeds))))
        did)
      (wipe-keystore-bytes! seed))))

;; Authenticate the current state and insert priv under an exclusive lock.
;; The caller retains ownership of priv even if persistence fails.
(def (keystore-put-private-key! (self : keystore)
                                (priv : PrivKey))
  => :string
  (keystore-transaction self (lambda (seeds index) (keystore-insert! self priv seeds index)) #t))

;; Generate and insert within one exclusive transaction using the same path as
;; put. Release the temporary native private key whether insertion succeeds or not.
(def (keystore-generate-key! (self : keystore)) => :string
  (keystore-transaction
   self
   (lambda (seeds index)
     (let (priv (generate-ed25519-key))
        (unwind-protect
          (keystore-insert! self priv seeds index)
          (foreign-release! (PrivKey-key priv)))))
   #t))

;; Return a sorted list of identities from a freshly authenticated read transaction.
(def (keystore-list-keys (self : keystore)) => :list
  (keystore-transaction self (lambda (seeds index) (list-sort string<? (hash-keys index)))))

;; Serialize close against active operations and make closure final before
;; cleanup. Attempt key/salt cleansing and backend cleanup even if an earlier
;; cleanup step fails; subsequent closes do nothing.
(def (keystore-close (self : keystore)) => :void
  (do-with-lock self.mutex
    (unless self.closed?
      (set! self.closed? #t)
      (unwind-protect!
        (wipe-keystore-bytes! self.key)
        (unwind-protect!
          (wipe-keystore-bytes! self.salt)
          (self.this.close-storage!))))))

(implement
 (Closer (keystore (close __keystore-close)))
 (Keystore
  (keystore
   (get-private-key __keystore-get-private-key)
   (put-private-key! __keystore-put-private-key!)
   (generate-key! __keystore-generate-key!)
   (list-keys __keystore-list-keys))))
