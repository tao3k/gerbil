;;; -*- Gerbil -*-
;;; © vyzo, drew
;;; PostgreSQL driver
;; https://www.postgresql.org/docs/current/protocol-message-formats.html

(import :std/error
        :std/os/sockopt
        :std/net/address
        :std/net/address/types
        :std/io
        :std/string/utf8
        :std/list/list
        :std/sync/channel
        :std/time/timeout
        :std/net/sasl
        :std/net/ssl
        :std/encoding/hex
        :std/crypto/digest
        :std/vector/u8vector
        :std/log
        :std/db/interface
        :std/actor)
(export start-postgresql-driver!
        postgresql-prepare-statement!
        postgresql-close-statement!
        postgresql-exec!
        postgresql-query!
        postgresql-simple-query!
        postgresql-continue!
        postgresql-reset!
        postgresql-close!
        (struct-out PGMessage PGRowDescription PGCommandComplete)
        postgresql-current-notice-handler
        postgresql-current-notice-handler-set!
        with-postgresql-notice-handler
        (rename: !token? query-token?))

(def proto:/std/db/postgres "/std/db/postgres/v0")

;; base connection and statement types used by driver macros
(deflogger postgres-log name: "/db/postgres")

(defstruct !token ()
  final: #t
  transparent: #f)

;;; driver message types
(defstruct !prepare (name sql) final: #t)
(defstruct !exec (name params) final: #t)
(defstruct !query (name params) final: #t)
(defstruct !simple-query (str) final: #t)
(defstruct !current-notice-handler (proc) final: #t)
(defstruct !continue (token) final: #t)
(defstruct !reset (token) final: #t)
(defstruct !close (name) final: #t)

(defstruct PGMessage (name args)
  print: (args))

(defstruct (PGRowDescription PGMessage) ()
  constructor: :init!
  final: #t)
(defmethod {:init! PGRowDescription}
  (lambda (self desc)
    (set! self.name 'RowDescription)
    (set! self.args desc)))

(defstruct (PGCommandComplete PGMessage) ()
  constructor: :init!
  final: #t)
(defmethod {:init! PGCommandComplete}
  (lambda (self desc)
    (set! self.name 'CommandComplete)
    (set! self.args desc)))

(def current-notice-handler
  (make-parameter
   (lambda (msg irritants)
      (postgres-log.warnf "NoticeResponse: %a %a" msg irritants))))


(defcall-actor (postgresql-prepare-statement! (driver : LocalActor) name sql)
  (->> driver (!prepare name sql) proto:/std/db/postgres))

(def (postgresql-close-statement! (driver : LocalActor) name)
  (-> driver (!close name) proto:/std/db/postgres))

(defcall-actor (postgresql-exec! (driver : LocalActor) name bind)
  (->> driver (!exec name bind) proto:/std/db/postgres))

(defcall-actor (postgresql-query! (driver : LocalActor) name bind)
  (->> driver (!query name bind) proto:/std/db/postgres))

(defcall-actor (postgresql-simple-query! (driver : LocalActor) str)
  (->> driver (!simple-query str) proto:/std/db/postgres))

(def (postgresql-continue! (driver : LocalActor) (token : !token))
  (-> driver (!continue token) proto:/std/db/postgres))

(def (postgresql-reset! (driver : LocalActor) (token : !token))
  (-> driver (!reset token) proto:/std/db/postgres))

(defcall-actor (postgresql-current-notice-handler (driver : LocalActor))
  (->> driver (!current-notice-handler #f) proto:/std/db/postgres))

(def (postgresql-current-notice-handler-set! (driver : LocalActor) handler)
  (-> driver (!current-notice-handler handler) proto:/std/db/postgres))

(def (with-postgresql-notice-handler (driver : LocalActor) handler thunk)
  (let (pren (postgresql-current-notice-handler driver))
    (try
     (postgresql-current-notice-handler-set! driver
       (lambda args (apply handler args) (apply pren args)))
     (thunk)
     (finally
      (postgresql-current-notice-handler-set! driver pren)))))

(def (postgresql-close! (driver : LocalActor))
  (shutdown-actor driver))

;;; driver implementation
(def (start-postgresql-driver! (address : Address)
                              (user   : :string)
                              (passwd : :string)
                              (db     : :string)
                              ssl:   (ssl?   :~ (one-of #t #f maybe) := #f)
                              ssl-context: (ssl-context :~ (? (not SSL_CTX?)) := #f)
                              timeout: (timeo  : IOTimeout := default-connect-timeout))
  => LocalActor
  (def sock
    (tcp-connect (resolve->endpoint address) timeo))

  (try
   (postgres-log.debugf "STARTUP")
   (when ssl?
     ;; Send magic SSLRequest message with non-version 80877103, instead of StartupMessage
     ;; https://www.postgresql.org/docs/current/protocol-flow.html
      (using (sock : StreamSocket)
        (sock.send #u8(0 0 0 8 4 210 22 47) 0 8 0))
     (let* ((buf (make-u8vector 1 0))
            (count (using (sock : StreamSocket)
                     (sock.recv buf 0 1 MSG_WAITALL)))
            (response (u8vector-ref buf 0)))
       (cond
        ((not (= count 1))
         (error "Postgres connection failed immediately"))
        ((= response 78) ;; (char->integer #\N)
         ;; Exceptionally (see URL above), this N isn't followed by a notice message
         (when (eq? ssl? #t)
           (error "Postgres Server does not support SSL encryption.")))
        ((= response 83) ;; (char->integer #\S)
         (set! sock (ssl-client-upgrade sock
                                        timeout: timeo
                                        context: ssl-context
                                        host: (resolve->host address))))
        (else
         ;; read as much as we can from the server response to give the best error context
         (let* ((buf (make-u8vector 2048 0))
                (len (using (sock : StreamSocket)
                      (sock.recv buf 1 2048 MSG_DONTWAIT)))
                (len (if (positive? len) (1+ len) 1)))
           (u8vector-set! buf 0 response)
           (error "Invalid server response" (subu8vector buf 0 len)))))))

   (def reader
     (open-buffered-reader
      (using (sock : StreamSocket) (sock.reader))))

   (def writer
     (open-buffered-writer
      (using (sock : StreamSocket) (sock.writer))))

   (def (start-driver!)
     (postgres-log.debugf "STARTING DRIVER")
     (LocalActor
      (let lp ()
        (match (postgresql-recv! reader)
          (['ReadyForQuery _]
           (spawn/name 'postgresql-connection postgresql-driver sock reader writer))
          (['ErrorResponse msg . irritants]
           (raise-io-error postgresql-connect! msg irritants))
          (['NoticeResponse msg . irritants]
           ((current-notice-handler) msg irritants)
           (lp))
          (other
           (postgres-log.debugf "unprocessed message: %a" other)
           (lp))))))

   (defrules send! ()
     ((_ msg)
      (postgresql-send! writer msg)))

   (defrules recv! ()
     ((_ clause ...)
      (match (postgresql-recv! reader)
        clause ...
        (['ErrorResponse msg . irritants]
         (raise-io-error postgresql-connect! msg irritants))
        (unexpected
         (raise-io-error postgresql-connect! "unexpected message" unexpected)))))

    (def (authen-pass pass)
      (send! ['PasswordMessage pass])
      (recv!
       (['AuthenticationRequest 'AuthenticationOk]
        (start-driver!))))

   (def (authen-cleartext)
     (postgres-log.debugf "AUTHEN CLEARTEXT")
     (authen-pass passwd))

   (def (authen-md5 salt)
     (def (md5-hex data)
       (hex-encode (md5 data)))

     (postgres-log.debugf "AUTHEN MD5")
     (let* ((word1 (string-append passwd user))
            (word2 (md5-hex word1))
            (word3 (u8vector-append (string->utf8 word2) salt))
            (word4 (md5-hex word3))
            (pass (string-append "md5" word4)))
       (authen-pass pass)))

    (def (authen-sasl mechanisms)
      (postgres-log.debugf "AUTHEN SASL")
      (unless (member "SCRAM-SHA-256" mechanisms)
        (raise-io-error postgresql-connect! "unknown SASL authentication mechanisms" mechanisms))
      (let* ((ctx (scram-sha-256-begin "" passwd))
             (msg (scram-client-first-message ctx)))
        (send! ['SASLInitialResponse "SCRAM-SHA-256" msg])
        (recv!
         (['AuthenticationRequest 'AuthenticationSASLContinue msg]
          (scram-client-first-server-message! ctx msg)
          (let (msg (scram-client-final-message ctx))
            (send! ['SASLResponse msg])
            (recv!
             (['AuthenticationRequest 'AuthenticationSASLFinal msg]
              (scram-client-final-server-message! ctx msg)
              (recv!
               (['AuthenticationRequest 'AuthenticationOk]
                (start-driver!))))))))))

   (send! ['StartupMessage ["user" . user] (if db [["database" . db]] []) ...])
   (: (recv!
       (['AuthenticationRequest what . rest]
        (postgres-log.debugf "AUTHENTICATION REQUEST %a" what)
        (case what
          ((AuthenticationOk)
           (start-driver!))
          ((AuthenticationCleartextPassword)
           (authen-cleartext))
          ((AuthenticationMD5Password)
           (authen-md5 (car rest)))
          ((AuthenticationSASL)
           (authen-sasl rest))
          (else
           (raise-io-error postgresql-connect! "unsupported authentication mechanism" what)))))
      LocalActor)
   (catch (e)
     (using (sock : StreamSocket) (ignore-errors (sock.close)))
     (raise e))))

(def (postgresql-driver sock reader writer)
  (def query-limit 1000)
  (def query-output #f)
  (def query-token #f)
  (def simple-query #f)

  (def deferred-close [])

  (def (send! msg)
    (postgresql-send! writer msg))

  (def (recv!)
    (match (postgresql-recv! reader)
      (['NoticeResponse msg . irritants]
       (notice! msg irritants)
       (recv!))
      (['ParameterStatus msg . irritants]
       (void)
       (recv!))
      (msg msg)))

  (def (notice! msg irritants)
    ((current-notice-handler) msg irritants))

  (def (resync!)
    (let lp ()
      (match (recv!)
        (['ReadyForQuery _]
         (void))
        (else
         (lp)))))

  (def (maybe-sync!)
    (when query-output
      (channel-sync query-output (SQLError "portal expired" where: 'postgresql-query-pump!))
      (channel-close query-output)
      (set! query-output #f)
      (set! query-token #f)
      (resync!)
      (let (to-close deferred-close)
        (set! deferred-close [])
        (for-each close to-close))))

  (def (prepare name sql)
    ;; Parse (name sql) -> ParseComplete | ErrorResponse
    ;; Describe (name)  -> ParameterDescription | ErrorResponse
    ;;                     RowDescription | NoData
    ;; Sync             -> ReadyForQuery
    (def params #f)
    (def cols #f)

    (maybe-sync!)
    (send! ['Parse name sql])
    (send! ['Describe #\S name])
    (send! '(Sync))
    (match (recv!)
      (['ParseComplete]
       (void))
      (['ErrorResponse msg . irritants]
       (resync!)
       (raise-sql-error postgresql-prepare! msg irritants)))
    (match (recv!)
      (['ParameterDescription . query-params]
       (set! params query-params))
      (['ErrorResponse msg . irritants]
       (resync!)
       (raise-sql-error postgresql-prepare! msg irritants)))
    (match (recv!)
      (['RowDescription . fields]
       (set! cols fields))
      (['NoData]
       (set! cols [])))
    (resync!)
    (values params cols))

  (def (exec name params)
    ;; Bind ("" name params) ->  BindComplete | ErrorResponse
    ;; Execute ("")          -> DataRow ...
    ;;                          CommandComplete | EmptyQueryResponse
    ;;                          | ErrorResponse | PortalSuspended.
    ;; Sync                  -> ReadyForQuery
    (def res #f)

    (maybe-sync!)
    (send! ['Bind "" name . params])
    (send! '(Execute "" 1))
    (send! '(Sync))
    (match (recv!)
      (['BindComplete]
       (void))
      (['ErrorResponse msg . irritants]
       (resync!)
       (raise-sql-error postgresql-exec! msg irritants)))
    (let lp ()
      (match (recv!)
        (['DataRow . cols]
         (lp))
        (['CommandComplete tag]
         (set! res tag))
        ([(or 'PortalSuspended 'EmptyQueryResponse)]
         (void))
        (['ErrorResponse msg . irritants]
         (resync!)
         (raise-sql-error postgreql-exec msg irritants))))
    (resync!)
    res)

  ;; Query backpressure mechanism: the query pump reads and buffers up
  ;; to query-limit rows before requiring a continue signal from
  ;; the query client.
  ;; If the client aborts (or issues a new query), the remaining results
  ;; of the query will be skipped over on resync.
  ;; The plan was originally to use (named) portals with Execute limit
  ;; and rely on PortalSuspended to implement staging of input.
  ;; Unfortunately, the server (tested with 10.1) doesn't start
  ;; sending anything back until it sees a Sync; this kills
  ;; the portal unless it's in a BEGIN/COMMIT block so the backpressure
  ;; idea using portal suspension can't work without wrapping every
  ;; query in an explicit txn (which is undesirable for obvious reasons)
  (def (query-start name params)
    ;; Bind ("" name params) ->  BindComplete | ErrorResponse
    (maybe-sync!)
    (send! ['Bind "" name . params])
    (send! '(Execute "" 0))
    (send! '(Sync))
    (match (recv!)
      (['BindComplete]
       (let ((ch (make-channel query-limit))
             (token (make-!token)))
         (set! query-output ch)
         (set! query-token token)
         (values ch token)))
      (['ErrorResponse msg . irritants]
       (resync!)
       (raise-sql-error postgresql-query! msg irritants))))

  (def (query-pump)
      ;; Execute ("")          -> DataRow ...
      ;;                          CommandComplete | EmptyQueryResponse
      ;;                          | ErrorResponse | PortalSuspended.
      ;; Sync                  -> ReadyForQuery
      (let/cc break
        (let lp ()
          (match (recv!)
            (['DataRow . cols]
             (cond
              ((channel-try-put query-output cols)
               (lp))
              (else
               (channel-sync query-output cols query-token)
               (break))))
            (['CommandComplete tag]
             (channel-sync query-output (PGCommandComplete tag))
             (void))
            ([(or 'PortalSuspended 'EmptyQueryResponse)]
             (void))
            (['ErrorResponse msg . irritants]
             (channel-sync query-output (SQLError msg irritants: irritants where: 'postgresql-query!)))))
        (channel-close query-output)
        (set! query-output #f)
        (set! query-token #f)
        (resync!)))

  (def (simple-query-start str)
      (maybe-sync!)
      (send! ['Query str])
      (let ((ch (make-channel query-limit))
            (token (make-!token)))
        (set! query-output ch)
        (set! query-token token)
        (set! simple-query #t)
        (values ch token)))

  (def (simple-query-pump)
    (let/cc break
        (let lp ()
          (let ((r (recv!)))
            (match r
              (['RowDescription . fields]
               (channel-sync query-output (PGRowDescription fields))
               (lp))
              (['CommandComplete tag]
               (channel-sync query-output (PGCommandComplete tag))
               (lp))
              (['DataRow . cols]
               (cond                                        ;
                ((channel-try-put query-output cols)        ;
                 (lp))                                      ;
                (else                                       ;
                 (channel-sync query-output cols query-token) ;
                 (break))))
              (['ReadyForQuery _]
               (channel-sync query-output #!eof))
              (['EmptyQueryResponse]
               (lp))
              (['ErrorResponse msg . irritants]
               (channel-sync query-output (SQLError msg irritants: irritants where: 'postgresql-simple-query!))
               (lp))))))
      (channel-close query-output)
      (set! query-output #f)
      (set! query-token #f)
      (set! simple-query #f))

  (def (continue token)
    (when (eq? token query-token)
      (if simple-query
        (simple-query-pump)
        (query-pump))))

  (def (close name)
    ;; Close (name) -> CloseComplete | ErrorResponse
    (if query-output
      (push! name deferred-close)
      (begin
        (send! ['Close #\S name])
        (send! '(Sync))
        (match (recv!)
          (['CloseComplete]
           (void))
          (['ErrorResponse msg . irritants]
           (postgres-log.warnf "error closing statement %a: %a" name msg)))
        (resync!))))

  (def (shutdown! exit)
    (send! '(Sync))
    (resync!)
    (send! '(Terminate))
    (exit 'shutdown))

  (defrules do-action ()
    ((_ action)
     (try
      (let (res action)
        (--> (!OK res)))
      (catch (e)
        (--> (!Error (error-message e)))
        (unless (sql-error? e)
          (raise e)))))
    ((recur action continue ...)
     (begin
       (recur action)
       continue ...)))

  (def (loop)
    (let/cc exit
      (while #t
        (<- protocol: proto:/std/db/postgres
            ((!prepare name sql)
             (do-action (prepare name sql)))
            ((!exec name params)
             (do-action (exec name params)))
            ((!query name params)
             (do-action (query-start name params) (query-pump)))
            ((!simple-query str)
             (do-action (simple-query-start str) (simple-query-pump)))
            ((!continue token)
             (continue token))
            ((!reset token)
             (maybe-sync!))
            ((!close name)
             (close name))
            ((!current-notice-handler proc)
             (do-action (if proc
                          (current-notice-handler proc)
                          (current-notice-handler))))
            protocol: proto:/actor/control
            ,(@ping)
            ,(@shutdown (shutdown! exit))))))

  (try
   (loop)
   (catch (e)
     (postgres-log.errorf "unhandled exception: %a" e)
     (raise e))
   (finally
    (when query-output
      (channel-sync query-output (SQLError "connection error" where: 'postgresql-driver))
      (channel-close query-output))
     (using (sock : StreamSocket) (ignore-errors (sock.close))))))

;;; Protocol I/O
(def (postgresql-send! writer msg)
  (using (writer :- BufferedWriter)
    (def (marshal-and-write tid body marshal)
      (let (payload (marshal body))
        (when tid
          (writer.write-u8 tid))
        (writer.write-u32 (fx+ (u8vector-length payload) 4))
        (writer.write payload)
        (writer.flush)))

    (postgres-log.debugf "SEND %a" msg)
    (with ([tag . body] msg)
      (cond
       ((hash-get +frontend-messages+ tag)
        => (match <>
             ([tid . marshal]
              (marshal-and-write tid body marshal))))
       ((eq? tag 'StartupMessage)
        (marshal-and-write #f body marshal-startup))
       (else
        (raise-io-error postgresql-send! "cannot marshal; unknown message tag" msg))))))

(def (postgresql-recv! reader)
  (postgres-log.debugf "RECEIVE!")
  (using (reader :- BufferedReader)
    (let* ((tid (reader.read-u8))
           (_ (when (eof-object? tid)
                (raise-io-error postgresql-recv! "connection closed")))
           (payload-len (reader.read-u32))
           (payload-len (fx- payload-len 4))
           (payload-reader (reader.delimit payload-len)))

      (using (payload-reader :- BufferedReader)
        (postgres-log.debugf "READ MESSAGE %a %a" tid payload-len)
        (cond
         ((vector-ref +backend-messages+ tid)
          => (match <>
               ([tag . unmarshal]
                (postgres-log.debugf "UNMARSHAL %a" tag)
                (let* ((body (unmarshal payload-reader))
                       (msg (cons tag body)))
                  ;; skip left-over input in the delimited reader
                  (while (not (eof-object? (payload-reader.read-u8))))
                  (postgres-log.debugf "RECEIVE %a" msg)
                  msg))))
         (else
          (let (buffer (make-u8vector 2048))
            (u8vector-set! buffer 0 tid)
            (u8vector-uint-set! buffer 1 (+ payload-len 4) big 4)
            (reader.read buffer 5 2048 2048)
            (raise-io-error postgresql-recv! "unexpected backend message" buffer))))))))

;;; message unmarshaling
(def (unmarshal-ignore buf)
  '(...))

(def (unmarshal-empty buf)
  '())

(def (unmarshal-authen-request buf)
  (using (buf :- BufferedReader)
    (let (t (buf.read-u32))
      (case t
        ((0) '(AuthenticationOk))
        ((2) '(AuthenticationKerberosV5))
        ((3) '(AuthenticationCleartextPassword))
        ((5)
         (let (salt (make-u8vector 4))
           (buf.read salt 0 4 4)
           ['AuthenticationMD5Password salt]))
        ((6) '(AuthenticationSCMCredential))
        ((7) '(AuthenticationGSS))
        ((8)
         (let (data (unmarshal-bytes-rest buf))
           ['AuthenticationGSSContinue data]))
        ((9) '(AuthenticationSSPI))
        ((10)
         (let (mechanisms (unmarshal-string-list buf))
           ['AuthenticationSASL . mechanisms]))
        ((11)
         (let (data (unmarshal-string-rest buf))
           ['AuthenticationSASLContinue data]))
        ((12)
         (let (data (unmarshal-string-rest buf))
           ['AuthenticationSASLFinal data]))
        (else
         [t '...])))))

(def (unmarshal-string-list buf)
  (let lp ((r []))
    (let (next (unmarshal-string buf))
      (if (string-empty? next)
        (reverse! r)
        (lp (cons next r))))))

(def (unmarshal-string buf)
  (using (buf :- BufferedReader)
    (let lp ((chars []))
      (if (fx= (buf.peek-u8) 0)
        (begin
          (buf.read-u8)
          (list->string (reverse! chars)))
        (let (next (buf.read-char-utf8))
          (lp (cons next chars)))))))

(def (unmarshal-bytes-rest buf)
  (using (buf :- BufferedReader)
    (let lp ((bytes []))
      (let (next (buf.read-u8))
        (if (eof-object? next)
          (list->u8vector (reverse! bytes))
          (lp (cons next bytes)))))))

(def (unmarshal-string-rest buf)
  (using (buf :- BufferedReader)
    (let lp ((chars []))
      (let (next (buf.read-char-utf8))
        (if (eof-object? next)
          (list->string (reverse! chars))
          (lp (cons next chars)))))))

(def (unmarshal-complete buf)
  (let (tag (unmarshal-string buf))
    [tag]))

(def (unmarshal-data-row buf)
  (using (buf :- BufferedReader)
    (let (count (buf.read-u16))
      (let lp ((i 0) (r []))
        (if (fx< i count)
          (let (len (buf.read-s32))
            (if (fx>= len 0)
              (let* ((strbuf (buf.delimit len))
                     (str (unmarshal-string-rest strbuf)))
                (lp (fx+ i 1) (cons str r)))
              (lp (fx+ i 1) (cons #f r)))) ; NULL
          (reverse! r))))))

(def (unmarshal-error-notice buf)
  (using (buf :- BufferedReader)
    (let lp ((r []))
      (let (t (buf.read-u8!))
        (if (fx= t 0)
          (let* ((alist (reverse! r))
                 (msg (agetq #\M alist)))
            (cons msg alist))
          (let (field (unmarshal-string buf))
            (lp (cons (cons (integer->char t) field) r))))))))

(def (unmarshal-param-description buf)
  (using (buf :- BufferedReader)
    (let (count (buf.read-u16))
      (let lp ((i 0) (r []))
        (if (fx< i count)
          (let (oid (buf.read-u32))
            (lp (fx+ i 1) (cons oid r)))
          (reverse! r))))))

(def (unmarshal-row-description buf)
  (using (buf :- BufferedReader)
    (let (count (buf.read-u16))
      (let lp ((i 0) (r []))
        (if (fx< i count)
          (let* ((field-name (unmarshal-string buf))
                 (table-id (buf.read-u32))
                 (attr-id  (buf.read-u16))
                 (type-id  (buf.read-u32))
                 (type-sz  (buf.read-s16))
                 (modifier (buf.read-s32))
                 (fmt      (buf.read-u16)))
            (lp (fx+ i 1)
                (cons [field-name table-id attr-id type-id type-sz modifier fmt] r)))
          (reverse! r))))))

(def (unmarshal-ready buf)
  (using (buf :- BufferedReader)
    (let (status (buf.read-u8!))
      [(integer->char status)])))

;;; message marshaling
(def (marshal-fail what)
  (lambda (body)
    (raise-io-error postgresql-send! "Cannot marshal; unsupported message" (cons what body))))

(def (marshal-empty body)
  '#u8())

(def (marshal-string buf str)
  (using (buf :- BufferedWriter)
    (buf.write-string-utf8 str)
    (buf.write-u8 0)))

(defrule (with-buffered-writer writer body ...)
  (let ((writer (open-buffered-writer #f small-buffer-size)))
    (using (writer :- BufferedWriter)
      (let () body ...))
    (get-memory-output-u8vector writer)))

(def (marshal-startup body)
  (with ([[param . value] ...] body)
    (with-buffered-writer buf
      (buf.write-u32 196608) ; Protocol v3.0
      (for-each
        (lambda (param value)
          (marshal-string buf param)
          (marshal-string buf value))
        param value)
      (buf.write-u8 0))))

(def (marshal-bind body)
  (with ([portal-name stmt-name . params] body)
    (with-buffered-writer buf
      (marshal-string buf portal-name)
      (marshal-string buf stmt-name)
      (buf.write-u16 0)
      (buf.write-u16 (length params))
      (for-each
        (lambda (param)
          (cond
           ((not param)
            (buf.write-s32 -1))
           ((string? param)
            (let (len (string-utf8-length param))
              (buf.write-u32 len)
              (buf.write-string-utf8 param)))
           ((u8vector? param)
            (buf.write-u32 (u8vector-length param))
            (buf.write param))
           (else
            (raise-io-error postgresql-send! "Cannot marshal; bad parameter" param))))
        params)
      (buf.write-u16 0))))

(def (marshal-close body)
  (marshal-describe body))

(def (marshal-describe body)
  (with ([what name] body)
    (with-buffered-writer buf
      (buf.write-u8 (char->integer what))
      (marshal-string buf name))))

(def (marshal-exec body)
  (with ([portal limit] body)
    (with-buffered-writer buf
      (marshal-string buf portal)
      (buf.write-u32 0))))

(def (marshal-parse body)
  (with ([stmt sql] body)
    (with-buffered-writer buf
      (marshal-string buf stmt)
      (marshal-string buf sql)
      (buf.write-u16 0))))

(def (marshal-passwd body)
  (with ([passwd] body)
    (with-buffered-writer buf
      (marshal-string buf passwd))))

(def (marshal-query body)
  (with ([sql] body)
    (with-buffered-writer buf
      (marshal-string buf sql))))

(def (marshal-sasl-initial-reponse body)
  (with ([mechanism data] body)
    (with-buffered-writer buf
      (marshal-string buf mechanism)
      (if data
        (let (len (string-utf8-length data))
          (buf.write-u32 len)
          (buf.write-string-utf8 data))
        (buf.write-s32 -1)))))

(def (marshal-sasl-response body)
  (with ([data] body)
    (string->utf8 data)))

;;; dispatch tables
(def +backend-messages+
  (make-vector 256 #f))
(def +frontend-messages+
  (make-hash-table-eq))

(defrules defmessage-backend ()
  ((_ (id char unmarshal) ...)
   (begin
     (let (t (char->integer char))
       (vector-set! +backend-messages+ t (cons 'id unmarshal)))
     ...)))

(defrules defmessage-frontend ()
  ((_ (id char marshal) ...)
   (begin
     (let (t (char->integer char))
       (hash-put! +frontend-messages+ 'id (cons t marshal)))
     ...)))

(defmessage-backend
  (AuthenticationRequest    #\R unmarshal-authen-request)
  (BackendKeyData           #\K unmarshal-ignore)
  (BindComplete             #\2 unmarshal-empty)
  (CloseComplete            #\3 unmarshal-empty)
  (CommandComplete          #\C unmarshal-complete)
  (CopyData                 #\d unmarshal-ignore)
  (CopyDone                 #\c unmarshal-ignore)
  (CopyInResponse           #\G unmarshal-ignore)
  (CopyOutResponse          #\H unmarshal-ignore)
  (CopyBothResponse         #\W unmarshal-ignore)
  (DataRow                  #\D unmarshal-data-row)
  (EmptyQueryResponse       #\I unmarshal-empty)
  (ErrorResponse            #\E unmarshal-error-notice)
  (FunctionCallResponse     #\V unmarshal-ignore)
  (NegotiateProtocolVersion #\v unmarshal-ignore)
  (NoData                   #\n unmarshal-empty)
  (NoticeResponse           #\N unmarshal-error-notice)
  (NotificationResponse     #\A unmarshal-ignore)
  (ParameterDescription     #\t unmarshal-param-description)
  (ParameterStatus          #\S unmarshal-ignore)
  (ParseComplete            #\1 unmarshal-empty)
  (PortalSuspended          #\s unmarshal-empty)
  (ReadyForQuery            #\Z unmarshal-ready)
  (RowDescription           #\T unmarshal-row-description))

(defmessage-frontend
  (Bind                     #\B  marshal-bind)
  (Close                    #\C  marshal-close)
  (CopyData                 #\d (marshal-fail 'CopyData))
  (CopyDone                 #\c (marshal-fail 'CopyDone))
  (CopyFail                 #\f (marshal-fail 'CopyFail))
  (Describe                 #\D  marshal-describe)
  (Execute                  #\E  marshal-exec)
  (Flush                    #\H  marshal-empty)
  (FunctionCall             #\F (marshal-fail 'FunctionCall))
  (GSSResponse              #\p (marshal-fail 'GSSResponse))
  (Parse                    #\P  marshal-parse)
  (PasswordMessage          #\p  marshal-passwd)
  (Query                    #\Q  marshal-query)
  (SASLInitialResponse      #\p  marshal-sasl-initial-reponse)
  (SASLResponse             #\p  marshal-sasl-response)
  (Sync                     #\S  marshal-empty)
  (Terminate                #\X  marshal-empty))
