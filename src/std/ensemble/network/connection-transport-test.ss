;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Fixed connection leases and real established socket ownership
(import :std/build-config)
(cond-expand
  (config-have-sqlite
   (import :std/test
           :std/error
           :std/io
           (only-in :std/io/socket/types basic-socket)
           :std/net/address
           :std/net/ssl
           :std/struct/queue
           :std/sync/rwlock
           :std/sync/threads
           :std/time/time
           :std/time/timeout
           (only-in :std/os/device DIRECTION-IN DIRECTION-OUT)
           (only-in :std/os/sockopt SOL_SOCKET.SO_SNDBUF SOL_SOCKET.SO_RCVBUF)
           (only-in :std/os/socket SHUT_WR)
           ../keystore/interface
           ../keystore/memory
           ../ucan/interface
           ../ucan/context
           ./config
           ./handshake
           ./tls
           ./wire
           ./stream
           ./connection
           ./thread)
   (export connection-transport-test
           call-with-transport-test-sockets
           transport-test-wait!)

   ;; Source-load the real boundaries, as in connection-test's RESET fixture.
   ;; Wrap only the native close and locked notification operations; no public
   ;; Network/Connection facade, alternate socket backend, or compiled mutation.
   (defsyntax (transport-test-fault-module stx)
     (syntax-case stx ()
       ((_ name connection-path stream-path)
        (let ((names '(connection-transport-close! connection-parent-close!
                                                   connection-parent-release! connection-parent-release-owned!
                                                   connection-parent-next! connection-parent-check-live!
                                                   stream-wake-signal!)))
          (def (instrument form)
            (cond
             ((equal? form '(socket.close)) '(test-close socket))
             ((equal? form '(connection-scheduler-next! self.scheduler))
              '(test-select self.scheduler))
             ((equal? form '(connection-work-release! work)) '(test-release work))
             ((and (pair? form) (eq? (car form) 'stream-wake-signal-locked!))
              (cons 'test-wake (cdr form)))
             ((pair? form) (cons (instrument (car form)) (instrument (cdr form))))
             (else form)))
          (def (load-forms path)
            (call-with-input-file (gx#core-resolve-path path (stx-source stx))
              (lambda (port)
                (let loop ((result []))
                  (let (form (read port))
                    (cond
                     ((eof-object? form) (reverse result))
                     ((and (pair? form) (eq? (car form) 'def)
                           (pair? (cadr form)) (memq (caadr form) names))
                      (loop (cons (instrument form) result)))
                     (else (loop result))))))))
          (let (forms (append (load-forms #'connection-path) (load-forms #'stream-path)))
            (unless (= (length forms) (length names))
              (error "Transport test source definitions changed"))
            (datum->syntax #'name
              `(module ,(stx-e #'name)
                 (import :std/error
                         :std/io/interface
                         :std/time/time
                         (except-in :std/ensemble/network/stream
                                    stream-wake-signal!)
                         (except-in :std/ensemble/network/connection
                                    connection-parent-close!
                                    connection-parent-release!
                                    connection-parent-next!))
                 (export connection-parent-close!
                         connection-parent-release!
                         connection-parent-next!
                         connection-parent-release-owned!
                         current-close-hook
                         current-wake-hook
                         current-selection-hook
                         current-release-hook)
                 (def current-close-hook (make-parameter void))
                 (def current-wake-hook (make-parameter void))
                 (def current-selection-hook (make-parameter void))
                 (def current-release-hook (make-parameter void))
                 (def (test-select (scheduler : ConnectionScheduler))
                   => (Maybe ConnectionWork)
                   (let (work (connection-scheduler-next! scheduler))
                     ((current-selection-hook) work)
                     work))
                 (def (test-release (work : ConnectionWork))
                   => :void
                   (connection-work-release! work)
                   ((current-release-hook) work))
                 (def (test-close (socket : StreamSocket))
                   => :void
                   (socket.close)
                   ((current-close-hook)))
                 (def (test-wake (wake     : StreamWake)
                                 (service? : :boolean))
                   => :void
                   (stream-wake-signal-locked! wake service?)
                   ((current-wake-hook)))
                 ,@forms)))))))

   (transport-test-fault-module transport-fault "connection.ss" "stream.ss")
   (import (prefix-in transport-fault fault#))

   ;; A real private establishment driver, not election/publication or a dispatcher.
   (def (transport-test-confirm! (candidate : Handshake))
     => :void
     (unless (and (handshake-identify! candidate)
                  (handshake-authenticate! candidate)
                  (handshake-ready! candidate)
                  (handshake-commit! candidate)
                  (handshake-confirm! candidate))
       (error "Transport fixture handshake rejected"))
     (check candidate.phase => 'confirmed)
     (check candidate.identity-proven? => #t))

   ;; Both principals are implicit roots before opening the capability contexts.
   ;; Unix AUTH proves identity; TCP is upgraded to mutual TLS before make-handshake
   ;; checks certificate identity. Both paths validate UCAN and finish CONFIRM.
   (def (call-with-transport-test-sockets (mode          : :symbol)
                                          (lifetime      : :integer)
                                          (proc          : :procedure)
                                          (setup-timeout : :integer := 2))
     => :void
     (using (store (make-memory-keystore #u8(1 2 3)) :- Keystore)
       (unwind-protect
         (let ((host (store.generate-key!)) (peer-did (store.generate-key!)))
           (using (ctx (open-capability-context ":memory:" store) :- CapabilityContext)
             (unwind-protect
               (call-with-temporary-directory "connection-transport-"
                 (lambda (dir)
                   (let ((listener #f) (socket #f) (peer #f)
                         (server-tls #f) (client-tls #f) (worker #f))
                     (unwind-protect
                       (begin
                         (set! listener
                           (if (eq? mode 'unix)
                             (unix-listen (UnixAddress (path-expand "socket" dir)))
                             (tcp-listen (InetAddress localhost4 0))))
                         (ServerSocket-set-input-timeout! listener (IOTimeout 5))
                         (set! peer
                           (if (eq? mode 'unix)
                             (unix-connect (ServerSocket-address listener) (IOTimeout 5))
                             (tcp-connect (ServerSocket-address listener) (IOTimeout 5))))
                         (set! socket (ServerSocket-accept listener))
                         (when (eq? mode 'tls)
                           (set! server-tls (make-tls-context (ctx.get-principal host)))
                           (set! client-tls (make-tls-context (ctx.get-principal peer-did)))
                           (set! worker
                             (spawn-thread
                              (lambda ()
                                (set! socket (ssl-server-upgrade socket server-tls timeout: (IOTimeout 5))))))
                           (set! peer
                             (ssl-client-upgrade peer context: client-tls host: (did->hostname host)
                                                 timeout: (IOTimeout 5)))
                           (thread-join!/error worker 6))
                         ;; Short but real handshake deadlines make retained absolute
                         ;; IOTimeouts observable independently of the longer lease.
                         (let* ((now (current-time-seconds)) (deadline (+ now setup-timeout))
                                (expire (+ now lifetime)) (config (NetworkConfig handshake-timeout: 1))
                                (incoming (make-handshake socket ctx host peer-did DIRECTION-IN
                                                          now deadline 0 config: config))
                                (outgoing (make-handshake peer ctx peer-did host DIRECTION-OUT
                                                          now deadline expire config: config)))
                           (set! worker (spawn-thread (cut transport-test-confirm! incoming)))
                           (transport-test-confirm! outgoing)
                           (thread-join!/error worker (seconds->time deadline))
                           (check (Handshake-expire incoming) => expire)
                           (check (Handshake-expire outgoing) => expire)
                           (StreamSocket-set-input-timeout! peer (IOTimeout 5))
                           (StreamSocket-set-output-timeout! peer (IOTimeout 5))
                           ;; No handshake IO/driver remains, and neither candidate
                           ;; retains a cleanup obligation after this test handoff.
                           (proc socket peer (Handshake-expire incoming) deadline)))
                       (begin
                         (when peer (ignore-errors (Closer-close peer)))
                         (when socket (ignore-errors (Closer-close socket)))
                         (when listener (ignore-errors (Closer-close listener)))
                         (when worker
                           (check (with-catch identity (cut thread-join!/error worker 6 'stuck))
                                  ? (lambda (result) (not (eq? result 'stuck)))))
                         ;; Also reach a TLS view published after raw setup cleanup.
                         (when socket (ignore-errors (Closer-close socket)))
                         (when client-tls (foreign-release! client-tls))
                         (when server-tls (foreign-release! server-tls)))))))
               (ctx.close))))
         (store.close)))
     (void))

   ;; Every scenario runs against both transports. Assertions precede this emergency
   ;; native cleanup; close before joining and never release a still-running borrow.
   (defrules with-transport ()
     ((_ (mode p socket peer expire deadline lifetime) start body ...)
      (with-transport (mode p socket peer expire deadline lifetime (ConnectionLimits)) start body ...))
     ((_ (mode p socket peer expire deadline lifetime limits) start body ...)
      (with-transport (mode p socket peer expire deadline lifetime limits 2) start body ...))
     ((_ (mode p socket peer expire deadline lifetime limits setup-timeout) start body ...)
      (for-each
        (lambda (mode)
          (call-with-transport-test-sockets mode lifetime
                                            (lambda (socket peer expire deadline)
                                              (let ((p (make-connection-parent limits 4 #xffffffff)) (workers []))
                                                (def (start (proc : :procedure))
                                                  => :thread
                                                  (let (worker (spawn-thread proc))
                                                    (set! workers (cons worker workers))
                                                    worker))
                                                (unwind-protect
                                                  (begin body ...)
                                                  (begin
                                                    (connection-parent-close! p)
                                                    (Closer-close socket)
                                                    (for-each
                                                      (lambda (worker)
                                                        (when (eq? (with-catch identity (cut thread-join!/error worker 5 'stuck)) 'stuck)
                                                          (error "Transport consumer did not stop" worker)))
                                                      workers)
                                                    (check (with-catch identity (cut connection-parent-join! p 5 'stuck))
                                                           ? (lambda (result) (not (eq? result 'stuck))))
                                                    (let (work (ConnectionScheduler-in-flight (ConnectionParent-scheduler p)))
                                                      (when work (connection-parent-release! p work)))))))
                                            setup-timeout))
        '(unix tls))))

   ;; #f means an IO wait in a worker whose only blocking operation is socket IO.
   ;; Other gates compare the exact mutex/CV. Never reach into a raw device or fd.
   (def (transport-test-wait! (worker   : :thread)
                              (wait-for : :t := #f)
                              (ready?   : :procedure := (lambda () #t)))
     => :void
     (let (deadline (+ (##current-time-point) 3))
       (let loop ()
         (let (state (thread-state worker))
           (unless (and (thread-state-waiting? state)
                        (or (not wait-for)
                            (eq? (thread-state-waiting-for state) wait-for))
                        (ready?))
             (when (>= (##current-time-point) deadline)
               (error "Transport worker did not reach expected wait" worker wait-for state))
             (network-thread-join! worker .001 'waiting)
             (loop))))))

   (def (transport-test-idle! (p : ConnectionParent))
     => :void
     (using (wake (ConnectionParent-wake p) :- StreamWake)
       (transport-test-wait! (ConnectionParent-worker p) wake.service-cv
                             (lambda () (with-stream-io-lock wake.mx (not wake.service?))))))

   (def (transport-test-io (expire : :integer))
     => StreamIO
     (make-stream-io (StreamLimits recv-window: 8 outbound-buffer: 8) 8 expire))

   (def connection-transport-test
     (test-suite "Private established connection transport lifetime"
        (test-case "close and wake failures propagate after one attempt without replaying outer close"
         (for-each
          (lambda (release?)
            (for-each
             (lambda (wake?)
               (for-each
                (lambda (kind)
                   (with-transport (mode p socket peer expire deadline 5) start
                    (connection-parent-attach! p socket expire)
                    (let* ((io (transport-test-io expire))
                           (failure (case kind
                                      ((error) (Error "Close operation failure"))
                                      ((closed) (Closed "Close operation failure"))
                                      ((timeout) (Timeout "Close operation failure"))
                                      (else #f)))
                           (closes 0) (wakes 0) (work #f))
                      (connection-parent-register! p 1 io)
                      (when release?
                        (Writer-write (StreamIO-writer io) #u8(1 2 3 4))
                         (set! work (thread-join!/error (start (cut connection-parent-next! p)) 3)))
                      (transport-test-idle! p)
                      ;; Closed admission, but cleanup still belongs to release.
                      (when release?
                        (with-stream-io-lock (ConnectionParent-mx p)
                          (ConnectionParent-closed?-set! p #t)
                          (ConnectionScheduler-closed?-set! (ConnectionParent-scheduler p) #t)))
                      (parameterize
                          ((fault#current-close-hook
                            (lambda ()
                              (set! closes (+ closes 1))
                               (unless wake? (raise failure))))
                           (fault#current-wake-hook
                            (lambda ()
                              (set! wakes (+ wakes 1))
                               (when wake? (raise failure)))))
                        (check-eq?
                         (with-catch identity
                                     (lambda ()
                                       (if release?
                                           (fault#connection-parent-release! p work)
                                           (fault#connection-parent-close! p))))
                          failure))
                       (check closes => 1)
                      ;; Release adds its own notification, not a replay of close.
                       (check wakes => (if release? 2 1))
                      (check (StreamState-aborted? (StreamIO-state io)) => #t)
                      (when release?
                        (check (ConnectionWork-state work) => 'released)
                        (check (StreamState-in-flight (StreamIO-state io)) => 0)
                        (check (ConnectionScheduler-in-flight (ConnectionParent-scheduler p)) => #f)))))
                 '(error closed timeout false)))
             '(#f #t)))
          '(#f #t)))

       (test-case "failed next closes once and releases only its own untransferred work"
         (for-each
          (lambda (selection)
            (for-each
             (lambda (kind)
                (with-transport (mode p socket peer expire deadline 5) start
                 (connection-parent-attach! p socket expire)
                 (let* ((io (transport-test-io expire))
                        (failure (case kind
                                    ((error wake-error release-error) (Error "Next cleanup failure"))
                                   ((closed) (Closed "Next close failure"))
                                   ((timeout) (Timeout "Next close failure"))
                                   (else #f)))
                        (closes 0) (wakes 0) (releases 0) (work #f) (bytes #f))
                   (connection-parent-register! p 1 io)
                   (Writer-write (StreamIO-writer io) #u8(1 2 3 4))
                   (when (eq? selection 'borrowed)
                     (set! work (thread-join!/error (start (cut connection-parent-next! p)) 3)))
                   (transport-test-idle! p)
                   (when (eq? selection 'encoding)
                     ;; Retain quantum 4; reject its header only AFTER DATA commitment.
                     (with-stream-io-lock (ConnectionParent-mx p)
                       (ConnectionLimits-data-payload-set!
                        (ConnectionScheduler-limits (ConnectionParent-scheduler p)) 1)))
                   (parameterize
                       ((fault#current-selection-hook
                         (lambda (_)
                           ;; Controlled lease observation after selection, while mx
                           ;; is owned. Service cannot observe this before next does.
                           (ConnectionParent-expire-set! p 0)))
                        (fault#current-close-hook
                         (lambda ()
                           (set! closes (+ closes 1))
                           (unless work
                             (set! work (ConnectionScheduler-in-flight (ConnectionParent-scheduler p))))
                           (set! bytes (ConnectionWork-bytes work))
                           (check (ConnectionWork-state work) => 'in-flight)
                           (check (StreamState-in-flight (StreamIO-state io)) => 4)
                            (unless (memq kind '(none wake-error release-error)) (raise failure))))
                        (fault#current-wake-hook
                         (lambda ()
                           (set! wakes (+ wakes 1))
                            ;; Native close has succeeded. A later wake failure must
                           ;; not cause next's finally to close a second time.
                            (when (eq? kind 'wake-error) (raise failure))))
                        (fault#current-release-hook
                         (lambda (_)
                           (set! releases (+ releases 1))
                           (when (eq? kind 'release-error) (raise failure)))))
                     (let (result (with-catch identity
                                              (lambda ()
                                                (thread-join!/error (start (cut fault#connection-parent-next! p)) 3))))
                       (check-eq? result (if (eq? kind 'none) (ConnectionParent-error p) failure))))
                   (check closes => 1)
                    (check wakes => (if (eq? selection 'borrowed) 1 2))
                   (check releases => (if (eq? selection 'borrowed) 0 1))
                   (check (ConnectionParent-error p) ? (if (eq? selection 'encoding) IOError? Closed?))
                   (check (StreamState-aborted? (StreamIO-state io)) => #t)
                   (when (eq? selection 'borrowed)
                     (check (ConnectionWork-state work) => 'in-flight)
                     (check-eq? (ConnectionWork-bytes work) bytes)
                     (check (subu8vector bytes 0 4) => #u8(1 2 3 4))
                     (connection-parent-release! p work))
                   (check (ConnectionWork-state work) => 'released)
                   (check (ConnectionWork-bytes work) => #u8())
                   (check (StreamState-in-flight (StreamIO-state io)) => 0)
                   (check (StreamBuffer-bytes (StreamState-send (StreamIO-state io))) => #u8())
                   (check (ConnectionScheduler-in-flight (ConnectionParent-scheduler p)) => #f)
                   (check (ConnectionScheduler-control-frames (ConnectionParent-scheduler p)) => 0)
                   (check (ConnectionScheduler-control-bytes (ConnectionParent-scheduler p)) => 0))))
             (if (eq? selection 'borrowed)
                  '(none error closed timeout false wake-error)
                  '(none error closed timeout false wake-error release-error))))
          '(encoding lease borrowed)))

       (test-case "post-close release waits for ownership without repeating close"
         (with-transport (mode p socket peer expire deadline 5) start
           (connection-parent-attach! p socket expire)
           (let* ((io (transport-test-io expire)) (owner (current-thread))
                  (worker #f)
                  (closes 0) (releases 0))
             (connection-parent-register! p 1 io)
             (Writer-write (StreamIO-writer io) #u8(1 2 3 4))
             (let (work (thread-join!/error (start (cut connection-parent-next! p)) 3))
               (parameterize ((fault#current-close-hook (lambda () (set! closes (+ closes 1)))))
                 (fault#connection-parent-close! p))
               (with-stream-io-lock (ConnectionParent-mx p)
                 (set! worker
                   (start (lambda ()
                            (parameterize
                                ((fault#current-close-hook (lambda () (set! closes (+ closes 1))))
                                 (fault#current-release-hook (lambda (_) (set! releases (+ releases 1)))))
                              (fault#connection-parent-release-owned! p work)))))
                 (transport-test-wait! worker (ConnectionParent-mx p))
                 (check-eq? (mutex-state (ConnectionParent-mx p)) owner)
                 (check (ConnectionWork-state work) => 'in-flight))
               (check (thread-join!/error worker 3) => (void))
               (check closes => 1)
               (check releases => 1)
               (check (ConnectionWork-state work) => 'released)
               (check (StreamState-in-flight (StreamIO-state io)) => 0)
               (check (ConnectionScheduler-in-flight (ConnectionParent-scheduler p)) => #f)))))

       (test-case "zero-stream lease closes the socket without IO or next-work driving it"
          (with-transport (mode p socket peer expire deadline 2) start
           (connection-parent-attach! p socket expire)
           (check (with-catch identity
                              (cut connection-parent-join! p (seconds->time (+ expire 3)))) ? Closed?)
           (check-exception (Reader-read (StreamSocket-reader socket) (make-u8vector 1)) Closed?)
           (with-stream-io-lock (ConnectionParent-mx p)
             (check (ConnectionParent-closed? p) => #t)
             (check (ConnectionParent-expire p) => expire)
             (check-eq? (ConnectionParent-socket p) socket)
             (check (Queue-length (ConnectionScheduler-streams (ConnectionParent-scheduler p))) => 0))
           (check-eq? (with-catch identity (cut connection-parent-next! p)) (ConnectionParent-error p))))

       (test-case "silent minimum header read wakes on external close and on fixed expiry"
         (for-each
           (lambda (lease?)
              (with-transport (mode p socket peer expire deadline (if lease? 4 5)) start
               (connection-parent-attach! p socket expire)
               (let ((reading (start (cut Reader-read (StreamSocket-reader socket)
                                          (make-u8vector frame-header-size) 0 frame-header-size frame-header-size)))
                     (waiting (start (cut connection-parent-next! p))))
                 (transport-test-wait! reading)
                 (transport-test-wait! waiting (StreamWake-output-cv (ConnectionParent-wake p)))
                 (if lease?
                   (begin
                     (thread-sleep! (seconds->time deadline))
                     ;; Attachment removed the old absolute handshake read timeout.
                     (check (thread-join!/error reading .02 'waiting) => 'waiting))
                   (connection-parent-close! p #f))
                 (check (with-catch identity
                                    (cut thread-join!/error reading (seconds->time (+ (if lease? expire (current-time-seconds)) 3))))
                        ? Closed?)
                 (let (failure (with-stream-io-lock (ConnectionParent-mx p) (ConnectionParent-error p)))
                   (check-eq? (with-catch identity (cut thread-join!/error waiting 3)) failure)
                   (connection-parent-close! p (Error "Later failure"))
                   (check-eq? (ConnectionParent-error p) failure)))))
           '(#f #t)))

       (test-case "backpressured actual Writer.write wakes on close, not the old handshake timeout"
         (for-each
           (lambda (lease?)
              (with-transport (mode p socket peer expire deadline (if lease? 4 5)) start
               (StreamSocket-setsockopt socket SOL_SOCKET.SO_SNDBUF 4096)
               (StreamSocket-setsockopt peer SOL_SOCKET.SO_RCVBUF 4096)
               (connection-parent-attach! p socket expire)
               (let (writing
                     (start
                      (lambda ()
                        (let ((writer (StreamSocket-writer socket)) (bytes (make-u8vector 65536 42)))
                          ;; Finite fill bound; the peer never reads application DATA.
                          (let loop ((left 1024))
                            (when (zero? left) (error "Socket did not backpressure"))
                            (Writer-write writer bytes)
                            (loop (1- left)))))))
                 (transport-test-wait! writing)
                 (if lease?
                   (begin
                     (thread-sleep! (seconds->time deadline))
                     (check (thread-join!/error writing .02 'waiting) => 'waiting))
                   (connection-parent-close! p))
                 (check (with-catch identity
                                    (cut thread-join!/error writing (seconds->time (+ (if lease? expire (current-time-seconds)) 3))))
                        ? Closed?))))
           '(#f #t)))

       (test-case "malformed, expired, closed-parent and failed-setup attachment consumes the supplied socket"
         (for-each
           (lambda (bad)
              (with-transport (mode p socket peer expire deadline 5) start
               (cond
                ((eq? bad 'parent) (connection-parent-close! p))
                ((eq? bad 'setup) (Closer-close socket)))
               (check-exception
                (connection-parent-attach! p socket
                                           (cond ((eq? bad 'expired) (current-time-seconds))
                                                 ((memq bad '(parent setup)) expire)
                                                 (else bad)))
                IOError?)
               (check-exception (Reader-read (StreamSocket-reader socket) (make-u8vector 1)) Closed?)
               (with-stream-io-lock (ConnectionParent-mx p)
                 (check (ConnectionParent-socket p) => #f)
                 (check (ConnectionParent-expire p) => #f)
                 (check (ConnectionParent-closed? p) => (eq? bad 'parent)))))
           [#f 'malformed -1 0 1/2 1.0 #x10000000000000000 'expired 'parent 'setup]))

       (test-case "rejected second attachment never replaces or closes an existing live socket"
         (for-each
           (lambda (kind)
              (with-transport (mode p socket peer expire deadline 5) start
               (connection-parent-attach! p socket expire)
               (when (eq? kind 'closed) (connection-parent-close! p #f))
                (call-with-transport-test-sockets mode 5
                 (lambda (other other-peer other-expire other-deadline)
                   (check-exception
                    (connection-parent-attach! p other
                                               (case kind
                                                 ((malformed) #f)
                                                 ((expired) (current-time-seconds))
                                                 (else other-expire)))
                    (lambda (e) (if (eq? kind 'closed) (not e) (IOError? e))))
                   (check-exception (Reader-read (StreamSocket-reader other) (make-u8vector 1)) Closed?)
                   (unless (eq? kind 'closed)
                     (check (Writer-write (StreamSocket-writer peer) #u8(42)) => 1)
                     (let (bytes (make-u8vector 1))
                       (check (Reader-read (StreamSocket-reader socket) bytes 0 1 1) => 1)
                       (check bytes => #u8(42))))
                   (with-stream-io-lock (ConnectionParent-mx p)
                     (check-eq? (ConnectionParent-socket p) socket)
                     (check (ConnectionParent-expire p) => expire)
                     (check (ConnectionParent-error p) => #f)
                     (check (ConnectionParent-closed? p) => (eq? kind 'closed)))))))
           '(duplicate malformed expired closed)))

       (test-case "bounded repeated attachment versus close races retain exactly one lifetime"
         ;; This tests attachment ordering, not short handshake expiry. Preserve
         ;; finite setup and an authenticated lease with room for the queued race.
         (for-each
           (lambda (iteration)
             (with-transport (mode p socket peer expire deadline 12 (ConnectionLimits) 5) start
                             (let ((attaching #f) (closing #f) (mx (ConnectionParent-mx p)))
                               (def (attach) (connection-parent-attach! p socket expire) 'attached)
                               (with-stream-io-lock mx
                                 ;; Alternate which operation queues first; both must cross mx.
                                 (if (even? iteration)
                                   (begin (set! attaching (start attach)) (transport-test-wait! attaching mx)
                                          (set! closing (start (cut connection-parent-close! p))))
                                   (begin (set! closing (start (cut connection-parent-close! p))) (transport-test-wait! closing mx)
                                          (set! attaching (start attach))))
                                 (transport-test-wait! attaching mx)
                                 (transport-test-wait! closing mx))
                               (check (with-catch identity (cut thread-join!/error attaching 3))
                                      ? (lambda (result) (or (eq? result 'attached) (Closed? result))))
                               (check (thread-join!/error closing 3) => (void))
                               (check-exception (Reader-read (StreamSocket-reader socket) (make-u8vector 1)) Closed?)
                               (with-stream-io-lock mx
                                 (check (ConnectionParent-closed? p) => #t)
                                 (check (ConnectionParent-expire p) ? (lambda (value) (or (not value) (= value expire)))))
                               (connection-parent-close! p))))
           (iota 12)))

       (test-case "lease aborts active siblings but keeps borrowed DATA valid until consumer release"
          (with-transport (mode p socket peer expire deadline 2) start
           (connection-parent-attach! p socket expire)
            (let ((io (transport-test-io (+ expire 5))) (other (transport-test-io (+ expire 5))))
             (connection-parent-register! p 1 io)
             (connection-parent-register! p 3 other)
             (Writer-write (StreamIO-writer io) #u8(1 2 3 4))
             (let* ((work (thread-join!/error (start (cut connection-parent-next! p)) 3))
                    (bytes (ConnectionWork-bytes work))
                    (reading (start (cut Reader-read (StreamIO-reader other) (make-u8vector 1)))))
               (transport-test-wait! reading (StreamIO-input-cv other))
               (check (with-catch identity (cut connection-parent-join! p (seconds->time (+ expire 3)))) ? Closed?)
               (check (with-catch identity (cut thread-join!/error reading 3)) ? Closed?)
               (check-exception (Reader-read (StreamSocket-reader socket) (make-u8vector 1)) Closed?)
               (check (StreamState-aborted? (StreamIO-state io)) => #t)
               (check (StreamState-aborted? (StreamIO-state other)) => #t)
               (check (ConnectionWork-state work) => 'in-flight)
               (check-eq? (StreamBuffer-bytes (StreamState-send (StreamIO-state io))) bytes)
               (check (subu8vector bytes (ConnectionWork-start work) (ConnectionWork-end work)) => #u8(1 2 3 4))
               (check (StreamState-in-flight (StreamIO-state io)) => 4)
               (connection-parent-release! p work)
               (check (ConnectionWork-state work) => 'released)
               (check (StreamBuffer-bytes (StreamState-send (StreamIO-state io))) => #u8())))))

       (test-case "all-retirable registry entries do not remove the connection timer"
          (with-transport (mode p socket peer expire deadline 2) start
           (connection-parent-attach! p socket expire)
            (let (io (transport-test-io (+ expire 5)))
             (connection-parent-register! p 1 io)
             (connection-parent-reset! p 1 reason-closed #f)
             (check (stream-io-retirable? io) => #t)
             ;; Leave the terminal entry registered, with no active stream deadline.
             (check (with-catch identity (cut connection-parent-join! p (seconds->time (+ expire 3)))) ? Closed?)
             (check-exception (Reader-read (StreamSocket-reader socket) (make-u8vector 1)) Closed?))))

       (test-case "registration and selection recheck the lease after waiting for stream locks"
         (for-each
           (lambda (register?)
              (with-transport (mode p socket peer expire deadline 2) start
               (connection-parent-attach! p socket expire)
                (let ((io (transport-test-io (+ expire 5))) (worker #f))
                 (unless register?
                   (connection-parent-register! p 1 io)
                   (Writer-write (StreamIO-writer io) #u8(1 2 3 4)))
                 (transport-test-idle! p)
                 (with-stream-io-lock (StreamIO-output-mx io)
                   (set! worker (start (if register? (cut connection-parent-register! p 1 io)
                                           (cut connection-parent-next! p))))
                   (transport-test-wait! worker (StreamIO-output-mx io))
                   (thread-sleep! (seconds->time expire)))
                 (check (with-catch identity (cut thread-join!/error worker 3)) ? Closed?)
                 (check-exception (Reader-read (StreamSocket-reader socket) (make-u8vector 1)) Closed?)
                 (check (ConnectionScheduler-in-flight (ConnectionParent-scheduler p)) => #f)
                 (if register?
                   (begin
                     (check (StreamIO-wake io) => #f)
                     (check (StreamState-aborted? (StreamIO-state io)) => #f)
                     (stream-io-abort! io))
                   (begin
                     (check (StreamState-aborted? (StreamIO-state io)) => #t)
                     (check (StreamBuffer-bytes (StreamState-send (StreamIO-state io))) => #u8()))))))
           '(#f #t)))

       (test-case "FIN release rechecks the lease after parent and actual output-lock waits"
         (for-each
           (lambda (output?)
              (with-transport (mode p socket peer expire deadline 2) start
               (connection-parent-attach! p socket expire)
                (let* ((io (transport-test-io (+ expire 5))) (other (transport-test-io (+ expire 5)))
                      (held (if output? (StreamIO-output-mx io) (ConnectionParent-mx p)))
                      (releasing #f))
                 (connection-parent-register! p 1 io)
                 (connection-parent-register! p 3 other)
                 (let* ((closing (start (cut Writer-close (StreamIO-writer io))))
                        (work (thread-join!/error (start (cut connection-parent-next! p)) 3)))
                   (check (ConnectionWork-type work) => frame-fin)
                   (transport-test-idle! p)
                   (with-stream-io-lock held
                     (set! releasing (start (cut connection-parent-release! p work)))
                     (transport-test-wait! releasing held)
                     (when output? (check-eq? (mutex-state (ConnectionParent-mx p)) releasing))
                     (thread-sleep! (seconds->time expire))
                     (check (ConnectionWork-state work) => 'in-flight)
                     (check (StreamState-output-state (StreamIO-state io)) => 'fin-in-flight))
                   ;; Output-lock mode excludes the timer until the source gate runs.
                   (check (with-catch identity (cut thread-join!/error releasing 3))
                          ? (lambda (result) (if output? (Closed? result)
                                                 (or (void? result) (Closed? result)))))
                   (check (with-catch identity (cut thread-join!/error closing 3)) ? Closed?)
                    (check (StreamIO-expire io) => (+ expire 5))
                   (check (StreamState-aborted? (StreamIO-state other)) => #t)
                   (check (ConnectionWork-state work) => 'released)
                   (check (stream-io-retirable? io) => #t)
                   (check (ConnectionScheduler-control-frames (ConnectionParent-scheduler p)) => 0)
                   (check (ConnectionScheduler-control-bytes (ConnectionParent-scheduler p)) => 0)
                   (check-exception (Reader-read (StreamSocket-reader socket) (make-u8vector 1)) Closed?)))))
           '(#f #t)))

       (test-case "mandatory credit overflow closes the socket before blocked sibling abort"
          (with-transport (mode p socket peer expire deadline 5 (ConnectionLimits pending-control-bytes: 16)) start
           (connection-parent-attach! p socket expire)
           (let* ((io (transport-test-io expire)) (other (transport-test-io expire))
                  (held (StreamIO-input-mx other))
                  (reading (start (cut Reader-read (StreamSocket-reader socket) (make-u8vector 1)))))
             (connection-parent-register! p 1 io)
             (connection-parent-register! p 3 other)
             (transport-test-idle! p)
             (transport-test-wait! reading)
             (stream-io-receive! io #u8(42))
             (with-stream-io-lock held
               ;; WINDOW-UPDATE costs 17 bytes; service must fail at the first entry,
               ;; not reach the later stream lock before closing the real socket.
               (check (Reader-read (StreamIO-reader io) (make-u8vector 1)) => 1)
               (transport-test-wait! (ConnectionParent-worker p) held)
               (check (with-catch identity (cut thread-join!/error reading 2)) ? Closed?))
             (let (failure (with-catch identity (cut connection-parent-join! p 3)))
               (check failure ? Closed?)
               (check-eq? (ConnectionParent-error p) failure))
             (check (StreamState-aborted? (StreamIO-state io)) => #t)
             (check (StreamState-aborted? (StreamIO-state other)) => #t)
             (check (ConnectionScheduler-control-frames (ConnectionParent-scheduler p)) => 0)
             (check (ConnectionScheduler-control-bytes (ConnectionParent-scheduler p)) => 0))))

       (test-case "queued next preserves the service overflow failure before its catch closes"
          (with-transport (mode p socket peer expire deadline 5 (ConnectionLimits pending-control-bytes: 16)) start
           (connection-parent-attach! p socket expire)
           (let* ((io (transport-test-io expire)) (held (StreamIO-output-mx io))
                  (mx (ConnectionParent-mx p)) (waiting #f))
             (connection-parent-register! p 1 io)
             (stream-io-receive! io #u8(42))
             (transport-test-idle! p)
             (with-stream-io-lock held
               (with-stream-io-lock mx
                 (check (Reader-read (StreamIO-reader io) (make-u8vector 1)) => 1)
                 (transport-test-wait! (ConnectionParent-worker p) mx))
               ;; Service owns mx but cannot finish status/readiness until unlock.
               ;; Queue next ahead of service's eventual out-of-lock close catch.
               (transport-test-wait! (ConnectionParent-worker p) held)
               (check-eq? (mutex-state mx) (ConnectionParent-worker p))
               (set! waiting (start (cut connection-parent-next! p)))
               (transport-test-wait! waiting mx))
             (let (failure (with-catch identity (cut connection-parent-join! p 3)))
               (check failure ? Closed?)
               (check-eq? (with-catch identity (cut thread-join!/error waiting 3)) failure)
               (check-eq? (ConnectionParent-error p) failure)
               (check-eq? (with-catch identity (cut connection-parent-next! p)) failure)
               (connection-parent-close! p (Error "Later explicit close"))
               (check-eq? (ConnectionParent-error p) failure))
             (check-exception (Reader-read (StreamSocket-reader socket) (make-u8vector 1)) Closed?)
             (check (stream-io-retirable? io) => #t))))

       (test-case "expiry release retains DATA and FIN ownership through blocked close cleanup"
         (for-each
           (lambda (fin?)
             (with-transport (mode p socket peer expire deadline 2) start
               (connection-parent-attach! p socket expire)
               (let* ((io (transport-test-io (+ expire 5))) (other (transport-test-io (+ expire 5)))
                      (held (StreamIO-input-mx other)) (wake (ConnectionParent-wake p))
                      (owner (current-thread))
                      (releasing #f) (first #f))
                 (connection-parent-register! p 1 io)
                 (connection-parent-register! p 3 other)
                 (unless fin? (Writer-write (StreamIO-writer io) #u8(1 2 3 4)))
                 (let* ((closing (start (cut Writer-close (StreamIO-writer io))))
                        (work (thread-join!/error (start (cut connection-parent-next! p)) 3))
                        (header (ConnectionWork-header work)) (bytes (ConnectionWork-bytes work)))
                   (check (ConnectionWork-type work) => (if fin? frame-fin frame-data))
                   (transport-test-wait! closing (StreamIO-output-cv io))
                   (transport-test-idle! p)
                   (with-stream-io-lock held
                     ;; Park service at its wake reacquisition so release itself must
                     ;; observe expiry and enter close, rather than following service.
                     (with-stream-io-lock (StreamWake-mx wake)
                       (with-stream-io-lock (StreamIO-output-mx io)
                         (set! releasing (start (cut connection-parent-release! p work)))
                         (transport-test-wait! releasing (StreamIO-output-mx io))
                         (check-eq? (mutex-state (ConnectionParent-mx p)) releasing)
                         (thread-sleep! (seconds->time expire)))
                       (transport-test-wait! releasing (StreamWake-mx wake)))
                     (transport-test-wait! releasing held)
                     (set! first (ConnectionParent-error p))
                     (check-exception (Reader-read (StreamSocket-reader socket) (make-u8vector 1)) Closed?)
                     (check-eq? (mutex-state held) owner)
                     (check (ConnectionWork-state work) => 'in-flight)
                     (check-eq? (ConnectionWork-header work) header)
                     (check-eq? (ConnectionWork-bytes work) bytes)
                     (check (ConnectionScheduler-control-frames (ConnectionParent-scheduler p)) => (if fin? 1 0))
                     (check (ConnectionScheduler-control-bytes (ConnectionParent-scheduler p)) => (if fin? frame-header-size 0))
                     (unless fin?
                       (check (StreamState-in-flight (StreamIO-state io)) => 4)
                       (check-eq? (StreamBuffer-bytes (StreamState-send (StreamIO-state io))) bytes)))
                   (check-eq? (with-catch identity (cut thread-join!/error releasing 3)) first)
                   (check (with-catch identity (cut thread-join!/error closing 3)) ? Closed?)
                   (check (ConnectionParent-error p) ? Closed?)
                   (check-eq? (ConnectionParent-error p) first)
                   (check (StreamIO-expire io) => (+ expire 5))
                   (check (ConnectionWork-state work) => 'released)
                   (check (ConnectionScheduler-in-flight (ConnectionParent-scheduler p)) => #f)
                   (check (ConnectionScheduler-control-frames (ConnectionParent-scheduler p)) => 0)
                   (check (ConnectionScheduler-control-bytes (ConnectionParent-scheduler p)) => 0)
                   (check (StreamState-in-flight (StreamIO-state io)) => 0)
                   (check (StreamBuffer-bytes (StreamState-send (StreamIO-state io))) => #u8())
                   (check (stream-io-retirable? io) => #t)
                   ;; Idempotent scheduler release must not subtract a second budget.
                   (connection-parent-release! p work)
                   (check (ConnectionScheduler-control-bytes (ConnectionParent-scheduler p)) => 0)))))
           '(#f #t)))

       (test-case "post-commit selection failure retains provisional DATA and promotes managed controls"
         (for-each
           (lambda (kind)
              (with-transport (mode p socket peer expire deadline 5) start
               (connection-parent-attach! p socket expire)
               (let* ((io (transport-test-io expire)) (other (transport-test-io expire))
                      (held (StreamIO-input-mx other)) (selecting #f) (work #f)
                      (reading (start (cut Reader-read (StreamSocket-reader socket) (make-u8vector 1)))))
                 (connection-parent-register! p 1 io)
                 (connection-parent-register! p 3 other)
                 (case kind
                   ((data) (Writer-write (StreamIO-writer io) #u8(1 2 3 4)))
                   ((credit)
                    (stream-io-receive! io #u8(42))
                    (Reader-read (StreamIO-reader io) (make-u8vector 1))))
                 (let (closing (and (eq? kind 'fin) (start (cut Writer-close (StreamIO-writer io)))))
                   (when closing (transport-test-wait! closing (StreamIO-output-cv io)))
                   (transport-test-idle! p)
                   (transport-test-wait! reading)
                   (with-stream-io-lock (ConnectionParent-mx p)
                     ;; Same controlled header faults as the raw scheduler suite,
                     ;; not supported reconfiguration or an allocator/OOM simulation.
                     (if (eq? kind 'data)
                       (ConnectionLimits-data-payload-set! (ConnectionScheduler-limits (ConnectionParent-scheduler p)) 1)
                       (begin
                         (set! work (queue-peek (ConnectionScheduler-controls (ConnectionParent-scheduler p))))
                         (ConnectionWork-id-set! work 0))))
                   (with-stream-io-lock held
                     (set! selecting (start (cut connection-parent-next! p)))
                     (transport-test-wait! selecting held)
                     (check (with-catch identity (cut thread-join!/error reading 2)) ? Closed?)
                     (if work
                       (check-eq? (ConnectionScheduler-in-flight (ConnectionParent-scheduler p)) work)
                       (set! work (ConnectionScheduler-in-flight (ConnectionParent-scheduler p))))
                     (check (ConnectionWork-state work) => 'in-flight)
                     (check-eq? (ConnectionWork-stream work) io)
                     (check (Queue-length (ConnectionScheduler-controls (ConnectionParent-scheduler p))) => 0)
                     (check (ConnectionScheduler-control-frames (ConnectionParent-scheduler p)) => (if (eq? kind 'data) 0 1))
                     (check (ConnectionScheduler-control-bytes (ConnectionParent-scheduler p))
                            => (case kind ((data) 0) ((fin) 13) (else 17)))
                     (case kind
                       ((data)
                        (check (StreamState-in-flight (StreamIO-state io)) => 4)
                        (check-eq? (ConnectionWork-bytes work) (StreamBuffer-bytes (StreamState-send (StreamIO-state io)))))
                       ((fin) (check (StreamState-output-state (StreamIO-state io)) => 'fin-in-flight))))
                   (let (failure (with-catch identity (cut thread-join!/error selecting 3)))
                     (check failure ? IOError?)
                     (check-eq? (ConnectionParent-error p) failure))
                   (when closing (check (with-catch identity (cut thread-join!/error closing 3)) ? Closed?))
                   (check (ConnectionWork-state work) => 'released)
                   (check (ConnectionScheduler-in-flight (ConnectionParent-scheduler p)) => #f)
                   (check (ConnectionScheduler-control-frames (ConnectionParent-scheduler p)) => 0)
                   (check (ConnectionScheduler-control-bytes (ConnectionParent-scheduler p)) => 0)
                   (check (stream-io-retirable? io) => #t)
                   (check (StreamBuffer-bytes (StreamState-send (StreamIO-state io))) => #u8())))))
           '(data fin credit)))

       (test-case "native socket RWLock acquisition waits for its reader before parent close"
         (with-transport (mode p socket peer expire deadline 5) start
           (connection-parent-attach! p socket expire)
           (using ((native (&interface-instance-object socket) : basic-socket)
                   (lock native.lock :- RWLock))
             (let ((first (Error "Native close owner failure"))
                   (closing #f)
                   (reading (start (cut Reader-read (StreamSocket-reader socket) (make-u8vector 1)))))
               (transport-test-wait! reading)
               ;; Test-only concrete metadata gate; production still closes through
               ;; StreamSocket. No raw fd, device operations or alternate closer.
               (with-read-lock lock
                               (lambda ()
                                 (set! closing (start (cut connection-parent-close! p first)))
                                 (transport-test-wait! closing lock.wcv)
                                 (with-stream-io-lock lock.mx
                                   (check lock.readers => 1)
                                   (check lock.writer => #f)
                                   (check lock.writers-waiting => 1))
                                 (check (thread-join!/error reading .02 'waiting) => 'waiting)))
               (check (thread-join!/error closing 3) => (void))
               (check (with-catch identity (cut thread-join!/error reading 3)) ? Closed?)
               (check-eq? (ConnectionParent-error p) first)
               (with-stream-io-lock lock.mx
                 (check lock.readers => 0)
                 (check lock.writer => #f)
                 (check lock.writers-waiting => 0))))))

       (test-case "Unix output-setter failure closes the socket after input timeout setup succeeded"
          (with-transport (mode p socket peer expire deadline 5) start
           ;; TLS has no independent directional shutdown; do not fake one.
           (when (eq? mode 'unix)
             ;; Socket shutdown takes native SHUT_*, not device direction masks.
             (StreamSocket-shutdown socket SHUT_WR)
             (check-exception (connection-parent-attach! p socket expire) Closed?)
             (using (native (&interface-instance-object socket) : basic-socket)
               (check-eq? native.timeo-in !NoTimeout)
               (check-not-eq? native.timeo-out !NoTimeout))
             (check-exception (Reader-read (StreamSocket-reader socket) (make-u8vector 1)) Closed?)
             (check (ConnectionParent-socket p) => #f)
             (check (ConnectionParent-expire p) => #f))))

       (test-case "native close precedes blocked abort or notification"
         (for-each
           (lambda (wake?)
             (with-transport (mode p socket peer expire deadline 5) start
               (connection-parent-attach! p socket expire)
               (let* ((io (transport-test-io expire))
                      (first (Error "First connection failure"))
                      (owner (current-thread))
                      (held (if wake? (StreamWake-mx (ConnectionParent-wake p)) (StreamIO-input-mx io)))
                      (closing #f)
                      (reading (start (cut Reader-read (StreamSocket-reader socket) (make-u8vector 1)))))
                 (connection-parent-register! p 1 io)
                 (transport-test-idle! p)
                 (transport-test-wait! reading)
                 (with-stream-io-lock held
                   (set! closing (start (cut connection-parent-close! p first)))
                   (transport-test-wait! closing held)
                   ;; The stream/wake lock is still held: only native close can wake IO.
                   (check (with-catch identity (cut thread-join!/error reading 2)) ? Closed?)
                   (check-eq? (mutex-state held) owner))
                 (check (thread-join!/error closing 3) => (void))
                 (check-eq? (ConnectionParent-error p) first)
                 (check (StreamState-aborted? (StreamIO-state io)) => #t))))
           '(#f #t)))))))
