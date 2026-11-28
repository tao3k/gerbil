;;; -*- Gerbil -*-
;;; © Gerbil Contributors
;;; Fiber Scheduler State, Carrier Context, External Inboxes & Wakeup Primitives

(import :std/error
        :std/control
        :std/sync/atomic
        :std/sync/concurrent
        :gerbil/runtime/util
        ./runq)
(export #t)

;;;----------------------------------------------------------------------------
;;; Internal Effects & Scheduler State Layout

(def %eff-yield        (make-effect 'fiber-yield))
(def %eff-park-nursery (make-effect 'fiber-park-nursery))
(def %eff-park-send    (make-effect 'fiber-park-send))
(def %eff-park-recv    (make-effect 'fiber-park-recv))
(def %eff-park-sleep   (make-effect 'fiber-park-sleep))
(def %eff-park-mutex   (make-effect 'fiber-park-mutex))
(def %eff-park-sem     (make-effect 'fiber-park-sem))
(def %eff-park-promise (make-effect 'fiber-park-promise))

(def %MAX-LIFO-STREAK   8)
(def %MAX-NURSERY-BATCH 32)
(def %NURSERY-ERR-TAG   (list 'nursery-err))

;; Packed fixnum park-state layout (portable 25-bit):
;;   bits  0..11 : spinning worker count (+1)
;;   bits 12..23 : sleeping worker count (+#x1000)
;;   bit  24     : waking latch (#x1000000)
(def %FS-SPIN-MASK   #xfff)
(def %FS-SLEEP-UNIT  #x1000)
(def %FS-SLEEP-MASK  #xfff000)
(def %FS-WAKING-BIT  #x1000000)
(def %FS-ACTIVE-MASK (fxior %FS-SPIN-MASK %FS-WAKING-BIT))

;; Cache-line-isolated scheduler state vector (16 words = 128B per hot slot):
;;   state[0]  : active-fibers (root + detached fibers; nursery children track
;;               solely Nursery.cells[0] with +32 batched credits!)
;;   state[16] : packed park-state (spinning | sleepers | waking)
;;   state[32] : stopped latch
;;   state[48] : timer-started latch
;;   state[64] : active steal-searchers (capped at max(1, W/2))
;;   state[80] : global-pending count (>= global-q length; 1-load fast skip!)
(def %FS-IDX-ACTIVE  0)
(def %FS-IDX-PARK    16)
(def %FS-IDX-STOPPED 32)
(def %FS-IDX-TIMER   48)
(def %FS-IDX-SEARCH  64)
(def %FS-IDX-GPEND   80)

(defstruct %FiberScheduler
  ((num-workers      :- :fixnum)
   (max-searching    :- :fixnum)
   (deques           :- :vector)
   (ext-qs           :- :vector)
   (ext-pending      :- :vector)
   (global-q         :- LFQueue)
   (state            :- :vector)
   (park-mx          :- :mutex)
   (park-cv          :- :condvar)
   (timer-mx         :- :mutex)
   (timer-cv         :- :condvar)
   timer-q
   timer-thread
   (root-done        :- AtomicFxBox)
   root-box
   handler-entries
   return-fn
   nursery-return-fn)
  final: #t)

(defstruct %WorkerCtx
  ((sched          :- %FiberScheduler)
   (wid            :- :fixnum)
   (dq             :- :vector)    ;; 3-element pack #[buf nbuf meta]
   lifo                           ;; private 1-slot LIFO task (0 atomics!)
   lifo-n                         ;; nursery paired with lifo task
   (lifo-streak    :- :fixnum)
   (steal-cursor   :- :fixnum)    ;; sticky productive victim wid
   nursery-cur                    ;; active nursery for unified +32 credit batch
   (nursery-credit :- :fixnum)    ;; non-negative pre-reserved credits (0..32)
   (pick-out       :- :vector))   ;; reusable 2-element scratch #[task nursery]
  final: #t)

(def (in-fiber?)
  => :boolean
  (%WorkerCtx? (thread-specific (current-thread))))

(def (%current-wctx)
  (let ((ctx (thread-specific (current-thread))))
    (if (%WorkerCtx? ctx)
      ctx
      (raise-context-error fiber "fiber operation called outside run-fibers"))))

(defrule (%carrier-wctx)
  (:- (thread-specific (current-thread)) %WorkerCtx))

;;;----------------------------------------------------------------------------
;;; Parker Wakeup, Global Queue, Per-Worker External Inboxes & Local Push

;; Single-load zero-mutex fast path whenever no worker sleeps or one is searching/waking.
;; Identical Dekker/SeqCst wakeup invariant to :std/sync/wg.
(def (%sched-wake-one! (sched :- %FiberScheduler))
  (__atomic-fence! 4)
  (let* ((st sched.state)
         (ps (:- (__atomic-fx-load st %FS-IDX-PARK 1) :fixnum)))
    (when (and (fx> (fxand ps %FS-SLEEP-MASK) 0)
               (fx= (fxand ps %FS-ACTIVE-MASK) 0))
      (mutex-lock! sched.park-mx)
      (when (fx= (:- (__atomic-fx-load st %FS-IDX-STOPPED 1) :fixnum) 0)
        (let ((ps2 (:- (__atomic-fx-load st %FS-IDX-PARK 1) :fixnum)))
          (when (and (fx> (fxand ps2 %FS-SLEEP-MASK) 0)
                     (fx= (fxand ps2 %FS-ACTIVE-MASK) 0))
            (__atomic-fx-fetch-ior! st %FS-IDX-PARK %FS-WAKING-BIT 2)
            (condition-variable-signal! sched.park-cv))))
      (mutex-unlock! sched.park-mx))))

(def (%sched-shutdown-parkers! (sched :- %FiberScheduler))
  (let ((st sched.state))
    (when (fx= (:- (__atomic-fx-exchange! st %FS-IDX-STOPPED 1 3) :fixnum) 0)
      (mutex-lock! sched.park-mx)
      (condition-variable-broadcast! sched.park-cv)
      (mutex-unlock! sched.park-mx)
      (when (fx> (:- (__atomic-fx-load st %FS-IDX-TIMER 1) :fixnum) 0)
        (mutex-lock! sched.timer-mx)
        (condition-variable-broadcast! sched.timer-cv)
        (mutex-unlock! sched.timer-mx)))))

;; Global queue enqueue/dequeue maintaining global-pending >= global-q length.
(def (%sched-enqueue-global! (sched :- %FiberScheduler) item)
  (__atomic-fx-fetch-add! sched.state %FS-IDX-GPEND 1 3)
  (lf-queue-enqueue! sched.global-q item))

(def (%sched-try-dequeue-global! (sched :- %FiberScheduler))
  (let ((st sched.state))
    (if (fx= (:- (__atomic-fx-load st %FS-IDX-GPEND 1) :fixnum) 0)
      (values #f #f)
      (let-values (((ok t) (lf-queue-try-dequeue! sched.global-q)))
        (if ok
          (begin
            (__atomic-fx-fetch-sub! st %FS-IDX-GPEND 1 3)
            (values #t t))
          (values #f #f))))))

;; Per-worker 128B-padded external wakeup inbox (eliminates single global-q
;; contention when external actor/IO threads wake fibers across all W cores).
(def (%sched-enqueue-ext! (sched :- %FiberScheduler) (wid :- :fixnum) item)
  (let* ((w (if (and (fx>= wid 0) (fx< wid sched.num-workers)) wid 0))
         (slot (fxarithmetic-shift-left w 4)))
    (__atomic-fx-fetch-add! sched.ext-pending slot 1 3)
    (lf-queue-enqueue! (##vector-ref sched.ext-qs w) item)))

(def (%sched-try-dequeue-ext! (sched :- %FiberScheduler) (wid :- :fixnum))
  (let ((ep sched.ext-pending)
        (slot (fxarithmetic-shift-left wid 4)))
    (if (fx= (:- (__atomic-fx-load ep slot 1) :fixnum) 0)
      (values #f #f)
      (let-values (((ok t) (lf-queue-try-dequeue! (##vector-ref sched.ext-qs wid))))
        (if ok
          (begin
            (__atomic-fx-fetch-sub! ep slot 1 3)
            (values #t t))
          (values #f #f))))))

;; Push (task, n) to own 4096-slot flat dual-array runqueue; on overflow,
;; batch-spill 256 oldest tasks to global-q (Go runqputslow style).
(def (%sched-push-dq-pair! (sched :- %FiberScheduler) (dq :- :vector) task n)
  (unless (%fq-push-pair! dq task n)
    (let ((out (vector #f #f)))
      (let spill ((k 0))
        (when (fx< k 256)
          (when (%fq-pop! dq out)
            (let ((st (##vector-ref out 0))
                  (sn (##vector-ref out 1)))
              (%sched-enqueue-global! sched (if sn (cons st sn) st)))
            (spill (fx+ k 1)))))
      (unless (%fq-push-pair! dq task n)
        (%sched-enqueue-global! sched (if n (cons task n) task))))))

;; Publish (task, n) from a carrier worker:
;; - When all workers are busy (park-state == 0): store in private 1-slot LIFO
;;   (0 atomics!), evicting any prior occupant to local-dq + wake-check.
;; - When any sibling is spinning, sleeping, or waking (park-state != 0): flush
;;   any private LIFO task and push directly to stealable local-dq + wake-one
;;   so idle cores steal even a single spawned task immediately.
(def (%sched-push-task! (ctx :- %WorkerCtx) task n)
  (let* ((sched ctx.sched)
         (st (&%FiberScheduler-state sched))
         (ps (:- (__atomic-fx-load st %FS-IDX-PARK 0) :fixnum)))
    (if (fx= ps 0)
      (let ((prev ctx.lifo)
            (prev-n ctx.lifo-n))
        (set! ctx.lifo task)
        (set! ctx.lifo-n n)
        (when prev
          (%sched-push-dq-pair! sched ctx.dq prev prev-n)
          (%sched-wake-one! sched)))
      (begin
        (let ((prev ctx.lifo))
          (when prev
            (let ((prev-n ctx.lifo-n))
              (set! ctx.lifo #f)
              (set! ctx.lifo-n #f)
              (%sched-push-dq-pair! sched ctx.dq prev prev-n))))
        (%sched-push-dq-pair! sched ctx.dq task n)
        (%sched-wake-one! sched)))))

(def (%sched-wake! (sched :- %FiberScheduler) task)
  (let ((ctx (thread-specific (current-thread))))
    (if (and (%WorkerCtx? ctx) (eq? (&%WorkerCtx-sched ctx) sched))
      (%sched-push-task! ctx task #f)
      (begin
        (%sched-enqueue-global! sched task)
        (%sched-wake-one! sched)))))

(def (%sched-wake-target! (sched :- %FiberScheduler) (wid :- :fixnum) task)
  (let ((ctx (thread-specific (current-thread))))
    (if (and (%WorkerCtx? ctx) (eq? (&%WorkerCtx-sched ctx) sched))
      (%sched-push-task! ctx task #f)
      (begin
        (%sched-enqueue-ext! sched wid task)
        (%sched-wake-one! sched)))))
