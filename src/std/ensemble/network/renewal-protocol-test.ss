;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Renewal commitment, output ownership and bounded preparation on real networks
(import :std/build-config)
(cond-expand
  (config-have-sqlite
   (import :std/test
           :std/error
           :std/interface
           :std/io
           :std/struct/queue
           :std/sync/threads
           :std/time/time
           :std/time/timeout
           ../network
           ../ucan/interface
           ./auth
           ./connection
           ./handshake
           ./renewal
           ./stream
           ./wire
           ./thread
           (only-in "./network-api-test.ss"
                    APIMonitor
                    call-with-api-networks
                    api-record!
                    api-await
                    api-close!)
           (only-in "./renewal-test.ss"
                    renewal-wait!
                    renewal-event-count
                    renewal-test-entry
                    renewal-pulse!
                    renewal-stream-identities
                    renewal-check-identities!
                    renewal-inject!
                    renewal-disallow-new!))
   (export renewal-protocol-test)

   ;; Retain the compiled Connection classes, scheduler, service, renewal dispatcher
   ;; and lifecycle owners. Load transport startup, release and renewal preparation
   ;; dependencies. The Network source changes only its activation
   ;; binding and checked implement bindings, as in network-api-test.ss.
   ;;
   ;; selected: next! has committed ownership, before any header byte is written.
   ;; written: both native writes returned, before the writer's finally releases.
   ;; encoding: real grants and staging already exist, before bounded serialization.
   ;; All three hooks run outside parent/stream locks, on the original worker.
   ;; Transition hooks observe publication/cancellation and late release under
   ;; parent mx; only the worker's complete-wait hook runs outside it. Hooks raise
   ;; ordinary synchronous errors, never test-runner escape continuations.
   (defsyntax (renewal-boundary-modules stx)
     (syntax-case stx ()
       ((_ transport network connection-path network-path)
        (let ((names '(connection-activate! connection-parent-start!
                                            connection-parent-reader-thread connection-parent-dispatch!
                                            connection-parent-writer-thread connection-transport-write!
                                            connection-parent-check-live! connection-parent-release-owned!
                                            connection-parent-release! connection-control-fill!
                                            connection-work-release! connection-opening-released!
                                            connection-renewal-released! connection-work-network
                                            connection-renewal-complete!
                                            connection-scheduler-find connection-stream-reset!
                                            connection-renewal-entry connection-renewal-expire
                                            connection-renewal-send! connection-renewal-fail!
                                            connection-renewal-live? connection-renewal-check!
                                            connection-renewal-slot? connection-renewal-start!
                                            connection-renewal-settle! connection-renewal-result!
                                            connection-renewal-encode! connection-renewal-await!
                                            connection-renewal-thread connection-renewal-launch!))
              (loaded []) (selected 0) (written 0) (encoders 0) (released 0)
              (control-owners 0) (scope-owners 0) (fills 0) (completions 0) (finalizers 0)
              (definition #f) (cancellations 0) (fill-encoders 0) (fill-cancellations 0)
              (activation-imports 0) (implementations 0))
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
             ((and (eq? definition 'connection-work-release!)
                   (pair? form) (eq? (car form) 'try))
              ;; Observe entry, not a copied release algorithm or an allocation
              ;; benchmark. Protection must be established while work is owned.
              `(begin
                 ((current-protocol-transition-hook) 'release-protection
                  (connection-work-network work) work.renewal work)
                 (try ,@(map instrument (cdr form)))))
             ((and (eq? definition 'connection-control-fill!)
                   (equal? form '(encode-frame-payload work.type fields limits: work.owner.limits)))
              (set! fill-encoders (+ fill-encoders 1))
              `(begin ((current-protocol-transition-hook) 'fill-encode (connection-work-network work) work.renewal work) ,form))
             ((and (eq? definition 'connection-control-fill!)
                   (equal? form '(connection-control-cancel! work)))
              (set! fill-cancellations (+ fill-cancellations 1))
              `(begin ((current-protocol-transition-hook) 'fill-cancel (connection-work-network work) work.renewal work) ,form))
             ((and (eq? definition 'connection-renewal-send!)
                   (equal? form '(connection-control-cancel! work)))
              (set! cancellations (+ cancellations 1))
              `(begin ((current-protocol-transition-hook) 'cancel self round work) ,form))
             ((equal? form '(set! round.controls (cons work round.controls)))
              (set! control-owners (+ control-owners 1))
              `(begin ((current-protocol-transition-hook) 'control-owner self round work) ,form))
             ((equal? form '(set! round.scope.owned (cons round round.scope.owned)))
              (set! scope-owners (+ scope-owners 1))
              `(begin ((current-protocol-transition-hook) 'scope-owner self round round.staging-work) ,form))
             ((equal? form '(connection-control-fill! work fields))
              (set! fills (+ fills 1))
              `(begin ((current-protocol-transition-hook) 'fill self round work) ,form))
             ((equal? form '(connection-renewal-await! self round 'complete))
              (set! completions (+ completions 1))
              `(begin ((current-protocol-transition-hook) 'complete self round #f) ,form))
             ((equal? form '(connection-renewal-released! work))
              (set! finalizers (+ finalizers 1))
              `(begin ((current-protocol-transition-hook) 'released (connection-work-network work) work.renewal work) ,form))
             ((equal? form '(connection-work-release! work self.expire))
              (set! released (+ released 1))
              `(let (result ,form) ((current-protocol-release-hook) self work) result))
             ((equal? form '(connection-transport-write! writer work.header 0 frame-header-size))
              (set! selected (+ selected 1))
              `(begin ((current-protocol-io-hook) 'selected self work) ,form))
             ((equal? form '(connection-transport-write! writer work.bytes work.start work.end))
              (set! written (+ written 1))
              `(begin ,form ((current-protocol-io-hook) 'written self work)))
             ((equal? form '(encode-auth-bundle tokens (fx- work.size (fx- base 4))))
              (set! encoders (+ encoders 1))
              `(begin ((current-protocol-encoding-hook) self round work tokens) ,form))
             ((pair? form) (cons (instrument (car form)) (instrument (cdr form))))
             (else form)))
          (def (network-import form)
            (cond
             ((eq? form ':std/ensemble/network/connection)
              (set! activation-imports (+ activation-imports 1))
              '(except-in :std/ensemble/network/connection
                          connection-activate!))
             ((pair? form) (map network-import form))
             (else form)))
          (def (network-form form)
            (case (and (pair? form) (car form))
              ((export) '(begin))
              ((import) (network-import (absolute-import form)))
              ((implement)
               (set! implementations (+ implementations 1))
               `(implement ,(cadr form) ,(caddr form)
                  ,@(map (lambda (method)
                           (let (binding (symbol->string (cadr method)))
                             (unless (and (> (string-length binding) 2)
                                          (equal? (substring binding 0 2) "__"))
                               (error "Network implement binding changed" method))
                             [(car method) (string->symbol (substring binding 2 (string-length binding)))]))
                         (cdddr form))))
              (else form)))
          (def (load-forms path
                           network?)
            (call-with-input-file (gx#core-resolve-path path (stx-source stx))
              (lambda (port)
                (let loop ((result []))
                  (let (form (read port))
                    (cond
                     ((eof-object? form) (reverse result))
                     (network? (loop (cons (network-form form) result)))
                     ((and (pair? form) (eq? (car form) 'import))
                      (loop (cons (absolute-import form) result)))
                     ((and (pair? form) (eq? (car form) 'def) (pair? (cadr form))
                           (memq (caadr form) names))
                      (set! loaded (cons (caadr form) loaded))
                      (set! definition (caadr form))
                      (loop (cons (instrument form) result)))
                     (else (loop result))))))))
          (let ((transport-forms (load-forms #'connection-path #f))
                (network-forms (load-forms #'network-path #t)))
            (unless (and (= (length names) (length loaded))
                         (andmap (lambda (name) (memq name loaded)) names)
                         (= selected 1) (= written 1) (= encoders 1) (= released 1)
                         (= control-owners 2) (= scope-owners 1) (= fills 2)
                         (= completions 1) (= finalizers 1)
                         (= cancellations 1) (= fill-encoders 1) (= fill-cancellations 1)
                         (= activation-imports 1) (= implementations 4))
              (error "Renewal boundary source changed" loaded selected written encoders
                     released control-owners scope-owners fills completions finalizers
                     cancellations fill-encoders fill-cancellations activation-imports implementations))
            (datum->syntax #'transport
              `(begin
                 (module ,(stx-e #'transport)
                   (import (except-in :std/ensemble/network/connection
                                      connection-activate!
                                      connection-control-fill!
                                      connection-work-release!
                                      connection-parent-release!
                                      connection-parent-start!))
                   (export connection-activate!
                           connection-renewal-launch!
                           connection-renewal-slot?
                           connection-renewal-fail!
                           connection-renewal-settle!
                           current-protocol-io-hook
                           current-protocol-release-hook
                           current-protocol-transition-hook
                           current-protocol-encoding-hook)
                   (def current-protocol-io-hook (make-parameter (lambda (stage parent work) (void))))
                   (def current-protocol-release-hook (make-parameter (lambda (parent work) (void))))
                   (def current-protocol-transition-hook (make-parameter (lambda (stage conn round work) (void))))
                   (def current-protocol-encoding-hook (make-parameter (lambda (conn round work tokens) (void))))
                   ,@transport-forms)
                 (module ,(stx-e #'network)
                   (import (only-in ,(stx-e #'transport)
                                    connection-activate!))
                   (export new-network)
                   ,@network-forms))))))))

   (renewal-boundary-modules protocol-source protocol-network "connection.ss" "network.ss")
   (import (prefix-in protocol-source source#)
           (prefix-in protocol-network network#))

   (def protocol-config
     (NetworkConfig connection-ttl: 60 stream-ttl: 60
                    handshake-timeout: 8 stream-open-timeout: 4 renewal-timeout: 4
                    stream-input-timeout: (IOTimeout 4) stream-output-timeout: (IOTimeout 4)))
   (def current-protocol-limits (make-parameter #f))

   (def (new-protocol-network (host           : :string)
                              (context        : CapabilityContext)
                              (monitor        : NetworkMonitor)
                              config: (config : NetworkConfig)
                              limits: (limits : NetworkLimits))
     => Network
     (network#new-network host context monitor config: config
                          limits: (if (current-protocol-limits)
                                    (NetworkLimits connection-limits: (current-protocol-limits))
                                    limits)))

   ;; The gate owns no transport buffer and never releases a ConnectionWork. The
   ;; actual writer resumes its own IO/finally, including when the test raises.
   (def (protocol-gate! (gate   : APIMonitor)
                        (kind   : :symbol)
                        (object : :t))
     => :void
     (api-record! gate kind object)
     (api-await gate 'release (lambda (value) (or (eq? value object) (eq? value 'all))) 12)
     (void))

   ;; Release gates BEFORE the API fixture starts its joined shutdown, not in an
   ;; outer finalizer that would leave close waiting on the still-gated worker.
   (def (call-with-protocol-networks (mode : :symbol)
                                     (gate : APIMonitor)
                                     (proc : :procedure))
     => :void
     (call-with-api-networks mode
       (lambda (a b ma mb address start)
         (unwind-protect
           (proc a b ma mb address start)
           (api-record! gate 'release 'all)))
       new-protocol-network protocol-config))

   (def (protocol-owned-streams (impl : NetworkConnection))
     => :fixnum
     ;; Caller holds parent mx, including callers that inspect cancelled entries.
     (foldl (lambda ((entry : ConnectionOpening) count)
              (+ count (if entry.renewal (length entry.renewal.owned) 0)))
            0 impl.openings))

   ;; Internal admission only: retain the real allocator, credential worker, peer
   ;; verification and writer. Targets/deadlines are never changed after launch.
   (def (protocol-launch! (impl   : NetworkConnection)
                          (scope  : RenewalScope)
                          (target : :integer))
     => RenewalRound
     (do-with-lock impl.parent.mx
       (let (operation (RenewalOperation target: target
                                         deadline: (operation-deadline (current-time-seconds) 4)
                                         adaptive?: (> scope.id 0)))
         (set! scope.operation operation)
         (source#connection-renewal-launch! impl scope operation)
         (or scope.active (error "Renewal round was not admitted")))))

   ;; A suspended real encoder captures T1 while a public connection renewal
   ;; installs T2. Its next stream OFFER is generated by the normal service, not
   ;; injected: the ACK receiver has installed T1 but still needs its desired T2.
   (def (check-stream-ack-deferral (responder? : :boolean))
     => :void
     (let ((gate (APIMonitor)) (encoded? #f) (acked? #f))
       (parameterize
           ((source#current-protocol-encoding-hook
             (lambda (conn round work tokens)
               (unless encoded?
                 (set! encoded? #t)
                 (protocol-gate! gate 'encoding work))))
            (source#current-protocol-io-hook
             (lambda (stage parent (work : ConnectionWork))
               (when (and (eq? stage 'written) (= work.type frame-stream-renew-ack) (not acked?))
                 (set! acked? #t)
                 (protocol-gate! gate 'ack work)))))
         (call-with-protocol-networks (if responder? 'tls 'unix) gate
           (lambda ((a : Network) (b : Network) ma mb address start)
             (let* ((conn (a.connect! (b.host) [(b.listen! (address "stream-next-offer"))]))
                    (peer (b.connect! (a.host) []))
                    (sender (if responder? peer conn))
                    (receiver (if responder? conn peer))
                    (stream (Connection-open-stream! sender "/renewal/next-offer/v0" lease: 'connection))
                    (incoming (api-await (if responder? ma mb) 'stream-open (lambda (_) #t)))
                    (entry (renewal-test-entry sender stream))
                    (other (renewal-test-entry receiver incoming))
                    (identities (renewal-stream-identities [stream incoming]))
                    (target (+ 4 (max (Connection-expire conn) (Stream-expire stream))))
                    (next-target (+ target 4))
                    (buffer (make-u8vector 4)))
               (using ((local (interface-instance-object sender) :- NetworkConnection)
                       (remote (interface-instance-object receiver) :- NetworkConnection)
                       (local-scope (ConnectionOpening-renewal entry) :- RenewalScope)
                       (scope (ConnectionOpening-renewal other) :- RenewalScope))
                 (check (Writer-write (Stream-writer stream) #u8(2 4 6 8)) => 4)
                 (renewal-wait!
                  (lambda () (using (io (ConnectionOpening-io other) :- StreamIO)
                               (with-stream-io-lock io.input-mx (= io.state.receive.size 4))))
                  (+ (##current-time-point) 2))
                 (let* ((first (protocol-launch! local (ConnectionOpening-renewal entry) target))
                        (encoding (api-await gate 'encoding (lambda (_) #t))))
                   (check (RenewalRound-target first) => target)
                   (check-eq? (a.connect! (b.host) [] expire: next-target) conn)
                   (check (Connection-expire peer) => next-target)
                   (api-record! gate 'release encoding)
                   (using ((work (api-await gate 'ack (lambda (_) #t)) :- ConnectionWork)
                           (round work.renewal :- RenewalRound))
                     (renewal-wait! (lambda () (= (Stream-expire stream) target)) (+ (##current-time-point) 2))
                     (using (next (renewal-wait!
                                   (lambda () (with-stream-io-lock remote.parent.mx scope.deferred))
                                   (+ (##current-time-point) 2)) :- RenewalRound)
                       (with-stream-io-lock remote.parent.mx
                         (check-eq? remote.parent.scheduler.in-flight work)
                         (check-eq? scope.active round)
                         (check round.phase => 'ack-sent)
                         (check round.installed? => #t)
                         (check round.retired? => #f)
                         (check scope.owned => [round])
                         (check next.phase => 'deferred)
                         (check next.target => next-target)
                         (check next.worker => #f)
                         (check next.controls => [])
                         (check (< (current-time-seconds) (min round.deadline next.deadline)) => #t))
                       (check (Stream-expire incoming) => target)
                       (api-record! gate 'release work)
                       (renewal-wait!
                        (lambda ()
                          ;; Recipient completion precedes coordinator installation.
                          ;; Observe both scopes without nesting their parent locks.
                          (and (= (Stream-expire stream) next-target)
                               (with-stream-io-lock local.parent.mx
                                 (and (null? local-scope.owned) (not local-scope.active)
                                      (not local-scope.deferred)))
                               (with-stream-io-lock remote.parent.mx
                                 (and next.retired? next.worker-done?
                                      (null? scope.owned) (not scope.active) (not scope.deferred)
                                      (renewal-controls-released? next
                                                                  (lambda ((w : ConnectionWork)) (eq? w.state 'released)))))))
                        (+ (##current-time-point) 3))
                       (check next.failed? => #f)
                       (check next.installed? => #t)
                       (check (Stream-expire stream) => next-target)
                       (check (Stream-expire incoming) => next-target)
                       (check work.state => 'released)
                       (check (Reader-read (Stream-reader incoming) buffer 0 4 4) => 4)
                       (check buffer => #u8(2 4 6 8))
                       (renewal-check-identities! identities)
                       (renewal-pulse! stream incoming)
                       (check (renewal-event-count ma 'stream-open) => 1)
                       (check (renewal-event-count mb 'stream-open) => 1)
                       (check (renewal-event-count ma 'stream-close) => 0)
                       (check (renewal-event-count mb 'stream-close) => 0)))))))))))

   (def (check-ack-deferral (abandon? : :boolean))
     => :void
     (let ((gate (APIMonitor)) (held? #f))
       (parameterize
           ((source#current-protocol-io-hook
             (lambda (stage parent (work : ConnectionWork))
               (when (and (eq? stage 'written) (= work.type frame-renew-ack) (not held?))
                 (set! held? #t)
                 (protocol-gate! gate 'ack work)))))
         (unwind-protect
           (call-with-protocol-networks (if abandon? 'tls 'unix) gate
             (lambda ((a : Network) (b : Network) ma mb address start)
               (let* ((addr (b.listen! (address "ack-release")))
                      (conn (a.connect! (b.host) [addr]))
                      (peer (api-await mb 'connection-open (lambda (_) #t)))
                      (stream (Connection-open-stream! conn "/renewal/ack-release/v0"))
                      (incoming (api-await mb 'stream-open (lambda (_) #t)))
                      (target (+ (Connection-expire conn) 4))
                      (first (start (lambda () (a.connect! (b.host) [] expire: target))))
                      (work (api-await gate 'ack (lambda (_) #t))))
                 (using ((impl (interface-instance-object peer) :- NetworkConnection)
                         (work :- ConnectionWork) (round work.renewal :- RenewalRound))
                   (check-eq? (thread-join!/error first 2) conn)
                   (check (Connection-expire conn) => target)
                   (check (Connection-expire peer) => target)
                   (let* ((next-target (+ target 4))
                          (second (start (lambda () (with-catch identity
                                                                (lambda () (a.connect! (b.host) [] expire: next-target))))))
                          (next (renewal-wait!
                                 (lambda () (do-with-lock impl.parent.mx impl.renewal.deferred))
                                 (+ (##current-time-point) 2))))
                     (using (next :- RenewalRound)
                       (do-with-lock impl.parent.mx
                         (check-eq? impl.renewal.active round)
                         (check-eq? impl.parent.scheduler.in-flight work)
                         (check work.state => 'in-flight)
                         (check round.phase => 'ack-sent)
                         (check round.installed? => #t)
                         (check round.retired? => #f)
                         (check (length impl.renewal.owned) => 1)
                         (check next.phase => 'deferred)
                         (check next.target => next-target)
                         (check next.worker => #f)
                         (check next.controls => []))
                       (check (thread-join!/error second .01 'waiting) => 'waiting)
                       (if abandon?
                         (begin
                           ;; A real ABORT retires the observed deferred ID. The
                           ;; deliberately abandoned caller still owns its cutoff.
                           (renewal-inject! conn frame-renew-abort 0 [next.id reason-cancelled])
                           (renewal-wait!
                            (lambda () (do-with-lock impl.parent.mx (not impl.renewal.deferred)))
                            (+ (##current-time-point) 1))
                           (do-with-lock impl.parent.mx
                             (check next.retired? => #t)
                             (check-eq? impl.renewal.active round))
                           (api-record! gate 'release work)
                           (check (thread-join!/error second 6 'stuck) ? (lambda (e) (or (Timeout? e) (IOError? e))))
                           (check (Connection-expire conn) => target)
                           (check (Connection-expire peer) => target)
                           (check-eq? (a.connect! (b.host) [] expire: next-target) conn))
                         (begin
                           (api-record! gate 'release work)
                           (check-eq? (thread-join!/error second 3) conn)))
                       (renewal-wait! (lambda () (do-with-lock impl.parent.mx (eq? work.state 'released)))
                                      (+ (##current-time-point) 2))
                       (check (Connection-expire conn) => next-target)
                       (check (Connection-expire peer) => next-target)
                       (renewal-pulse! stream incoming)
                       (check (renewal-event-count ma 'connection-open) => 1)
                       (check (renewal-event-count mb 'connection-open) => 1)))))))
           (api-record! gate 'release 'all)))))

   ;; The ACK belongs to a real authenticated exchange and its original writer.
   ;; Subsequent peer inputs use the compiled dispatcher directly: parent mx stays
   ;; held across their received cutoff, excluding service without changing clocks.
   (def (check-expired-ack-deferral (stream-scope? : :boolean))
     => :void
     (let ((gate (APIMonitor)) (held? #f))
       (parameterize
           ((source#current-protocol-io-hook
             (lambda (stage parent (work : ConnectionWork))
               (when (and (eq? stage 'written) (not held?)
                          (= work.type (if stream-scope? frame-stream-renew-ack frame-renew-ack)))
                 (set! held? #t)
                 (protocol-gate! gate 'ack work)))))
         (call-with-protocol-networks (if stream-scope? 'tls 'unix) gate
           (lambda ((a : Network) (b : Network) ma mb address start)
             (let* ((addr (b.listen! (address "expired-deferral")))
                    (conn (a.connect! (b.host) [addr]))
                    (peer (api-await mb 'connection-open (lambda (_) #t)))
                    (stream (Connection-open-stream! conn "/renewal/expired-deferral/v0"
                                                     lease: (and stream-scope? 'connection)))
                    (incoming (api-await mb 'stream-open (lambda (_) #t)))
                    (target (+ 4 (max (Connection-expire conn) (Stream-expire stream))))
                    (caller (start (lambda () (a.connect! (b.host) [] expire: target))))
                    (work (api-await gate 'ack (lambda (_) #t))))
               (using ((impl (interface-instance-object peer) :- NetworkConnection)
                       (work :- ConnectionWork)
                       (round work.renewal :- RenewalRound)
                       (scope round.scope :- RenewalScope)
                       (owner-scope (if stream-scope?
                                      (ConnectionOpening-renewal (renewal-test-entry peer incoming))
                                      impl.renewal) :- RenewalScope))
                 (check-eq? (thread-join!/error caller 2) conn)
                 (when stream-scope?
                   (renewal-wait! (lambda () (>= (Stream-expire stream) target))
                                  (+ (##current-time-point) 2)))
                 ;; Receipt/installation at the coordinator precedes these next
                 ;; OFFERs; writing an ACK alone is not that causal witness.
                 (check (Connection-expire conn) => target)
                 (check (Connection-expire peer) => target)
                 (when stream-scope?
                   (check (Stream-expire stream) => round.expire)
                   (check (Stream-expire incoming) => round.expire))
                 (unwind-protect
                   (do-with-lock impl.parent.mx
                     (let* ((now (current-time-seconds))
                            (deadline (+ now 1))
                            (ack-deadline round.deadline)
                            (id (+ round.id 1))
                            (higher (+ id 1))
                            (next-target (+ round.expire 4))
                            (type (if stream-scope? frame-stream-renew-offer frame-renew-offer))
                            (limits impl.parent.scheduler.limits)
                            (ack-bytes work.bytes))
                       (def (dispatch! (type   : :fixnum)
                                       (fields : :list))
                         => :void
                         (let* ((payload (encode-frame-payload type fields limits: limits))
                                (header (FrameHeader type: type stream-id: scope.id
                                                     payload-length: (u8vector-length payload))))
                           (encode-frame-header header limits: limits)
                           (connection-renewal-dispatch! impl header payload)))
                       (def (offer! (id     : :integer)
                                    (cutoff : :integer))
                         => :void
                         ;; Opaque, undecodable tokens must never reach a worker
                         ;; while the original ACK still owns this scope.
                         (dispatch! type (append [id next-target cutoff [#u8()]]
                                                 (if stream-scope? [] [lease-mode-fixed]))))
                       (unless (< now deadline ack-deadline)
                         (error "ACK has insufficient original cutoff for deferred expiry"))
                       (check-eq? scope owner-scope)
                       (check scope.coordinator? => #f)
                       (check scope.last-id => round.id)
                       (check scope.deferred => #f)
                       (check-eq? scope.active round)
                       (check round.phase => 'ack-sent)
                       (check round.installed? => #t)
                       (check round.retired? => #f)
                       (check-eq? impl.parent.scheduler.in-flight work)
                       (check work.state => 'in-flight)
                       (offer! id deadline)
                       (using (expired scope.deferred :- RenewalRound)
                         (check expired.id => id)
                         (check expired.deadline => deadline)
                         (check expired.phase => 'deferred)
                         (check expired.worker => #f)
                         (check expired.controls => [])
                         (renewal-wait! (lambda () (>= (current-time-seconds) deadline))
                                        (+ (##current-time-point) 2))
                         (check (< (current-time-seconds) ack-deadline) => #t)
                         (check expired.retired? => #f)
                         (check-eq? scope.deferred expired)
                         ;; No matching ABORT or service sweep can retire the slot
                         ;; first. Old dispatch raises "Overlapping deferred renewal
                         ;; offers" here instead of observing its expired deadline.
                         (offer! higher ack-deadline)
                         (check expired.retired? => #t)
                         (check expired.failed? => #t)
                         (check expired.error ? Timeout?)
                         (check expired.reason => reason-timeout)
                         (check expired.deadline => deadline)
                         (check expired.worker => #f)
                         (check (memq expired scope.owned) => #f)
                         (using (next scope.deferred :- RenewalRound)
                           (check next.id => higher)
                           (check next.deadline => ack-deadline)
                           (check next.target => next-target)
                           (check next.phase => 'deferred)
                           (check next.retired? => #f)
                           (check next.worker => #f)
                           (check next.controls => [])
                           ;; A retired ID cannot make a bad selected index live.
                           (dispatch! (if stream-scope? frame-stream-renew-auth frame-renew-auth)
                                      (append [id #xffffffff] (if stream-scope? [] [[]])))
                           (check-eq? scope.deferred next))
                         (check scope.last-id => higher)
                         (check-eq? scope.active round)
                         (check round.phase => 'ack-sent)
                         (check round.retired? => #f)
                         (check round.deadline => ack-deadline)
                         (check (length scope.owned) => 1)
                         (check-eq? (car scope.owned) round)
                         (check-eq? impl.parent.scheduler.in-flight work)
                         (check work.state => 'in-flight)
                         (check-eq? work.bytes ack-bytes)
                         (check impl.parent.closed? => #f)
                         (check impl.parent.scheduler.closed? => #f))))
                   ;; These boundary inputs have no matching coordinator rounds.
                   ;; Close before releasing ACK so neither their timeout reply nor
                   ;; deferred credential work escapes into the real peer engine.
                   (Connection-close peer))
                 (do-with-lock impl.parent.mx
                   (check work.state => 'in-flight)
                   (check-eq? impl.parent.scheduler.in-flight work)
                   (check (memq round scope.owned) ? pair?))
                 (api-record! gate 'release work)
                 (renewal-wait! (lambda () (do-with-lock impl.parent.mx (eq? work.state 'released)))
                                (+ (##current-time-point) 2)))))))))

   ;; A source-launched operation on a real B-opened linked stream holds its
   ;; encoder's full allowance. Public connection renewal then drives a different,
   ;; A-opened stream through real OFFER/AUTH/COMMIT. Its mandatory ACK cannot use
   ;; the protected connection partition or reclaim the writer's retained AUTH.
   (def (check-renewal-reply-exhaustion)
     => :void
     (let* ((gate (APIMonitor))
            (payload 8192)
            (charge (+ payload frame-header-size))
            (protected (renewal-protected-bytes (ConnectionLimits control-payload: payload)))
            (limits (ConnectionLimits
                     control-payload: payload data-payload: 4 renewing-streams: 2
                     pending-control-frames: 16 pending-control-bytes: (+ protected charge 25)
                     stream-limits: (StreamLimits recv-window: 8 outbound-buffer: 8)))
            (local-parent #f) (remote-parent #f) (staged-id 0) (victim-id 0)
            (encoders 0) (acks 0) (offers 0) (auths 0) (commits 0))
       (parameterize
           ((current-protocol-limits limits)
            (source#current-protocol-encoding-hook
             (lambda ((owner : NetworkConnection) (round : RenewalRound) work tokens)
               (when (and (eq? owner.parent remote-parent) (= round.scope.id staged-id)
                          (= encoders 0))
                 (set! encoders 1)
                 (protocol-gate! gate 'encoding [round work tokens]))))
            (source#current-protocol-io-hook
             (lambda (stage parent (work : ConnectionWork))
               (cond
                ((and (eq? parent remote-parent) (eq? stage 'written)
                      (= work.type frame-renew-ack) (= acks 0))
                 (set! acks 1)
                 (protocol-gate! gate 'connection-ack work))
                ((and (eq? parent local-parent) (= work.id victim-id) (eq? stage 'selected)
                      (= work.type frame-stream-renew-offer) (= offers 0))
                 (set! offers 1)
                 (protocol-gate! gate 'victim-offer work))
                ((and (eq? parent remote-parent) (= work.id victim-id) (eq? stage 'written)
                      (= work.type frame-stream-renew-auth) (= auths 0))
                 (set! auths 1)
                 (protocol-gate! gate 'victim-auth work))
                ((and (eq? parent local-parent) (= work.id victim-id) (eq? stage 'selected)
                      (= work.type frame-stream-renew-commit) (= commits 0))
                 (set! commits 1)
                 (protocol-gate! gate 'victim-commit work))))))
         (call-with-protocol-networks 'unix gate
           (lambda ((a : Network) (b : Network) ma mb address start)
             (let* ((conn (a.connect! (b.host) [(b.listen! (address "reply-exhaustion"))]))
                    (peer (api-await mb 'connection-open (lambda (_) #t)))
                    (staged (Connection-open-stream! peer "/renewal/reply-staging/v0" lease: 'connection))
                    (staged-in (api-await ma 'stream-open (lambda (s) (= (Stream-id s) (Stream-id staged)))))
                    (victim (Connection-open-stream! conn "/renewal/reply-victim/v0" lease: 'connection))
                    (victim-in (api-await mb 'stream-open (lambda (s) (= (Stream-id s) (Stream-id victim)))))
                    (sibling (Connection-open-stream! conn "/renewal/reply-sibling/v0"))
                    (sibling-in (api-await mb 'stream-open (lambda (s) (= (Stream-id s) (Stream-id sibling)))))
                    (streams [staged staged-in victim victim-in sibling sibling-in])
                    (old (map Stream-expire streams))
                    (target (+ 4 (apply max (Connection-expire conn) (Connection-expire peer) old))))
               (using ((local (interface-instance-object conn) :- NetworkConnection)
                       (remote (interface-instance-object peer) :- NetworkConnection)
                       (entry (renewal-test-entry peer staged) :- ConnectionOpening)
                       (victim-entry (renewal-test-entry peer victim-in) :- ConnectionOpening)
                       (sibling-entry (renewal-test-entry conn sibling) :- ConnectionOpening)
                       (sibling-peer-entry (renewal-test-entry peer sibling-in) :- ConnectionOpening))
                 (set! local-parent local.parent)
                 (set! remote-parent remote.parent)
                 (set! staged-id (Stream-id staged))
                 (set! victim-id (Stream-id victim))
                 (renewal-disallow-new! ma mb)
                 (renewal-pulse! sibling sibling-in)
                 ;; Both WINDOW_UPDATEs must reach their senders before an empty
                 ;; control queue proves there can be no late pulse credit.
                 (renewal-wait!
                  (lambda ()
                    (and (with-stream-io-lock sibling-entry.io.output-mx
                           (= sibling-entry.io.state.send-credit sibling-entry.io.state.peer-window))
                         (with-stream-io-lock sibling-peer-entry.io.output-mx
                           (= sibling-peer-entry.io.state.send-credit sibling-peer-entry.io.state.peer-window))))
                  (+ (##current-time-point) 2))
                 (renewal-wait!
                  (lambda () (with-stream-io-lock remote.parent.mx (= remote.parent.scheduler.control-frames 0)))
                  (+ (##current-time-point) 2))
                 (let (reader
                       (start
                        (lambda ()
                          (let (outcome
                                (with-catch (lambda (e) ['failed e])
                                            (lambda () ['succeeded (Reader-read (Stream-reader sibling) (make-u8vector 1) 0 1 1)])))
                            (api-record! gate 'peer-read outcome)
                            outcome))))
                   (renewal-wait!
                    (lambda ()
                      (let (state (thread-state reader))
                        (and (thread-state-waiting? state)
                             (eq? (thread-state-waiting-for state) sibling-entry.io.input-cv))))
                    (+ (##current-time-point) 1))
                   ;; INTERNAL ADMISSION SEAM, not automatic scheduler admission:
                   ;; only the initiating operation is supplied by the test. The
                   ;; launcher reserves staging before the actual grant/encoder work.
                   (let* ((round
                           (with-stream-io-lock remote.parent.mx
                             (using (scope entry.renewal :- RenewalScope)
                               (check scope.coordinator? => #t)
                               (let (operation (RenewalOperation target: target
                                                                 deadline: (operation-deadline (current-time-seconds) 4)
                                                                 adaptive?: #t))
                                 (set! scope.operation operation)
                                 (source#connection-renewal-launch! remote scope operation)
                                 (or scope.active (error "Reply-exhaustion staging was not admitted"))))))
                          (encoding (api-await gate 'encoding (lambda (event) (eq? (car event) round)) 2)))
                     (using ((round :- RenewalRound) (staging (cadr encoding) :- ConnectionWork))
                       (check (caddr encoding) ? pair?)
                       (for-each
                         (lambda (token)
                           (check (Token-expire token) ? (lambda (expire) (>= expire target))))
                         (caddr encoding))
                       (with-stream-io-lock remote.parent.mx
                         (check-eq? round.staging-work staging)
                         (check staging.state => 'staging)
                         (check staging.size => payload)
                         (check staging.protected? => #f)
                         (check round.worker ? thread?)
                         (check round.worker-done? => #f)
                         (check remote.parent.scheduler.protected? => #t)
                         (check remote.parent.scheduler.control-frames => 1)
                         (check remote.parent.scheduler.control-bytes => charge)
                         (check (connection-control-available remote.parent.scheduler #f) => 25)
                         (check (connection-control-available remote.parent.scheduler #t) => protected))
                       (let* ((caller (start (lambda () (a.connect! (b.host) [] expire: target))))
                              (ack (api-await gate 'connection-ack (lambda (_) #t) 2))
                              (offer (api-await gate 'victim-offer (lambda (_) #t) 2)))
                         (check-eq? (thread-join!/error caller 1) conn)
                         (check (Connection-expire conn) => target)
                         (check (Connection-expire peer) => target)
                         (using ((ack :- ConnectionWork) (connection-round ack.renewal :- RenewalRound))
                           (with-stream-io-lock remote.parent.mx
                             (check-eq? remote.parent.scheduler.in-flight ack)
                             (check ack.state => 'in-flight)
                             (check ack.protected? => #t)
                             (check connection-round.installed? => #t)
                             (check connection-round.phase => 'ack-sent)
                             (check remote.parent.scheduler.control-frames => 2)
                             (check remote.parent.scheduler.control-bytes => (+ charge 21))
                             (check remote.parent.scheduler.renewal-bytes => 21)
                             (check (connection-control-available remote.parent.scheduler #f) => 25))
                           ;; Let its actual writer release protected ACK ownership
                           ;; before the ordinary victim OFFER reaches B.
                           (api-record! gate 'release ack)
                           (renewal-wait!
                            (lambda ()
                              (with-stream-io-lock remote.parent.mx
                                (and (eq? ack.state 'released) (null? remote.renewal.owned))))
                            (+ (##current-time-point) 1)))
                         (api-record! gate 'release offer)
                         (using ((auth (api-await gate 'victim-auth (lambda (_) #t) 2) :- ConnectionWork)
                                 (commit (api-await gate 'victim-commit (lambda (_) #t) 2) :- ConnectionWork)
                                 (recipient auth.renewal :- RenewalRound)
                                 (coordinator commit.renewal :- RenewalRound))
                           (with-stream-io-lock local.parent.mx
                             (check-eq? local.parent.scheduler.in-flight commit)
                             (check commit.state => 'in-flight)
                             (check coordinator.committed? => #t)
                             (check coordinator.installed? => #f)
                             (check coordinator.phase => 'commit-sent))
                           (renewal-wait!
                            (lambda ()
                              (with-stream-io-lock remote.parent.mx
                                (and (= remote.parent.scheduler.control-frames 2)
                                     (= remote.parent.scheduler.control-bytes (+ charge 25)))))
                            (+ (##current-time-point) 1))
                           (with-stream-io-lock remote.parent.mx
                             (check-eq? victim-entry.renewal.active recipient)
                             (check-eq? remote.parent.scheduler.in-flight auth)
                             (check auth.state => 'in-flight)
                             (check auth.size => 12)
                             (check auth.protected? => #f)
                             (check recipient.phase => 'auth-sent)
                             (check recipient.committed? => #f)
                             (check recipient.installed? => #f)
                             (check recipient.id => coordinator.id)
                             (check recipient.target => target)
                             (check recipient.peer-token ? Token?)
                             (check (protocol-owned-streams remote) => 2)
                             (check remote.parent.scheduler.renewal-frames => 0)
                             (check (connection-control-available remote.parent.scheduler #f) => 0))
                           ;; This public caller owns a genuine REQUEST queued behind
                           ;; AUTH. Tagged outcomes cannot mistake a raised #f for
                           ;; success, and no REQUEST reaches A to start another round.
                           (let* ((waiter
                                   (start (lambda ()
                                            (with-catch (lambda (e) ['failed e])
                                                        (lambda () ['succeeded (b.connect! (a.host) [] expire: (+ target 4))])))))
                                  (wire
                                   (renewal-wait!
                                    (lambda ()
                                      (with-stream-io-lock remote.parent.mx
                                        (and remote.renewal.wire-request remote.renewal.wire-request.control
                                             (eq? (ConnectionWork-state remote.renewal.wire-request.control) 'ready)
                                             remote.renewal.wire-request)))
                                    (+ (##current-time-point) 1)))
                                  (auth-bytes auth.bytes))
                             (using ((wire :- RenewalRequest) (request-work wire.control :- ConnectionWork)
                                     (request (with-stream-io-lock remote.parent.mx (car remote.renewal.requests)) :- RenewalRequest)
                                     (wake remote.parent.wake :- StreamWake))
                               (with-stream-io-lock remote.parent.mx
                                 (check request.state => 'pending)
                                 (check request.target => (+ target 4))
                                 (check wire.state => 'pending)
                                 (check request-work.type => frame-renew-request)
                                 (check request-work.protected? => #t)
                                 (check remote.parent.scheduler.control-frames => 3)
                                 (check remote.parent.scheduler.control-bytes => (+ charge 25 38))
                                 (check remote.parent.scheduler.renewal-frames => 1)
                                 (check remote.parent.scheduler.renewal-bytes => 38)
                                 (check (connection-control-available remote.parent.scheduler #f) => 0)
                                 (check (connection-control-available remote.parent.scheduler #t) => (- protected 38)))
                               ;; Retain the idle service leaf, not a stream lock:
                               ;; COMMIT validation needs stream locks. Native close
                               ;; must precede this leaf and queued/stream cleanup.
                               (unwind-protect
                                 (begin
                                   (renewal-wait!
                                    (lambda ()
                                      (mutex-lock! wake.mx)
                                      (let (state (thread-state remote.parent.worker))
                                        (if (and (not wake.service?) (thread-state-waiting? state)
                                                 (eq? (thread-state-waiting-for state) wake.service-cv))
                                          #t
                                          (begin (mutex-unlock! wake.mx) #f))))
                                    (+ (##current-time-point) 1))
                                   (check (< (current-time-seconds)
                                             (min round.deadline recipient.deadline coordinator.deadline request.deadline)) => #t)
                                   ;; The mandatory 21-byte ACK cannot fit ordinary
                                   ;; capacity, despite the unused protected bytes.
                                   (api-record! gate 'release commit)
                                   (renewal-wait!
                                    (lambda ()
                                      (let (state (thread-state remote.parent.reader-worker))
                                        (and (thread-state-waiting? state)
                                             (eq? (thread-state-waiting-for state) wake.mx))))
                                    (+ (##current-time-point) 1))
                                   ;; The reader is stopped after native close but
                                   ;; before cleanup. Do not acquire parent/stream
                                   ;; locks backwards while retaining the wake leaf.
                                   (check remote.parent.closed? => #t)
                                   (check remote.parent.error ? Closed?)
                                   (check (Error-message remote.parent.error) => "Mandatory control capacity exhausted")
                                   (check recipient.committed? => #t)
                                   (check recipient.installed? => #f)
                                   (check sibling-peer-entry.io.state.aborted? => #f)
                                   (check request-work.state => 'ready)
                                   (check remote.parent.scheduler.control-frames => 3)
                                   (check remote.parent.scheduler.control-bytes => (+ charge 25 38))
                                   (let (outcome (api-await gate 'peer-read (lambda (_) #t) 1))
                                     (check (car outcome) => 'failed)
                                     (check (cadr outcome) ? Closed?)))
                                 (when (eq? (mutex-state wake.mx) (current-thread))
                                   (mutex-unlock! wake.mx)))
                               (renewal-wait!
                                (lambda ()
                                  (with-stream-io-lock remote.parent.mx
                                    (and round.retired? recipient.retired? (eq? request-work.state 'released))))
                                (+ (##current-time-point) 1))
                               (let (outcome (thread-join!/error waiter 1))
                                 (check (car outcome) => 'failed)
                                 (check-eq? (cadr outcome) remote.parent.error))
                               (check (car (thread-join!/error reader 1)) => 'failed)
                               (with-stream-io-lock remote.parent.mx
                                 (check remote.parent.closed? => #t)
                                 (check remote.parent.scheduler.closed? => #t)
                                 (check-eq? remote.parent.scheduler.error remote.parent.error)
                                 (check-eq? request.error remote.parent.error)
                                 (check-eq? wire.error remote.parent.error)
                                 (check-eq? recipient.error remote.parent.error)
                                 (check-eq? round.error remote.parent.error)
                                 (check recipient.failed? => #t)
                                 (check recipient.committed? => #t)
                                 (check recipient.installed? => #f)
                                 (check recipient.controls => [auth])
                                 (check-eq? remote.parent.scheduler.in-flight auth)
                                 (check auth.state => 'in-flight)
                                 (check-eq? auth.bytes auth-bytes)
                                 (check staging.state => 'staging)
                                 (check staging.size => payload)
                                 (check round.worker-done? => #f)
                                 (check (protocol-owned-streams remote) => 2)
                                 (check remote.parent.scheduler.control-frames => 2)
                                 (check remote.parent.scheduler.control-bytes => (+ charge 25))
                                 (check remote.parent.scheduler.renewal-frames => 0)
                                 (check remote.parent.scheduler.renewal-bytes => 0))
                               (check (map Stream-expire streams) => old)
                               (check (Connection-expire conn) => target)
                               (check (Connection-expire peer) => target)
                               (check (renewal-event-count mb 'connection-close) => 0)
                               ;; The encoder still holds these actual grants; neither
                               ;; cancellation nor socket close completed its finalizer.
                               (check (caddr encoding) ? pair?)
                               (api-record! gate 'release 'all)
                               (api-close! a b)
                               (with-stream-io-lock remote.parent.mx
                                 (check round.worker-done? => #t)
                                 (check recipient.worker-done? => #t)
                                 (check staging.state => 'released)
                                 (check auth.state => 'released)
                                 (check auth.bytes => #u8())
                                 (check request-work.state => 'released)
                                 (check remote.parent.scheduler.in-flight => #f)
                                 (check remote.parent.scheduler.control-frames => 0)
                                 (check remote.parent.scheduler.control-bytes => 0)
                                 (check remote.parent.scheduler.renewal-frames => 0)
                                 (check remote.parent.scheduler.renewal-bytes => 0))
                               (with-stream-io-lock local.parent.mx
                                 (check coordinator.worker-done? => #t)
                                 (check coordinator.installed? => #f)
                                 (check local.parent.scheduler.control-frames => 0)
                                 (check local.parent.scheduler.control-bytes => 0))
                               (check [encoders acks offers auths commits] => [1 1 1 1 1])
                               (for-each
                                 (lambda (monitor)
                                   (check (renewal-event-count monitor 'connection-open) => 1)
                                   (check (renewal-event-count monitor 'connection-close) => 1)
                                   (check (renewal-event-count monitor 'stream-open) => 3)
                                   (check (renewal-event-count monitor 'stream-close) => 3)
                                   (check (renewal-event-count monitor 'unexpected-allow) => 0))
                                 [ma mb])))))))))))))))

   ;; Fixed streams consume real ordinary control slots before REQUEST arrives.
   ;; Three WINDOW-UPDATEs leave room for a refusal RESULT; four make that mandatory
   ;; reply fatal. Neither path may revoke the selected writer's existing charge.
   (def (check-fixed-request-capacity (fatal? : :boolean))
     => :void
     (let* ((gate (APIMonitor)) (count (if fatal? 4 3)) (payload 8192)
            (protected (renewal-protected-bytes (ConnectionLimits control-payload: payload)))
            (limits (ConnectionLimits
                     control-payload: payload data-payload: 4
                     pending-control-frames: 4 pending-control-bytes: (+ protected (* 4 17) 23)
                     stream-limits: (StreamLimits recv-window: 8 outbound-buffer: 8)))
            (local-parent #f) (remote-parent #f) (held? #f))
       (parameterize
           ((current-protocol-limits limits)
            (source#current-protocol-io-hook
             (lambda (stage parent (work : ConnectionWork))
               (when (eq? stage 'selected)
                 (cond
                  ((and (eq? parent local-parent) (= work.type frame-window-update) (not held?))
                   (set! held? #t)
                   (protocol-gate! gate 'credit work))
                  ((and (eq? parent remote-parent) (= work.type frame-renew-request))
                   (protocol-gate! gate 'request work)))))))
         (call-with-protocol-networks 'unix gate
           (lambda ((a : Network) (b : Network) ma mb address start)
             (let* ((conn (a.connect! (b.host) [(b.listen! (address "fixed-request-capacity"))]))
                    (peer (api-await mb 'connection-open (lambda (_) #t)))
                    (streams (map (lambda (_) (Connection-open-stream! conn "/renewal/fixed-capacity/v0"))
                                  (make-list count)))
                    (incoming (map (lambda (stream)
                                     (api-await mb 'stream-open (lambda (s) (= (Stream-id s) (Stream-id stream)))))
                                   streams))
                    (entries (map (lambda (stream) (renewal-test-entry conn stream)) streams))
                    (peer-entries (map (lambda (stream) (renewal-test-entry peer stream)) incoming))
                    (old (Connection-expire conn)) (target (+ old 4))
                    (old-streams (map Stream-expire (append streams incoming)))
                    (buffer (make-u8vector 1)))
               (using ((local (interface-instance-object conn) :- NetworkConnection)
                       (remote (interface-instance-object peer) :- NetworkConnection)
                       (first (car entries) :- ConnectionOpening)
                       (first-peer (car peer-entries) :- ConnectionOpening)
                       (first-io first.io :- StreamIO)
                       (peer-io first-peer.io :- StreamIO))
                 (renewal-disallow-new! ma mb)
                 ;; No pulse precedes this boundary: all OPEN controls must retire,
                 ;; and neither direction has consumed DATA that could owe late credit.
                 (renewal-wait!
                  (lambda ()
                    (and (with-stream-io-lock local.parent.mx
                           (and (= local.parent.scheduler.control-frames 0) (not local.parent.scheduler.in-flight)))
                         (with-stream-io-lock remote.parent.mx
                           (and (= remote.parent.scheduler.control-frames 0) (not remote.parent.scheduler.in-flight)))))
                  (+ (##current-time-point) 2))
                 (for-each
                   (lambda ((owner : NetworkConnection))
                     (with-stream-io-lock owner.parent.mx
                       (check owner.parent.scheduler.protected? => #f)
                       (check owner.parent.scheduler.control-bytes => 0)
                       (check owner.renewal.automatic? => #f)
                       (check owner.renewal.request-id => 0)
                       (check owner.parent.expire => old)))
                   [local remote])
                 (for-each
                   (lambda ((entry : ConnectionOpening))
                     (with-stream-io-lock entry.owner.parent.mx
                       (check entry.linked? => #f)
                       (check entry.renewal => #f))
                     (using (io entry.io :- StreamIO)
                       (with-stream-io-lock io.input-mx
                         (check io.state.receive.size => 0)
                         (check io.state.pending-credit => 0))
                       (with-stream-io-lock io.output-mx
                         (check io.state.send.size => 0)
                         (check io.state.send-credit => io.state.peer-window))))
                   (append entries peer-entries))
                 (set! local-parent local.parent)
                 (set! remote-parent remote.parent)
                 (check (Writer-write (Stream-writer (car incoming)) #u8(7)) => 1)
                 (check (Reader-read (Stream-reader (car streams)) buffer 0 1 1) => 1)
                 (check buffer => #u8(7))
                 (using (work (api-await gate 'credit (lambda (_) #t) 1) :- ConnectionWork)
                   (for-each
                     (lambda (stream other)
                       (check (Writer-write (Stream-writer other) #u8(7)) => 1)
                       (check (Reader-read (Stream-reader stream) buffer 0 1 1) => 1)
                       (check buffer => #u8(7)))
                     (cdr streams) (cdr incoming))
                   (renewal-wait!
                    (lambda () (with-stream-io-lock local.parent.mx (= local.parent.scheduler.control-frames count)))
                    (+ (##current-time-point) 1))
                   (let ((credits (with-stream-io-lock local.parent.mx (queue->list local.parent.scheduler.controls)))
                         (bytes work.bytes))
                     (with-stream-io-lock local.parent.mx
                       (check local.parent.initiator? => #t)
                       (check local.renewal.coordinator? => #t)
                       (check local.parent.scheduler.protected? => #f)
                       (check-eq? local.parent.scheduler.in-flight work)
                       (check work.state => 'in-flight)
                       (check work.type => frame-window-update)
                       (check work.id => (Stream-id (car streams)))
                       (check work.size => 4)
                       (check work.protected? => #f)
                       (check (vector->list (decode-frame-payload work.type work.bytes limits: limits)) => [1])
                       (check (length credits) => (- count 1))
                       (check local.parent.scheduler.control-bytes => (* count 17))
                       (check local.parent.scheduler.renewal-frames => 0)
                       (check local.parent.scheduler.renewal-bytes => 0)
                       ;; Bytes permit both protection and RESULT. Only frame
                       ;; ownership prevents carving out the four protected slots.
                       (check (>= (connection-control-available local.parent.scheduler #f) (+ protected 23)) => #t)
                       (for-each
                         (lambda ((credit : ConnectionWork))
                           (check credit.type => frame-window-update)
                           (check credit.size => 4)
                           (check credit.state => 'ready)
                           (check credit.protected? => #f))
                         credits))
                     (let (reader
                           (and fatal?
                                (start
                                 (lambda ()
                                   (let (outcome
                                         (with-catch (lambda (e) ['failed e])
                                                     (lambda () ['succeeded (Reader-read (Stream-reader (car incoming))
                                                                                         (make-u8vector 1) 0 1 1)])))
                                     (api-record! gate 'peer-read outcome)
                                     outcome)))))
                       (when reader
                         (renewal-wait!
                          (lambda ()
                            (let (state (thread-state reader))
                              (and (thread-state-waiting? state)
                                   (eq? (thread-state-waiting-for state) peer-io.input-cv))))
                          (+ (##current-time-point) 1)))
                       (let* ((caller
                               (start (lambda ()
                                        (with-catch (lambda (e) ['failed e])
                                                    (lambda () ['succeeded (b.connect! (a.host) [] expire: target)])))))
                              (request-work (api-await gate 'request (lambda (_) #t) 1)))
                         (using ((request-work :- ConnectionWork)
                                 (wire request-work.request :- RenewalRequest)
                                 (request (with-stream-io-lock remote.parent.mx (car remote.renewal.requests)) :- RenewalRequest)
                                 (wake local.parent.wake :- StreamWake))
                           (let (deadline wire.deadline)
                             (with-stream-io-lock remote.parent.mx
                               (check remote.parent.initiator? => #f)
                               (check remote.renewal.coordinator? => #f)
                               (check remote.parent.scheduler.protected? => #t)
                               (check-eq? remote.renewal.wire-request wire)
                               (check wire.state => 'sent)
                               (check wire.target => target)
                               (check wire.adaptive? => #f)
                               (check request.state => 'pending)
                               (check request.target => target)
                               (check request.deadline => deadline)
                               (check-eq? remote.parent.scheduler.in-flight request-work)
                               (check request-work.state => 'in-flight)
                               (check request-work.type => frame-renew-request)
                               (check request-work.id => 0)
                               (check request-work.protected? => #t)
                               (check (vector->list (decode-frame-payload request-work.type request-work.bytes limits: limits))
                                      => [wire.id target deadline lease-mode-fixed])
                               (check remote.parent.scheduler.control-frames => 1)
                               (check remote.parent.scheduler.control-bytes => 38)
                               (check remote.parent.scheduler.renewal-frames => 1)
                               (check remote.parent.scheduler.renewal-bytes => 38))
                             (with-stream-io-lock local.parent.mx
                               (check local.renewal.remote-request => #f))
                             (check (< (current-time-seconds) deadline) => #t)
                             (if fatal?
                               ;; Hold only the idle service leaf. REQUEST's failed
                               ;; mandatory reservation reaches native close before
                               ;; this wake, queued cancellation or stream abort.
                               (unwind-protect
                                 (begin
                                   (renewal-wait!
                                    (lambda ()
                                      (mutex-lock! wake.mx)
                                      (let (state (thread-state local.parent.worker))
                                        (if (and (not wake.service?) (thread-state-waiting? state)
                                                 (eq? (thread-state-waiting-for state) wake.service-cv))
                                          #t
                                          (begin (mutex-unlock! wake.mx) #f))))
                                    (+ (##current-time-point) 1))
                                   (api-record! gate 'release request-work)
                                   (renewal-wait!
                                    (lambda ()
                                      (let (state (thread-state local.parent.reader-worker))
                                        (and (thread-state-waiting? state)
                                             (eq? (thread-state-waiting-for state) wake.mx))))
                                    (+ (##current-time-point) 1))
                                   ;; No backwards parent/stream acquisition while
                                   ;; holding wake.mx; the stopped workers fix this snapshot.
                                   (check local.parent.closed? => #t)
                                   (check local.parent.error ? Closed?)
                                   (check (Error-message local.parent.error) => "Mandatory control capacity exhausted")
                                   (check first-io.state.aborted? => #f)
                                   (check local.parent.scheduler.control-frames => 4)
                                   (check local.parent.scheduler.control-bytes => 68)
                                   (check (map ConnectionWork-state credits) => '(ready ready ready))
                                   (let (outcome (api-await gate 'peer-read (lambda (_) #t) 1))
                                     (check (car outcome) => 'failed)
                                     (check (cadr outcome) ? Closed?))
                                   (check (< (current-time-seconds) deadline) => #t))
                                 (when (eq? (mutex-state wake.mx) (current-thread))
                                   (mutex-unlock! wake.mx)))
                               (api-record! gate 'release request-work))
                             (using (received
                                     (renewal-wait!
                                      (lambda ()
                                        (with-stream-io-lock local.parent.mx
                                          (and local.renewal.remote-request
                                               (eq? local.renewal.remote-request.state 'failed)
                                               (= local.parent.scheduler.control-frames (if fatal? 1 4))
                                               local.renewal.remote-request)))
                                      (+ (##current-time-point) 1)) :- RenewalRequest)
                               (let (result
                                     (with-stream-io-lock local.parent.mx
                                       (find (lambda ((w : ConnectionWork)) (= w.type frame-renew-result))
                                             (queue->list local.parent.scheduler.controls))))
                                 (with-stream-io-lock local.parent.mx
                                   (check received.id => wire.id)
                                   (check received.target => target)
                                   (check received.deadline => deadline)
                                   (check received.result => reason-limit)
                                   (check received.adaptive? => #f)
                                   (check-eq? received.control result)
                                   (check local.parent.closed? => fatal?)
                                   (check local.parent.scheduler.closed? => fatal?)
                                   (check local.parent.scheduler.protected? => #f)
                                   (check-eq? local.parent.scheduler.in-flight work)
                                   (check work.state => 'in-flight)
                                   (check-eq? work.bytes bytes)
                                   (check local.parent.scheduler.control-frames => (if fatal? 1 4))
                                   (check local.parent.scheduler.control-bytes => (if fatal? 17 (+ (* count 17) 23)))
                                   (check local.parent.scheduler.renewal-frames => 0)
                                   (check local.parent.scheduler.renewal-bytes => 0)
                                   (if fatal?
                                     (begin
                                       (check result => #f)
                                       (check-eq? local.parent.scheduler.error local.parent.error)
                                       (check (Error-message local.parent.error) => "Mandatory control capacity exhausted")
                                       (check (map ConnectionWork-state credits) => '(released released released))
                                       (check (queue->list local.parent.scheduler.controls) => []))
                                     (using (result :- ConnectionWork)
                                       (check result.state => 'ready)
                                       (check result.type => frame-renew-result)
                                       (check result.id => 0)
                                       (check result.size => 10)
                                       (check result.protected? => #f)
                                       (check-eq? result.request received)
                                       (check (vector->list (decode-frame-payload result.type result.bytes limits: limits))
                                              => [wire.id reason-limit])
                                       (check (queue->list local.parent.scheduler.controls) => (append credits [result])))))
                                 (unless fatal?
                                   (check (thread-join!/error caller .01 'waiting) => 'waiting)
                                   (api-record! gate 'release work))
                                 (let (outcome (thread-join!/error caller 1))
                                   (check (car outcome) => 'failed)
                                   (with-stream-io-lock remote.parent.mx
                                     (check request.state => 'failed)
                                     (check wire.state => 'failed)
                                     (check-eq? (cadr outcome) request.error)
                                     (check-eq? wire.error request.error)
                                     (if fatal?
                                       (check-eq? (cadr outcome) remote.parent.error)
                                       (begin
                                         (check (cadr outcome) ? Closed?)
                                         (check (Error-message (cadr outcome)) => "Peer declined renewal request")
                                         (check (Error-irritants (cadr outcome)) => [reason-limit])
                                         (check wire.result => reason-limit)))))
                                 (when reader (check (car (thread-join!/error reader 1)) => 'failed))
                                 (check (< (current-time-seconds) deadline) => #t)
                                 (check received.deadline => deadline)
                                 (check wire.deadline => deadline)
                                 (check request.deadline => deadline)
                                 (for-each
                                   (lambda ((owner : NetworkConnection))
                                     (with-stream-io-lock owner.parent.mx
                                       (check owner.parent.closed? => fatal?)
                                       (check owner.parent.expire => old)
                                       (check owner.renewal.automatic? => #f)
                                       (check owner.renewal.last-id => 0)
                                       (check owner.renewal.active => #f)
                                       (check owner.renewal.deferred => #f)
                                       (check owner.renewal.operation => #f)
                                       (check owner.renewal.owned => [])))
                                   [local remote])
                                 (unless fatal?
                                   ;; Receipt of every credit is the drain witness,
                                   ;; not just an instant with zero charged controls.
                                   (renewal-wait!
                                    (lambda ()
                                      (and (andmap (lambda ((entry : ConnectionOpening))
                                                     (using (io entry.io :- StreamIO)
                                                       (with-stream-io-lock io.output-mx
                                                         (= io.state.send-credit io.state.peer-window))))
                                                   peer-entries)
                                           (with-stream-io-lock local.parent.mx
                                             (= local.parent.scheduler.control-frames 0))
                                           (with-stream-io-lock remote.parent.mx
                                             (and (= remote.parent.scheduler.control-frames 0)
                                                  (not remote.renewal.wire-request)))))
                                    (+ (##current-time-point) 1))
                                   (check-eq? (a.connect! (b.host) [] expire: old) conn)
                                   (check-eq? (b.connect! (a.host) [] expire: old) peer)
                                   ;; B now has zero ordinary frame slots. Do not send
                                   ;; more DATA/FIN and turn refusal into unrelated overflow.
                                   (for-each
                                     (lambda (monitor)
                                       (check (renewal-event-count monitor 'connection-close) => 0)
                                       (check (renewal-event-count monitor 'stream-close) => 0))
                                     [ma mb]))
                                 (check (map Stream-expire (append streams incoming)) => old-streams)
                                 (check (renewal-event-count ma 'connection-close) => 0)
                                 ;; Only the original workers finish their borrows.
                                 ;; The fixture also opens these gates on any escaping check.
                                 (api-record! gate 'release 'all)
                                 (api-close! a b)
                                 (for-each
                                   (lambda ((owner : NetworkConnection))
                                     (with-stream-io-lock owner.parent.mx
                                       (check owner.parent.expire => old)
                                       (check owner.parent.scheduler.in-flight => #f)
                                       (check owner.parent.scheduler.control-frames => 0)
                                       (check owner.parent.scheduler.control-bytes => 0)
                                       (check owner.parent.scheduler.renewal-frames => 0)
                                       (check owner.parent.scheduler.renewal-bytes => 0)))
                                   [local remote])
                                 (for-each
                                   (lambda ((w : ConnectionWork))
                                     (check w.state => 'released)
                                     (check w.bytes => #u8()))
                                   (append [work request-work] credits (if result [result] [])))
                                 (check (renewal-event-count gate 'credit) => 1)
                                 (check (renewal-event-count gate 'request) => 1)
                                 (for-each
                                   (lambda (monitor)
                                     (check (renewal-event-count monitor 'connection-open) => 1)
                                     (check (renewal-event-count monitor 'connection-close) => 1)
                                     (check (renewal-event-count monitor 'stream-open) => count)
                                     (check (renewal-event-count monitor 'stream-close) => count)
                                     (check (renewal-event-count monitor 'unexpected-allow) => 0))
                                   [ma mb]))))))))))))))))

   ;; These run genuine OFFER/AUTH validation and stop only after native selection.
   ;; ABORT uses the real precommit failure transition at the opposite endpoint;
   ;; the timeout variant leaves the selected ACK unsent until its original cutoff.
   (def (check-commit-failure (cross-abort? : :boolean))
     => :void
     (for-each
       (lambda (stream-scope?)
         (let ((gate (APIMonitor)) (held? #f))
           (parameterize
               ((source#current-protocol-io-hook
                 (lambda (stage parent (work : ConnectionWork))
                   (when (and (eq? stage 'selected) (not held?)
                              (= work.type
                                 (if cross-abort?
                                   (if stream-scope? frame-stream-renew-commit frame-renew-commit)
                                   (if stream-scope? frame-stream-renew-ack frame-renew-ack))))
                     (set! held? #t)
                     (protocol-gate! gate 'selected work)))))
             (unwind-protect
               (call-with-protocol-networks (if stream-scope? 'tls 'unix) gate
                 (lambda ((a : Network) (b : Network) ma mb address start)
                   (let* ((addr (b.listen! (address "commit-failure")))
                          (conn (a.connect! (b.host) [addr]))
                          (peer (api-await mb 'connection-open (lambda (_) #t)))
                          (stream (Connection-open-stream! conn "/renewal/uncertain/v0"
                                                           lease: (and stream-scope? 'connection)))
                          (incoming (api-await mb 'stream-open (lambda (_) #t)))
                          (sibling (Connection-open-stream! conn "/renewal/unrelated/v0"))
                          (sibling-in (api-await mb 'stream-open (lambda (s) (= (Stream-id s) (Stream-id sibling)))))
                          (old (Connection-expire conn))
                          (old-stream (Stream-expire stream))
                          (target (+ 4 (max old old-stream)))
                          (caller (start (lambda () (with-catch identity
                                                                (lambda () (a.connect! (b.host) [] expire: target))))))
                          (work (api-await gate 'selected (lambda (_) #t))))
                     (using ((local (interface-instance-object conn) :- NetworkConnection)
                             (remote (interface-instance-object peer) :- NetworkConnection)
                             (work :- ConnectionWork)
                             (round work.renewal :- RenewalRound))
                       (let* ((owner (if cross-abort? local remote))
                              (entry (renewal-test-entry conn stream))
                              (remote-entry (renewal-test-entry peer incoming))
                              (installed-stream (Stream-expire incoming))
                              (remote-scope (if stream-scope? (ConnectionOpening-renewal remote-entry) remote.renewal)))
                         (using ((owner :- NetworkConnection)
                                 (remote-scope :- RenewalScope))
                           (do-with-lock owner.parent.mx
                             (check-eq? owner.parent.scheduler.in-flight work)
                             (check round.committed? => #t)
                             (check round.installed? => (not cross-abort?))
                             (check round.phase => (if cross-abort? 'commit-sent 'ack-sent))
                             (check work.state => 'in-flight))
                           (when stream-scope? (check-eq? (thread-join!/error caller 2) conn))
                           (if cross-abort?
                             (do-with-lock remote.parent.mx
                               (using (peer-round remote-scope.active :- RenewalRound)
                                 (check peer-round.committed? => #f)
                                 (check peer-round.phase => 'auth-sent)
                                 (source#connection-renewal-fail!
                                  remote peer-round (Closed "Test precommit cancellation") reason-cancelled)))
                             (void))
                           (renewal-wait!
                            (lambda ()
                              (do-with-lock owner.parent.mx
                                (and round.retired?
                                     (if stream-scope?
                                       (ConnectionOpening-cancelled? (if cross-abort? entry remote-entry))
                                       owner.parent.closed?))))
                            (+ (##current-time-point) 6))
                           (do-with-lock owner.parent.mx
                             (check round.failed? => #t)
                             (unless cross-abort?
                               (check (>= (current-time-seconds) round.deadline) => #t))
                             (check round.reason => (if cross-abort? reason-cancelled reason-timeout))
                             (check round.peer-failure? => cross-abort?)
                             (check work.state => 'in-flight)
                             (check-eq? owner.parent.scheduler.in-flight work)
                             (check (memq round round.scope.owned) ? pair?)
                             (when stream-scope? (check owner.parent.closed? => #f)))
                           ;; Only the native writer may now consume/release its
                           ;; selected control; a cancelled stream cannot free it.
                           (api-record! gate 'release work)
                           (renewal-wait! (lambda () (do-with-lock owner.parent.mx (eq? work.state 'released)))
                                          (+ (##current-time-point) 3))
                           (if stream-scope?
                             (begin
                               (api-await ma 'stream-close (lambda (s) (eq? s stream)))
                               (api-await mb 'stream-close (lambda (s) (eq? s incoming)))
                               (check (Connection-expire conn) => target)
                               (check (Connection-expire peer) => target)
                               (check (Stream-expire stream) => old-stream)
                               (check (Stream-expire incoming) => installed-stream)
                               (check (if cross-abort? (= installed-stream old-stream) (>= installed-stream target)) => #t)
                               (check (renewal-event-count ma 'connection-close) => 0)
                               (check (renewal-event-count mb 'connection-close) => 0)
                               (renewal-pulse! sibling sibling-in)
                               (check-eq? (a.connect! (b.host) []) conn))
                             (begin
                               (check (thread-join!/error caller 3 'stuck) ? (lambda (e) (or (IOError? e) (Timeout? e))))
                               (api-await ma 'connection-close (lambda (c) (eq? c conn)))
                               (api-await mb 'connection-close (lambda (c) (eq? c peer)))
                               (check (Connection-expire conn) => old)
                               (check (Connection-expire peer) => (if cross-abort? old target))))))))))
               (api-record! gate 'release 'all)))))
       '(#f #t)))

    ;; Both FINs travel on the real writer before renewal. Only one side consumes
    ;; its last buffered byte while ACK is selected or awaiting output release.
    ;; Its peer must retain unread data, even though this side is now retirable.
   (def (check-graceful-renewal (sender? : :boolean))
     => :void
     (let ((gate (APIMonitor)) (held? #f))
       (parameterize
           ((source#current-protocol-io-hook
             (lambda (stage parent (work : ConnectionWork))
               (when (and (not held?) (= work.type frame-stream-renew-ack)
                          (eq? stage (if sender? 'written 'selected)))
                 (set! held? #t)
                 (protocol-gate! gate 'ack work)))))
         (call-with-protocol-networks 'unix gate
           (lambda ((a : Network) (b : Network) ma mb address start)
             (let* ((conn (a.connect! (b.host) [(b.listen! (address "graceful-renewal"))]))
                    (peer (api-await mb 'connection-open (lambda (_) #t)))
                    (stream (Connection-open-stream! conn "/renewal/graceful/v0" lease: 'connection))
                    (incoming (api-await mb 'stream-open (lambda (_) #t)))
                    (left (renewal-test-entry conn stream))
                    (right (renewal-test-entry peer incoming))
                    (target (+ 4 (max (Connection-expire conn) (Stream-expire stream))))
                    (buffer (make-u8vector 4)))
               (check (Writer-write (Stream-writer stream) #u8(1 3 5 7)) => 4)
               (Writer-close (Stream-writer stream))
               (check (Writer-write (Stream-writer incoming) #u8(1 3 5 7)) => 4)
               (Writer-close (Stream-writer incoming))
               (check-eq? (a.connect! (b.host) [] expire: target) conn)
               (using ((work (api-await gate 'ack (lambda (_) #t)) :- ConnectionWork)
                       (round work.renewal :- RenewalRound)
                       (entry (if sender? right left) :- ConnectionOpening)
                       (other (if sender? left right) :- ConnectionOpening))
                 (let ((finished (if sender? incoming stream))
                       (unread (if sender? stream incoming)))
                   (check (Reader-read (Stream-reader finished) buffer 0 4 4) => 4)
                   (check buffer => #u8(1 3 5 7))
                   (check (Reader-read (Stream-reader finished) buffer 0 4 0) => 0)
                   (let-values (((aborted? active) (stream-io-status entry.io)))
                     (check aborted? => #f)
                     (check active => #f))
                   (check round.retired? => #f)
                   (check work.state => 'in-flight)
                   (api-record! gate 'release work)
                   (renewal-wait!
                    (lambda () (do-with-lock entry.owner.parent.mx
                                 (and round.retired? (eq? work.state 'released))))
                    (+ (##current-time-point) 2))
                   (api-await (if sender? mb ma) 'stream-close (lambda (s) (eq? s finished)))
                   (check round.failed? => #f)
                   (check round.installed? => #t)
                   (check entry.cancelled? => #f)
                   (check (Stream-expire finished) => target)
                   (check (Reader-read (Stream-reader unread) buffer 0 4 4) => 4)
                   (check buffer => #u8(1 3 5 7))
                   (check (Reader-read (Stream-reader unread) buffer 0 4 0) => 0)
                   (check other.cancelled? => #f)
                   (check-eq? (a.connect! (b.host) []) conn)))))))))

    ;; Direct bounded inputs under the real ACK owner's mutex isolate correlation
    ;; validation. The release hook runs after actual native IO and ownership
    ;; release, but before service can admit the deferred worker.
   (def (check-live-deferral (stream-scope? : :boolean))
     => :void
     (let ((gate (APIMonitor)) (held? #f) (release-check #f))
       (parameterize
           ((source#current-protocol-io-hook
             (lambda (stage parent (work : ConnectionWork))
               (when (and (eq? stage 'written) (not held?)
                          (= work.type (if stream-scope? frame-stream-renew-ack frame-renew-ack)))
                 (set! held? #t)
                 (protocol-gate! gate 'ack work))))
            (source#current-protocol-release-hook
             (lambda (parent work) (when release-check (release-check work)))))
         (call-with-protocol-networks 'unix gate
           (lambda ((a : Network) (b : Network) ma mb address start)
             (let* ((conn (a.connect! (b.host) [(b.listen! (address "live-deferral"))]))
                    (peer (api-await mb 'connection-open (lambda (_) #t)))
                    (stream (Connection-open-stream! conn "/renewal/deferred/v0"
                                                     lease: (and stream-scope? 'connection)))
                    (incoming (api-await mb 'stream-open (lambda (_) #t)))
                    (target (+ 4 (max (Connection-expire conn) (Stream-expire stream))))
                    (caller (start (lambda () (a.connect! (b.host) [] expire: target))))
                    (work (api-await gate 'ack (lambda (_) #t))))
               (using ((impl (interface-instance-object peer) :- NetworkConnection)
                       (work :- ConnectionWork) (round work.renewal :- RenewalRound)
                       (scope round.scope :- RenewalScope))
                 (check-eq? (thread-join!/error caller 2) conn)
                 (when stream-scope?
                   (renewal-wait! (lambda () (>= (Stream-expire stream) target)) (+ (##current-time-point) 2)))
                 (let* ((id (+ round.id 1))
                        (type (if stream-scope? frame-stream-renew-offer frame-renew-offer))
                        (abort-type (if stream-scope? frame-stream-renew-abort frame-renew-abort))
                        (limits impl.parent.scheduler.limits))
                   (def (dispatch! (type    : :fixnum)
                                   (payload : :u8vector))
                     => :void
                     (let (header (FrameHeader type: type stream-id: scope.id payload-length: (u8vector-length payload)))
                       (encode-frame-header header limits: limits)
                       (connection-renewal-dispatch! impl header payload)))
                   (def (offer! (id : :integer))
                     => :void
                     (dispatch! type (encode-frame-payload type
                                                           (append [id (+ target 4) round.deadline [#u8()]]
                                                                   (if stream-scope? [] [lease-mode-fixed])) limits: limits)))
                   (let (abort (encode-frame-payload abort-type [id reason-cancelled] limits: limits))
                     (do-with-lock impl.parent.mx
                       (check-exception (offer! round.id) IOError?)
                       (offer! id)
                       (check-exception (offer! id) IOError?)
                       (u8vector-set! abort 8 0)
                       (u8vector-set! abort 9 0)
                       (check-exception (dispatch! abort-type abort) IOError?)
                       (check (RenewalRound-id scope.deferred) => id)
                       (check (RenewalRound-retired? scope.deferred) => #f)
                       (set! release-check
                         (lambda (released)
                           (when (eq? released work)
                             (set! release-check #f)
                             (check work.state => 'released)
                             (check scope.active => #f)
                             (check-exception (offer! (+ id 1)) IOError?)
                             (check (RenewalRound-id scope.deferred) => id)
                             (let (deferred scope.deferred)
                               (dispatch! abort-type (encode-frame-payload abort-type [id reason-cancelled] limits: limits))
                               (check (RenewalRound-retired? deferred) => #t))
                             (check scope.deferred => #f)
                             ;; Identical malformed payload is harmless only after retirement.
                             (dispatch! abort-type abort)
                             (offer! id)
                             (api-record! gate 'checked work)))))
                     (api-record! gate 'release work)
                     (api-await gate 'checked (lambda (value) (eq? value work)))
                     (check-eq? (a.connect! (b.host) []) conn))))))))))

    ;; Synthetic interest records isolate every settlement branch under a real
    ;; parent's mutex. Coverage is already installed; only caller cutoffs differ.
   (def (check-settlement-cutoffs)
     => :void
     (let (gate (APIMonitor))
       (call-with-protocol-networks 'unix gate
         (lambda ((a : Network) (b : Network) ma mb address start)
           (let (conn (a.connect! (b.host) [(b.listen! (address "settlement"))]))
             (using (impl (interface-instance-object conn) :- NetworkConnection)
               (do-with-lock impl.parent.mx
                 (let* ((deadline (+ (current-time-seconds) 1))
                        (target impl.parent.expire))
                   (let* ((payload (encode-frame-payload frame-renew-request [1 (+ target 4) (+ deadline 10) lease-mode-fixed]))
                          (header (FrameHeader type: frame-renew-request stream-id: 0 payload-length: (u8vector-length payload))))
                     (connection-renewal-dispatch! impl header payload)
                     (check-exception (connection-renewal-dispatch! impl header payload) IOError?)
                     (set! impl.renewal.remote-request.state 'failed)
                     (u8vector-set! payload 24 255)
                     (connection-renewal-dispatch! impl header payload))
                   (renewal-wait! (lambda () (>= (current-time-seconds) deadline)) (+ (##current-time-point) 2))
                   (for-each
                     (lambda (branch)
                       (using (scope (RenewalScope coordinator?: (and (memq branch '(operation general)) #t)) :- RenewalScope)
                         (using ((short (RenewalRequest target: target deadline: deadline scope: scope) :- RenewalRequest)
                                 (long (RenewalRequest target: target deadline: (+ deadline 10) scope: scope) :- RenewalRequest)
                                 (settled (RenewalRequest target: target deadline: deadline scope: scope state: 'succeeded) :- RenewalRequest)
                                 (remote (RenewalRequest target: target deadline: deadline scope: scope id: 1) :- RenewalRequest))
                           (set! scope.requests [short long settled])
                           (when (memq branch '(operation general)) (set! scope.remote-request remote))
                           (case branch
                             ((operation)
                              (set! scope.operation (RenewalOperation target: target deadline: (+ deadline 10) adaptive?: #f finished?: #t)))
                             ((wire-ok wire-failed)
                              (set! scope.wire-request
                                (RenewalRequest target: target deadline: (+ deadline 10) scope: scope
                                                state: (if (eq? branch 'wire-ok) 'succeeded 'failed)
                                                error: 'peer-refusal))))
                           (source#connection-renewal-settle! impl scope)
                           (check short.state => 'failed)
                           (check short.error ? Timeout?)
                           (check long.state => (if (eq? branch 'wire-failed) 'failed 'succeeded))
                           (check settled.state => 'succeeded)
                           (when (memq branch '(operation general))
                             (check remote.state => 'failed)
                             (check remote.result => reason-timeout)
                             ;; These records are not peer wire requests. Retain the
                             ;; genuine allocator test, but do not emit invented RESULTs.
                             (connection-control-cancel! remote.control)))))
                     '(operation general wire-ok wire-failed))))))))))

    ;; The ACK is authenticated by the genuine active round; direct locked dispatch
    ;; fixes its receipt relative to a shorter caller cutoff. The real ACK follows
    ;; after release and is correctly discarded as retired traffic.
   (def (check-waiter-cutoff (timely? : :boolean))
     => :void
     (let ((gate (APIMonitor)) (held? #f))
       (parameterize
           ((source#current-protocol-io-hook
             (lambda (stage parent (work : ConnectionWork))
               (when (and (not held?) (eq? stage 'selected) (= work.type frame-renew-ack))
                 (set! held? #t)
                 (protocol-gate! gate 'ack work)))))
         (call-with-protocol-networks 'unix gate
           (lambda ((a : Network) (b : Network) ma mb address start)
             (let* ((conn (a.connect! (b.host) [(b.listen! (address "waiter-cutoff"))]))
                    (target (+ (Connection-expire conn) 4))
                    (long (start (lambda () (a.connect! (b.host) [] expire: target))))
                    (work (api-await gate 'ack (lambda (_) #t))))
               (using ((impl (interface-instance-object conn) :- NetworkConnection)
                       (work :- ConnectionWork) (round work.renewal :- RenewalRound))
                 (let* ((deadline (+ (current-time-seconds) 1))
                        (short (start (lambda ()
                                        (with-catch identity
                                                    (lambda () (connection-request-renewal! impl target deadline) 'covered))))))
                   (renewal-wait!
                    (lambda () (do-with-lock impl.parent.mx
                                 (find (lambda ((q : RenewalRequest)) (= q.deadline deadline)) impl.renewal.requests)))
                    (+ (##current-time-point) 1))
                   (do-with-lock impl.parent.mx
                     (unless timely?
                       (renewal-wait! (lambda () (>= (current-time-seconds) deadline)) (+ (##current-time-point) 2)))
                     (connection-renewal-dispatch! impl
                                                   (FrameHeader type: frame-renew-ack stream-id: 0 payload-length: 8)
                                                   (encode-frame-payload frame-renew-ack [round.id]))
                     (source#connection-renewal-settle! impl impl.renewal)
                     (when timely?
                       (renewal-wait! (lambda () (>= (current-time-seconds) deadline)) (+ (##current-time-point) 2))))
                   (if timely?
                     (check (thread-join!/error short 2) => 'covered)
                     (check (thread-join!/error short 2) ? Timeout?))
                   (check-eq? (thread-join!/error long 2) conn)
                   (check (Connection-expire conn) => target)
                   (api-record! gate 'release work)))))))))

   ;; Synchronous source-private publication faults, not dispatcher inputs. Only
   ;; admission is supplied by the test; grants, public waiters and output are real.
   (def (check-publication-failure (stage : :symbol))
     => :void
     (for-each
       (lambda ((failure : :t))
         (let ((gate (APIMonitor)) (owner #f) (armed? #t) (encoded? #f) (hits 0) (observed #f))
           (parameterize
               ((source#current-protocol-encoding-hook
                 (lambda (conn round work tokens)
                   (when (and (eq? conn owner) (not encoded?))
                     (set! encoded? #t)
                     (protocol-gate! gate 'encoding work))))
                (source#current-protocol-transition-hook
                 (lambda (at (conn : NetworkConnection) round work)
                   (when (and armed? (eq? conn owner) (eq? at stage) work
                              (if (eq? stage 'control-owner)
                                (and (= (ConnectionWork-type work) frame-renew-commit)
                                     (eq? (ConnectionWork-state work) 'reserved))
                                (eq? (ConnectionWork-state work) 'staging)))
                     ;; Disarm before ABORT cleanup can use the same publication seam.
                     (set! armed? #f)
                     (set! hits (fx1+ hits))
                     (using ((round :- RenewalRound) (work :- ConnectionWork)
                             (scheduler conn.parent.scheduler :- ConnectionScheduler))
                       (set! observed [round work [work.state work.size scheduler.control-frames
                                                              scheduler.control-bytes scheduler.renewal-frames
                                                              scheduler.renewal-bytes]])
                       ;; A worker must not invoke the test's escaping continuation.
                       (let* ((live (filter (lambda ((w : ConnectionWork)) (not (eq? w.state 'released)))
                                            (if (eq? stage 'control-owner) (cons work round.controls) round.controls)))
                              (frames (length live))
                              (bytes (foldl (lambda ((w : ConnectionWork) n) (+ n frame-header-size w.size)) 0 live)))
                         (unless (and (eq? (mutex-state conn.parent.mx) (current-thread))
                                      (eq? work.renewal round)
                                      (equal? [round.committed? round.installed? round.visible? work.protected?]
                                              [#f #f (eq? stage 'control-owner) #t])
                                      (eq? (and (memq work round.controls) #t) (not (eq? stage 'control-owner)))
                                      (eq? (and (memq round round.scope.owned) #t) (not (eq? stage 'scope-owner)))
                                      (equal? [scheduler.control-frames scheduler.control-bytes
                                                                        scheduler.renewal-frames scheduler.renewal-bytes]
                                              [frames bytes frames bytes])
                                      (case stage
                                        ((control-owner) (= work.size 12))
                                        ((scope-owner)
                                         (and (= work.size scheduler.control-limit) (eq? round.worker #f)))
                                        ((fill)
                                         (and (< work.size scheduler.control-limit) (> (vector-length round.tokens) 0)))))
                           (error "Unexpected renewal publication boundary" stage)))
                       (raise failure))))))
             (call-with-protocol-networks 'unix gate
               (lambda ((a : Network) (b : Network) ma mb address start)
                 (let* ((conn (a.connect! (b.host) [(b.listen! (address "publication-failure"))]))
                        (peer (b.connect! (a.host) []))
                        (sibling (Connection-open-stream! conn "/renewal/publication-sibling/v0"))
                        (incoming (api-await mb 'stream-open (lambda (_) #t)))
                        (old (Connection-expire conn)) (target (+ old 4))
                        (leases (map Stream-expire [sibling incoming])))
                   (using ((impl (interface-instance-object conn) :- NetworkConnection)
                           (remote (interface-instance-object peer) :- NetworkConnection))
                     (connection-protect-renewal! impl)
                     (renewal-disallow-new! ma mb)
                     (for-each
                       (lambda ((c : NetworkConnection))
                         (renewal-wait! (lambda () (with-stream-io-lock c.parent.mx (= c.parent.scheduler.control-frames 0)))
                                        (+ (##current-time-point) 2)))
                       [impl remote])
                     (set! owner impl)
                     (if (eq? stage 'scope-owner)
                       ;; No worker exists at this seam. Contained startup failure
                       ;; must return normally with no active round, even for #f.
                       (using (operation (RenewalOperation target: target adaptive?: #f
                                                           deadline: (operation-deadline (current-time-seconds) 4)) :- RenewalOperation)
                         (let (outcome
                               (with-catch (lambda (e) ['failed e])
                                           (lambda ()
                                             (with-stream-io-lock impl.parent.mx
                                               (set! impl.renewal.operation operation)
                                               (source#connection-renewal-launch! impl impl.renewal operation)
                                               ['returned impl.renewal.active]))))
                           (check outcome => ['returned #f])))
                       (let* ((round (protocol-launch! impl impl.renewal target))
                              (encoding (api-await gate 'encoding (lambda (_) #t) 2))
                              (caller (start (lambda ()
                                               (with-catch (lambda (e) ['failed e])
                                                           (lambda () ['succeeded (a.connect! (b.host) [] expire: target)])))))
                              (request (renewal-wait!
                                        (lambda () (with-stream-io-lock impl.parent.mx
                                                     (and (pair? impl.renewal.requests) (car impl.renewal.requests))))
                                        (+ (##current-time-point) 1))))
                         (using ((round :- RenewalRound) (request :- RenewalRequest))
                           (with-stream-io-lock impl.parent.mx
                             (check-eq? impl.renewal.active round)
                             (check [request.state request.target round.target] => ['pending target target]))
                           (api-record! gate 'release encoding)
                           (let (outcome (thread-join!/error caller 2))
                             (check (car outcome) => 'failed)
                             (check-eq? (cadr outcome) failure))
                           (check request.state => 'failed)
                           (check-eq? request.error failure))))
                     (check hits => 1)
                     (check (car (caddr observed)) => (if (eq? stage 'control-owner) 'reserved 'staging))
                     (using ((round (car observed) :- RenewalRound) (work (cadr observed) :- ConnectionWork)
                             (operation round.operation :- RenewalOperation))
                       (renewal-wait! (lambda () (with-stream-io-lock impl.parent.mx round.worker-done?))
                                      (+ (##current-time-point) 2))
                       (when round.worker (network-thread-join! round.worker 2))
                       (for-each
                         (lambda ((c : NetworkConnection))
                           (renewal-wait!
                            (lambda () (with-stream-io-lock c.parent.mx
                                         (and (null? c.renewal.owned) (= c.parent.scheduler.control-frames 0))))
                            (+ (##current-time-point) 2))
                           (with-stream-io-lock c.parent.mx
                             (check [c.parent.closed? c.parent.scheduler.closed? c.renewal.active] => [#f #f #f])
                             (check [c.parent.scheduler.control-bytes c.parent.scheduler.renewal-frames
                                                                      c.parent.scheduler.renewal-bytes] => [0 0 0])))
                         [impl remote])
                       (check [round.failed? round.retired? round.committed? round.installed? round.phase round.reason]
                              => [#t #t #f #f 'failed reason-internal])
                       (check [operation.finished? operation.retry? operation.reason] => [#t #f reason-internal])
                       (check-eq? round.error failure)
                       (check-eq? operation.error failure)
                       (check [work.state work.header work.bytes work.renewal work.opening work.request]
                              => ['released #u8() #u8() #f #f #f]))
                     (check (map Connection-expire [conn peer]) => [old old])
                     (check (map Stream-expire [sibling incoming]) => leases)
                     (renewal-pulse! sibling incoming)
                     ;; A later real control exchange proves no reserved FIFO barrier survived.
                     (check-eq? (a.connect! (b.host) [] expire: target) conn)
                     (check (map Connection-expire [conn peer]) => [target target])
                     (check (map Stream-expire [sibling incoming]) => leases)
                     (check hits => 1)
                     (for-each (lambda (m) (check (renewal-event-count m 'stream-close) => 0)
                                       (check (renewal-event-count m 'connection-close) => 0)) [ma mb]))))))))
       [(Error "Renewal publication failed") #f]))

   ;; The renewal worker fails synchronously after COMMIT selection, while the
   ;; original writer still owns its unsent bytes. RESET is confined to this stream.
   (def (check-renewal-worker-failure)
     => :void
     (for-each
       (lambda ((failure : :t))
         (let ((gate (APIMonitor)) (owner #f) (parent #f) (armed? #t) (held? #f) (hits 0))
           (parameterize
               ((source#current-protocol-transition-hook
                 (lambda (stage conn round work)
                   (when (and armed? (eq? conn owner) (eq? stage 'complete))
                     (set! armed? #f)
                     (set! hits (fx1+ hits))
                     (unless (and (eq? work #f)
                                  (eq? (current-thread) (RenewalRound-worker round))
                                  (not (eq? (mutex-state (ConnectionParent-mx parent)) (current-thread))))
                       (error "Unexpected renewal worker completion boundary"))
                     (protocol-gate! gate 'complete round)
                     (raise failure))))
                (source#current-protocol-io-hook
                 (lambda (stage p (work : ConnectionWork))
                   (when (and (eq? p parent) (eq? stage 'selected) (not held?)
                              (= work.type frame-stream-renew-commit))
                     (set! held? #t)
                     (protocol-gate! gate 'commit work)))))
             (call-with-protocol-networks (if (eq? failure #f) 'tls 'unix) gate
               (lambda ((a : Network) (b : Network) ma mb address start)
                 (let* ((conn (a.connect! (b.host) [(b.listen! (address "worker-failure"))]))
                        (peer (b.connect! (a.host) []))
                        (stream (Connection-open-stream! conn "/renewal/worker-failure/v0" lease: 'connection))
                        (incoming (api-await mb 'stream-open (lambda (_) #t)))
                        (sibling (Connection-open-stream! conn "/renewal/worker-sibling/v0"))
                        (sibling-in (api-await mb 'stream-open (lambda (s) (= (Stream-id s) (Stream-id sibling)))))
                        (old (Connection-expire conn)) (old-stream (Stream-expire stream)))
                   (using ((impl (interface-instance-object conn) :- NetworkConnection)
                           (remote (interface-instance-object peer) :- NetworkConnection)
                           (entry (renewal-test-entry conn stream) :- ConnectionOpening))
                     (set! owner impl)
                     (set! parent impl.parent)
                     (renewal-disallow-new! ma mb)
                     (using (round (protocol-launch! impl entry.renewal (+ 4 (max old old-stream))) :- RenewalRound)
                       (check-eq? (api-await gate 'complete (lambda (_) #t) 2) round)
                       (using (work (api-await gate 'commit (lambda (_) #t) 2) :- ConnectionWork)
                         (let (bytes work.bytes)
                           (with-stream-io-lock impl.parent.mx
                             (check-eq? work.renewal round)
                             (check-eq? impl.parent.scheduler.in-flight work)
                             (check [round.committed? round.installed? round.worker-done? round.phase work.state]
                                    => [#t #f #f 'commit-sent 'in-flight]))
                           (api-record! gate 'release round)
                           (check (car (with-catch (lambda (e) ['failed e])
                                                   (lambda () ['finished (network-thread-join! round.worker 2)]))) => 'finished)
                           (with-stream-io-lock impl.parent.mx
                             (check [round.failed? round.retired? round.worker-done? round.committed? round.installed?]
                                    => [#t #t #t #t #f])
                             (check round.reason => reason-internal)
                             (check entry.cancelled? => #t)
                             (check-eq? round.error failure)
                             (check-eq? entry.error failure)
                             (check [impl.parent.closed? impl.parent.scheduler.closed?] => [#f #f])
                             (check (memq round entry.renewal.owned) ? pair?)
                             (check-eq? impl.parent.scheduler.in-flight work)
                             (check work.state => 'in-flight)
                             (check-eq? work.bytes bytes)
                             ;; The selected COMMIT and queued RESET remain charged.
                             (check [impl.parent.scheduler.control-frames impl.parent.scheduler.control-bytes
                                                                          impl.parent.scheduler.renewal-frames
                                                                          impl.parent.scheduler.renewal-bytes]
                                    => [2 (+ (* 2 frame-header-size) work.size 2) 0 0]))
                           (api-record! gate 'release work)
                           (api-await ma 'stream-close (lambda (s) (eq? s stream)))
                           (api-await mb 'stream-close (lambda (s) (eq? s incoming)))
                           (renewal-wait!
                            (lambda () (with-stream-io-lock impl.parent.mx
                                         (and (eq? work.state 'released) (null? entry.renewal.owned))))
                            (+ (##current-time-point) 2))
                           (check (Stream-expire stream) => old-stream)
                           ;; Remote COMMIT installation may have crossed RESET; do not assert rollback.
                           (check (map Connection-expire [conn peer]) => [old old])
                           (renewal-pulse! sibling sibling-in)
                           (check-eq? (a.connect! (b.host) []) conn)
                           (check hits => 1)
                           (check (renewal-event-count ma 'stream-close) => 1)
                           (check (renewal-event-count mb 'stream-close) => 1)
                           (api-close! a b)
                           (for-each
                             (lambda ((c : NetworkConnection))
                               (with-stream-io-lock c.parent.mx
                                 (check [c.parent.scheduler.in-flight c.parent.scheduler.control-frames
                                                                      c.parent.scheduler.control-bytes
                                                                      c.parent.scheduler.renewal-frames
                                                                      c.parent.scheduler.renewal-bytes] => [#f 0 0 0 0])))
                             [impl remote])))))))))))
       [(Error "Renewal worker failed after commitment") #f]))

    ;; A genuine public renewal succeeds before its responder's actual ACK release
    ;; callback raises. Storage/accounting already ended and must never be replayed.
    ;; A competing close queues on parent mx before the late fault is raised.
   (def (check-renewal-release-failure)
     => :void
     (for-each
       (lambda ((failure : :t))
         (let ((gate (APIMonitor)) (held #f) (armed? #t) (hits 0) (writes 0)
               (start-worker #f) (competitor #f) (blocked #f)
               (competing-failure (Error "Competing close after ACK release")))
           (parameterize
               ((source#current-protocol-io-hook
                 (lambda (stage parent (work : ConnectionWork))
                   (when (and (eq? stage 'written) (= work.type frame-renew-ack))
                     (set! writes (fx1+ writes))
                     (unless held
                       (set! held work)
                       (protocol-gate! gate 'ack work)))))
                (source#current-protocol-transition-hook
                 (lambda (stage (conn : NetworkConnection) round work)
                   (when (and (eq? stage 'released) (eq? work held))
                     (set! hits (fx1+ hits))
                     (when armed?
                       (set! armed? #f)
                       (using ((round :- RenewalRound) (work :- ConnectionWork))
                         (unless (and (eq? (mutex-state conn.parent.mx) (current-thread))
                                      (eq? work.renewal round)
                                      (equal? [work.state work.header work.bytes work.start work.end]
                                              ['released #u8() #u8() 0 0])
                                      (equal? [round.committed? round.installed? round.retired? round.phase]
                                              [#t #t #f 'ack-sent])
                                      (equal? [conn.parent.scheduler.in-flight conn.parent.scheduler.control-frames
                                                                               conn.parent.scheduler.control-bytes
                                                                               conn.parent.scheduler.renewal-frames
                                                                               conn.parent.scheduler.renewal-bytes]
                                              [#f 0 0 0 0]))
                           (error "Unexpected renewal release boundary"))
                         (set! competitor
                           (start-worker
                            (lambda ()
                              (connection-parent-close! conn.parent competing-failure)
                              'closed)))
                         ;; Wait only for acquisition to start, never for close to
                         ;; finish while this callback still holds its parent mx.
                         (set! blocked
                           (renewal-wait!
                            (lambda ()
                              (let (state (thread-state competitor))
                                (and (thread-state-waiting? state)
                                     (eq? (thread-state-waiting-for state) conn.parent.mx)
                                     state)))
                            (+ (##current-time-point) 1)))
                         (raise failure)))))))
             (call-with-protocol-networks (if (eq? failure #f) 'tls 'unix) gate
               (lambda ((a : Network) (b : Network) ma mb address start)
                 ;; The fixture also joins the competitor if a main-thread check escapes.
                 (set! start-worker start)
                 (let* ((conn (a.connect! (b.host) [(b.listen! (address "release-failure"))]))
                        (peer (b.connect! (a.host) []))
                        (target (+ (Connection-expire conn) 4))
                        (caller (start (lambda () (a.connect! (b.host) [] expire: target))))
                        (work (api-await gate 'ack (lambda (_) #t) 2)))
                   (using ((impl (interface-instance-object peer) :- NetworkConnection)
                           (remote (interface-instance-object conn) :- NetworkConnection)
                           (work :- ConnectionWork) (round work.renewal :- RenewalRound))
                     (check-eq? (thread-join!/error caller 2) conn)
                     (check (map Connection-expire [conn peer]) => [target target])
                     (api-record! gate 'release work)
                     (let (outcome (with-catch (lambda (e) ['failed e])
                                               (lambda () ['succeeded (network-thread-join! impl.parent.writer-worker 2)])))
                       (check (car outcome) => 'failed)
                       (check-eq? (cadr outcome) failure))
                     (check blocked ? thread-state-waiting?)
                     (check-eq? (thread-state-waiting-for blocked) impl.parent.mx)
                     (check (thread-join!/error competitor 2) => 'closed)
                     (with-stream-io-lock impl.parent.mx
                       (check [impl.parent.closed? impl.parent.scheduler.closed? round.failed? round.retired? round.installed?]
                              => [#t #t #t #t #t])
                       (check-eq? impl.parent.error failure)
                       (check-eq? impl.parent.scheduler.error failure)
                       (check-eq? round.error failure)
                       (check [work.state work.renewal work.opening work.request] => ['released #f #f #f]))
                     (api-close! a b)
                     (check round.worker-done? => #t)
                     (check (map Connection-expire [conn peer]) => [target target])
                     (check [hits writes] => [1 1])
                     (for-each
                       (lambda ((c : NetworkConnection))
                         (with-stream-io-lock c.parent.mx
                           (check [c.parent.scheduler.in-flight c.parent.scheduler.control-frames
                                                                c.parent.scheduler.control-bytes
                                                                c.parent.scheduler.renewal-frames
                                                                c.parent.scheduler.renewal-bytes] => [#f 0 0 0 0])))
                       [impl remote])
                     (for-each (lambda (m) (check (renewal-event-count m 'connection-close) => 1)) [ma mb]))))))))
       [(Error "Renewal ACK release callback failed") #f]))

   ;; A second synchronous error can leave cancellation itself unfinished. The
   ;; shared scheduler must then become fatal before any ordinary round recovery.
   (def (check-publication-cleanup-failure (fill-failure? : :boolean := #f))
     => :void
     (for-each
       (lambda (failure)
         (let ((gate (APIMonitor)) (owner #f) (phase 0) (reserved #f)
               (fill-cancels 0) (send-retries 0)
               (initial (Error "Publication attachment failed")))
           (parameterize
               ((source#current-protocol-encoding-hook
                 (lambda (conn round work tokens)
                   (when (eq? conn owner) (protocol-gate! gate 'encoding work))))
                (source#current-protocol-transition-hook
                 (lambda (stage conn round work)
                   (when (eq? conn owner)
                     (cond
                      ((and (= phase 0) (eq? stage (if fill-failure? 'fill-encode 'control-owner))
                            (= (ConnectionWork-type work) frame-renew-commit))
                       (set! reserved work)
                       (set! phase 1)
                       (raise initial))
                      ((and (or fill-failure? (= phase 1))
                            (eq? stage (if fill-failure? 'fill-cancel 'cancel)) (eq? work reserved))
                       (when fill-failure?
                         (set! fill-cancels (fx1+ fill-cancels))
                         ;; Simulate cleanup failure before cancellation, not actual
                         ;; allocator exhaustion. The FIFO reservation is still owned.
                         (using ((conn :- NetworkConnection) (round :- RenewalRound) (work :- ConnectionWork))
                           (unless (and (eq? (mutex-state conn.parent.mx) (current-thread))
                                        (eq? work.state 'reserved)
                                        (eq? work.renewal round)
                                        (memq work round.controls)
                                        (not conn.parent.closed?)
                                        (> conn.parent.scheduler.control-frames 0)
                                        (> conn.parent.scheduler.control-bytes 0))
                             (error "Unexpected fill cancellation boundary"))))
                       (set! phase 2)
                       (raise failure))
                      ((and fill-failure? (eq? stage 'cancel) (eq? work reserved))
                       (set! send-retries (fx1+ send-retries))))))))
             (call-with-protocol-networks 'unix gate
               (lambda ((a : Network) (b : Network) ma mb address start)
                 (let* ((conn (a.connect! (b.host) [(b.listen! (address "publication-cleanup"))]))
                        (peer (b.connect! (a.host) []))
                        (old (Connection-expire conn)) (target (+ old 4)))
                   (using (impl (interface-instance-object conn) :- NetworkConnection)
                     (connection-protect-renewal! impl)
                     (set! owner impl)
                     (using (round (protocol-launch! impl impl.renewal target) :- RenewalRound)
                       (let* ((encoding (api-await gate 'encoding (lambda (_) #t) 2))
                              (caller (start (lambda ()
                                               (with-catch (lambda (e) ['failed e])
                                                           (lambda () ['succeeded (a.connect! (b.host) [] expire: target)]))))))
                         (renewal-wait! (lambda () (with-stream-io-lock impl.parent.mx (pair? impl.renewal.requests)))
                                        (+ (##current-time-point) 1))
                         (api-record! gate 'release encoding)
                         (let (outcome (thread-join!/error caller 2))
                           (check (car outcome) => 'failed)
                           (check-eq? (cadr outcome) failure))
                         (when fill-failure?
                           ;; A retry is already a regression; do not wait for the
                           ;; old recoverable-round path to time out or close it here.
                           (renewal-wait!
                            (lambda ()
                              (with-stream-io-lock impl.parent.mx
                                (or (> send-retries 0) impl.parent.closed?)))
                            (+ (##current-time-point) 1))
                           (with-stream-io-lock impl.parent.mx
                             (check [fill-cancels send-retries] => [1 0])
                             (check impl.parent.closed? => #t)
                             (check-eq? impl.parent.error failure)))
                         (api-close! a b)
                         (with-stream-io-lock impl.parent.mx
                           (check phase => 2)
                           (check [impl.parent.closed? impl.parent.scheduler.closed? round.worker-done?] => [#t #t #t])
                           (check-eq? impl.parent.error failure)
                           (check-eq? impl.parent.scheduler.error failure)
                           (using (work reserved :- ConnectionWork)
                             (check [work.state work.renewal work.bytes] => ['released #f #u8()]))
                           (check [impl.parent.scheduler.in-flight impl.parent.scheduler.control-frames
                                                                   impl.parent.scheduler.control-bytes impl.parent.scheduler.renewal-frames
                                                                   impl.parent.scheduler.renewal-bytes] => [#f 0 0 0 0]))
                         (check (map Connection-expire [conn peer]) => [old old])
                         (when fill-failure?
                           (check [fill-cancels send-retries] => [1 0])
                           (for-each (lambda (m) (check (renewal-event-count m 'connection-close) => 1)) [ma mb])))))))))))
       [(Error "Publication cancellation failed") #f]))

   ;; Source-instrumented protection entries execute the actual DATA release path.
   ;; A late entry models failure before its finalizer could have been installed.
   (def (check-data-release-protection)
     => :void
     (let ((gate (APIMonitor)) (entries 0))
       (parameterize
           ((source#current-protocol-transition-hook
             (lambda (stage conn round work)
               (when (eq? stage 'release-protection)
                 (using (work :- ConnectionWork)
                   (when (= work.type frame-data)
                     (set! entries (+ entries 1))
                     (unless (eq? work.state 'in-flight)
                       (error "DATA established protection after releasing ownership")))))))
            (source#current-protocol-release-hook
             (lambda (parent (work : ConnectionWork))
               (when (= work.type frame-data) (api-record! gate 'data-released work)))))
         (call-with-protocol-networks 'unix gate
           (lambda ((a : Network) (b : Network) ma mb address start)
             (let* ((conn (a.connect! (b.host) [(b.listen! (address "data-release-protection"))]))
                    (stream (Connection-open-stream! conn "/renewal/data-protection/v0"))
                    (incoming (api-await mb 'stream-open (lambda (_) #t)))
                    (buffer (make-u8vector 4)))
               (check (Writer-write (Stream-writer stream) #u8(1 2 3 4)) => 4)
               (check (Reader-read (Stream-reader incoming) buffer 0 4 4) => 4)
               (check buffer => #u8(1 2 3 4))
               (using ((work (api-await gate 'data-released (lambda (_) #t) 2) :- ConnectionWork)
                       (impl (interface-instance-object conn) :- NetworkConnection))
                 (with-stream-io-lock impl.parent.mx
                   (check (> entries 0) => #t)
                   (check work.state => 'released)
                   (check [work.header work.bytes work.stream work.opening work.renewal work.request]
                          => [#u8() #u8() #f #f #f #f])
                   (check impl.parent.closed? => #f))
                 (renewal-pulse! stream incoming)
                 (check-eq? (a.connect! (b.host) []) conn))))))))

   ;; Real OFFERs encounter the retired-but-owned AUTH round. Each refusal is
   ;; queued behind that original writer borrow; ordinary capacity cannot rescue
   ;; a fifth protected control. Local cancellation generates actual peer ABORTs.
   (def (check-protected-reply-quota)
     => :void
     (let ((gate (APIMonitor)) (held? #f)
           (limits (ConnectionLimits control-payload: 8192 data-payload: 4
                                     pending-control-frames: 16 pending-control-bytes: 65536
                                     stream-limits: (StreamLimits recv-window: 8 outbound-buffer: 8))))
       (parameterize
           ((current-protocol-limits limits)
            (source#current-protocol-io-hook
             (lambda (stage parent (work : ConnectionWork))
               (when (and (not held?) (eq? stage 'selected) (= work.type frame-renew-auth))
                 (set! held? #t)
                 (protocol-gate! gate 'auth work)))))
         (call-with-protocol-networks 'unix gate
           (lambda ((a : Network) (b : Network) ma mb address start)
             (let* ((conn (a.connect! (b.host) [(b.listen! (address "protected-reply-quota"))]))
                    (peer (b.connect! (a.host) []))
                    (stream (Connection-open-stream! conn "/renewal/quota/v0"))
                    (incoming (api-await mb 'stream-open (lambda (_) #t)))
                    (old (Connection-expire conn)) (target (+ old 4))
                    (cancelled (Closed "Test cancelled precommit interest")))
               (using ((local (interface-instance-object conn) :- NetworkConnection)
                       (remote (interface-instance-object peer) :- NetworkConnection)
                       (entry (renewal-test-entry conn stream) :- ConnectionOpening)
                       (peer-entry (renewal-test-entry peer incoming) :- ConnectionOpening))
                 (renewal-disallow-new! ma mb)
                 (for-each
                   (lambda ((impl : NetworkConnection))
                     (renewal-wait! (lambda () (with-stream-io-lock impl.parent.mx
                                                 (= impl.parent.scheduler.control-frames 0)))
                                    (+ (##current-time-point) 2)))
                   [local remote])
                 (let* ((first (start (lambda () (with-catch (lambda (e) ['failed e])
                                                             (lambda () ['succeeded (a.connect! (b.host) [] expire: target)])))))
                        (auth (api-await gate 'auth (lambda (_) #t) 2)))
                   (using ((auth :- ConnectionWork) (owner auth.renewal :- RenewalRound)
                           (wake remote.parent.wake :- StreamWake))
                     (let ((charge (+ frame-header-size auth.size)) (bytes auth.bytes)
                           (rejected []) (aborts []))
                       (with-stream-io-lock remote.parent.mx
                         (check auth.state => 'in-flight)
                         (check auth.protected? => #t)
                         (check owner.phase => 'auth-sent)
                         (check owner.committed? => #f))
                       (with-stream-io-lock local.parent.mx
                         (source#connection-renewal-fail! local local.renewal.active cancelled reason-cancelled))
                       (let (outcome (thread-join!/error first 2))
                         (check (car outcome) => 'failed)
                         (check-eq? (cadr outcome) cancelled))
                       (renewal-wait! (lambda () (with-stream-io-lock remote.parent.mx
                                                   (and owner.retired? owner.worker-done?)))
                                      (+ (##current-time-point) 2))
                       (for-each
                         (lambda (count)
                           (renewal-wait! (lambda () (with-stream-io-lock local.parent.mx
                                                       (and (null? local.renewal.owned) (not local.renewal.operation))))
                                          (+ (##current-time-point) 2))
                           (let (caller (start (lambda () (with-catch (lambda (e) ['failed e])
                                                                      (lambda () ['succeeded (a.connect! (b.host) [] expire: target)])))))
                             (renewal-wait! (lambda () (with-stream-io-lock remote.parent.mx
                                                         (= remote.parent.scheduler.renewal-frames (+ count 1))))
                                            (+ (##current-time-point) 2))
                             (with-stream-io-lock remote.parent.mx
                               (check remote.parent.closed? => #f)
                               (check remote.renewal.active => #f)
                               (check remote.renewal.owned => [owner])
                               (check remote.renewal.last-id => (+ count 1))
                               (check remote.parent.scheduler.control-frames => (+ count 1))
                               (check remote.parent.scheduler.control-bytes => (+ charge (* count 23)))
                               (check remote.parent.scheduler.renewal-bytes => (+ charge (* count 23))))
                             (with-stream-io-lock local.parent.mx
                               (using (round local.renewal.active :- RenewalRound)
                                 (check-eq? round.scope local.renewal)
                                 (check round.id => (+ count 1))
                                 (set! rejected (cons round rejected))
                                 (source#connection-renewal-fail! local round cancelled reason-cancelled)))
                             (check (thread-join!/error caller 2) => ['failed cancelled])))
                         [1 2 3])
                       (set! rejected (reverse rejected))
                       (with-stream-io-lock remote.parent.mx
                         (set! aborts (queue->list remote.parent.scheduler.controls))
                         (check (map RenewalRound-id rejected) => [2 3 4])
                         (check (length aborts) => 3)
                         (for-each
                           (lambda ((work : ConnectionWork) (origin : RenewalRound))
                             (using (received work.renewal :- RenewalRound)
                               (check [work.type work.id work.state work.protected?] => [frame-renew-abort 0 'ready #t])
                               (check (vector->list (decode-frame-payload work.type work.bytes)) => [origin.id reason-limit])
                               (check-eq? received.scope remote.renewal)
                               (check [received.id received.target received.deadline] => [origin.id origin.target origin.deadline])
                               ;; The same four-second policy applies later at receipt,
                               ;; leaving the originating deadline as the tighter bound.
                               (check received.deadline
                                      => (min origin.deadline
                                              (operation-deadline (current-time-seconds) remote.config.renewal-timeout)))))
                           aborts rejected))
                       (renewal-wait! (lambda () (with-stream-io-lock local.parent.mx
                                                   (and (null? local.renewal.owned) (not local.renewal.operation)
                                                        (= local.parent.scheduler.control-frames 0))))
                                      (+ (##current-time-point) 2))
                       (let* ((waiter (start (lambda () (with-catch (lambda (e) ['failed e])
                                                                    (lambda () ['succeeded (b.connect! (a.host) [] expire: target)])))))
                              (reader (start (lambda ()
                                               (let (outcome
                                                     (with-catch (lambda (e) ['failed e])
                                                                 (lambda () ['succeeded (Reader-read (Stream-reader stream) (make-u8vector 1) 0 1 1)])))
                                                 (api-record! gate 'peer-read outcome) outcome))))
                              (request
                               (renewal-wait! (lambda () (with-stream-io-lock remote.parent.mx
                                                           (and (pair? remote.renewal.requests)
                                                                (car remote.renewal.requests))))
                                              (+ (##current-time-point) 1)))
                              (cutoff (min owner.deadline (RenewalRequest-deadline request)))
                              (last #f))
                         (for-each
                           (lambda ((impl : NetworkConnection) (opening : ConnectionOpening))
                             (with-stream-io-lock impl.parent.mx
                               (with-stream-io-lock opening.io.input-mx
                                 (check [impl.parent.closed? opening.cancelled? opening.io.state.aborted?] => [#f #f #f]))))
                           [local remote] [entry peer-entry])
                         (renewal-wait!
                          (lambda ()
                            (let (state (thread-state reader))
                              (and (thread-state-waiting? state)
                                   (eq? (thread-state-waiting-for state) entry.io.input-cv))))
                          (+ (##current-time-point) 1))
                         (unwind-protect
                           (begin
                             ;; Hold service's passive leaf only after it is idle.
                             ;; Fatal dispatch must close native IO before this leaf.
                             (renewal-wait!
                              (lambda ()
                                (mutex-lock! wake.mx)
                                (let (state (thread-state remote.parent.worker))
                                  (if (and (not wake.service?) (thread-state-waiting? state)
                                           (eq? (thread-state-waiting-for state) wake.service-cv))
                                    #t (begin (mutex-unlock! wake.mx) #f))))
                              (+ (##current-time-point) 1))
                             (check (< (current-time-seconds) cutoff) => #t)
                             (set! last (start (lambda () (with-catch (lambda (e) ['failed e])
                                                                      (lambda () ['succeeded (a.connect! (b.host) [] expire: target)])))))
                             (renewal-wait!
                              (lambda () (let (state (thread-state remote.parent.reader-worker))
                                           (and (thread-state-waiting? state)
                                                (eq? (thread-state-waiting-for state) wake.mx))))
                              (+ (##current-time-point) 2))
                             (check remote.parent.closed? => #t)
                             (check remote.parent.error ? Closed?)
                             (check (Error-message remote.parent.error) => "Mandatory control capacity exhausted")
                             ;; Stopped workers fix this snapshot; do not acquire
                             ;; parent/stream locks backwards while holding wake.mx.
                             (check peer-entry.io.state.aborted? => #f)
                             (check remote.renewal.last-id => 5)
                             (check remote.parent.scheduler.renewal-frames => 4)
                             (check remote.parent.scheduler.renewal-bytes => (+ charge 69))
                             ;; Even five such frames fit the bytes and aggregate
                             ;; frame budgets; the protected four-frame bound wins.
                             (check (< 5 (ConnectionLimits-pending-control-frames limits)) => #t)
                             (check (<= (+ charge 92) (renewal-protected-bytes limits)) => #t)
                             (let (outcome (api-await gate 'peer-read (lambda (_) #t) 2))
                               (check (car outcome) => 'failed)
                               (check (cadr outcome) ? Closed?))
                             (check (< (current-time-seconds) cutoff) => #t))
                           (when (eq? (mutex-state wake.mx) (current-thread)) (mutex-unlock! wake.mx)))
                         (let (outcome (thread-join!/error waiter 2))
                           (check (car outcome) => 'failed)
                           (check-eq? (cadr outcome) remote.parent.error))
                         (check (car (thread-join!/error last 2)) => 'failed)
                         (check (car (thread-join!/error reader 2)) => 'failed)
                         (renewal-wait! (lambda () (with-stream-io-lock remote.parent.mx
                                                     (= remote.parent.scheduler.control-frames 1)))
                                        (+ (##current-time-point) 2))
                         (with-stream-io-lock remote.parent.mx
                           (check-eq? remote.parent.scheduler.in-flight auth)
                           (check-eq? auth.bytes bytes)
                           (check auth.state => 'in-flight)
                           (check remote.renewal.owned => [owner])
                           (check remote.parent.scheduler.control-bytes => charge)
                           (check remote.parent.scheduler.renewal-frames => 1)
                           (check remote.parent.scheduler.renewal-bytes => charge)
                           (for-each
                             (lambda ((work : ConnectionWork))
                               (check [work.state work.header work.bytes work.start work.end
                                                  work.stream work.opening work.renewal work.request]
                                      => ['released #u8() #u8() 0 0 #f #f #f #f]))
                             aborts))
                         (check (map Connection-expire [conn peer]) => [old old])
                         (api-record! gate 'release auth)
                         (api-close! a b)
                         (with-stream-io-lock remote.parent.mx
                           (check auth.state => 'released)
                           (check [remote.parent.scheduler.control-frames remote.parent.scheduler.control-bytes
                                                                          remote.parent.scheduler.renewal-frames remote.parent.scheduler.renewal-bytes]
                                  => [0 0 0 0])))))))))))))

   (def renewal-protocol-test
      (test-suite "Renewal protocol boundaries and retained ownership"
        (test-case "independent caller cutoffs precede operation, wire, general and remote settlement"
          (check-settlement-cutoffs))
        (test-case "ACK installation across the caller lock cutoff cannot turn timeout into success"
          (check-waiter-cutoff #f)
          (check-waiter-cutoff #t))
        (test-case "final read after FIN preserves peer unread bytes across ACK receipt and release"
          (check-graceful-renewal #f)
          (check-graceful-renewal #t))
        (test-case "live deferred offers cannot be duplicated, overtaken after release, or aborted with reason zero"
          (check-live-deferral #f)
          (check-live-deferral #t))
       (test-case "ACK receipt permits a new public round before the old ACK's output release"
         (check-ack-deferral #f))
       (test-case "deferred stream OFFER completes through the original writer in both physical roles"
         (check-stream-ack-deferral #f)
         (check-stream-ack-deferral #t))
       (test-case "mandatory stream ACK exhaustion retains encoder and writer ownership through socket-first close"
         (check-renewal-reply-exhaustion))
       (test-case "protected connection quota exhausts at the fifth mandatory control without borrowing ordinary capacity"
         (check-protected-reply-quota))
       (test-case "fixed connection declines protection with a bounded RESULT when one frame remains"
         (check-fixed-request-capacity #f))
       (test-case "fixed connection mandatory RESULT exhaustion closes before releasing retained credits"
         (check-fixed-request-capacity #t))
       (test-case "synchronous renewal publication failure returns reservations without losing the old lease"
         (for-each check-publication-failure '(scope-owner control-owner fill)))
       (test-case "failed publication cancellation is connection-fatal without stranding its reservation"
         (check-publication-cleanup-failure))
       (test-case "failed fill cancellation is connection-fatal without retrying cleanup in send"
         (check-publication-cleanup-failure #t))
       (test-case "synchronous committed renewal worker failure resets only its stream and retains COMMIT ownership"
         (check-renewal-worker-failure))
       (test-case "late ACK release failure preserves identity and clears ownership without replay"
         (check-renewal-release-failure))
       (test-case "DATA release establishes no new protection after ownership is relinquished"
         (check-data-release-protection))
       (test-case "ABORT retires a deferred OFFER and a later public round is admitted"
         (check-ack-deferral #t))
       (test-case "higher connection OFFER retires an expired deferral before classification, retaining the old ACK"
         (check-expired-ack-deferral #f))
       (test-case "higher stream OFFER retires an expired deferral before classification, retaining the old ACK"
         (check-expired-ack-deferral #t))
       (test-case "selected ACK cutoff is connection-fatal or stream-local without freeing the writer borrow"
         (check-commit-failure #f))
       (test-case "precommit ABORT crossing selected COMMIT closes only its committed scope"
         (check-commit-failure #t))

       (test-case "two real encoders retain staging through cancellation and close without consuming protected renewal capacity"
         (let* ((gate (APIMonitor))
                (payload 8192)
                (base (ConnectionLimits control-payload: payload))
                (charge (+ payload frame-header-size))
                (limits (ConnectionLimits
                         control-payload: payload data-payload: 4 renewing-streams: 2
                         pending-control-frames: 16
                         pending-control-bytes: (+ (renewal-protected-bytes base) (* 2 charge) 128)
                         stream-limits: (StreamLimits recv-window: 8 outbound-buffer: 8))))
           (parameterize
               ((current-protocol-limits limits)
                (source#current-protocol-encoding-hook
                 (lambda (conn round work tokens)
                   (protocol-gate! gate 'encoding [round work tokens]))))
             (call-with-protocol-networks 'unix gate
               (lambda ((a : Network) (b : Network) ma mb address start)
                 (let* ((addr (b.listen! (address "staging")))
                        (conn (a.connect! (b.host) [addr]))
                        (peer (api-await mb 'connection-open (lambda (_) #t)))
                        (streams (map (lambda (protocol)
                                        (Connection-open-stream! conn protocol lease: 'connection))
                                      '("/renewal/staged-a/v0" "/renewal/staged-b/v0" "/renewal/queued/v0")))
                        (entries (map (lambda (s) (renewal-test-entry conn s)) streams))
                        (old (Connection-expire conn))
                        (target (+ 4 (apply max old (map Stream-expire streams)))))
                   (using ((impl (interface-instance-object conn) :- NetworkConnection)
                           (remote (interface-instance-object peer) :- NetworkConnection))
                     (renewal-wait!
                      (lambda () (do-with-lock impl.parent.mx (= impl.parent.scheduler.control-frames 0)))
                      (+ (##current-time-point) 2))
                     ;; INTERNAL ADMISSION SEAM: create the initiating operation,
                     ;; then use the actual launcher, capacity check and encoder.
                     ;; No peer OFFER is invented and no installed lease changes.
                     (let (rounds
                           (do-with-lock impl.parent.mx
                             (map
                               (lambda ((entry : ConnectionOpening))
                                 (using (scope entry.renewal :- RenewalScope)
                                   (let (operation (RenewalOperation target: target
                                                                     deadline: (operation-deadline (current-time-seconds) 4)
                                                                     adaptive?: #t))
                                     (set! scope.operation operation)
                                     (source#connection-renewal-launch! impl scope operation)
                                     (or scope.active (error "Staging round was not admitted")))))
                               [(car entries) (cadr entries)])))
                       (for-each
                         (lambda ((round : RenewalRound))
                           (let (evidence (api-await gate 'encoding (lambda (event) (eq? (car event) round))))
                             ;; Validation uses the actual recipient context, not
                             ;; a preconstructed Token or a monitor decision.
                             (check (caddr evidence) ? pair?)
                             (for-each
                               (lambda (token)
                                 (check (Token-expire token) ? (lambda (expire) (>= expire target)))
                                 (check (CapabilityContext-verify remote.candidate.context token) ? !VerificationOK?))
                               (caddr evidence))))
                         rounds)
                       (do-with-lock impl.parent.mx
                         (check (protocol-owned-streams impl) => 2)
                         (check (connection-control-available impl.parent.scheduler #f) => 128)
                         (check (connection-control-available impl.parent.scheduler #t) => (renewal-protected-bytes limits))
                         (check (source#connection-renewal-slot? impl (ConnectionOpening-renewal (caddr entries))) => #f))
                       ;; Keep both serializers suspended while the normal public
                       ;; connection engine uses its independent protected quota.
                       (check-eq? (a.connect! (b.host) [] expire: target) conn)
                       (check (Connection-expire peer) => target)
                       (do-with-lock impl.parent.mx
                         (check (RenewalScope-last-id (ConnectionOpening-renewal (caddr entries))) => 0)
                         (using (queued (ConnectionOpening-renewal (caddr entries)) :- RenewalScope)
                           (check queued.owned => [])
                           (check queued.attempted => 0)
                           (check queued.attempted-target => 0)))
                       (Stream-close (car streams))
                       (renewal-wait!
                        (lambda () (do-with-lock impl.parent.mx (RenewalRound-retired? (car rounds))))
                        (+ (##current-time-point) 2))
                       (do-with-lock impl.parent.mx
                         (check (protocol-owned-streams impl) => 2)
                         (check (connection-control-available impl.parent.scheduler #f) ? (cut <= <> 128))
                         (for-each
                           (lambda ((round : RenewalRound))
                             (check (ConnectionWork-state round.staging-work) => 'staging)
                             (check round.worker-done? => #f))
                           rounds)
                         (using (queued (ConnectionOpening-renewal (caddr entries)) :- RenewalScope)
                           (check queued.last-id => 0)
                           (check queued.owned => [])
                           (check (source#connection-renewal-slot? impl queued) => #f)))
                       (Connection-close conn)
                       (do-with-lock impl.parent.mx
                         (check impl.parent.closed? => #t)
                         (check (protocol-owned-streams impl) => 2)
                         (check (>= impl.parent.scheduler.control-bytes (* 2 charge)) => #t)
                         (for-each
                           (lambda ((round : RenewalRound))
                             (check round.retired? => #t)
                             (check round.worker-done? => #f)
                             (check (ConnectionWork-state round.staging-work) => 'staging))
                           rounds))
                       (api-record! gate 'release 'all)
                       (api-close! a b)
                       (do-with-lock impl.parent.mx
                         (for-each
                           (lambda ((round : RenewalRound))
                             (check round.worker-done? => #t)
                             (check (ConnectionWork-state round.staging-work) => 'released))
                           rounds)
                         (check impl.parent.scheduler.control-frames => 0)
                         (check impl.parent.scheduler.control-bytes => 0))))))))))

       (test-case "three public linked streams renew in bounded waves with renewing-streams one"
         (for-each
           (lambda (mode)
             (let (gate (APIMonitor))
               (parameterize
                   ((current-protocol-limits
                     (ConnectionLimits data-payload: 4 renewing-streams: 1
                                       stream-limits: (StreamLimits recv-window: 8 outbound-buffer: 8)))
                    (source#current-protocol-io-hook
                     (lambda (stage parent (work : ConnectionWork))
                       (when (and (eq? stage 'written) (= work.type frame-stream-renew-commit))
                         (protocol-gate! gate 'wave work)))))
                 (call-with-protocol-networks mode gate
                   (lambda ((a : Network) (b : Network) ma mb address start)
                     (let* ((addr (b.listen! (address "waves")))
                            (conn (a.connect! (b.host) [addr]))
                            (peer (api-await mb 'connection-open (lambda (_) #t)))
                            (streams (map (lambda (protocol)
                                            (Connection-open-stream! conn protocol lease: 'connection))
                                          '("/renewal/wave-a/v0" "/renewal/wave-b/v0" "/renewal/wave-c/v0")))
                            (incoming (map (lambda (s)
                                             (api-await mb 'stream-open (lambda (p) (= (Stream-id p) (Stream-id s))))) streams))
                            (entries (map (lambda (s) (renewal-test-entry conn s)) streams))
                            (old (map Stream-expire streams))
                            (identities (renewal-stream-identities (append streams incoming)))
                            (target (+ 4 (apply max (Connection-expire conn) old))))
                       (renewal-disallow-new! ma mb)
                       (check-eq? (a.connect! (b.host) [] expire: target) conn)
                       (using (impl (interface-instance-object conn) :- NetworkConnection)
                         (let loop ((left 3) (seen []))
                           (when (> left 0)
                             (using (work (api-await gate 'wave (lambda (work) (not (memq work seen)))) :- ConnectionWork)
                               (using (round work.renewal :- RenewalRound)
                                 ;; Receipt can install while this very COMMIT's
                                 ;; output-release bookkeeping is still pending.
                                 (renewal-wait!
                                  (lambda () (do-with-lock impl.parent.mx (and round.retired? round.worker-done?)))
                                  (+ (##current-time-point) 2))
                                 (do-with-lock impl.parent.mx
                                   (check (protocol-owned-streams impl) => 1)
                                   (check-eq? impl.parent.scheduler.in-flight work)
                                   (check work.state => 'in-flight)
                                   (check round.installed? => #t)
                                   (check (length (filter (lambda ((e : ConnectionOpening))
                                                            (> (RenewalScope-last-id e.renewal) 0)) entries))
                                          => (- 4 left)))
                                 (check (length (filter (lambda (s) (>= (Stream-expire s) target)) streams)) => (- 4 left))
                                 (renewal-check-identities! identities)
                                 (api-record! gate 'release work)
                                 (loop (- left 1) (cons work seen))))))
                         (renewal-wait! (lambda () (do-with-lock impl.parent.mx (= (protocol-owned-streams impl) 0)))
                                        (+ (##current-time-point) 3)))
                       (for-each
                         (lambda (stream incoming before)
                           (check (> (Stream-expire stream) before) => #t)
                           (check (Stream-expire stream) => (Stream-expire incoming))
                           (renewal-pulse! stream incoming))
                         streams incoming old)
                       (check (Connection-expire conn) => target)
                       (check (Connection-expire peer) => target)
                       (for-each
                         (lambda (monitor)
                           (check (renewal-event-count monitor 'connection-open) => 1)
                           (check (renewal-event-count monitor 'stream-open) => 3)
                           (check (renewal-event-count monitor 'stream-close) => 0)
                           (check (renewal-event-count monitor 'unexpected-allow) => 0))
                         [ma mb])))))))
           '(unix tls))))))
  (else
   (export renewal-protocol-test)
   (def renewal-protocol-test #f)))
