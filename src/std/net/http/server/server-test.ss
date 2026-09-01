;;; -*- Gerbil -*-
;;; HTTP server lifecycle regressions
(import :std/error
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
(export server-test)

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

(defstruct fault-writer (failure) final: #t)
(implement
 (Closer
  (fault-writer
   (close (lambda (self) (raise (fault-writer-failure self))))))
 (Writer
  (fault-writer
   (write (lambda (self bytes start end) (- end start))))))

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

(def response-finalization-test
  (test-suite "HTTP server response finalization"
    (test-case "server-owned peer-loss finalization"
      (response-finalization-scenario))))

(def full-server-test
  (test-suite "HTTP server lifecycle"
    (test-case "server-owned peer-loss finalization"
      (response-finalization-scenario))
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

(def server-test
  (let (selector (getenv "GERBIL_HTTP_SERVER_TEST_ONLY" #f))
    (cond
     ((not selector) full-server-test)
     ((string=? selector "response-finalization") response-finalization-test)
     (else (error "invalid GERBIL_HTTP_SERVER_TEST_ONLY" selector)))))
