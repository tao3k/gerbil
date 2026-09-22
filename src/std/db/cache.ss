;;; -*- Gerbil -*-
;;; © vyzo
;;; DB statement cache
(import :std/iter
        ./interface)
(export #t)

(defstruct StatementCache
  ((db    : DB)
   (table : HashTable))
  constructor: :init!
  final: #t)

(defmethod {:init! StatementCache}
  (lambda (self (db : DB))
    (set! self.db db)
    (set! self.table (make-hash-table-string))))

;; Borrow an idle statement without resetting it. A cache miss prepares a new
;; statement; every borrowed statement must be returned with statement-cache-put.
;; The caller serializes access to the cache and its database connection.
(def (statement-cache-get (self : StatementCache)
                          (sql  : :string))
  => Statement
  (cond
   ((self.table.ref sql #f)
    => (lambda ((stmt :- Statement))
         => Statement
         (self.table.delete! sql)
         stmt))
    (else
     (self.db.prepare sql))))

;; Return a borrowed statement after resetting execution and clearing bindings.
;; Keep one idle statement per SQL string, closing any displaced cached statement.
(def (statement-cache-put (self : StatementCache)
                          (sql  : :string)
                          (stmt : Statement))
  => :void
  (stmt.reset!)
  (stmt.clear!)
  (cond
   ((self.table.ref sql #f) => Statement-close))
  (self.table.set! sql stmt))

;; Close cached statements. All borrowed statements must have been returned first.
(def (statement-cache-close (self : StatementCache))
  => :void
  (for (stmt (hash-values self.table) :- Statement)
    (stmt.close))
  (self.table.clear!))
