;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Prepared statement checkout and return tests
(import :std/build-config)
(cond-expand
 (config-have-sqlite
  (import :std/test
          :std/error
          :std/iter
          ./interface
          ./db
          ./sqlite
          ./cache)
  (export cache-test)

  (def cache-test
    (test-suite "statement cache"
      (test-case "put resets and clears; get exclusively borrows"
        (let* ((db (new-db (sqlite-open ":memory:")))
               (cache (StatementCache db))
               (sql "SELECT ?")
               (first #f) (second #f))
          (unwind-protect
            (begin
              (set! first (statement-cache-get cache sql))
              (Statement-bind! first [42])
              (check (for/collect (value (Statement-query first)) value) => [42])
              (statement-cache-put cache sql first)
              (let (reused (statement-cache-get cache sql))
                (check (eq? reused first) => #t)
                ;; SQLite treats an unbound parameter as NULL: put cleared 42.
                (check (for/collect (value (Statement-query reused)) value) => [#f]))
              (set! second (statement-cache-get cache sql))
              (check (eq? first second) => #f)
              (statement-cache-put cache sql first)
              (statement-cache-put cache sql second)
              ;; Returning another instance of the same SQL closes the displaced one.
              (check-exception (Statement-bind! first [1]) ContractViolation?)
              (let (reused (statement-cache-get cache sql))
                (check (eq? reused second) => #t)
                (statement-cache-put cache sql reused)))
            (begin
              (when first (Statement-close first))
              (when second (Statement-close second))
              (statement-cache-close cache)
              (DB-close db)))))))))
