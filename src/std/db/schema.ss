;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; SQL schema script execution
(import :std/string/misc
        ./interface)
(export exec-schema!)

;; Execute a simple semicolon-separated schema one statement at a time, removing
;; full-line -- comments and skipping empty fragments. Semicolons inside comments,
;; literals, or compound statements are not supported: this is not a SQL parser.
;; The caller owns transaction boundaries and synchronization; errors propagate.
(def (exec-schema! (db : DB)
                   (schema : :string))
  => :void
  (for-each
   (lambda ((fragment :- :string))
     (let (sql (string-trim
                (string-join
                 (filter (lambda ((line :- :string))
                           (not (string-prefix? "--" (string-trim line))))
                         (string-split fragment #\newline))
                 "\n")))
       (unless (string-empty? sql) (db.exec! sql []))))
   (string-split schema #\;)))
