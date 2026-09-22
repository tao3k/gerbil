;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; SQL schema script tests
(import :std/build-config)
(cond-expand
 (config-have-sqlite
  (import :std/test
          ./interface
          ./db
          ./sqlite
          ./schema)
  (export schema-test)

  (def schema-test
    (test-suite "SQL schema execution"
      (test-case "split statements, comments and empty fragments"
        (using (db (new-db (sqlite-open ":memory:")) :- DB)
          (unwind-protect
            (begin
              (exec-schema! db "  -- comment-only fragment\n;\n;
CREATE TABLE items (value INTEGER);
  -- an indented comment
CREATE INDEX items_value ON items (value);
INSERT INTO items VALUES (42);
-- trailing comment without a terminator")
              (check (db.query "SELECT value FROM items" []) => [42])
              (check (db.query "SELECT name FROM sqlite_master WHERE type = 'index'" [])
                     => '("items_value"))
              (exec-schema! db "")
              (exec-schema! db "INSERT INTO items VALUES (43)")
              (check (db.query "SELECT value FROM items ORDER BY value" []) => [42 43]))
            (db.close))))
      (test-case "errors propagate and transaction belongs to the caller"
        (using (db (new-db (sqlite-open ":memory:")) :- DB)
          (unwind-protect
            (begin
              (db.begin!)
              (check-exception
               (exec-schema! db "CREATE TABLE first (value INTEGER);
INSERT INTO missing VALUES (1);
CREATE TABLE last (value INTEGER);")
               SQLError?)
              (check (db.query "SELECT name FROM sqlite_master WHERE type = 'table'" [])
                     => '("first"))
              (db.abort!)
              (check (db.query "SELECT name FROM sqlite_master WHERE type = 'table'" []) => []))
            (db.close))))))))
