;;; -*- Gerbil -*-
;;; (C) vyzo, drewc
;;; PostgreSQL dbi interface

(import :std/actor
        :std/error
        :std/interface
        :std/io/interface
        :std/iter
        :std/net/ssl
        :std/net/address
        :std/net/address/types
        :std/text/pregexp
        :std/sync/channel
        :std/time/timeout
        :std/time/date
        ./interface
        ./query
        ./postgresql-driver)
(export postgresql-connect
        parse-postgres-database-url
        (struct-out postgresql-connection
                    postgresql-command
                    postgresql-statement
                    postgresql-query)
        defcatalog
        defcatalog-default
        default-catalog
        current-catalog)

;;; connection

(defstruct postgresql-connection
  ((driver :- LocalActor)
   (host : :string)
   (port : :fixnum)
   (user : :string)
   (db   : :string))
  print: (host port user db)
  final: #t)

(def (postgresql-connect (url :? :string := #f)
                         host: (host :? :string := #f)
                         port: (port :? :fixnum := #f)
                         user: (user :? :string := #f)
                         passwd: (passwd :? :string := #f)
                         db: (db :? :string := #f)
                         ssl: (ssl :~ (one-of #t #f maybe) := #f)
                         ssl-context: (ssl-context :~ (? (not SSL_CTX?)) := #f)
                         timeout: (timeo : IOTimeout := !NoTimeout))
  => Driver
  (when url
    (match (parse-postgres-database-url url)
      ([h p d u pw params]
       (set! (values host port db user passwd) (values h p d u pw)))
      (else (raise-contract-violation postgresql-connect "Invalid database url" url))))
  (unless host
    (set! host "127.0.0.1"))
  (unless port
    (set! port 5432))
  (unless user
    (set! user (or (getenv "USER" #f)
                   (error "No user specified"))))
  (unless passwd
    (set! passwd ""))
  (unless db
    (set! db user))
  (let* ((address (DNSAddress host port))
         (driver (start-postgresql-driver! address user passwd db
                                           ssl: ssl
                                           ssl-context: ssl-context
                                           timeout: timeo)))
    (Driver (postgresql-connection driver host port user db))))

(def (parse-postgres-database-url url)
  (match (pregexp-match "^postgres://(([^:/@?]+)(:([^:/@?]*))?@)?([^:/@?]+)(:([0-9]+))?/([^:/@?]+)([?](.*))?$" url)
    ([_ userpass user pass? pass host port? port database params? params]
     [host (and port (string->number port)) database
           (and userpass user) (and pass? pass) (and params? params)])
    (else #f)))



;;; command/statement/query structs

(defstruct postgresql-command
  ((conn     :- postgresql-connection)
   (complete : :t := #f)
   (input    : :t := #f)
   (token    : :t := #f))
  constructor: :init!)

(defmethod {:init! postgresql-command}
  (lambda (self conn complete: (complete #f))
    (set! self.conn conn)
    (set! self.complete complete)))

(defrule (check-command! cmd-in where)
  (using (cmd cmd-in :- postgresql-command)
    (cond
     ((not cmd.conn)
      (raise-io-closed where "command has been closed"))
     ((not cmd.conn.driver)
      (raise-io-closed where "connection has been closed")))))

;;; prepared statements

(defstruct (postgresql-statement postgresql-command)
  ((cols   : :list := [])
   (params : :list := [])
   (bind   : :t := #f)
   (row    : :t := #f)
   (name   : :t := #f))
  constructor: :init!
  final: #t)

(defmethod {:init! postgresql-statement}
  (lambda (self conn cols params: (params []) name: (name #f))
    (postgresql-command:::init! self conn)
    (set! self.name name)
    (set! self.cols cols)
    (set! self.params params)))

(def (postgresql-statement-in-query? (self : postgresql-statement))
  (check-command! self postgresql-statement-in-query?)
  self.input)

;;; simple queries

(defstruct (postgresql-query postgresql-command)
  ((str    :? :string := #f)
   (cmd    : :t := #f)
   (cols   : :list := [])
   (stmt   :? postgresql-statement := #f)
   (greedy : :boolean := #t))
  constructor: :init!
  final: #t)

(defmethod {:init! postgresql-query}
  (lambda (self conn str cols greedy: (greedy #t) stmt: (stmt #f))
    (postgresql-command:::init! self conn)
    (set! self.str str)
    (set! self.cols cols)
    (set! self.greedy greedy)
    (set! self.stmt stmt)))

;;; catalog/pg_type.h
(defstruct catalog (s d)
  constructor: :init!
  final: #t)

(defmethod {:init! catalog}
  (lambda (self . mixin)
    (let ((s (make-hash-table-eq))
          (d (make-hash-table-eq)))
      (for-each
        (lambda (mixin)
          (hash-merge! s (catalog-s mixin))
          (hash-merge! d (catalog-d mixin)))
        mixin)
      (set! self.s s)
      (set! self.d d))))

(def (catalog-serializer c oid)
  (hash-get (catalog-s c) oid))

(def (catalog-deserializer c oid)
  (hash-get (catalog-d c) oid))

(defrules defcatalog ()
  ((_ (name mixin ...) (oids serialize deserialize) ...)
   (begin
     (def name (catalog mixin ...))
     (defcatalog-type name oids serialize deserialize) ...))
  ((recur name . body)
   (identifier? #'name)
   (recur (name) . body)))

(defrules defcatalog-type ()
  ((_ name (oid ...) serialize deserialize)
   (begin
     (hash-put! (catalog-s name) oid serialize) ...
     (hash-put! (catalog-d name) oid deserialize) ...)))

(defrules defcatalog-default ()
  ((_ clause ...)
   (begin
     (defcatalog-type default-catalog . clause)
     ...)))

(def (serialize-boolean arg)
  (if arg "t" "f"))

(def (deserialize-boolean str)
  (if (member str '("t" "true" "TRUE" "y" "yes" "on" "1")) #t #f))

(def (serialize-date date)
  (date->string date "%Y-%m-%d"))

(def (deserialize-date str)
  (string->date str "%Y-%m-%d"))

(def (serialize-timestamp date)
  (date->string date "%Y-%m-%d %H:%M:%S"))

(def (deserialize-timestamp str)
  (string->date str "%Y-%m-%d %H:%M:%S"))

(def (serialize-timestamptz date)
  (date->string date "%Y-%m-%d %H:%M:%S%z"))

(def (deserialize-timestamptz str)
  (string->date str "%Y-%m-%d %H:%M:%S%z"))

(def (identity-string obj)
  (if (string? obj) obj
      (raise-bad-argument postgresql "string" obj)))

(defcatalog default-catalog
  ;; BOOLOID
  ((16) serialize-boolean deserialize-boolean)
  ;; INT8OID INT2OID INT4OID FLOAT4OID FLOAT8OID NUMERICOID
  ((20 21 23 700 701 1700) number->string string->number)
  ;; CHAROID TEXTOID BPCHAROID VARCHAROID
  ((18 25 1042 1043) identity-string identity)
  ;; DATEOID
  ((1082) serialize-date deserialize-date)
  ;; TIMESTAMPOID
  ((1114) serialize-timestamp deserialize-timestamp)
  ;; TIMESTAMPTZOID
  ((1184) serialize-timestamptz deserialize-timestamptz)

  ;; Add more from the catalog here depending on actual needs...
  ;; - automagic json serialization/deserialization?
  ;;   add JSONOID with json-object->string string->json-object
  ;; - automagic uuid conversion?
  ;;   add UUIDOID with uuid->string string->uuid
  )

(def current-catalog
  (make-parameter default-catalog))

;;; query iterator

(defstruct postgresql-query-iterator ((query :- Query)))

(def (new-postgresql-query-iterator (query : Query))
  => Iterator
  (query.start!)
  (Iterator (postgresql-query-iterator query)))

;;; internal methods used by multiple implementations

(def (postgresql-command-reset! (self : postgresql-command))
  (alet (token self.token)
    (postgresql-reset! self.conn.driver token)
    (set! self.token #f)
    (set! self.input #f)))

(def (postgresql-command-query-iter (self : postgresql-command))
  => Iterator
  (new-postgresql-query-iterator (Query self)))

(def (postgresql-statement-query-start! (self : postgresql-statement))
  (check-command! self postgresql-statement::query-start)
  (unless self.input
    (let ((values inp token)
           (postgresql-query! self.conn.driver self.name (or self.bind [])))
      (set! self.token token)
      (set! self.input inp)
      (set! self.row #f)
      (set! self.complete #f))))

(def (postgresql-statement-query-fetch! (self : postgresql-statement))
  (def (result->row cols)
    (let (res (map result->value cols self.cols))
      (cond
       ((null? res) #f)
       ((null? (cdr res)) (car res))
       (else (list->vector res)))))

  (def (result->value res col)
    (and res
         (let (type-oid (list-ref col 3))
           (cond
            ((catalog-deserializer (current-catalog) type-oid)
             => (cut <> res))
            (else res)))))

  (check-command! self postgresql-statement::query-fetch)
  (if self.input
    (let again ()
      (let (next (channel-get self.input))
        (cond
         ((or (eof-object? next) (PGCommandComplete? next))
          (when (PGCommandComplete? next)
            (set! self.complete (PGMessage-args next)))
          (set! self.token #f)
          (set! self.input #f)
          (set! self.row #f)
          #!eof)
         ((exception? next)
          (raise next))
         ((query-token? next)
          (postgresql-continue! self.conn.driver next)
          (again))
         (else
          (set! self.row (result->row next))
          #!void))))
    #!eof))

;;; interface implementation

(implement Closer postgresql-connection
  (close
   (lambda (self)
     (when self.driver
       (postgresql-close! self.driver)
       (thread-join! self.driver.thread)
       (set! self.driver #f)))))

(implement Driver postgresql-connection
  (prepare
   (lambda (self sql)
     (unless self.driver
       (raise-io-closed postgresql-connection-prepare "connection has been closed"))
     (let* ((name (symbol->string (gensym 'stmt)))
            ((values params cols)
             (postgresql-prepare-statement! self.driver name sql)))
        (Statement (postgresql-statement self cols params: params name: name))))))

(implement Closer postgresql-statement
  (close
   (lambda (self)
     (when self.conn
       (when self.conn.driver
         (postgresql-command-reset! self)
         (set! self.row #f)
         (set! self.complete #f)
         (when self.name
           (postgresql-close-statement! self.conn.driver self.name))
         (set! self.conn #f))))))

(implement Statement postgresql-statement
  (bind!
   (lambda (self  args)
     (check-command! self postgresql-statement::bind)
     (def (value->binding type-oid arg)
       (cond
        ((not arg)
         (if (fx= type-oid 16)
           (serialize-boolean arg)
           #f))
        ((string? arg) arg)
        ((catalog-serializer (current-catalog) type-oid)
         => (cut <> arg))
        (else
         (raise-bad-argument postgresql "catalog parameter: unknown" type-oid arg))))
     (let* ((params self.params)
            (bind (map value->binding params args)))
       (set! self.bind bind)
       (void))))
   (exec!
    (lambda (self)
      (check-command! self postgresql-statement::exec)
      (let (comp (postgresql-exec! self.conn.driver self.name (or self.bind [])))
        (set! self.complete comp)
        #!void)))
  (query
   (lambda (self)
     (check-command! self postgresql-statement::query)
     (postgresql-statement-query-start! self)
     (Query (postgresql-query self.conn #f self.cols stmt: self))))
  (reset!
   (lambda (self)
     (check-command! self postgresql-statement::reset)
     (postgresql-command-reset! self)
     (set! self.row #f)))
  (clear!
   (lambda (self)
     (check-command! self postgresql-statement::clear)
     (set! self.bind #f))))

(implement Closer postgresql-query
  (close
   (lambda (self)
     (when self.conn
       (when self.conn.driver
         (if self.stmt
           (postgresql-command-reset! self.stmt)
           (alet (token self.token)
             (postgresql-reset! self.conn.driver token)))
         (set! self.cmd #f)
         (set! self.input #f)
         (set! self.conn #f))))))

;;; query iterator

(implement Closer postgresql-command
  (close void))

(implement Iterable postgresql-command
  (iter postgresql-command-query-iter))

(implement Iterable postgresql-query
  (iter
   (lambda (self)
     (check-command! self postgresql-query::iter)
     (new-postgresql-query-iterator (Query self)))))

(implement Query postgresql-command
  (start! void)
  (fetch! (lambda (_) #!eof))
  (row postgresql-command-complete)
  (columns (lambda (_) [])))

(implement Query postgresql-statement
  (start! postgresql-statement-query-start!)
  (fetch! postgresql-statement-query-fetch!)
  (row postgresql-statement-row)
  (columns
   (lambda (self)
     (map car self.cols))))

(implement Query postgresql-query
  (start!
   (lambda (self)
     (check-command! self postgresql-query::query-start)
     (cond
      (self.input
       (void))
      (self.str
       (let ((values inp token)
              (postgresql-simple-query! self.conn.driver self.str))
         (set! self.token token)
         (set! self.input inp)))
      (self.stmt
       (postgresql-statement-query-start! self.stmt))
      (else
       (BUG postgresql-query::query-start "bad query state" self)))))
  (fetch!
   (lambda (self)
     (check-command! self postgresql-query::query-fetch)
     (if self.stmt
       (postgresql-statement-query-fetch! self.stmt)
       (let ((greedy-in #f)
             (greedy self.greedy))
         (using (cmd self.cmd :- postgresql-command)
           (if (not self.input)
             #!eof
             (let again ()
               (let (next (channel-get self.input))
                 (cond
                  ((eof-object? next)
                   (set! self.token #f)
                   (set! self.input #f)
                   (set! self.complete #t)
                   #!eof)
                  ((exception? next)
                   (raise next))
                  ((query-token? next)
                   (postgresql-continue! self.conn.driver next)
                   (again))
                  ((PGCommandComplete? next)
                   (let (comp (PGMessage-args next))
                     (when (and cmd (not greedy))
                       (set! cmd.input #f))
                     (when greedy-in
                       (channel-sync greedy-in next)
                       (set! greedy-in #f))
                     (cond
                      ((or (not cmd) cmd.complete)
                       (set! self.cmd
                         (postgresql-command self.conn complete: comp)))
                      (else
                       (set! cmd.complete comp)))
                     (unless greedy
                       (set! self.cmd #f)
                       (set! cmd #f)
                       (again))))
                  ((PGRowDescription? next)
                   (using (stmt (postgresql-statement
                                 self.conn (PGMessage-args next))
                                :- postgresql-statement)
                     (set! self.cmd stmt)
                     (set! cmd stmt)
                     (cond
                      ((not greedy)
                       (set! stmt.input self.input)
                       (void))
                      (else
                       (set! greedy-in (make-channel))
                       (set! stmt.input greedy-in)
                       (again)))))
                  (else
                   (when greedy-in (channel-sync greedy-in next))
                   (again)))))))))))
  (row
   (lambda (self)
     (check-command! self postgresql-query::query-row)
     (if self.stmt
       self.stmt.row
       self.cmd)))
  (columns
   (lambda (self)
     (check-command! self postgresql-query::columns)
     (map car self.cols))))

(implement Iterator postgresql-query-iterator
  (next!
   (lambda (self)
     (let (next (self.query.fetch!))
       (if (eof-object? next)
         #!eof
         (self.query.row))))))
