;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Capability database persistence and cache tests
(import :std/build-config)
(cond-expand
 (config-have-sqlite
  (import :std/test
          :std/error
          :std/db/interface
          :std/db/db
          :std/db/sqlite
          :std/io/tempfile
          :std/time/time
          :std/encoding/base58
          ./interface
          ./did
          ./util
          ./db)
  (export db-test)

  (def (test-db-root (n : :fixnum)) => :string
    (public-key-bytes->did DID-KEY-ED25519-code (make-u8vector 32 n)))

  (def (test-db-root-alias (n : :fixnum)) => :string
    (string-append "did:key:z"
      (base58-encode (u8vector-append DID-KEY-ED25519-code (make-u8vector 32 n)))))

  ;; No keys or cryptographic validation are needed for a storage-only backend.
  (def (test-db-token (protocol : :string) (expire : :integer := (expt 2 40))) => Token
    (Token type: DELEGATE issuer: "issuer" audience: "audience"
           protocol: protocol expire: expire))

  (def (test-db-protocols (tokens : :list)) => :list
    (list-sort string<? (map (lambda ((token : Token)) token.protocol) tokens)))

  ;; Observe both disk and cache cleanup under the database mutex, with a bounded
  ;; wait so the periodic-worker test does not depend on an exact scheduling instant.
  (def (test-await-db-cleanup (db : ucan-db) (counts : :list)) => :void
    (let (deadline (+ (current-time-seconds) 5))
      (let loop ()
        (unless (do-with-lock db.mutex
                  (and (equal? (map hash-length (vector->list db.token-caches)) counts)
                       (equal? (db.connection.query "SELECT COUNT(*) FROM ucan_tokens" [])
                               [(apply + counts)])))
          (when (>= (current-time-seconds) deadline)
            (error "capability database cleanup did not complete" counts))
          (thread-sleep! 0.01)
          (loop)))))

  (def db-test
    (test-suite "UCAN SQLite database"
      (test-case "persistence, categories, filters and idempotency"
        (call-with-temporary-directory "ucan-db-"
          (lambda (dir)
            (let* ((path (path-expand "capabilities.db" dir))
                   (db (open-ucan-db path))
                   (live (test-db-token "/svc/read"))
                   (expired (test-db-token "/expired" 0)))
              (unwind-protect
                (begin
                  (check (ucan-db-roots db) => [])
                  (check (ucan-db-list-tokens db true) => [])
                   (ucan-db-add-root! db (test-db-root 2))
                   (ucan-db-add-root! db (test-db-root-alias 1))
                   (ucan-db-add-root! db (test-db-root 1))
                   (check (ucan-db-roots db) => (list-sort string<? (map test-db-root '(1 2))))
                   (for-each
                    (lambda (bad)
                      (check-exception (ucan-db-add-root! db bad) ContractViolation?)
                      (check-exception (ucan-db-remove-root! db bad) ContractViolation?))
                    ["invalid" "did:key:u!invalid" "did:key:z0invalid"])
                  (ucan-db-save-token! db live)
                  (ucan-db-save-token! db (unmarshal-token (marshal-token live)))
                  (ucan-db-add-input-anchor! db live)
                  (ucan-db-add-output-anchor! db live)
                  (ucan-db-save-token! db expired)
                  (ucan-db-add-input-anchor! db expired)
                  (ucan-db-add-output-anchor! db expired)
                  (check (test-db-protocols (ucan-db-list-tokens db true)) => '("/svc/read"))
                  (check (ucan-db-list-tokens db false) => [])
                  (close-ucan-db! db)
                  (set! db (open-ucan-db path))
                   (check (ucan-db-roots db) => (list-sort string<? (map test-db-root '(1 2))))
                  (for-each
                   (lambda (list-tokens)
                     (check (test-db-protocols (list-tokens db true)) => '("/svc/read")))
                   [ucan-db-list-tokens ucan-db-input-anchors ucan-db-output-anchors])
                  (ucan-db-remove-input-anchor! db (unmarshal-token (marshal-token live)))
                  (ucan-db-remove-input-anchor! db live)
                  (check (ucan-db-input-anchors db true) => [])
                  (check (length (ucan-db-output-anchors db true)) => 1)
                  (ucan-db-remove-output-anchor! db live)
                   (ucan-db-remove-root! db (test-db-root-alias 1))
                   (ucan-db-remove-root! db (test-db-root 1))
                   (ucan-db-remove-root! db (test-db-root 3))
                  (close-ucan-db! db)
                  (set! db (open-ucan-db path))
                   (check (ucan-db-roots db) => [(test-db-root 2)])
                  (check (ucan-db-input-anchors db true) => [])
                  (check (ucan-db-output-anchors db true) => [])
                  (check (length (ucan-db-list-tokens db true)) => 1))
                (close-ucan-db! db))))))

      (test-case "token snapshots, borrowed roots and reentrant filters"
        (let ((db (open-ucan-db ":memory:")) (root (test-db-root 1)))
          (unwind-protect
            (using (token (test-db-token "/original") :- Token)
              (ucan-db-add-root! db root)
              (check (eq? (car (ucan-db-roots db)) root) => #t)
              (ucan-db-save-token! db token)
              (set! token.protocol "/changed")
              (check (test-db-protocols (ucan-db-list-tokens db true)) => '("/original"))
              (let (result (ucan-db-list-tokens db
                            (lambda ((cached : Token))
                               (check (ucan-db-roots db) => [root])
                              (equal? cached.protocol "/original"))))
                (check (test-db-protocols result) => '("/original"))
                (check (eq? (car result) (car (ucan-db-list-tokens db true))) => #t))
              (check (test-db-protocols (ucan-db-list-tokens db true)) => '("/original")))
            (close-ucan-db! db))))

      (test-case "failed writes preserve cache and reusable statements"
        (using (db (open-ucan-db ":memory:") :- ucan-db)
          (unwind-protect
            (let ((a (test-db-token "/a")) (b (test-db-token "/b")))
               (ucan-db-add-root! db (test-db-root 1))
              (ucan-db-add-input-anchor! db a)
              (db.connection.exec! "PRAGMA query_only = ON" [])
              (check-exception (ucan-db-save-token! db b) SQLError?)
               (check-exception (ucan-db-add-root! db (test-db-root 2)) SQLError?)
               (check-exception (ucan-db-remove-root! db (test-db-root-alias 1)) SQLError?)
              (check-exception (ucan-db-remove-input-anchor! db a) SQLError?)
               (check (ucan-db-roots db) => [(test-db-root 1)])
              (check (ucan-db-list-tokens db true) => [])
              (check (test-db-protocols (ucan-db-input-anchors db true)) => '("/a"))
               (check (db.connection.query "SELECT did FROM ucan_roots" []) => [(test-db-root 1)])
              (db.connection.exec! "PRAGMA query_only = OFF" [])
              (ucan-db-save-token! db b)
               (ucan-db-add-root! db (test-db-root 2))
               (ucan-db-remove-root! db (test-db-root-alias 1))
              (ucan-db-remove-input-anchor! db a)
               (check (ucan-db-roots db) => [(test-db-root 2)])
              (check (ucan-db-input-anchors db true) => [])
              (check (test-db-protocols (ucan-db-list-tokens db true)) => '("/b")))
            (close-ucan-db! db))))

      (test-case "cached reads do not query SQLite"
        (using (db (open-ucan-db ":memory:") :- ucan-db)
          (unwind-protect
            (let (token (test-db-token "/cached"))
               (ucan-db-add-root! db (test-db-root 1))
              (ucan-db-save-token! db token)
              (ucan-db-add-input-anchor! db token)
              (ucan-db-add-output-anchor! db token)
              ;; Deliberate fault injection, not a supported external-write workflow.
              ;; Any SELECT after these drops would fail instead of returning the cache.
              (db.connection.exec! "DROP TABLE ucan_roots" [])
              (db.connection.exec! "DROP TABLE ucan_tokens" [])
               (check (ucan-db-roots db) => [(test-db-root 1)])
              (for-each
               (lambda (list-tokens)
                 (check (test-db-protocols (list-tokens db true)) => '("/cached")))
               [ucan-db-list-tokens ucan-db-input-anchors ucan-db-output-anchors]))
            (close-ucan-db! db))))

      (test-case "mutex serialization and closed-state checks"
        (let ((db (open-ucan-db ":memory:")) (workers []))
          (unwind-protect
            (begin
              (set! workers
                (map (lambda (id)
                       (spawn (lambda ()
                                (let (name (number->string id))
                                   (ucan-db-add-root! db (test-db-root id))
                                  (ucan-db-save-token! db (test-db-token name))))))
                     '(1 2 3 4 5 6 7 8)))
              (for-each (lambda (thread) (thread-join! thread 10)) workers)
               (check (ucan-db-roots db) => (list-sort string<? (map test-db-root '(1 2 3 4 5 6 7 8))))
              (check (length (ucan-db-list-tokens db true)) => 8)
              (close-ucan-db! db)
              (close-ucan-db! db)
              (check-exception (ucan-db-roots db) Closed?)
               (check-exception (ucan-db-add-root! db (test-db-root 1)) Closed?)
              (check-exception (ucan-db-list-tokens db true) Closed?)
              (check-exception (ucan-db-save-token! db (test-db-token "/closed")) Closed?))
            (unwind-protect
              (for-each (lambda (thread) (thread-join! thread 10)) workers)
              (close-ucan-db! db)))))

      (test-case "opening deletes expired rows before decoding them"
        (call-with-temporary-directory "ucan-db-expired-"
          (lambda (dir)
            (let* ((path (path-expand "capabilities.db" dir))
                   (db (open-ucan-db path))
                   (live (test-db-token "/live"))
                   (expired (test-db-token "/expired" 0)))
              (unwind-protect
                (begin
                  (for-each (lambda (save) (save db live) (save db expired))
                            [ucan-db-save-token! ucan-db-add-input-anchor! ucan-db-add-output-anchor!])
                  (close-ucan-db! db)
                  (using (sql (new-db (sqlite-open path)) :- DB)
                    (unwind-protect
                      (begin
                        (check (sql.query "SELECT COUNT(*) FROM ucan_tokens" []) => [6])
                        ;; Expired malformed payloads must be deleted before unmarshal-token.
                        (sql.exec! "UPDATE ucan_tokens SET token = ? WHERE expire = ?" [#u8() 0]))
                      (sql.close)))
                  (set! db (open-ucan-db path))
                  (using (db :- ucan-db)
                    (check (db.connection.query "SELECT COUNT(*) FROM ucan_tokens" []) => [3]))
                  (for-each
                   (lambda (list-tokens)
                     (check (test-db-protocols (list-tokens db true)) => '("/live")))
                   [ucan-db-list-tokens ucan-db-input-anchors ucan-db-output-anchors]))
                (close-ucan-db! db))))))

      (test-case "periodic cleanup purges all token categories but not roots"
        (using (db (open-ucan-db ":memory:" cleanup-interval: 0.05) :- ucan-db)
          (unwind-protect
            (let ((live (test-db-token "/live"))
                  (expired (test-db-token "/expired" 0))
                  (post-2038 (test-db-token "/after-2038" (+ (expt 2 31) 17))))
               (ucan-db-add-root! db (test-db-root 1))
              (ucan-db-save-token! db post-2038)
              (for-each (lambda (save) (save db live) (save db expired))
                        [ucan-db-save-token! ucan-db-add-input-anchor! ucan-db-add-output-anchor!])
              (test-await-db-cleanup db '(2 1 1))
               (check (ucan-db-roots db) => [(test-db-root 1)])
              (check (test-db-protocols (ucan-db-list-tokens db true)) => '("/after-2038" "/live"))
              (do-with-lock db.mutex
                (check (db.connection.query "SELECT expire FROM ucan_tokens WHERE kind = ? AND token = ?"
                                             [0 (marshal-token post-2038)])
                       => [(Token-expire post-2038)])))
            (close-ucan-db! db))))

      (test-case "close wakes and joins the cleanup worker"
        (using (db (open-ucan-db ":memory:") :- ucan-db)
          (unwind-protect
            (let (worker db.cleanup)
              (check (thread-join! worker 0 'waiting) => 'waiting)
              (close-ucan-db! db)
              (check (thread-join! worker 0 'waiting) => #!void)
              (close-ucan-db! db))
            (close-ucan-db! db)))
        (check-exception (open-ucan-db ":memory:" cleanup-interval: 0) ContractViolation?)
        (check-exception (open-ucan-db ":memory:" cleanup-interval: -1) ContractViolation?))

      (test-case "unsupported schema and malformed stored token"
        (call-with-temporary-directory "ucan-db-invalid-"
          (lambda (dir)
            (let* ((path (path-expand "capabilities.db" dir)) (db (open-ucan-db path)))
              (close-ucan-db! db)
              (using (sql (new-db (sqlite-open path)) :- DB)
                (unwind-protect
                  (begin
                    (for-each
                     (lambda (version)
                       (sql.exec! (string-append "PRAGMA user_version = " (number->string version)) [])
                       (check-exception (open-ucan-db path) ContractViolation?)
                       (check (sql.query "PRAGMA user_version" []) => [version]))
                     '(0 99))
                    (sql.exec! "PRAGMA user_version = 1" [])
                    (sql.exec! "INSERT INTO ucan_tokens (kind, token, expire) VALUES (?, ?, ?)"
                               [0 #u8() (expt 2 40)])
                    (check-exception (open-ucan-db path) Error?)
                    (sql.exec! "DELETE FROM ucan_tokens" [])
                    (set! db (open-ucan-db path))
                    (check (ucan-db-list-tokens db true) => [])
                    (close-ucan-db! db))
                  (sql.close)))))))))))
