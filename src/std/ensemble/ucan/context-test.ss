;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Capability context trust, caching and borrowed keystore ownership
(import :std/build-config)
(cond-expand
 (config-have-sqlite
  (import :std/test
          :std/error
          :std/interface
          :std/io/interface
          :std/io/tempfile
          :std/crypto/pkey
          :std/encoding/base58
          :std/struct/lru
          :std/sync/threads
          ../keystore/interface
          ../keystore/memory
          ./interface
          ./did
          ./util
          ./ext
          ./context)
  (export context-test)

  ;; Retain seeds, not native wrappers; each get transfers a fresh key to its caller.
  (defstruct counting-keystore
    ((seeds : HashTable) (gets : :fixnum) (puts : :fixnum)
     (closed? : :boolean) (mutex : :mutex))
    transparent: #f)

  (def (counting-open! (self : counting-keystore)) => :void
    (when self.closed? (raise-io-closed counting-open! "Keystore closed")))

  (def (counting-get (self : counting-keystore) (did : :string)) => PrivKey
    (do-with-lock self.mutex
      (counting-open! self)
      (let (pub (did->public-key did))
        (unwind-protect
          (let (seed (self.seeds.ref (public-key->did pub) #f))
            (unless seed (raise-bad-argument counting-get "Unknown principal" did))
            (set! self.gets (fx+ self.gets 1))
            (bytes->ed25519-private-key seed))
          (foreign-release! (PubKey-key pub))))))

  (def (counting-put! (self : counting-keystore) (key : PrivKey)) => :string
    (do-with-lock self.mutex
      (counting-open! self)
      (let (did (private-key->did key))
        (set! self.puts (fx+ self.puts 1))
        (unless (self.seeds.ref did #f)
          (self.seeds.set! did (private-key->private-bytes key)))
        did)))

  (def (counting-generate! (self : counting-keystore)) => :string
    (let (key (generate-ed25519-key))
      (unwind-protect (counting-put! self key)
        (foreign-release! (PrivKey-key key)))))

  (def (counting-list (self : counting-keystore)) => :list
    (do-with-lock self.mutex
      (counting-open! self)
      (list-sort string<? (hash-keys self.seeds))))

  (def (counting-close (self : counting-keystore)) => :void
    (do-with-lock self.mutex
      (set! self.closed? #t)
      (for-each (lambda (seed) (u8vector-fill! seed 0)) (hash-values self.seeds))
      (set! self.seeds (make-hash-table))))

  (implement
   (Closer (counting-keystore (close counting-close)))
   (Keystore (counting-keystore
              (get-private-key counting-get) (put-private-key! counting-put!)
              (generate-key! counting-generate!) (list-keys counting-list))))

  (def (with-context (proc : :procedure) (path : :string := ":memory:")) => :void
    (using ((backing (counting-keystore (make-hash-table) 0 0 #f (make-mutex))
                    :- counting-keystore)
            (store (Keystore backing) :- Keystore))
      (let ((keys []) (ctx #f))
        (unwind-protect
          (begin
            (for-each (lambda (n)
                        (set! keys (cons (bytes->ed25519-private-key (make-u8vector 32 n)) keys)))
                      '(3 2 1))
            ;; Keep explicit-policy tests independent of implicit principal roots.
            (set! ctx (open-capability-context path store public-key-cache-size: 2))
            (let (dids (map (lambda (key) (store.put-private-key! key)) keys))
              (apply proc ctx store backing keys dids)))
          (unwind-protect
            (when ctx (using (ctx :- CapabilityContext) (ctx.close)))
            (begin
              (store.close)
              (for-each (lambda (key) (foreign-release! (PrivKey-key key))) keys))))))
    (void))

  (def (context-token (issuer : :string) (audience : :string)
                      (chain :? Token := #f)) => Token
    (Token type: DELEGATE issuer: issuer audience: audience protocol: "/svc"
           expire: (expt 2 40) chain: chain))

  ;; Join timeouts fail the case rather than hanging the central runner. Terminate
  ;; unfinished workers before fixture teardown can wait on a lock they hold.
  (def (context-workers (procs : :list)) => :void
    (let (workers (map spawn procs))
      (unwind-protect
        (for-each (lambda (worker) (thread-join! worker 10)) workers)
        (for-each (lambda (worker) (thread-terminate! worker)) workers))))

  (def context-test
    (test-suite "UCAN capability context"
      (test-case "integration with the encrypted memory keystore"
        (using (store (make-memory-keystore #u8(1 2 3 4)) :- Keystore)
          (let (ctx #f)
            (unwind-protect
              (let (did (store.generate-key!))
                (set! ctx (open-capability-context ":memory:" store))
                (using (ctx :- CapabilityContext)
                  (let (token (context-token did did))
                    (check (ctx.roots) => [])
                    (ctx.sign! token)
                    (check (ctx.verify token) => !VerificationOK)
                    (ctx.close)
                    (check (store.list-keys) => [did]))))
              (begin
                (when ctx (CapabilityContext-close ctx))
                (store.close))))))
      (test-case "principals, private cache spelling and independent ownership"
        (with-context
         (lambda ((ctx : CapabilityContext) (store : Keystore)
                  (backing : counting-keystore) keys a b c)
           (check (ctx.principals) => (list-sort string<? [a b c]))
           (check backing.gets => 0)
           (check (ctx.add-principal! (car keys)) => a)
           (check backing.puts => 4)
           (let* ((key (ctx.get-principal a))
                  (alias (string-append "did:key:z" (base58-encode
                          (u8vector-append DID-KEY-ED25519-code
                                           (private-key->public-bytes key))))))
             (check (eq? key (car keys)) => #f)
             (check (eq? (PrivKey-key key) (PrivKey-key (car keys))) => #f)
             (check backing.gets => 1)
             (check (ctx.add-principal! (car keys)) => a)
             (check backing.puts => 5)
             (check (eq? key (ctx.get-principal (string-copy a))) => #t)
             (for-each (lambda (n) (ctx.sign! (context-token a b))) '(1 2 3))
             (check backing.gets => 1)
             (let (other (ctx.get-principal alias))
                (check (eq? key other) => #t)
               (check (eq? other (ctx.get-principal alias)) => #t))
              (check backing.gets => 1)
             (check (ctx.principals) => (store.list-keys))))))

      (test-case "normalization LRU validates, reuses, evicts and clears borrowed strings"
        (with-context
         (lambda ((ctx : CapabilityContext) store backing keys a b c)
           (let* ((aliases (map (lambda (key)
                                  (string-append "did:key:z"
                                    (base58-encode (u8vector-append DID-KEY-ED25519-code
                                                    (private-key->public-bytes key))))) keys))
                  (za (car aliases)) (zb (cadr aliases)) (zc (caddr aliases))
                  (cache (slot-ref (interface-instance-object ctx) 'normalized-dids)))
             (check (eq? (ctx.normalize-did a) a) => #t)
             (check-exception (ctx.normalize-did "did:key:z0invalid") ContractViolation?)
             (check (LRUCache-size cache) => 0)
             (let ((na (ctx.normalize-did za)) (nb (ctx.normalize-did zb)))
               (check na => a)
               (check nb => b)
               (check (eq? na (ctx.normalize-did (string-copy za))) => #t)
               (ctx.normalize-did zc)
               (check (LRUCache-size cache) => 2)
               (check (lru-cache-get cache zb) => #f)
               (check (eq? na (ctx.normalize-did za)) => #t)
               (for-each
                (lambda (bad)
                  (check-exception (ctx.normalize-did bad) ContractViolation?)
                  (check (LRUCache-size cache) => 2)
                  (check (lru-cache-get cache bad) => #f))
                ["" "did:key:u!invalid" "did:key:z0invalid" (string-append za "1")])
               (check (eq? nb (ctx.normalize-did zb)) => #f)
               (check (LRUCache-size cache) => 2)
               (let ((pub (ctx.public-key a))
                     (alias-pub (ctx.public-key za)))
                 (check (eq? pub alias-pub) => #f)
                 (check (public-key->bytes pub) => (public-key->bytes alias-pub))
                 (check (eq? alias-pub (ctx.public-key za)) => #t))
               (ctx.close)
               (check (LRUCache-size cache) => 0)
               (check na => a)
               (check-exception (ctx.normalize-did za) Closed?)
               (check (eq? (ctx.normalize-did a) a) => #t)
               (check-exception (ctx.normalize-did "invalid") ContractViolation?))))))

      (test-case "canonical normalization and prefix rejection do not wait for the cache lock"
        (with-context
         (lambda ((ctx : CapabilityContext) store backing keys a b c)
           (let ((mutex (slot-ref (interface-instance-object ctx) 'mutex))
                 (worker #f))
             (mutex-lock! mutex)
             (unwind-protect
               (begin
                 (set! worker
                   (spawn-thread
                    (lambda ()
                      (list (eq? (ctx.normalize-did a) a)
                            (with-catch ContractViolation?
                              (lambda () (ctx.normalize-did "did:key:u!invalid") #f))
                            (with-catch ContractViolation?
                              (lambda () (ctx.normalize-did "did:key:mAAAA") #f))
                            (with-catch ContractViolation?
                              (lambda () (ctx.normalize-did "invalid") #f))))))
                 (check (thread-join!/error worker 5 #f) => [#t #t #t #t]))
               (begin
                 (mutex-unlock! mutex)
                 (when worker (thread-join!/error worker 5))))))))

      (test-case "root aliases authorize both signed spellings without rewriting token bytes"
        (with-context
         (lambda ((ctx : CapabilityContext) store backing keys a b c)
           (let* ((alias (string-append "did:key:z"
                           (base58-encode (u8vector-append DID-KEY-ED25519-code
                                           (private-key->public-bytes (car keys))))))
                  (canonical-token (context-token a b))
                  (alias-token (context-token alias b)))
             (ctx.sign! canonical-token)
             (ctx.sign! alias-token)
             (let ((canonical-bytes (marshal-token canonical-token))
                   (alias-bytes (marshal-token alias-token)))
               (ctx.add-root! alias)
               (check (ctx.roots) => [a])
               (check (ctx.verify canonical-token) => !VerificationOK)
               (ctx.add-root! a)
               (check (ctx.roots) => [a])
               (ctx.remove-root! alias)
               (ctx.add-root! a)
               (check (ctx.verify alias-token) => !VerificationOK)
               (ctx.save-token! alias-token)
               (check (marshal-token (car (ctx.list-tokens true))) => alias-bytes)
               (check (marshal-token canonical-token) => canonical-bytes)
               (check (marshal-token alias-token) => alias-bytes)
               (ctx.remove-root! alias)
               (check (ctx.roots) => [])
               (check (ctx.verify alias-token) => !AnchorVerificationError))))))

      (test-case "opening snapshots all principals as implicit roots without loading keys"
        (with-context
         (lambda ((ctx : CapabilityContext) (store : Keystore)
                  (backing : counting-keystore) keys a b c)
           (using (local (open-capability-context ":memory:" store) :- CapabilityContext)
             (unwind-protect
               (begin
                 (check backing.gets => 0)
                 (check (local.roots) => [])
                 (for-each
                  (lambda (did)
                    (let (token (ctx.grant! INVOKE did b "/svc" (expt 2 40)))
                      (check (ctx.verify token) => !AnchorVerificationError)
                      (check (local.verify token) => !VerificationOK)
                      (local.add-root! did)
                      (local.remove-root! did)
                      (check (local.verify token) => !VerificationOK)
                      (Token-signature-set! token (make-u8vector 64))
                      (check (local.verify token) => !SignatureVerificationError)))
                  [a b c])
                 (check (local.roots) => [])
                 (let* ((later (store.generate-key!))
                        (token (ctx.grant! INVOKE later b "/svc" (expt 2 40)))
                        (parent (ctx.grant! DELEGATE a later "/" (expt 2 40)))
                        (delegated (ctx.invoke! parent later b "/svc")))
                   ;; An implicit root in an ancestor also establishes trust.
                   (check (local.verify delegated) => !VerificationOK)
                   ;; A new key does not change the already captured snapshot.
                   (check (local.verify token) => !AnchorVerificationError)
                   (local.add-root! later)
                   (check (local.verify token) => !VerificationOK)
                   (local.remove-root! later)
                   (check (local.verify token) => !AnchorVerificationError)
                   (using (reopened (open-capability-context ":memory:" store) :- CapabilityContext)
                     (unwind-protect
                       (check (reopened.verify token) => !VerificationOK)
                       (reopened.close)))))
               (local.close))))))

      (test-case "explicit roots authorize and revoke without signing side effects"
        (with-context
         (lambda ((ctx : CapabilityContext) store backing keys a b c)
           (let (token (context-token a b))
             (ctx.add-principal! (car keys))
             (ctx.sign! token)
             (check (ctx.verify token) => !AnchorVerificationError)
             (check (ctx.roots) => [])
             (ctx.add-output-anchor! token)
             (ctx.sign! token)
             (check (Token-chain token) => #f)
             (check (ctx.list-tokens true) => [])
             (check (ctx.verify token) => !AnchorVerificationError)
             (ctx.add-root! a)
             (check (ctx.verify token) => !VerificationOK)
             (ctx.remove-root! a)
             (check (ctx.verify token) => !AnchorVerificationError)))))

      (test-case "input anchors accept narrowing but reject mismatches and expiration"
        (with-context
         (lambda ((ctx : CapabilityContext) store backing keys a b c)
           (using ((token (context-token a b) :- Token) (anchor (context-token a b) :- Token))
             (set! token.protocol "/svc/read")
             (ctx.sign! token)
             (ctx.sign! anchor)
             (ctx.add-input-anchor! anchor)
             (check (ctx.verify token) => !VerificationOK)
             (ctx.remove-input-anchor! anchor)
             (check (ctx.verify token) => !AnchorVerificationError)
             (for-each
              (lambda (change)
                (using (bad (struct-copy anchor) :- Token)
                  (change bad)
                  (ctx.sign! bad)
                  (ctx.add-input-anchor! bad)
                  (check (ctx.verify token) => !AnchorVerificationError)
                  (ctx.remove-input-anchor! bad)))
              [(lambda ((t : Token)) (set! t.expire (- t.expire 1)))
               (lambda ((t : Token)) (set! t.issuer c))
               (lambda ((t : Token)) (set! t.audience c))
               (lambda ((t : Token)) (set! t.protocol "/other"))
               (lambda ((t : Token)) (set! t.group "/team"))])))))

      (test-case "cryptographic and structural failures precede trust"
        (with-context
         (lambda ((ctx : CapabilityContext) store backing keys a b c)
           (ctx.add-root! a)
           (let (anchor (context-token a b))
             (ctx.sign! anchor)
             (ctx.add-input-anchor! anchor))
           (using (token (context-token a b) :- Token)
             (check (ctx.verify token) => !MalformedTokenVerificationError)
             (ctx.sign! token)
             (set! token.protocol "/tampered")
             (check (ctx.verify token) => !SignatureVerificationError)
             (set! token.expire 0)
             (ctx.sign! token)
             (check (ctx.verify token) => !TokenExpiredVerificationError)))))

      (test-case "both anchor kinds reject invalid credentials before changing policy"
        (with-context
         (lambda ((ctx : CapabilityContext) store backing keys a b c)
           (def parent (context-token a b))
           (def valid (context-token b c parent))
           (ctx.sign! parent)
           (ctx.sign! valid)
           (check (ctx.verify valid) => !AnchorVerificationError)
           (for-each
            (lambda (add!)
              ;; No existing trust path is needed to install a verified anchor.
              (add! ctx valid)
              (for-each
               (lambda (change)
                 (using (bad (struct-copy valid) :- Token)
                   (change bad)
                   (check-exception (add! ctx bad) ContractViolation?)))
               [(lambda ((t : Token)) (set! t.signature #f))
                (lambda ((t : Token)) (set! t.nonce #f))
                (lambda ((t : Token)) (set! t.signature (make-u8vector 64)))
                (lambda ((t : Token)) (set! t.protocol "/tampered"))
                (lambda ((t : Token)) (set! t.expire 0))
                (lambda ((t : Token)) (set! t.issuer "did:key:u!invalid"))
                (lambda ((t : Token)) (set! t.chain t))
                ;; Sign a forbidden narrowing without sign!'s edge checks.
                (lambda ((t : Token))
                  (set! t.protocol "/other")
                  (set! t.signature #f)
                  (set! t.signature (digest-sign! (ctx.get-principal b) (marshal-token t))))]))
            [CapabilityContext-add-output-anchor! CapabilityContext-add-input-anchor!])
           (check (map marshal-token (ctx.output-anchors true)) => [(marshal-token valid)])
           (check (map marshal-token (ctx.input-anchors true)) => [(marshal-token valid)])
           ;; The database owns a snapshot, not the caller's mutable token.
           (Token-signature-set! valid (make-u8vector 64))
           (check (ctx.verify (car (ctx.input-anchors true))) => !VerificationOK))))

      (test-case "multi-principal chains and concurrent sign/verify are reentrant"
        (with-context
         (lambda ((ctx : CapabilityContext) store (backing : counting-keystore) keys a b c)
           (ctx.add-root! a)
           (context-workers
            [(lambda ()
               (let* ((root (context-token a b)) (middle (context-token b c root))
                      (leaf (context-token c a middle)))
                 (ctx.sign! root) (ctx.sign! middle) (ctx.sign! leaf)
                 (check (ctx.verify leaf) => !VerificationOK)
                 (ctx.remove-root! a)
                 (ctx.add-input-anchor! root)
                 (check (ctx.verify leaf) => !VerificationOK)
                 (ctx.remove-input-anchor! root)
                 (check (ctx.verify leaf) => !AnchorVerificationError)))])
           (ctx.add-root! a)
           (context-workers
            (map (lambda (n)
                   (lambda ()
                     (for-each (lambda (i)
                                 (let (token (context-token a b))
                                   (ctx.sign! token)
                                   (check (ctx.verify token) => !VerificationOK)))
                               '(1 2 3 4))))
                 '(1 2 3 4)))
           (check backing.gets => 3))))

      (test-case "LRU hits touch recency; evicted public keys and private keys survive"
        (with-context
         (lambda ((ctx : CapabilityContext) store (backing : counting-keystore) keys a b c)
           (let* ((private (ctx.get-principal b)) (pa (ctx.public-key a))
                  (pb (ctx.public-key b)))
             (check (eq? pa (ctx.public-key a)) => #t)
             (ctx.public-key c)
             (check (eq? pa (ctx.public-key a)) => #t)
             (check (eq? pb (ctx.public-key b)) => #f)
             (check (eq? private (ctx.get-principal b)) => #t)
             (check backing.gets => 1)
             (check (digest-verify! pb #u8(1 2 3) (digest-sign! private #u8(1 2 3))) => #t)
             (ctx.close)
             (check (digest-verify! pa #u8(4) (digest-sign! (car keys) #u8(4))) => #t)
             (check (digest-verify! pb #u8(4) (digest-sign! private #u8(4))) => #t)))))

      (test-case "storage forwarding persists across contexts; filters may reenter"
        (call-with-temporary-directory "ucan-context-"
          (lambda (dir)
            (let (path (path-expand "capabilities.db" dir))
              (with-context
               (lambda ((ctx : CapabilityContext) (store : Keystore) backing keys a b c)
                 (let (token (context-token a b))
                   (ctx.sign! token)
                   (ctx.add-root! a)
                   (ctx.save-token! token)
                   (ctx.add-input-anchor! token)
                   (ctx.add-output-anchor! token)
                   (context-workers
                    [(lambda ()
                       (let (filter (lambda (t) (equal? (ctx.roots) [a])))
                         (check (length (ctx.list-tokens filter)) => 1)
                         (check (length (ctx.input-anchors filter)) => 1)
                         (check (length (ctx.output-anchors filter)) => 1)
                         (check (ctx.list-tokens false) => [])
                         (check (ctx.input-anchors false) => [])
                         (check (ctx.output-anchors false) => [])))])
                   (ctx.close)
                   (using (again (open-capability-context path store) :- CapabilityContext)
                     (unwind-protect
                       (begin
                         (check (again.roots) => [a])
                         (check (length (again.list-tokens true)) => 1)
                         (check (length (again.input-anchors true)) => 1)
                         (check (length (again.output-anchors true)) => 1)
                         (check (again.verify (car (again.list-tokens true))) => !VerificationOK)
                         (again.remove-input-anchor! token)
                         (again.remove-output-anchor! token)
                         (again.remove-root! a)
                         (check (again.input-anchors true) => [])
                         (check (again.output-anchors true) => [])
                         (check (again.roots) => []))
                       (again.close)))))
                path)))))

      (test-case "closed methods reject use; close and failed construction borrow the store"
        (with-context
         (lambda ((ctx : CapabilityContext) (store : Keystore) backing keys a b c)
           (ctx.close) (ctx.close)
           (let (token (context-token a b))
             (for-each (lambda (proc) (check-exception (proc) Closed?))
               [(lambda () (ctx.add-principal! (car keys)))
                (lambda () (ctx.get-principal a)) (lambda () (ctx.principals))
                (lambda () (ctx.public-key a)) (lambda () (ctx.sign! token))
                (lambda () (ctx.verify token)) (lambda () (ctx.save-token! token))
                (lambda () (ctx.list-tokens true)) (lambda () (ctx.roots))
                (lambda () (ctx.add-root! a)) (lambda () (ctx.remove-root! a))
                (lambda () (ctx.add-input-anchor! token)) (lambda () (ctx.remove-input-anchor! token))
                (lambda () (ctx.add-output-anchor! token)) (lambda () (ctx.remove-output-anchor! token))
                (lambda () (ctx.input-anchors true)) (lambda () (ctx.output-anchors true))]))
           (for-each (lambda (size)
                       (check-exception
                        (open-capability-context ":memory:" store public-key-cache-size: size)
                        ContractViolation?))
                     '(0 1))
           (check-exception (open-capability-context ":memory:" store cleanup-interval: 0)
                            ContractViolation?)
           (call-with-temporary-directory "ucan-context-invalid-"
             (lambda (dir)
               (check-exception (open-capability-context dir store) Error?)))
           (check (store.list-keys) => (list-sort string<? [a b c]))
           (let (key (store.get-private-key a))
             (unwind-protect (check (private-key->did key) => a)
                (foreign-release! (PrivKey-key key)))))))))))
