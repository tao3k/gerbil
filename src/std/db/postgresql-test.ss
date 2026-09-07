;;; -*- Gerbil -*-
;;; (C) vyzo, drewc
;;; PostgreSQL DB driver tests

(cond-expand
  (enable-postgresql-test
   (import :std/test :std/iter
           :std/net/address/types
           ./interface
           ./db
           ./postgresql-driver
           ./postgresql
           :std/sync/channel
           :std/list/plist
           :std/error)
   (export postgresql-test
           test-setup!
           test-cleanup!)

   (def (create-test-user-and-database
         host: (h "localhost")
         port: (p 5432)
         user: (u "postgres")
         passwd: (pw "postgres"))
     (def db (new-db (postgresql-connect host: h port: p user: u passwd: pw)))
     (try
      (DB-exec! db "DROP DATABASE IF EXISTS test" '())
      (DB-exec! db "DROP ROLE IF EXISTS test" '())
      (DB-exec! db "CREATE ROLE test PASSWORD 'test' LOGIN" '())
      (DB-exec! db "CREATE DATABASE test OWNER test" '())
      (finally
       (DB-close db))))

   (def (drop-test-user-and-database
         host: (h "localhost")
         port: (p 5432)
         user: (u "postgres")
         passwd: (pw "postgres"))
     (def db (new-db (postgresql-connect host: h port: p user: u passwd: pw)))
     (try
      (try (DB-exec! db "DROP DATABASE IF EXISTS test" '())
           (catch (e) (display-exception e)))
      (try (DB-exec! db "DROP ROLE IF EXISTS test" '())
           (catch (e) (display-exception e)))
      (finally
       (DB-close db))))

   (def (test-setup!)
     (create-test-user-and-database))

   (def (test-cleanup!)
     (drop-test-user-and-database))

   (defrule (with-cleanup cleanup body ...)
     (try body ...
          (finally cleanup)))

   (def postgresql-test
     (test-suite "db/postgresql"
       (test-case "postgresql url parsing"
         (defrule (checks (url . res) ...)
           (begin (check (parse-postgres-database-url url) => 'res) ...))
         (checks ("postgres://server/db" "server" #f "db" #f #f #f)
                 ("postgres://foo@server/db" "server" #f "db" "foo" #f #f)
                 ("postgres://foo:bar@server:5432/blah?connect_timeout=10"
                  "server" 5432 "blah" "foo" "bar" "connect_timeout=10")
                 ("mysql://server/db" . #f)))

       (test-case "postgresql driver"
         (def pg (start-postgresql-driver! (DNSAddress "127.0.0.1" 5432) "test" "test" "test"))
         (def (values? . args)
           (lambda (res)
             (equal? (values->list res) args)))
         (def (query-count-results res)
           (let ((values inp token) res)
             (let lp ((i 0))
               (let (next (channel-get inp))
                 (cond
                  ((or (eof-object? next) (PGCommandComplete? next)) i)
                  ((query-token? next)
                   (postgresql-continue! pg next)
                   (lp i))
                  ((exception? next)
                   (raise next))
                  (else
                   (lp (fx1+ i))))))))
         (def (query-results res)
           (let ((values inp token) res)
             (let lp ((r []))
               (let (next (channel-get inp))
                 (cond
                  ((or (PGCommandComplete? next) (eof-object? next))
                   (reverse r))
                  ((query-token? next)
                   (postgresql-continue! pg next)
                   (lp r))
                  ((exception? next)
                   (raise next))
                  (else
                   (lp (cons next r))))))))
         (def (genstring g)
           (symbol->string
            (gensym g)))

         (def (insert2k)
           ;; this needs to be more than query-limit in the driver (current 1k)
           (let lp ((i 0))
             (when (fx< i 2000)
               (postgresql-exec! pg "stmt3" [(genstring 'first) (genstring 'last) (genstring 'secret)])
               (lp (fx1+ i)))))

         (with-cleanup (postgresql-close! pg)
           (check (postgresql-prepare-statement! pg "stmt0" "DROP TABLE IF EXISTS Users")
                  ? (values? [] []))
           (check (try (postgresql-exec! pg "stmt0" []) (void) (catch (sql-error? e) (void)))
                  ? void?)
           (check (postgresql-prepare-statement! pg "stmt1" "CREATE TABLE Users (FirstName VARCHAR, LastName VARCHAR, Secret VARCHAR)")
                  ? (values? [] []))
           (check (postgresql-exec! pg "stmt1" [])
                  => "CREATE TABLE")
           (check (postgresql-prepare-statement! pg "stmt2" "SELECT * FROM Users")
                  ? (lambda (res)
                      (let ((values params cols) res)
                        (and (null? params)
                             (equal? '("firstname" "lastname" "secret") (map car cols))))))
           (check (query-count-results
                   (postgresql-query! pg "stmt2" []))
                  => 0)
           (check (postgresql-prepare-statement! pg "stmt3" "INSERT INTO Users (FirstName, LastName, Secret) VALUES ($1, $2, $3)")
                  ? (values? [1043 1043 1043] []))
           (check (postgresql-exec! pg "stmt3" ["John" "Smith" "very secret"])
                  => "INSERT 0 1")
           (check (query-results
                   (postgresql-query! pg "stmt2" []))
                  => '(("John" "Smith" "very secret")))
           (check (insert2k) ? void?)
           (check (query-count-results
                   (postgresql-query! pg "stmt2" []))
                  => 2001)
           (check (postgresql-exec! pg "stmt0" [])
                  => "DROP TABLE")))

       (test-case "postgresql Generic DBI"
         (def db (new-db (postgresql-connect
                          host: "localhost"
                          port: 5432
                          user: "test"
                          passwd: "test"
                          db: "test")))
         (def (statement-complete stmt)
           (postgresql-command-complete (&interface-instance-object stmt)))
         (with-cleanup (DB-close db)
           (try
            (using (stmt (DB-prepare db "DROP TABLE IF EXISTS Users") : Statement)
              (stmt.exec!))
            (catch (sql-error? e) (void)))
           (using (stmt (DB-prepare db "CREATE TABLE Users (FirstName VARCHAR, LastName VARCHAR, Secret VARCHAR)")
                        : Statement)
             (check (stmt.exec!) => #!void)
             (stmt.close))
           (using (stmt (DB-prepare db "INSERT INTO Users (FirstName, LastName, Secret) VALUES ($1, $2, $3)")
                        : Statement)
             (DB-begin! db)
             (stmt.bind! '("John" "Smith" "very secret"))
             (check (stmt.exec!) => #!void)
             (stmt.bind! '("Marc" "Smith" "oh so secret"))
             (check (stmt.exec!) => #!void)
             (DB-commit! db)
             (stmt.close))
           (using (stmt (DB-prepare db "SELECT * FROM Users") : Statement)
             (check (for/collect (row (stmt.query)) row)
                    => '(#("John" "Smith" "very secret")
                         #("Marc" "Smith" "oh so secret")))
             (stmt.close))
           (using (stmt (DB-prepare db "SELECT * FROM Users") : Statement)
             (check (statement-complete stmt) => #f)
             (check (for/collect (row (stmt.query)) row)
                    => '(#("John" "Smith" "very secret")
                         #("Marc" "Smith" "oh so secret")))
             (check (statement-complete stmt) => "SELECT 2")
             (stmt.close)
             (check (statement-complete stmt) => #f))
           (using (stmt (DB-prepare db "SELECT * FROM Users WHERE FirstName = $1")
                        : Statement)
             (stmt.bind! '("John"))
             (check (for/collect (row (stmt.query)) row)
                    => '(#("John" "Smith" "very secret")))
             (check (statement-complete stmt) => "SELECT 1")
             (stmt.close))
           (using (stmt (DB-prepare db "SELECT FirstName FROM Users") : Statement)
             (using (q (stmt.query) : Query)
               (check (q.fetch!) => #!void)
               (check (q.row) => "John")
              (check (statement-complete stmt) => #f)
              (check (q.fetch!) => #!void)
              (check (q.row) => "Marc")
              (check (statement-complete stmt) => #f)
              (check (q.fetch!) => #!eof)
               (check (statement-complete stmt) => "SELECT 2")
               (stmt.close)
               (check (statement-complete stmt) => #f)))
           (let (res (DB-query db "SELECT * FROM Users" '()))
             (check res => '(#("John" "Smith" "very secret")
                             #("Marc" "Smith" "oh so secret"))))
           (DB-exec! db "DELETE FROM Users WHERE FirstName = $1" '("Marc"))
           (let (res (DB-query db "SELECT * FROM Users" '()))
             (check res => '(#("John" "Smith" "very secret"))))
           (DB-exec! db "DROP TABLE Users" '())))

       (test-case "postgresql-query"
         (def drv (postgresql-connect
                   host: "localhost"
                   port: 5432
                   user: "test"
                   passwd: "test"
                   db: "test"))
         (def conn (&interface-instance-object drv))
         (def (plist<-sql-query cmd)
           (cons (postgresql-command-complete cmd)
                 (map (lambda (row) (map cons (Query-columns cmd)
                                    (if (vector? row)
                                      (vector->list row)
                                      (list row))))
                      (for/collect (x cmd) x))))
         (with-cleanup (Driver-close drv)
           (let* ((q (postgresql-query conn "DROP TABLE IF EXISTS Users;
       CREATE TABLE Users (FirstName VARCHAR, LastName VARCHAR, Secret VARCHAR);
       INSERT INTO Users (FirstName) VALUES ('foo'), ('bar') RETURNING 'bar' AS foo;
       SELECT * FROM Users;
       SELECT * FROM Users LIMIT 1;
       SELECT count(*) FROM Users;
       DROP TABLE Users;" []))
                (qres (for/collect (x q) x))
                (res
                 (map plist<-sql-query qres)))
           (match res
             ([drop create ins sel1 sel2 sel3 drop2]
              (check (car drop) => "DROP TABLE")
              (check (cdr drop) ? null?)
              (check (car create) => "CREATE TABLE")
              (check (cdr create) ? null?)
              (check (car ins) => "INSERT 0 2")
              (check (cadr ins) => '(("foo" . "bar")))
              (check (caddr ins) => '(("foo" . "bar")))
              (check (car sel1) => "SELECT 2")
              (check (cadr sel1) => '(("firstname" . "foo") ("lastname" . #f) ("secret" . #f)))
              (check (caddr sel1) => '(("firstname" . "bar") ("lastname" . #f) ("secret" . #f)))
              (check (cdddr sel1) ? null?)
              (check (car sel2) => "SELECT 1")
               (check (cadr sel2) => '(("firstname" . "foo") ("lastname" . #f) ("secret" . #f)))
               (check (cddr sel2) ? null?)
               (check (car sel3) => "SELECT 1")
               (check (cadr sel3) => '(("count" . 2)))
               (check (car drop2) => "DROP TABLE")
               (check (cdr drop2) ? null?))))))))))
