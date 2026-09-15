;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; HTTP server lifecycle and raw-wire protocol regressions
(import
  :std/error
  :std/interface
  :std/io
  :std/log
  :std/list/walist
  :std/net/address
  :std/net/http/server
  :std/net/url
  :std/os/error
  :std/sync/channel
  :std/test
  :std/time/timeout
  ./request)
(export
  server-test)

(def server-address (InetAddress localhost4 20002))
(def server-listen-address "inet4:127.0.0.1:20002")
(def blocked-address (InetAddress localhost4 20003))

(defclass (test-log-sink BasicLogger)
  ((channel :- Channel)
   (source  :? :string))
  final: #t)
(defmethod {log test-log-sink}
  (lambda (self record)
    (when (or (not self.source)
              (string=? (Record-source record) self.source))
      (channel-try-put self.channel record)))
  interface: Logger)
(defmethod {start! test-log-sink} void interface: LogSink)
(defmethod {stop! test-log-sink} void interface: LogSink)
(@implement Logger test-log-sink)
(@implement LogSink test-log-sink)

(def (new-test-log-sink name (source #f))
  (let* ((channel (make-channel 32))
         (sink (test-log-sink name: name level: DEBUG
                              channel: channel source: source)))
    (values (LogSink sink) channel)))

(deflogger testlog
  name: "/net/httpd"
  level: INFO)

(def (make-os-error where errno (marker #f))
  (with-catch identity
    (lambda ()
      (if marker
        (raise-os-error where errno marker: marker)
        (raise-os-error where errno)))))

(def (open-client)
  (let (socket (tcp-connect server-address (IOTimeout 2)))
    (Socket-set-input-timeout! socket (IOTimeout 4))
    (Socket-set-output-timeout! socket (IOTimeout 4))
    socket))

(def (send-request! socket)
  (using (writer (open-buffered-writer (StreamSocket-writer socket))
                 : BufferedWriter)
    (writer.write-string-utf8
     "GET / HTTP/1.1\r\nHost: localhost\r\n\r\n")
    (writer.flush)))

(def (close-client! client)
  (when client
    (with-catch void (lambda () (Socket-close client)))))

(def (start-server handler log (listen [server-listen-address]))
  (let (server
        (new-http-server
         (ServerConfig
          mux: (new-static-mux rest: "/" (new-closure-handler handler))
          log: log
          listen: listen
          response-timeout: (IOTimeout 4))))
    (using (server server : Server) (server.start!))
    server))

(def (stop-server! server)
  (when server
    (using (server server : Server)
      (server.stop!))))

(def (wait-for-no-connections server)
  (let (deadline (+ (##current-time-point) 4))
    (let loop ()
      (using (server server : Server)
        (cond
         ((fxzero? (server.active-connections)) (void))
         ((> (##current-time-point) deadline)
          (error "active connection did not finish"))
         (else
          (thread-sleep! .01)
          (loop)))))))

(def (record-data-ref record key)
  (waget (Record-data record) key))

(def (channel-get/bounded channel seconds default)
  (let ((deadline (+ (##current-time-point) seconds))
        (absent (gensym)))
    (let loop ()
      (let (value (channel-try-get channel absent))
        (cond
         ((not (eq? value absent)) value)
         ((>= (##current-time-point) deadline) default)
         (else
          (thread-sleep! .01)
          (loop)))))))

(def (collect-system-records-through-sentinel channel sentinel)
  (let loop ((records []))
    (let (record (channel-get/bounded channel 4 #f))
      (unless record (error "system log sentinel timed out"))
      (if (and (string=? (Record-source record) "/net/httpd")
               (string=? (Record-msg record) sentinel))
        (reverse records)
        (loop (cons record records))))))

(def (finalization-record? record)
  (and (string=? (Record-source record) "/net/httpd")
       (string=? (Record-msg record) "unhandled exception in handler")
       (let (exception (record-data-ref record 'exception:))
         (and (string? exception)
              (or (string-contains exception (OSError-message
                                              (make-os-error 'expected EPIPE)))
                  (string-contains exception (OSError-message
                                              (make-os-error 'expected ECONNRESET))))))))

(def (response-finalization-scenario)
  (let-values (((request-log request-records)
                (new-test-log-sink "/net/httpd/server-test/request"))
               ((system-sink system-records)
                (new-test-log-sink "/net/httpd/server-test/system"
                                   "/net/httpd")))
    (add-system-sink! system-sink)
    (let ((flushed (make-channel 1))
          (release (make-channel 1))
          (server #f)
          (client #f))
      (try
       (begin
         (set! server
           (start-server
            (lambda (request response)
              (let (writer (ResponseHandler-begin!
                            response OK
                            '(("Content-Type" . "text/plain"))))
                (BufferedWriter-write-string-utf8 writer "peer loss\n")
                (BufferedWriter-flush writer)
                (channel-put flushed #t)
                (unless (channel-get/bounded release 4 #f)
                  (error "finalization release timed out"))))
            request-log))
         (set! client (open-client))
         (send-request! client)
         (unless (channel-get/bounded flushed 4 #f)
           (error "handler flush timed out"))
         ;; Closing with unread response data makes this abortive on the target
         ;; Linux runtime and exercises Gerbil-owned terminal chunk framing.
         (close-client! client)
         (set! client #f)
         (channel-put release #t)
         (wait-for-no-connections server)
         (testlog.error "response-finalization-complete")
         (let* ((records
                 (collect-system-records-through-sentinel
                  system-records "response-finalization-complete"))
                (unhandled (find finalization-record? records))
                (expected (getenv "GERBIL_HTTP_SERVER_FINALIZATION_EXPECT"
                                  "suppressed")))
           (cond
              ((string=? expected "unhandled")
               (unless unhandled
                 (error "negative control did not observe EPIPE/ECONNRESET finalization")))
              ((string=? expected "suppressed")
               (when unhandled
                 (error "response finalization peer loss was not suppressed")))
              (else
               (error "invalid GERBIL_HTTP_SERVER_FINALIZATION_EXPECT"
                      expected)))))
       (finally
        (channel-try-put release #t)
        (close-client! client)
        (stop-server! server))))))

(def (application-error-visible errno marker)
  (let-values (((request-log records)
                (new-test-log-sink "/net/httpd/server-test/application")))
    (let ((server #f)
          (client #f)
          (failure (make-os-error 'application-peer-error errno marker)))
      (try
       (begin
         (set! server
           (start-server (lambda (request response) (raise failure))
                         request-log))
         (set! client (open-client))
         (send-request! client)
         (wait-for-no-connections server)
         (let loop ()
           (let (record (channel-get/bounded records 4 #f))
             (unless record (error "application error log timed out"))
             (if (and (= (Record-level record) ERROR)
                      (string=? (Record-msg record)
                                "unhandled exception in handler"))
               (let (exception (record-data-ref record 'exception:))
                 (unless (and (string? exception)
                              (string-contains exception
                                               (symbol->string marker))
                              (string-contains exception
                                               (OSError-message failure)))
                   (error "application peer error was not preserved in request log"
                          exception)))
               (loop)))))
       (finally
        (close-client! client)
        (stop-server! server))))))

(defstruct fault-writer ((failure : :t)) final: #t)
(implement
 (Closer
  (fault-writer
   (close (lambda (self)
            (raise (fault-writer-failure self))))))
 (Writer
  (fault-writer
   (write (lambda (self
                   bytes
                   start
                   end)
            (fx- end start))))))

(def (non-peer-response-close-visible)
  (let* ((failure (make-os-error 'response-close EIO 'response-eio))
         (writer (open-buffered-writer (Writer (fault-writer failure))))
         (context (RequestContext #f #f writer))
         (response
          (new-response-handler context (URL "http://127.0.0.1:20002/") '()
                                (lambda args (error "unexpected redirect")))))
    (check-exception (Closer-close response) (cut eq? <> failure))))

(def (idle-stop-and-rebind)
  (let-values (((log records) (new-test-log-sink "/net/httpd/server-test/idle")))
    (let (server (start-server (lambda (request response)
                                (ResponseHandler-write! response OK '() #u8()))
                              log))
      (let (started (##current-time-point))
        (stop-server! server)
        (when (> (- (##current-time-point) started) 1)
          (error "idle server stop was not prompt"))))
  (let-values (((log records) (new-test-log-sink "/net/httpd/server-test/rebind")))
    (let (server (start-server (lambda (request response)
                                (ResponseHandler-write! response OK '() #u8()))
                              log))
      (stop-server! server)))))

(def (forced-deadline-and-rebind)
  (let-values (((log records) (new-test-log-sink "/net/httpd/server-test/deadline")))
    (let ((entered (make-channel 1))
          (gate (make-channel 1))
          (server #f)
          (client #f))
      (try
       (begin
         (set! server
           (start-server
            (lambda (request response)
              (channel-put entered #t)
              (channel-get gate))
            log))
         (set! client (open-client))
         (send-request! client)
         (unless (channel-get/bounded entered 4 #f)
           (error "blocked handler did not start"))
         (let (started (##current-time-point))
           (stop-server! server)
           (let (elapsed (- (##current-time-point) started))
             (unless (and (>= elapsed 2.5) (< elapsed 5))
               (error "forced shutdown missed its deadline" elapsed))))
         (using (server server : Server)
           (unless (fxzero? (server.active-connections))
             (error "forced shutdown retained active connections"))))
       (finally
        (channel-try-put gate #t)
        (close-client! client)
        (stop-server! server)))))
  (let-values (((log records) (new-test-log-sink "/net/httpd/server-test/deadline-rebind")))
    (let (server (start-server (lambda (request response)
                                (ResponseHandler-write! response OK '() #u8()))
                              log))
      (stop-server! server))))

(def (partial-listener-failure)
  (let-values (((log records) (new-test-log-sink "/net/httpd/server-test/partial-start")))
    (let ((blocker (tcp-listen blocked-address))
          (server #f)
          (client #f))
      (try
       (begin
         (set! server
           (start-server
            (lambda (request response)
              (ResponseHandler-write! response OK '() #u8()))
            log
            [blocked-address server-listen-address]))
         (set! client (open-client))
         (send-request! client)
         (close-client! client)
         (set! client #f)
         (wait-for-no-connections server))
       (finally
        (close-client! client)
        (stop-server! server)
        (ignore-errors (Socket-close blocker)))))))

(def (all-listeners-fail)
  (let-values (((log records) (new-test-log-sink "/net/httpd/server-test/failed-start")))
    (let ((blocker (tcp-listen server-address))
          (server #f))
      (try
       (begin
         (set! server
           (new-http-server
            (ServerConfig
             mux: (new-static-mux rest: "/" (new-closure-handler
                                               (lambda (request response) (void))))
             log: log
             listen: [server-listen-address])))
         (using (server server : Server)
           (check-exception (server.start!) io-error?)))
       (finally
        (stop-server! server)
        (ignore-errors (Socket-close blocker)))))))

;; Private raw-wire fixtures, adapted from the native server framing tests.
;; RFC 9112 sections 2, 3.2 and 6.3 define the request and framing expectations;
;; RFC 9110 sections 5.1, 5.5 and 10.1.1 define fields and 100-continue.
;; The owned echo server closes each response; read through EOF, not one packet.
;; EXERCISE borrows the socket, reader, writer and dispatch channel. The owner
;; closes the socket and server even when a test assertion escapes its continuation.
(def (with-wire-client (exercise : :procedure))
  => :void
  (let* ((entered (make-channel 2))
         (log (stderr-log-sink))
         (server
          (new-http-server
           (ServerConfig
            mux: (new-static-mux
                  rest: "" (new-closure-handler
                              (lambda ((request  : Request)
                                       (response : ResponseHandler))
                                => :void
                                (unless (channel-try-put entered request)
                                  (raise-io-error with-wire-client
                                                  "wire fixture dispatched too many requests"
                                                  capacity: 2))
                                (ResponseHandler-write!
                                 response OK []
                                 (read-all-from-reader (Request-body request))))))
            log: log
            listen: [server-listen-address]
            request-timeout: (IOTimeout 2)
            response-timeout: (IOTimeout 2)))))
    (try
     (LogSink-set-level! log ERROR)
     (Server-start! server)
     (let (client (tcp-connect server-address (IOTimeout 2)))
       (try
        (Socket-set-input-timeout! client (timeout->deadline (IOTimeout 2)))
        (Socket-set-output-timeout! client (timeout->deadline (IOTimeout 2)))
        (exercise client
                  (open-buffered-reader (StreamSocket-reader client))
                  (open-buffered-writer (StreamSocket-writer client))
                  entered)
        (finally (Socket-close client))))
     (finally (Server-stop! server)))))

(def (write-wire! (writer : BufferedWriter)
                  (wire   : :string))
  => :void
  (writer.write-string-utf8 wire)
  (writer.flush))

;; Read through CRLFCRLF independently of HTTP's parser, leaving body bytes buffered.
;; The caller owns READER; incomplete or over-limit fixture heads raise I/O errors.
(def (read-wire-head (reader : BufferedReader))
  => :string
  (let (bytes (make-u8vector 8192))
    (let loop ((end 0 :- :fixnum))
      => :string
      (when (fx= end (u8vector-length bytes))
        (raise-io-error read-wire-head "response head exceeds fixture limit" bytes: end))
      (let (byte (reader.read-u8))
        (unless (fixnum? byte)
          (raise-io-error read-wire-head "response ended before head terminator" bytes: end))
        (u8vector-set! bytes end (:- byte :fixnum)))
      (let (next (fx1+ end))
        (if (and (fx>= next 4)
                 (fx= (u8vector-ref bytes (fx- next 4)) 13)
                 (fx= (u8vector-ref bytes (fx- next 3)) 10)
                 (fx= (u8vector-ref bytes (fx- next 2)) 13)
                 (fx= (u8vector-ref bytes (fx- next 1)) 10))
          (utf8->string (subu8vector bytes 0 next))
          (loop next))))))

;; Consume the final echo through EOF and return the sole dispatched Request.
;; CONTINUE? permits one interim 100; failed assertions escape through :std/test.
(def (check-echo-response! (reader    : BufferedReader)
                          (entered   : Channel)
                          (expected  : :string)
                          (continue? : :boolean := #f))
  => Request
  (let* ((first-head (read-wire-head reader))
         ;; RFC 9110 permits an interim 100 even when Expect has no body.
         (head (if (and continue? (string-prefix? "HTTP/1.1 100 " first-head))
                 (read-wire-head reader)
                 first-head))
         (body (utf8->string (read-all-from-reader reader)))
         (request (channel-try-get entered #f)))
    (check (string-prefix? "HTTP/1.1 200 OK\r\n" head) => #t)
    (check body => expected)
    (unless (string-empty? expected)
      (check (member (string-append "Content-Length: "
                                   (number->string (u8vector-length (string->utf8 expected)))
                                   "\r")
                     (string-split head #\newline))
             ? pair?))
    (check request ? Request?)
    (check (channel-try-get entered #f) => #f)
    (:- request Request)))

;; FIELDS checks dispatched request metadata; the response oracle remains raw bytes.
;; Fixture resources remain owned by with-wire-client.
(def (expect-wire-echo (wire      : :string)
                      (expected  : :string := "")
                      (fields    : :list := [])
                      (continue? : :boolean := #f))
  => :void
  (with-wire-client
   (lambda ((client  : StreamSocket)
            (reader  : BufferedReader)
            (writer  : BufferedWriter)
            (entered : Channel))
     => :void
     (write-wire! writer wire)
     (let (request (check-echo-response! reader entered expected continue?))
       (for-each
        (lambda ((field : :pair))
          => :void
          (check (aget (car field) (Request-headers request)) => (cdr field)))
        fields)))))

;; Keep the request side open: rejection must not depend on EOF or an unsent body.
;; Consume the response through EOF and require no handler dispatch.
(def (expect-wire-rejection (wire   : :string)
                           (status : :string := "400 Bad Request"))
  => :void
  (with-wire-client
   (lambda ((client  : StreamSocket)
            (reader  : BufferedReader)
            (writer  : BufferedWriter)
            (entered : Channel))
     => :void
     (write-wire! writer wire)
     (let (head (read-wire-head reader))
       (read-all-from-reader reader)
       (check (string-prefix? (string-append "HTTP/1.1 " status "\r\n") head) => #t)
       (check (channel-try-get entered #f) => #f)))))

;; A Timeout is the expected observation, not permission to skip completion.
;; Reset the socket deadline after that observation so later reads stay usable.
(def (expect-fragmented-request (prefix : :string)
                               (suffix : :string))
  => :void
  (with-wire-client
   (lambda ((client  : StreamSocket)
            (reader  : BufferedReader)
            (writer  : BufferedWriter)
            (entered : Channel))
     => :void
     (write-wire! writer prefix)
     (Socket-set-input-timeout! client (timeout->deadline (IOTimeout .5)))
     (check-exception (reader.read-u8) Timeout?)
     (check (channel-try-get entered #f) => #f)
     (Socket-set-input-timeout! client (timeout->deadline (IOTimeout 2)))
     (write-wire! writer suffix)
     (check-echo-response! reader entered "")
     (void))))

;; Withhold the body until Expect is acknowledged, then require the final echo.
;; This detects servers that wait for the body before sending 100 Continue.
(def (expect-continue-response)
  => :void
  (with-wire-client
   (lambda ((client  : StreamSocket)
            (reader  : BufferedReader)
            (writer  : BufferedWriter)
            (entered : Channel))
     => :void
     (write-wire! writer
                  "POST /probe HTTP/1.1\r\nHost: localhost\r\nExpect: 100-continue\r\nContent-Length: 5\r\n\r\n")
     ;; Consume the complete interim head, allowing optional response fields.
     (check (string-prefix? "HTTP/1.1 100 Continue\r\n" (read-wire-head reader))
            => #t)
     (write-wire! writer "ready")
     (check-echo-response! reader entered "ready")
     (void))))

;; Add wire cases to the current :std/test suite; the caller controls selection.
(def (register-wire-tests!)
  => :void
  (test-case "fragmented method waits then completes"
    (expect-fragmented-request
     "G"
     "ET /probe HTTP/1.1\r\nHost: localhost\r\n\r\n"))
  (test-case "fragmented URL 1 waits then completes"
    (expect-fragmented-request
     "GET "
     "/probe HTTP/1.1\r\nHost: localhost\r\n\r\n"))
  (test-case "fragmented URL 2 waits then completes"
    (expect-fragmented-request
     "GET /pro"
     "be HTTP/1.1\r\nHost: localhost\r\n\r\n"))
  (test-case "fragmented URL 3 waits then completes"
    (expect-fragmented-request
     "GET /probe "
     "HTTP/1.1\r\nHost: localhost\r\n\r\n"))
  (test-case "fragmented HTTP version waits then completes"
    (expect-fragmented-request
     "GET /probe HTTP"
     "/1.1\r\nHost: localhost\r\n\r\n"))
  (test-case "fragmented request line waits then completes"
    (expect-fragmented-request
     "GET /probe HTTP/1.1"
     "\r\nHost: localhost\r\n\r\n"))
  (test-case "fragmented request line newline 1 waits then completes"
    (expect-fragmented-request
     "GET /probe HTTP/1.1\r"
     "\nHost: localhost\r\n\r\n"))
  (test-case "fragmented request line newline 2 waits then completes"
    (expect-fragmented-request
     "GET /probe HTTP/1.1\r\n"
     "Host: localhost\r\n\r\n"))
  (test-case "fragmented field name waits then completes"
    (expect-fragmented-request
     "GET /probe HTTP/1.1\r\nHo"
     "st: localhost\r\n\r\n"))
  (test-case "fragmented field value 1 waits then completes"
    (expect-fragmented-request
     "GET /probe HTTP/1.1\r\nHost:"
     " localhost\r\n\r\n"))
  (test-case "fragmented field value 2 waits then completes"
    (expect-fragmented-request
     "GET /probe HTTP/1.1\r\nHost: "
     "localhost\r\n\r\n"))
  (test-case "fragmented field value 3 waits then completes"
    (expect-fragmented-request
     "GET /probe HTTP/1.1\r\nHost: localhost"
     "\r\n\r\n"))
  (test-case "fragmented field value 4 waits then completes"
    (expect-fragmented-request
     "GET /probe HTTP/1.1\r\nHost: localhost\r"
     "\n\r\n"))
  (test-case "fragmented request waits then completes"
    (expect-fragmented-request
     "GET /probe HTTP/1.1\r\nHost: localhost\r\n"
     "\r\n"))
  (test-case "fragmented request termination waits then completes"
    (expect-fragmented-request
     "GET /probe HTTP/1.1\r\nHost: localhost\r\n\r"
     "\n"))
  (test-case "request without HTTP version rejects before dispatch"
    (expect-wire-rejection "GET /probe \r\n\r\n"))
  (test-case "bodyless GET Expect completes with final echo"
    (expect-wire-echo
     "GET /probe HTTP/1.1\r\nHost: native.invalid\r\nExpect: 100-continue\r\n\r\n"
     "" [] #t))
  (test-case "POST Expect 100-continue precedes body and final echo"
    (expect-continue-response))
  (test-case "valid GET dispatches exactly once"
    (expect-wire-echo "GET /probe HTTP/1.1\r\nHost: native.invalid\r\n\r\n"))
  (test-case "mixed-case Host HTAB whitespace and empty field are accepted"
    (expect-wire-echo
     "GET /probe HTTP/1.1\r\nhOsT:\tnative.invalid\r\nX-Empty:\r\n\r\n"
     "" '(("Host" . "native.invalid") ("X-Empty" . ""))))
  (test-case "invalid field-name token rejects before dispatch"
    (expect-wire-rejection
     "GET /probe HTTP/1.1\r\nHost: localhost\r\nBad[Name]: value\r\n\r\n"))
  (test-case "missing Host rejects before waiting for declared body"
    (expect-wire-rejection
     "GET /probe HTTP/1.1\r\nContent-Length: 7\r\n\r\n"))
  (test-case "different duplicate Host authorities reject before dispatch"
    (expect-wire-rejection
     "GET /probe HTTP/1.1\r\nHost: first.test\r\nHost: second.test\r\n\r\n"))
  (test-case "case-insensitive duplicate Host rejects before dispatch"
    (expect-wire-rejection
     "GET /probe HTTP/1.1\r\nHost: localhost\r\nhOsT: localhost\r\n\r\n"))
  (test-case "arbitrarily large negative Content-Length rejects before dispatch"
    (expect-wire-rejection
     "GET /probe HTTP/1.1\r\nHost: localhost\r\nContent-Length: -999999999999999999999999999999999999999999999999\r\n\r\n"))
  (test-case "negative Content-Length rejects before dispatch"
    (expect-wire-rejection
     "GET /probe HTTP/1.1\r\nHost: localhost\r\nContent-Length: -7\r\n\r\n"))
  (test-case "nondecimal Content-Length rejects before dispatch"
    (expect-wire-rejection
     "GET /probe HTTP/1.1\r\nHost: localhost\r\nContent-Length: seven\r\n\r\n"))
  (test-case "empty field value is accepted and preserved"
    (expect-wire-echo
     "GET /probe HTTP/1.1\r\nHost: localhost\r\nX-Empty: \r\n\r\n"
     "" '(("X-Empty" . ""))))
  (test-case "field value control byte rejects before dispatch"
    (expect-wire-rejection
     (string-append "GET /probe HTTP/1.1\r\nHost: localhost\r\nX-Note: a"
                    (string (integer->char 7)) "\r\n\r\n")))
  (test-case "unsupported HTTP version rejects before dispatch"
    (expect-wire-rejection "GET /probe HTTP/7.0\r\nHost: localhost\r\n\r\n"
                           "505 HTTP Version Not Supported"))
  (test-case "invalid request prefix rejects before dispatch"
    (expect-wire-rejection "stray GET /probe HTTP/1.1\r\nHost: localhost\r\n\r\n"))
  (test-case "bare CR before another field rejects before dispatch"
    (expect-wire-rejection
     "GET /probe HTTP/1.1\r\nHost: localhost\r\n\rX-Note: value\r\n\r\n"))
  (test-case "fixed-length POST echoes complete body"
    (expect-wire-echo
     "POST /probe HTTP/1.1\r\nHost: localhost\r\nContent-Length: 11\r\n\r\nhello wire!"
     "hello wire!"))
  (test-case "chunked POST echoes decoded chunks"
    (expect-wire-echo
     "POST /probe HTTP/1.1\r\nHost: localhost\r\nTransfer-Encoding: chunked\r\n\r\n4\r\nwire\r\n5\r\n-test\r\n0\r\n\r\n"
     "wire-test"))
  ;; RFC 9112 section 6.3 permits rejecting ambiguous framing. Require rejection
  ;; rather than endorsing this branch's Content-Length precedence.
  (test-case "case-varied Transfer-Encoding and Content-Length conflict rejects"
    (expect-wire-rejection
     "POST /probe HTTP/1.1\r\nHost: localhost\r\ncOnTeNt-LeNgTh: 4\r\ntRaNsFeR-EnCoDiNg: chunked\r\n\r\n4\r\nwire\r\n0\r\n\r\n"))
  (test-case "large fixed-length echo is read completely past 1024 bytes"
    (let (body (list->string
                (map (lambda ((i : :fixnum))
                       => :char
                       (integer->char (fx+ 33 (fxmodulo i 90))))
                     (iota 1537))))
      (expect-wire-echo
       (string-append "POST /probe HTTP/1.1\r\nHost: localhost\r\nContent-Length: 1537\r\n\r\n"
                      body)
       body))))

(def server-test
  (test-suite "HTTP server lifecycle and wire protocol"
    (let (selector (getenv "GERBIL_HTTP_SERVER_TEST_ONLY" #f))
      (cond
       ((or (not selector) (string=? selector "response-finalization"))
        (test-case "server-owned peer-loss finalization"
          (response-finalization-scenario))
        (unless selector
          (register-wire-tests!)
          (test-case "application peer errors remain visible"
            (application-error-visible EPIPE 'application-epipe)
            (application-error-visible ECONNRESET 'application-econnreset))
          (test-case "non-peer response close errors remain visible"
            (non-peer-response-close-visible))
          (test-case "idle stop is prompt and address is reusable"
            (idle-stop-and-rebind))
          (test-case "forced deadline clears handlers and address is reusable"
            (forced-deadline-and-rebind))
          (test-case "startup continues after one listener fails"
            (partial-listener-failure))
          (test-case "startup fails when every listener fails"
            (all-listeners-fail))))
       (else (error "invalid GERBIL_HTTP_SERVER_TEST_ONLY" selector))))))
