;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Source-unit renewal namespace and finite expiration boundaries
(import :gerbil/base
        (only-in :gerbil/runtime/mop
                 new-instance)
        :std/error
        :std/test
        :std/time/time
        ./config
        ./connection
        (only-in ./interface
                 DIRECTION-OUT)
        ./renewal
        ./stream
        ./wire)
(export renewal-limits-test)

;; These are finite-input source units, not authenticated network fixtures. Keep
;; the real classes and algorithms, with only a local clock and an outgoing
;; staging-reservation refusal. The latter observes the constructed last round
;; before any worker/context is needed; it proves ID allocation, not OFFER output
;; or renewal completion. REQUEST encoding below uses the real allocator/codec.
(defsyntax (renewal-limits-source-module stx)
  (syntax-case stx ()
    ((_ name path)
     (let ((names '(connection-parent-check-live!
                    connection-protect-renewal-locked!
                    connection-renewal-entry
                    connection-renewal-expire
                    connection-renewal-scopes
                    connection-renewal-send!
                    connection-renewal-fail!
                    connection-renewal-live?
                    connection-renewal-operation
                    connection-renewal-slot?
                    connection-renewal-start!
                    connection-renewal-launch!
                    connection-renewal-result!
                    connection-renewal-settle!
                    connection-renewal-auto-due
                    connection-renewal-request-wire!
                    connection-renewal-service!))
           (loaded []) (clocks 0) (reservations 0) (spawns 0))
       (def (instrument form)
         (cond
          ((equal? form '(current-time-seconds))
           (set! clocks (+ clocks 1))
           '((current-unit-clock)))
          ((equal? form '(connection-control-reserve! scheduler type round.scope.id allowance #f #f protected?))
           (set! reservations (+ reservations 1))
           '(begin ((current-unit-reservation-hook) self round) #f))
          ((equal? form '(spawn-network-thread 'connection-renewal-round (cut connection-renewal-thread self round)))
           (set! spawns (+ spawns 1))
           '(error "Renewal limits unit must not start a worker"))
          ((pair? form) (cons (instrument (car form)) (instrument (cdr form))))
          (else form)))
       (let (forms
             (call-with-input-file (gx#core-resolve-path #'path (stx-source stx))
               (lambda (port)
                 (let loop ((result []))
                   (let (form (read port))
                     (cond
                      ((eof-object? form) (reverse result))
                      ((and (pair? form) (eq? (car form) 'def)
                            (pair? (cadr form)) (memq (caadr form) names))
                       (set! loaded (cons (caadr form) loaded))
                       (loop (cons (instrument form) result)))
                      (else (loop result))))))))
         (unless (and (= (length loaded) (length names))
                      (andmap (lambda (name) (memq name loaded)) names)
                      (= clocks 9) (= reservations 1) (= spawns 1))
           (error "Renewal limits source boundaries changed" loaded clocks reservations spawns))
         (datum->syntax #'name
           `(module ,(stx-e #'name)
              (import :gerbil/base
                      :std/error
                      :std/time/time
                      :std/ensemble/network/auth
                      :std/ensemble/network/connection
                      :std/ensemble/network/renewal
                      :std/ensemble/network/stream
                      :std/ensemble/network/wire)
              (export connection-parent-check-live!
                      connection-protect-renewal-locked!
                      connection-renewal-expire
                      connection-renewal-slot?
                      connection-renewal-launch!
                      connection-renewal-fail!
                      connection-renewal-request-wire!
                      connection-renewal-settle!
                      connection-renewal-service!
                      current-unit-clock
                      current-unit-reservation-hook)
              (def current-unit-clock (make-parameter current-time-seconds))
              (def current-unit-reservation-hook
                (make-parameter (lambda (owner round) (void))))
              ,@forms)))))))

(renewal-limits-source-module limits-source "connection.ss")
(import (prefix-in limits-source source#))

(def renewal-limits-maxu64 #xffffffffffffffff)

;; Bypass only the live NetworkConnection constructor: it requires authenticated
;; transport and starts service. Initialize just the fields these units read.
;; The openings are lookup records with standalone IO, not public accepted streams;
;; no socket, candidate, context, public Connection view or worker is fabricated.
;; All test callbacks hold parent mx, with dynamic cleanup for assertion escapes.
(def (call-with-renewal-limits-unit (expire        : :integer)
                                    (stream-expire : :integer)
                                    (proc          : :procedure))
  => :void
  (using ((owner (new-instance NetworkConnection::t) :- NetworkConnection)
          (config (NetworkConfig renewal-timeout: 4) :- NetworkConfig)
          (limits (ConnectionLimits data-payload: 8 control-payload: 256
                                    stream-limits: (StreamLimits recv-window: 8 outbound-buffer: 8))
                  :- ConnectionLimits))
    (set! owner.config config)
    (set! owner.parent
      (ConnectionParent scheduler: (make-connection-scheduler limits 8 256) expire: expire))
    (set! owner.renewal (RenewalScope coordinator?: #t))
    (set! owner.renewal-cv (make-condition-variable 'renewal-limits-unit))
    (set! owner.openings [])
    (unwind-protect
      (begin
        (for-each
          (lambda (id)
            (set! owner.openings
              (cons (ConnectionOpening owner: owner direction: DIRECTION-OUT deadline: expire
                                       id: id linked?: #t
                                       renewal: (RenewalScope id: id coordinator?: #t)
                                       io: (make-stream-io limits.stream-limits 8 stream-expire config))
                    owner.openings)))
          [3 1])
        (mutex-lock! owner.parent.mx)
        (unwind-protect
          (begin
            (unless (source#connection-protect-renewal-locked! owner)
              (error "Renewal limits unit lacks staging capacity"))
            (proc owner))
          (mutex-unlock! owner.parent.mx)))
      (begin
        ;; No service, transport or credential thread is created by this fixture.
        ;; A raw-scheduler REQUEST borrower releases its own work before returning.
        (connection-scheduler-close! owner.parent.scheduler)
        (for-each (lambda ((entry :- ConnectionOpening))
                    (when entry.io (stream-io-abort! entry.io)))
                  owner.openings)))
    (void)))

;; Check old authority and unrelated IO before fixture teardown intentionally
;; aborts them. This is liveness/metadata evidence, not network DATA evidence.
(def (check-renewal-limits-preserved! (owner         :  NetworkConnection)
                                      (expire        :  :integer)
                                      (stream-expire :  :integer)
                                      (staging       :? ConnectionWork := #f)
                                      (control-run   :  :fixnum := 0))
  => :void
  (check (source#connection-parent-check-live! owner.parent) => (void))
  (check owner.parent.expire => expire)
  (check [owner.parent.closed? owner.parent.scheduler.closed?] => [#f #f])
  (check [owner.parent.worker owner.parent.reader-worker owner.parent.writer-worker
                              owner.parent.socket owner.parent.started?] => [#f #f #f #f #f])
  (check [owner.parent.local-open-id owner.parent.peer-open-id] => [0 0])
  (let (cost (if staging (fx+ frame-header-size staging.size) 0))
    (check [owner.parent.scheduler.control-frames owner.parent.scheduler.control-bytes
                                                  owner.parent.scheduler.renewal-frames
                                                  owner.parent.scheduler.renewal-bytes]
           => (if staging [1 cost 1 cost] [0 0 0 0])))
  (when staging (check staging.state => 'staging))
  (check [owner.parent.scheduler.control-run owner.parent.scheduler.in-flight] => [control-run #f])
  (check (map ConnectionOpening-id owner.openings) => [1 3])
  (for-each
    (lambda ((entry :- ConnectionOpening))
      (using ((io entry.io :- StreamIO)
              (scope entry.renewal :- RenewalScope))
        (check (source#connection-renewal-expire owner scope) => stream-expire)
        (check io.expire => stream-expire)
        (check [entry.cancelled? io.state.aborted?] => [#f #f])
        (check [io.state.receive-credit io.state.pending-credit io.state.send-credit
                                        io.state.in-flight io.state.receive.size io.state.send.size]
               => [8 0 8 0 0 0])
        (check [io.state.receive-fin? io.state.output-state] => [#f 'open])
        (check [scope.active scope.deferred scope.owned] => [#f #f []])))
    owner.openings)
  (void))

;; The last allocation is observed at the production outgoing reservation call,
;; which returns #f here. Production start/failure cleanup runs; no worker does.
;; The next allocation must hit exhaustion before revisiting that call.
(def (check-renewal-round-limit (stream? : :boolean))
  => :void
  (let* ((now (current-time-seconds)) (expire (+ now 240)) (stream-expire (+ now 120))
         (rounds []))
    (parameterize ((source#current-unit-clock (lambda () now))
                   (source#current-unit-reservation-hook
                    (lambda ((owner : NetworkConnection) (round : RenewalRound))
                      (set! rounds (cons round rounds)))))
      (call-with-renewal-limits-unit expire stream-expire
                                     (lambda ((owner : NetworkConnection))
                                       (using ((scope (if stream? (ConnectionOpening-renewal (car owner.openings)) owner.renewal)
                                                      :- RenewalScope)
                                               (sibling (ConnectionOpening-renewal (cadr owner.openings)) :- RenewalScope))
                                         (using ((target (if stream? expire (+ expire 1)) : :integer)
                                                 (deadline (+ now 40) : :integer)
                                                 (first (RenewalOperation target: target deadline: deadline adaptive?: #t) :- RenewalOperation)
                                                 (last (RenewalOperation target: target deadline: deadline adaptive?: #t) :- RenewalOperation))
                                           (set! owner.renewal.request-id 7)
                                           (set! scope.last-id (- renewal-limits-maxu64 1))
                                           (set! scope.automatic? #t)
                                           (set! scope.desired target)
                                           (check (source#connection-renewal-slot? owner scope) => #t)
                                           (set! scope.operation first)
                                           (source#connection-renewal-launch! owner scope first)
                                           (check (length rounds) => 1)
                                           (using (round (car rounds) :- RenewalRound)
                                             (check (eq? round.scope scope) => #t)
                                             (check [round.id round.target round.deadline round.old-expire round.headroom]
                                                    => [renewal-limits-maxu64 target deadline (if stream? stream-expire expire) (+ now 4)])
                                             (check [round.failed? round.retired? round.worker-done?] => [#t #t #t])
                                             (check [round.worker round.staging-work round.controls] => [#f #f []]))
                                           (check [first.finished? first.reason scope.exhausted?] => [#t reason-internal #f])
                                           (source#connection-renewal-settle! owner scope)
                                           (set! scope.operation last)
                                           (source#connection-renewal-launch! owner scope last)
                                           (check [last.finished? last.reason scope.exhausted?] => [#t reason-limit #t])
                                           (check last.error ? Closed?)
                                           (source#connection-renewal-settle! owner scope)
                                           (for-each (lambda (scan) (source#connection-renewal-service! owner #f)) [1 2 3])
                                           (check (length rounds) => 1)
                                           (check scope.last-id => renewal-limits-maxu64)
                                           (check [scope.operation scope.active scope.owned] => [#f #f []])
                                           (check owner.renewal.request-id => 7)
                                           (check [sibling.last-id sibling.exhausted?] => [0 #f])
                                           (when stream? (check [owner.renewal.last-id owner.renewal.exhausted?] => [0 #f]))
                                           ;; An unrelated scope can still allocate its first ID. Its staging
                                           ;; refusal has the same narrow proof level as the max-ID observation.
                                           (check (source#connection-renewal-slot? owner sibling) => #t)
                                           (source#connection-renewal-launch!
                                            owner sibling (RenewalOperation target: expire deadline: deadline adaptive?: #t))
                                           (check (length rounds) => 2)
                                           (check (eq? (RenewalRound-scope (car rounds)) sibling) => #t)
                                           (check [sibling.last-id sibling.exhausted?] => [1 #f])
                                           (check scope.last-id => renewal-limits-maxu64)
                                           (check-renewal-limits-preserved! owner expire stream-expire)))))))
  (void))

;; No waiting thread or fake waiter algorithm: real service and settlement act on
;; synthetic caller records. Exhaustion must fail later uncovered work while still
;; satisfying a covered caller; none of these original deadlines has elapsed.
;; The retained variant is synthetic owner state, not a running provider or an
;; end-to-end exchange: a retired final round retains real unqueued staging, but
;; has no worker handle and must not be treated as worker-done or release capacity.
(def (check-renewal-exhausted-callers (coordinator? : :boolean)
                                      (retained?    : :boolean))
  => :void
  (let* ((now (current-time-seconds)) (expire (+ now 120)) (reservations 0))
    (parameterize ((source#current-unit-clock (lambda () now))
                   (source#current-unit-reservation-hook
                    (lambda (owner round) (set! reservations (fx1+ reservations)))))
      (call-with-renewal-limits-unit expire expire
                                     (lambda ((owner : NetworkConnection))
                                       (using ((scope owner.renewal :- RenewalScope)
                                               (first (RenewalRequest target: (+ expire 1) deadline: (+ now 40)) :- RenewalRequest)
                                               (queued (RenewalRequest target: (+ expire 2) deadline: (+ now 40)) :- RenewalRequest)
                                               (later (RenewalRequest target: (+ expire 3) deadline: (+ now 40)) :- RenewalRequest)
                                               (covered (RenewalRequest target: expire deadline: (+ now 40)) :- RenewalRequest)
                                               (work #f :? ConnectionWork)
                                               (round #f :? RenewalRound))
                                         (set! scope.coordinator? coordinator?)
                                         (set! scope.automatic? #t)
                                         (if coordinator?
                                           (set! scope.last-id renewal-limits-maxu64)
                                           (set! scope.request-id renewal-limits-maxu64))
                                         (unwind-protect
                                           (begin
                                             (when retained?
                                               ;; For the responder, this is the peer's final round ID; its
                                               ;; locally allocated REQUEST namespace is independently final.
                                               (set! scope.last-id renewal-limits-maxu64)
                                               (set! work
                                                 (connection-control-reserve!
                                                  owner.parent.scheduler (if coordinator? frame-renew-offer frame-renew-auth)
                                                  0 owner.parent.scheduler.control-limit #f #f #t))
                                               (unless work
                                                 (error "Retained renewal unit staging was not admitted"))
                                               (set! round
                                                 (RenewalRound scope: scope id: renewal-limits-maxu64
                                                               target: (+ expire 1) deadline: (+ now 40) headroom: (+ now 4)
                                                               old-expire: expire adaptive?: #t coordinator?: coordinator?
                                                               retired?: #t failed?: #t phase: 'failed
                                                               staging-work: work controls: [work]))
                                               (set! work.renewal round)
                                               (set! scope.owned [round])
                                               (check (source#connection-renewal-slot? owner scope) => #f))
                                             (check-renewal-limits-preserved! owner expire expire work)
                                             (set! scope.requests [queued first])
                                             (source#connection-renewal-service! owner #f)
                                             (check scope.exhausted? => #t)
                                             (check first.state => 'failed)
                                             (check first.error ? Closed?)
                                             (check queued.state => 'failed)
                                             (set! scope.requests [later covered queued first])
                                             (for-each (lambda (scan) (source#connection-renewal-service! owner #f)) [1 2 3])
                                             (check reservations => 0)
                                             (check covered.state => 'succeeded)
                                             (check [scope.last-id scope.request-id]
                                                    => [(if (or coordinator? retained?) renewal-limits-maxu64 0)
                                                        (if coordinator? 0 renewal-limits-maxu64)])
                                             (check [scope.active scope.deferred scope.operation scope.wire-request] => [#f #f #f #f])
                                             (check scope.owned => (if retained? [round] []))
                                             (when round
                                               (check [round.id round.retired? round.worker-done? round.worker]
                                                      => [renewal-limits-maxu64 #t #f #f])
                                               (check [round.staging-work round.controls] => [work [work]]))
                                             (when work
                                               (check (eq? work.renewal round) => #t)
                                               (check [work.type work.id work.size work.protected?]
                                                      => [(if coordinator? frame-renew-offer frame-renew-auth)
                                                          0 owner.parent.scheduler.control-limit #t])
                                               (check (source#connection-renewal-slot? owner scope) => #f))
                                             (for-each
                                               (lambda ((entry :- ConnectionOpening))
                                                 (using (other entry.renewal :- RenewalScope)
                                                   (check [other.last-id other.request-id other.attempted other.attempted-target
                                                                         other.last-auto-start other.desired] => [0 0 0 0 0 0])
                                                   (check [other.automatic? other.exhausted? other.operation] => [#f #f #f])
                                                   (check (source#connection-renewal-slot? owner other) => #t)))
                                               owner.openings)
                                             (check-renewal-limits-preserved! owner expire expire work)
                                             (check queued.state => 'failed)
                                             (check queued.error ? Closed?)
                                             (check later.state => 'failed)
                                             (check later.error ? Closed?))
                                           ;; This unit owns the unqueued reservation, not a worker or writer.
                                           ;; Even a failed assertion cancels it only after the observed body.
                                           (when work (connection-control-cancel! work)))
                                         (when work (check work.state => 'released))
                                         (check-renewal-limits-preserved! owner expire expire))))))
  (void))

(def (check-renewal-final-request (borrowed? : :boolean))
  => :void
  (let* ((now (current-time-seconds)) (expire (+ now 120))
         (failure (Closed "Source-unit terminal REQUEST input")))
    (parameterize ((source#current-unit-clock (lambda () now)))
      (call-with-renewal-limits-unit expire expire
                                     (lambda ((owner : NetworkConnection))
                                       (using ((scope owner.renewal :- RenewalScope) (scheduler owner.parent.scheduler :- ConnectionScheduler)
                                               (first (RenewalRequest target: (+ expire 1) deadline: (+ now 20)) :- RenewalRequest)
                                               (higher (RenewalRequest target: (+ expire 2) deadline: (+ now 40)) :- RenewalRequest)
                                               (covered (RenewalRequest target: expire deadline: (+ now 40)) :- RenewalRequest)
                                               (work #f :? ConnectionWork) (staging #f :? ConnectionWork))
                                         (set! scope.coordinator? #f)
                                         (set! scope.request-id (- renewal-limits-maxu64 1))
                                         (set! scope.requests [covered])
                                         (source#connection-renewal-settle! owner scope)
                                         (check covered.state => 'succeeded)
                                         (set! scope.requests [higher first covered])
                                         (unwind-protect
                                           (begin
                                             (source#connection-renewal-request-wire! owner scope first)
                                             (using (wire scope.wire-request :- RenewalRequest)
                                               (set! work wire.control)
                                               (unless work
                                                 (error "Final REQUEST has no control"))
                                               (let ((header work.header) (bytes work.bytes))
                                                 ;; Raw scheduler only: this unit selects and owns the borrow,
                                                 ;; not a transport writer, and must itself release it below.
                                                 (if borrowed?
                                                   (check (eq? (connection-scheduler-next! scheduler) work) => #t)
                                                   (begin
                                                     (set! staging (connection-control-reserve! scheduler frame-renew-auth 0 256 #f #f #t))
                                                     (unless staging
                                                       (error "Final REQUEST staging was not admitted"))
                                                     (set! scope.last-id 1)
                                                     (using (round (RenewalRound scope: scope id: 1 target: first.target deadline: first.deadline
                                                                                 headroom: (+ now 4) old-expire: expire adaptive?: #f coordinator?: #f
                                                                                 retired?: #t phase: 'failed failed?: #t
                                                                                 staging-work: staging controls: [staging]) :- RenewalRound)
                                                       (set! staging.renewal round)
                                                       (set! scope.owned [round]))))
                                                 (source#connection-renewal-service! owner #f)
                                                 (check [scope.request-id wire.id scope.exhausted?] => [renewal-limits-maxu64 renewal-limits-maxu64 #f])
                                                 (check [wire.state first.state higher.state] => [(if borrowed? 'sent 'pending) 'pending 'pending])
                                                 (check [work.state scheduler.in-flight] => [(if borrowed? 'in-flight 'ready) (and borrowed? work)])
                                                 (check [scheduler.control-frames scheduler.control-bytes scheduler.renewal-frames scheduler.renewal-bytes]
                                                        => (if borrowed? [1 38 1 38] [2 307 2 307]))
                                                 ;; Source-unit outcome input, NOT a received peer RESULT. The
                                                 ;; ready variant instead lets real settlement time out/cancel
                                                 ;; REQUEST while its higher caller's original cutoff is live.
                                                 (if borrowed?
                                                   (begin (set! wire.state 'failed) (set! wire.error failure))
                                                   (set! now wire.deadline))
                                                 (check (< now higher.deadline) => #t)
                                                 (source#connection-renewal-service! owner #f)
                                                 (check [scope.exhausted? first.state higher.state covered.state] => [#t 'failed 'failed 'succeeded])
                                                 (check higher.error ? Closed?)
                                                 (check [scope.active scope.deferred scope.operation] => [#f #f #f])
                                                 (if borrowed?
                                                   (begin
                                                     (check (eq? first.error failure) => #t)
                                                     (check (eq? scope.wire-request wire) => #t)
                                                     (check (eq? work.request wire) => #t)
                                                     (check [work.state scheduler.in-flight] => ['in-flight work])
                                                     (check (and (eq? work.header header) (eq? work.bytes bytes)) => #t)
                                                     (check [scheduler.control-frames scheduler.control-bytes scheduler.renewal-frames scheduler.renewal-bytes]
                                                            => [1 38 1 38])
                                                     (connection-work-release! work)
                                                     (source#connection-renewal-settle! owner scope))
                                                   (begin
                                                     (check wire.error ? Timeout?)
                                                     (check (source#connection-renewal-slot? owner scope) => #f)))
                                                 (check [work.state scope.wire-request] => ['released #f])
                                                 (check [scope.last-id scope.request-id] => [(if borrowed? 0 1) renewal-limits-maxu64])
                                                 (when staging
                                                   (using (round staging.renewal :- RenewalRound)
                                                     (check scope.owned => [round])
                                                     (check [round.retired? round.worker-done? round.worker round.staging-work]
                                                            => [#t #f #f staging])))
                                                 (check-renewal-limits-preserved! owner expire expire staging (if borrowed? 1 0)))))
                                           (begin
                                             (when work
                                               (if (eq? work.state 'in-flight) (connection-work-release! work) (connection-control-cancel! work)))
                                             (when staging (connection-control-cancel! staging))))
                                         (check (map (lambda ((entry : ConnectionOpening))
                                                       (using (other entry.renewal :- RenewalScope)
                                                         [other.last-id other.request-id other.exhausted?])) owner.openings)
                                                => [[0 0 #f] [0 0 #f]])
                                         (check-renewal-limits-preserved! owner expire expire #f (if borrowed? 1 0)))))))
  (void))

(def renewal-limits-test
  (test-suite "source-unit renewal namespace and expiration limits"
    (test-case "request IDs encode maxu64 once, then fail without wrap or reuse"
      (let* ((now (current-time-seconds)) (start now) (expire (+ now 120)))
        (parameterize ((source#current-unit-clock (lambda () now)))
          (call-with-renewal-limits-unit expire expire
                                         (lambda ((owner : NetworkConnection))
                                           (using ((scope owner.renewal :- RenewalScope)
                                                   (request (RenewalRequest target: (+ expire 1) deadline: (+ start 30)) :- RenewalRequest))
                                             (set! scope.coordinator? #f)
                                             (set! scope.automatic? #t)
                                             (set! scope.last-id 11)
                                             (set! scope.request-id (- renewal-limits-maxu64 1))
                                             (set! scope.requests [request])
                                             (source#connection-renewal-request-wire! owner scope request)
                                             (using ((wire scope.wire-request :- RenewalRequest)
                                                     (work wire.control :- ConnectionWork))
                                               (check [scope.request-id wire.id scope.exhausted?]
                                                      => [renewal-limits-maxu64 renewal-limits-maxu64 #f])
                                               (check [work.type work.id work.state work.size] => [frame-renew-request 0 'ready 25])
                                               (check (decode-frame-payload work.type work.bytes)
                                                      => (vector renewal-limits-maxu64 request.target request.deadline lease-mode-fixed))
                                               (check [owner.parent.scheduler.control-frames owner.parent.scheduler.control-bytes] => [1 38])
                                               ;; Expire the unsent synthetic interest through real settlement,
                                               ;; not a fabricated RESULT or an output-release impersonation.
                                               (set! now wire.deadline)
                                               (source#connection-renewal-settle! owner scope)
                                               (check wire.state => 'failed)
                                               (check wire.error ? Timeout?)
                                               (check work.state => 'released)
                                               (check scope.wire-request => #f))
                                             (for-each
                                               (lambda (offset)
                                                 (using (next (RenewalRequest target: (+ expire offset) deadline: (+ start 60)) :- RenewalRequest)
                                                   (source#connection-renewal-request-wire! owner scope next)
                                                   (check next.state => 'failed)
                                                   (check next.error ? Closed?)
                                                   (check scope.request-id => renewal-limits-maxu64)))
                                               [2 3])
                                             (check scope.exhausted? => #t)
                                             (for-each (lambda (scan) (check (source#connection-renewal-service! owner #f) => #f)) [1 2 3])
                                             (check [scope.last-id scope.wire-request scope.operation] => [11 #f #f])
                                             (for-each (lambda ((entry :- ConnectionOpening))
                                                         (using (other entry.renewal :- RenewalScope)
                                                           (check [other.last-id other.exhausted?] => [0 #f])))
                                                       owner.openings)
                                             (check-renewal-limits-preserved! owner expire expire)))))))

    (test-case "connection round maxu64 is allocated before scope-local exhaustion"
      (check-renewal-round-limit #f))

    (test-case "linked stream round maxu64 is allocated without consuming sibling or OPEN IDs"
      (check-renewal-round-limit #t))

    (test-case "exhausted connection rounds fail later uncovered callers without waiting for timeout"
      (for-each (lambda (retained?) (check-renewal-exhausted-callers #t retained?)) [#f #t]))

    (test-case "exhausted connection requests fail later uncovered callers without waiting for timeout"
      (for-each (lambda (retained?) (check-renewal-exhausted-callers #f retained?)) [#f #t]))

    (test-case "final REQUEST terminal settlement is independent of retained output and same-scan control clearing"
      (for-each check-renewal-final-request [#t #f]))

    (test-case "active final round survives until source retirement while staging remains owned"
      ;; Synthetic active-owner state with real staging, not a credential worker
      ;; or authenticated exchange. Only the production failure function retires it.
      (let* ((now (current-time-seconds)) (expire (+ now 120)) (failure (Closed "Source-unit round retirement")))
        (parameterize ((source#current-unit-clock (lambda () now)))
          (call-with-renewal-limits-unit expire expire
                                         (lambda ((owner : NetworkConnection))
                                           (using ((scope owner.renewal :- RenewalScope)
                                                   (request (RenewalRequest target: (+ expire 1) deadline: (+ now 40)) :- RenewalRequest)
                                                   (covered (RenewalRequest target: expire deadline: (+ now 40)) :- RenewalRequest)
                                                   (work #f :? ConnectionWork))
                                             (set! scope.last-id renewal-limits-maxu64)
                                             (set! scope.requests [request covered])
                                             (unwind-protect
                                               (begin
                                                 (set! work (connection-control-reserve! owner.parent.scheduler frame-renew-offer 0 256 #f #f #t))
                                                 (unless work
                                                   (error "Active final round staging was not admitted"))
                                                 (using (round (RenewalRound scope: scope id: renewal-limits-maxu64 target: request.target
                                                                             deadline: request.deadline headroom: (+ now 4) old-expire: expire
                                                                             adaptive?: #f coordinator?: #t staging-work: work controls: [work]) :- RenewalRound)
                                                   (set! work.renewal round)
                                                   (set! scope.active round)
                                                   (set! scope.owned [round])
                                                   (check (< now request.deadline) => #t)
                                                   (source#connection-renewal-service! owner #f)
                                                   (check [scope.exhausted? request.state covered.state] => [#f 'pending 'succeeded])
                                                   (check (eq? scope.active round) => #t)
                                                   (check [round.retired? round.worker-done? round.worker] => [#f #f #f])
                                                   (check-renewal-limits-preserved! owner expire expire work)
                                                   (source#connection-renewal-fail! owner round failure reason-cancelled #f)
                                                   (check scope.active => #f)
                                                   (check (eq? round.error failure) => #t)
                                                   (source#connection-renewal-service! owner #f)
                                                   (check [scope.exhausted? request.state covered.state] => [#t 'failed 'succeeded])
                                                   (check request.error ? Closed?)
                                                   (check [scope.last-id scope.request-id scope.owned] => [renewal-limits-maxu64 0 [round]])
                                                   (check [round.retired? round.worker-done? round.worker round.staging-work] => [#t #f #f work])
                                                   (check (eq? work.renewal round) => #t)
                                                   (check-renewal-limits-preserved! owner expire expire work)))
                                               (when work (connection-control-cancel! work)))
                                             (check (map (lambda ((entry : ConnectionOpening))
                                                           (using (other entry.renewal :- RenewalScope)
                                                             [other.last-id other.request-id other.exhausted?])) owner.openings)
                                                    => [[0 0 #f] [0 0 #f]])
                                             (check-renewal-limits-preserved! owner expire expire)))))))

    (test-case "maxu64 remains a representable last forward automatic target"
      (using ((now (- renewal-limits-maxu64 10) : :integer)
              (expire (- renewal-limits-maxu64 1) : :integer)
              (observed #f :? RenewalRound)
              (reservations 0 : :fixnum))
        (parameterize ((source#current-unit-clock (lambda () now))
                       (source#current-unit-reservation-hook
                        (lambda ((owner : NetworkConnection) (round : RenewalRound))
                          (set! observed round)
                          (set! reservations (fx1+ reservations)))))
          (call-with-renewal-limits-unit expire expire
                                         (lambda ((owner : NetworkConnection))
                                           (set! owner.renewal.automatic? #t)
                                           (source#connection-renewal-service! owner #f)
                                           (check reservations => 1)
                                           (check observed ? RenewalRound?)
                                           (when observed
                                             (check [observed.id observed.target observed.old-expire observed.headroom observed.deadline]
                                                    => [1 renewal-limits-maxu64 expire (+ now 4) (+ now 4)])
                                             (check [observed.worker observed.retired?] => [#f #t]))
                                           (for-each (lambda (scan) (check (source#connection-renewal-service! owner #f) => #f)) [1 2 3])
                                           (check reservations => 1)
                                           (check [owner.renewal.attempted owner.renewal.last-id owner.renewal.exhausted?] => [expire 1 #f])
                                           (check-renewal-limits-preserved! owner expire expire))))))

    (test-case "installed maxu64 suppresses connection and linked-stream automatic overflow and spin"
      ;; Also start a fresh fixture at max-1: prior scans must not mask overflow
      ;; by having already set exhausted?. Even now+T is unrepresentable there.
      ;; The stream desired target is already covered, not an impossible max+1.
      (for-each
        (lambda (coordinator?)
          (for-each
            (lambda (initial-remaining)
              (let ((now (- renewal-limits-maxu64 initial-remaining)) (reservations 0))
                (parameterize ((source#current-unit-clock (lambda () now))
                               (source#current-unit-reservation-hook
                                (lambda (owner round) (set! reservations (fx1+ reservations)))))
                  (call-with-renewal-limits-unit renewal-limits-maxu64 renewal-limits-maxu64
                                                 (lambda ((owner : NetworkConnection))
                                                   (set! owner.renewal.coordinator? coordinator?)
                                                   (set! owner.renewal.automatic? #t)
                                                   (set! owner.renewal.requests
                                                     [(RenewalRequest target: renewal-limits-maxu64 deadline: renewal-limits-maxu64)])
                                                   (check owner.renewal.exhausted? => #f)
                                                   (for-each (lambda ((entry :- ConnectionOpening))
                                                               (using (scope entry.renewal :- RenewalScope)
                                                                 (set! scope.automatic? #t)
                                                                 (set! scope.desired renewal-limits-maxu64)))
                                                             owner.openings)
                                                   (for-each
                                                     (lambda (remaining)
                                                       (check (<= now (- renewal-limits-maxu64 remaining)) => #t)
                                                       (set! now (- renewal-limits-maxu64 remaining))
                                                       (check (< now (RenewalRequest-deadline (car owner.renewal.requests))) => #t)
                                                       (check (source#connection-renewal-service! owner #f) => #f))
                                                     (if (= initial-remaining 10) [10 9 2 1 1] [1 1 1]))
                                                   (check reservations => 0)
                                                   (check (RenewalRequest-state (car owner.renewal.requests)) => 'succeeded)
                                                   (check owner.renewal.exhausted? => #t)
                                                   (check [owner.renewal.last-id owner.renewal.request-id owner.renewal.attempted
                                                                                 owner.renewal.last-auto-start] => [0 0 0 0])
                                                   (check [owner.renewal.operation owner.renewal.active owner.renewal.wire-request
                                                                                   owner.renewal.owned] => [#f #f #f []])
                                                   (for-each (lambda ((entry :- ConnectionOpening))
                                                               (using (scope entry.renewal :- RenewalScope)
                                                                 (check [scope.last-id scope.attempted scope.last-auto-start] => [0 0 0])
                                                                 (check scope.operation => #f)))
                                                             owner.openings)
                                                   (check-renewal-limits-preserved! owner renewal-limits-maxu64 renewal-limits-maxu64))))))
            [10 1]))
        [#t #f]))))
