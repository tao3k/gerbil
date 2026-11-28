;;; -*- Gerbil -*-
;;; © Gerbil Contributors
;;; Structured Actor Concurrency, SRFI-226 Actor Context Marks &
;;; Zero-Bridge-Thread Sharded Fiber <-> Actor Non-Blocking RPC Router

(import :std/error
        :std/control
        :std/time/time
        :std/time/precise
        :std/sync/atomic
        :std/sync/concurrent
        :std/sync/threads
        :std/sync/fiber
        :gerbil/runtime/thread
        ./message
        ./host
        ./interaction)
(export
  ActorNursery
  ActorNursery-tgroup
  actor-nursery?
  with-actor-nursery
  nursery-spawn-actor
  nursery-spawn-actor/name
  actor-nursery-cancel!
  actor-nursery-cancelled?

  ;; SRFI-226 Continuation-Mark Actor Context
  actor-context-key
  with-actor-context
  actor-context-ref
  current-actor-context

  ;; Zero-Bridge-Thread Work-Stealing Fiber <-> Gerbil Actor Non-Blocking RPC Bridge
  fiber-actor-call)

;;;----------------------------------------------------------------------------
;;; SRFI-226 Actor Context Marks (Zero-Allocation Structured Context Propagation)

(def actor-context-key (list 'gerbil-actor-context))

(def (current-actor-context)
  (continuation-mark-set-first (current-continuation-marks) actor-context-key #f))

(def (actor-context-ref key (default #f))
  (let ((ctx (current-actor-context)))
    (if (and ctx (pair? ctx))
      (let ((entry (assq key ctx)))
        (if entry (##cdr entry) default))
      default)))

(def (with-actor-context bindings (thunk : :procedure))
  (let* ((parent (current-actor-context))
         (merged (if (pair? parent)
                   (append bindings parent)
                   bindings)))
    (call-with-continuation-mark actor-context-key merged thunk)))

;;;----------------------------------------------------------------------------
;;; Structured Actor Nursery (Zero Orphaned Actors + Deterministic Cancellation)

(defstruct ActorNursery
  ((tgroup    :- :thread-group)
   (active    :- AtomicFxBox)
   (cancelled :- AtomicFxBox)
   (mx        :- :mutex)
   (cv        :- :condvar)
   first-err
   (has-err?  :- :boolean))
  final: #t)

(defalias actor-nursery? ActorNursery?)

(def (actor-nursery-cancelled? (n : ActorNursery))
  => :boolean
  (fx> (atomic-fxbox-ref n.cancelled (memory-order acquire)) 0))

(def (%actor-nursery-record-error! (n :- ActorNursery) exc)
  (atomic-fxbox-set! n.cancelled 1 (memory-order release))
  (mutex-lock! n.mx)
  (unless n.has-err?
    (set! n.has-err? #t)
    (set! n.first-err exc))
  (condition-variable-broadcast! n.cv)
  (mutex-unlock! n.mx))

(def (actor-nursery-cancel! (n : ActorNursery))
  => :void
  (atomic-fxbox-set! n.cancelled 1 (memory-order release))
  (mutex-lock! n.mx)
  (condition-variable-broadcast! n.cv)
  (mutex-unlock! n.mx)
  (void))

(def (%actor-nursery-child-done! (n :- ActorNursery))
  (let ((prev (atomic-fxbox-fetch-sub! n.active 1 (memory-order acquire-release))))
    (when (fx= prev 1)
      (mutex-lock! n.mx)
      (condition-variable-broadcast! n.cv)
      (mutex-unlock! n.mx))))

(def (nursery-spawn-actor/name (n : ActorNursery) name (f : :procedure) . args)
  => LocalActor
  (let ((inherited-ctx (current-actor-context)))
    (atomic-fxbox-fetch-add! n.active 1 (memory-order acquire-release))
    (let ((thr
           (spawn-actor
            (lambda ()
              (with-catch
               (lambda (e)
                 (%actor-nursery-record-error! n e)
                 (%actor-nursery-child-done! n))
               (lambda ()
                 (let ((run (lambda ()
                              (if (null? args) (f) (apply f args)))))
                   (if inherited-ctx
                     (call-with-continuation-mark actor-context-key inherited-ctx run)
                     (run)))
                 (%actor-nursery-child-done! n))))
            '()
            name
            n.tgroup)))
      (LocalActor thr))))

(def (nursery-spawn-actor (n : ActorNursery) (f : :procedure) . args)
  => LocalActor
  (:- (apply nursery-spawn-actor/name n 'nursery-actor f args) LocalActor))

(def (with-actor-nursery (proc : :procedure) name: (name : :t := 'actor-nursery))
  (let* ((tgroup (make-thread-group name (current-thread-group)))
         (n (ActorNursery tgroup
                          (make-atomic-fxbox 1)
                          (make-atomic-fxbox 0)
                          (make-mutex 'actor-nursery)
                          (make-condition-variable 'actor-nursery)
                          #f
                          #f))
         (parent-res #f))
    (with-catch
     (lambda (e) (%actor-nursery-record-error! n e))
     (lambda () (set! parent-res (proc n))))
    ;; Decrement parent scope count
    (atomic-fxbox-fetch-sub! (&ActorNursery-active n) 1 (memory-order acquire-release))
    ;; Wait until all children finish OR an error / explicit cancel triggers teardown
    (let wait-loop ()
      (mutex-lock! (&ActorNursery-mx n))
      (cond
       ((or (&ActorNursery-has-err? n)
            (fx> (atomic-fxbox-ref (&ActorNursery-cancelled n) (memory-order acquire)) 0))
        (mutex-unlock! (&ActorNursery-mx n))
        (thread-group-kill! tgroup))
       ((fx> (atomic-fxbox-ref (&ActorNursery-active n) (memory-order acquire)) 0)
        (mutex-unlock! (&ActorNursery-mx n) (&ActorNursery-cv n))
        (wait-loop))
       (else
        (mutex-unlock! (&ActorNursery-mx n)))))
    ;; Ensure zero orphaned threads remain in child thread-group
    (thread-group-kill! tgroup)
    (if (&ActorNursery-has-err? n)
      (raise (&ActorNursery-first-err n))
      parent-res)))

;;;----------------------------------------------------------------------------
;;; Zero-Bridge-Thread Sharded Fiber <-> Actor Non-Blocking RPC Router
;;;
;;; Inside `run-fibers`, calling `->>` directly would block the OS carrier
;;; thread waiting on `thread-mailbox-next`. Instead of spawning a bridge thread
;;; per call, local actor RPCs multiplex over 16 processor-indexed lazily-started
;;; shard reply-router actors backed by wait-free-read ConcurrentTable + exact
;;; timer wakeups (with 50ms hot-idle grace to eliminate redundant timer-wake
;;; messages on busy shards while keeping 0% idle CPU). Calling fibers park
;;; solely on a wait-free single-shot FiberPromise while carrier OS threads
;;; continue work-stealing other fibers at full SMP speed.

(def %FIBER-ROUTER-SHARDS 16)
(def %FIBER-ROUTER-MASK 15)
(def %fiber-router-epoch (##current-time-point))
(def %fiber-router-init-mx (make-mutex 'fiber-router-init))
(def %fiber-router-shards (make-vector %FIBER-ROUTER-SHARDS #f))

(defstruct %FiberRPCEntry
  ((seqno    :- :fixnum)
   (promise  :- FiberPromise)
   (protocol :- :string)
   (deadline :- :real)
   (dl-ms    :- :fixnum))
  final: #t)

(defstruct %FiberReplyShard
  ((actor        :- LocalActor)
   (pending      :- ConcurrentTable)
   (timers       :- LFQueue)
   (seqno        :- AtomicFxBox)
   (min-deadline :- AtomicFxBox))
  final: #t)

(def (%now-rel-ms (t : :real))
  => :fixnum
  (let ((ms (inexact->exact (floor (* (- t %fiber-router-epoch) 1000.0)))))
    (if (fx> ms 0) ms 1)))

(definline (%fiber-rpc-complete! (entry :- %FiberRPCEntry) tag payload)
  (fiber-promise-resolve! entry.promise (cons tag payload)))

(definline (%fiber-rpc-done? (entry :- %FiberRPCEntry))
  (fiber-promise-resolved? entry.promise))

(definline (%fiber-router-dispatch-msg! (pending :- ConcurrentTable) msg)
  (when (Envelope? msg)
    (let ((seqno (&Envelope-continue msg)))
      (when seqno
        (let ((entry (concurrent-table-ref pending seqno #f)))
          (when (and entry
                     (##string=? (&Envelope-protocol msg)
                                 (&%FiberRPCEntry-protocol entry)))
            (concurrent-table-delete! pending seqno)
            (%fiber-rpc-complete! entry 'ok (&Envelope-message msg))))))))

(def (%fiber-router-loop (shard :- %FiberReplyShard))
  (let ((pending shard.pending)
        (timers shard.timers)
        (min-dl shard.min-deadline))
    (let loop ((active-timers '()) (grace-ms 0) (grace-time #f) (hot? #f) (win-active? #f))
      ;; 0. Fast batch-drain ALL immediately ready replies in single-lock pops
      ;;    BEFORE sweeping timers or calling clock/seconds->time!
      (let ((got-any? #f))
        (let fast-drain ()
          (let ((msg (mailbox-take-nonblocking!)))
            (unless (##eq? msg mailbox-empty)
              (set! got-any? #t)
              (%fiber-router-dispatch-msg! pending msg)
              (fast-drain))))
        (let ((is-hot? (or hot? got-any?))
              (is-win-active? (or win-active? got-any?)))
          ;; 1. Drain newly registered timeout entries from lock-free queue
          (let drain ((ts active-timers))
            (let-values (((ok entry) (lf-queue-try-dequeue! timers)))
              (if ok
                (if (%fiber-rpc-done? entry)
                  (drain ts)
                  (drain (cons entry ts)))
                ;; 2. Sweep expired timers and locate earliest remaining deadline
                (if (null? ts)
                  (if is-hot?
                    ;; Hot-idle 50ms grace: keeps min-dl published at now+50ms so
                    ;; subsequent normal-timeout RPCs skip CAS + 'timer-wake messages
                    ;; completely, while short-timeout (<50ms) RPCs still wake early.
                    (let-values (((gms gtm wa?)
                                  (if grace-time
                                    (values grace-ms grace-time is-win-active?)
                                    (let ((gabs (+ (##current-time-point) 0.05)))
                                      (values (%now-rel-ms gabs) (seconds->time gabs) #f)))))
                      (atomic-fxbox-set! min-dl gms (memory-order sequentially-consistent))
                      (if (not (lf-queue-empty? timers))
                        (loop '() gms gtm #t #t)
                        (let ((msg (mailbox-take-timeout! gtm)))
                          (cond
                           ((##eq? msg mailbox-timeout)
                            ;; Refresh once if any message arrived during this 50ms window;
                            ;; otherwise transition to cold-idle (0% CPU infinite wait).
                            (if wa?
                              (loop '() 0 #f #t #f)
                              (loop '() 0 #f #f #f)))
                           ((##eq? msg mailbox-empty)
                            (loop '() gms gtm #t wa?))
                           (else
                            (%fiber-router-dispatch-msg! pending msg)
                            (loop '() gms gtm #t #t))))))
                    ;; Cold-idle: 0% CPU infinite sleep until next RPC wakes shard
                    (begin
                      (atomic-fxbox-set! min-dl 0 (memory-order sequentially-consistent))
                      (if (not (lf-queue-empty? timers))
                        (loop '() 0 #f #t #t)
                        (let ((msg (mailbox-take-timeout! #f)))
                          (unless (or (##eq? msg mailbox-timeout) (##eq? msg mailbox-empty))
                            (%fiber-router-dispatch-msg! pending msg))
                          (loop '() 0 #f #t #t)))))
                  (let* ((now (##current-time-point))
                         (now-ms (%now-rel-ms now)))
                    (let sweep ((xs ts) (kept '()) (earliest-ms 0) (earliest-abs #f))
                      (if (pair? xs)
                        (let ((entry (##car xs)))
                          (cond
                           ((%fiber-rpc-done? entry)
                            (sweep (##cdr xs) kept earliest-ms earliest-abs))
                           ((fx<= (&%FiberRPCEntry-dl-ms entry) now-ms)
                            (concurrent-table-delete! pending (&%FiberRPCEntry-seqno entry))
                            (%fiber-rpc-complete! entry 'timeout (&%FiberRPCEntry-deadline entry))
                            (sweep (##cdr xs) kept earliest-ms earliest-abs))
                           (else
                            (let ((dms (&%FiberRPCEntry-dl-ms entry)))
                              (if (or (fx= earliest-ms 0) (fx< dms earliest-ms))
                                (sweep (##cdr xs) (cons entry kept) dms (&%FiberRPCEntry-deadline entry))
                                (sweep (##cdr xs) (cons entry kept) earliest-ms earliest-abs))))))
                        ;; 3. Publish earliest deadline with SeqCst before checking timers queue (Dekker)
                        (begin
                          (atomic-fxbox-set! min-dl earliest-ms (memory-order sequentially-consistent))
                          (if (not (lf-queue-empty? timers))
                            (loop kept 0 #f #t #t)
                            (let ((msg (mailbox-take-timeout!
                                        (if earliest-abs (seconds->time earliest-abs) #f))))
                              (unless (or (##eq? msg mailbox-timeout) (##eq? msg mailbox-empty))
                                (%fiber-router-dispatch-msg! pending msg))
                              (loop kept 0 #f #t #t))))))))))))))))

(def (%get-fiber-router-shard (idx : :fixnum))
  => %FiberReplyShard
  (let ((existing (vector-atomic-ref %fiber-router-shards idx (memory-order acquire))))
    (if existing
      (:- existing %FiberReplyShard)
      (begin
        (mutex-lock! %fiber-router-init-mx)
        (let ((again (vector-atomic-ref %fiber-router-shards idx (memory-order acquire))))
          (if again
            (begin
              (mutex-unlock! %fiber-router-init-mx)
              (:- again %FiberReplyShard))
            (let* ((pending (make-concurrent-table 256 eqv? eqv?-hash))
                   (timers (make-lf-queue))
                   (seqno (make-atomic-fxbox 1))
                   (min-dl (make-atomic-fxbox 0))
                   (shard-box (vector #f))
                   (thr (system-actor!
                         (lambda ()
                           (let wait ()
                             (let ((sh (vector-atomic-ref shard-box 0 (memory-order acquire))))
                               (if sh
                                 (%fiber-router-loop sh)
                                 (begin (thread-yield!) (wait))))))
                         'fiber-actor-router))
                   (shard (%FiberReplyShard (LocalActor thr) pending timers seqno min-dl)))
              (vector-atomic-set! shard-box 0 shard (memory-order release))
              (vector-atomic-set! %fiber-router-shards idx shard (memory-order release))
              (mutex-unlock! %fiber-router-init-mx)
              shard)))))))

(def (fiber-actor-call (dest : Peer)
                       msg
                       (protocol : :string)
                       timeout: (timeo : :real := default-reply-timeout)
                       expire: (expire :? :integer := #f))
  (cond
   ((not (in-fiber?))
    (->> dest msg protocol timeout: timeo expire: expire))
   ((LocalActor? dest)
    ;; Fast zero-bridge-thread, processor-indexed 16-shard wait-free FiberPromise RPC path!
    (let* ((shard (%get-fiber-router-shard (fxand (##current-processor-id) %FIBER-ROUTER-MASK)))
           (seqno (atomic-fxbox-fetch-add! (&%FiberReplyShard-seqno shard) 1 (memory-order relaxed)))
           (now (##current-time-point))
           (deadline (or expire (+ now timeo)))
           (exp (exact (ceiling deadline)))
           (dl-ms (%now-rel-ms deadline))
           (promise (make-fiber-promise))
           (entry (%FiberRPCEntry seqno promise protocol deadline dl-ms))
           (router-peer (&%FiberReplyShard-actor shard))
           (router-thr (&LocalActor-thread router-peer))
           (env (Envelope source: router-peer
                          dest: dest
                          message: msg
                          protocol: protocol
                          options: (Options expire: exp
                                            continue: (ReplyOption seqno: seqno)))))
      (when (<= exp now)
        (raise-timeout fiber-actor-call "fiber actor call already expired" dest protocol deadline))
      (concurrent-table-set! (&%FiberReplyShard-pending shard) seqno entry)
      (lf-queue-enqueue! (&%FiberReplyShard-timers shard) entry)
      ;; Wake shard router if our deadline is earlier than its current sleep target
      (let ((min-dl (&%FiberReplyShard-min-deadline shard)))
        (atomic-fence (memory-order sequentially-consistent))
        (let wake-loop ()
          (let ((cur (atomic-fxbox-ref min-dl (memory-order acquire))))
            (when (or (fx= cur 0) (fx< dl-ms cur))
              (if (fx= (atomic-fxbox-compare-and-swap! min-dl cur dl-ms (memory-order acquire-release)) cur)
                (thread-send-fast! router-thr 'timer-wake)
                (wake-loop))))))
      (using (d dest :- LocalActor)
        (thread-send-fast! d.thread env))
      (let ((outcome (fiber-promise-await! promise)))
        (if (eq? (##car outcome) 'ok)
          (##cdr outcome)
          (raise-timeout fiber-actor-call "fiber actor call timeout" dest protocol (##cdr outcome))))))
   (else
    ;; Remote ensemble Handle / ActorGroup: bridge preserving host & SRFI-226 actor-context
    (let ((promise (make-fiber-promise))
          (host (current-actor-host))
          (ctx (current-actor-context)))
      (spawn/name 'fiber-actor-bridge
        (lambda ()
          (parameterize ((current-actor-host host))
            (let ((run (lambda ()
                         (with-catch
                          (lambda (e) (fiber-promise-resolve! promise (cons 'err e)))
                          (lambda ()
                            (let ((res (->> dest msg protocol timeout: timeo expire: expire)))
                              (fiber-promise-resolve! promise (cons 'ok res))))))))
              (if ctx
                (call-with-continuation-mark actor-context-key ctx run)
                (run))))))
      (let ((outcome (fiber-promise-await! promise)))
        (if (eq? (##car outcome) 'ok)
          (##cdr outcome)
          (raise (##cdr outcome))))))))
