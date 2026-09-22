;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; SQLite persistence and in-process caches for capability contexts
(import :std/error
        :std/db/interface
        :std/db/db
        :std/db/cache
        :std/db/schema
        :std/db/sqlite
        :std/iter
        :std/text/include
        :std/time/time
        ./interface
        ./did
        ./util)
(export ucan-db
        open-ucan-db
        close-ucan-db!
        ucan-db-save-token!
        ucan-db-list-tokens
        ucan-db-add-root!
        ucan-db-remove-root!
        ucan-db-roots
        ucan-db-add-input-anchor!
        ucan-db-remove-input-anchor!
        ucan-db-input-anchors
        ucan-db-add-output-anchor!
        ucan-db-remove-output-anchor!
        ucan-db-output-anchors)

(def ucan-db-schema (include-text "db.sql"))
(def ucan-db-schema-version 1)
(def ucan-db-default-cleanup-interval 3600)
(def ucan-db-sql-version "PRAGMA user_version")
(def ucan-db-sql-init-version "PRAGMA user_version = 1")
(def ucan-db-sql-load-roots "SELECT did FROM ucan_roots")
(def ucan-db-sql-load-tokens "SELECT kind, token FROM ucan_tokens")
(def ucan-db-sql-add-root "INSERT INTO ucan_roots (did) VALUES (?)")
(def ucan-db-sql-remove-root "DELETE FROM ucan_roots WHERE did = ?")
(def ucan-db-sql-add-token "INSERT INTO ucan_tokens (kind, token, expire) VALUES (?, ?, ?)")
(def ucan-db-sql-remove-token "DELETE FROM ucan_tokens WHERE kind = ? AND token = ?")
(def ucan-db-sql-clear-expired "DELETE FROM ucan_tokens WHERE expire <= ?")

;; Persisted token categories, also used as indexes into token-caches.
(def ucan-db-kind-saved-token 0)
(def ucan-db-kind-input-anchor 1)
(def ucan-db-kind-output-anchor 2)
(def ucan-db-kinds
  [ucan-db-kind-saved-token
   ucan-db-kind-input-anchor
   ucan-db-kind-output-anchor])

;; All connection/statement access and cache access is mutex-protected.
;; Each token cache maps serialized bytes to a privately owned decoded Token.
;; Listings collect cached token references before releasing the lock to call user predicates.
(defstruct ucan-db
  ((connection :- DB)
   (statements :- StatementCache)
   (root-cache :- HashTable)
   (token-caches :- :vector)
   (mutex :- :mutex)
   (closed? :- :boolean)
   (cleanup :- :thread))
  final: #t transparent: #f)

;; Serialize a database operation, rejecting use after close. User predicates
;; run outside this region so they may safely call back into the database module.
(defrule (with-ucan-db where self body ...)
  (using (db self :- ucan-db)
    (do-with-lock db.mutex
      (when db.closed?
        (raise-io-closed where "capability database has been closed"))
      body ...)))

;; Execute one prepared statement under the mutex and always return it to the
;; cache, whose put operation resets execution and clears the bound parameters.
(def (ucan-db-exec! (self : ucan-db)
                    (sql : :string)
                    (args : :list))
  => :void
  (using (stmt (statement-cache-get self.statements sql) :- Statement)
    (unwind-protect
      (begin
        (stmt.bind! args)
        (stmt.exec!))
      (statement-cache-put self.statements sql stmt))))

;; Materialize a query under the mutex; no live SQLite query escapes the call.
(def (ucan-db-query (self : ucan-db)
                    (sql : :string)
                    (args : :list))
  => :list
  (using (stmt (statement-cache-get self.statements sql) :- Statement)
    (unwind-protect
      (begin
        (stmt.bind! args)
        (for/collect (row (stmt.query)) row))
      (statement-cache-put self.statements sql stmt))))

;; Initialize a missing database, or require the exact version of an existing one,
;; then remove expired records before loading the caches. The object is private
;; until return, so no mutex is needed during initialization.
;; Schema creation is transactional and each semicolon-separated statement is
;; executed separately. No signature or trust-policy checks are performed here.
(def (open-ucan-db (path : :string)
                   cleanup-interval: (cleanup-interval : :real := ucan-db-default-cleanup-interval))
  => ucan-db
  (unless (> cleanup-interval 0)
    (raise-contract-violation open-ucan-db "cleanup interval must be positive"
      cleanup-interval: cleanup-interval))
  (let (exists? (and (not (string=? path ":memory:")) (file-exists? path)))
    (using (db (new-db (sqlite-open path)) :- DB)
      (try
       (if exists?
         (let (version (car (db.query ucan-db-sql-version [])))
           (unless (eqv? version ucan-db-schema-version)
             (raise-contract-violation open-ucan-db "unsupported capability database version"
               version: version expected: ucan-db-schema-version)))
         (begin
           (db.begin!)
           (try
             (exec-schema! db ucan-db-schema)
            (db.exec! ucan-db-sql-init-version [])
            (db.commit!)
            (catch (e)
              (db.abort!)
              (raise e)))))
       (let (statements (StatementCache db))
         (try
           (using (self (ucan-db db statements (make-hash-table)
                                 (list->vector (map (lambda (_) (make-hash-table)) ucan-db-kinds))
                                 (make-mutex 'ucan-db) #f #f)
                        :- ucan-db)
            (ucan-db-clear-expired! self)
            (for-each
             (lambda ((did :- :string)) (hash-put! self.root-cache did #t))
             (ucan-db-query self ucan-db-sql-load-roots []))
            (for-each
             (lambda ((row :- :vector))
               (let ((kind (vector-ref row 0)) (bytes (vector-ref row 1)))
                 (unless (memv kind ucan-db-kinds)
                   (raise-contract-violation open-ucan-db "invalid token category" kind))
                 (hash-put! (##vector-ref self.token-caches kind) bytes (unmarshal-token bytes))))
             (ucan-db-query self ucan-db-sql-load-tokens []))
            (set! self.cleanup
              (spawn/name 'ucan-db-cleanup
                (lambda () (ucan-db-cleanup-thread self cleanup-interval))))
            self)
          (catch (e)
            (statement-cache-close statements)
            (raise e))))
       (catch (e)
         (db.close)
         (raise e))))))

;; Wake the cleanup worker, close statements before their connection, and release
;; caches. Join outside the mutex so a worker waiting for it can observe closure.
;; Closure is final even if resource cleanup raises; repeated closes are harmless.
(def (close-ucan-db! (self : ucan-db))
  => :void
  (unwind-protect
    (do-with-lock self.mutex
      (unless self.closed?
        (set! self.closed? #t)
        (thread-send self.cleanup 'close)
        (set! self.root-cache #f)
        (set! self.token-caches #f)
        (unwind-protect
          (statement-cache-close self.statements)
          (self.connection.close))))
    (thread-join! self.cleanup)))

;; Delete expired rows before removing their cache entries, using one cutoff for
;; both. Called under the mutex, or before the new database is exposed to callers.
;; A failed SQL delete leaves the caches unchanged; roots are never expired.
(def (ucan-db-clear-expired! (self : ucan-db))
  => :void
  (let (now (current-time-seconds))
    (ucan-db-exec! self ucan-db-sql-clear-expired [now])
    (for (kind ucan-db-kinds)
      (using (cache (##vector-ref self.token-caches kind) :- HashTable)
        (cache.for-each
         (lambda (bytes token)
           (using (token :- Token)
             (when (<= token.expire now) (cache.delete! bytes)))))))))

;; Wait for either the next cleanup interval or an explicit close notification.
;; Report transient cleanup failures and retry next interval rather than losing
;; the worker. The closed check is under the mutex to avoid racing resource cleanup.
(def (ucan-db-cleanup-thread (self : ucan-db)
                             (interval : :real))
  => :void
  (let loop ()
    (let (message (thread-receive interval #f))
      (unless (eq? message 'close)
        (unless message
          (do-with-lock self.mutex
            (unless self.closed?
              (report-errors (ucan-db-clear-expired! self)))))
        (loop)))))

;; Store by exact serialized content, independently of mutable object identity.
;; Update the cache only after SQLite accepts the write, so SQL failures leave
;; the cached state unchanged.
(def (ucan-db-put-token! (self : ucan-db)
                         (kind : :fixnum)
                         (token : Token))
  => :void
  (let* ((bytes (marshal-token token)) (copy (unmarshal-token bytes)))
    (with-ucan-db ucan-db-put-token! self
      (using (cache (##vector-ref self.token-caches kind) :- HashTable)
        (unless (hash-key? cache bytes)
          (ucan-db-exec! self ucan-db-sql-add-token [kind bytes (Token-expire copy)])
          (hash-put! cache bytes copy))))))

;; Remove one exact token snapshot. A missing record is an idempotent no-op.
(def (ucan-db-remove-token! (self : ucan-db)
                            (kind : :fixnum)
                            (token : Token))
  => :void
  (let (bytes (marshal-token token))
    (with-ucan-db ucan-db-remove-token! self
      (using (cache (##vector-ref self.token-caches kind) :- HashTable)
        (when (hash-key? cache bytes)
          (ucan-db-exec! self ucan-db-sql-remove-token [kind bytes])
          (hash-remove! cache bytes))))))

;; List unexpired records from the cache, without SQL or deserialization.
;; Tokens are shared with the caller and predicate and must not be mutated.
;; Expiration is evaluated per call, so expired tokens are hidden even before the
;; background worker removes their rows and cache entries.
(def (ucan-db-filter-tokens (self : ucan-db)
                            (kind : :fixnum)
                            (filter : :procedure))
  => :list
  (let ((now (current-time-seconds)) (result []))
    (with-ucan-db ucan-db-filter-tokens self
      (using (cache (##vector-ref self.token-caches kind) :- HashTable)
        (cache.for-each
         (lambda (_ token)
           (using (token :- Token)
             (when (> token.expire now)
               (set! result (cons token result))))))))
    (filter! filter result)))

;; Persist a token for later revocation; signing and verification belong to the context.
(def (ucan-db-save-token! (self : ucan-db)
                          (token : Token))
  => :void
  (ucan-db-put-token! self ucan-db-kind-saved-token token))

;; Return unexpired saved tokens satisfying filter, in unspecified order.
(def (ucan-db-list-tokens (self : ucan-db)
                          (filter : :procedure))
  => :list
  (ucan-db-filter-tokens self ucan-db-kind-saved-token filter))

;; Validate and canonicalize at the shared persistence boundary.
;; Root strings are shared with the caller and must not be mutated.
(def (ucan-db-add-root! (self : ucan-db)
                        (did : :string))
  => :void
  (with-ucan-db ucan-db-add-root! self
    (set! did (normalize-did did))
    (unless (hash-key? self.root-cache did)
      (ucan-db-exec! self ucan-db-sql-add-root [did])
      (hash-put! self.root-cache did #t))))

;; Remove a root after a successful SQLite delete; absence is an idempotent no-op.
(def (ucan-db-remove-root! (self : ucan-db)
                           (did : :string))
  => :void
  (with-ucan-db ucan-db-remove-root! self
    (set! did (normalize-did did))
    (when (hash-key? self.root-cache did)
      (ucan-db-exec! self ucan-db-sql-remove-root [did])
      (hash-remove! self.root-cache did))))

;; Return a sorted list of root strings without reading SQLite. Strings are borrowed.
(def (ucan-db-roots (self : ucan-db))
  => :list
  (let (roots (with-ucan-db ucan-db-roots self (hash-keys self.root-cache)))
    (list-sort string<? roots)))

;; Add, remove, and list partial input trust anchors independently of output anchors.
(def (ucan-db-add-input-anchor! (self : ucan-db)
                                (token : Token))
  => :void
  (ucan-db-put-token! self ucan-db-kind-input-anchor token))

(def (ucan-db-remove-input-anchor! (self : ucan-db)
                                   (token : Token))
  => :void
  (ucan-db-remove-token! self ucan-db-kind-input-anchor token))

(def (ucan-db-input-anchors (self : ucan-db)
                            (filter : :procedure))
  => :list
  (ucan-db-filter-tokens self ucan-db-kind-input-anchor filter))

;; Add, remove, and list output delegation anchors independently of input anchors.
(def (ucan-db-add-output-anchor! (self : ucan-db)
                                 (token : Token))
  => :void
  (ucan-db-put-token! self ucan-db-kind-output-anchor token))

(def (ucan-db-remove-output-anchor! (self : ucan-db)
                                    (token : Token))
  => :void
  (ucan-db-remove-token! self ucan-db-kind-output-anchor token))

(def (ucan-db-output-anchors (self : ucan-db)
                             (filter : :procedure))
  => :list
  (ucan-db-filter-tokens self ucan-db-kind-output-anchor filter))
