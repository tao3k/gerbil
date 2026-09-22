;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Accepted-stream framing over real confirmed Unix and TLS sockets
(import :std/build-config)
(cond-expand
  (config-have-sqlite
   (import :std/test
           :std/error
           :std/interface
           :std/io/interface
           :std/struct/queue
           :std/sync/threads
           :std/time/time
           :std/time/timeout
           (only-in :std/vector/u8vector &u8vector-uint-set!/be)
           (only-in :std/os/sockopt SOL_SOCKET.SO_SNDBUF SOL_SOCKET.SO_RCVBUF)
           (only-in "./connection-transport-test.ss"
                    call-with-transport-test-sockets
                    transport-test-wait!)
           ./config
           ./wire
           ./stream
           ./connection
           ./thread)
   (export connection-framed-test)

   ;; Load the actual startup/IO boundaries and their private dependencies, not
   ;; copies of their algorithms. Only spawn, Writer acquisition and close gain
   ;; observation hooks; all sockets, dispatch, service and release remain real.
   (defsyntax (framed-test-fault-module stx)
     (syntax-case stx ()
       ((_ name connection-path stream-path)
        (let ((names '(connection-parent-start! connection-parent-check-live!
                                                connection-parent-reader-thread connection-parent-dispatch!
                                                connection-scheduler-find connection-stream-reset!
                                                connection-parent-release! connection-parent-release-owned!
                                                connection-parent-close! connection-transport-close!
                                                connection-parent-writer-thread connection-transport-write!
                                                stream-io-expire-locked! stream-io-abort-locked!))
              (spawns 0) (writers 0) (closes 0) (native-closes 0))
          (def (instrument form)
            (cond
             ((equal? form '(socket.writer))
              (set! writers (1+ writers))
              '(test-writer socket))
             ((and (pair? form) (eq? (car form) 'spawn-network-thread))
              (set! spawns (1+ spawns))
              (cons 'test-spawn-thread (instrument (cdr form))))
             ((or (equal? form '(connection-parent-close! self failure))
                  (equal? form '(connection-parent-close! self)))
              (set! closes (1+ closes))
              (cons 'test-parent-close! (cdr form)))
             ((equal? form '(socket.close))
              (set! native-closes (1+ native-closes))
              '(test-native-close! socket))
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
            (unless (and (= (length forms) (length names)) (= spawns 2) (= writers 1)
                         (= closes 6) (= native-closes 1))
              (error "Framed test source boundaries changed" spawns writers closes native-closes))
            (datum->syntax #'name
              `(module ,(stx-e #'name)
                 (import :std/error
                         :std/io/interface
                         :std/iter
                         :std/number/misc
                         :std/struct/queue
                         :std/time/time
                         :std/ensemble/network/config
                         :std/ensemble/network/wire
                         (only-in :std/ensemble/network/renewal
                                  renewal-frame?)
                         :std/ensemble/network/stream
                         :std/ensemble/network/thread
                         (except-in :std/ensemble/network/connection
                                    connection-parent-start!
                                    connection-parent-release!
                                    connection-parent-close!))
                 (export connection-parent-start!
                         current-spawn-hook
                         current-writer-hook
                         current-close-hook
                         current-native-close-hook)
                 (def current-spawn-hook (make-parameter (lambda (name) (void))))
                 (def current-writer-hook (make-parameter identity))
                 (def current-close-hook (make-parameter (lambda (self failure) (void))))
                 (def current-native-close-hook (make-parameter (lambda (socket) (void))))
                 (def (test-spawn-thread (name : :symbol)
                                         (proc : :procedure))
                   => :thread
                   ((current-spawn-hook) name)
                   (spawn-network-thread name proc))
                 (def (test-writer (socket : StreamSocket))
                   => Writer
                   ((current-writer-hook) (socket.writer)))
                 (def (test-parent-close! (self    : ConnectionParent)
                                          (failure : :t := absent-obj))
                   => :void
                   (if (eq? failure absent-obj)
                     (connection-parent-close! self)
                     (connection-parent-close! self failure))
                   ((current-close-hook) self failure))
                 (def (test-native-close! (socket : StreamSocket))
                   => :void
                   (socket.close)
                   ((current-native-close-hook) socket))
                 ,@forms)))))))

   (framed-test-fault-module framed-fault "connection.ss" "stream.ss")
   (import (prefix-in framed-fault fault#))

   ;; Deliberately violates Writer's full-slice contract with three-byte returns
   ;; to exercise framing robustness. Hooks borrow bytes only during write;
   ;; tests retain scalar snapshots, never released ring storage.
   (defclass FramedTestWriter
     ((delegate : Writer)
      (fail-at  : :fixnum := 0)
      (failure  : :t := #f)
      (sent     : :fixnum := 0)
      (calls    : :fixnum := 0)
      (unwinds  : :fixnum := 0)
      (active?  : :boolean := #f))
     final: #t)

   (def current-framed-write-hook
     (make-parameter (lambda (writer bytes start end count) (void))))

   (def (framed-test-writer-write (self  : FramedTestWriter)
                                  (bytes : :u8vector)
                                  (start : :fixnum)
                                  (end   : :fixnum))
     => :fixnum
     (set! self.active? #t)
     (set! self.calls (fx1+ self.calls))
     (try
       (when (and (fx> self.fail-at 0) (fx>= self.sent self.fail-at))
         (error "Retried a failed framed write"))
       (let* ((limit (if (fx> self.fail-at 0) (fxmin 3 (fx- self.fail-at self.sent)) 3))
              (count (Writer-write self.delegate bytes start (fxmin end (fx+ start limit)))))
         (set! self.sent (fx+ self.sent count))
         ((current-framed-write-hook) self bytes start end count)
         (when (and (fx> self.fail-at 0) (fx= self.sent self.fail-at))
           (raise self.failure))
         count)
       (finally
         (set! self.active? #f)
         (set! self.unwinds (fx1+ self.unwinds)))))

   (def (framed-test-writer-close (self : FramedTestWriter))
     => :void
     (Writer-close self.delegate))

   (implement Writer FramedTestWriter
     (write framed-test-writer-write)
     (close framed-test-writer-close))

   ;; All parents and application workers belong to the fixture. Close both real
   ;; endpoints before joining, including when setup or an assertion raises. Only
   ;; the framed writer owns/releases scheduler work; tests never consume next!.
   (defrules with-framed ()
     ((_ (mode socket peer expire lifetime) (p ...) start body ...)
      (with-framed (mode socket peer expire lifetime (ConnectionLimits data-payload: 4))
          (p ...) start body ...))
     ((_ (mode socket peer expire lifetime limits) (p ...) start body ...)
      (for-each
        (lambda (mode)
          (call-with-transport-test-sockets mode lifetime
                                            (lambda (socket peer expire handshake-deadline)
                                              (let ((p #f) ... (workers []) (local-limits limits))
                                                (def (start (proc : :procedure))
                                                  => :thread
                                                  (let (worker (spawn-thread proc))
                                                    (set! workers (cons worker workers))
                                                    worker))
                                                (unwind-protect
                                                  (begin
                                                    (set! p (make-connection-parent local-limits
                                                                                    (ConnectionLimits-data-payload local-limits)
                                                                                    #xffffffff)) ...
                                                                                    body ...)
                                                  (begin
                                                    (for-each (lambda (parent)
                                                                (when parent (ignore-errors (connection-parent-close! parent))))
                                                              [p ...])
                                                    (ignore-errors (Closer-close socket))
                                                    (ignore-errors (Closer-close peer))
                                                    ;; Finish every cleanup join before any assertion can escape.
                                                    ;; Do not depend on the parent join implementation under test.
                                                    (let* ((deadline (seconds->time (+ (##current-time-point) 4)))
                                                           (owned
                                                            (apply append workers
                                                                   (map (lambda (parent)
                                                                          (if parent
                                                                            [(ConnectionParent-worker parent)
                                                                             (ConnectionParent-reader-worker parent)
                                                                             (ConnectionParent-writer-worker parent)]
                                                                            []))
                                                                        [p ...])))
                                                           (results
                                                            (map (lambda (worker)
                                                                   (when worker
                                                                     (with-catch identity (cut network-thread-join! worker deadline 'stuck))))
                                                                 owned)))
                                                      (for-each (lambda (result)
                                                                  (check result ? (lambda (value) (not (eq? value 'stuck)))))
                                                                results))))))))
        '(unix tls))))

   (def (framed-test-io (expire : :integer))
     => StreamIO
     (make-stream-io (StreamLimits recv-window: 8 outbound-buffer: 8) 8 expire
                     (NetworkConfig stream-input-timeout: (IOTimeout 3)
                                    stream-output-timeout: (IOTimeout 3))))

   ;; Keep raised #f distinguishable from a normal result. A raising parent join
   ;; must still have finished every published worker, not just the first failure.
   (def (framed-test-join! (p       : ConnectionParent)
                           (timeout : :t := 4))
     => :list
     (let (result
           (with-catch (lambda (failure) ['raised failure])
                       (lambda () ['returned (connection-parent-join! p timeout 'stuck)])))
       (check result ? (lambda (value) (not (equal? value '(returned stuck)))))
       (for-each
         (lambda (worker)
           (when worker
             (let (state (thread-state worker))
               (check (or (thread-state-normally-terminated? state)
                          (thread-state-abnormally-terminated? state))
                      => #t))))
         [(ConnectionParent-worker p)
          (ConnectionParent-reader-worker p)
          (ConnectionParent-writer-worker p)])
       result))

   (def (framed-test-protocol-error! (p : ConnectionParent))
     => :void
     (let (result (framed-test-join! p 3))
       (check (car result) => 'raised)
       (check (cadr result)
              ? (lambda (failure)
                  (and (IOError? failure) (not (Closed? failure)) (not (Timeout? failure)))))
       (check (ConnectionParent-closed? p) => #t)
       (check-eq? (ConnectionParent-error p) (cadr result))))

   ;; Both application and native Writers must consume the full requested slice.
   (def (framed-test-write-all! (writer : Writer)
                                (bytes  : :u8vector))
     => :void
     ;; IO may deliberately fail during shutdown. Let that exception reach the
     ;; worker's join rather than entering a test assertion handler in the worker.
     (let (count (Writer-write writer bytes))
       (unless (fx= count (u8vector-length bytes))
         (error "Writer did not consume the full slice" count (u8vector-length bytes)))))

   ;; Raw peers send valid envelopes even when the payload is deliberately bad.
   ;; One small write avoids a peer close between a fatal header and its payload.
   (def (framed-test-send! (peer    : StreamSocket)
                           (type    : :fixnum)
                           (id      : :integer)
                           (payload : :u8vector))
     => :void
     (framed-test-write-all!
      (StreamSocket-writer peer)
      (u8vector-append
       (encode-frame-header (FrameHeader type: type stream-id: id
                                         payload-length: (u8vector-length payload)))
       payload)))

   ;; Only the unstarted raw peer uses this reader. The shared fixture gives it
   ;; finite native IO timeouts; no test steals input from a framed reader worker.
   (def (framed-test-read (peer : StreamSocket))
     => :list
     (let ((reader (StreamSocket-reader peer)) (bytes (make-u8vector frame-header-size)))
       (check (Reader-read reader bytes 0 frame-header-size frame-header-size) => frame-header-size)
       (using (header (decode-frame-header bytes) :- FrameHeader)
         (let* ((size header.payload-length) (payload (make-u8vector size)))
           (when (fx> size 0)
             (check (Reader-read reader payload 0 size size) => size))
           [header.type header.stream-id payload]))))

   (def connection-framed-test
     (test-suite "Private framed connection workers"
       (test-case "join timeout includes snapshot acquisition behind blocked dispatch"
         (with-framed (mode socket peer expire 20) (p) start
           (connection-parent-attach! p socket expire)
           (let* ((io (framed-test-io expire)) (wake (ConnectionParent-wake p)))
             (connection-parent-register! p 1 io)
             (connection-parent-start! p #f 0 1)
             (transport-test-wait! (ConnectionParent-worker p) (StreamWake-service-cv wake))
             (transport-test-wait! (ConnectionParent-writer-worker p) (StreamWake-output-cv wake))
             (with-stream-io-lock (StreamIO-output-mx io)
               (framed-test-send! peer frame-data 1 #u8(42))
               (let (reader (ConnectionParent-reader-worker p))
                 (transport-test-wait! reader (StreamIO-output-mx io))
                 (check-eq? (mutex-state (ConnectionParent-mx p)) reader)
                 ;; The test never unlocks dispatch to help the timed join finish.
                 ;; Outer joins bound failures even against the old implementation.
                 (for-each
                   (lambda (kind)
                     (for-each
                       (lambda (result-kind)
                         (let* ((timeout (case kind
                                           ((poll) 0)
                                           ((relative) .02)
                                           (else (seconds->time (+ (##current-time-point) .02)))))
                                (joining
                                 (start
                                  (lambda ()
                                    (with-catch (lambda (e) ['raised e])
                                      (lambda ()
                                        ['returned
                                         (case result-kind
                                           ((raise) (connection-parent-join! p timeout))
                                           ((false) (connection-parent-join! p timeout #f))
                                           (else (connection-parent-join! p timeout 'expired)))])))))
                                (result (thread-join!/error joining 1 'stuck)))
                           (if (eq? result-kind 'raise)
                             (check result ? (lambda (value)
                                               (and (pair? value) (eq? (car value) 'raised)
                                                    (Timeout? (cadr value)))))
                             (check result => ['returned (if (eq? result-kind 'false) #f 'expired)]))
                           (check-eq? (mutex-state (ConnectionParent-mx p)) reader)))
                       '(raise false value)))
                   '(poll relative absolute))))
             ;; Timed-out waiters neither close the parent nor disturb its locks.
             (let (bytes (make-u8vector 1))
               (check (Reader-read (StreamIO-reader io) bytes 0 1 1) => 1)
               (check bytes => #u8(42)))
             (check (framed-test-read peer) => [frame-window-update 1 #u8(0 0 0 1)])
             (check (ConnectionParent-closed? p) => #f))))

       (test-case "distinct close failures escape the writer unchanged without replaying native close"
         (for-each
           (lambda (kind)
             (with-framed (mode socket peer expire 20) (p) start
               (connection-parent-attach! p socket expire)
               (let* ((io (framed-test-io expire))
                      (io-failure (Error "Original partial frame failure"))
                      (cleanup-failure (case kind
                                         ((error) (Error "Distinct close cleanup failure"))
                                          ((closed) (Closed "Distinct close cleanup failure"))
                                          ((timeout) (Timeout "Distinct close cleanup failure"))
                                         (else #f)))
                      (partial (FramedTestWriter delegate: (StreamSocket-writer socket)
                                                 fail-at: (1+ frame-header-size) failure: io-failure))
                      (view (Writer partial)) (work #f) (at-close #f)
                      (closes 0) (native-closes 0))
                 (connection-parent-register! p 1 io)
                 (check (Writer-write (StreamIO-writer io) #u8(1 2 3 4 5 6 7 8)) => 8)
                 (parameterize
                     ((fault#current-writer-hook (lambda (writer) view))
                      (fault#current-native-close-hook
                       (lambda (socket)
                         ;; Reader/service close is independent. Count every native
                         ;; close issued by this writer, including an indirect release.
                         (when (eq? (current-thread) (ConnectionParent-writer-worker p))
                           (set! native-closes (1+ native-closes)))))
                      (fault#current-close-hook
                       (lambda (parent failure)
                         (when (eq? (current-thread) (ConnectionParent-writer-worker parent))
                           (set! closes (1+ closes))
                           (unless work
                             (with-stream-io-lock (ConnectionParent-mx parent)
                               (set! work (ConnectionScheduler-in-flight (ConnectionParent-scheduler parent)))
                               (set! at-close
                                 [(ConnectionWork-state work)
                                  (StreamState-in-flight (StreamIO-state io))
                                  (FramedTestWriter-active? partial)
                                  (ConnectionParent-closed? parent)])))
                           (raise cleanup-failure)))))
                   (fault#connection-parent-start! p #f 0 1))
                 ;; Joining the writer itself must not substitute parent.error for
                 ;; the distinct cleanup exception (which may also be raised #f).
                 (let (result
                       (with-catch (lambda (e) ['raised e])
                                   (lambda ()
                                     ['returned (network-thread-join! (ConnectionParent-writer-worker p) 3 'stuck)])))
                   (check (car result) => 'raised)
                   (check-eq? (cadr result) cleanup-failure))
                 (check-eq? (ConnectionParent-error p) io-failure)
                 (check (framed-test-join! p) => ['raised io-failure])
                 (check at-close => '(in-flight 4 #f #t))
                 (check closes => 1)
                 (check native-closes => 1)
                 (check (FramedTestWriter-sent partial) => (1+ frame-header-size))
                 (check (FramedTestWriter-unwinds partial) => (FramedTestWriter-calls partial))
                 (check (ConnectionWork-state work) => 'released)
                 (check (ConnectionWork-bytes work) => #u8())
                 (check (ConnectionScheduler-in-flight (ConnectionParent-scheduler p)) => #f)
                 (check (StreamState-in-flight (StreamIO-state io)) => 0)
                 (check (StreamBuffer-bytes (StreamState-send (StreamIO-state io))) => #u8()))))
            '(error closed timeout false)))

       (test-case "dispatch waiting on the real stream lock rechecks stream and connection expiry"
         (for-each
           (lambda (connection?)
             (with-framed (mode socket peer expire (if connection? 5 20)) (p) start
               (connection-parent-attach! p socket expire)
               (let* ((stream-expire (if connection? (+ expire 20) (+ (current-time-seconds) 3)))
                      (deadline (if connection? expire stream-expire))
                      (io (framed-test-io stream-expire))
                      (sibling (framed-test-io (+ expire 20)))
                      (wake (ConnectionParent-wake p)))
                 (connection-parent-register! p 1 io)
                 (connection-parent-register! p 2 sibling)
                 (connection-parent-start! p #f 2 1)
                 (transport-test-wait! (ConnectionParent-worker p) (StreamWake-service-cv wake))
                 (transport-test-wait!
                  (ConnectionParent-writer-worker p) (StreamWake-output-cv wake)
                  (lambda () (with-stream-io-lock (StreamWake-mx wake) (not (StreamWake-output? wake)))))
                 (let (reader (ConnectionParent-reader-worker p))
                   (with-stream-io-lock (StreamIO-output-mx io)
                     ;; The complete invalid live payload is already read before
                     ;; dispatch queues here. Expiry must precede payload decoding.
                     (framed-test-send! peer frame-window-update 1 #u8(0 0 0 0))
                     (transport-test-wait! reader (StreamIO-output-mx io))
                     (check-eq? (mutex-state (ConnectionParent-mx p)) reader)
                     (check-eq? (mutex-state (StreamIO-input-mx io)) reader)
                     (check (< (current-time-seconds) deadline) => #t)
                     (thread-sleep! (seconds->time deadline))
                     (check (>= (current-time-seconds) deadline) => #t)
                     ;; Reader owns mx, so the timer cannot win this race instead.
                     (check (ConnectionParent-closed? p) => #f)
                     (check (StreamState-aborted? (StreamIO-state io)) => #f)))
                 (if connection?
                   (let (result (framed-test-join! p (seconds->time (+ expire 3))))
                     (check (car result) => 'raised)
                     (check (cadr result) ? Closed?)
                     (check-eq? (ConnectionParent-error p) (cadr result))
                     (check (StreamState-aborted? (StreamIO-state io)) => #t)
                     (check (StreamState-aborted? (StreamIO-state sibling)) => #t))
                   (begin
                     (check (framed-test-read peer)
                            => [frame-reset 1 (encode-frame-payload frame-reset [reason-closed])])
                     (check (StreamState-aborted? (StreamIO-state io)) => #t)
                     (check (ConnectionParent-closed? p) => #f)
                     (check (StreamState-aborted? (StreamIO-state sibling)) => #f)
                     (framed-test-send! peer frame-data 2 #u8(42))
                     (let (bytes (make-u8vector 1))
                       (check (Reader-read (StreamIO-reader sibling) bytes 0 1 1) => 1)
                       (check bytes => #u8(42)))
                     (check (framed-test-read peer) => [frame-window-update 2 #u8(0 0 0 1)]))))))
           '(#f #t)))

       (test-case "second spawn failure closes and joins the published reader before startup raises"
         (for-each
           (lambda (false?)
             (with-framed (mode socket peer expire 20) (p) start
               (connection-parent-attach! p socket expire)
               (let ((io (framed-test-io expire)) (owner (current-thread))
                     (failure (if false? #f (Error "Second framed spawn failed")))
                     (spawns []) (first #f))
                 (connection-parent-register! p 1 io)
                 (parameterize
                     ((fault#current-spawn-hook
                       (lambda (name)
                         (set! spawns (cons name spawns))
                         (when (eq? name 'connection-writer)
                           (set! first (ConnectionParent-reader-worker p))
                           (transport-test-wait! first (ConnectionParent-mx p))
                           (thread-send owner 'second-spawn)
                           (unless (eq? (thread-receive 3 'stuck) 'continue)
                             (error "Startup fault gate timed out"))
                           ;; The real second spawn has not been called yet.
                           (raise failure))))
                      (fault#current-close-hook
                       (lambda (parent failure)
                         (when (eq? (current-thread) (ConnectionParent-reader-worker parent))
                           (thread-send owner 'reader-closing)
                           (unless (eq? (thread-receive 6 'stuck) 'continue)
                             (error "Startup reader exit gate timed out"))))))
                   (let (starting (start (cut fault#connection-parent-start! p #f 0 1)))
                     (unwind-protect
                       (begin
                         (check (thread-receive 3 'missing) => 'second-spawn)
                         (check (reverse spawns) => '(connection-reader connection-writer))
                         (check-eq? (ConnectionParent-reader-worker p) first)
                         (check (ConnectionParent-writer-worker p) => #f)
                         (check-eq? (mutex-state (ConnectionParent-mx p)) starting)
                         (check (ConnectionParent-closed? p) => #f)
                         (thread-send starting 'continue)
                         (check (thread-receive 3 'missing) => 'reader-closing)
                         (check (ConnectionParent-closed? p) => #t)
                         (check (thread-join!/error starting .02 'waiting) => 'waiting)
                         (check-exception
                          (thread-join!/error
                           (start (cut Reader-read (StreamSocket-reader socket) (make-u8vector 1))) 2)
                          Closed?)
                         (thread-send first 'continue)
                         (check (with-catch (lambda (e) ['raised e])
                                            (lambda () ['returned (thread-join!/error starting 4)]))
                                => ['raised failure])
                         ;; Observe termination BEFORE a test-side join could repair
                         ;; incomplete startup cleanup. Service is the real worker.
                         (for-each
                           (lambda (worker)
                             (let (state (thread-state worker))
                               (check (or (thread-state-normally-terminated? state)
                                          (thread-state-abnormally-terminated? state)) => #t)))
                           [first (ConnectionParent-worker p)])
                         (check (ConnectionParent-closed? p) => #t)
                         (check-eq? (ConnectionParent-error p) failure)
                         (check (ConnectionParent-writer-worker p) => #f)
                         (check (StreamState-aborted? (StreamIO-state io)) => #t))
                       (begin
                         (ignore-errors (thread-send starting 'continue))
                         (when first (ignore-errors (thread-send first 'continue))))))))))
           '(#f #t)))

       (test-case "actual framed writer completes separate headers and borrowed slices through short writes"
         (with-framed (mode socket peer expire 20) (p) start
           (connection-parent-attach! p socket expire)
           (let* ((io (framed-test-io expire))
                  (partial (FramedTestWriter delegate: (StreamSocket-writer socket)))
                  (view (Writer partial)) (snapshots []))
             (connection-parent-register! p 1 io)
             (check (Writer-write (StreamIO-writer io) #u8(1 2 3 4 5 6 7 8)) => 8)
             (parameterize
                 ((fault#current-writer-hook (lambda (writer) view))
                  (current-framed-write-hook
                   (lambda (writer bytes lo hi count)
                     (with-stream-io-lock (ConnectionParent-mx p)
                       (using (work (ConnectionScheduler-in-flight (ConnectionParent-scheduler p)) :- ConnectionWork)
                         (set! snapshots
                           (cons [(cond ((eq? bytes work.header) 'header)
                                        ((and (eq? bytes work.bytes)
                                              (eq? bytes (StreamBuffer-bytes (StreamState-send (StreamIO-state io)))))
                                         'payload)
                                        (else 'copied))
                                  lo hi count]
                                 snapshots)))))))
               (fault#connection-parent-start! p #f 0 1))
             (let (closing (start (cut Writer-close (StreamIO-writer io))))
               (check (framed-test-read peer) => [frame-data 1 #u8(1 2 3 4)])
               (check (framed-test-read peer) => [frame-data 1 #u8(5 6 7 8)])
               (check (framed-test-read peer) => [frame-fin 1 #u8()])
               (thread-join!/error closing 3))
             (transport-test-wait! (ConnectionParent-writer-worker p)
                                   (StreamWake-output-cv (ConnectionParent-wake p)))
             (check (FramedTestWriter-sent partial) => (+ (* 3 frame-header-size) 8))
             (check (FramedTestWriter-active? partial) => #f)
             (check (FramedTestWriter-unwinds partial) => (FramedTestWriter-calls partial))
             (check (length (filter (lambda (entry) (eq? (car entry) 'payload)) snapshots))
                    ? (lambda (count) (>= count 4)))
             (for-each
               (lambda (entry)
                 (check (car entry) ? (lambda (kind) (memq kind '(header payload))))
                 (check (list-ref entry 3)
                        ? (lambda (count) (<= 1 count (min 3 (- (caddr entry) (cadr entry))))))
                 (when (eq? (car entry) 'header)
                   (check (caddr entry) => frame-header-size)))
               snapshots)
             (check (ConnectionParent-closed? p) => #f))))

        (test-case "partial frame failure closes before release and never resumes, including raised false"
         (for-each
           (lambda (kind)
             (with-framed (mode socket peer expire 20) (p) start
               (connection-parent-attach! p socket expire)
               (let* ((io (framed-test-io expire)) (owner (current-thread))
                      (failure (case kind
                                 ((error) (Error "Partial framed write failed"))
                                  ((closed) (Closed "Partial framed write failed"))
                                  ((timeout) (Timeout "Partial framed write failed"))
                                 (else #f)))
                      (partial (FramedTestWriter delegate: (StreamSocket-writer socket)
                                                 fail-at: (1+ frame-header-size) failure: failure))
                      (view (Writer partial)) (writer #f) (closes 0) (borrowed? #f))
                 (connection-parent-register! p 1 io)
                 (check (Writer-write (StreamIO-writer io) #u8(1 2 3 4 5 6 7 8)) => 8)
                 (unwind-protect
                   (begin
                     (parameterize
                         ((fault#current-writer-hook (lambda (writer) view))
                          (current-framed-write-hook
                           (lambda (impl bytes lo hi count)
                             (when (= (FramedTestWriter-sent impl) (1+ frame-header-size))
                               (with-stream-io-lock (ConnectionParent-mx p)
                                 (set! borrowed?
                                   (eq? bytes (ConnectionWork-bytes
                                               (ConnectionScheduler-in-flight (ConnectionParent-scheduler p))))))
                               (thread-send owner 'write-held)
                               (unless (eq? (thread-receive 6 'stuck) 'continue)
                                 (error "Partial write gate timed out")))))
                          (fault#current-close-hook
                           (lambda (parent failure)
                             (when (eq? (current-thread) (ConnectionParent-writer-worker parent))
                               (set! closes (1+ closes))
                               (when (= closes 1)
                                 (thread-send owner 'close-held)
                                 (unless (eq? (thread-receive 6 'stuck) 'continue)
                                   (error "Partial close gate timed out")))))))
                       (fault#connection-parent-start! p #f 0 1))
                     (set! writer (ConnectionParent-writer-worker p))
                     (check (thread-receive 3 'missing) => 'write-held)
                     (let* ((work (with-stream-io-lock (ConnectionParent-mx p)
                                    (ConnectionScheduler-in-flight (ConnectionParent-scheduler p))))
                            (calls (FramedTestWriter-calls partial))
                            (prefix (make-u8vector (1+ frame-header-size))))
                       (check (FramedTestWriter-active? partial) => #t)
                       (check borrowed? => #t)
                       (check (ConnectionWork-state work) => 'in-flight)
                       (check (ConnectionParent-closed? p) => #f)
                       (check (Reader-read (StreamSocket-reader peer) prefix 0
                                           (u8vector-length prefix) (u8vector-length prefix))
                              => (u8vector-length prefix))
                       (check prefix
                              => (u8vector-append
                                  (encode-frame-header (FrameHeader type: frame-data stream-id: 1 payload-length: 4))
                                  #u8(1)))
                       (thread-send writer 'continue)
                       (check (thread-receive 3 'missing) => 'close-held)
                       ;; Close has completed but the source writer's release is
                       ;; still gated. The throwing Writer must already have unwound.
                       (check (FramedTestWriter-active? partial) => #f)
                       (check (FramedTestWriter-unwinds partial) => calls)
                       (check (ConnectionParent-closed? p) => #t)
                       (check-eq? (ConnectionParent-error p) failure)
                       (check (ConnectionWork-state work) => 'in-flight)
                       (check (StreamState-in-flight (StreamIO-state io)) => 4)
                       (check (StreamState-aborted? (StreamIO-state io)) => #t)
                       (check (subu8vector (ConnectionWork-bytes work) (ConnectionWork-start work) (ConnectionWork-end work))
                              => #u8(1 2 3 4))
                       (check-exception
                        (thread-join!/error
                         (start (cut Reader-read (StreamSocket-reader socket) (make-u8vector 1))) 2)
                        Closed?)
                       (thread-send writer 'continue)
                       (check (framed-test-join! p) => ['raised failure])
                       (check closes => 1)
                       (check (FramedTestWriter-calls partial) => calls)
                       (check (FramedTestWriter-sent partial) => (1+ frame-header-size))
                       (check (ConnectionWork-state work) => 'released)
                       (check (ConnectionWork-bytes work) => #u8())
                       (check (ConnectionScheduler-in-flight (ConnectionParent-scheduler p)) => #f)
                       (check (StreamState-in-flight (StreamIO-state io)) => 0)
                       (check (StreamBuffer-bytes (StreamState-send (StreamIO-state io))) => #u8())))
                   (when writer
                     (ignore-errors (thread-send writer 'continue))
                     (ignore-errors (thread-send writer 'continue)))))))
            '(error closed timeout false)))

       (test-case "four bidirectional streams cross tiny windows and retain reverse IO after FIN"
         (with-framed (mode socket peer expire 20) (p q) start
           (connection-parent-attach! p socket expire)
           (connection-parent-attach! q peer expire)
           (let (streams
                 (map (lambda (id) [id (framed-test-io expire) (framed-test-io expire)])
                      '(1 2 3 4)))
             (for-each
               (lambda (entry)
                 (connection-parent-register! p (car entry) (cadr entry))
                 (connection-parent-register! q (car entry) (caddr entry)))
               streams)
             ;; Incoming fixture endpoint is responder: local even, peer odd.
             (connection-parent-start! p #f 4 3)
             (connection-parent-start! q #t 3 4)
             (let (jobs
                   (map
                     (lambda (entry)
                       (let* ((id (car entry)) (left (cadr entry)) (right (caddr entry))
                              (forward (list->u8vector (iota 37 (* id 40))))
                              (reply (list->u8vector (iota 29 (* id 20))))
                              (suffix #u8(251 252 253))
                              (left-output (make-u8vector 32))
                              (right-output (make-u8vector 37))
                              (left-read
                               (start
                                (lambda ()
                                  (let (count (Reader-read (StreamIO-reader left) left-output 0 32 32))
                                    [count (Reader-read (StreamIO-reader left) (make-u8vector 1))]))))
                              (right-write
                               (start (cut framed-test-write-all! (StreamIO-writer right) reply)))
                              (right-read
                               (start
                                (lambda ()
                                  (let* ((count (Reader-read (StreamIO-reader right) right-output 0 37 37))
                                         (eof (Reader-read (StreamIO-reader right) (make-u8vector 1))))
                                    (thread-join!/error right-write 3)
                                    ;; Append only AFTER observing the opposite FIN.
                                    (framed-test-write-all! (StreamIO-writer right) suffix)
                                    (Writer-close (StreamIO-writer right))
                                    [count eof]))))
                              (left-write
                               (start
                                (lambda ()
                                  (framed-test-write-all! (StreamIO-writer left) forward)
                                  (Writer-close (StreamIO-writer left))))))
                         [[left-read right-read left-write right-write]
                          left-output (u8vector-append reply suffix) right-output forward]))
                     streams))
               (for-each
                 (lambda (job)
                   (for-each (lambda (worker expected)
                               (check (thread-join!/error worker 4) => expected))
                             (car job) [[32 0] [37 0] (void) (void)])
                   (check (list-ref job 1) => (list-ref job 2))
                   (check (list-ref job 3) => (list-ref job 4)))
                 jobs))
             (check (ConnectionParent-closed? p) => #f)
             (check (ConnectionParent-closed? q) => #f)
             (for-each
               (lambda (entry)
                 (check (StreamState-aborted? (StreamIO-state (cadr entry))) => #f)
                 (check (StreamState-aborted? (StreamIO-state (caddr entry))) => #f))
               streams))))

       (test-case "remote RESET suppresses echo and late frames survive terminal registration and removal"
         (with-framed (mode socket peer expire 20) (p) start
           (connection-parent-attach! p socket expire)
           (let ((io (framed-test-io expire)) (sibling (framed-test-io expire)))
             (connection-parent-register! p 1 io)
             (connection-parent-register! p 2 sibling)
             (connection-parent-start! p #f 2 1)
             (let (reading (start (cut Reader-read (StreamIO-reader io) (make-u8vector 1))))
               (framed-test-send! peer frame-reset 1 (encode-frame-payload frame-reset [reason-closed]))
               (check-exception (thread-join!/error reading 3) Closed?))
             (for-each
               (lambda (removed?)
                 (when removed? (connection-parent-remove! p 1))
                 (for-each
                   (lambda (frame) (framed-test-send! peer (car frame) 1 (cadr frame)))
                   [[frame-data #u8(9)]
                    [frame-window-update #u8(0 0 0 0)]
                    [frame-fin #u8()]
                    [frame-reset #u8(0 0)]
                    [frame-open-accept (make-u8vector 8 0)]
                    [frame-open-reject #u8(0 0)]])
                 ;; Sibling traffic is an ordered input/output barrier, not a sleep.
                 (framed-test-send! peer frame-data 2 #u8(1 2 3 4))
                 (let (bytes (make-u8vector 4))
                   (check (Reader-read (StreamIO-reader sibling) bytes 0 4 4) => 4)
                   (check bytes => #u8(1 2 3 4)))
                 (transport-test-wait!
                  (ConnectionParent-worker p) (StreamWake-service-cv (ConnectionParent-wake p))
                  (lambda ()
                    (with-stream-io-lock (StreamWake-mx (ConnectionParent-wake p))
                      (not (StreamWake-service? (ConnectionParent-wake p))))))
                 (check (framed-test-read peer) => [frame-window-update 2 #u8(0 0 0 4)])
                 (check (Writer-write (StreamIO-writer sibling) #u8(5 6 7 8)) => 4)
                 (check (framed-test-read peer) => [frame-data 2 #u8(5 6 7 8)])
                 (check (ConnectionParent-closed? p) => #f)
                 (check (StreamState-aborted? (StreamIO-state sibling)) => #f))
               '(#f #t))
             (check (Queue-length (ConnectionScheduler-streams (ConnectionParent-scheduler p))) => 1)
             (let (fresh (framed-test-io expire))
               (unwind-protect
                 (begin
                   ;; Neither reuse nor a new ID can register after framed startup.
                   (check-exception (connection-parent-register! p 1 fresh) IOError?)
                   (check-exception (connection-parent-register! p 3 fresh) IOError?)
                   (check (StreamIO-wake fresh) => #f))
                 (stream-io-abort! fresh))))))

       (test-case "abort or independent expiry before payload completion does not kill siblings"
         (for-each
           (lambda (expire?)
             (with-framed (mode socket peer expire 20) (p) start
               (connection-parent-attach! p socket expire)
               (let ((io (framed-test-io (if expire? (+ (current-time-seconds) 2) expire)))
                     (sibling (framed-test-io expire)))
                 (connection-parent-register! p 1 io)
                 (connection-parent-register! p 2 sibling)
                 (connection-parent-start! p #f 2 1)
                 (framed-test-write-all!
                  (StreamSocket-writer peer)
                  (u8vector-append
                   (encode-frame-header (FrameHeader type: frame-window-update stream-id: 1 payload-length: 4))
                   #u8(0 0 0)))
                 (unless expire? (stream-io-abort! io))
                 ;; No application IO/status/expire call drives the expiry branch.
                 (let (reset (framed-test-read peer))
                   (check (car reset) => frame-reset)
                   (check (cadr reset) => 1)
                   (check (decode-frame-payload frame-reset (caddr reset)) => (vector reason-closed)))
                 (check (StreamState-aborted? (StreamIO-state io)) => #t)
                 (framed-test-write-all! (StreamSocket-writer peer) #u8(0))
                 (framed-test-send! peer frame-data 2 #u8(42))
                 (let (bytes (make-u8vector 1))
                   (check (Reader-read (StreamIO-reader sibling) bytes 0 1 1) => 1)
                   (check bytes => #u8(42)))
                 (check (framed-test-read peer) => [frame-window-update 2 #u8(0 0 0 1)])
                 (check (ConnectionParent-closed? p) => #f)
                 (check (StreamState-aborted? (StreamIO-state sibling)) => #f))))
           '(#f #t)))

       (test-case "explicit OPEN high-water marks discard gaps but reject future IDs on either parity"
         (for-each
           (lambda (future)
             (with-framed (mode socket peer expire 20) (p) start
               (connection-parent-attach! p socket expire)
               (let (io (framed-test-io expire))
                 (connection-parent-register! p 1 io)
                 ;; No registered stream can account for the committed/observed gaps.
                 (connection-parent-start! p #f 8 9)
                 (for-each
                   (lambda (id)
                     (framed-test-send! peer frame-data id #u8(9))
                     (framed-test-send! peer frame-window-update id #u8(0 0 0 0))
                     (framed-test-send! peer frame-open-accept id (make-u8vector 8 0)))
                   '(7 8 9))
                 (framed-test-send! peer frame-data 1 #u8(42))
                 (let (bytes (make-u8vector 1))
                   (check (Reader-read (StreamIO-reader io) bytes 0 1 1) => 1)
                   (check bytes => #u8(42)))
                 (check (framed-test-read peer) => [frame-window-update 1 #u8(0 0 0 1)])
                 (framed-test-send! peer frame-data future #u8(99))
                 (framed-test-protocol-error! p))))
           '(10 11)))

       (test-case "startup rejects missing transport, invalid u64/parity and uncovered accepted IDs"
         (for-each
           (lambda (marks)
             (with-framed (mode socket peer expire 20) (p) start
               (unless (eq? marks 'unattached)
                 (connection-parent-attach! p socket expire))
               (let ((local (framed-test-io expire)) (remote (framed-test-io expire)))
                 (connection-parent-register! p 2 local)
                 (connection-parent-register! p 1 remote)
                 (check-exception
                  (if (eq? marks 'unattached)
                    (connection-parent-start! p #f 2 1)
                    (connection-parent-start! p #f (car marks) (cadr marks)))
                  IOError?)
                 (check (ConnectionParent-closed? p) => #t)
                 (framed-test-join! p)
                 (unless (eq? marks 'unattached)
                   (check-exception
                    (thread-join!/error
                     (start (cut Reader-read (StreamSocket-reader socket) (make-u8vector 1))) 2)
                    Closed?))
                 (check (StreamState-aborted? (StreamIO-state local)) => #t)
                 (check (StreamState-aborted? (StreamIO-state remote)) => #t))))
           ['unattached [2 2] [1 1] [-1 1]
                        [#x10000000000000000 1] [2 #x10000000000000001] [0 1] [2 0]]))

       (test-case "a complete invalid envelope fails without reading any claimed payload"
         (for-each
           (lambda (fields)
             (with-framed (mode socket peer expire 20) (p) start
               (connection-parent-attach! p socket expire)
               (connection-parent-register! p 1 (framed-test-io expire))
               (connection-parent-start! p #f 2 3)
               (let ((header (make-u8vector frame-header-size 0))
                     (writer (StreamSocket-writer peer)))
                 (u8vector-set! header 0 (car fields))
                 (&u8vector-uint-set!/be header 1 (cadr fields) 8)
                 (&u8vector-uint-set!/be header 9 (caddr fields) 4)
                 (framed-test-write-all! writer (subu8vector header 0 12))
                 (check (connection-parent-join! p .02 'waiting) => 'waiting)
                 (framed-test-write-all! writer (subu8vector header 12 13))
                 ;; The peer remains open and silent: no payload or EOF can unblock
                 ;; an implementation that tries to read before rejecting the header.
                 (framed-test-protocol-error! p))))
           ;; Discarded gaps still require valid envelope lengths and local limits.
           [[#xff 1 1] [frame-data 0 1] [frame-data 3 5] [frame-fin 2 1]
            [frame-open 1 20] [frame-renew-result 0 10]]))

       (test-case "live zero values, over-credit, post-FIN DATA and active acceptance replies are fatal"
         (for-each
           (lambda (kind)
             (with-framed (mode socket peer expire 20) (p) start
               (connection-parent-attach! p socket expire)
               (let ((io (framed-test-io expire)) (sibling (framed-test-io expire)))
                 (connection-parent-register! p 1 io)
                 (connection-parent-register! p 2 sibling)
                 (connection-parent-start! p #f 2 1)
                 (case kind
                   ((zero-credit) (framed-test-send! peer frame-window-update 1 #u8(0 0 0 0)))
                   ((zero-reason) (framed-test-send! peer frame-reset 1 #u8(0 0)))
                   ((excess-credit) (framed-test-send! peer frame-window-update 1 #u8(0 0 0 1)))
                   ((over-credit)
                    ;; No application reader returns any of the eight granted bytes.
                    (framed-test-send! peer frame-data 1 #u8(1 2 3 4))
                    (framed-test-send! peer frame-data 1 #u8(5 6 7 8))
                    (framed-test-send! peer frame-data 1 #u8(9)))
                   ((post-fin duplicate-fin)
                    (framed-test-send! peer frame-fin 1 #u8())
                    (check (Reader-read (StreamIO-reader io) (make-u8vector 1)) => 0)
                    (if (eq? kind 'post-fin)
                      (framed-test-send! peer frame-data 1 #u8(9))
                      (framed-test-send! peer frame-fin 1 #u8())))
                   ((accept)
                    (framed-test-send! peer frame-open-accept 1
                                       (encode-frame-payload frame-open-accept [0 8])))
                   ((reject)
                    (framed-test-send! peer frame-open-reject 1
                                       (encode-frame-payload frame-open-reject [reason-refused]))))
                 (framed-test-protocol-error! p)
                 (check (StreamState-aborted? (StreamIO-state sibling)) => #t))))
           '(zero-credit zero-reason excess-credit over-credit post-fin duplicate-fin accept reject)))

       (test-case "idle and partial-header shutdown joins all workers and preserves even raised false"
         (for-each
           (lambda (partial?)
             (with-framed (mode socket peer expire 20) (p) start
               (connection-parent-attach! p socket expire)
               (check (ConnectionParent-reader-worker p) => #f)
               (check (ConnectionParent-writer-worker p) => #f)
               (connection-parent-start! p #f 0 0)
               (when partial?
                 (framed-test-write-all! (StreamSocket-writer peer) #u8(19 0 0 0 0)))
               (transport-test-wait! (ConnectionParent-reader-worker p))
               (transport-test-wait! (ConnectionParent-writer-worker p)
                                     (StreamWake-output-cv (ConnectionParent-wake p)))
               (check (connection-parent-join! p .02 'waiting) => 'waiting)
               (let (first (and partial? (Error "First framed shutdown failure")))
                 (connection-parent-close! p first)
                 (check (framed-test-join! p) => ['raised first])
                 (connection-parent-close! p (Error "Later framed shutdown failure"))
                 (check-eq? (ConnectionParent-error p) first)
                 (check (framed-test-join! p) => ['raised first])
                 (check (ConnectionScheduler-in-flight (ConnectionParent-scheduler p)) => #f))))
           '(#f #t)))

       (test-case "stream-only expiry leaves a sibling live until the fixed connection lease ends"
         (with-framed (mode socket peer expire 5) (p) start
           (connection-parent-attach! p socket expire)
           (let ((short (framed-test-io (+ (current-time-seconds) 1)))
                 (sibling (framed-test-io (+ expire 20))))
             (connection-parent-register! p 1 short)
             (connection-parent-register! p 2 sibling)
             (connection-parent-start! p #f 2 1)
             (let (reset (framed-test-read peer))
               (check (car reset) => frame-reset)
               (check (cadr reset) => 1))
             (check (StreamState-aborted? (StreamIO-state short)) => #t)
             (check (StreamState-aborted? (StreamIO-state sibling)) => #f)
             (check (ConnectionParent-closed? p) => #f)
             (framed-test-send! peer frame-data 2 #u8(42))
             (let (bytes (make-u8vector 1))
               (check (Reader-read (StreamIO-reader sibling) bytes 0 1 1) => 1)
               (check bytes => #u8(42)))
             (check (framed-test-read peer) => [frame-window-update 2 #u8(0 0 0 1)])
             (stream-io-set-input-timeout! sibling !NoTimeout)
             (let (reading (start (cut Reader-read (StreamIO-reader sibling) (make-u8vector 1))))
               (transport-test-wait! reading (StreamIO-input-cv sibling))
               (let (result (framed-test-join! p (seconds->time (+ expire 3))))
                 (check (car result) => 'raised)
                 (check (cadr result) ? Closed?)
                 (check-eq? (ConnectionParent-error p) (cadr result)))
               (check-exception (thread-join!/error reading 3) Closed?))
             (check (ConnectionParent-expire p) => expire)
             (check (StreamIO-expire sibling) => (+ expire 20))
             (check (StreamState-aborted? (StreamIO-state sibling)) => #t))))

       (test-case "real socket backpressure retains borrowed DATA until close wakes the writer"
         (with-framed (mode socket peer expire 20 (ConnectionLimits data-payload: 65536)) (p) start
           (StreamSocket-setsockopt socket SOL_SOCKET.SO_SNDBUF 4096)
           (StreamSocket-setsockopt peer SOL_SOCKET.SO_RCVBUF 4096)
           (connection-parent-attach! p socket expire)
           (let (io (make-stream-io (StreamLimits recv-window: 8 outbound-buffer: 65536)
                                    67108864 expire))
             (connection-parent-register! p 1 io)
             (connection-parent-start! p #f 0 1)
             (let ((writer (ConnectionParent-writer-worker p))
                   (producing
                    (start
                     (lambda ()
                       (let (bytes (make-u8vector 65536 42))
                         ;; Finite 32 MiB fill bound. The real peer never reads.
                         (for-each (lambda (_) (framed-test-write-all! (StreamIO-writer io) bytes))
                                   (iota 512))
                         (error "Framed socket did not backpressure"))))))
               (transport-test-wait!
                writer #f
                (lambda ()
                  (with-stream-io-lock (ConnectionParent-mx p)
                    (let ((work (ConnectionScheduler-in-flight (ConnectionParent-scheduler p)))
                          (state (thread-state writer)))
                      (and work (= (ConnectionWork-type work) frame-data)
                           (thread-state-waiting? state)
                           (not (memq (thread-state-waiting-for state)
                                      [(ConnectionParent-mx p) (StreamIO-output-mx io)
                                       (StreamWake-mx (ConnectionParent-wake p))
                                       (StreamWake-output-cv (ConnectionParent-wake p))])))))))
               (transport-test-wait! producing (StreamIO-output-cv io))
               (let (work (with-stream-io-lock (ConnectionParent-mx p)
                            (ConnectionScheduler-in-flight (ConnectionParent-scheduler p))))
                 (check (ConnectionWork-state work) => 'in-flight)
                 (check (StreamState-in-flight (StreamIO-state io)) ? positive?)
                 (check-eq? (ConnectionWork-bytes work)
                            (StreamBuffer-bytes (StreamState-send (StreamIO-state io))))
                 (connection-parent-close! p #f)
                 (check (framed-test-join! p) => '(raised #f))
                 (check-exception (thread-join!/error producing 3) Closed?)
                 (check (ConnectionWork-state work) => 'released)
                 (check (ConnectionWork-bytes work) => #u8())
                 (check (ConnectionScheduler-in-flight (ConnectionParent-scheduler p)) => #f)
                 (check (StreamState-in-flight (StreamIO-state io)) => 0)
                 (check (StreamBuffer-bytes (StreamState-send (StreamIO-state io))) => #u8()))))))))))
