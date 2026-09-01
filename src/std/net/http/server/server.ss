;;; -*- Gerbil -*-
;;; © vyzo
;;; http server implementation
(import :std/error
        :std/interface
        :std/log
        :std/iter
        :std/io
        :std/io/bio/buffer
        :std/net/ssl
        :std/net/address
        :std/time/timeout
        :std/os/error
        ../common/ioutil
        ./interface
        ./status
        ./request
        ./handlers/empty)
(export new-http-server)

;; the server system log
(deflogger syslog
  name: "/net/httpd"
  level: INFO)

;; the server implementation
(defstruct http-server
  ((mx        :- :mutex)
   (cv        :- :condvar)
   (tgroup    :- :thread-group)
   (running   :- :boolean)
   (cfg       :- ServerConfig)
   ;; ServerSocket -> thread
   (listeners :- HashTable)
   ;; StreamSocket -> thread
   (handlers  :- HashTable))
  final: #t)

(def (new-http-server (cfg : ServerConfig))
  => Server
  (Server
   (http-server
    (make-mutex 'httpd)
    (make-condition-variable 'httpd)
    (make-thread-group 'httpd)
    #f cfg
    (make-hash-table-eq)
    (make-hash-table-eq))))

(def (server-start! (self : http-server))
  => :void
  (do-with-lock self.mx
    (unless self.running
      (do-server-start! self))))

(def (server-stop! (self : http-server))
  => :void
  (do-with-lock self.mx
    (when self.running
      (do-server-stop! self))))

(def (server-restart! (self : http-server) (cfg : ServerConfig))
  => :void
  (do-with-lock self.mx
    (when self.running
      (do-server-stop! self))
    (set! self.cfg cfg)
    (do-server-start! self)))

(def (do-server-start! (self : http-server))
  => :void
  (def (start-listener! (sock : ServerSocket))
    (with-error (ignore-errors (sock.close))
      (let* ((address (sock.address))
             (thread (spawn-actor (cut server-listener self sock address)
                                  [] 'httpd/listener self.tgroup)))
        (self.listeners.set! sock thread))))

  (def (add-tcp-listener! addr)
    (syslog.info "adding tcp listener" address: addr)
    (start-listener!
     (tcp-listen addr
                 backlog: self.cfg.backlog
                 sockopts: self.cfg.sockopts)))

  (def (add-ssl-listener! addr ssl-ctx)
    (syslog.info "adding ssl listener" address: addr)
    (start-listener!
     (ssl-listen addr ssl-ctx
                 backlog: self.cfg.backlog
                 sockopts: self.cfg.sockopts)))

  (try
   (for (addr self.cfg.listen)
     (try
      (match addr
        ((? InetAddress? inaddr)
         (add-tcp-listener! inaddr))
        ((? string? str)
         (add-tcp-listener! (string->address str)))
        ([ssl: (? InetAddress? inaddr) (? SSL_CTX? ssl-ctx)]
         (add-ssl-listener! inaddr ssl-ctx))
        ([ssl: (? string? str) (? string? cert-path) (? string? key-path)]
         (add-ssl-listener! (string->address str)
                            (make-server-ssl-context cert-path key-path)))
        (else
         (raise-bad-argument server-start! "server address" addr)))
      (catch (e)
        (syslog.error "error starting listener"
                      address: addr
                      exception: (exception->string e)))))
   (when (and (pair? self.cfg.listen)
              (fxzero? (self.listeners.length)))
     (raise-io-error server-start! "all configured listeners failed"
                     addresses: self.cfg.listen))
   (self.cfg.log.start!)
   (set! self.running #t)
   (catch (e)
     (syslog.error "unhandled exception in start"
                     exception: (exception->string e))
     (ignore-errors (do-server-stop! self))
     (raise e))))

(def (do-server-stop! (self : http-server))
  => :void
  (for (sock (in-hash-keys self.listeners) :- ServerSocket)
    (ignore-errors (sock.close)))
  (for (sock (in-hash-keys self.handlers) :- StreamSocket)
    (ignore-errors (sock.close)))
  (let (deadline (seconds->time (+ (##current-time-point) 3)))
    (def (wait-for-change!)
      (let (changed? (mutex-unlock! self.mx self.cv deadline))
        (mutex-lock! self.mx)
        (unless changed?
          (raise-timeout server-stop! "server shutdown deadline exceeded"))))
    (try
     (while (fx> (self.listeners.length) 0)
       (wait-for-change!))
     (while (fx> (self.handlers.length) 0)
       (wait-for-change!))
     (catch (e)
       (for (thread (in-hash-values self.listeners))
         (syslog.warn "terminating thread" thread: thread)
         (thread-terminate! thread))
       (for (thread (in-hash-values self.handlers))
         (syslog.warn "terminating thread" thread: thread)
         (thread-terminate! thread))
       (self.listeners.clear!)
       (self.handlers.clear!))))
  (self.cfg.log.stop!)
  (set! self.running #f))

(def (server-active-connections (self : http-server))
  => :fixnum
  (do-with-lock self.mx :- :fixnum
    (self.handlers.length)))

(def (server-config (self : http-server))
  => ServerConfig
  (do-with-lock self.mx :- ServerConfig
    (##structure-copy self.cfg)))

(def (server-listener (self : http-server)
                      (sock : ServerSocket)
                      (address : Address))
  => :void
  (def (accept)
    (using (cli (sock.accept) : StreamSocket)
      (syslog.debug "incoming connection"
                    client: (cli.peer-address))
      (let (accepted
            (do-with-lock self.mx
              (if (fx< (self.handlers.length) self.cfg.max-connections)
                (let (thread (spawn/name 'httpd/handler (cut server-handler self cli)))
                  (self.handlers.set! cli thread)
                  #t)
                #f)))
        (unless accepted
          (syslog.warn "rejected connection; active request limit reached")
          (ignore-errors (cli.close)))))
      (accept))

  (def (unregister!)
    (do-with-lock self.mx
      (self.listeners.delete! sock)
      (condition-variable-broadcast! self.cv)))

  (syslog.info "listener starting" address: address)
  (let loop ()
    (try
     (accept)
     (catch (OSError? e)
       (cond
        ((fx= (OSError-errno e) EBADF)
         (syslog.info "listener closed" address: address)
         (unregister!))
        (else
         (syslog.warn "error accepting connection"
                      error: (OSError-message e)
                      errno: (OSError-errno e))
         (loop))))
     (catch (Closed? e)
       (syslog.info "listener closed" address: address)
       (unregister!))
     (catch (e)
       (syslog.error "unhandled exception in listener"
                     exception: (exception->string e))
       (unregister!)))))

(def (server-handler (self : http-server) (sock : StreamSocket))
  => :void
  (deflogger-macros self.cfg.log "/net/httpd/request")

  (def (finalize-response! response)
    (try
     (Closer-close response)
     (catch (OSError? e)
       (let (errno (OSError-errno e))
         (unless (or (fx= errno EPIPE)
                     (fx= errno ECONNRESET))
           (raise e))))))

  (using ((reader (open-buffered-reader (sock.reader) self.cfg.request-buffer)
                  :- BufferedReader)
          (writer (open-buffered-writer (sock.writer) self.cfg.response-buffer)
                  :- BufferedWriter))

    (def (handle-next-request!)
      (sock.set-input-timeout! (timeout->deadline self.cfg.request-timeout))
      (let* (((values method target proto)
              (read-request-line! reader (box self.cfg.max-request-line)))
             (headers
              (read-headers! reader (box self.cfg.max-headers)))
             (request
              (new-request method target proto headers
                           sock reader
                           (Logger self.cfg.log)))
             (response
              (rec response
                (new-response-handler
                 (RequestContext sock reader writer)
                 (Request-url request) headers
                 (lambda (url headers)
                   (set! (Request-url request) url)
                   (set! (Request-headers request)
                     (foldr cons
                            (Request-headers request)
                            headers))
                   (using (handler (self.cfg.mux.request-handler request)
                                   : RequestHandler)
                     (handler.handle-request! request response))))))
             (handler
              (case proto
                (("HTTP/1.1" "HTTP/1.0")
                 (self.cfg.mux.request-handler request))
                (else
                 HTTP-Version-Not-Supported-handler))))
        (using ((handler  : RequestHandler)
                (request  : Request)
                (response : ResponseHandler))
          (try
           (self.cfg.log.info method
                              target: target
                              proto: proto)
           (sock.set-output-timeout! (timeout->deadline self.cfg.response-timeout))
           (handler.handle-request! request response)
           (catch (e)
             (self.cfg.log.error "unhandled exception in handler"
                           exception: (call-with-output-string ""
                                        (cut display-exception e <>)))
             (response.write! Internal-Server-Error [] #u8()))
           (finally
            (request.body.close)
            (finalize-response! response))))))

    (try
     (handle-next-request!)
     (catch (e)
       (syslog.error "unhandled exception in handler"
                     exception: (call-with-output-string ""
                                  (cut display-exception e <>))))
     (finally
      (ignore-errors (reader.close))
      (ignore-errors (writer.close))
      (ignore-errors (sock.close))
      (do-with-lock self.mx
        (self.handlers.delete! sock)
        (condition-variable-broadcast! self.cv))))))

(implement Server http-server
  (start!   __server-start!)
  (stop!    __server-stop!)
  (restart! __server-restart!)
  (config   __server-config)
  (active-connections __server-active-connections))
