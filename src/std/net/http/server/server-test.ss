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
  (only-in ../common/ioutil
           read-request-line!
           read-headers!
           max-headers-length
           HTTPInputError
           HTTPInputError?
           MalformedRequestLine-irritants
           MalformedRequestLine-where
           MalformedRequestLine
           MalformedRequestLine?
           MalformedHeaderName
           MalformedHeaderName?
           MalformedHeaderValue
           MalformedHeaderValue?
           MalformedLineEnding
           MalformedLineEnding?)
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

;; A mux runs after parsing but outside the application handler's 500 boundary.
(defstruct fault-mux ((failure : Error)) final: #t)
(implement ServerMux fault-mux
  (request-handler
   (lambda (self request)
     (abort! (raise self.failure)))))

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
(def (expect-continue-response
      (head     : :string := "POST /probe HTTP/1.1\r\nHost: localhost\r\nExpect: 100-continue\r\nContent-Length: 5\r\n\r\n")
      (body     : :string := "ready")
      (expected : :string := "ready"))
  => :void
  (with-wire-client
   (lambda ((client  : StreamSocket)
            (reader  : BufferedReader)
            (writer  : BufferedWriter)
            (entered : Channel))
     => :void
     (write-wire! writer head)
     ;; Consume the complete interim head, allowing optional response fields.
     (check (string-prefix? "HTTP/1.1 100 Continue\r\n" (read-wire-head reader))
            => #t)
     (write-wire! writer body)
     (check-echo-response! reader entered expected)
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
  (test-case "missing and extra request-line fields reject without headers"
    (for-each expect-wire-rejection
              ["GET /probe\r\n"
               "GET /probe HTTP/1.1 extra\r\n"
               "GET /probe HTTP/1.1 \r\n"]))
  (test-case "empty request-line fields reject without headers"
    (for-each expect-wire-rejection
              [" /probe HTTP/1.1\r\n"
               "GET  HTTP/1.1\r\n"
               "GET /probe \r\n"]))
  (test-case "invalid method token rejects without headers"
    (for-each expect-wire-rejection
              ["G[ET /probe HTTP/1.1\r\n"
               "G\tET /probe HTTP/1.1\r\n"
               "GéT /probe HTTP/1.1\r\n"]))
  (test-case "request-target control bytes reject without headers"
    (for-each
     (lambda ((byte : :fixnum))
       => :void
       (expect-wire-rejection
        (string-append "GET /pro" (string (integer->char byte)) "be HTTP/1.1\r\n")))
     [0 9 10 11 12 31 127]))
  (test-case "malformed HTTP version rejects without headers"
    (for-each
     (lambda ((version : :string))
       => :void
       (expect-wire-rejection (string-append "GET /probe " version "\r\n")))
     ["http/1.1" "HTTP/1" "HTTP/1.10" "HTTP/10.1" "HTTP/a.1" "HTTP/1.a" "HTTP/1,1"]))
  (test-case "request-line reader preserves premature EOF and limit errors"
    (check-exception
     (read-request-line! (open-buffered-reader #u8()) (box 1024))
     PrematureEndOfInput?)
    (check-exception
     (read-request-line! (open-buffered-reader (string->utf8 "GET /pro")) (box 1024))
     PrematureEndOfInput?)
    (check-exception
     (read-request-line! (open-buffered-reader (string->utf8 "GET /probe HTTP/1.1\r\n")) (box 3))
     (lambda ((failure : :t))
       => :boolean
       (and (IOError? failure) (not (MalformedRequestLine? failure))))))
  (test-case "standard and extension methods preserve their exact spelling"
    (for-each
     (lambda ((method : :string))
       => :void
       (let (((values actual target proto)
               (read-request-line!
                (open-buffered-reader
                 (string->utf8 (string-append method " /probe HTTP/1.1\r\n")))
                (box 1024))))
         (check actual => method)
         (check target => "/probe")
         (check proto => "HTTP/1.1")))
     ["GET" "HEAD" "POST" "PUT" "DELETE" "CONNECT" "OPTIONS" "TRACE" "PATCH"
      "get" "Get" "CUSTOM" "AZaz09!#$%&'*+-.^_`|~"]))
  (test-case "HTTP input errors share an IO base without classifying transport failures"
    (for-each
     (lambda ((failure : Error))
       => :void
       (check (HTTPInputError? failure) => #t)
       (check (IOError? failure) => #t))
     [(MalformedRequestLine "line") (MalformedLineEnding "ending")
      (MalformedHeaderName "name") (MalformedHeaderValue "value")
      (MalformedHost "host") (MalformedContentLength "length")
      (MalformedRequestFraming "framing")])
    (check (HTTPInputError? (IOError "transport")) => #f)
    (check (HTTPInputError? (PrematureEndOfInput "EOF")) => #f))
  (test-case "request-line raiser preserves context and diagnostic irritants"
    (check-exception
     (read-request-line! (open-buffered-reader (string->utf8 "invalid\r\n")) (box 1024))
     (lambda ((failure : :t))
       => :boolean
       (and (MalformedRequestLine? failure)
            (string? (MalformedRequestLine-where failure))
            (equal? (MalformedRequestLine-irritants failure)
                    '(read-request-line! "invalid"))))))
  (test-case "application protocol and IO errors remain server errors"
    (for-each
     (lambda ((failure : Error))
       => :void
       (let* ((log (stderr-log-sink))
              (server (start-server (lambda (request response) (raise failure)) log))
              (client #f))
         (try
          (LogSink-set-level! log ERROR)
          (set! client (open-client))
          (send-request! client)
          (let* ((reader (open-buffered-reader (StreamSocket-reader client)))
                 (head (read-wire-head reader)))
            (read-all-from-reader reader)
            (check (string-prefix? "HTTP/1.1 500 Internal Server Error\r\n" head) => #t))
          (finally
           (close-client! client)
           (stop-server! server)))))
     [(IOError "application IO error")
      (HTTPInputError "application base protocol error")
      (MalformedRequestLine "application protocol error")
      (MalformedHeaderName "application header error")
      (MalformedHeaderValue "application header value error")
      (MalformedLineEnding "application line-ending error")
      (MalformedHost "application Host error")
      (MalformedContentLength "application Content-Length error")
      (MalformedRequestFraming "application framing error")]))
  (test-case "mux protocol error is not a client error"
    (for-each
     (lambda ((failure : Error))
       => :void
       (let* ((log (stderr-log-sink))
              (server (new-http-server
                       (ServerConfig
                        mux: (ServerMux (fault-mux failure))
                        log: log
                        listen: [server-listen-address])))
              (client #f))
         (try
          (LogSink-set-level! log ERROR)
          (Server-start! server)
          (set! client (open-client))
          (send-request! client)
          (let (reader (open-buffered-reader (StreamSocket-reader client)))
            ;; A mux failure closes the connection, without a spurious 400.
            (check (BufferedReader-read-u8 reader) ? eof-object?))
          (finally
           (close-client! client)
           (stop-server! server)))))
     [(HTTPInputError "mux base protocol error")
      (MalformedRequestLine "mux protocol error")
      (MalformedHeaderName "mux header error")
      (MalformedHeaderValue "mux header value error")
      (MalformedLineEnding "mux line-ending error")
      (MalformedHost "mux Host error")
      (MalformedContentLength "mux Content-Length error")
      (MalformedRequestFraming "mux framing error")]))
  (test-case "token punctuation in extension method is accepted"
    (expect-wire-echo
     "AZaz09!#$%&'*+-.^_`|~ /probe HTTP/1.1\r\nHost: localhost\r\n\r\n"))
  (test-case "HTTP 1.0 without Host is still accepted"
    (expect-wire-echo "GET /probe HTTP/1.0\r\n\r\n"))
  (test-case "bodyless GET Expect completes with final echo"
    (expect-wire-echo
     "GET /probe HTTP/1.1\r\nHost: native.invalid\r\nExpect: 100-continue\r\n\r\n"
     "" [] #t))
  (test-case "POST Expect 100-continue precedes body and final echo"
    (expect-continue-response))
  (test-case "case-insensitive Expect acknowledges validated duplicate decimal lengths"
    (expect-continue-response
     "POST /probe HTTP/1.1\r\nHost: localhost\r\neXpEcT:\t100-CoNtInUe \t\r\nContent-Length: 0005\r\nCONTENT-LENGTH: 5\r\n\r\n"))
  (test-case "Expect acknowledges withheld chunked bodies including the empty chunk"
    (expect-continue-response
     "POST /probe HTTP/1.1\r\nHost: localhost\r\nExpect: 100-continue\r\nTransfer-Encoding: CHUNKED\r\n\r\n"
     "2\r\nre\r\n3\r\nady\r\n0\r\n\r\n")
    (expect-continue-response
     "POST /probe HTTP/1.1\r\nHost: localhost\r\nExpect: 100-continue\r\nTransfer-Encoding: chunked\r\n\r\n"
     "0\r\n\r\n" ""))
  (test-case "Expect waits for the complete valid head before acknowledgment"
    (with-wire-client
     (lambda ((client  : StreamSocket)
              (reader  : BufferedReader)
              (writer  : BufferedWriter)
              (entered : Channel))
       => :void
       (write-wire! writer
                    "POST /probe HTTP/1.1\r\nHost: localhost\r\nExpect: 100-continue\r\nContent-Length: 5\r\n\r")
       (Socket-set-input-timeout! client (timeout->deadline (IOTimeout .5)))
       (check-exception (reader.read-u8) Timeout?)
       (check (channel-try-get entered #f) => #f)
       (Socket-set-input-timeout! client (timeout->deadline (IOTimeout 2)))
       (write-wire! writer "\n")
       (check (read-wire-head reader) => "HTTP/1.1 100 Continue\r\n\r\n")
       (write-wire! writer "ready")
       (check-echo-response! reader entered "ready")
       (void))))
  (test-case "bodyless and zero-length Expect preserve final-only responses"
    (for-each
     (lambda ((fields : :string))
       => :void
       (expect-wire-echo
        (string-append "POST /probe HTTP/1.1\r\nHost: localhost\r\nExpect: 100-continue\r\n"
                       fields "\r\n")))
     ["" "Content-Length: 000\r\n" "Content-Length: 0\r\ncontent-length: 00\r\n"]))
  (test-case "unsupported empty list and duplicate Expect remain ignored"
    (for-each
     (lambda ((fields : :string))
       => :void
       (expect-wire-echo
        (string-append "POST /probe HTTP/1.1\r\nHost: localhost\r\nContent-Length: 5\r\n"
                       fields "\r\nready")
        "ready"))
     ["Expect: something-else\r\n" "Expect:\r\n" "Expect: \t\r\n"
      "Expect: 100-continue, 100-continue\r\n" "Expect: 100-continue;foo=bar\r\n"
      "Expect: 100-continue\r\nexpect: 100-continue\r\n"
      "Expect: 100-continue\r\neXpEcT: other\r\n"
      "Expect: other\r\nEXPECT: 100-continue\r\n"
      "Expect: 100-continue\r\nExpect:\r\n"
      "Expect:\r\nExpect: 100-continue\r\n"]))
  (test-case "HTTP 1.0 ignores Expect while preserving the fixed-length body"
    (expect-wire-echo
     "POST /probe HTTP/1.0\r\nExpect: 100-continue\r\nContent-Length: 5\r\n\r\nready"
     "ready"))
  (test-case "unsupported version with Expect preserves final 505 without acknowledgment"
    (expect-wire-rejection
     "POST /probe HTTP/7.0\r\nHost: localhost\r\nExpect: 100-continue\r\nContent-Length: 5\r\n\r\n"
     "505 HTTP Version Not Supported"))
  (test-case "valid GET dispatches exactly once"
    (expect-wire-echo "GET /probe HTTP/1.1\r\nHost: native.invalid\r\n\r\n"))
  (test-case "mixed-case Host HTAB whitespace and empty field are accepted"
    (expect-wire-echo
     "GET /probe HTTP/1.1\r\nhOsT:\tnative.invalid\r\nX-Empty:\r\n\r\n"
     "" '(("Host" . "native.invalid") ("X-Empty" . ""))))
  (test-case "header names normalize every letter and preserve occurrences"
    (with-wire-client
     (lambda ((client  : StreamSocket)
              (reader  : BufferedReader)
              (writer  : BufferedWriter)
              (entered : Channel))
       => :void
       (write-wire! writer
                    "GET /probe HTTP/1.1\r\nHOST: native.invalid\r\nX-MiXeD: First\r\nx-mIXED: SECOND\r\n\r\n")
       (let (request (check-echo-response! reader entered ""))
         (check (Request-headers request)
                => '(("Host" . "native.invalid")
                     ("X-Mixed" . "First")
                     ("X-Mixed" . "SECOND")))))))
  (test-case "header values accept only boundary spaces and tabs as optional whitespace"
    (for-each
     (lambda ((padding : :string))
       => :void
       (expect-wire-echo
        (string-append "GET /probe HTTP/1.1\r\nHost:" padding "native.invalid" padding
                       "\r\nX-Note:" padding "a \t B:C" padding "\r\nX-Empty:" padding "\r\n\r\n")
        "" '(("Host" . "native.invalid") ("X-Note" . "a \t B:C") ("X-Empty" . ""))))
     ["" " " "\t" " \t  \t"]))
  (test-case "mixed-case duplicate lengths retain both fields and echo body"
    (with-wire-client
     (lambda ((client  : StreamSocket)
              (reader  : BufferedReader)
              (writer  : BufferedWriter)
              (entered : Channel))
       => :void
       (write-wire! writer
                    "POST /probe HTTP/1.1\r\nHOST: native.invalid\r\ncOnTeNt-LeNgTh:\t4 \t\r\nCONTENT-LENGTH:4\r\n\r\nwire")
       (let (request (check-echo-response! reader entered "wire"))
         (check (Request-headers request)
                => '(("Host" . "native.invalid")
                     ("Content-Length" . "4")
                     ("Content-Length" . "4")))))))
  (test-case "mixed-case chunked framing with optional whitespace echoes body"
    (expect-wire-echo
     "POST /probe HTTP/1.1\r\nHOST: native.invalid\r\ntRaNsFeR-EnCoDiNg:\tchunked \t\r\n\r\n4\r\nwire\r\n0\r\n\r\n"
     "wire"))
  (test-case "header parser preserves non-optional value bytes"
    ;; Read raw octets, not UTF-8: obs-text, including NBSP, is not optional whitespace.
    (let* ((value (list->string (map integer->char [160 128 255 160])))
           (wire (string-append "x-NOTE:\t " value " \t\r\n\r\n"))
           (bytes (list->u8vector (map char->integer (string->list wire)))))
      (check (read-headers! (open-buffered-reader bytes) (box max-headers-length))
             => (list (cons "X-Note" value)))))
  (test-case "header optional whitespace cannot bypass the size limit"
    (for-each
     (lambda ((padding : :char))
       => :void
       (check-exception
        (read-headers!
         (open-buffered-reader
          (string->utf8
           (string-append "X:" (make-string max-headers-length padding) "\r\n\r\n")))
         (box max-headers-length))
        IOError?))
     [#\space #\tab])
    (check (read-headers!
            (open-buffered-reader (string->utf8 "X: a\r\n\r\n")) (box 6))
           => '(("X" . "a")))
    (check-exception
     (read-headers!
      (open-buffered-reader (string->utf8 "X: a\r\n\r\n")) (box 4))
     IOError?))
  (test-case "field names accept all token characters and hyphen boundaries"
    (expect-wire-echo
     "GET /probe HTTP/1.1\r\nHost: localhost\r\nAZaz09!#$%&'*+-.^_`|~: value\r\n-x--Y-: edge\r\n!: punctuation\r\n\r\n"
     "" '(("Azaz09!#$%&'*+-.^_`|~" . "value")
          ("-X--Y-" . "edge") ("!" . "punctuation"))))
  (test-case "field-name separators and whitespace reject before dispatch"
    (for-each
     (lambda ((char : :char))
       => :void
       (expect-wire-rejection
        (string-append "GET /probe HTTP/1.1\r\nHost: localhost\r\nBad"
                       (string char) "Name: value\r\n\r\n")))
     (string->list " \t()<>@,;\\\"/[]?={}")))
  (test-case "field-name control bytes reject before dispatch"
    (for-each
     (lambda ((byte : :fixnum))
       => :void
       (expect-wire-rejection
        (string-append "GET /probe HTTP/1.1\r\nHost: localhost\r\nBad"
                       (string (integer->char byte)) "Name: value\r\n\r\n")))
     [0 1 8 10 11 12 14 31 127]))
  (test-case "field-name non-ASCII octets reject in the shared parser"
    (for-each
     (lambda ((byte : :fixnum))
       => :void
       (check-exception
        (read-headers!
         (open-buffered-reader (u8vector 88 byte 58 32 118 13 10 13 10))
         (box max-headers-length))
        MalformedHeaderName?))
     (iota 128 128)))
  (test-case "field-name reader preserves premature EOF and limit errors"
    (check-exception
     (read-headers! (open-buffered-reader (string->utf8 "X")) (box max-headers-length))
     PrematureEndOfInput?)
    (check-exception
     (read-headers! (open-buffered-reader (string->utf8 "X: v\r\n\r\n")) (box 1))
     (lambda ((failure : :t))
       => :boolean
       (and (IOError? failure) (not (MalformedHeaderName? failure))))))
  (test-case "empty field name rejects before dispatch"
    (expect-wire-rejection
     "GET /probe HTTP/1.1\r\nHost: localhost\r\n: value\r\n\r\n"))
  (test-case "invalid field name rejects without waiting for the rest of the head"
    (expect-wire-rejection
     "POST /probe HTTP/1.1\r\nHost: localhost\r\nContent-Length: 7\r\nExpect: 100-continue\r\nBad["))
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
  (test-case "missing Host rejects origin and absolute targets without 100 Continue"
    (for-each
     (lambda ((target : :string))
       => :void
       (expect-wire-rejection
        (string-append "POST " target " HTTP/1.1\r\nContent-Length: 7\r\n"
                       "Expect: 100-continue\r\n\r\n")))
     ["/probe" "http://127.0.0.1/probe"]))
  (test-case "duplicate Host occurrences reject regardless of case value or HTTP version"
    (for-each
     (lambda ((proto : :string))
       => :void
       (for-each
        (lambda ((fields : :string))
          => :void
          (expect-wire-rejection
           (string-append "POST /probe " proto "\r\n" fields
                          "Content-Length: 7\r\nExpect: 100-continue\r\n\r\n")))
        ["Host: same.test\r\nHost: same.test\r\n"
         "hOsT: first.test\r\nX-Note: between\r\nHOST: second.test\r\n"
         "Host:\r\nhost: second.test\r\n"
         "host: first.test\r\nHOST:\r\n"
         "HOST:\r\nhost:\r\n"]))
     ["HTTP/1.1" "HTTP/1.0"]))
  (test-case "absolute target does not exempt duplicate Host"
    (expect-wire-rejection
     "GET http://127.0.0.1/probe HTTP/1.1\r\nHost: first.test\r\nHOST: second.test\r\n\r\n"))
  (test-case "HTTP 1.0 without Host preserves fixed-length body"
    (expect-wire-echo
     "POST /probe HTTP/1.0\r\nContent-Length: 4\r\n\r\nwire" "wire"))
  (test-case "single Host and HTTP 1.0 fallback preserve origin authority"
    (for-each
     (lambda ((example : :pair))
       => :void
       (with-wire-client
        (lambda ((client  : StreamSocket)
                 (reader  : BufferedReader)
                 (writer  : BufferedWriter)
                 (entered : Channel))
          => :void
          (write-wire! writer (car example))
          (let (request (check-echo-response! reader entered ""))
            (check (URL-host (Request-url request)) => (cdr example))))))
     '(("GET /probe HTTP/1.1\r\nhOsT: native.invalid:8080\r\n\r\n" . "native.invalid:8080")
       ("GET /probe HTTP/1.0\r\nHost: native.invalid\r\n\r\n" . "native.invalid")
       ("GET /probe HTTP/1.0\r\n\r\n" . "127.0.0.1")
       ("GET /probe HTTP/1.1\r\nHost:\r\n\r\n" . ""))))
  (test-case "absolute target authority still takes precedence over single Host"
    (with-wire-client
     (lambda ((client  : StreamSocket)
              (reader  : BufferedReader)
              (writer  : BufferedWriter)
              (entered : Channel))
       => :void
       (write-wire! writer
                    "GET http://127.0.0.1:8080/probe HTTP/1.1\r\nHost: native.invalid\r\n\r\n")
       (let (request (check-echo-response! reader entered ""))
         (check (URL-host (Request-url request)) => "127.0.0.1:8080")
         (check (aget "Host" (Request-headers request)) => "native.invalid")))))
  (test-case "arbitrarily large negative Content-Length rejects before dispatch"
    (expect-wire-rejection
     "GET /probe HTTP/1.1\r\nHost: localhost\r\nContent-Length: -999999999999999999999999999999999999999999999999\r\n\r\n"))
  (test-case "negative Content-Length rejects before dispatch"
    (expect-wire-rejection
     "GET /probe HTTP/1.1\r\nHost: localhost\r\nContent-Length: -7\r\n\r\n"))
  (test-case "nondecimal Content-Length rejects before dispatch"
    (expect-wire-rejection
     "GET /probe HTTP/1.1\r\nHost: localhost\r\nContent-Length: seven\r\n\r\n"))
  (test-case "Content-Length accepts decimal zero leading zeros and boundary whitespace"
    (for-each
     (lambda ((value : :string))
       => :void
       (expect-wire-echo
        (string-append "POST /probe HTTP/1.1\r\nHost: localhost\r\nContent-Length:"
                       value "\r\n\r\nwire")
        "wire"))
     ["4" "0004" " \t0004\t "])
    (expect-wire-echo
     "POST /probe HTTP/1.1\r\nHost: localhost\r\nContent-Length: 00\r\nExpect: 100-continue\r\n\r\n"
     "" [] #t))
  (test-case "empty signed and nondecimal Content-Length reject without body or 100 Continue"
    ;; Comma lists, even equal ones, are rejected rather than repaired.
    (for-each
     (lambda ((value : :string))
       => :void
       (expect-wire-rejection
        (string-append "POST /probe HTTP/1.1\r\nHost: localhost\r\nContent-Length: "
                       value "\r\nExpect: 100-continue\r\n\r\n")))
     ["" " \t" "+4" "-0" "-4" "4.0" "4e0" "4/1" "#x4" "#e4" "4i"
      "4 0" "4\t0" "4x" "４" "4,4" "4, 5" ",4" "4,"]))
  (test-case "inconsistent duplicate Content-Length rejects in either order and HTTP version"
    (for-each
     (lambda ((proto : :string))
       => :void
       (for-each
        (lambda ((fields : :string))
          => :void
          (expect-wire-rejection
           (string-append "POST /probe " proto "\r\nHost: localhost\r\n" fields
                          "Expect: 100-continue\r\n\r\n")))
        ["Content-Length: 0\r\ncontent-length: 4\r\n"
         "content-length: 4\r\nContent-Length: 0\r\n"
         "Content-Length: 4\r\nX-Note: between\r\nCONTENT-LENGTH: 04\r\nContent-Length: 5\r\n"]))
     ["HTTP/1.1" "HTTP/1.0"]))
  (test-case "invalid duplicate Content-Length rejects even beside a valid occurrence"
    (for-each
     (lambda ((value : :string))
       => :void
       (for-each
        (lambda ((fields : :string))
          => :void
          (expect-wire-rejection
           (string-append "POST /probe HTTP/1.1\r\nHost: localhost\r\n" fields
                          "Expect: 100-continue\r\n\r\n")))
        [(string-append "Content-Length: 4\r\nCONTENT-LENGTH: " value "\r\n")
         (string-append "content-length: " value "\r\nContent-Length: 4\r\n")]))
     ["" "-4" "+4" "four" "4,4"]))
  (test-case "numerically equal duplicate Content-Length preserves fields and exact body boundary"
    (with-wire-client
     (lambda ((client  : StreamSocket)
              (reader  : BufferedReader)
              (writer  : BufferedWriter)
              (entered : Channel))
       => :void
       (write-wire! writer
                    "POST /probe HTTP/1.0\r\ncOnTeNt-LeNgTh: 0004\r\nX-Note: between\r\nCONTENT-LENGTH:\t4 \t\r\nContent-Length: 04\r\n\r\nwireEXTRA")
       (let (request (check-echo-response! reader entered "wire"))
         (check (Request-headers request)
                => '(("Content-Length" . "0004") ("X-Note" . "between")
                     ("Content-Length" . "4") ("Content-Length" . "04")))))))
  (test-case "fragmented decimal Content-Length waits then completes"
    (expect-fragmented-request
     "POST /probe HTTP/1.1\r\nHost: localhost\r\nContent-Length: 0"
     "0\r\n\r\n"))
  (test-case "large conflicting decimal Content-Length rejects without overflow"
    (expect-wire-rejection
     "POST /probe HTTP/1.1\r\nHost: localhost\r\nContent-Length: 999999999999999999999999999999999999999999999999\r\ncontent-length: 999999999999999999999999999999999999999999999998\r\nExpect: 100-continue\r\n\r\n"))
  (test-case "request-content-length preserves exact integers across native bounds"
    (check (request-content-length '(("Host" . "localhost"))) => #f)
    (for-each
     (lambda ((length : :integer))
       => :void
       (let (decimal (number->string length))
         (check (request-content-length
                 [(cons "Content-Length" decimal)
                  (cons "Content-Length" (string-append "00" decimal))])
                => length)))
     [0 4 (- (expt 2 61) 1) (expt 2 61) (+ (expt 2 61) 1) (expt 10 100)]))
  (test-case "large positive Content-Length uses the existing request body reader"
    (with-wire-client
     (lambda ((client  : StreamSocket)
              (reader  : BufferedReader)
              (writer  : BufferedWriter)
              (entered : Channel))
       => :void
       (let (request (new-request
                     "POST" "/probe" "HTTP/1.1"
                     '(("Host" . "localhost")
                       ("Content-Length" . "999999999999999999999999999999999999999999999999"))
                     client (open-buffered-reader (string->utf8 "wire"))
                     (Logger (stderr-log-sink))))
         (check (utf8->string (read-all-from-reader (Request-body request))) => "wire")))))
  (test-case "empty field value is accepted and preserved"
    (expect-wire-echo
     "GET /probe HTTP/1.1\r\nHost: localhost\r\nX-Empty: \r\n\r\n"
     "" '(("X-Empty" . ""))))
  (test-case "field value control byte rejects before dispatch"
    (expect-wire-rejection
     (string-append "GET /probe HTTP/1.1\r\nHost: localhost\r\nX-Note: a"
                    (string (integer->char 7)) "\r\n\r\n")))
  (test-case "field-value controls at every position reject before dispatch"
    ;; CR belongs to line-ending validation; HTAB remains valid whitespace.
    (for-each
     (lambda ((byte : :fixnum))
       => :void
       (unless (memv byte '(9 13))
         (for-each
          (lambda ((parts : :pair))
            => :void
            (expect-wire-rejection
             (string-append "GET /probe HTTP/1.1\r\nHost: localhost\r\nX-Note: "
                            (car parts) (string (integer->char byte)) (cdr parts)
                            "\r\n\r\n")))
          '(("" . "ab") ("a" . "b") ("ab" . "")))))
     (cons 127 (iota 32))))
  (test-case "shared header parser rejects field-value controls beside optional whitespace"
    (for-each
     (lambda ((byte : :fixnum))
       => :void
       (unless (memv byte '(9 13))
         (check-exception
          (read-headers!
           (open-buffered-reader (u8vector 88 58 32 9 byte 9 32 13 10 13 10))
           (box max-headers-length))
          (if (fx= byte 10) MalformedLineEnding? MalformedHeaderValue?))))
     (cons 127 (iota 32))))
  (test-case "field values preserve visible ASCII obs-text and internal whitespace"
    (let (value (list->string (map integer->char (append (iota 94 33) [32 9] (iota 128 128)))))
      (with-wire-client
       (lambda ((client  : StreamSocket)
                (reader  : BufferedReader)
                (writer  : BufferedWriter)
                (entered : Channel))
         => :void
         ;; Write each octet directly: UTF-8 would change the obs-text bytes.
         (for-each
          (lambda ((char : :char))
            => :void
            (writer.write-u8 (char->integer char)))
          (string->list
           (string-append "GET /probe HTTP/1.1\r\nHost: localhost\r\nX-Note: \t"
                          value "\t \r\n\r\n")))
         (writer.flush)
         (let (request (check-echo-response! reader entered ""))
           (check (aget "X-Note" (Request-headers request)) => value))))))
  (test-case "invalid field value rejects before body or remaining head without 100 Continue"
    (expect-wire-rejection
     (string-append "POST /probe HTTP/1.1\r\nHost: localhost\r\nContent-Length: 7\r\n"
                    "Expect: 100-continue\r\nX-Note: a" (string (integer->char 0)))))
  (test-case "field-value reader preserves premature EOF and limit errors"
    (check-exception
     (read-headers! (open-buffered-reader (string->utf8 "X: value")) (box max-headers-length))
     PrematureEndOfInput?)
    (check-exception
     (read-headers! (open-buffered-reader (string->utf8 "X: value\r\n\r\n")) (box 4))
     (lambda ((failure : :t))
       => :boolean
       (and (IOError? failure) (not (MalformedHeaderValue? failure))))))
  (test-case "unsupported HTTP version rejects before dispatch"
    (expect-wire-rejection "GET /probe HTTP/7.0\r\nHost: localhost\r\n\r\n"
                           "505 HTTP Version Not Supported"))
  (test-case "invalid request prefix rejects before dispatch"
    (expect-wire-rejection "stray GET /probe HTTP/1.1\r\nHost: localhost\r\n\r\n"))
  (test-case "bare CR before another field rejects before dispatch"
    (expect-wire-rejection
     "GET /probe HTTP/1.1\r\nHost: localhost\r\n\rX-Note: value\r\n\r\n"))
  (test-case "bare CR in field values rejects without remaining head or body"
    (for-each
     (lambda ((value : :string))
       => :void
       (expect-wire-rejection
        (string-append "POST /probe HTTP/1.1\r\nHost: localhost\r\nContent-Length: 7\r\n"
                       "Expect: 100-continue\r\nX-Note:" value)))
     ["\rX" "a\rX" "a\r\r" "a\r " "a\r\t" " \t\rX"]))
  (test-case "bare LF rejects without waiting for CRLF"
    (for-each expect-wire-rejection
              ["GET /probe HTTP/1.1\n"
               "GET /probe HTTP/1.1\r\nHost: localhost\n"
               "GET /probe HTTP/1.1\r\nHost: localhost\r\n\n"
               "GET /probe HTTP/1.1\r\nHost: localhost\r\nX\n"]))
  (test-case "malformed request-line CR rejects without headers"
    (for-each expect-wire-rejection
              ["GET /probe HTTP/1.1\rX" "GET /probe HTTP/1.1\r\r"]))
  (test-case "field without colon rejects at CR"
    (expect-wire-rejection "GET /probe HTTP/1.1\r\nHost: localhost\r\nX-Note\r"))
  (test-case "fragmented empty field CRLF waits then completes"
    (for-each
     (lambda ((padding : :string))
       => :void
       (expect-fragmented-request
        (string-append "GET /probe HTTP/1.1\r\nHost: localhost\r\nX-Empty:" padding "\r")
        "\n\r\n"))
     ["" " \t"]))
  (test-case "shared header parser requires LF after CR at field and head endings"
    (for-each
     (lambda ((byte : :fixnum))
       => :void
       (unless (fx= byte 10)
         (for-each
          (lambda ((prefix : :string))
            => :void
            (check-exception
             (read-headers!
              (open-buffered-reader
               (list->u8vector (append (map char->integer (string->list prefix)) [13 byte])))
              (box max-headers-length))
             MalformedLineEnding?))
          ["" "X:" "X: value"])))
     (iota 256)))
  (test-case "line-ending reader preserves EOF and size budgets"
    (for-each
     (lambda ((wire : :string))
       => :void
       (check-exception
        (read-headers! (open-buffered-reader (string->utf8 wire)) (box max-headers-length))
        PrematureEndOfInput?))
     ["\r" "X:\r" "X: \t\r"])
    (check-exception
     (read-request-line! (open-buffered-reader (string->utf8 "GET /probe HTTP/1.1\r")) (box 1024))
     PrematureEndOfInput?)
    (let (budget (box 6))
      (check (read-headers! (open-buffered-reader (string->utf8 "X: a\r\n\r\n")) budget)
             => '(("X" . "a")))
      (check (unbox budget) => 0))
    (check-exception
     (read-headers! (open-buffered-reader (string->utf8 "X: a\r\n\r\n")) (box 4))
     (lambda ((failure : :t))
       => :boolean
       (and (IOError? failure) (not (MalformedLineEnding? failure))))))
  (test-case "fixed-length POST echoes complete body"
    (expect-wire-echo
     "POST /probe HTTP/1.1\r\nHost: localhost\r\nContent-Length: 11\r\n\r\nhello wire!"
     "hello wire!"))
  (test-case "chunked POST echoes decoded chunks"
    (expect-wire-echo
     "POST /probe HTTP/1.1\r\nHost: localhost\r\nTransfer-Encoding: chunked\r\n\r\n4\r\nwire\r\n5\r\n-test\r\n0\r\n\r\n"
     "wire-test"))
  (test-case "Transfer-Encoding conflicts reject every field spelling order and length value"
    (for-each
     (lambda ((proto : :string))
       => :void
       (for-each
        (lambda ((length : :string))
          => :void
          (let ((encoding "tRaNsFeR-EnCoDiNg: chunked\r\n")
                (length-field (string-append "cOnTeNt-LeNgTh: " length "\r\n")))
            (for-each
             (lambda ((fields : :string))
               => :void
               (expect-wire-rejection
                (string-append "POST /probe " proto "\r\nHost: localhost\r\n" fields
                               "Expect: 100-continue\r\n\r\n")))
             [(string-append encoding length-field)
              (string-append length-field "X-Note: between\r\n" encoding)])))
        ["0" "4" "0004" "" "-4" "four"]))
     ["HTTP/1.1" "HTTP/1.0"]))
  ;; Conservative request-framing policy: only singleton chunked is supported;
  ;; lists, parameters and unknown codings use the same 400/close boundary.
  (test-case "unsupported Transfer-Encoding rejects without body or 100 Continue"
    (for-each
     (lambda ((value : :string))
       => :void
       (expect-wire-rejection
        (string-append "POST /probe HTTP/1.1\r\nHost: localhost\r\nTransfer-Encoding: "
                       value "\r\nExpect: 100-continue\r\n\r\n")))
     ["" " \t" "identity" "gzip" "compress" "unknown" "chunked, chunked"
      "gzip, chunked" "chunked, gzip" "chunked;foo=bar" "chunked;" ",chunked"
      "chunked," "chun ked" "chunked\tchunked"]))
  (test-case "duplicate Transfer-Encoding rejects regardless of value and order"
    (for-each
     (lambda ((fields : :string))
       => :void
       (expect-wire-rejection
        (string-append "POST /probe HTTP/1.1\r\nHost: localhost\r\n" fields
                       "Expect: 100-continue\r\n\r\n")))
     ["Transfer-Encoding: chunked\r\ntransfer-encoding: chunked\r\n"
      "TRANSFER-ENCODING: chunked\r\nX-Note: between\r\ntransfer-encoding:\r\n"
      "transfer-encoding:\r\nTransfer-Encoding: chunked\r\n"
      "Transfer-Encoding: gzip\r\ntransfer-encoding: chunked\r\n"
      "Transfer-Encoding: chunked\r\ntransfer-encoding: gzip\r\n"]))
  (test-case "HTTP 1.0 Transfer-Encoding rejects even singleton chunked"
    (expect-wire-rejection
     "POST /probe HTTP/1.0\r\nTransfer-Encoding: chunked\r\nExpect: 100-continue\r\n\r\n"))
  (test-case "singleton chunked accepts coding case and preserves field and body boundary"
    (for-each
     (lambda ((coding : :string))
       => :void
       (expect-wire-echo
        (string-append "POST /probe HTTP/1.1\r\nHost: localhost\r\ntRaNsFeR-EnCoDiNg:\t"
                       coding " \t\r\n\r\n4\r\nwire\r\n0\r\n\r\nEXTRA")
        "wire" [(cons "Transfer-Encoding" coding)]))
     ["chunked" "CHUNKED" "ChUnKeD"]))
  (test-case "fragmented Transfer-Encoding waits then decodes empty body"
    (expect-fragmented-request
     "POST /probe HTTP/1.1\r\nHost: localhost\r\nTransfer-Encoding: chun"
     "ked\r\n\r\n0\r\n\r\n"))
  (test-case "singleton chunked does not mask unsupported HTTP version 505"
    (expect-wire-rejection
     "POST /probe HTTP/7.0\r\nHost: localhost\r\nTransfer-Encoding: chunked\r\n\r\n"
     "505 HTTP Version Not Supported"))
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
