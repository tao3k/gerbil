;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; OPEN ownership, public expiry and cooperative admission cleanup
(import :std/build-config)
(cond-expand
  (config-have-sqlite
   (import :std/test
           (only-in :gerbil/runtime/mop
                    new-instance)
           :std/error
           :std/interface
           :std/io
           (only-in :std/os/sockopt
                    SOL_SOCKET.SO_SNDBUF
                    SOL_SOCKET.SO_RCVBUF)
           :std/struct/queue
           :std/sync/threads
           :std/time/time
           :std/time/timeout
           ../network
           (only-in ../ucan/interface
                    Token
                    INVOKE
                    Token-expire-set!)
           ./connection
           ./handshake
           ./stream
           ./wire
           ./thread
           (only-in "./network-api-test.ss"
                    APIMonitor
                    APIMonitor-events
                    APIMonitor-stream-hook-set!
                    call-with-api-networks
                    api-record!
                    api-await
                    api-check-pairs!
                    api-close!))
   (export connection-opening-test)

   ;; The staging and callback-return cases use source-loaded operations. They take the real
   ;; public Connection's implementation, use its authentic context, and leave its
   ;; compiled reader/writer, scheduler and socket untouched. These are private
   ;; boundary fixtures, NOT a second public end-to-end implementation. Check the
   ;; selected definitions, bounded encoder call and notification marker against drift.
   ;; The isolated OPEN unit cases replace only this module's clock; compiled
   ;; transport workers and the other boundary cases retain the real clock.
   (defsyntax (opening-test-source-module stx)
     (syntax-case stx ()
       ((_ name path)
        (let ((names '(connection-open-stream!
                       connection-opening-capacity?
                       connection-opening-expiration
                       connection-opening-check!
                       connection-opening-control!
                       connection-opening-select!
                       connection-opening-register!
                       connection-dispatch-opening!
                       connection-opening-await!
                       connection-prepare-open!
                       connection-allow-stream?
                       connection-opening-thread
                       connection-reap-openings!
                       connection-scheduler-find
                       connection-protect-renewal-locked!
                       connection-parent-check-live!))
              (loaded []) (hooks 0) (callback-hooks 0))
          (def (absolute-import form)
            (cond
             ((pair? form) (map absolute-import form))
             ((symbol? form)
              (let (text (symbol->string form))
                (cond
                 ((and (>= (string-length text) 3) (equal? (substring text 0 3) "../"))
                  (string->symbol (string-append ":std/ensemble/" (substring text 3 (string-length text)))))
                 ((and (>= (string-length text) 2) (equal? (substring text 0 2) "./"))
                  (string->symbol (string-append ":std/ensemble/network/" (substring text 2 (string-length text)))))
                 (else form))))
             (else form)))
          (def (instrument form)
            (cond
             ((equal? form '(current-time-seconds)) '((current-unit-clock)))
             ((equal? form '(set! entry.notified? #t))
              (set! callback-hooks (+ callback-hooks 1))
              `(begin ,form ((current-callback-return-hook) entry)))
             ((equal? form '(encode-auth-bundle tokens (fx- entry.control.size (fx- base 4))))
              (set! hooks (+ hooks 1))
              `(begin
                 ((current-encoding-hook) 'before entry)
                 (let (blobs ,form)
                   ((current-encoding-hook) 'after entry)
                   blobs)))
             ((pair? form) (cons (instrument (car form)) (instrument (cdr form))))
             (else form)))
          (let (forms
                (call-with-input-file (gx#core-resolve-path #'path (stx-source stx))
                  (lambda (port)
                    (let loop ((result []))
                      (let (form (read port))
                        (cond
                         ((eof-object? form) (reverse result))
                         ((and (pair? form) (eq? (car form) 'import))
                          (loop (cons (absolute-import form) result)))
                         ((and (pair? form) (eq? (car form) 'def)
                               (pair? (cadr form)) (memq (caadr form) names))
                          (set! loaded (cons (caadr form) loaded))
                          (loop (cons (instrument form) result)))
                         (else (loop result))))))))
            (unless (and (= hooks 1) (= callback-hooks 1) (= (length loaded) (length names))
                         (andmap (lambda (name) (memq name loaded)) names))
              (error "OPEN source fixture boundaries changed" loaded hooks callback-hooks))
            (datum->syntax #'name
              `(module ,(stx-e #'name)
                 (import :std/time/time
                         (except-in :std/ensemble/network/connection
                                    connection-dispatch-opening!))
                 (export connection-open-stream!
                         connection-opening-expiration
                         connection-opening-check!
                         connection-opening-control!
                         connection-opening-select!
                         connection-dispatch-opening!
                         current-unit-clock
                         current-encoding-hook
                         current-callback-return-hook)
                 (def current-unit-clock (make-parameter current-time-seconds))
                 (def current-encoding-hook (make-parameter (lambda (stage entry) (void))))
                 (def current-callback-return-hook (make-parameter (lambda (entry) (void))))
                 ,@forms)))))))

   (opening-test-source-module opening-source "connection.ss")
   (import (prefix-in opening-source source#))

   (def opening-test-config
     (NetworkConfig connection-ttl: 120 stream-ttl: 90
                    handshake-timeout: 8 stream-open-timeout: 30
                    stream-input-timeout: (IOTimeout 4)
                    stream-output-timeout: (IOTimeout 4)))

   ;; Observe the exact acquisition/CV, not elapsed sleeping or a thread name.
   (def (opening-test-wait! (worker   : :thread)
                            (wait-for : :t)
                            (ready?   : :procedure := (lambda () #t)))
     => :void
     (let (deadline (+ (##current-time-point) 3))
       (let loop ()
         (let (state (thread-state worker))
           (unless (and (thread-state-waiting? state)
                        (eq? (thread-state-waiting-for state) wait-for) (ready?))
             (when (>= (##current-time-point) deadline)
               (error "OPEN worker did not reach expected wait" worker wait-for state))
             (network-thread-join! worker .001 'waiting)
             (loop))))))

   (def (opening-test-entry (impl     : NetworkConnection)
                            (protocol : :string))
     => ConnectionOpening
     (with-stream-io-lock impl.parent.mx
       (or (find (lambda ((e : ConnectionOpening)) (equal? e.protocol protocol)) impl.openings)
           (error "Missing OPEN reservation" protocol))))

   ;; Raw join proves completion: marked failures are NetworkThreadError results,
   ;; ordinary application failures are native uncaught-exception wrappers.
   ;; A timeout sentinel, or an exception in the joining thread, is a test failure.
   (def (opening-test-join! (worker : :thread))
     => :void
     (check (with-catch (lambda (e) (check e ? uncaught-exception?) 'terminated)
                        (lambda ()
                          (let (result (thread-join! worker 3 'stuck))
                            (if (NetworkThreadError? result) 'terminated result))))
            ? (lambda (result) (not (eq? result 'stuck))))
     (void))

   ;; Snapshot actual NetworkJob handles under the owner's mutex. These private
   ;; classes are not exported; slot-ref is observation only, never a fake Network.
   (def (opening-test-jobs (network : Network))
     => :list
     (let (impl (interface-instance-object network))
       (do-with-lock (slot-ref impl 'mutex)
         (map (lambda (job) (slot-ref job 'worker)) (slot-ref impl 'jobs)))))

   ;; No Network, socket, service or admission worker runs in this unit fixture.
   ;; Initialize only the owner fields read by OPEN check/select/ACK dispatch and
   ;; seed the prepared credential vector; cryptographic authorization is not under
   ;; test. The callback holds parent mx, including across synthetic clock changes.
   (def (call-with-opening-unit (linked? : :boolean)
                                (proc    : :procedure))
     => :void
     (using ((owner (new-instance NetworkConnection::t) :- NetworkConnection)
             (p (ConnectionParent scheduler: (make-connection-scheduler (ConnectionLimits) 8 4096)) :- ConnectionParent))
       (check p.mx ? mutex?)
       (check p.wake ? StreamWake?)
       (check [p.worker p.reader-worker p.writer-worker p.started? p.initiator?
                        p.connection p.socket p.expire p.closed? p.error]
              => [#f #f #f #f #f #f #f #f #f #f])
       (check [p.local-open-id p.peer-open-id] => [0 0])
       (set! owner.parent p)
       (set! owner.config opening-test-config)
       (using (entry (ConnectionOpening owner: owner direction: DIRECTION-OUT deadline: 150
                                        protocol: "/opening/renewed/v0" required: 110) :- ConnectionOpening)
         (check [entry.id entry.expire entry.peer-window] => [0 0 0])
         (check [entry.auth entry.linked? entry.renewal entry.accepted? entry.success?
                            entry.cancelled? entry.cancel-send? entry.staging? entry.error entry.io
                            entry.stream entry.registered? entry.notified? entry.control entry.terminal
                            entry.worker entry.done?]
                => [#f #f #f #f #f #f #f #f #f #f #f #f #f #f #f #f #f])
         (check entry.blobs => [])
         (check entry.tokens => #())
         (check entry.phase => 'preparing)
         (check entry.pending? => #t)
         (check entry.cancel-reason => reason-cancelled)
         (check entry.cv ? condition-variable?)
         (set! owner.openings [entry])
         (set! entry.linked? linked?)
         (set! entry.tokens
           (vector (Token type: INVOKE issuer: "unit-issuer" audience: "unit-peer"
                          protocol: entry.protocol expire: 180)))
         (with-stream-io-lock p.mx
           (set! p.expire 110)
           (set! p.initiator? #t)
           (unwind-protect
             (begin
               (set! entry.control
                 (source#connection-opening-control! entry frame-open
                                                     [entry.protocol entry.required 8 [] (if linked? lease-mode-adaptive lease-mode-fixed)] #f))
               (proc entry))
             (begin
               (when entry.io (stream-io-abort! entry.io))
               (connection-scheduler-close! p.scheduler)))))))

   (def connection-opening-test
     (test-suite "Real connections: public OPEN and deterministic ownership boundaries"
       (test-case "linked OPEN crosses its captured expiry before selection or ACCEPT; fixed OPEN times out"
         (for-each
           (lambda (linked?)
             (for-each
               (lambda (sent?)
                 (let (now 100)
                   (parameterize ((source#current-unit-clock (lambda () now)))
                     (call-with-opening-unit linked?
                       (lambda ((entry : ConnectionOpening))
                         (using ((p entry.owner.parent :- ConnectionParent)
                                 (grant (vector-ref entry.tokens 0) :- Token))
                           (check (source#connection-opening-expiration entry) => 110)
                           (when sent?
                             (check (source#connection-opening-select! entry.control) => #t))
                           ;; Renew while the captured lease is live, then cross it
                           ;; with neither a selected lifetime nor StreamIO installed.
                           (set! p.expire 200)
                           (set! now 120)
                           (check entry.required => 110)
                           (check entry.expire => 0)
                           (check entry.io => #f)
                           (check (< entry.required now entry.deadline grant.expire p.expire) => #t)
                           (check (source#connection-opening-expiration entry) => (if linked? 200 110))
                           (if linked?
                             (check (source#connection-opening-check! entry) => (void))
                             (check-exception (source#connection-opening-check! entry) Closed?))
                           (unless sent?
                             (check (source#connection-opening-select! entry.control) => linked?))
                           (when (or sent? linked?)
                             (check (source#connection-dispatch-opening! entry.owner
                                                                         (FrameHeader type: frame-open-accept stream-id: entry.id payload-length: 8)
                                                                         (encode-frame-payload frame-open-accept [0 8]))
                                    => #t))
                           (check entry.cancelled? => (not linked?))
                           (check entry.accepted? => linked?)
                           (check entry.registered? => linked?)
                           (check (Queue-length p.scheduler.streams) => (if linked? 1 0))
                           (if linked?
                             (begin
                               (check entry.phase => 'accepted)
                               (check entry.error => #f)
                               (check entry.expire => grant.expire)
                               (check entry.io.expire => grant.expire)
                               (check-eq? entry.io.wake p.wake)
                               (check (source#connection-opening-expiration entry) => grant.expire))
                             (begin
                               (check entry.error ? Timeout?)
                               (check entry.io => #f)))
                           (check p.expire => 200)
                           (check p.closed? => #f)
                           (check p.scheduler.closed? => #f)))))))
               '(#f #t)))
           '(#t #f)))

       (test-case "linked ACCEPT still validates the selected grant and rejects its elapsed lifetime"
         (for-each
           (lambda (expire)
             (let (now 100)
               (parameterize ((source#current-unit-clock (lambda () now)))
                 (call-with-opening-unit #t
                   (lambda ((entry : ConnectionOpening))
                     (using (p entry.owner.parent :- ConnectionParent)
                       (Token-expire-set! (vector-ref entry.tokens 0) expire)
                       (check (source#connection-opening-select! entry.control) => #t)
                       (set! p.expire 200)
                       (set! now 120)
                       (check entry.io => #f)
                       (check (< now entry.deadline p.expire) => #t)
                       (check (source#connection-opening-check! entry) => (void))
                       (let (accept (lambda ()
                                      (source#connection-dispatch-opening! entry.owner
                                                                           (FrameHeader type: frame-open-accept stream-id: entry.id payload-length: 8)
                                                                           (encode-frame-payload frame-open-accept [0 8]))))
                         (if (= expire 109)
                           (check-exception (accept) IOError?)
                           (begin
                             (check (accept) => #t)
                             (check entry.cancelled? => #t)
                             (check entry.error ? Timeout?))))
                       (check entry.accepted? => #f)
                       (check entry.registered? => #f)
                       (check (Queue-length p.scheduler.streams) => 0)
                       (when entry.io (check entry.io.state.aborted? => #t))
                       (check p.closed? => #f)
                       (check p.scheduler.closed? => #f)))))))
           ;; Too short for the captured requirement; expired since then; exactly
           ;; at the current clock. Parent renewal must not extend any of them.
           '(109 110 119 120)))

       (test-case "ordinary encoding failure releases staging and preserves caller failure identity"
         (let ((control (APIMonitor)) (encoding-error (Error "Injected encoding failure")))
           (parameterize
               ((source#current-encoding-hook
                 (lambda (stage entry)
                   (when (eq? stage 'after)
                     (api-record! control 'encoded entry)
                     (api-await control 'fail (lambda (_) #t) 8)
                     (raise encoding-error)))))
             (call-with-api-networks 'unix
               (lambda ((a : Network) (b : Network) ma mb address start)
                 (let* ((addr (b.listen! (address "staging-finalizer")))
                        (conn (a.connect! (b.host) [addr])))
                   (unwind-protect
                     (let* ((caller (start (lambda () (source#connection-open-stream!
                                                       (interface-instance-object conn)
                                                       "/opening/finalizer/v0"))))
                            (entry (api-await control 'encoded (lambda (_) #t))))
                       (using ((entry :- ConnectionOpening)
                               (p entry.owner.parent :- ConnectionParent))
                         (opening-test-wait! caller entry.cv)
                         (with-stream-io-lock p.mx
                           (check entry.staging? => #t)
                           (check entry.control.state => 'staging)
                           (api-record! control 'fail #t)
                           ;; Encoding has thrown; this is the dynamic finalizer's
                           ;; acquisition, not the successful encoder's commit lock.
                           (opening-test-wait! entry.worker p.mx)
                           (check entry.staging? => #t)
                           (check p.scheduler.control-frames => 1))
                         (check-eq? (with-catch identity (cut thread-join!/error caller 3)) encoding-error)
                         (check (network-thread-join! entry.worker 3) => (void))
                         (with-stream-io-lock p.mx
                           (check-eq? entry.error encoding-error)
                           (check entry.staging? => #f)
                           (check entry.done? => #t)
                           (check entry.control.state => 'released)
                           (check entry.control.bytes => #u8())
                           (check p.scheduler.control-frames => 0)
                           (check p.scheduler.control-bytes => 0)
                           (check (Queue-length p.scheduler.controls) => 0)
                           (check p.closed? => #f))))
                     (api-record! control 'fail #t))))
               new-network opening-test-config))))

       (test-case "a returned stream callback earns exactly one close after a synchronous hook failure"
         (let ((control (APIMonitor)) (failure (Error "Injected post-callback failure")))
           (parameterize
               ((source#current-callback-return-hook
                 (lambda ((entry : ConnectionOpening))
                   (api-record! control 'returned entry)
                   (raise failure))))
             (call-with-api-networks 'unix
               (lambda ((a : Network) (b : Network) ma mb address start)
                 (let* ((addr (b.listen! (address "callback-return")))
                        (conn (a.connect! (b.host) [addr]))
                        (caller (start (lambda () (source#connection-open-stream!
                                                   (interface-instance-object conn)
                                                   "/opening/returned/v0")))))
                   (using ((entry (api-await control 'returned (lambda (_) #t)) :- ConnectionOpening)
                           (p entry.owner.parent :- ConnectionParent))
                     (check-eq? (with-catch identity (cut thread-join!/error caller 3)) failure)
                     (check (network-thread-join! entry.worker 3) => (void))
                     (with-stream-io-lock p.mx
                       (check-eq? entry.error failure)
                       (check entry.notified? => #t)
                       (check entry.cancelled? => #t)
                       (check entry.done? => #t)
                       (check entry.io.state.aborted? => #t)
                       (check (stream-io-retirable? entry.io) => #t)
                       (check p.closed? => #f))
                     (api-await ma 'stream-close (lambda (s) (eq? s entry.stream)))
                     (check (length (filter (lambda (event)
                                              (and (eq? (car event) 'stream-close)
                                                   (eq? (cadr event) entry.stream)))
                                            (APIMonitor-events ma))) => 1))
                   (check-eq? (a.connect! (b.host) []) conn)
                   (api-close! a b)
                   (api-check-pairs! ma)))
               new-network opening-test-config))))

       (test-case "NetworkJob shutdown joins the held callback before stream and connection close"
         (call-with-api-networks 'unix
           (lambda ((a : Network) (b : Network) ma mb address start)
             (let* ((control (APIMonitor)) (addr (b.listen! (address "shutdown-join")))
                    (conn (a.connect! (b.host) [addr])) (reverse (b.connect! (a.host) []))
                    (network (interface-instance-object b)))
               (APIMonitor-stream-hook-set! mb
                 (lambda (stream)
                   (api-record! control 'exposed stream)
                   (api-await control 'return (lambda (_) #t) 8)))
               (unwind-protect
                 (let* ((caller (start (lambda () (Connection-open-stream! conn "/opening/shutdown/v0"))))
                        (stream (api-await control 'exposed (lambda (_) #t))))
                   (using ((impl (interface-instance-object reverse) :- NetworkConnection)
                           (entry (opening-test-entry impl (Stream-protocol stream)) :- ConnectionOpening))
                     (let* ((job (do-with-lock (slot-ref network 'mutex)
                                   (find (lambda (job) (eq? (slot-ref job 'connection) impl))
                                         (slot-ref network 'jobs))))
                            (worker (slot-ref job 'worker))
                            ;; Discover the worker's native completion CV through
                            ;; a bounded reference join, not private Gambit slots.
                            (reference (start (lambda () (network-thread-join! entry.worker 8)))))
                       (let (deadline (+ (##current-time-point) 3))
                         (let loop ()
                           (let (state (thread-state reference))
                             (unless (and (thread-state-waiting? state)
                                          (condition-variable? (thread-state-waiting-for state)))
                               (when (>= (##current-time-point) deadline)
                                 (error "Reference join did not reach completion CV" state))
                               (thread-join!/error reference .001 'waiting)
                               (loop)))))
                       (let (join-cv (thread-state-waiting-for (thread-state reference)))
                         (Connection-close reverse)
                         (opening-test-wait! worker join-cv)
                         ;; Check retained ownership BEFORE releasing the callback.
                         (let-values (((connection retained? done?)
                                       (do-with-lock (slot-ref network 'mutex)
                                         (values (slot-ref job 'connection)
                                                 (not (not (memq job (slot-ref network 'jobs))))
                                                 (slot-ref job 'done?)))))
                           (check-eq? connection impl)
                           (check retained? => #t)
                           (check done? => #f))
                         (check entry.done? => #f)
                         (check (filter (lambda (event) (memq (car event) '(stream-close connection-close)))
                                        (APIMonitor-events mb)) => [])
                         (api-record! control 'return #t)
                         (check (thread-join!/error reference 3) => (void))
                         (check (network-thread-join! worker 3) => (void)))
                       (check entry.done? => #t)
                       (api-await mb 'stream-close (lambda (s) (eq? s stream)))
                       (api-await mb 'connection-close (lambda (c) (eq? c reverse)))
                       (let (connection (do-with-lock (slot-ref network 'mutex)
                                          (slot-ref job 'connection)))
                         (check connection => #f))))
                   ;; The other endpoint's native EOF failure is not necessarily Closed.
                   (using (remote (interface-instance-object conn) :- NetworkConnection)
                     (let (result (with-catch identity (cut thread-join!/error caller 3)))
                       (check-eq? result remote.parent.error))
                     (check remote.parent.closed? => #t))
                   (api-close! a b)
                   (check (opening-test-jobs a) => [])
                   (check (opening-test-jobs b) => [])
                   (api-check-pairs! ma)
                   (api-check-pairs! mb))
                 (api-record! control 'return #t))))
           new-network opening-test-config))

       (test-case "ACCEPT blocked on stream output observes pending and credential expiry before registration"
         (call-with-api-networks 'unix
           (lambda ((a : Network) (b : Network) ma mb address start)
             (let* ((control (APIMonitor)) (addr (b.listen! (address "accept-lock")))
                    (conn (a.connect! (b.host) [addr])) (reverse (b.connect! (a.host) []))
                    (sibling (Connection-open-stream! conn "/opening/accept-sibling/v0"))
                    (incoming (api-await mb 'stream-open
                                         (lambda (s) (equal? (Stream-protocol s) "/opening/accept-sibling/v0")))))
               (APIMonitor-stream-hook-set! mb
                 (lambda (stream)
                   (api-record! control 'exposed stream)
                   (api-await control 'return (lambda (id) (or (not id) (= id (Stream-id stream)))) 8)))
               (unwind-protect
                 (for-each
                   (lambda (credential?)
                     (let* ((protocol (if credential? "/opening/accept-credential/v0" "/opening/accept-deadline/v0"))
                            (caller (start (lambda () (Connection-open-stream! conn protocol))))
                            (stream (api-await control 'exposed (lambda (s) (equal? (Stream-protocol s) protocol)))))
                       (using ((impl (interface-instance-object reverse) :- NetworkConnection)
                               (p impl.parent :- ConnectionParent)
                               (entry (opening-test-entry impl protocol) :- ConnectionOpening)
                               (outgoing (opening-test-entry (interface-instance-object conn) protocol) :- ConnectionOpening)
                               (io entry.io :- StreamIO))
                         (with-stream-io-lock io.output-mx
                           (api-record! control 'return entry.id)
                           (opening-test-wait! p.writer-worker io.output-mx)
                           ;; The writer owns parent/input and has already passed
                           ;; its pre-lock expiry check. No timer can win this race.
                           (check-eq? (mutex-state p.mx) p.writer-worker)
                           (check-eq? (mutex-state io.input-mx) p.writer-worker)
                           (check entry.registered? => #f)
                           (check entry.phase => 'preparing)
                           (if credential?
                             (let (expired (- (current-time-seconds) 1))
                               (set! entry.expire expired)
                               (set! io.expire expired))
                             (set! entry.deadline (- (current-time-seconds) 1))))
                         (let (result (with-catch identity (cut thread-join!/error caller 3)))
                           (check result ? Closed?)
                           (check-eq? result outgoing.error))
                         (check (network-thread-join! entry.worker 3) => (void))
                         (check entry.cancelled? => #t)
                         ;; After selection declines registration, the admission
                         ;; worker may win cancellation with authorization Closed.
                         ;; Pending-deadline expiry must still report Timeout.
                         (check entry.error
                                ? (lambda (e) (or (Timeout? e) (and credential? (Closed? e)))))
                         (check entry.registered? => #f)
                         (check entry.accepted? => #f)
                         (check (eq? entry.phase 'accept-sent) => #f)
                         (check io.wake => #f)
                         (check io.state.aborted? => #t)
                         (check p.closed? => #f))
                       (check-eq? (a.connect! (b.host) []) conn)
                       (check (Writer-write (Stream-writer sibling) #u8(42)) => 1)
                       (let (bytes (make-u8vector 1))
                         (check (Reader-read (Stream-reader incoming) bytes 0 1 1) => 1)
                         (check bytes => #u8(42)))))
                   '(#f #t))
                 (api-record! control 'return #f))))
           new-network opening-test-config))

       (test-case "full pending capacity still treats malformed fresh OPEN outer fields as connection fatal"
         (call-with-api-networks 'unix
           (lambda ((a : Network) (b : Network) ma mb address start)
             (let* ((control (APIMonitor)) (addr (b.listen! (address "malformed-full")))
                    (conn (a.connect! (b.host) [addr])) (reverse (b.connect! (a.host) [])))
               (APIMonitor-stream-hook-set! mb
                 (lambda (stream)
                   (api-record! control 'exposed stream)
                   (api-await control 'return (lambda (_) #t) 8)))
               (unwind-protect
                 (let* ((caller (start (lambda () (Connection-open-stream! conn "/opening/full/v0"))))
                        (stream (api-await control 'exposed (lambda (_) #t))))
                   (using ((peer (interface-instance-object conn) :- NetworkConnection)
                           (impl (interface-instance-object reverse) :- NetworkConnection)
                           (p impl.parent :- ConnectionParent)
                           (entry (opening-test-entry impl (Stream-protocol stream)) :- ConnectionOpening))
                     (opening-test-wait! peer.parent.writer-worker peer.parent.wake.output-cv)
                     (Connection-set-output-timeout! conn (IOTimeout 4))
                     (with-stream-io-lock p.mx
                       (check (length (filter ConnectionOpening-pending? impl.openings)) => 1))
                     ;; A fresh same-parity ID, valid frame envelope, and bounded
                     ;; 21-byte fixed-mode OPEN with zero receive window. No tokens
                     ;; need unmarshalling. Serialize against the authentic idle writer.
                     (with-stream-io-lock peer.parent.mx
                       (let* ((id (+ peer.parent.local-open-id 2))
                              (header (encode-frame-header
                                       (FrameHeader type: frame-open stream-id: id payload-length: 21)))
                              (writer (StreamSocket-writer peer.parent.socket)))
                         (check (Writer-write writer header) => frame-header-size)
                         (check (Writer-write writer (make-u8vector 21 0)) => 21)))
                     (check (with-catch identity (cut network-thread-join! p.reader-worker 3)) ? IOError?)
                     (check-eq? (with-catch identity (cut network-thread-join! p.reader-worker 3)) p.error)
                     (check p.closed? => #t)
                     (check entry.registered? => #f)
                     (check entry.done? => #f)
                     (api-record! control 'return #t)
                     (check (network-thread-join! entry.worker 3) => (void))
                     (for-each opening-test-join! [p.worker p.writer-worker])
                     (let (result (with-catch identity (cut thread-join!/error caller 3)))
                       (check-eq? result peer.parent.error))
                     (check peer.parent.closed? => #t))
                   (api-close! a b)
                   (api-check-pairs! mb))
                 (api-record! control 'return #t))))
           (lambda (host context monitor limits: limits config: config)
             (new-network host context monitor config: config
                          limits: (NetworkLimits connection-limits:
                                                 (ConnectionLimits pending-streams: 1))))
           opening-test-config))

       (test-case "service reaps a retired stream after cancelling its final credit before incoming capacity"
         (call-with-api-networks 'unix
           (lambda ((a : Network) (b : Network) ma mb address start)
             (let* ((addr (b.listen! (address "final-credit")))
                    (conn (a.connect! (b.host) [addr])) (reverse (b.connect! (a.host) []))
                    (stream (Connection-open-stream! conn "/opening/final-credit/v0"))
                    (incoming (api-await mb 'stream-open
                                         (lambda (s) (equal? (Stream-protocol s) "/opening/final-credit/v0"))))
                    (barrier #f))
               (using ((impl (interface-instance-object conn) :- NetworkConnection)
                       (p impl.parent :- ConnectionParent)
                       (entry (opening-test-entry impl (Stream-protocol stream)) :- ConnectionOpening))
                 (unwind-protect
                   (begin
                     (check (Writer-write (Stream-writer incoming) #u8(42)) => 1)
                     (Writer-close (Stream-writer incoming))
                     (Writer-close (Stream-writer stream))
                     (check (Reader-read (Stream-reader incoming) (make-u8vector 1) 0 1 0) => 0)
                     ;; Retain unread data until both FINs and the local FIN borrow
                     ;; have finished. No metadata fabricates terminal stream state.
                     (opening-test-wait! p.worker p.wake.service-cv
                       (lambda ()
                         (with-stream-io-lock p.mx
                           (with-stream-io-lock entry.io.input-mx
                             (with-stream-io-lock entry.io.output-mx
                               (and entry.io.state.receive-fin?
                                    (eq? entry.io.state.output-state 'finished)))))))
                     (opening-test-wait! p.writer-worker p.wake.output-cv)
                     (let (credit #f)
                       (with-stream-io-lock p.mx
                         ;; An unfilled, never-emitted control gates only selection.
                         ;; Service still scans all streams and the live reservation
                         ;; remains charged until this test's bounded finalizer.
                         (set! barrier (connection-control-reserve! p.scheduler frame-open-reject entry.id 2 #t))
                         (let (bytes (make-u8vector 1))
                           (check (Reader-read (Stream-reader stream) bytes 0 1 1) => 1)
                           (check bytes => #u8(42)))
                         (set! credit (connection-scheduler-credit! p.scheduler entry.id))
                         (check credit ? ConnectionWork?)
                         (check (stream-io-retirable? entry.io) => #t))
                       (check (network-thread-join! entry.worker 3) => (void))
                       (opening-test-wait! p.worker p.wake.service-cv)
                       (opening-test-wait! p.writer-worker p.wake.output-cv)
                       (using (credit :- ConnectionWork)
                         (with-stream-io-lock p.mx
                           (check entry.done? => #t)
                           (check (not (not (memq entry impl.openings))) => #t)
                           (check credit.state => 'ready)
                           (with-stream-io-lock entry.io.input-mx
                             (with-stream-io-lock entry.io.output-mx
                               (set! entry.io.expire (- (current-time-seconds) 1))))
                           ;; Wake service alone. The idle writer cannot cancel the
                           ;; credit first, nor produce a second service wake.
                           (with-stream-io-lock p.wake.mx
                             (set! p.wake.service? #t)
                             (condition-variable-broadcast! p.wake.service-cv)))
                         (opening-test-wait! p.worker p.wake.service-cv
                           (lambda ()
                             (with-stream-io-lock p.mx (eq? credit.state 'released))))
                         (with-stream-io-lock p.mx
                           (check credit.state => 'released)
                           (check p.scheduler.control-frames => 1)
                           (check (ConnectionWork-state barrier) => 'reserved)
                           (check (memq entry impl.openings) => #f)
                           (check (Queue-length p.scheduler.streams) => 0)
                           (check p.closed? => #f))))
                     ;; Do not use a local open here: it has its own pre-admission
                     ;; reaper and would repair the bug before checking capacity.
                     (let* ((caller (start (lambda () (Connection-open-stream! reverse "/opening/after-credit/v0"))))
                            (replacement (api-await ma 'stream-open
                                                    (lambda (s) (equal? (Stream-protocol s) "/opening/after-credit/v0")))))
                       (with-stream-io-lock p.mx
                         (connection-control-cancel! barrier)
                         (stream-wake-signal! p.wake))
                       (let ((remote (thread-join!/error caller 3)) (bytes (make-u8vector 1)))
                         (check (Writer-write (Stream-writer remote) #u8(7)) => 1)
                         (check (Reader-read (Stream-reader replacement) bytes 0 1 1) => 1)
                         (check bytes => #u8(7)))))
                   (with-stream-io-lock p.mx
                     (when barrier (connection-control-cancel! barrier))
                     (stream-wake-signal! p.wake))))))
           (lambda (host context monitor limits: limits config: config)
             (new-network host context monitor config: config
                          limits: (NetworkLimits connection-limits:
                                                 (ConnectionLimits total-streams: 1 pending-streams: 1))))
           opening-test-config))

       (test-case "a queued public operation observes parent expiry before the idle timer"
         (for-each
           (lambda (open?)
             (call-with-api-networks 'unix
               (lambda ((a : Network) (b : Network) ma mb address start)
                 (let* ((addr (b.listen! (address "expiry")))
                        (conn (a.connect! (b.host) [addr]))
                        (other (b.connect! (a.host) []))
                        (stream (Connection-open-stream! conn "/opening/expiry-sibling/v0"))
                        (jobs (append (opening-test-jobs a) (opening-test-jobs b)))
                        (lease (Connection-expire conn)) (expired (- (current-time-seconds) 1)) (operation #f))
                   (using ((impl (interface-instance-object conn) :- NetworkConnection)
                           (p impl.parent :- ConnectionParent))
                     (opening-test-wait! p.writer-worker p.wake.output-cv)
                     (opening-test-wait! p.worker p.wake.service-cv)
                     (with-stream-io-lock p.mx
                       (set! operation
                         (start (lambda ()
                                  (if open?
                                    (Connection-open-stream! conn "/opening/expired/v0")
                                    (Connection-set-input-timeout! conn !NoTimeout)))))
                       (opening-test-wait! operation p.mx)
                       ;; Controlled stored deadline, not a public lease mutation:
                       ;; the authentic parent's lock is held across this boundary.
                       ;; Its idle timer still has the original future deadline, so
                       ;; only the already queued standard operation can observe it.
                       (check p.closed? => #f)
                       (check p.expire => lease)
                       (set! p.expire expired)
                       (opening-test-wait! p.worker p.wake.service-cv))
                     (check (with-catch identity (cut thread-join!/error operation 3)) ? Closed?)
                     ;; Neither Network.close nor a private close may repair a flag-
                     ;; only failure before checking the retained native transport.
                     (check-exception (StreamSocket-set-input-timeout! p.socket !NoTimeout) Closed?)
                     (for-each opening-test-join! [p.worker p.reader-worker p.writer-worker])
                     (api-await ma 'connection-close (lambda (c) (eq? c conn))))
                   ;; The public getter now reports the authoritative installed
                   ;; parent lease, including this fixture's controlled mutation.
                   (check (Connection-expire conn) => expired)
                   (check-exception (Writer-write (Stream-writer stream) #u8(1)) Closed?)
                   (api-await mb 'connection-close (lambda (c) (eq? c other)))
                   (api-close! a b)
                   (for-each opening-test-join! jobs)
                   (check (opening-test-jobs a) => [])
                   (check (opening-test-jobs b) => [])))
               new-network opening-test-config))
           '(#f #t)))

       (test-case "pending expiry wins over a late ACK under the real dispatch lock, not over siblings"
         (call-with-api-networks 'unix
           (lambda ((a : Network) (b : Network) ma mb address start)
             (let* ((control (APIMonitor)) (addr (b.listen! (address "late-ack")))
                    (conn (a.connect! (b.host) [addr]))
                    (sibling (Connection-open-stream! conn "/opening/ack-sibling/v0"))
                    (incoming (api-await mb 'stream-open
                                         (lambda (s) (equal? (Stream-protocol s) "/opening/ack-sibling/v0")))))
               (APIMonitor-stream-hook-set! mb
                 (lambda (stream)
                   (api-record! control 'incoming stream)
                   (api-await control 'release (lambda (id) (or (not id) (= id (Stream-id stream)))))))
               (unwind-protect
                 (for-each
                   (lambda (lease?)
                     (let* ((protocol (if lease? "/opening/late-lease/v0" "/opening/late-operation/v0"))
                            (caller (start (lambda () (Connection-open-stream! conn protocol))))
                            (exposed (api-await control 'incoming
                                                (lambda (s) (equal? (Stream-protocol s) protocol)))))
                       (using ((impl (interface-instance-object conn) :- NetworkConnection)
                               (p impl.parent :- ConnectionParent)
                               (entry (opening-test-entry impl protocol) :- ConnectionOpening))
                         (opening-test-wait! caller entry.cv)
                         (opening-test-wait! entry.worker entry.cv)
                         ;; Deterministic dispatch seam: the remote callback keeps
                         ;; its real ACCEPT off the socket. This driver takes the
                         ;; actual parent lock ahead of BOTH pending waiters, then
                         ;; invokes the reader's actual pending-frame dispatcher.
                         (with-stream-io-lock p.mx
                           (check entry.phase => 'sent)
                           (check entry.cancelled? => #f)
                           (if lease?
                             (set! entry.required (- (current-time-seconds) 1))
                             (set! entry.deadline (- (current-time-seconds) 1)))
                           (check
                            (connection-dispatch-opening! impl
                                                          (FrameHeader type: frame-open-accept stream-id: entry.id payload-length: 8)
                                                          ;; Valid ACK for required-expiry; invalid credential
                                                          ;; index for operation-expiry must never be interpreted.
                                                          (encode-frame-payload frame-open-accept [(if lease? 0 #xffffffff) 8]))
                            => #t)
                           (check entry.cancelled? => #t)
                           (check entry.error ? Timeout?)
                           (check entry.io => #f)
                           (check entry.registered? => #f)
                           (check p.closed? => #f)
                           (check p.scheduler.closed? => #f))
                         (check (with-catch identity (cut thread-join!/error caller 3)) ? Timeout?)
                         (opening-test-join! entry.worker))
                       (api-record! control 'release (Stream-id exposed))
                       (check-eq? (a.connect! (b.host) []) conn)
                       (check (Writer-write (Stream-writer sibling) #u8(42)) => 1)
                       (let (bytes (make-u8vector 1))
                         (check (Reader-read (Stream-reader incoming) bytes 0 1 1) => 1)
                         (check bytes => #u8(42)))))
                   '(#t #f))
                 (begin
                   (APIMonitor-stream-hook-set! mb void)
                   (api-record! control 'release #f)))))
           new-network opening-test-config))

       (test-case "public close aborts exposed unregistered StreamIO before its held callback returns"
         (call-with-api-networks 'unix
           (lambda ((a : Network) (b : Network) ma mb address start)
             (let* ((control (APIMonitor)) (addr (b.listen! (address "pending-close")))
                    (conn (a.connect! (b.host) [addr]))
                    (reverse (b.connect! (a.host) []))
                    (sibling (Connection-open-stream! conn "/opening/close-sibling/v0"))
                    (jobs (append (opening-test-jobs a) (opening-test-jobs b)))
                    (closing #f) (aborting #f))
               (APIMonitor-stream-hook-set! mb
                 (lambda (stream)
                   ;; This real public Writer allocates storage before registration;
                   ;; no wire DATA may be selected until ACCEPT has been sent.
                   (check (Writer-write (Stream-writer stream) #u8(1 2 3 4)) => 4)
                   (api-record! control 'exposed stream)
                   (api-await control 'release (lambda (_) #t))))
               (unwind-protect
                 (let* ((caller (start (lambda () (Connection-open-stream! conn "/opening/close-pending/v0"))))
                        (exposed (api-await control 'exposed (lambda (_) #t))))
                   (using ((impl (interface-instance-object reverse) :- NetworkConnection)
                           (p impl.parent :- ConnectionParent)
                           (entry (opening-test-entry impl (Stream-protocol exposed)) :- ConnectionOpening)
                           (io entry.io :- StreamIO))
                     (with-stream-io-lock io.output-mx
                       (check entry.pending? => #t)
                       (check entry.registered? => #f)
                       (check io.wake => #f)
                       (check (u8vector-length io.state.send.bytes) => 8)
                       (set! closing (start (lambda () (Connection-close reverse))))
                       ;; Native close wakes the real reader/writer. Whichever
                       ;; closer now owns BOTH parent and input, and is waiting
                       ;; for this held output lock, owns the pending IO abort.
                       (let (deadline (+ (##current-time-point) 3))
                         (set! aborting
                           (let loop ()
                             (let* ((worker (mutex-state p.mx))
                                    (state (and (thread? worker) (thread-state worker))))
                               (if (and state (memq worker [closing p.worker p.reader-worker p.writer-worker])
                                        (thread-state-waiting? state)
                                        (eq? (thread-state-waiting-for state) io.output-mx)
                                        (eq? (mutex-state io.input-mx) worker)
                                        entry.cancelled?)
                                 worker
                                 (begin
                                   (when (>= (##current-time-point) deadline)
                                     (error "No parent close owner reached the pending IO abort" worker state))
                                   (thread-join!/error closing .001 'waiting)
                                   (loop)))))))
                       (opening-test-wait! aborting io.output-mx)
                       (check-eq? (mutex-state p.mx) aborting)
                       (check-eq? (mutex-state io.input-mx) aborting)
                       (check entry.cancelled? => #t)
                       (check io.state.aborted? => #f)
                       (check-exception (StreamSocket-set-input-timeout! p.socket !NoTimeout) Closed?))
                     (check (thread-join!/error closing 3) => (void))
                     ;; The callback is STILL held. Neither its worker finalizer nor
                     ;; Network.close can repair a missing abort before these
                     ;; assertions. The first cancelled? publication is insufficient.
                     (check io.state.aborted? => #t)
                     (check io.state.send.bytes => #u8())
                     (check io.state.receive.bytes => #u8())
                     (check (stream-io-retirable? io) => #t)
                     (check entry.registered? => #f)
                     (check entry.done? => #f)
                     (check-eq? entry.error p.error)
                     (api-record! control 'release #t)
                     (check (network-thread-join! entry.worker 3) => (void))
                     (for-each opening-test-join! [p.worker p.reader-worker p.writer-worker]))
                   ;; The other endpoint observes native EOF, not our local
                   ;; Closed value. Its first transport failure stays exact.
                   (using (remote (interface-instance-object conn) :- NetworkConnection)
                     (let (result (with-catch identity (cut thread-join!/error caller 3)))
                       (check-eq? result remote.parent.error))
                     (check remote.parent.closed? => #t))
                   (check-exception (Writer-write (Stream-writer sibling) #u8(9)) Closed?)
                   (api-close! a b)
                   (for-each opening-test-join! jobs)
                   (check (opening-test-jobs a) => [])
                   (check (opening-test-jobs b) => [])
                   (api-check-pairs! ma)
                   (api-check-pairs! mb))
                 (api-record! control 'release #t))))
           new-network opening-test-config))

       (test-case "incoming admission observes parent expiry and closes a backpressured native writer"
         (call-with-api-networks 'unix
           (lambda ((a : Network) (b : Network) ma mb address start)
             (let* ((control (APIMonitor)) (addr (b.listen! (address "worker-expiry")))
                    (conn (a.connect! (b.host) [addr])) (reverse (b.connect! (a.host) []))
                    (sibling (Connection-open-stream! conn "/opening/worker-sibling/v0"))
                    (jobs (append (opening-test-jobs a) (opening-test-jobs b))))
               (APIMonitor-stream-hook-set! ma
                 (lambda (stream)
                   (api-record! control 'exposed stream)
                   (api-await control 'release (lambda (_) #t) 20)))
               (unwind-protect
                 (let* ((caller (start (lambda () (Connection-open-stream! reverse "/opening/worker-pending/v0"))))
                        (exposed (api-await control 'exposed (lambda (_) #t))))
                   (using ((impl (interface-instance-object conn) :- NetworkConnection)
                           (peer (interface-instance-object reverse) :- NetworkConnection)
                           (p impl.parent :- ConnectionParent)
                           (entry (opening-test-entry impl (Stream-protocol exposed)) :- ConnectionOpening)
                           (live (opening-test-entry impl "/opening/worker-sibling/v0") :- ConnectionOpening)
                           (remote (opening-test-entry peer "/opening/worker-sibling/v0") :- ConnectionOpening))
                     (StreamSocket-setsockopt p.socket SOL_SOCKET.SO_SNDBUF 4096)
                     (StreamSocket-setsockopt peer.parent.socket SOL_SOCKET.SO_RCVBUF 4096)
                     (Stream-set-output-timeout! sibling !NoTimeout)
                     ;; The real peer can read one frame, then must acquire this
                     ;; stream's input lock before reading more from the socket.
                     (with-stream-io-lock remote.io.input-mx
                       (let ((sending
                              (start (lambda ()
                                       (let (bytes (make-u8vector 65536 42))
                                         ;; Finite 4 MiB fill bound; native queues are
                                         ;; much smaller than the advertised window.
                                         (let loop ((left 64) (offset 0))
                                           (when (= left 0)
                                             (error "Public socket writer did not backpressure"))
                                           (if (= offset 65536)
                                             (loop (- left 1) 0)
                                             (loop left (+ offset (Writer-write (Stream-writer sibling) bytes offset 65536)))))))))
                             (borrow #f))
                         (opening-test-wait! peer.parent.reader-worker remote.io.input-mx)
                         (check-eq? (mutex-state peer.parent.mx) peer.parent.reader-worker)
                         ;; As in connection-framed-test, in-flight DATA plus a
                         ;; worker wait outside ALL scheduler/stream locks identifies
                         ;; actual native output, not application flow-control wait.
                         (let (deadline (+ (##current-time-point) 3))
                           (let loop ()
                             (unless
                                 (with-stream-io-lock p.mx
                                   (let ((work p.scheduler.in-flight) (state (thread-state p.writer-worker)))
                                     (and work (= (ConnectionWork-type work) frame-data)
                                          (thread-state-waiting? state)
                                          (not (memq (thread-state-waiting-for state)
                                                     [p.mx p.wake.mx p.wake.output-cv live.io.input-mx live.io.output-mx]))
                                          (begin (set! borrow work) #t))))
                               (when (>= (##current-time-point) deadline)
                                 (error "Framed writer did not reach native backpressure"))
                               (network-thread-join! p.writer-worker .001 'writing)
                               (loop))))
                         (opening-test-wait! sending live.io.output-cv)
                         (opening-test-wait! p.worker p.wake.service-cv)
                         (opening-test-wait! live.worker live.cv)
                         (using (borrow :- ConnectionWork)
                           (with-stream-io-lock p.mx
                             (with-stream-io-lock p.wake.mx
                               (check p.closed? => #f)
                               (check entry.registered? => #f)
                               (check entry.cancelled? => #f)
                               (check entry.notified? => #f)
                               (api-record! control 'release #t)
                               (opening-test-wait! entry.worker p.mx)
                               ;; Test metadata only. This actual admission worker
                               ;; is queued before the timer; the native writer cannot
                               ;; finish because the peer input lock is still held.
                               (set! p.expire (- (current-time-seconds) 1))
                               (mutex-unlock! p.mx)
                               ;; Retain wake, not parent: a correct worker closes
                               ;; native IO BEFORE waiting here. The old local-only
                               ;; cancellation instead blocked here with IO still open.
                               (opening-test-wait! entry.worker p.wake.mx)
                               (check p.closed? => #t)
                               (check entry.notified? => #t)
                               (check-exception (StreamSocket-set-input-timeout! p.socket !NoTimeout) Closed?)
                               (check borrow.state => 'in-flight)
                               (check-eq? borrow.bytes live.io.state.send.bytes)))
                           ;; The peer still cannot drain the socket. Only native
                           ;; close can let this writer finish its owned DATA cleanup.
                           (check-eq? (with-catch identity (cut network-thread-join! p.writer-worker 3)) p.error)
                           (check p.error ? Closed?)
                           (check (with-catch identity (cut thread-join!/error sending 3)) ? Closed?)
                           (check (network-thread-join! entry.worker 3) => (void))
                           (for-each
                             (lambda (worker)
                               (check (with-catch identity (cut network-thread-join! worker 3))
                                      ? (lambda (result) (or (eq? result (void)) (eq? result p.error)))))
                             [p.worker p.reader-worker])
                           (check borrow.state => 'released)
                           (check borrow.bytes => #u8())
                           (check live.io.state.in-flight => 0)
                           (check live.io.state.send.bytes => #u8())
                           (check entry.io.state.aborted? => #t)))))
                   (using (remote (interface-instance-object reverse) :- NetworkConnection)
                     (let (result (with-catch identity (cut thread-join!/error caller 3)))
                       (check-eq? result remote.parent.error))
                     (check remote.parent.closed? => #t))
                   (api-close! a b)
                   (for-each opening-test-join! jobs)
                   (check (opening-test-jobs a) => [])
                   (check (opening-test-jobs b) => []))
                 (api-record! control 'release #t))))
           (lambda (host context monitor limits: limits config: config)
             (new-network host context monitor config: config
                          limits: (NetworkLimits connection-limits:
                                                 (ConnectionLimits data-payload: 65536
                                                                   stream-limits: (StreamLimits recv-window: 1048576 outbound-buffer: 65536)))))
           opening-test-config))

       (test-case "encoding owns control budget before and after serialization, through cancel and close"
         (let (control (APIMonitor))
           (parameterize
               ((source#current-encoding-hook
                 (lambda (stage (entry : ConnectionOpening))
                   (api-record! control stage entry)
                   (when (or (and (eq? stage 'before) (equal? entry.protocol "/opening/staging-first/v0"))
                             (and (eq? stage 'after) (equal? entry.protocol "/opening/staging-second/v0")))
                     (api-await control 'release (lambda (protocol) (equal? protocol entry.protocol)))))))
             (call-with-api-networks 'unix
               (lambda ((a : Network) (b : Network) ma mb address start)
                 (let* ((addr (b.listen! (address "staging"))) (conn (a.connect! (b.host) [addr]))
                        (sibling (Connection-open-stream! conn "/opening/staging-sibling/v0"))
                        (incoming (api-await mb 'stream-open
                                             (lambda (s) (equal? (Stream-protocol s) "/opening/staging-sibling/v0")))))
                   (using ((impl (interface-instance-object conn) :- NetworkConnection)
                           (p impl.parent :- ConnectionParent))
                     (unwind-protect
                       (let* ((first (start (lambda () (source#connection-open-stream! impl "/opening/staging-first/v0"))))
                              (e1 (api-await control 'before (lambda (e) #t)))
                              (second (start (lambda () (source#connection-open-stream! impl "/opening/staging-second/v0"))))
                              (e2 (api-await control 'after
                                             (lambda (e) (equal? (ConnectionOpening-protocol e) "/opening/staging-second/v0")))))
                         (using ((e1 :- ConnectionOpening) (e2 :- ConnectionOpening))
                           (opening-test-wait! first e1.cv)
                           (with-stream-io-lock p.mx
                             (check e1.staging? => #t)
                             (check e2.staging? => #t)
                             (check e1.control.state => 'staging)
                             (check e2.control.state => 'staging)
                             (check (Queue-length p.scheduler.controls) => 0)
                             (check e1.id => 0)
                             (check e2.id => 0)
                             (check p.scheduler.control-frames => 2)
                             (check p.scheduler.control-bytes => (* 2 (+ frame-header-size 4096))))
                           (let (refused (start (lambda () (source#connection-open-stream! impl "/opening/staging-refused/v0"))))
                             (check (with-catch identity (cut thread-join!/error refused 3)) ? IOError?))
                           (check (map car (APIMonitor-events control)) => '(after before before))
                           (opening-test-wait! first e1.cv)
                           (let (failure (Closed "Cancelled staged OPEN"))
                             (with-stream-io-lock p.mx
                               (connection-opening-cancel! e1 failure reason-cancelled #t))
                             (check-eq? (with-catch identity (cut thread-join!/error first 3)) failure))
                           (with-stream-io-lock p.mx
                             (check e1.cancelled? => #t)
                             (check e1.done? => #f)
                             (check e1.pending? => #t)
                             (check e1.control.state => 'staging)
                             (check (Queue-length p.scheduler.controls) => 0)
                             (check p.scheduler.control-frames => 2)
                             (check p.scheduler.control-bytes => (* 2 (+ frame-header-size 4096))))
                           ;; More than one receive window must cross the sibling:
                           ;; local WINDOW-UPDATEs have to pass both held encoders,
                           ;; including the cancelled one, to unblock the real peer.
                           (let* ((bytes (make-u8vector 24 42)) (received (make-u8vector 24))
                                  (sending
                                   (start (lambda ()
                                            (let loop ((offset 0))
                                              (when (< offset 24)
                                                (loop (+ offset (Writer-write (Stream-writer incoming) bytes offset 24)))))
                                            (Writer-close (Stream-writer incoming))))))
                             (check (Reader-read (Stream-reader sibling) received 0 24 24) => 24)
                             (check received => bytes)
                             (check (Reader-read (Stream-reader sibling) (make-u8vector 1) 0 1 0) => 0)
                             (check (thread-join!/error sending 3) => (void)))
                           (opening-test-wait! p.worker p.wake.service-cv
                             (lambda ()
                               (with-stream-io-lock p.mx
                                 (= p.scheduler.control-frames 2))))
                           ;; FIN on the staging side must also be selectable.
                           (let (fin (start (lambda () (Writer-close (Stream-writer sibling)))))
                             (check (thread-join!/error fin 3) => (void))
                             (check (Reader-read (Stream-reader incoming) (make-u8vector 1) 0 1 0) => 0))
                           (with-stream-io-lock p.mx
                             (check e1.staging? => #t)
                             (check e1.cancelled? => #t)
                             (check e1.done? => #f)
                             (check e2.staging? => #t)
                             (check e1.control.state => 'staging)
                             (check e2.control.state => 'staging)
                             (check p.scheduler.closed? => #f)
                             (check p.scheduler.control-frames => 2)
                             (check p.scheduler.control-bytes => (* 2 (+ frame-header-size 4096))))
                           (Connection-close conn)
                           (check (with-catch identity (cut thread-join!/error second 3)) ? Closed?)
                           (with-stream-io-lock p.mx
                             (check e2.cancelled? => #t)
                             (check e2.done? => #f)
                             (check e1.staging? => #t)
                             (check e2.staging? => #t)
                             (check e1.control.state => 'staging)
                             (check e2.control.state => 'staging)
                             (check (Queue-length p.scheduler.controls) => 0)
                             (check p.scheduler.control-frames => 2)
                             (check p.scheduler.control-bytes => (* 2 (+ frame-header-size 4096))))
                           (api-record! control 'release e1.protocol)
                           (api-record! control 'release e2.protocol)
                           (opening-test-join! e1.worker)
                           (opening-test-join! e2.worker)
                           (with-stream-io-lock p.mx
                             (check e1.staging? => #f)
                             (check e2.staging? => #f)
                             (check e1.control.state => 'released)
                             (check e2.control.state => 'released)
                             (check e1.control.bytes => #u8())
                             (check e2.control.bytes => #u8())
                             (check p.scheduler.control-frames => 0)
                             (check p.scheduler.control-bytes => 0)
                             (check (Queue-length p.scheduler.controls) => 0))))
                       (begin
                         (api-record! control 'release "/opening/staging-first/v0")
                         (api-record! control 'release "/opening/staging-second/v0"))))))
               (lambda (host context monitor limits: limits config: config)
                 (new-network host context monitor config: config
                              limits: (NetworkLimits connection-limits:
                                                     ;; 48 bytes allow bounded credit/FIN progress, but
                                                     ;; cannot admit a third OPEN's fixed protocol fields.
                                                     (ConnectionLimits control-payload: 4096 pending-control-frames: 4
                                                                       pending-control-bytes: (+ 48 (* 2 (+ frame-header-size 4096)))
                                                                       pending-streams: 4 data-payload: 4
                                                                       stream-limits: (StreamLimits recv-window: 8 outbound-buffer: 8)))))
               opening-test-config))))

       (test-case "reverse preparation order preserves wire IDs and callback cancellation retains admission"
         (let (control (APIMonitor))
           (parameterize
               ((source#current-encoding-hook
                 (lambda (stage (entry : ConnectionOpening))
                   (when (eq? stage 'before)
                     (api-record! control 'preparing entry)
                     (when (equal? entry.protocol "/opening/order-first/v0")
                       (api-await control 'encode-first (lambda (_) #t)))))))
             (call-with-api-networks 'unix
               (lambda ((a : Network) (b : Network) ma mb address start)
                 (let* ((addr (b.listen! (address "wire-order")))
                        (conn (a.connect! (b.host) [addr]))
                        (reverse (b.connect! (a.host) [])))
                   (APIMonitor-stream-hook-set! mb
                     (lambda (stream)
                       (when (= (Stream-direction stream) DIRECTION-IN)
                         (api-record! control 'incoming stream)
                         (api-await control 'release (lambda (id) (or (not id) (= id (Stream-id stream))))))))
                   (unwind-protect
                     (using ((impl (interface-instance-object conn) :- NetworkConnection)
                             (peer (interface-instance-object reverse) :- NetworkConnection)
                             (p impl.parent :- ConnectionParent))
                       (let* ((first (start (lambda () (source#connection-open-stream! impl "/opening/order-first/v0"))))
                              (e1 (api-await control 'preparing (lambda (_) #t)))
                              (second (start (lambda () (source#connection-open-stream! impl "/opening/order-second/v0"))))
                              (e2 (api-await control 'preparing
                                             (lambda (e) (equal? (ConnectionOpening-protocol e) "/opening/order-second/v0")))))
                         (using ((e1 :- ConnectionOpening) (e2 :- ConnectionOpening))
                           ;; The second encoder finishes first. Its real OPEN
                           ;; must reach the peer while the first remains staged,
                           ;; not queued as a barrier to ready protocol controls.
                           (let (early (api-await control 'incoming
                                                  (lambda (s) (equal? (Stream-protocol s) e2.protocol))))
                             (check (Stream-id early) => 1))
                           (opening-test-wait! p.writer-worker p.wake.output-cv)
                           (with-stream-io-lock p.mx
                             (check e1.control.state => 'staging)
                             (check e2.control.state => 'released)
                             (check e2.phase => 'sent)
                             (check (Queue-length p.scheduler.controls) => 0)
                             (check e1.id => 0)
                             (check e2.id => 1)
                             (check p.local-open-id => 1))
                           (api-record! control 'encode-first #t)
                           (let* ((s1 (api-await control 'incoming
                                                 (lambda (s) (equal? (Stream-protocol s) e1.protocol))))
                                  (s2 (api-await control 'incoming
                                                 (lambda (s) (equal? (Stream-protocol s) e2.protocol))))
                                  (pending (opening-test-entry peer e1.protocol)))
                             (check (Stream-id s1) => 3)
                             (check (Stream-id s2) => 1)
                             (check e1.id => (Stream-id s1))
                             (check e2.id => (Stream-id s2))
                             (with-stream-io-lock peer.parent.mx
                               (check peer.parent.peer-open-id => 3)
                               (check (length (filter ConnectionOpening-pending? peer.openings)) => 2))
                             ;; Both incoming on-open callbacks are exposed but not
                             ;; yet returned. They consume the same pending limit as
                             ;; a local outgoing call on this real public Connection.
                             (check-exception (Connection-open-stream! reverse "/opening/callback-full/v0") IOError?)
                             (opening-test-wait! first e1.cv)
                             (let (failure (Closed "Cancelled pending OPEN"))
                               (with-stream-io-lock p.mx
                                 (connection-opening-cancel! e1 failure reason-cancelled #t))
                               (check-eq? (with-catch identity (cut thread-join!/error first 3)) failure))
                             (using (pending :- ConnectionOpening)
                               (opening-test-wait! pending.worker (slot-ref control 'cv)
                                 (lambda ()
                                   (with-stream-io-lock peer.parent.mx pending.cancelled?)))
                               (with-stream-io-lock peer.parent.mx
                                 (check pending.pending? => #t)
                                 (check pending.done? => #f)
                                 (check (length (filter ConnectionOpening-pending? peer.openings)) => 2))
                               (check-exception (Connection-open-stream! reverse "/opening/cancelled-still-full/v0") IOError?)
                               (api-record! control 'release (Stream-id s1))
                               (opening-test-join! pending.worker))
                             (opening-test-join! e1.worker)
                             (opening-test-wait! p.worker p.wake.service-cv
                               (lambda ()
                                 (with-stream-io-lock p.mx (not (memq e1 impl.openings)))))
                             ;; Only actual callback/worker cleanup frees the slot.
                             ;; Keep the second callback held during this admission.
                             (let* ((replacement (Connection-open-stream! reverse "/opening/after-cleanup/v0"))
                                    (received (api-await ma 'stream-open
                                                         (lambda (s) (equal? (Stream-protocol s) "/opening/after-cleanup/v0"))))
                                    (bytes (make-u8vector 1)))
                               (check (Writer-write (Stream-writer replacement) #u8(7)) => 1)
                               (check (Reader-read (Stream-reader received) bytes 0 1 1) => 1)
                               (check bytes => #u8(7)))
                             (api-record! control 'release (Stream-id s2))
                             (check (thread-join!/error second 3) ? Stream?)
                             (check-eq? (a.connect! (b.host) []) conn)))))
                     (begin
                       (api-record! control 'encode-first #t)
                       (APIMonitor-stream-hook-set! mb void)
                       (api-record! control 'release #f)))))
               (lambda (host context monitor limits: limits config: config)
                 (new-network host context monitor config: config
                              limits: (NetworkLimits connection-limits:
                                                     (ConnectionLimits control-payload: 4096 pending-control-frames: 8
                                                                       pending-control-bytes: (* 2 (+ frame-header-size 4096))
                                                                       pending-streams: 2))))
               opening-test-config)))))))
  (else))
