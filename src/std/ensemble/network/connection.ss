;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Private managed scheduling, accepted-stream dispatch and framed socket workers
(import :std/error
        :std/interface
        :std/io/interface
        :std/iter
        :std/net/address
        :std/number/misc
        :std/struct/queue
        :std/time/time
        :std/time/timeout
        :std/vector/u8vector
        ../ucan/interface
        ./interface
        ./auth
        ./handshake
        ./log
        ./config
        ./wire
        ./renewal
        ./thread
        ./stream)
(export (struct-out ConnectionScheduler
                    ConnectionWork
                    ConnectionStream)
        make-connection-scheduler
        connection-control-reserve!
        connection-control-available
        connection-control-fill!
        connection-control-cancel!
        connection-scheduler-register!
        connection-scheduler-credit!
        connection-scheduler-fin!
        connection-scheduler-reset!
        connection-scheduler-remove!
        connection-queue-remove
        connection-scheduler-next!
        connection-work-release!
        connection-scheduler-close!
        (struct-out ConnectionParent)
        make-connection-parent
        connection-parent-attach!
        connection-parent-start!
        connection-parent-register!
        connection-parent-next!
        connection-parent-release!
        connection-parent-reset!
        connection-parent-remove!
        connection-parent-close!
        connection-parent-join!
        (struct-out NetworkConnection
                    ConnectionOpening)
        connection-opening-cancel!
        connection-dispatch-opening!
        make-network-connection
        connection-activate!
        connection-shutdown!
        connection-expiration
        connection-enable-renewable!
        connection-protect-renewal!
        connection-request-renewal!
        connection-renewal-close!
        connection-renewal-dispatch!)

(deftype @NetworkConnection NetworkConnection)
(deftype @ConnectionOpening ConnectionOpening)
(deftype @ConnectionParent ConnectionParent)

;; These records are private implementation contracts, not a Connection facade.
;; One caller serializes ALL transitions, including fill, close and release.
;; error defaults to raw closed state; parent-owned fatal paths replace it before
;; publishing closed?. Raw API closed checks keep their contextual Closed errors.
(defclass ConnectionScheduler
  ((limits         :  ConnectionLimits)
   (quantum        :  :fixnum)
   (control-limit  :  :integer)
   (controls       :  Queue := (make-Queue))
   (streams        :  Queue := (make-Queue))
   (control-frames :  :fixnum := 0)
   (control-bytes  :  :fixnum := 0)
   (control-run    :  :fixnum := 0)
   (protected?     :  :boolean := #f)
   (renewal-frames :  :fixnum := 0)
   (renewal-bytes  :  :fixnum := 0)
   (in-flight      :  :t := #f)
   (closed?        :  :boolean := #f)
   (error          :  :t := (Closed "Scheduler closed" where: 'connection-scheduler-close!))
   (parent-owned?  :  :boolean := #f)
   (parent         :? @ConnectionParent := #f))
  final: #t)

;; Reserved controls and unselected managed FIN/credit have no serialized storage.
;; DATA borrows a ring slice; callers must not retain any buffers after release.
(defclass ConnectionWork
  ((owner      :  ConnectionScheduler)
   (type       :  :fixnum)
   (id         :  :integer)
   (size       :  :fixnum)
   (state      :  :symbol := 'reserved)
   (stream     :? StreamIO := #f)
   (opening    :? @ConnectionOpening := #f)
   (renewal    :? RenewalRound := #f)
   (request    :? RenewalRequest := #f)
   (protected? :  :boolean := #f)
   (header     :  :u8vector := #u8())
   (bytes      :  :u8vector := #u8())
   (start      :  :fixnum := 0)
   (end        :  :fixnum := 0))
  final: #t)

;; Bounded by the live registry, never lifetime IDs. Credit may reference the next
;; pending update while self.in-flight owns the previous one. Retain reset? through
;; completion to suppress duplicates until the parent actually removes this entry.
(defclass ConnectionStream
  ((id     :  :integer)
   (io     :  StreamIO)
   (credit :? ConnectionWork := #f)
   (fin    :? ConnectionWork := #f)
   (reset  :? ConnectionWork := #f)
   (reset? :  :boolean := #f))
  final: #t)

;; Retain immutable local limits; peer advertisements never raise local ceilings.
(def (make-connection-scheduler (limits       : ConnectionLimits)
                                (peer-data    : :integer)
                                (peer-control : :integer))
  => ConnectionScheduler
  (unless (<= 1 peer-data #xffffffff)
    (raise-io-error make-connection-scheduler "Invalid peer DATA limit" peer-data))
  (unless (<= 1 peer-control #xffffffff)
    (raise-io-error make-connection-scheduler "Invalid peer control limit" peer-control))
  (ConnectionScheduler limits: limits
                       quantum: (min limits.data-payload peer-data (##greatest-fixnum))
                       control-limit: (min limits.control-payload peer-control)))

;; Fixed-size established-stream controls and owner-managed variable OPEN. Validate
;; the envelope without allocating header/payload. OPEN has no ID until selection;
;; queued? = #f charges staging ownership without making an encoder a FIFO barrier.
;; #f is local capacity refusal. Raw mandatory overflow closes/aborts, then raises.
;; A parent-owned scheduler defers abort so its owner can close the socket first.
(def (connection-control-reserve! (self       : ConnectionScheduler)
                                  (type       : :fixnum)
                                  (id         : :integer)
                                  (size       : :integer)
                                  (mandatory? : :boolean)
                                  (queued?    : :boolean := #t)
                                  (protected? : :boolean := #f))
  => (Maybe ConnectionWork)
  (when self.closed?
    (raise-io-closed connection-control-reserve! "Scheduler closed"))
  (let (expected (cond
                  ((fx= type frame-open) size)
                  ((fx= type frame-open-accept) 8)
                  ((or (fx= type frame-open-reject) (fx= type frame-reset)) 2)
                  ((fx= type frame-window-update) 4)
                  ((fx= type frame-fin) 0)
                  ((renewal-frame? type)
                   (case type
                     ((#x20) 25) ((#x21 #x26 #x34) 10)
                     ((#x24 #x31) 12) ((#x25 #x32 #x33) 8)
                     (else size)))
                  (else
                   (raise-io-error connection-control-reserve!
                                   "Unsupported scheduler control type" type))))
    (unless (and (if (or (fx= type frame-open) (renewal-connection-frame? type))
                   (= id 0) (<= 1 id #xffffffffffffffff))
                 (<= (case type ((#x10) 21) ((#x22) 29) ((#x23) 16) ((#x30) 28) (else 0))
                     size (fx- (##greatest-fixnum) frame-header-size))
                 (or (not protected?) self.protected?)
                 (= size expected))
      (raise-io-error connection-control-reserve! "Invalid control envelope" type id size))
    (let (cost (fx+ frame-header-size expected))
      (if (or (> size self.control-limit)
              (fx>= (if protected? self.renewal-frames (fx- self.control-frames self.renewal-frames))
                    (if protected? 4 (fx- self.limits.pending-control-frames (if self.protected? 4 0))))
              (> cost (connection-control-available self protected?)))
        (if mandatory?
          (let (failure (Closed "Mandatory control capacity exhausted" where: 'connection-control-reserve!))
            (if self.parent-owned?
              (begin
                (set! self.error failure)
                (set! self.closed? #t))
              (connection-scheduler-close! self))
            (raise failure))
          #f)
        (let (work (ConnectionWork owner: self type: type id: id size: expected
                                   protected?: protected?
                                   state: (if queued? 'reserved 'staging)))
          (when queued? (enqueue! self.controls work))
          (set! self.control-frames (fx1+ self.control-frames))
          (set! self.control-bytes (fx+ self.control-bytes cost))
          (when protected?
            (set! self.renewal-frames (fx1+ self.renewal-frames))
            (set! self.renewal-bytes (fx+ self.renewal-bytes cost)))
          work)))))

;; Available header-inclusive bytes in one partition, without preallocating it.
(def (connection-control-available (self       : ConnectionScheduler)
                                   (protected? : :boolean))
  => :integer
  (if protected?
    (- (renewal-protected-bytes self.limits) self.renewal-bytes)
    (- self.limits.pending-control-bytes
       (if self.protected? (renewal-protected-bytes self.limits) 0)
       (fx- self.control-bytes self.renewal-bytes))))

;; Fill exactly once after admission. Codec errors cancel the reservation before
;; propagating. A pending head blocks later controls, but never independent DATA.
(def (connection-control-fill! (work   : ConnectionWork)
                               (fields : :list))
  => :void
  (unless (and (memq work.state '(reserved staging)) (not work.stream))
    (raise-io-closed connection-control-fill! "Control reservation is not pending"))
  (try
    (unless (fx= work.type frame-open)
      (set! work.header
        (encode-frame-header
         (FrameHeader type: work.type stream-id: work.id payload-length: work.size)
         limits: work.owner.limits)))
    (set! work.bytes (encode-frame-payload work.type fields limits: work.owner.limits))
    (set! work.end work.size)
    (when (eq? work.state 'staging) (enqueue! work.owner.controls work))
    (set! work.state 'ready)
    (catch (failure)
      (connection-control-cancel! work)
      (raise failure))))

;; Cancellation removes the node immediately, so repeated reserve/cancel cannot
;; leave unbounded tombstones. Selected work can only be released by the transport.
(def (connection-control-cancel! (work : ConnectionWork))
  => :void
  (when (memq work.state '(reserved ready staging))
    (using (self work.owner :- ConnectionScheduler)
      (unless (eq? work.state 'staging)
        (if (eq? (queue-peek self.controls #f) work)
          (dequeue! self.controls)
          (set! self.controls
            (connection-queue-remove self.controls (lambda ((item :- ConnectionWork)) (eq? item work))))))
      (set! self.control-frames (fx1- self.control-frames))
      (set! self.control-bytes (fx- self.control-bytes (fx+ frame-header-size work.size)))
      (when work.protected?
        (set! self.renewal-frames (fx1- self.renewal-frames))
        (set! self.renewal-bytes (fx- self.renewal-bytes (fx+ frame-header-size work.size))))
      (set! work.state 'released)
      (set! work.header #u8())
      (set! work.bytes #u8())
      (set! work.stream #f)
      (set! work.opening #f)
      (set! work.renewal #f)
      (set! work.request #f)
      (set! work.end 0))))

;; Parent must finish acceptance wire ordering BEFORE registering an accepted IO.
;; Registry is bounded by total-streams, not lifetime IDs; no parity/history policy.
(def (connection-scheduler-register! (self   : ConnectionScheduler)
                                     (id     : :integer)
                                     (stream : StreamIO))
  => :void
  (when self.closed?
    (raise-io-closed connection-scheduler-register! "Scheduler closed"))
  (unless (<= 1 id #xffffffffffffffff)
    (raise-io-error connection-scheduler-register! "Invalid stream ID" id))
  (when (fx>= (Queue-length self.streams) self.limits.total-streams)
    (raise-io-error connection-scheduler-register! "Stream registry full"))
  (for (entry (in-queue self.streams))
       (using (entry :- ConnectionStream)
         (when (or (= entry.id id) (eq? entry.io stream))
           (raise-io-error connection-scheduler-register! "Duplicate stream" id))))
  (enqueue! self.streams (ConnectionStream id: id io: stream)))

;; Only explicit progress hooks search by ID; selection rotates the registry and
;; follows existing control references without a pending-ready registry scan.
(def (connection-scheduler-find (self : ConnectionScheduler)
                                (id   : :integer))
  => (Maybe ConnectionStream)
  (let/cc return
    (for (entry (in-queue self.streams))
      (using (entry :- ConnectionStream)
        (when (= entry.id id) (return entry))))
    #f))

;; The parent calls after Reader progress or Writer.close/DATA release. Reserve
;; mandatory capacity before encoding or granting credit. Repeated reads coalesce
;; in StreamIO until selection; a selected credit allows one new pending update.
(def (connection-scheduler-credit! (self : ConnectionScheduler)
                                   (id   : :integer))
  => (Maybe ConnectionWork)
  (connection-scheduler-control! self id #t))

(def (connection-scheduler-fin! (self : ConnectionScheduler)
                                (id   : :integer))
  => (Maybe ConnectionWork)
  (connection-scheduler-control! self id #f))

(def (connection-scheduler-control! (self    : ConnectionScheduler)
                                    (id      : :integer)
                                    (credit? : :boolean))
  => (Maybe ConnectionWork)
  (when self.closed?
    (raise-io-closed connection-scheduler-control! "Scheduler closed"))
  (let (entry (connection-scheduler-find self id))
    (and entry (connection-stream-control! self entry credit?))))

;; Entry-based service sweeps avoid repeating the bounded ID lookup for every IO.
(def (connection-stream-control! (self    : ConnectionScheduler)
                                 (entry   : ConnectionStream)
                                 (credit? : :boolean))
  => (Maybe ConnectionWork)
  (let (pending (if credit? entry.credit entry.fin))
    (cond
     ((or entry.reset? (not (stream-io-control-ready? entry.io credit?)))
      (when pending (connection-control-cancel! pending))
      #f)
     ((and pending (eq? (ConnectionWork-state pending) 'ready)) pending)
     (else
      (using (work (connection-control-reserve!
                    self (if credit? frame-window-update frame-fin)
                    entry.id (if credit? 4 0) #t) :- ConnectionWork)
        (set! work.stream entry.io)
        (if credit? (set! entry.credit work) (set! entry.fin work))
        (set! work.state 'ready)
        work)))))

;; Abort before discarding unsent managed work. A peer RESET (send? = #f) also
;; suppresses a queued local RESET, never a transport-owned frame. Failed queue
;; preparation remains owned for close. The raw hook does not install notifications.
(def (connection-scheduler-reset! (self   : ConnectionScheduler)
                                  (id     : :integer)
                                  (reason : :integer)
                                  (send?  : :boolean := #t))
  => (Maybe ConnectionWork)
  (when self.closed?
    (raise-io-closed connection-scheduler-reset! "Scheduler closed"))
  (unless (<= 1 reason #xffff)
    (raise-io-error connection-scheduler-reset! "Invalid RESET reason" reason))
  (let (entry (connection-scheduler-find self id))
    (and entry (connection-stream-reset! self entry reason send?))))

(def (connection-stream-reset! (self   : ConnectionScheduler)
                               (entry  : ConnectionStream)
                               (reason : :integer)
                               (send?  : :boolean))
  => (Maybe ConnectionWork)
  ;; Suppress peer echo BEFORE abort publishes its wake; the parent operation lock
  ;; excludes service/selection until queued local work has also been cancelled.
  (unless send? (set! entry.reset? #t))
  (try
    (stream-io-abort! entry.io)
    (finally
      (when entry.credit (connection-control-cancel! entry.credit))
      (when entry.fin (connection-control-cancel! entry.fin))
      (when (and (not send?) entry.reset)
        (connection-control-cancel! entry.reset))))
  (and send? (not entry.reset?)
       (using (work (connection-control-reserve! self frame-reset entry.id 2 #t) :- ConnectionWork)
         (set! entry.reset work)
         (connection-control-fill! work [reason])
         (set! work.stream entry.io)
         (set! entry.reset? #t)
         work)))

;; Parent removes only after stream ownership AND managed control work retire.
;; This does not abort or reclaim the parent's protocol slots/notifications.
(def (connection-scheduler-remove! (self : ConnectionScheduler)
                                   (id   : :integer))
  => :void
  (when self.in-flight
    (using (work self.in-flight :- ConnectionWork)
      (when (= work.id id)
        (raise-io-error connection-scheduler-remove! "Stream frame still borrowed" id))))
  (let (entry (connection-scheduler-find self id))
    (when entry
      (using (entry :- ConnectionStream)
        (for-each
         (lambda (work)
           (when (and work (not (eq? (ConnectionWork-state work) 'released)))
             (raise-io-error connection-scheduler-remove! "Stream controls still owned" id)))
         [entry.credit entry.fin entry.reset])
        (unless (stream-io-retirable? entry.io)
          (raise-io-error connection-scheduler-remove! "Stream not retired" id)))
      (set! self.streams
            (connection-queue-remove self.streams
                                     (lambda ((entry :- ConnectionStream)) (= entry.id id)))))))

;; Prepare a bounded FIFO replacement without touching the owning queue. Install
;; only after success; allocation/predicate failure leaves every entry reachable.
;; Internal export permits failure-boundary tests without production injection slots.
(def (connection-queue-remove (queue   : Queue)
                              (remove? : :procedure))
  => Queue
  (let (replacement (make-Queue))
    (for (item (in-queue queue))
         (unless (remove? item)
           (enqueue! replacement item)))
    replacement))

;; At most one bounded traversal per turn. Rotation before commit preserves progress
;; if a stream throws; errors propagate for parent cleanup, never blanket-suppressed.
(def (connection-scheduler-data! (self : ConnectionScheduler))
  => (Maybe ConnectionWork)
  (let loop ((remaining (Queue-length self.streams)))
    (if (fxzero? remaining)
      #f
      (let (entry (queue-peek self.streams))
        ;; Allocate the new node before removing the old ownership reference.
        (enqueue! self.streams entry)
        (dequeue! self.streams)
        (using ((entry :- ConnectionStream)
                (stream entry.io :- StreamIO))
          ;; Publish the parent's provisional owner BEFORE commitment or encoding.
          ;; Its stream reference suffices even if commit raises before returning
          ;; the slice. Raw schedulers retain their immediate error cleanup below.
          (let (provisional
                (and self.parent-owned?
                     (ConnectionWork owner: self type: frame-data id: entry.id size: 0
                                     state: 'in-flight stream: stream)))
            (when provisional (set! self.in-flight provisional))
            (or (try
                  (let-values (((bytes start end)
                                (stream-io-data-commit! stream self.quantum #t self.parent-owned?)))
                    (if bytes
                      (using (work (or provisional
                                       (ConnectionWork owner: self type: frame-data id: entry.id size: 0
                                                       state: 'in-flight stream: stream))
                                   :- ConnectionWork)
                        (set! work.size (fx- end start))
                        (set! work.bytes bytes)
                        (set! work.start start)
                        (set! work.end end)
                        (set! work.header
                          (encode-frame-header
                           (FrameHeader type: frame-data stream-id: entry.id payload-length: work.size)
                           limits: self.limits))
                        (set! self.in-flight work)
                        (set! self.control-run 0)
                        work)
                      (begin
                        ;; No commitment: retire only the provisional record, without
                        ;; calling release on an ineligible stream or taking its locks.
                        (when provisional
                          (set! self.in-flight #f)
                          (using (provisional :- ConnectionWork)
                            (set! provisional.state 'released)
                            (set! provisional.stream #f)))
                        #f)))
                  (catch (failure)
                    (if self.parent-owned?
                      (begin
                        (set! self.error failure)
                        (set! self.closed? #t))
                      ;; Attempt abort before ending provisional ownership.
                      (try
                        (stream-io-abort! stream failure)
                        (finally
                          (if self.in-flight
                            (connection-work-release! self.in-flight)
                            (stream-io-data-release! stream)))))
                    (raise failure)))
                (loop (fx1- remaining)))))))))

;; Managed FIN/credit are checked again at selection. The reservation stays queued
;; and accounted through commitment/construction. Parent failure promotes it for
;; socket-first cleanup; raw failure aborts/releases it locally.
;; Do not use raw fill's cancellation path after acquiring StreamIO ownership.
(def (connection-control-select! (work : ConnectionWork))
  => (Maybe ConnectionWork)
  (using (self work.owner :- ConnectionScheduler)
    (let (selected?
          (if work.request
            (connection-renewal-request-select! work)
            (if work.renewal
              (connection-renewal-select! work)
              (if work.opening
                (connection-opening-select! work)
                (if (and work.stream (not (fx= work.type frame-reset)))
                  (try
                    (let* ((credit? (fx= work.type frame-window-update))
                           (value (stream-io-control-commit! work.stream credit?)))
                      (and (if credit? (fx> value 0) value)
                           (begin
                             (set! work.header
                               (encode-frame-header
                                (FrameHeader type: work.type stream-id: work.id payload-length: work.size)
                                limits: self.limits))
                             (set! work.bytes
                               (encode-frame-payload work.type (if credit? [value] []) limits: self.limits))
                             (set! work.end work.size)
                             #t)))
                    (catch (failure)
                      (if self.parent-owned?
                        (begin
                          ;; The head may already own FIN or a credit grant. Promote it
                          ;; out of the cancelable queue without returning its budget.
                          (dequeue! self.controls)
                          (set! work.state 'in-flight)
                          (set! self.in-flight work)
                          (set! self.error failure)
                          (set! self.closed? #t))
                        (try
                          (stream-io-abort! work.stream failure)
                          (finally
                            (try
                              (when (fx= work.type frame-fin)
                                (stream-io-fin-release! work.stream))
                              (finally (connection-control-cancel! work))))))
                      (raise failure)))
                  #t)))))
      (if selected?
        (begin
          (dequeue! self.controls)
          (set! work.state 'in-flight)
          (set! self.in-flight work)
          (when (fx< self.control-run self.limits.control-burst)
            (set! self.control-run (fx1+ self.control-run)))
          work)
        (begin
          (connection-control-cancel! work)
          #f)))))

;; One transport borrow at a time prevents a worker-local backlog and enforces
;; wire selection order. No ready DATA means controls continue beyond the burst.
(def (connection-scheduler-next! (self : ConnectionScheduler))
  => (Maybe ConnectionWork)
  (when self.closed?
    (raise-io-closed connection-scheduler-next! "Scheduler closed"))
  (if self.in-flight
    #f
    (let (data-turn? (fx>= self.control-run self.limits.control-burst))
      (or (and data-turn? (connection-scheduler-data! self))
          (let loop ()
            (let (control (queue-peek self.controls #f))
              (if (and control (eq? (ConnectionWork-state control) 'ready))
                (or (connection-control-select! control) (loop))
                (and (not data-turn?) (connection-scheduler-data! self)))))))))

;; Call only once transport no longer borrows header/bytes, on success OR failure.
;; Transport failure must close the scheduler first, aborting DATA/FIN before release.
;; Raw StreamIO release aborts on deadline failure and cleans up raised errors
;; locally. With a supplied lease, unknown exceptions retain work for parent cleanup.
;; A DATA/FIN release deferred by the connection lease returns #f with ALL ownership
;; retained. The parent must close/abort, then retry without the gate. Default is void.
;; After ATTEMPTING release the consumer must not use the cached header/payload:
;; an unknown exception can follow partial local progress, handled by idempotent retry.
(def (connection-work-release! (work              :  ConnectionWork)
                               (connection-expire :? :integer := #f))
  => (Maybe :void)
  (when (eq? work.state 'in-flight)
    (using (self work.owner :- ConnectionScheduler)
      (let (released? (not connection-expire))
        (try
          (try
            (set! released?
              (not (eq? (cond
                         ((fx= work.type frame-data)
                          (stream-io-data-release! work.stream connection-expire))
                         ((and work.stream (fx= work.type frame-fin))
                          (stream-io-fin-release! work.stream connection-expire)))
                        #f)))
            (finally
              ;; Raw failures finish locally; leased failures retain unfinished
              ;; ownership until socket-first close and an ungated release.
              (when released?
                (unless (fx= work.type frame-data)
                  (set! self.control-frames (fx1- self.control-frames))
                  (set! self.control-bytes (fx- self.control-bytes (fx+ frame-header-size work.size)))
                  (when work.protected?
                    (set! self.renewal-frames (fx1- self.renewal-frames))
                    (set! self.renewal-bytes (fx- self.renewal-bytes (fx+ frame-header-size work.size)))))
                (set! self.in-flight #f)
                (set! work.state 'released)
                (set! work.header #u8())
                (set! work.bytes #u8())
                (set! work.stream #f)
                (set! work.start 0)
                (set! work.end 0)
                ;; The outer catch already owns failure cleanup. Do not establish
                ;; another allocating protection boundary after releasing work.
                (when work.opening (connection-opening-released! work))
                (when work.renewal (connection-renewal-released! work))
                (set! work.opening #f)
                (set! work.renewal #f)
                (set! work.request #f))))
          (catch (failure)
            ;; Preserve unfinished DATA/FIN ownership, but clear references after
            ;; irreversible release even when its notification did not return.
            (when (eq? work.state 'released)
              (set! work.opening #f)
              (set! work.renewal #f)
              (set! work.request #f))
            ;; Include late finalization failures before unwinding parent mx.
            (when (and connection-expire (not self.closed?))
              (set! self.error failure)
              (set! self.closed? #t))
            (raise failure)))
        (if released? (void) #f)))))

;; Close discards queued and unfilled controls, but retains in-flight storage and
;; its budget until transport release. Repeated close is idempotent.
(def (connection-scheduler-close! (self : ConnectionScheduler))
  => :void
  (set! self.closed? #t)
  ;; Unqueued encoding reservations remain owned by their admission workers.
  (let loop ()
    (unless (queue-empty? self.controls)
      (connection-control-cancel! (queue-peek self.controls))
      (loop)))
  (for (entry (in-queue self.streams))
    (using (entry :- ConnectionStream)
      (stream-io-abort! entry.io))))

;;; Accepted-stream parent and fixed transport lifetime

;; ALL scheduler transitions go through mx. The scheduler field is internal
;; observation only: never mix raw transitions with a running parent. One service
;; thread continues while the writer/output consumer borrows its ONE work item.
(defclass ConnectionParent
  ((scheduler     :  ConnectionScheduler)
   (mx            :  :mutex := (make-mutex 'connection-parent))
   (wake          :  StreamWake := (StreamWake))
   (worker        :? :thread := #f)
   (reader-worker :? :thread := #f)
   (writer-worker :? :thread := #f)
   (started?      :  :boolean := #f)
   (initiator?    :  :boolean := #f)
   (local-open-id :  :integer := 0)
   (peer-open-id  :  :integer := 0)
   (connection    :? @NetworkConnection := #f)
   (socket        :? StreamSocket := #f)
   (expire        :? :integer := #f)
   (closed?       :  :boolean := #f)
   (error         :  :t := #f))
  final: #t)

(def (make-connection-parent (limits       : ConnectionLimits)
                             (peer-data    : :integer)
                             (peer-control : :integer))
  => ConnectionParent
  (using (self (ConnectionParent scheduler: (make-connection-scheduler limits peer-data peer-control))
               :- ConnectionParent)
    ;; Set the private cleanup owner before the service can reserve any control.
    (set! self.scheduler.parent-owned? #t)
    (set! self.scheduler.parent self)
    (with-stream-io-lock self.mx
      (set! self.worker (spawn-network-thread 'connection-parent-service
                         (lambda () (connection-parent-service-thread self)))))
    self))

;; Trusted establishment handoff, not authentication: caller has completed CONFIRM
;; and stopped ALL handshake IO/ownership, including ownership of any pre-TLS view.
;; Consume a separately owned socket even on rejection. Configure it before taking
;; parent locks; no worker may use it until this call succeeds. Retain the view and
;; fixed expire after close, both for one-time attachment and idempotent close retry.
;; expire is deliberately :t so malformed metadata also reaches socket cleanup.
(def (connection-parent-attach! (self   : ConnectionParent)
                                (socket : StreamSocket)
                                (expire : :t))
  => :void
  (let (attached? #f)
    (try
      (unless (uint64? expire)
        (raise-io-error connection-parent-attach! "Invalid connection expiration" expire))
      (socket.set-input-timeout! !NoTimeout)
      (socket.set-output-timeout! !NoTimeout)
      (with-stream-io-lock self.mx
        (with-stream-io-lock self.wake.mx
          (connection-parent-check-live! self)
          (when self.socket
            (raise-io-error connection-parent-attach! "Transport already attached"))
          (unless (> expire (current-time-seconds))
            (raise-io-closed connection-parent-attach! "Connection authorization expired"))
          (set! self.socket socket)
          (set! self.expire expire)
          (set! attached? #t)
          (stream-wake-signal-locked! self.wake #t)))
      (catch (failure)
        (try
          (unless attached? (connection-transport-close! socket))
          (finally
            (when (or attached? (with-stream-io-lock self.mx self.closed?))
              (connection-parent-close! self failure))))
        (raise failure)))))

;; Caller holds mx. Expiry closes admission atomically, without stream cleanup or
;; socket IO under the lock. The enclosing boundary closes the socket after unwind.
;; Fatal paths publish scheduler.error with closed? under mx BEFORE unwinding.
;; closed?, not error truthiness, distinguishes a failure (which may be #f).
;; expired? carries an authoritative stream-lock observation across lock release;
;; even a backwards clock adjustment must not undo that observed expiration.
;; An unattached parent remains useful for standalone accepted-IO scheduling.
(def (connection-parent-check-live! (self     : ConnectionParent)
                                    (expired? : :boolean := #f))
  => :void
  (when (and (not self.closed?)
             (or self.scheduler.closed? expired?
                 (and self.expire (>= (current-time-seconds) self.expire))))
    (set! self.error (if self.scheduler.closed?
                         self.scheduler.error
                         (Closed "Connection authorization expired"
                                 where: 'connection-parent-check-live!)))
    (set! self.closed? #t)
    (set! self.scheduler.error self.error)
    (set! self.scheduler.closed? #t))
  (when self.closed? (raise self.error)))

;; Register an already accepted IO exactly once. Hold BOTH stream locks so neither
;; direction can see a partial attachment. Acquire the leaf before publication;
;; rejection/interrupted acquisition leaves the IO untouched, including IO owned
;; by another parent. No blocking operation follows the enqueue/attachment pair.
(def (connection-parent-register! (self : ConnectionParent)
                                  (id   : :integer)
                                  (io   : StreamIO))
  => :void
  (try
    (with-stream-io-lock self.mx
      (when self.started?
        (raise-io-error connection-parent-register! "Accepted setup is already sealed" id))
      (with-stream-io-lock io.input-mx
        (with-stream-io-lock io.output-mx
          (when io.wake
            (raise-io-error connection-parent-register! "Stream already attached" id))
          (with-stream-io-lock self.wake.mx
            (connection-parent-check-live! self)
            (connection-scheduler-register! self.scheduler id io)
            (set! io.wake self.wake)
            (stream-wake-signal-locked! self.wake #t)))))
    (catch (failure)
      ;; Ordinary registry rejection still leaves a healthy parent and IO alone.
      (when (with-stream-io-lock self.mx self.closed?)
        (connection-parent-close! self failure))
      (raise failure))))

;; The bounded registry is not mutated during iteration. Ordinary sweeps are O(N)
;; observations/admissions via entries; cancellation can additionally traverse the
;; bounded control queue. Retirement is explicit, not an implicit protocol-ID policy.
(def (connection-parent-service-thread (self : ConnectionParent))
  => :void
  (try
    (let loop ((deadline #f))
      (stream-wake-take! self.wake #t deadline)
      (when self.connection (connection-renewal-reap! self.connection))
      (let ((next #f) (closed? #f))
        (with-stream-io-lock self.mx
          (set! closed? self.scheduler.closed?)
          (unless closed?
            (connection-parent-check-live! self)
            (set! next (and self.expire (seconds->time self.expire)))
            (when self.connection
              (set! next (connection-service-openings! self.connection next))
              (set! next (connection-renewal-service! self.connection next)))
            (for (entry (in-queue self.scheduler.streams))
              (using (entry :- ConnectionStream)
                (let-values (((aborted? active) (stream-io-status entry.io)))
                  (connection-parent-check-live! self)
                  (if aborted?
                    (unless entry.reset?
                      (connection-stream-reset! self.scheduler entry reason-closed #t))
                    (begin
                      (connection-stream-control! self.scheduler entry #t)
                      (connection-stream-control! self.scheduler entry #f)))
                  (when (and active (or (not next) (< (time->seconds active) (time->seconds next))))
                    (set! next active)))))
            (connection-parent-check-live! self)
            ;; Output may have consumed its own wake before these admissions.
            (stream-wake-signal! self.wake #f)))
        ;; Service may cancel the last stale credit/FIN retaining a completed
        ;; opening. Reap after that scan rather than wait for unrelated traffic.
        (when self.connection (connection-reap-openings! self.connection))
        (unless closed? (loop next))))
    (catch (failure)
      (connection-parent-close! self failure)
      (raise failure))))

;; Blocking single-consumer selection. Clear output readiness before each scan;
;; service cannot consume this bit, nor can output consume the timer's bit.
(def (connection-parent-next! (self : ConnectionParent))
  => ConnectionWork
  (let (work #f)
    (try
      (let loop ((wait? #f))
        (stream-wake-take! self.wake #f #f wait?)
        (with-stream-io-lock self.mx
          (connection-parent-check-live! self)
          (let (borrowed self.scheduler.in-flight)
            (try
              (set! work (connection-scheduler-next! self.scheduler))
              (finally
                ;; A raising selection can retain provisional DATA or promoted FIN/
                ;; credit. Never claim a work item already borrowed by the consumer.
                (unless borrowed (set! work self.scheduler.in-flight)))))
          ;; Selection can wait for stream locks. Do not hand newly selected work
          ;; to the consumer if the lease expired during that wait.
          (connection-parent-check-live! self))
        (or work (loop #t)))
      (catch (failure)
        (try
          (connection-parent-close! self failure)
          (finally
            ;; Only this call's untransferred work, NEVER an earlier consumer borrow.
            (when work (connection-parent-release-owned! self work))))
        (raise failure)))))

;; The caller has already attempted socket-first close/abort and ended the borrow.
;; Never re-enter close or retry a failed release. Notify outside the release lock.
(def (connection-parent-release-owned! (self : ConnectionParent)
                                       (work : ConnectionWork))
  => :void
  (try
    (with-stream-io-lock self.mx
      (connection-work-release! work))
    (finally (stream-wake-signal! self.wake))))

;; Call only after the real output borrow ends, including on shutdown. Failure
;; closes the socket before abort/release; cleanup remains mandatory on every path.
(def (connection-parent-release! (self : ConnectionParent)
                                 (work : ConnectionWork))
  => :void
  (when
      (try
        (with-stream-io-lock self.mx
          (unless self.closed? (connection-parent-check-live! self))
          (if self.closed?
              #t
              (begin
                (connection-parent-check-live! self (not (connection-work-release! work self.expire)))
                (stream-wake-signal! self.wake)
                #f)))
        (catch (failure)
          ;; Mandatory cleanup after any failed operation, not an operation retry.
          (try
            (connection-parent-close! self failure)
            (finally (connection-parent-release-owned! self work)))
          (raise failure)))
    ;; Outside the operation catch: a close that rethrows must not be closed again.
    (try
      (connection-parent-close! self)
      (finally (connection-parent-release-owned! self work)))))

;; A remote RESET must use send? = #f here, not abort the IO first outside mx.
(def (connection-parent-reset! (self   : ConnectionParent)
                               (id     : :integer)
                               (reason : :integer)
                               (send?  : :boolean := #t))
  => (Maybe ConnectionWork)
  (try
    (with-stream-io-lock self.mx
      (connection-parent-check-live! self)
      (let (work (connection-scheduler-reset! self.scheduler id reason send?))
        (connection-parent-check-live! self)
        work))
    (catch (failure)
      (connection-parent-close! self failure)
      (raise failure))))

;; Retains the one-time attachment; an IO cannot be recycled into another parent.
(def (connection-parent-remove! (self : ConnectionParent)
                                (id   : :integer))
  => :void
  (with-stream-io-lock self.mx
    (unless self.closed?
      (let (entry (connection-scheduler-find self.scheduler id))
        (when entry
          (using (entry :- ConnectionStream)
            (let-values (((aborted? active) (stream-io-status entry.io)))
              ;; Require a terminal snapshot, not merely the absence of an abort:
              ;; active IO could abort before the raw scheduler's retirement check.
              (when active
                (raise-io-error connection-parent-remove! "Stream not retired" id))
              (when (and aborted? (not entry.reset?))
                (raise-io-error connection-parent-remove! "Stream RESET pending service" id)))))))
    (connection-scheduler-remove! self.scheduler id)))

;; Stop admission, then close the retained native view OUTSIDE every parent/stream/
;; wake lock, BEFORE wake/abort cleanup can block or raise. Native close is idempotent
;; (including TLS native-state release), so concurrent/repeated close has one owner.
;; NEVER release an external borrow or join here. Each cleanup phase is attempted once.
(def (connection-parent-close! (self    : ConnectionParent)
                               (failure : :t := (Closed "Connection parent closed" where: 'connection-parent-close!)))
  => :void
  (try
    (with-stream-io-lock self.mx
      ;; Failure values need not be truthy or even exception objects.
      ;; A fatal scheduler transition already won over this explicit close.
      (unless self.closed?
        (set! self.error (if self.scheduler.closed? self.scheduler.error failure))
        (set! self.closed? #t))
      (set! self.scheduler.error self.error)
      (set! self.scheduler.closed? #t)
      (void))
    (finally
      ;; Preserve socket-before-abort ordering even when native close or wake fails.
      (try
        (when self.socket (connection-transport-close! self.socket))
        (finally
          (try
            (stream-wake-signal! self.wake)
            (finally
              (with-stream-io-lock self.mx
                (connection-scheduler-close! self.scheduler)
                (when self.connection
                  (for-each
                    (lambda ((opening :- ConnectionOpening))
                      (connection-opening-cancel! opening self.error reason-closed #f))
                    self.connection.openings)
                  (connection-renewal-close! self.connection self.error))))))))))

;; The retained high-level view owns native close; never close a raw pre-TLS alias.
(def (connection-transport-close! (socket : StreamSocket))
  => :void
  (socket.close))

;; Join every published worker even if an earlier worker failed. Capture relative
;; timeout once for the entire join, and skip the caller rather than self-joining.
;; Snapshot under mx so partial startup cannot hide an already started worker.
;; The same deadline bounds snapshot acquisition; either wait raises Timeout when
;; no explicit timeout value was supplied. Caller cancellation remains unchanged.
;; Call outside all parent/stream/wake locks, normally after close!.
(def (connection-parent-join! (self          : ConnectionParent)
                              (timeout       : :t := absent-obj)
                              (timeout-value : :t := absent-obj))
  => :t
  (let* ((deadline (if (real? timeout)
                     (seconds->time (+ (##current-time-point) timeout))
                     timeout))
         (workers
          (unwind-protect!
            (and (mutex-lock! self.mx deadline)
                 [self.worker self.reader-worker self.writer-worker])
            (when (eq? (mutex-state self.mx) (current-thread))
              (mutex-unlock! self.mx))))
         (marker (box #f)) (failed? #f) (failure #f))
    (if (not workers)
      (if (eq? timeout-value absent-obj)
        (raise-timeout connection-parent-join! "Worker snapshot timed out" timeout)
        timeout-value)
      (let loop ((rest workers))
        (if (null? rest)
          (if failed? (raise failure) (void))
          (let (worker (car rest))
            (if (or (not worker) (eq? worker (current-thread)))
              (loop (cdr rest))
              (let (result
                    (try
                      (thread-join! worker deadline
                                    (if (eq? timeout-value absent-obj) absent-obj marker))
                      ;; Only this wrapper proves the worker terminated. A join
                      ;; timeout or other join-operation failure is NOT
                      ;; worker completion and must escape without being hidden.
                      (catch (uncaught-exception? e)
                        (unless failed?
                          (set! failed? #t)
                          (set! failure (uncaught-exception-reason e))))
                      (catch (join-timeout-exception? e)
                        (raise-timeout connection-parent-join! "Thread join timed out" worker timeout))))
                ;; Marked workers return failures after unwinding. Inspect the
                ;; result here, not a catch-all around join: a worker may itself
                ;; raise Timeout, and we must still join the remaining workers.
                (when (and (NetworkThreadError? result) (not failed?))
                  (set! failed? #t)
                  (set! failure (NetworkThreadError-exception result)))
                (if (eq? result marker) timeout-value (loop (cdr rest)))))))))))

;;; Restricted accepted-stream transport bridge

;; Raw preaccepted setup requires completed OPEN/acceptance ordering with no pending
;; admissions. Public activation installs its admission owner and starts at zero.
;; Explicit marks come from committed local OPENs and
;; observed peer OPENs, never accepted-object insertion order. Zero means none.
;; This bridge seals registration; future asynchronous OPEN admission must observe
;; IDs separately before inserting accepted objects. No IDs are allocated here.
;; The caller relinquishes manual socket IO and scheduler consumption before entry.
;; Failure consumes the parent: close before joining any partially started workers.
(def (connection-parent-start! (self          : ConnectionParent)
                               (initiator?    : :boolean)
                               (local-open-id : :integer)
                               (peer-open-id  : :integer))
  => :void
  (try
    (with-stream-io-lock self.mx
      (try
        (connection-parent-check-live! self)
        (unless self.socket
          (raise-io-error connection-parent-start! "No established transport attached"))
        (when (or self.started? self.scheduler.in-flight)
          (raise-io-error connection-parent-start! "Transport already started or output still borrowed"))
        (unless (and (uint64? local-open-id) (uint64? peer-open-id)
                     (or (zero? local-open-id) (eq? (odd? local-open-id) initiator?))
                     (or (zero? peer-open-id) (not (eq? (odd? peer-open-id) initiator?))))
          (raise-io-error connection-parent-start! "Invalid OPEN high-water marks"
                          local-open-id peer-open-id))
        (for (entry (in-queue self.scheduler.streams))
          (using (entry :- ConnectionStream)
            (when (> entry.id (if (eq? (odd? entry.id) initiator?) local-open-id peer-open-id))
              (raise-io-error connection-parent-start! "Accepted stream exceeds OPEN high-water mark" entry.id))))
        (set! self.initiator? initiator?)
        (set! self.local-open-id local-open-id)
        (set! self.peer-open-id peer-open-id)
        (set! self.started? #t)
        ;; Workers first acquire mx. Neither IO nor cleanup can run before both
        ;; handles are published, or startup failure has been recorded below.
        (set! self.reader-worker
          (spawn-network-thread 'connection-reader (lambda () (connection-parent-reader-thread self))))
        (set! self.writer-worker
          (spawn-network-thread 'connection-writer (lambda () (connection-parent-writer-thread self))))
        (catch (failure)
          (unless (or self.closed? self.scheduler.closed?)
            (set! self.scheduler.error failure)
            (set! self.scheduler.closed? #t))
          (raise failure))))
    (catch (failure)
      ;; Dynamic cleanup: close's inner finalizers must finish native close and
      ;; abort before join. Fast cleanup can run before those finalizers unwind.
      (try
        (connection-parent-close! self failure)
        (finally
          (try
            (connection-parent-join! self)
            ;; Workers report this same first failure after their cleanup. Do not
            ;; mask unrelated join/cancellation errors as successful startup cleanup.
            (catch (e) (unless (eq? e self.error) (raise e))))))
      (raise self.error))))

;; One exact header and one bounded payload, no read-ahead queue. Header validation
;; precedes allocation, including phase restrictions of this accepted-only bridge.
;; Reader.need already implements exact minimum/EOF; no private short-read repair.
(def (connection-parent-reader-thread (self : ConnectionParent))
  => :void
  (try
    (using (socket (with-stream-io-lock self.mx
                     (connection-parent-check-live! self)
                     self.socket) :- StreamSocket)
      (using (reader (socket.reader) :- Reader)
        (let ((bytes (make-u8vector frame-header-size)) (limits self.scheduler.limits))
          (let loop ()
            (reader.read bytes 0 frame-header-size frame-header-size)
            (using (header (decode-frame-header bytes limits: limits) :- FrameHeader)
              (unless (or (fx<= (if self.connection frame-open frame-open-accept) header.type frame-reset)
                          (and self.connection (renewal-frame? header.type)))
                (raise-io-error connection-parent-reader-thread "Unexpected established frame type" header.type))
              (unless (fixnum? header.payload-length)
                (raise-io-error connection-parent-reader-thread "Frame exceeds native buffer capacity" header.payload-length))
              (let* ((size (:- header.payload-length :fixnum)) (payload (make-u8vector size)))
                (when (fx> size 0) (reader.read payload 0 size size))
                (connection-parent-dispatch! self header payload)))
            (loop)))))
    (catch (failure)
      (connection-parent-close! self failure)
      (raise self.error))))

;; Header/payload are already bounded; raw DATA is copied only into its receive ring,
;; not through the generic payload decoder. Non-live frames require only a valid
;; envelope. Lookup, lifecycle gating and transitions serialize against retirement,
;; reset, expiry AND application IO. Never classify exceptions by class or text.
(def (connection-parent-dispatch! (self    : ConnectionParent)
                                  (header  : FrameHeader)
                                  (payload : :u8vector))
  => :void
  (with-stream-io-lock self.mx
    (try
      (connection-parent-check-live! self)
      (if (and self.connection
               (if (renewal-frame? header.type)
                 (begin (connection-renewal-dispatch! self.connection header payload) #t)
                 (connection-dispatch-opening! self.connection header payload)))
        (void)
        (let ((id header.stream-id) (type header.type))
          (when (> id (if (eq? (odd? id) self.initiator?) self.local-open-id self.peer-open-id))
            (raise-io-error connection-parent-dispatch! "Frame for unopened stream" type id))
          (let (entry (connection-scheduler-find self.scheduler id))
            (when entry
              (using ((entry :- ConnectionStream) (io entry.io :- StreamIO))
                (let (reset? #f)
                  (with-stream-io-lock io.input-mx
                    (with-stream-io-lock io.output-mx
                      (connection-parent-check-live! self)
                      (stream-io-expire-locked! io)
                      (cond
                       (io.state.aborted?
                        ;; Peer RESET also suppresses a queued local RESET. Discard its
                        ;; payload like other late frames; do not resurrect the stream.
                        (set! reset? (fx= type frame-reset)))
                       ((stream-retirable? io.state) (void))
                       (else
                        (case type
                          ((#x13) (stream-receive! io.state payload))
                          ((#x14)
                           (stream-credit-receive! io.state
                                                   (##vector-ref (decode-frame-payload type payload limits: self.scheduler.limits) 0)))
                          ((#x15) (stream-fin-receive! io.state))
                          ((#x16)
                           (let (reason (##vector-ref (decode-frame-payload type payload limits: self.scheduler.limits) 0))
                             (set! entry.reset? #t)
                             (set! reset? #t)
                             (stream-io-abort-locked!
                              io (Closed "Peer reset stream" where: 'connection-parent-dispatch! irritants: [id reason]))))
                          (else
                           (raise-io-error connection-parent-dispatch! "Unexpected accepted-stream frame" type id)))
                        (condition-variable-broadcast! io.input-cv)
                        (condition-variable-broadcast! io.output-cv)
                        (stream-wake-signal! self.wake)))))
                  ;; The raw reset wrapper acquires stream locks itself. Drop those
                  ;; before cancelling managed work; retain parent serialization.
                  (when reset?
                    (connection-stream-reset! self.scheduler entry reason-closed #f))))))))
      (connection-parent-check-live! self)
      (catch (failure)
        ;; Publish before mx unwinds, so another worker cannot win with a secondary
        ;; socket/closed error while the reader is on its way to native close.
        (unless (or self.closed? self.scheduler.closed?)
          (set! self.scheduler.error failure)
          (set! self.scheduler.closed? #t))
        (raise failure)))))

;; Writer permits short counts. Keep header and borrowed payload separate, and
;; reject no-progress/invalid counts rather than spin or abandon framing silently.
(def (connection-transport-write! (writer : Writer)
                                  (bytes  : :u8vector)
                                  (start  : :fixnum)
                                  (end    : :fixnum))
  => :void
  (let loop ((offset start))
    (when (fx< offset end)
      (let (count (writer.write bytes offset end))
        (unless (fx<= 1 count (fx- end offset))
          (raise-io-error connection-transport-write! "Invalid transport Writer count" count))
        (loop (fx+ offset count))))))

;; next/release own their own exception cleanup. Only the actual IO catch closes
;; here; do not replay native close because an inner cleanup completed and raised.
;; Abandoning even part of a frame is connection-fatal, never resumable output.
(def (connection-parent-writer-thread (self : ConnectionParent))
  => :void
  (let (writer
        (try
          (using (socket (with-stream-io-lock self.mx
                           (connection-parent-check-live! self)
                           self.socket) :- StreamSocket)
            (socket.writer))
          (catch (failure)
            (connection-parent-close! self failure)
            (raise self.error))))
    (let loop ()
      (using (work (connection-parent-next! self) :- ConnectionWork)
        (let (failed? #f)
          ;; Keep dynamic ordering through close's inner finalizers: work release
          ;; must not run while native close/stream abort is still unwinding.
          (try
            (connection-transport-write! writer work.header 0 frame-header-size)
            (connection-transport-write! writer work.bytes work.start work.end)
            (catch (failure)
              (set! failed? #t)
              (connection-parent-close! self failure)
              (raise self.error))
            ;; Native IO has unwound before releasing the ONE selected frame.
            ;; After our own close attempt use release-only cleanup, even if close
            ;; raised. Never replay close or hide a distinct cleanup exception.
            (finally
              (if failed?
                (connection-parent-release-owned! self work)
                (connection-parent-release! self work))))))
      (loop))))

;;; Public original-lease connection and bounded stream admission

;; The Network owns connection notifications and invokes activate only after
;; CONFIRM/setup handoff. Stream admission/notifications belong to this connection.
(defclass NetworkConnection
  ((this           : Connection)
   (network        : Network)
   (monitor        : NetworkMonitor)
   (candidate      : Handshake)
   (config         : NetworkConfig)
   (parent         : ConnectionParent)
   (address        : Address)
   (peer-address   : Address)
   (ready?         : :boolean)
   (openings       : :list)
   (renewal        : RenewalScope)
   (renewal-cv     : :condvar)
   (timeout-mx     : :mutex)
   (input-timeout  : IOTimeout)
   (output-timeout : IOTimeout))
  final: #t
  constructor: :init!)

(defmethod {:init! NetworkConnection}
  (lambda (self
           (network   : Network)
           (monitor   : NetworkMonitor)
           (candidate : Handshake)
           (config    : NetworkConfig)
           (limits    : ConnectionLimits))
    (set! self.network network)
    (set! self.monitor monitor)
    (set! self.candidate candidate)
    (set! self.config config)
    (set! self.address (candidate.socket.address))
    (set! self.peer-address (candidate.socket.peer-address))
    (set! self.openings [])
    (set! self.renewal (RenewalScope coordinator?: candidate.initiator?))
    (set! self.renewal-cv (make-condition-variable 'connection-renewal))
    (set! self.timeout-mx (make-mutex 'connection-timeouts))
    (set! self.input-timeout config.connection-input-timeout)
    (set! self.output-timeout config.connection-output-timeout)
    ;; Complete fallible view allocation before creating the owned service thread.
    (set! self.this (Connection self))
    (set! self.parent (make-connection-parent limits candidate.output-limits.data-payload
                                              candidate.output-limits.control-payload))))

;; One reservation per stream, retained through its worker/notifications, protocol
;; controls and actual IO retirement. No detached admission queue or task backlog.
(defclass ConnectionOpening
  ((owner         :  NetworkConnection)
   (direction     :  :fixnum)
   (deadline      :  :integer)
   (protocol      :  :string := "")
   (required      :  :integer := 0)
   (expire        :  :integer := 0)
   (peer-window   :  :integer := 0)
   (id            :  :integer := 0)
   (auth          :? Token := #f)
   (linked?       :  :boolean := #f)
   (renewal       :? RenewalScope := #f)
   (blobs         :  :list := [])
   (tokens        :  :vector := #())
   (phase         :  :symbol := 'preparing)
   (pending?      :  :boolean := #t)
   (accepted?     :  :boolean := #f)
   (success?      :  :boolean := #f)
   (cancelled?    :  :boolean := #f)
   (cancel-send?  :  :boolean := #f)
   (cancel-reason :  :fixnum := reason-cancelled)
   (staging?      :  :boolean := #f)
   (error         :  :t := #f)
   (io            :? StreamIO := #f)
   (stream        :? Stream := #f)
   (registered?   :  :boolean := #f)
   (notified?     :  :boolean := #f)
   (control       :? ConnectionWork := #f)
   (terminal      :? ConnectionWork := #f)
   (worker        :? :thread := #f)
   (done?         :  :boolean := #f)
   (cv            :  :condvar := (make-condition-variable 'stream-admission)))
  final: #t)

(def (make-network-connection (network   : Network)
                              (monitor   : NetworkMonitor)
                              (candidate : Handshake)
                              (config    : NetworkConfig)
                              (limits    : ConnectionLimits))
  => NetworkConnection
  (NetworkConnection network monitor candidate config limits))

;; Consume the final socket only after all handshake IO and ownership has ended.
;; Timeout serialization is separate from parent/stream locks and never used by IO.
(def (connection-activate! (self : NetworkConnection))
  => :void
  (unless (eq? self.candidate.phase 'confirmed)
    (raise-context-error connection-activate! "Connection has not completed CONFIRM"))
  (when self.candidate.adaptive? (connection-protect-renewal! self))
  ;; Attach and start each own their failure cleanup. Do not catch their rethrows
  ;; in the timeout-configuration boundary and replay an already attempted close.
  (connection-parent-attach! self.parent self.candidate.socket self.candidate.expire)
  (try
    (with-stream-io-lock self.timeout-mx
      (self.candidate.socket.set-input-timeout! self.input-timeout)
      (self.candidate.socket.set-output-timeout! self.output-timeout)
      (with-stream-io-lock self.parent.mx
        (connection-parent-check-live! self.parent)
        (set! self.parent.connection self)
        (set! self.ready? #t)))
    (catch (failure)
      (connection-parent-close! self.parent failure)
      (raise failure)))
  (connection-parent-start! self.parent self.candidate.initiator? 0 0))

(def (network-connection-network (self : NetworkConnection))
  => Network
  self.network)

(def (network-connection-address (self : NetworkConnection))
  => Address
  self.address)

(def (network-connection-peer-address (self : NetworkConnection))
  => Address
  self.peer-address)

(def (network-connection-peer (self : NetworkConnection))
  => :string
  ;; Published connections have completed peer authentication.
  (:- self.candidate.peer :string))

(def (network-connection-expire (self : NetworkConnection))
  => :integer
  (connection-expiration self))

(def (connection-expiration (self : NetworkConnection))
  => :integer
  (with-stream-io-lock self.parent.mx
    (or self.parent.expire self.candidate.expire)))

(def (network-connection-direction (self : NetworkConnection))
  => :fixnum
  (if self.candidate.initiator? DIRECTION-OUT DIRECTION-IN))

(def (network-connection-close (self : NetworkConnection))
  => :void
  (connection-parent-close! self.parent))

(def (network-connection-set-input-timeout! (self    : NetworkConnection)
                                            (timeout : IOTimeout))
  => :void
  (connection-set-timeout! self timeout #t))

(def (network-connection-set-output-timeout! (self    : NetworkConnection)
                                             (timeout : IOTimeout))
  => :void
  (connection-set-timeout! self timeout #f))

(def (connection-set-timeout! (self    : NetworkConnection)
                              (timeout : IOTimeout)
                              (input?  : :boolean))
  => :void
  (try
    (with-stream-io-lock self.timeout-mx
      (with-stream-io-lock self.parent.mx
        (connection-parent-check-live! self.parent)
        (if input? (set! self.input-timeout timeout) (set! self.output-timeout timeout)))
      (when self.ready?
        (if input?
          (self.candidate.socket.set-input-timeout! timeout)
          (self.candidate.socket.set-output-timeout! timeout))))
    (catch (failure)
      ;; A live check can publish expiry; this operation owns socket-first cleanup.
      (connection-parent-close! self.parent failure)
      (raise failure))))

(implement Connection NetworkConnection
  (network __network-connection-network)
  (address __network-connection-address)
  (peer-address __network-connection-peer-address)
  (peer __network-connection-peer)
  (direction __network-connection-direction)
  (expire __network-connection-expire)
  (close __network-connection-close)
  (set-input-timeout! __network-connection-set-input-timeout!)
  (set-output-timeout! __network-connection-set-output-timeout!)
  (open-stream! __connection-open-stream!))

;; Admission calls hold parent mx. Slots count preparation and notification work,
;; not just accepted IO. Reaping is done outside locks before reserving locally.
(def (connection-opening-capacity? (self : NetworkConnection))
  => :boolean
  (and (fx< (length self.openings) self.parent.scheduler.limits.total-streams)
       (fx< (foldl (lambda ((entry :- ConnectionOpening)
                            (n     :- :fixnum))
                     (if entry.pending? (fx1+ n) n)) 0 self.openings)
            self.parent.scheduler.limits.pending-streams)))

(def (connection-open-stream! (self           :  NetworkConnection)
                              (protocol       :  :string)
                              (auth           :? Token := #f)
                              ttl: (ttl       :~ (? (or not positive-integer?)) := #f)
                              expire: (expire :~ (? (or not uint64?))           := #f)
                              lease: (lease   :~ (one-of #f connection) := #f))
  => Stream
  (when (and lease (or ttl expire))
    (raise-bad-argument connection-open-stream! "Lease policy excludes ttl/expire overrides"))
  (when lease (connection-protect-renewal! self))
  (let* ((now (current-time-seconds))
         (required (if lease (connection-expiration self)
                       (resolve-auth-expiration now self.config.stream-ttl ttl: ttl expire: expire)))
         (deadline (operation-deadline now self.config.stream-open-timeout)))
    (using (entry (ConnectionOpening owner: self direction: DIRECTION-OUT deadline: deadline
                                     protocol: protocol required: required auth: auth) :- ConnectionOpening)
      (set! entry.linked? (not (not lease)))
      (try
        (connection-reap-openings! self)
        (with-stream-io-lock self.parent.mx
          (connection-parent-check-live! self.parent)
          (unless self.ready?
            (raise-io-closed connection-open-stream! "Connection is not established"))
          (unless (connection-opening-capacity? self)
            (raise-io-error connection-open-stream! "Stream admission capacity exhausted"))
          (set! self.openings (cons entry self.openings))
          (try
            (set! entry.worker (spawn-network-thread 'connection-opening (cut connection-opening-thread entry)))
            (catch (failure)
              (set! self.openings (remq1 entry self.openings))
              (raise failure))))
        (with-stream-io-lock self.parent.mx
          (let loop ()
            (connection-opening-check! entry)
            (if entry.success?
              ;; Successful admission has installed the public stream view.
              (:- entry.stream Stream)
              (begin
                (mutex-unlock! self.parent.mx entry.cv
                               (seconds->time (min deadline (connection-opening-expiration entry) self.parent.expire)))
                (mutex-lock! self.parent.mx)
                (loop)))))
        (catch (failure)
          (if (with-stream-io-lock self.parent.mx (or self.parent.closed? self.parent.scheduler.closed?))
            (connection-parent-close! self.parent failure)
            (try
              (with-stream-io-lock self.parent.mx
                (connection-opening-cancel! entry failure reason-cancelled #t))
              (catch (cleanup)
                (connection-parent-close! self.parent cleanup)
                (raise cleanup))))
          (raise failure))))))

;; Caller holds parent mx. Before credential selection a linked OPEN's captured
;; target is only a coverage requirement, not the renewed parent's liveness bound.
(def (connection-opening-expiration (entry : ConnectionOpening))
  => :integer
  (cond
   (entry.io entry.io.expire)
   ((> entry.expire 0) entry.expire)
   ;; Linked openings belong to an attached, established parent.
   (entry.linked? (:- entry.owner.parent.expire :integer))
   (else entry.required)))

;; Call under parent mx, including after every asynchronous result and wait.
(def (connection-opening-check! (entry : ConnectionOpening))
  => :void
  (when entry.cancelled?
    (raise entry.error))
  (connection-parent-check-live! entry.owner.parent)
  (let (now (current-time-seconds))
    (when (and entry.pending? (>= now entry.deadline))
      (raise-timeout connection-opening-check! "Stream opening timed out" entry.protocol))
    (when (>= now (connection-opening-expiration entry))
      (raise-io-closed connection-opening-check! "Stream authorization expired"))))

;; Reserve before serializing. OPEN carries id=0 until selection commits the next
;; ID in actual writer order. All other controls already have a wire-observed ID.
(def (connection-opening-control! (entry      : ConnectionOpening)
                                  (type       : :fixnum)
                                  (fields     : :list)
                                  (mandatory? : :boolean))
  => ConnectionWork
  (using (p entry.owner.parent :- ConnectionParent)
    (let* ((size (frame-payload-size type fields p.scheduler.limits))
           (work (connection-control-reserve! p.scheduler type
                                              (if (fx= type frame-open) 0 entry.id) size mandatory?)))
      (unless work
        (raise-io-error connection-opening-control! "Stream control capacity exhausted"))
      (using (work :- ConnectionWork)
        (set! work.opening entry)
        (connection-control-fill! work fields)
        (stream-wake-signal! p.wake)
        work))))

;; Cancellation marks first failure and wakes the local caller immediately, but
;; retains the reservation until the worker and all protocol ownership have ended.
(def (connection-opening-cancel! (entry   : ConnectionOpening)
                                 (failure : :t)
                                 (reason  : :fixnum)
                                 (send?   : :boolean))
  => :void
  (using (p entry.owner.parent :- ConnectionParent)
    (unless entry.cancelled?
      (set! entry.cancelled? #t)
      (set! entry.error failure)
      (set! entry.cancel-reason reason)
      (set! entry.cancel-send? send?))
    (unless send? (set! entry.cancel-send? #f))
    ;; Publication is not cleanup completion: a retry must still abort an exposed
    ;; but unregistered IO whose first lock acquisition was interrupted.
    (try
      (when entry.io (stream-io-abort! entry.io))
      (when (and entry.control (not entry.staging?))
        (connection-control-cancel! entry.control))
      (cond
       (entry.registered?
        (unless p.scheduler.closed?
          (connection-scheduler-reset! p.scheduler entry.id entry.cancel-reason entry.cancel-send?)))
       ((and entry.cancel-send? (not entry.terminal) (not p.scheduler.closed?) (> entry.id 0))
        (set! entry.terminal
          (connection-opening-control! entry
                                       (if (and (fx= entry.direction DIRECTION-IN)
                                                (not (eq? entry.phase 'accept-sent)))
                                         frame-open-reject frame-reset)
                                       [entry.cancel-reason] #t))))
      (unless entry.cancel-send?
        (when entry.terminal (connection-control-cancel! entry.terminal)))
      (finally
        (condition-variable-broadcast! entry.cv)
        (stream-wake-signal! p.wake)))))

;; Only this owner attaches a newly accepted IO; no public raw registration after
;; startup and no inference of OPEN order from accepted-object insertion order.
;; Return #f for terminal/expired admission observed under the actual stream locks;
;; the caller cancels locally AFTER releasing them. Connection expiry still raises.
(def (connection-opening-register! (entry : ConnectionOpening))
  => :boolean
  (or entry.registered?
      (using ((p entry.owner.parent :- ConnectionParent) (io entry.io :- StreamIO))
        (with-stream-io-lock io.input-mx
          (with-stream-io-lock io.output-mx
            (with-stream-io-lock p.wake.mx
              (connection-parent-check-live! p)
              (and (not entry.cancelled?) (not io.state.aborted?)
                   (< (current-time-seconds) entry.deadline)
                   (< (current-time-seconds) io.expire)
                   (begin
                     (when (and entry.linked? (not entry.renewal))
                       (set! entry.renewal
                         (RenewalScope id: entry.id coordinator?: (fx= entry.direction DIRECTION-OUT)
                                       automatic?: #t seed: entry.auth desired: p.expire)))
                     (connection-scheduler-register! p.scheduler entry.id io)
                     (set! io.wake p.wake)
                     (set! entry.registered? #t)
                     (stream-wake-signal-locked! p.wake #t)
                     #t))))))))

;; Selection is parent-serialized and precedes IO. ACCEPT selection may enable
;; receive dispatch because the peer can reply before local write release; the
;; one-work scheduler still prevents response DATA from preceding ACCEPT output.
(def (connection-opening-select! (work : ConnectionWork))
  => :boolean
  (using ((entry work.opening :- ConnectionOpening) (p entry.owner.parent :- ConnectionParent))
    (if (or (fx= work.type frame-reset) (fx= work.type frame-open-reject))
      #t
      (begin
        (when (and (not entry.cancelled?)
                   (or (>= (current-time-seconds) entry.deadline)
                       (>= (current-time-seconds) (connection-opening-expiration entry))))
          (connection-opening-cancel! entry (Timeout "Stream opening timed out" where: 'connection-opening-select!)
                                      reason-timeout #t))
        (and (not entry.cancelled?)
             (cond
              ((fx= work.type frame-open)
               (let (id (if (zero? p.local-open-id) (if p.initiator? 1 2) (+ p.local-open-id 2)))
                 (if (> id #xffffffffffffffff)
                   (begin
                     (connection-opening-cancel! entry (Closed "Stream IDs exhausted" where: 'connection-opening-select!)
                                                 reason-limit #f)
                     #f)
                   (begin
                     (set! work.header
                       (encode-frame-header (FrameHeader type: frame-open stream-id: id payload-length: work.size)
                                            limits: p.scheduler.limits))
                     (set! work.id id)
                     (set! entry.id id)
                     (set! p.local-open-id id)
                     (set! entry.phase 'sent)
                     #t))))
              ((fx= work.type frame-open-accept)
               (if (connection-opening-register! entry)
                 (begin (set! entry.phase 'accept-sent) #t)
                 (begin
                   (connection-opening-cancel! entry
                                               (Timeout "Stream admission expired before acceptance"
                                                        where: 'connection-opening-select!)
                                               reason-timeout #t)
                   #f)))
              (else #t)))))))

(def (connection-opening-released! (work : ConnectionWork))
  => :void
  (using (entry work.opening :- ConnectionOpening)
    (when (and (fx= work.type frame-open-accept) (not entry.cancelled?))
      (set! entry.accepted? #t))
    (condition-variable-broadcast! entry.cv)))

;; True means handled by pending/opening lifecycle; false falls through to atomic
;; accepted-IO dispatch. Peer OPEN high-water advances BEFORE admission/verification.
(def (connection-dispatch-opening! (self    : NetworkConnection)
                                   (header  : FrameHeader)
                                   (payload : :u8vector))
  => :boolean
  (using (p self.parent :- ConnectionParent)
    (let ((id header.stream-id) (type header.type))
      (if (fx= type frame-open)
        (begin
          (unless (and (not (eq? (odd? id) p.initiator?)) (> id p.peer-open-id))
            (raise-io-error connection-dispatch-opening! "Invalid peer OPEN ID" id))
          (set! p.peer-open-id id)
          (let* ((fields (decode-frame-payload type payload limits: p.scheduler.limits))
                 (linked? (fx= (##vector-ref fields 4) lease-mode-adaptive)))
            (unless (> (##vector-ref fields 1) 0)
              (raise-io-error connection-dispatch-opening! "Invalid OPEN expiration"))
            (if (and (connection-opening-capacity? self)
                     (or (not linked?) (connection-protect-renewal-locked! self)))
              (using (entry (ConnectionOpening owner: self direction: DIRECTION-IN
                                               deadline: (operation-deadline (current-time-seconds) self.config.stream-open-timeout)
                                               id: id)
                            :- ConnectionOpening)
                ;; Reserve before decoding tokens. The wire codec only checks
                ;; bounded fields here; crypto/context work is on the worker.
                (set! self.openings (cons entry self.openings))
                (begin
                  (set! entry.linked? linked?)
                  (set! entry.protocol (##vector-ref fields 0))
                  (set! entry.required (##vector-ref fields 1))
                  (set! entry.peer-window (##vector-ref fields 2))
                  (set! entry.blobs (##vector-ref fields 3)))
                (set! entry.worker (spawn-network-thread 'connection-admission (cut connection-opening-thread entry))))
              (begin
                ;; Capacity refusal skips token deserialization/authorization, not
                ;; mandatory outer field validation of a fresh OPEN.
                (decode-frame-payload type payload limits: p.scheduler.limits)
                (using (work (connection-control-reserve! p.scheduler frame-open-reject id 2 #t) :- ConnectionWork)
                  (connection-control-fill! work [reason-limit])))))
          (stream-wake-signal! p.wake)
          #t)
        (let (entry (find (lambda ((entry :- ConnectionOpening)) (= entry.id id)) self.openings))
          (and entry
               (using (entry :- ConnectionOpening)
                 ;; Expired pending work is non-live before interpreting an ACK.
                 ;; Elapsed local time is not a forged/invalid acknowledgment.
                 (when (and entry.pending? (not entry.cancelled?)
                            (or (>= (current-time-seconds) entry.deadline)
                                (>= (current-time-seconds) (connection-opening-expiration entry))))
                   (connection-opening-cancel! entry
                                               (Timeout "Stream opening expired" where: 'connection-dispatch-opening!)
                                               reason-timeout #t))
                 (cond
                  (entry.cancelled? #t)
                  ((and entry.registered? (not entry.pending?)) #f)
                  ((fx= type frame-reset)
                   (let (reason (##vector-ref (decode-frame-payload type payload limits: p.scheduler.limits) 0))
                     (connection-opening-cancel! entry
                                                 (Closed "Peer reset stream" where: 'connection-dispatch-opening! irritants: [reason])
                                                 reason #f))
                   #t)
                  ((or (fx= type frame-open-accept) (fx= type frame-open-reject))
                   (unless (and (fx= entry.direction DIRECTION-OUT) (eq? entry.phase 'sent))
                     (raise-io-error connection-dispatch-opening! "Unexpected opening acknowledgment" type id))
                   (let (fields (decode-frame-payload type payload limits: p.scheduler.limits))
                     (if (fx= type frame-open-reject)
                       (connection-opening-cancel! entry
                                                   (Closed "Stream open rejected" where: 'connection-dispatch-opening!
                                                           irritants: [(##vector-ref fields 0)]) reason-refused #f)
                       (let (index (##vector-ref fields 0))
                         (unless (< index (vector-length entry.tokens))
                           (raise-io-error connection-dispatch-opening! "Invalid selected stream credential" index))
                         (using (token (##vector-ref entry.tokens index) :- Token)
                           (unless (and (uint64? token.expire) (>= token.expire entry.required))
                             (raise-io-error connection-dispatch-opening! "Invalid selected stream lifetime"))
                           (set! entry.expire token.expire)
                           ;; Expiry was observed above in this transition. Do
                           ;; not turn a second clock read in a constructor into
                           ;; a connection-fatal exception across the boundary.
                           (set! entry.io (StreamIO (make-stream-state p.scheduler.limits.stream-limits
                                                                       (##vector-ref fields 1))
                                                    token.expire self.config.stream-input-timeout
                                                    self.config.stream-output-timeout))
                           (if (connection-opening-register! entry)
                             (begin
                               (set! entry.phase 'accepted)
                               (set! entry.accepted? #t)
                               (condition-variable-broadcast! entry.cv))
                             (connection-opening-cancel! entry
                                                         (Timeout "Stream admission expired before acceptance"
                                                                  where: 'connection-dispatch-opening!)
                                                         reason-timeout #t))))))
                   #t)
                  ((not entry.registered?)
                   (raise-io-error connection-dispatch-opening! "Stream data/control before acceptance" type id))
                  (else #f)))))))))

;; Wait on the reservation's CV, not socket IO. One immutable opening deadline
;; covers preparation, queueing, acceptance and callbacks; later stream life is
;; bounded by its installed credential and the current connection lease.
(def (connection-opening-await! (entry     : ConnectionOpening)
                                (terminal? : :boolean))
  => :void
  (using (p entry.owner.parent :- ConnectionParent)
    (with-stream-io-lock p.mx
      (let loop ()
        (unless (and terminal? (or entry.cancelled? (stream-io-retirable? entry.io)))
          (connection-opening-check! entry)
          (unless (and (not terminal?) entry.accepted?)
            (let (deadline (min p.expire
                                (if entry.pending? entry.deadline entry.io.expire)
                                (connection-opening-expiration entry)))
              (mutex-unlock! p.mx entry.cv (seconds->time deadline))
              (mutex-lock! p.mx)
              (loop))))))))

;; Account the whole available encoding allowance before producing any wire blobs.
;; The worker owns an unqueued OPEN while encoding; cancellation
;; keeps that budget charged until this dynamic finalizer ends staging ownership.
(def (connection-prepare-open! (entry : ConnectionOpening))
  => :void
  (using ((self entry.owner :- NetworkConnection) (p self.parent :- ConnectionParent))
    (let* ((tokens (if entry.linked?
                     (make-adaptive-auth-tokens self.candidate.context self.candidate.host self.candidate.peer
                                                entry.protocol entry.required 0 (current-time-seconds)
                                                self.config.stream-ttl seed: entry.auth)
                     (make-auth-tokens self.candidate.context self.candidate.host self.candidate.peer
                                       entry.protocol entry.required 0 (current-time-seconds) entry.auth)))
           (mode (if entry.linked? lease-mode-adaptive lease-mode-fixed))
           (base (frame-payload-size frame-open
                                     [entry.protocol entry.required p.scheduler.limits.stream-limits.recv-window [] mode]
                                     p.scheduler.limits)))
      (when (null? tokens)
        (raise-io-closed connection-prepare-open! "No stream credentials"))
      (with-stream-io-lock p.mx
        (connection-opening-check! entry)
        (let (allowance (min p.scheduler.control-limit
                             (- (connection-control-available p.scheduler #f) frame-header-size)))
          (when (< allowance base)
            (raise-io-error connection-prepare-open! "Stream control capacity exhausted"))
          (let (work (connection-control-reserve! p.scheduler frame-open 0 allowance #f #f))
            (unless work
              (raise-io-error connection-prepare-open! "Stream control capacity exhausted"))
            (using (work :- ConnectionWork) (set! work.opening entry))
            (set! entry.control work)
            (set! entry.staging? #t))))
      (try
        (let* ((blobs (encode-auth-bundle tokens (fx- entry.control.size (fx- base 4))))
               (fields [entry.protocol entry.required p.scheduler.limits.stream-limits.recv-window blobs mode])
               (size (frame-payload-size frame-open fields p.scheduler.limits)))
          (with-stream-io-lock p.mx
            (connection-opening-check! entry)
            (set! entry.tokens (list->vector tokens))
            (set! entry.control.opening entry)
            ;; Refund only unused allowance; payload ownership stays charged until
            ;; the real writer releases the selected frame, including on failure.
            (set! p.scheduler.control-bytes
              (fx- p.scheduler.control-bytes (fx- entry.control.size size)))
            (set! entry.control.size size)
            (connection-control-fill! entry.control fields)
            (set! entry.staging? #f)
            (stream-wake-signal! p.wake)))
        (finally
          ;; Encoding has unwound before ending its reservation. Cooperative
          ;; cancellation never releases budget while this worker still encodes.
          (try
            (with-stream-io-lock p.mx
              (when entry.staging?
                (connection-control-cancel! entry.control)
                (set! entry.staging? #f)))
            (finally (stream-wake-signal! p.wake))))))))

;; Catch only around the external callback, so normal timeout/authorization
;; failures are not mislabeled as callback failures. Preserve arbitrary values.
(def (connection-allow-stream? (entry : ConnectionOpening))
  => :boolean
  (using (self entry.owner :- NetworkConnection)
    (try
      (self.monitor.allow-stream? self.candidate.peer entry.protocol entry.direction)
      (catch (failure)
        (unless (Closed? failure)
          (log.error "Stream admission callback failed" peer: self.candidate.peer
                     protocol: entry.protocol exception: (exception->string failure)))
        (raise failure)))))

(def (connection-opening-thread (entry : ConnectionOpening))
  => :void
  (using ((self entry.owner :- NetworkConnection) (p self.parent :- ConnectionParent))
    (def (cancel-operation! (failure : :t))
      => :boolean
      (with-stream-io-lock p.mx
        (if (or p.closed? p.scheduler.closed?)
          #t
          (begin
            (connection-opening-cancel! entry failure reason-refused #t)
            #f))))
    (try
      ;; Initial gate publishes the worker handle before any external callback.
      (with-stream-io-lock p.mx (connection-opening-check! entry))
      (if (fx= entry.direction DIRECTION-OUT)
        (begin
          (unless (connection-allow-stream? entry)
            (raise-io-closed connection-opening-thread "Outgoing stream admission refused"))
          (connection-prepare-open! entry)
          (connection-opening-await! entry #f))
        (using (selection (select-auth-candidate self.candidate.context (decode-auth-bundle entry.blobs)
                                                 self.candidate.peer self.candidate.host entry.protocol
                                                 entry.required 0 (current-time-seconds)) :- AuthSelection)
          (unless selection.candidate
            (with-stream-io-lock p.mx
              (connection-opening-cancel! entry
                                          (Closed "Stream authorization refused" where: 'connection-opening-thread)
                                          selection.reason #t))
            (raise entry.error))
          (unless (connection-allow-stream? entry)
            (raise-io-closed connection-opening-thread "Incoming stream admission refused"))
          (with-stream-io-lock p.mx
            (connection-opening-check! entry)
            (set! entry.expire selection.candidate.token.expire)
            (set! entry.io (make-stream-io p.scheduler.limits.stream-limits entry.peer-window entry.expire self.config))
            ;; Preserve the ORIGINAL wire index for ACCEPT, not selection order.
            (set! entry.tokens (vector selection.candidate.index)))))
      (with-stream-io-lock p.mx
        (connection-opening-check! entry)
        (set! entry.stream (new-stream self.this entry.id entry.direction entry.protocol entry.io)))
      (try
        (self.monitor.on-open-stream entry.stream)
        (catch (failure)
          (unless (Closed? failure)
            (log.error "Stream open callback failed" peer: self.candidate.peer
                       protocol: entry.protocol exception: (exception->string failure)))
          (raise failure)))
      ;; Only this worker consumes notification eligibility. Publish normal return
      ;; before its next interruptible acquisition, even if the callback closed IO.
      (set! entry.notified? #t)
      (with-stream-io-lock p.mx
        (connection-opening-check! entry)
        (when (StreamState-aborted? entry.io.state)
          (raise-io-closed connection-opening-thread "Stream closed during admission"))
        (when (fx= entry.direction DIRECTION-IN)
          (set! entry.control
            (connection-opening-control! entry frame-open-accept
                                         [(##vector-ref entry.tokens 0) p.scheduler.limits.stream-limits.recv-window] #t))))
      (when (fx= entry.direction DIRECTION-IN) (connection-opening-await! entry #f))
      (with-stream-io-lock p.mx
        (connection-opening-check! entry)
        (set! entry.pending? #f)
        (set! entry.success? #t)
        (set! entry.blobs [])
        (set! entry.tokens #())
        (when entry.renewal (set! entry.renewal.desired p.expire))
        (set! entry.auth #f)
        (condition-variable-broadcast! entry.cv)
        (stream-wake-signal! p.wake))
      (connection-opening-await! entry #t)
      (catch (failure)
        (let (close?
              (try
                (cancel-operation! failure)
                (catch (fatal)
                  (connection-parent-close! p fatal)
                  (raise fatal))))
          ;; No enclosing operation catch may replay an attempted native close.
          (when close? (connection-parent-close! p failure))))
      (finally
        (try
          (when entry.notified?
            (try
              (self.monitor.on-close-stream entry.stream)
              (catch (failure)
                (log.error "Stream close callback failed" exception: (exception->string failure)))))
          (finally
            ;; Publish completion only after callback cleanup has returned; the
            ;; passive wake is outside the ownership/publication critical section.
            (try
              (with-stream-io-lock p.mx
                (set! entry.done? #t)
                (condition-variable-broadcast! entry.cv))
              (finally (stream-wake-signal! p.wake)))))))))

;; Service is the sole reap owner. Local callers may also reap before reservation;
;; joining completed workers happens outside mx and final removal rechecks identity.
;; joined? is private to shutdown after its complete owned-worker join barrier.
(def (connection-reap-openings! (self    : NetworkConnection)
                                (joined? : :boolean := #f))
  => :void
  (let (done (with-stream-io-lock self.parent.mx
               (filter (lambda ((entry :- ConnectionOpening)) entry.done?) self.openings)))
    (for-each
      (lambda ((entry :- ConnectionOpening))
        (when (and (not joined?) entry.worker (not (eq? entry.worker (current-thread))))
          (network-thread-join! entry.worker))
        (with-stream-io-lock self.parent.mx
          (when (and (memq entry self.openings)
                     (or (not entry.renewal) (null? entry.renewal.owned))
                     (or (not entry.control) (eq? entry.control.state 'released))
                     (or (not entry.terminal) (eq? entry.terminal.state 'released)))
            (let (registered (and entry.registered? (connection-scheduler-find self.parent.scheduler entry.id)))
              (when (or (not registered)
                        (using (registered :- ConnectionStream)
                          (and (stream-io-retirable? entry.io)
                               (or (not self.parent.scheduler.in-flight)
                                   (not (= (ConnectionWork-id self.parent.scheduler.in-flight) entry.id)))
                               (andmap (lambda (work) (or (not work) (eq? (ConnectionWork-state work) 'released)))
                                       [registered.credit registered.fin registered.reset])
                               (or (not (StreamState-aborted? entry.io.state)) registered.reset? self.parent.closed?))))
                (when registered (connection-scheduler-remove! self.parent.scheduler entry.id))
                (set! self.openings (remq1 entry self.openings)))))))
      done)))

(def (connection-service-openings! (self     :  NetworkConnection)
                                   (deadline :? :time))
  => (Maybe :time)
  (let (next deadline)
    (for-each
      (lambda ((entry :- ConnectionOpening))
        (unless entry.cancelled?
          (when (and entry.pending? (>= (current-time-seconds) entry.deadline))
            (connection-opening-cancel! entry (Timeout "Stream opening timed out" where: 'connection-service-openings!)
                                        reason-timeout #t))
          (when (and entry.pending? (not entry.cancelled?)
                     (or (not next) (< entry.deadline (time->seconds next))))
            (set! next (seconds->time entry.deadline))))
        (condition-variable-broadcast! entry.cv))
      self.openings)
    next))

;; Network reapers call only outside callbacks/locks. Complete stream notifications
;; before the owner emits connection-close. The close failure is expected; distinct
;; cleanup failures remain observable after attempting every owned worker join.
(def (connection-shutdown! (self : NetworkConnection))
  => :void
  (let ((failed? #f) (failure #f) (joined? #t))
    (def (record (e : :t))
      (unless (or failed? (eq? e self.parent.error))
        (set! failed? #t)
        (set! failure e)))
    (def (join-worker (worker : :thread))
      => :void
      (try
        (let (result (thread-join! worker))
          (when (NetworkThreadError? result)
            (record (NetworkThreadError-exception result))))
        ;; These wrappers prove termination. Retain worker failures while joining
        ;; every owner; do not confuse an arbitrary join error with completion.
        (catch (uncaught-exception? e) (record (uncaught-exception-reason e)))
        (catch (terminated-thread-exception? e) (record e)))
      (void))
    (try (connection-parent-close! self.parent) (catch (e) (record e)))
    (let (workers (with-stream-io-lock self.parent.mx
                    (append [self.parent.worker self.parent.reader-worker self.parent.writer-worker]
                            (map (lambda ((entry :- ConnectionOpening)) entry.worker) self.openings)
                            (connection-renewal-workers self))))
      (for-each
        (lambda (worker)
          (when worker
            (if (eq? worker (current-thread))
              (set! joined? #f)
              (join-worker worker))))
        workers))
    ;; Service can exit before a verifier or output owner finishes. Only the join
    ;; barrier permits final retirement; do not rejoin and replace recorded errors.
    (when joined?
      (try
        (connection-renewal-reap! self #t)
        (with-stream-io-lock self.parent.mx
          (for-each
            (lambda ((scope :- RenewalScope))
              (when (null? scope.owned)
                (set! scope.operation #f))
              (when (and scope.wire-request
                         (memq scope.wire-request.state '(succeeded failed))
                         (or (not scope.wire-request.control)
                             (eq? (ConnectionWork-state scope.wire-request.control) 'released)))
                (set! scope.wire-request #f)))
            (connection-renewal-scopes self)))
        (catch (e) (record e)))
      (try (connection-reap-openings! self #t) (catch (e) (record e))))
    (when failed?
      (raise failure))))

;;; Renewable authorization: parent-serialized protocol and existing transport

;; Called under parent mx. Protect capacity atomically, without revoking an
;; existing borrow or increasing the configured aggregate limits.
(def (connection-protect-renewal-locked! (self : NetworkConnection))
  => :boolean
  (using (scheduler self.parent.scheduler :- ConnectionScheduler)
    (or scheduler.protected?
        (and (>= scheduler.limits.pending-control-frames 4)
             (>= scheduler.limits.pending-control-bytes (renewal-protected-bytes scheduler.limits))
             (<= scheduler.control-frames (fx- scheduler.limits.pending-control-frames 4))
             (<= scheduler.control-bytes (- scheduler.limits.pending-control-bytes
                                            (renewal-protected-bytes scheduler.limits)))
             (begin (set! scheduler.protected? #t) #t)))))

(def (connection-protect-renewal! (self : NetworkConnection))
  => :void
  (try
    (with-stream-io-lock self.parent.mx
      (connection-parent-check-live! self.parent)
      (unless (connection-protect-renewal-locked! self)
        (raise-io-error connection-protect-renewal! "Renewal protection capacity unavailable")))
    (catch (failure)
      (when (with-stream-io-lock self.parent.mx self.parent.closed?)
        (connection-parent-close! self.parent failure))
      (raise failure))))

(def (connection-enable-renewable! (self :  NetworkConnection)
                                   (seed :? Token := #f))
  => :void
  (try
    (with-stream-io-lock self.parent.mx
      (connection-parent-check-live! self.parent)
      (unless (connection-protect-renewal-locked! self)
        (raise-io-error connection-enable-renewable! "Renewal protection capacity unavailable"))
      (set! self.renewal.automatic? #t)
      (when seed (set! self.renewal.seed seed))
      (stream-wake-signal! self.parent.wake))
    (catch (failure)
      (when (with-stream-io-lock self.parent.mx self.parent.closed?)
        (connection-parent-close! self.parent failure))
      (raise failure))))

;; Finite callers own their waiting record, not the shared round/encoder. The
;; Network calls outside its mutex. A timed-out waiter cannot revoke other callers.
(def (connection-request-renewal! (self     :  NetworkConnection)
                                  (required :  :integer)
                                  (deadline :  :integer)
                                  (auth     :? Token := #f))
  => :void
  (using (request (RenewalRequest target: required deadline: deadline auth: auth scope: self.renewal)
                  :- RenewalRequest)
    (try
      (with-stream-io-lock self.parent.mx
        (connection-parent-check-live! self.parent)
        (unless self.ready?
          (raise-io-closed connection-request-renewal! "Connection is not established"))
        (when (> required self.parent.expire)
          (unless (connection-protect-renewal-locked! self)
            (raise-io-error connection-request-renewal! "Renewal protection capacity unavailable"))
          (set! self.renewal.request-order (+ self.renewal.request-order 1))
          (set! request.order self.renewal.request-order)
          (set! self.renewal.requests (cons request self.renewal.requests))
          (when self.renewal.operation
            (renewal-add-parent! self.renewal.operation auth))
          (stream-wake-signal! self.parent.wake)
          (let loop ()
            (connection-parent-check-live! self.parent)
            (case request.state
              ((succeeded) (void))
              ((failed)
               (raise request.error))
              (else
               (when (>= (current-time-seconds) deadline)
                 (set! request.state 'failed)
                 (set! request.error (Timeout "Renewal request timed out" where: 'connection-request-renewal!
                                              irritants: [required]))
                 (raise request.error))
               (mutex-unlock! self.parent.mx self.renewal-cv
                              (seconds->time (min deadline self.parent.expire)))
               (mutex-lock! self.parent.mx)
               (loop))))))
      (catch (failure)
        (when (with-stream-io-lock self.parent.mx self.parent.closed?)
          (connection-parent-close! self.parent failure))
        (raise failure))
      (finally
        (with-stream-io-lock self.parent.mx
          (set! self.renewal.requests (remq1 request self.renewal.requests)))))))

(def (connection-renewal-entry (self  : NetworkConnection)
                               (scope : RenewalScope))
  => (Maybe ConnectionOpening)
  (and (> scope.id 0)
       (find (lambda ((entry :- ConnectionOpening)) (= entry.id scope.id)) self.openings)))

;; Parent lease is checked separately. No class predicate can establish liveness
;; of a nullable IO: branch on the actual live entry before accessing it. Graceful
;; retirement stops new work, not a transaction already owned by this scope.
(def (connection-renewal-expire (self      : NetworkConnection)
                                (scope     : RenewalScope)
                                (existing? : :boolean := #f))
  => :integer
  (if (zero? scope.id)
    (or self.parent.expire self.candidate.expire)
    (let (entry (connection-renewal-entry self scope))
      (if entry
        (using (entry :- ConnectionOpening)
          (if (and entry.io (not entry.cancelled?) (or existing? (not entry.done?)))
            (let-values (((aborted? active) (stream-io-status entry.io)))
              (if (and (not aborted?) (or active existing?)) entry.io.expire 0))
            0))
        0))))

(def (connection-renewal-scopes (self : NetworkConnection))
  => :list
  (cons self.renewal
        (map cdr
             (list-sort (lambda (a
                                 b)
                          (< (car a) (car b)))
                        (filter-map (lambda ((entry :- ConnectionOpening))
                                      (and entry.renewal
                                           (cons (if entry.io entry.io.expire 0) entry.renewal))) self.openings)))))

(def (connection-renewal-workers (self : NetworkConnection))
  => :list
  (foldl (lambda ((scope :- RenewalScope)
                  result)
           (foldl (lambda ((round :- RenewalRound)
                           result)
                    (if round.worker (cons round.worker result) result)) result scope.owned))
         [] (connection-renewal-scopes self)))

(def (connection-work-network (work : ConnectionWork))
  => NetworkConnection
  (using (parent work.owner.parent :? ConnectionParent)
    (if parent
      (or parent.connection
          (raise-context-error connection-work-network "Renewal work has no connection"))
      (raise-context-error connection-work-network "Renewal work has no parent"))))

;; Round/control owners are explicit fields on scheduler work. This helper never
;; writes a socket, and its caller holds parent mx through admission/publication.
(def (connection-renewal-send! (self       :  NetworkConnection)
                               (round      :? RenewalRound)
                               (request    :? RenewalRequest)
                               (type       :  :fixnum)
                               (id         :  :integer)
                               (fields     :  :list)
                               (mandatory? :  :boolean := #t))
  => ConnectionWork
  (using (scheduler self.parent.scheduler :- ConnectionScheduler)
    (let* ((size (frame-payload-size type fields scheduler.limits))
           (protected? (and (renewal-connection-frame? type) scheduler.protected?))
           (work (connection-control-reserve! scheduler type id size mandatory? #t protected?)))
      (unless work
        (raise-io-error connection-renewal-send! "Renewal control capacity unavailable"))
      (using (work :- ConnectionWork)
        ;; Reservation precedes owner-list allocation; retain local cleanup until
        ;; publication completes so a failed attachment cannot strand a FIFO head.
        (let (fill-owned? #f)
          (try
            (set! work.renewal round)
            (set! work.request request)
            (when round (set! round.controls (cons work round.controls)))
            (when request (set! request.control work))
            (set! fill-owned? #t)
            (connection-control-fill! work fields)
            (set! fill-owned? #f)
            (stream-wake-signal! self.parent.wake)
            work
            (catch (failure)
              (if fill-owned?
                ;; Fill already attempted cancellation on codec failure. A still
                ;; owned reservation means cleanup failed: close, never retry it.
                (unless (or (eq? work.state 'released) scheduler.closed?)
                  (set! scheduler.error failure)
                  (set! scheduler.closed? #t))
                (try
                  (connection-control-cancel! work)
                  (catch (cleanup)
                    ;; Failed cancellation may leave an unpublished reservation
                    ;; in the FIFO; socket-first close retains its ownership.
                    (unless scheduler.closed?
                      (set! scheduler.error cleanup)
                      (set! scheduler.closed? #t))
                    (raise cleanup))))
              (raise failure))))))))

(def (connection-renewal-request-select! (work : ConnectionWork))
  => :boolean
  (using (request work.request :- RenewalRequest)
    (cond
     ((fx= work.type frame-renew-result) #t)
     ((or (not (eq? request.state 'pending)) (>= (current-time-seconds) request.deadline))
      (set! request.state 'failed)
      (set! request.error (Timeout "Renewal request timed out" where: 'connection-renewal-request-select!))
      #f)
     (else (set! request.state 'sent) #t))))

;; Caller supplies parent serialization. Protocol retirement does not return
;; staging/in-flight ownership; reaping waits for the actual worker and controls.
(def (connection-renewal-fail! (self    : NetworkConnection)
                               (round   : RenewalRound)
                               (failure : :t)
                               (reason  : :fixnum)
                               (notify? : :boolean := #t))
  => :void
  (unless round.retired?
    (set! round.failed? #t)
    (set! round.error failure)
    (set! round.reason reason)
    (set! round.retired? #t)
    (set! round.phase 'failed)
    (when (eq? round.scope.active round) (set! round.scope.active #f))
    (for-each
      (lambda ((work :- ConnectionWork))
        (unless (eq? work.state 'staging) (connection-control-cancel! work)))
      round.controls)
    (cond
     (round.committed?
      (if (zero? round.scope.id)
        (unless self.parent.scheduler.closed?
          (set! self.parent.scheduler.error failure)
          (set! self.parent.scheduler.closed? #t))
        (let (entry (connection-renewal-entry self round.scope))
          (when entry (connection-opening-cancel! entry failure reason #t)))))
     ((and notify? round.visible? (not self.parent.scheduler.closed?))
      (connection-renewal-send! self round #f
                                (if (zero? round.scope.id) frame-renew-abort frame-stream-renew-abort)
                                round.scope.id [round.id reason])))
    (when round.operation
      (set! round.operation.error failure)
      (set! round.operation.reason reason)
      (set! round.operation.retry?
        (and round.coordinator? (not round.committed?) round.peer-failure?
             (or (fx= reason reason-auth-failed) (fx= reason reason-lifetime))))
      (set! round.operation.finished? (not round.operation.retry?)))
    (condition-variable-broadcast! round.cv)
    (condition-variable-broadcast! self.renewal-cv)
    (stream-wake-signal! self.parent.wake)))

(def (connection-renewal-live? (self  : NetworkConnection)
                               (round : RenewalRound))
  => :boolean
  (connection-parent-check-live! self.parent)
  (unless round.retired?
    (let (expire (connection-renewal-expire self round.scope #t))
      ;; Looking up stream life can wait for directional locks. Observe the cutoff
      ;; afterward; ordinary stream retirement is a handled transition, not bad wire.
      (connection-parent-check-live! self.parent)
      (when (or (>= (current-time-seconds) round.deadline) (>= (current-time-seconds) expire))
        (connection-renewal-fail! self round
                                  (Timeout "Renewal operation expired" where: 'connection-renewal-live?) reason-timeout))))
  (connection-parent-check-live! self.parent)
  (not round.retired?))

;; Worker checks may throw to unwind preparation. Reader installation uses the
;; boolean observer, never a blanket catch that hides genuine protocol errors.
(def (connection-renewal-check! (self  : NetworkConnection)
                                (round : RenewalRound))
  => :void
  (unless (connection-renewal-live? self round)
    (if round.failed?
      (raise round.error)
      (raise-io-closed connection-renewal-check! "Renewal round has completed"))))

;; No callbacks or crypto under publication locks. The receiving stream lock gate
;; must recheck the parent lease after waiting; it cannot resurrect expired state.
(def (connection-renewal-install! (self  : NetworkConnection)
                                  (round : RenewalRound))
  => :boolean
  (and (connection-renewal-live? self round)
       (let (now (current-time-seconds))
         (unless (and (> round.expire round.old-expire) (>= round.expire round.target)
                      (> round.expire now) (>= round.expire round.headroom))
           (raise-io-error connection-renewal-install! "Invalid renewal installation lifetime"))
         (if (zero? round.scope.id)
           (begin
             (set! self.parent.expire round.expire)
             (set! round.installed? #t)
             (for-each
               (lambda ((entry :- ConnectionOpening))
                 (when entry.renewal (set! entry.renewal.desired round.expire))
                 (condition-variable-broadcast! entry.cv))
               self.openings)
             #t)
           (let (entry (connection-renewal-entry self round.scope))
             (and entry
                  (using (entry :- ConnectionOpening)
                    (and entry.io (not entry.cancelled?)
                         (with-stream-io-lock entry.io.input-mx
                           (with-stream-io-lock entry.io.output-mx
                             (connection-parent-check-live! self.parent)
                             (and (not round.retired?) (< (current-time-seconds) round.deadline)
                                  (stream-io-install-lease-locked! entry.io round.expire round.committed?)
                                  (begin (set! round.installed? #t) #t))))))))))))

(def (connection-renewal-complete! (self  : NetworkConnection)
                                   (round : RenewalRound))
  => :void
  (set! round.retired? #t)
  (set! round.phase 'complete)
  (when (eq? round.scope.active round) (set! round.scope.active #f))
  (when round.operation (set! round.operation.finished? #t))
  (condition-variable-broadcast! round.cv)
  (condition-variable-broadcast! self.renewal-cv)
  (stream-wake-signal! self.parent.wake))

(def (connection-renewal-select! (work : ConnectionWork))
  => :boolean
  (using ((self (connection-work-network work) :- NetworkConnection)
          (round work.renewal :- RenewalRound))
    (cond
     ((renewal-abort? work.type) #t)
     (round.retired? #f)
     (else
      (and (connection-renewal-live? self round)
           (begin
             (case (ConnectionWork-type work)
               ((#x22 #x30) (set! round.phase 'offered) (set! round.visible? #t))
               ((#x23 #x31) (set! round.phase 'auth-sent))
               ((#x24 #x32) (set! round.phase 'commit-sent) (set! round.committed? #t))
               ((#x25 #x33) (set! round.phase 'ack-sent)))
             #t))))))

(def (connection-renewal-released! (work : ConnectionWork))
  => :void
  (using (round work.renewal :- RenewalRound)
    (when (and (not round.retired?) (or (fx= work.type frame-renew-ack) (fx= work.type frame-stream-renew-ack)))
      (let (self (connection-work-network work))
        (when (connection-renewal-live? self round)
          (connection-renewal-complete! self round))))))

;; Fixed operation choice ordering stays local; the peer only sees opaque grants.
(def (connection-renewal-operation (self      :  NetworkConnection)
                                   (scope     :  RenewalScope)
                                   (target    :  :integer)
                                   (deadline  :  :integer)
                                   (adaptive? :  :boolean)
                                   (request   :? RenewalRequest := #f))
  => RenewalOperation
  (using (operation (RenewalOperation target: target deadline: deadline adaptive?: adaptive? request: request
                                      provide?: (or adaptive? (not (and request request.auth)))) :- RenewalOperation)
    (when request (renewal-add-parent! operation request.auth))
    (renewal-add-parent! operation scope.seed)
    (for-each (lambda ((q :- RenewalRequest)) (renewal-add-parent! operation q.auth)) scope.requests)
    operation))

(def (connection-renewal-slot? (self  : NetworkConnection)
                               (scope : RenewalScope))
  => :boolean
  (and (null? scope.owned)
       (using (scheduler self.parent.scheduler :- ConnectionScheduler)
         (let* ((protected? (zero? scope.id))
                (used (if protected? scheduler.renewal-frames (fx- scheduler.control-frames scheduler.renewal-frames)))
                (limit (if protected? 4 (fx- scheduler.limits.pending-control-frames (if scheduler.protected? 4 0))))
                (minimum (if scope.coordinator? (if protected? 29 28) (if protected? 16 12)))
                (allowance (if (and (not scope.coordinator?) (not protected?)) minimum scheduler.control-limit)))
           (and (< used limit) (>= scheduler.control-limit minimum)
                ;; No token has been serialized yet. Admit a full per-frame
                ;; allowance, not a tiny currently free prefix that would turn
                ;; transient contention into a failed automatic credential round.
                (>= (connection-control-available scheduler protected?) (+ frame-header-size allowance)))))
       (or (zero? scope.id)
           (< (foldl
                (lambda ((entry :- ConnectionOpening)
                         n)
                  (if (and entry.renewal (eq? entry.renewal.coordinator? scope.coordinator?))
                    (+ n (length entry.renewal.owned)) n)) 0 self.openings)
              self.parent.scheduler.limits.renewing-streams))))

;; Caller has already observed/allocated the correlation ID and owns a worker slot.
(def (connection-renewal-start! (self  : NetworkConnection)
                                (round : RenewalRound))
  => :void
  ;; Stage capacity is part of admission, before consuming the automatic attempt
  ;; or starting credential work. A stalled ordinary encoder leaves wanted work
  ;; pending rather than turning temporary pressure into a terminal attempt.
  (try
    (unless (and (not round.coordinator?) (> round.scope.id 0))
      (let* ((scheduler self.parent.scheduler)
             (protected? (zero? round.scope.id))
             (type (if round.coordinator?
                     (if protected? frame-renew-offer frame-stream-renew-offer) frame-renew-auth))
             (allowance (min (ConnectionScheduler-control-limit scheduler)
                             (- (connection-control-available scheduler protected?) frame-header-size)))
             (work (connection-control-reserve! scheduler type round.scope.id allowance #f #f protected?)))
        (unless work
          (raise-io-error connection-renewal-start! "Renewal staging admission failed"))
        (using (work :- ConnectionWork) (set! work.renewal round))
        (set! round.staging-work work)
        (set! round.controls (cons work round.controls))))
    (set! round.scope.active round)
    (set! round.scope.owned (cons round round.scope.owned))
    (set! round.worker (spawn-network-thread 'connection-renewal-round (cut connection-renewal-thread self round)))
    (catch (failure)
      (when round.staging-work (connection-control-cancel! round.staging-work))
      (set! round.worker-done? #t)
      (connection-renewal-fail! self round failure reason-internal))))

;; One bounded input descriptor may wait for local ACK release. Deferred OFFERs
;; retain their original deadline and correlation, never a preparation worker.
(def (connection-renewal-new-offer! (self   : NetworkConnection)
                                    (scope  : RenewalScope)
                                    (id     : :integer)
                                    (fields : :vector))
  => :void
  (let* ((now (current-time-seconds))
         (target (##vector-ref fields 1))
         (deadline (min (##vector-ref fields 2) (operation-deadline now self.config.renewal-timeout)))
         (adaptive? (and (zero? scope.id) (fx= (##vector-ref fields 4) lease-mode-adaptive)))
         (old (connection-renewal-expire self scope)))
    (unless (> target 0)
      (raise-io-error connection-renewal-new-offer! "Zero renewal target"))
    (using (round (RenewalRound scope: scope id: id target: target deadline: deadline
                                headroom: (auth-headroom now self.config.renewal-timeout)
                                old-expire: old adaptive?: adaptive? coordinator?: #f
                                visible?: #t peer-fields: fields) :- RenewalRound)
      (cond
       (scope.deferred
        (raise-io-error connection-renewal-new-offer! "Overlapping deferred renewal offers"))
       ((or (>= now deadline) (>= now old))
        (connection-renewal-fail! self round (Timeout "Expired renewal offer" where: 'connection-renewal-new-offer!)
                                  reason-timeout))
       ((or (< old round.headroom) (< self.parent.expire round.headroom))
        (connection-renewal-fail! self round (Closed "Insufficient renewal headroom" where: 'connection-renewal-new-offer!)
                                  reason-headroom))
       ((and scope.active (eq? scope.active.phase 'ack-sent))
        (set! round.phase 'deferred)
        (set! scope.deferred round))
       (scope.active
        (raise-io-error connection-renewal-new-offer! "Overlapping renewal offers"))
       ((or (not (connection-protect-renewal-locked! self)) (not (connection-renewal-slot? self scope)))
        (connection-renewal-fail! self round (Closed "Renewal capacity unavailable" where: 'connection-renewal-new-offer!)
                                  reason-limit))
       (else
        (set! round.operation
          (connection-renewal-operation self scope target deadline adaptive? scope.wire-request))
        (set! scope.operation round.operation)
        (connection-renewal-start! self round))))))

;; Renewal dispatch runs before OPEN-ID dispatch. Extract only correlation before
;; deciding whether payload fields are live; retired token bundles are not decoded.
(def (connection-renewal-dispatch! (self    : NetworkConnection)
                                   (header  : FrameHeader)
                                   (payload : :u8vector))
  => :void
  (using (p self.parent :- ConnectionParent)
    (let* ((type header.type) (stream-id header.stream-id)
           (id (&u8vector-uint-ref/be payload 0 8))
           (entry (and (> stream-id 0)
                       (find (lambda ((entry :- ConnectionOpening)) (= entry.id stream-id)) self.openings))))
      (unless (> id 0)
        (raise-io-error connection-renewal-dispatch! "Zero renewal correlation ID"))
      (cond
       ((and (> stream-id 0) (not entry))
        (when (> stream-id (if (eq? (odd? stream-id) p.initiator?) p.local-open-id p.peer-open-id))
          (raise-io-error connection-renewal-dispatch! "Renewal for unopened stream" stream-id)))
       ((and entry
             (using (entry :- ConnectionOpening)
               (or entry.cancelled?
                   (and entry.done? (not (and entry.renewal entry.renewal.active)))
                   (and entry.io
                        (let-values (((aborted? active) (stream-io-status entry.io)))
                          (or aborted?
                              (and (not active)
                                   (not (and entry.renewal entry.renewal.active)))))))))
        (void))
       (else
        (let (scope
              (if entry
                (using (entry :- ConnectionOpening)
                  (unless (and entry.linked? entry.renewal entry.registered?)
                    (raise-io-error connection-renewal-dispatch! "Renewal for fixed or pending stream" stream-id))
                  entry.renewal)
                self.renewal))
          (using (scope :- RenewalScope)
            (when scope.active (connection-renewal-live? self scope.active))
            (when (and scope.deferred (not (connection-renewal-live? self scope.deferred)))
              (set! scope.deferred #f))
            (connection-parent-check-live! p)
            (cond
             ((fx= type frame-renew-request)
              (unless scope.coordinator?
                (raise-io-error connection-renewal-dispatch! "Coordinator sent a renewal REQUEST"))
              (when (and scope.remote-request (= id scope.remote-request.id)
                         (eq? scope.remote-request.state 'pending)
                         (< (current-time-seconds) scope.remote-request.deadline))
                (raise-io-error connection-renewal-dispatch! "Duplicate live renewal REQUEST"))
              (when (> id scope.request-id)
                (let* ((fields (decode-frame-payload type payload limits: p.scheduler.limits))
                       (target (##vector-ref fields 1)) (deadline (##vector-ref fields 2)))
                  (unless (> target 0)
                    (raise-io-error connection-renewal-dispatch! "Zero request target"))
                  (when (and scope.remote-request (< (current-time-seconds) scope.remote-request.deadline)
                             (eq? scope.remote-request.state 'pending))
                    (raise-io-error connection-renewal-dispatch! "Overlapping renewal requests"))
                  (when (and scope.remote-request scope.remote-request.control)
                    (connection-control-cancel! scope.remote-request.control))
                  (set! scope.request-id id)
                  (set! scope.request-order (+ scope.request-order 1))
                  (set! scope.remote-request
                    (RenewalRequest target: target deadline: deadline id: id scope: scope
                                    order: scope.request-order
                                    adaptive?: (fx= (##vector-ref fields 3) lease-mode-adaptive)))
                  (unless (connection-protect-renewal-locked! self)
                    (connection-renewal-result! self scope.remote-request reason-limit)))))
             ((fx= type frame-renew-result)
              (when scope.coordinator?
                (raise-io-error connection-renewal-dispatch! "Responder sent renewal RESULT"))
              (when (> id scope.request-id)
                (raise-io-error connection-renewal-dispatch! "RESULT for future request" id))
              (when (and scope.wire-request (= id scope.wire-request.id))
                (when (and (memq scope.wire-request.state '(pending sent))
                           (>= (current-time-seconds) scope.wire-request.deadline))
                  (set! scope.wire-request.state 'failed)
                  (set! scope.wire-request.error
                    (Timeout "Renewal request expired" where: 'connection-renewal-dispatch!)))
                (when (memq scope.wire-request.state '(pending sent))
                  (let (status (##vector-ref (decode-frame-payload type payload limits: p.scheduler.limits) 1))
                    (unless (eq? scope.wire-request.state 'sent)
                      (raise-io-error connection-renewal-dispatch! "RESULT before REQUEST commitment"))
                    (when (and (fxzero? status) (< p.expire scope.wire-request.target))
                      (raise-io-error connection-renewal-dispatch! "RESULT without installed coverage"))
                    (set! scope.wire-request.result status)
                    (set! scope.wire-request.state (if (fxzero? status) 'succeeded 'failed))
                    (unless (fxzero? status)
                      (set! scope.wire-request.error
                        (Closed "Peer declined renewal request" where: 'connection-renewal-dispatch! irritants: [status])))))))
             ((renewal-offer? type)
              (when scope.coordinator?
                (raise-io-error connection-renewal-dispatch! "Renewal OFFER from wrong role"))
              (when (or (and scope.active (= id scope.active.id))
                        (and scope.deferred (= id scope.deferred.id)))
                (raise-io-error connection-renewal-dispatch! "Duplicate live renewal OFFER"))
              (when (> id scope.last-id)
                (set! scope.last-id id)
                (connection-renewal-new-offer! self scope id
                                               (decode-frame-payload type payload limits: p.scheduler.limits))))
             ((and scope.deferred (= id scope.deferred.id))
              (if (renewal-abort? type)
                (let ((deferred scope.deferred)
                      (fields (decode-frame-payload type payload limits: p.scheduler.limits)))
                  (set! scope.deferred #f)
                  (connection-renewal-fail! self deferred
                                            (Closed "Deferred renewal abandoned" where: 'connection-renewal-dispatch!)
                                            (##vector-ref fields 1) #f))
                (raise-io-error connection-renewal-dispatch! "Message before deferred OFFER admission" type)))
             ((and scope.active (= id scope.active.id))
              (using (round scope.active :- RenewalRound)
                (let (fields (decode-frame-payload type payload limits: p.scheduler.limits))
                  (cond
                   ((renewal-abort? type)
                    (set! round.peer-failure? #t)
                    (connection-renewal-fail! self round
                                              (Closed "Peer aborted renewal" where: 'connection-renewal-dispatch!
                                                      irritants: [(##vector-ref fields 1)])
                                              (##vector-ref fields 1) #f))
                   ((or (fx= type frame-renew-auth) (fx= type frame-stream-renew-auth))
                    (unless (and round.coordinator? (eq? round.phase 'offered))
                      (raise-io-error connection-renewal-dispatch! "Unexpected renewal AUTH"))
                    (let (index (##vector-ref fields 1))
                      (unless (< index (vector-length round.tokens))
                        (raise-io-error connection-renewal-dispatch! "Invalid selected renewal index" index))
                      (set! round.selected (##vector-ref round.tokens index)))
                    (set! round.peer-fields fields)
                    (set! round.phase 'auth-received)
                    (condition-variable-broadcast! round.cv))
                   ((or (fx= type frame-renew-commit) (fx= type frame-stream-renew-commit))
                    (unless (and (not round.coordinator?) (eq? round.phase 'auth-sent))
                      (raise-io-error connection-renewal-dispatch! "Unexpected renewal COMMIT"))
                    (when (zero? scope.id)
                      (let (index (##vector-ref fields 1))
                        (unless (< index (vector-length round.tokens))
                          (raise-io-error connection-renewal-dispatch! "Invalid selected renewal index" index))
                        (set! round.selected (##vector-ref round.tokens index))
                        (set! round.expire (min round.selected.expire round.peer-token.expire))))
                    ;; Reserve and order ACK before exposing the installed lease
                    ;; to service-generated linked-stream OFFERs.
                    (set! round.committed? #t)
                    (connection-renewal-send! self round #f
                                              (if (zero? scope.id) frame-renew-ack frame-stream-renew-ack)
                                              scope.id [round.id])
                    (if (connection-renewal-install! self round)
                      (set! round.phase 'ack-ready)
                      (connection-renewal-fail! self round
                                                (Closed "Stream expired before renewal installation" where: 'connection-renewal-dispatch!)
                                                reason-lifetime)))
                   ((or (fx= type frame-renew-ack) (fx= type frame-stream-renew-ack))
                    (unless (and round.coordinator? (eq? round.phase 'commit-sent))
                      (raise-io-error connection-renewal-dispatch! "Unexpected renewal ACK"))
                    (if (connection-renewal-install! self round)
                      (connection-renewal-complete! self round)
                      (connection-renewal-fail! self round
                                                (Closed "Stream expired before renewal installation" where: 'connection-renewal-dispatch!)
                                                reason-lifetime)))
                   (else
                    (raise-io-error connection-renewal-dispatch! "Unexpected renewal frame" type))))))
             ((> id scope.last-id)
              (raise-io-error connection-renewal-dispatch! "Response for future renewal round" id)))))))
      (condition-variable-broadcast! self.renewal-cv)
      (stream-wake-signal! p.wake))))

;; Preparation is the only credential/encoding worker for its charged scope. It
;; never holds parent/stream locks while invoking capability context operations.
(def (connection-renewal-encode! (self   : NetworkConnection)
                                 (round  : RenewalRound)
                                 (type   : :fixnum)
                                 (prefix : :list)
                                 (suffix : :list))
  => :void
  (using (p self.parent :- ConnectionParent)
    (let (tokens
          (let next-choice ()
            (let (tokens
                  (if round.adaptive?
                    (make-adaptive-auth-tokens self.candidate.context self.candidate.host self.candidate.peer
                                               (if (zero? round.scope.id) proto:/network/connect
                                                   (ConnectionOpening-protocol (connection-renewal-entry self round.scope)))
                                               round.target round.headroom (current-time-seconds)
                                               (if (zero? round.scope.id) self.config.connection-ttl self.config.stream-ttl)
                                               seed: (or round.parent round.scope.seed))
                    (make-auth-tokens self.candidate.context self.candidate.host self.candidate.peer
                                      proto:/network/connect round.target round.headroom (current-time-seconds) round.parent)))
              (if (pair? tokens) tokens
                  (let-values (((available? parent)
                                (with-stream-io-lock p.mx
                                  (connection-renewal-check! self round)
                                  (renewal-next-parent! round.operation round.target round.headroom (current-time-seconds)))))
                    (if available?
                      (begin (set! round.parent parent) (next-choice))
                      (begin
                        (with-stream-io-lock p.mx
                          (connection-renewal-fail! self round
                                                    (Closed "No eligible renewal credentials" where: 'connection-renewal-encode!)
                                                    reason-no-credentials))
                        (raise round.error))))))))
      (let* ((base (frame-payload-size type (append prefix [[]] suffix) p.scheduler.limits))
             (protected? (zero? round.scope.id))
             (work
              (with-stream-io-lock p.mx
                (connection-renewal-check! self round)
                (unless round.staging-work
                  (raise-context-error connection-renewal-encode! "Missing admitted encoding ownership"))
                round.staging-work)))
        (using (work :- ConnectionWork)
          (unless (and (eq? work.state 'staging) (fx= work.type type) (fx>= work.size base))
            (raise-context-error connection-renewal-encode! "Invalid admitted encoding ownership"))
          (try
            (let* ((blobs (encode-auth-bundle tokens (fx- work.size (fx- base 4))))
                   (fields (append prefix [blobs] suffix))
                   (size (frame-payload-size type fields p.scheduler.limits)))
              (with-stream-io-lock p.mx
                (connection-renewal-check! self round)
                (set! round.tokens (list->vector tokens))
                (let (unused (fx- work.size size))
                  (set! p.scheduler.control-bytes (fx- p.scheduler.control-bytes unused))
                  (when protected? (set! p.scheduler.renewal-bytes (fx- p.scheduler.renewal-bytes unused))))
                (set! work.size size)
                (connection-control-fill! work fields)
                (set! round.phase (if (renewal-offer? type) 'offer-ready 'auth-ready))
                (stream-wake-signal! p.wake)))
            (finally
              (with-stream-io-lock p.mx
                (when (eq? work.state 'staging) (connection-control-cancel! work))
                (stream-wake-signal! p.wake)))))))))

(def (connection-renewal-await! (self  : NetworkConnection)
                                (round : RenewalRound)
                                (phase : :symbol))
  => :void
  (with-stream-io-lock self.parent.mx
    (let loop ()
      (cond
       ((and (eq? phase 'complete) round.retired?)
        (when round.failed?
          (raise round.error)))
       (else
        (connection-renewal-check! self round)
        (unless (eq? round.phase phase)
          (mutex-unlock! self.parent.mx round.cv
                         (seconds->time (min round.deadline self.parent.expire
                                             (connection-renewal-expire self round.scope #t))))
          (mutex-lock! self.parent.mx)
          (loop)))))))

(def (connection-renewal-thread (self  : NetworkConnection)
                                (round : RenewalRound))
  => :void
  (try
    (with-stream-io-lock self.parent.mx (connection-renewal-check! self round))
    (if round.coordinator?
      (begin
        (connection-renewal-encode! self round
                                    (if (zero? round.scope.id) frame-renew-offer frame-stream-renew-offer)
                                    [round.id round.target round.deadline]
                                    (if (zero? round.scope.id) [(if round.adaptive? lease-mode-adaptive lease-mode-fixed)] []))
        (connection-renewal-await! self round 'auth-received)
        (if (zero? round.scope.id)
          (using (selection
                  (select-auth-candidate self.candidate.context
                                         (decode-auth-bundle (##vector-ref round.peer-fields 2))
                                         self.candidate.peer self.candidate.host proto:/network/connect
                                         round.target round.headroom (current-time-seconds)) :- AuthSelection)
            (with-stream-io-lock self.parent.mx
              (connection-renewal-check! self round)
              (if selection.candidate
                (begin
                  (set! round.peer-token selection.candidate.token)
                  (set! round.selected-index selection.candidate.index)
                  (set! round.expire (min round.selected.expire round.peer-token.expire)))
                (connection-renewal-fail! self round
                                          (Closed "Peer renewal authorization refused" where: 'connection-renewal-thread)
                                          selection.reason))))
          (with-stream-io-lock self.parent.mx
            (connection-renewal-check! self round)
            (set! round.expire round.selected.expire)))
        (with-stream-io-lock self.parent.mx
          (connection-renewal-check! self round)
          (unless (and (>= round.expire round.target) (>= round.expire round.headroom)
                       (> round.expire round.old-expire) (> round.expire (current-time-seconds)))
            (connection-renewal-fail! self round
                                      (Closed "Selected renewal credential no longer covers target" where: 'connection-renewal-thread)
                                      reason-lifetime))
          (connection-renewal-check! self round)
          (connection-renewal-send! self round #f
                                    (if (zero? round.scope.id) frame-renew-commit frame-stream-renew-commit)
                                    round.scope.id
                                    (if (zero? round.scope.id) [round.id round.selected-index] [round.id]))
          (set! round.phase 'commit-ready)))
      (using (selection
              (select-auth-candidate self.candidate.context
                                     (decode-auth-bundle (##vector-ref round.peer-fields 3))
                                     self.candidate.peer self.candidate.host
                                     (if (zero? round.scope.id) proto:/network/connect
                                         (ConnectionOpening-protocol (connection-renewal-entry self round.scope)))
                                     round.target round.headroom (current-time-seconds)) :- AuthSelection)
        (with-stream-io-lock self.parent.mx
          (connection-renewal-check! self round)
          (if selection.candidate
            (begin
              (set! round.peer-token selection.candidate.token)
              (set! round.selected-index selection.candidate.index)
              (set! round.expire selection.candidate.token.expire))
            (connection-renewal-fail! self round
                                      (Closed "Renewal authorization refused" where: 'connection-renewal-thread)
                                      selection.reason)))
        (if (zero? round.scope.id)
          (begin
            (with-stream-io-lock self.parent.mx
              (connection-renewal-check! self round)
              (let-values (((available? parent)
                            (renewal-next-parent! round.operation round.target round.headroom (current-time-seconds))))
                (unless available?
                  (raise-io-closed connection-renewal-thread "No renewal credential choices"))
                (set! round.parent parent)))
            (connection-renewal-encode! self round frame-renew-auth [round.id round.selected-index] []))
          (with-stream-io-lock self.parent.mx
            (connection-renewal-check! self round)
            (connection-renewal-send! self round #f frame-stream-renew-auth round.scope.id
                                      [round.id round.selected-index])
            (set! round.phase 'auth-ready)))))
    (connection-renewal-await! self round 'complete)
    (catch (failure)
      (if (with-stream-io-lock self.parent.mx (or self.parent.closed? self.parent.scheduler.closed?))
        (connection-parent-close! self.parent failure)
        (try
          (with-stream-io-lock self.parent.mx
            (connection-renewal-fail! self round failure reason-internal))
          (catch (fatal) (connection-parent-close! self.parent fatal) (raise fatal)))))
    (finally
      (with-stream-io-lock self.parent.mx
        (when (and round.staging-work (eq? (ConnectionWork-state round.staging-work) 'staging))
          (connection-control-cancel! round.staging-work))
        (set! round.worker-done? #t)
        (condition-variable-broadcast! self.renewal-cv)
        (stream-wake-signal! self.parent.wake)))))

;; Select the next round only after old preparation/output ownership has retired.
;; It inherits the operation's immutable target and budget, not a new caller clock.
(def (connection-renewal-launch! (self      : NetworkConnection)
                                 (scope     : RenewalScope)
                                 (operation : RenewalOperation))
  => :void
  (let* ((now (current-time-seconds))
         (old (connection-renewal-expire self scope))
         (headroom (auth-headroom now self.config.renewal-timeout)))
    (cond
     ((or (>= now operation.deadline) (< old headroom) (< self.parent.expire headroom))
      (set! operation.finished? #t)
      (set! operation.reason (if (>= now operation.deadline) reason-timeout reason-headroom))
      (set! operation.error (Closed "Renewal no longer has operation headroom" where: 'connection-renewal-launch!)))
     ((or scope.exhausted? (= scope.last-id #xffffffffffffffff))
      (set! scope.exhausted? #t)
      (set! operation.finished? #t)
      (set! operation.retry? #f)
      (set! operation.reason reason-limit)
      (set! operation.error (Closed "Renewal IDs exhausted" where: 'connection-renewal-launch!)))
     ((connection-renewal-slot? self scope)
      (let-values (((available? parent) (renewal-next-parent! operation operation.target headroom now)))
        (cond
         ((not available?)
          (set! operation.finished? #t)
          (when (fxzero? operation.reason)
            (set! operation.reason reason-no-credentials)
            (set! operation.error (Closed "No remaining renewal credential choices" where: 'connection-renewal-launch!))))
         (else
          (let (id (+ scope.last-id 1))
            (set! scope.last-id id)
            (set! operation.retry? #f)
            (connection-renewal-start!
             self (RenewalRound scope: scope id: id target: operation.target deadline: operation.deadline
                                headroom: headroom old-expire: old adaptive?: operation.adaptive?
                                coordinator?: #t operation: operation parent: parent))))))))))

(def (connection-renewal-result! (self    : NetworkConnection)
                                 (request : RenewalRequest)
                                 (status  : :fixnum))
  => :void
  (when (>= (current-time-seconds) request.deadline)
    (set! status reason-timeout))
  (set! request.state (if (fxzero? status) 'succeeded 'failed))
  (set! request.result status)
  (connection-renewal-send! self #f request frame-renew-result 0 [request.id status]))

(def (connection-renewal-settle! (self  : NetworkConnection)
                                 (scope : RenewalScope))
  => :void
  (def (pending? (request : RenewalRequest))
    => :boolean
    (when (and (eq? request.state 'pending) (>= (current-time-seconds) request.deadline))
      (set! request.state 'failed)
      (set! request.error (Timeout "Renewal caller timed out" where: 'connection-renewal-settle!)))
    (eq? request.state 'pending))
  (let (expire (connection-renewal-expire self scope))
    ;; Each pending interest owns its cutoff, even when a longer shared operation
    ;; has installed coverage. Already settled results survive later lock waits.
    (when (and scope.remote-request (eq? scope.remote-request.state 'pending)
               (>= (current-time-seconds) scope.remote-request.deadline))
      (connection-renewal-result! self scope.remote-request reason-timeout))
    (using ((operation scope.operation :? RenewalOperation)
            (wire scope.wire-request :? RenewalRequest))
      (when (and operation operation.finished?)
        (when scope.coordinator?
          (for-each
            (lambda ((request :- RenewalRequest))
              (when (pending? request)
                (cond
                 ((<= request.target expire) (set! request.state 'succeeded))
                 ((<= request.target operation.target)
                  (set! request.state 'failed)
                  (set! request.error operation.error)))))
            scope.requests)
          (when (and scope.remote-request (eq? scope.remote-request.state 'pending))
            (cond
             ((<= scope.remote-request.target expire)
              (connection-renewal-result! self scope.remote-request reason-ok))
             ((<= scope.remote-request.target operation.target)
              (connection-renewal-result! self scope.remote-request operation.reason)))))
        (set! scope.operation #f))
      (when wire
        (when (and (memq wire.state '(pending sent)) (>= (current-time-seconds) wire.deadline))
          (set! wire.state 'failed)
          (set! wire.error (Timeout "Renewal request expired" where: 'connection-renewal-settle!))
          (when wire.control (connection-control-cancel! wire.control)))
        (when (memq wire.state '(succeeded failed))
          (for-each
            (lambda ((request :- RenewalRequest))
              (when (and (pending? request)
                         (or (<= request.target wire.target)
                             (and (eq? wire.state 'succeeded) (<= request.target expire))))
                (set! request.state wire.state)
                (set! request.error wire.error)))
            scope.requests)
          (when (or (not wire.control) (eq? (ConnectionWork-state wire.control) 'released))
            (set! scope.wire-request #f))))
      ;; Terminal wire results may still own output. Reconsider namespace limits
      ;; after settlement without waiting for that borrow or retired worker slots.
      (let (wire-pending? (and scope.wire-request (memq scope.wire-request.state '(pending sent))))
        (when (and (not scope.active) (not scope.deferred) (not wire-pending?)
                   (if scope.coordinator?
                     (= scope.last-id #xffffffffffffffff)
                     (and (zero? scope.id) (= scope.request-id #xffffffffffffffff))))
          (set! scope.exhausted? #t)
          (when scope.operation
            (set! scope.operation.finished? #t)
            (set! scope.operation.retry? #f)
            (set! scope.operation.reason reason-limit)
            (set! scope.operation.error (Closed "Renewal namespace exhausted" where: 'connection-renewal-settle!))
            (set! scope.operation #f)))
        (let (exhausted? (and scope.exhausted? (not scope.active) (not scope.deferred)
                              (not scope.operation) (not wire-pending?)))
          (for-each
            (lambda ((request :- RenewalRequest))
              (when (pending? request)
                (cond
                 ((and (<= request.target expire) (or scope.coordinator? (not wire-pending?)))
                  (set! request.state 'succeeded))
                 (exhausted?
                  (set! request.state 'failed)
                  (set! request.error (Closed "Renewal namespace exhausted" where: 'connection-renewal-settle!))))))
            scope.requests)
          (when (and scope.remote-request (eq? scope.remote-request.state 'pending))
            (cond
             ((<= scope.remote-request.target expire)
              (connection-renewal-result! self scope.remote-request reason-ok))
             (exhausted?
              (connection-renewal-result! self scope.remote-request reason-limit))))))
      (condition-variable-broadcast! self.renewal-cv))))

;; A positive inter-generation spacing prevents immediate successful-renewal loops
;; on short configured root windows. Capacity waiting does not consume an attempt.
(def (connection-renewal-auto-due (self   : NetworkConnection)
                                  (scope  : RenewalScope)
                                  (expire : :integer))
  => :integer
  (let* ((timeout self.config.renewal-timeout)
         (linked (foldl (lambda ((entry :- ConnectionOpening)
                                 n)
                          (if (and entry.linked? (not entry.done?) (not entry.cancelled?)) (fx1+ n) n)) 0 self.openings))
         (limit self.parent.scheduler.limits.renewing-streams)
         (waves (quotient (+ linked limit -1) limit))
         (trigger (if (zero? scope.id) (max 0 (- expire (+ (* (+ 2 waves) timeout) 1))) 0)))
    (if (= scope.trigger-expire expire)
      (set! scope.trigger (min scope.trigger trigger))
      (begin (set! scope.trigger-expire expire) (set! scope.trigger trigger)))
    (max scope.trigger (+ scope.last-auto-start timeout))))

(def (connection-renewal-request-wire! (self    : NetworkConnection)
                                       (scope   : RenewalScope)
                                       (request : RenewalRequest))
  => :void
  (if (= scope.request-id #xffffffffffffffff)
    (begin
      (set! scope.exhausted? #t)
      (set! request.state 'failed)
      (set! request.error (Closed "Renewal request IDs exhausted" where: 'connection-renewal-request-wire!)))
    (let (id (+ scope.request-id 1))
      (set! scope.request-id id)
      (using (wire (RenewalRequest target: request.target deadline: request.deadline
                                   adaptive?: request.adaptive? auth: request.auth scope: scope id: id) :- RenewalRequest)
        (set! scope.wire-request wire)
        (connection-renewal-send! self #f wire frame-renew-request 0
                                  [id wire.target wire.deadline
                                      (if wire.adaptive? lease-mode-adaptive lease-mode-fixed)] #f)))))

;; No IO/crypto/callbacks. The single parent service owns timing and only starts
;; bounded workers. Deferred input has its own original deadline/correlation.
(def (connection-renewal-service! (self     :  NetworkConnection)
                                  (deadline :? :time))
  => (Maybe :time)
  (let ((next deadline) (now (current-time-seconds)))
    (def (wake-at (seconds : :integer))
      (when (and (> seconds now) (or (not next) (< seconds (time->seconds next))))
        (set! next (seconds->time seconds))))
    (for-each
      (lambda ((scope :- RenewalScope))
        (let (expire (connection-renewal-expire self scope))
          (when scope.active
            (connection-renewal-live? self scope.active)
            (when scope.active (wake-at scope.active.deadline)))
          (when scope.deferred
            (cond
             ((or (>= now scope.deferred.deadline) (>= now expire))
              (using (round scope.deferred :- RenewalRound)
                (set! scope.deferred #f)
                (connection-renewal-fail! self round
                                          (Timeout "Deferred renewal expired" where: 'connection-renewal-service!) reason-timeout)))
             ((and (not scope.active) (null? scope.owned))
              (using (round scope.deferred :- RenewalRound)
                (set! scope.deferred #f)
                (if (connection-renewal-slot? self scope)
                  (begin
                    (set! round.headroom (auth-headroom now self.config.renewal-timeout))
                    (set! round.old-expire expire)
                    (set! round.operation (connection-renewal-operation self scope round.target round.deadline
                                                                        round.adaptive? scope.wire-request))
                    (set! scope.operation round.operation)
                    (if (and (>= expire round.headroom) (>= self.parent.expire round.headroom))
                      (connection-renewal-start! self round)
                      (connection-renewal-fail! self round
                                                (Closed "Deferred renewal lacks headroom" where: 'connection-renewal-service!) reason-headroom)))
                  (connection-renewal-fail! self round
                                            (Closed "Deferred renewal lacks capacity" where: 'connection-renewal-service!) reason-limit))))
             (else (wake-at scope.deferred.deadline))))
          (connection-renewal-settle! self scope)
          (for-each (lambda ((request :- RenewalRequest))
                      (when (eq? request.state 'pending) (wake-at request.deadline))) scope.requests)
          (when (and scope.remote-request (eq? scope.remote-request.state 'pending))
            (wake-at scope.remote-request.deadline))
          (when scope.wire-request (wake-at scope.wire-request.deadline))
          (when (and (> expire now) (not scope.exhausted?) (not scope.active) (not scope.deferred))
            (cond
             (scope.operation
              (wake-at scope.operation.deadline)
              (when scope.coordinator? (connection-renewal-launch! self scope scope.operation)))
             (else
              (using (request
                      (let ((local (find (lambda ((q :- RenewalRequest)) (eq? q.state 'pending)) (reverse scope.requests)))
                            (remote (and scope.remote-request (eq? scope.remote-request.state 'pending) scope.remote-request)))
                        (cond ((not local) remote) ((not remote) local)
                              ((< (RenewalRequest-order local) (RenewalRequest-order remote)) local)
                              (else remote)))
                      :? RenewalRequest)
                (cond
                 ((and request (or scope.coordinator? (not scope.wire-request)))
                  (when (connection-renewal-slot? self scope)
                    (if scope.coordinator?
                      (begin
                        (set! scope.operation
                          (connection-renewal-operation self scope (max request.target (+ expire 1))
                                                        (min request.deadline (operation-deadline now self.config.renewal-timeout))
                                                        request.adaptive? request))
                        (connection-renewal-launch! self scope scope.operation))
                      (connection-renewal-request-wire! self scope request))))
                 ((and scope.automatic? (or (zero? scope.id) scope.coordinator?)
                       (or (not (= scope.attempted expire))
                           (and (> scope.id 0) (not (= scope.attempted-target scope.desired))))
                       (or (zero? scope.id) (> scope.desired expire)))
                  (let (due (connection-renewal-auto-due self scope expire))
                    (if (> due now)
                      (wake-at due)
                      (cond
                       ((= expire #xffffffffffffffff) (set! scope.exhausted? #t))
                       ((or (< expire (auth-headroom now self.config.renewal-timeout))
                            (< self.parent.expire (auth-headroom now self.config.renewal-timeout)))
                        (set! scope.attempted expire)
                        (set! scope.attempted-target scope.desired))
                       ((and (not scope.wire-request) (connection-renewal-slot? self scope))
                        (set! scope.attempted expire)
                        (set! scope.attempted-target scope.desired)
                        (set! scope.last-auto-start now)
                        (using (request (RenewalRequest target: (if (zero? scope.id) (+ expire 1) scope.desired)
                                                        deadline: (operation-deadline now self.config.renewal-timeout)
                                                        adaptive?: #t auth: scope.seed scope: scope) :- RenewalRequest)
                          (if scope.coordinator?
                            (begin
                              (set! scope.operation (connection-renewal-operation self scope request.target request.deadline #t request))
                              (set! scope.operation.automatic? #t)
                              (connection-renewal-launch! self scope scope.operation))
                            (connection-renewal-request-wire! self scope request)))))))))))))
          (when scope.operation
            (wake-at scope.operation.deadline))
          ;; Request-ID exhaustion has no operation to trigger the usual end-of-
          ;; pass settlement. Wake every uncovered caller before service sleeps.
          (when (or scope.exhausted? (and scope.operation scope.operation.finished?))
            (connection-renewal-settle! self scope))))
      (connection-renewal-scopes self))
    next))

;; Join only workers that have finished all preparation, outside parent mx. Slots
;; and snapshots retire after both worker completion and all selected IO release.
;; Shutdown supplies joined? only after joining every owned worker itself.
(def (connection-renewal-reap! (self    : NetworkConnection)
                               (joined? : :boolean := #f))
  => :void
  (let (done (with-stream-io-lock self.parent.mx
               (foldl (lambda ((scope :- RenewalScope)
                               result)
                        (foldl (lambda ((round :- RenewalRound)
                                        result)
                                 (if round.worker-done? (cons round result) result)) result scope.owned))
                      [] (connection-renewal-scopes self))))
    (for-each
      (lambda ((round :- RenewalRound))
        (when (and (not joined?) round.worker (not (eq? round.worker (current-thread))))
          (network-thread-join! round.worker))
        (with-stream-io-lock self.parent.mx
          (when (and round.retired?
                     (renewal-controls-released? round
                                                 (lambda ((work :- ConnectionWork)) (eq? work.state 'released))))
            (set! round.scope.owned (remq1 round round.scope.owned))
            (set! round.tokens #())
            (set! round.peer-fields #())
            (set! round.parent #f)
            (stream-wake-signal! self.parent.wake))))
      done)))

(def (connection-renewal-close! (self    : NetworkConnection)
                                (failure : :t))
  => :void
  (for-each
    (lambda ((scope :- RenewalScope))
      (for-each (lambda ((request :- RenewalRequest))
                  (when (eq? request.state 'pending)
                    (set! request.state 'failed)
                    (set! request.error failure))) scope.requests)
      (when scope.wire-request
        (set! scope.wire-request.state 'failed)
        (set! scope.wire-request.error failure))
      (when scope.deferred
        (set! scope.deferred.retired? #t)
        (set! scope.deferred #f))
      (for-each
        (lambda ((round :- RenewalRound))
          (unless round.retired?
            (set! round.retired? #t)
            (set! round.failed? #t)
            (set! round.error failure)
            (set! round.phase 'failed))
          (condition-variable-broadcast! round.cv))
        scope.owned)
      (set! scope.active #f))
    (connection-renewal-scopes self))
  (condition-variable-broadcast! self.renewal-cv))
