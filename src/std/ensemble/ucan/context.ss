;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Capability context backed by a keystore and SQLite policy database
(import :std/error
        :std/interface
        :std/io/interface
        :std/crypto/pkey
        :std/struct/lru
        :std/ensemble/keystore/interface
        ./interface
        ./did
        ./cap
        ./db)
(export open-capability-context)

;; The database is owned; the keystore is borrowed. Cached keys are shared,
;; immutable objects whose native storage is reclaimed when their last reference
;; disappears. Eviction and close must not invalidate keys held by callers.
(defstruct capability-context
  ((database :- ucan-db)
   (keystore :- Keystore)
   (implicit-roots :- :list)
   (private-keys :- HashTable)
   (public-keys :- LRUCache)
   (normalized-dids :- LRUCache)
   (mutex :- :mutex)
   (closed? :- :boolean)
   (this :- CapabilityContext))
  final: #t transparent: #f)

;; Check lifecycle state and serialize cache access. Do not wrap complete signing,
;; verification, or database filtering operations: those may reenter the context.
(defrule (with-capability-context where self body ...)
  (using (context self :- capability-context)
    (do-with-lock context.mutex
      (when context.closed?
        (raise-io-closed where "capability context has been closed"))
      body ...)))

;; Open the owned policy database and initialize empty key caches. LRU capacity
;; must exceed one, as required by LRUCache. Constructor failure closes the
;; database but never closes the supplied keystore. Anchor validity is established
;; at insertion; the database removes expired rows when opened. Snapshot principal
;; DIDs as implicit roots without loading any private keys. Keystore.list-keys
;; already guarantees canonical DIDs.
(def (open-capability-context (path : :string)
                              (keystore : Keystore)
                              public-key-cache-size: (public-key-cache-size : :fixnum := 1024)
                              cleanup-interval: (cleanup-interval : :real := 3600))
  => CapabilityContext
  (let* ((public-keys (make-LRUCache public-key-cache-size))
         (database (open-ucan-db path cleanup-interval: cleanup-interval)))
    (try
     (using (self (capability-context database keystore (keystore.list-keys)
                                      (make-hash-table-string)
                                      public-keys (make-LRUCache public-key-cache-size)
                                      (make-mutex 'capability-context) #f #f)
                  :- capability-context)
       (set! self.this (CapabilityContext self))
       self.this)
     (catch (e)
       (close-ucan-db! database)
       (raise e)))))

;; Canonical validation needs no shared state. Only the alias cache path locks.
(def (capability-context-normalize-did (self : capability-context)
                                      (did : :string))
  => :string
  (cond
   ((string-prefix? "did:key:u" did)
    (normalize-did did))
   ((string-prefix? "did:key:z" did)
    (with-capability-context capability-context-normalize-did self
      (or (lru-cache-get self.normalized-dids did)
          (let (canonical (normalize-did did))
            (lru-cache-put! self.normalized-dids did canonical)
            canonical))))
   (else
    (raise-bad-argument capability-context-normalize-did "invalid Ed25519 did:key prefix" did))))

;; Fetch a private key once and retain it for the context's lifetime. Lookup and
;; insertion hold the context mutex; the keystore returns a fresh native key.
(def (capability-context-private-key (self : capability-context)
                                     (did : :string))
  => PrivKey
  (set! did (capability-context-normalize-did self did))
  (with-capability-context capability-context-private-key self
    (or (self.private-keys.ref did #f)
        (let (key (self.keystore.get-private-key did))
          (self.private-keys.set! did key)
          key))))

;; Persist first, then populate the cache from the keystore rather than retaining
;; the caller's native key. Existing cached principals need not be loaded again.
(def (capability-context-add-principal! (self : capability-context)
                                        (priv : PrivKey))
  => :string
  (let (did (with-capability-context capability-context-add-principal! self
              (self.keystore.put-private-key! priv)))
    (capability-context-private-key self did)
    did))

;; Return a shared cached key; hits perform neither keystore I/O nor DID decoding.
(def (capability-context-get-principal (self : capability-context)
                                       (did : :string))
  => PrivKey
  (capability-context-private-key self did))

;; Enumerate all stored principals, including keys not yet loaded into the cache.
(def (capability-context-principals (self : capability-context))
  => :list
  (with-capability-context capability-context-principals self
    (self.keystore.list-keys)))

;; Touch hits in the LRU and decode only on a miss. Eviction drops a reference,
;; not the native key itself: in-flight verification may still be using that key.
(def (capability-context-public-key (self : capability-context)
                                    (did : :string))
  => PubKey
  (with-capability-context capability-context-public-key self
    (or (lru-cache-get self.public-keys did)
        (let (key (did->public-key did))
          (lru-cache-put! self.public-keys did key)
          key))))

;; Sign the supplied chain without choosing an output anchor or saving the token.
;; The helper reenters get-principal, so the context mutex is not held around it.
(def (capability-context-sign! (self : capability-context)
                               (token : Token))
  => :void
  (with-capability-context capability-context-sign! self (void))
  (sign-token! token self.this))

;; Validate the chain before establishing trust through a root or an unexpired
;; input anchor. Principals present at opening are implicit roots; output anchors
;; confer no input trust. Key/codec/storage exceptions propagate unchanged.
(def (capability-context-verify (self : capability-context)
                                (token : Token))
  => VerificationResult
  (let* ((database (with-capability-context capability-context-verify self self.database))
         (result (verify-token token self.this)))
    (if (!VerificationOK? result)
      (if (or (ormap (lambda ((did :- :string)) (token-rooted-at? token did self.this))
                     self.implicit-roots)
              (ormap (lambda ((did :- :string)) (token-rooted-at? token did self.this))
                     (ucan-db-roots database))
              (ormap (lambda ((anchor :- Token)) (token-anchored-at? token anchor self.this))
                     (ucan-db-input-anchors database true)))
        !VerificationOK
        !AnchorVerificationError)
      result)))

;; Save explicitly for future revocation; signing alone does not save a token.
(def (capability-context-save-token! (self : capability-context)
                                     (token : Token))
  => :void
  (ucan-db-save-token!
   (with-capability-context capability-context-save-token! self self.database)
   token))

;; Forward listing without holding the context mutex while user predicates run.
(def (capability-context-list-tokens (self : capability-context)
                                     (filter : :procedure))
  => :list
  (ucan-db-list-tokens
   (with-capability-context capability-context-list-tokens self self.database)
   filter))

;; Validate credentials without requiring existing input trust: installing an
;; anchor is itself an explicit policy decision. Never catch key/codec/crypto
;; exceptions or include credential contents in the rejection diagnostics.
(def (capability-context-check-anchor (self : capability-context)
                                      (token : Token))
  => :void
  (let (result (verify-token token self.this))
    (unless (!VerificationOK? result)
      (raise-contract-violation capability-context-check-anchor "invalid anchor"
        (VerificationError-reason result)))))

;; Output anchors supply parent delegations for outgoing operations only.
;; Verify before persistence, outside the mutex because key lookup reenters it.
(def (capability-context-add-output-anchor! (self : capability-context)
                                            (token : Token))
  => :void
  (let (database (with-capability-context capability-context-add-output-anchor! self self.database))
    (capability-context-check-anchor self token)
    (ucan-db-add-output-anchor! database token)))

(def (capability-context-remove-output-anchor! (self : capability-context)
                                               (token : Token))
  => :void
  (ucan-db-remove-output-anchor!
   (with-capability-context capability-context-remove-output-anchor! self self.database)
   token))

(def (capability-context-output-anchors (self : capability-context)
                                        (filter : :procedure))
  => :list
  (ucan-db-output-anchors
   (with-capability-context capability-context-output-anchors self self.database)
   filter))

;; Input anchors confer explicit partial trust, but must also be valid signed
;; credentials. Verification does not require a previously installed trust path.
(def (capability-context-add-input-anchor! (self : capability-context)
                                           (token : Token))
  => :void
  (let (database (with-capability-context capability-context-add-input-anchor! self self.database))
    (capability-context-check-anchor self token)
    (ucan-db-add-input-anchor! database token)))

(def (capability-context-remove-input-anchor! (self : capability-context)
                                              (token : Token))
  => :void
  (ucan-db-remove-input-anchor!
   (with-capability-context capability-context-remove-input-anchor! self self.database)
   token))

(def (capability-context-input-anchors (self : capability-context)
                                       (filter : :procedure))
  => :list
  (ucan-db-input-anchors
   (with-capability-context capability-context-input-anchors self self.database)
   filter))

;; The shared database boundary validates and canonicalizes root identities.
(def (capability-context-add-root! (self : capability-context)
                                   (did : :string))
  => :void
  (ucan-db-add-root!
   (with-capability-context capability-context-add-root! self self.database)
   did))

(def (capability-context-remove-root! (self : capability-context)
                                      (did : :string))
  => :void
  (ucan-db-remove-root!
   (with-capability-context capability-context-remove-root! self self.database)
   did))

(def (capability-context-roots (self : capability-context))
  => :list
  (ucan-db-roots
   (with-capability-context capability-context-roots self self.database)))

;; Clear cache references, but do not release shared native keys still held by
;; callers. Close/join the owned database outside the context mutex. The borrowed
;; keystore stays open; repeated closes are idempotent through close-ucan-db!.
(def (capability-context-close (self : capability-context))
  => :void
  (unwind-protect!
    (do-with-lock self.mutex
      (unless self.closed?
        (set! self.closed? #t)
        (self.private-keys.clear!)
        (lru-cache-flush! self.normalized-dids)
        (lru-cache-flush! self.public-keys)))
    (close-ucan-db! self.database)))

(implement
 (Closer
  (capability-context
   (close __capability-context-close)))
 (CapabilityContext
  (capability-context
   (normalize-did __capability-context-normalize-did)
   (add-principal! __capability-context-add-principal!)
   (get-principal __capability-context-get-principal)
   (principals __capability-context-principals)
   (public-key __capability-context-public-key)
   (sign! __capability-context-sign!)
   (verify __capability-context-verify)
   (save-token! __capability-context-save-token!)
   (list-tokens __capability-context-list-tokens)
   (add-output-anchor! __capability-context-add-output-anchor!)
   (remove-output-anchor! __capability-context-remove-output-anchor!)
   (output-anchors __capability-context-output-anchors)
   (add-input-anchor! __capability-context-add-input-anchor!)
   (remove-input-anchor! __capability-context-remove-input-anchor!)
   (input-anchors __capability-context-input-anchors)
   (add-root! __capability-context-add-root!)
   (remove-root! __capability-context-remove-root!)
   (roots __capability-context-roots))))
