;;; -*- Gerbil -*-
;;; © Gerbil Contributors
;;; Direct-Style Work-Stealing Structured Concurrency Runtime (:std/sync/fiber)
;;;
;;; Maximally aligned with Gambit modern-c (gambit fiber) Phase C18-C21 & SMP runtime:
;;;   - M:N work-stealing scheduler with 4096-slot 128B-padded flat dual-array
;;;     Tokio/Go runqueues (%LocalRunQ), private 1-slot LIFO (streak cap 8),
;;;     half-deque batch stealing (up to 16 tasks in one CAS), sticky victim
;;;     locality, and num_searching <= max(1, W/2) steal-herd throttling
;;;   - Zero-busy-spin adaptive Rayon/Tokio spinning+waking condvar parker with
;;;     formally verified unconditional cascade wakeup (fiber_steal_cascade_wakeup_smp.qnt),
;;;     exponential CPU-relax pause backoff, and OS sched_yield()
;;;   - Phase C18 unified +32 pre-reserved nursery credits (32x fewer Nursery.active
;;;     atomics on fan-out) + zero-perform direct fiber-spawn
;;;   - One-shot effect continuations from :std/control (SRFI-226 + C-runtime
;;;     stack rewind ##continuation-try-rewind-oneshot!)
;;;   - Exception-isolated fibers & structured nurseries with cooperative
;;;     cancellation (with-nursery, nursery-cancel!, nursery-cancelled?)
;;;   - Wait-free single-shot FiberPromise, bounded & unbuffered FiberChannel,
;;;     non-blocking cooperative fiber-sleep!, FiberMutex, FiberSemaphore
;;;   - Structured parallel-map & parallel-for-each combinators

(import :std/error
        :std/control
        :std/sync/atomic
        :std/sync/concurrent
        :gerbil/runtime/util)
(export
  run-fibers
  in-fiber?
  with-nursery
  Nursery
  nursery?
  nursery-cancel!
  nursery-cancelled?
  fiber-spawn
  fiber-yield
  fiber-sleep!
  fiber-worker-count
  FiberChannel
  make-fiber-channel
  fiber-channel?
  fiber-send!
  fiber-try-send!
  fiber-recv!
  fiber-try-recv!
  fiber-channel-close!
  fiber-channel-closed?
  FiberPromise
  make-fiber-promise
  fiber-promise?
  fiber-promise-resolved?
  fiber-promise-resolve!
  fiber-promise-await!
  FiberMutex
  make-fiber-mutex
  fiber-mutex?
  fiber-mutex-lock!
  fiber-mutex-unlock!
  with-fiber-lock
  FiberSemaphore
  make-fiber-semaphore
  fiber-semaphore?
  fiber-semaphore-acquire!
  fiber-semaphore-release!
  with-fiber-semaphore
  parallel-map
  parallel-for-each)

;;;----------------------------------------------------------------------------
;;; Native C23 Carrier Scheduling, Backoff & Flat Dual-Array Runqueue Helpers

(begin-foreign
  (c-declare
   #<<END-C
#if defined(__APPLE__) || defined(__linux__) || defined(__unix__)
#include <sched.h>
#endif
#ifdef __APPLE__
#include <pthread/qos.h>
#endif
END-C
   ))

;; Request high-priority interactive QoS on Darwin carrier threads so XNU keeps
;; active fiber workers resident on performance cores.
(def (%set-carrier-qos!)
  (##c-code
   "#ifdef __APPLE__
    pthread_set_qos_class_self_np(QOS_CLASS_USER_INTERACTIVE, 0);
#endif
    ___RESULT = ___VOID;"))

;; Direct OS thread yield avoiding Gambit green-thread scheduler lock contention
;; during brief idle spin backoff before condvar parking.
(def (%os-sched-yield!)
  (##c-code
   "#if defined(__APPLE__) || defined(__linux__) || defined(__unix__)
    sched_yield();
#endif
    ___RESULT = ___VOID;"))

;; Exponential CPU-relax pause backoff (4 << min(level, 3)) to reduce L2
;; coherence traffic across idle stealers on high-core-count SMP hosts.
(def (%idle-pause! (level :- :fixnum))
  (declare (not interrupts-enabled))
  (##c-code
   "___WORD ___s = ___INT(___ARG1);
    if (___s < 0) ___s = 0;
    if (___s > 3) ___s = 3;
    int ___n = 4 << ___s;
    int ___i;
    for (___i = 0; ___i < ___n; ___i++) {
      ___CPU_RELAX();
    }
    ___RESULT = ___VOID;"
   level))

;; 128B cache-line-padded Tokio/Go flat dual-array 4096-slot work-stealing runqueue.
;; Represented as a 3-element pack vector #[buf nbuf meta]:
;;   buf      : 4096-slot task vector (thunk / k / (k . val))
;;   nbuf     : 4096-slot nursery vector (Nursery or #f)
;;   meta[0]  : head (contested by owner pop & peer thieves via CAS)
;;   meta[16] : tail (owner-only release store, 128B isolated from head)
;;   meta[17] : cached-head (owner-private estimate avoiding head reads on push)
(def (%make-local-runq)
  (vector (make-vector 4096 #f)
          (make-vector 4096 #f)
          (make-vector 32 0)))

;; Owner-only SPSC push of (task, nursery) pair. Returns #t on success, #f if full.
(def (%fq-push-pair! (pack :- :vector) task n)
  (declare (not interrupts-enabled))
  (##c-code
   "___WORD *___p = ___BODY_AS(___ARG1, ___tVECTOR);
    ___SCMOBJ ___buf  = ___p[0];
    ___SCMOBJ ___nbuf = ___p[1];
    ___WORD *___meta  = ___BODY_AS(___p[2], ___tVECTOR);
    ___VOLATILE ___WORD *___head_p = ___CAST(___VOLATILE ___WORD*, ___meta + 0);
    ___VOLATILE ___WORD *___tail_p = ___CAST(___VOLATILE ___WORD*, ___meta + 16);
    ___WORD ___t  = ___INT(___atomic_word_load(___tail_p, 0));
    ___WORD ___ch = ___INT(___meta[17]);
    int ___full = 0;
    if (___t - ___ch >= 4096) {
      ___WORD ___h = ___INT(___atomic_word_load(___head_p, 1));
      ___meta[17] = ___FIX(___h);
      if (___t - ___h >= 4096) {
        ___full = 1;
      }
    }
    if (___full) {
      ___RESULT = ___FAL;
    } else {
      ___WORD ___idx = ___t & 4095;
      ___WORD *___s  = ___BODY_AS(___buf, ___tVECTOR) + ___idx;
      ___WORD *___ns = ___BODY_AS(___nbuf, ___tVECTOR) + ___idx;
      ___GC_WRITE_BARRIER(___ps, ___buf, ___s, ___ARG2);
      ___atomic_word_store(___CAST(___VOLATILE ___WORD*, ___s), ___CAST(___WORD, ___ARG2), 0);
      ___GC_WRITE_BARRIER(___ps, ___nbuf, ___ns, ___ARG3);
      ___atomic_word_store(___CAST(___VOLATILE ___WORD*, ___ns), ___CAST(___WORD, ___ARG3), 0);
      ___atomic_word_store(___tail_p, ___FIX(___t + 1), 2);
      ___RESULT = ___TRU;
    }"
   pack task n))

;; Owner-only FIFO pop via CAS(head, h -> h+1). Writes (task, n) into out[0..1].
(def (%fq-pop! (pack :- :vector) (out :- :vector))
  (declare (not interrupts-enabled))
  (##c-code
   "___WORD *___p = ___BODY_AS(___ARG1, ___tVECTOR);
    ___SCMOBJ ___buf  = ___p[0];
    ___SCMOBJ ___nbuf = ___p[1];
    ___WORD *___meta  = ___BODY_AS(___p[2], ___tVECTOR);
    ___SCMOBJ ___out  = ___ARG2;
    ___VOLATILE ___WORD *___head_p = ___CAST(___VOLATILE ___WORD*, ___meta + 0);
    ___VOLATILE ___WORD *___tail_p = ___CAST(___VOLATILE ___WORD*, ___meta + 16);
    ___WORD *___buf_p  = ___BODY_AS(___buf, ___tVECTOR);
    ___WORD *___nbuf_p = ___BODY_AS(___nbuf, ___tVECTOR);
    ___WORD ___t = ___INT(___atomic_word_load(___tail_p, 0));
    ___SCMOBJ ___ok = ___FAL;
    for (;;) {
      ___WORD ___h = ___INT(___atomic_word_load(___head_p, 1));
      ___meta[17] = ___FIX(___h);
      if (___h >= ___t) {
        break;
      }
      {
        ___WORD ___idx = ___h & 4095;
        ___WORD *___s  = ___buf_p + ___idx;
        ___WORD *___ns = ___nbuf_p + ___idx;
        ___SCMOBJ ___item = ___gc_atomic_slot_load(___s, 1);
        ___SCMOBJ ___n    = ___gc_atomic_slot_load(___ns, 1);
        if (___atomic_word_cas(___head_p, ___FIX(___h), ___FIX(___h + 1), 3) == ___FIX(___h)) {
          ___meta[17] = ___FIX(___h + 1);
          ___GC_WRITE_BARRIER(___ps, ___buf, ___s, ___FAL);
          ___atomic_word_store(___CAST(___VOLATILE ___WORD*, ___s), ___CAST(___WORD, ___FAL), 0);
          ___GC_WRITE_BARRIER(___ps, ___nbuf, ___ns, ___FAL);
          ___atomic_word_store(___CAST(___VOLATILE ___WORD*, ___ns), ___CAST(___WORD, ___FAL), 0);
          {
            ___WORD *___out_p = ___BODY_AS(___out, ___tVECTOR);
            ___GC_WRITE_BARRIER(___ps, ___out, ___out_p + 0, ___item);
            ___WORD_STORE_RELAXED(___out_p + 0, ___item);
            ___GC_WRITE_BARRIER(___ps, ___out, ___out_p + 1, ___n);
            ___WORD_STORE_RELAXED(___out_p + 1, ___n);
          }
          ___ok = ___TRU;
          break;
        }
      }
    }
    ___RESULT = ___ok;"
   pack out))

;; Concurrent thief half-deque batch steal: claims up to min((avail+1)/2, 16)
;; (task, nursery) pairs from vpack in ONE CAS(vhead, vh -> vh+n), pushes n-1
;; pairs into thief's own lpack, and writes (batch_t[0], batch_n[0]) into out[0..1].
;; Returns count stolen (0 on empty/contention, 1..16 on success).
(def (%fq-steal-batch! (vpack :- :vector) (lpack :- :vector) (out :- :vector))
  (declare (not interrupts-enabled))
  (##c-code
   "___WORD *___vp = ___BODY_AS(___ARG1, ___tVECTOR);
    ___SCMOBJ ___vbuf  = ___vp[0];
    ___SCMOBJ ___vnbuf = ___vp[1];
    ___WORD *___vmeta  = ___BODY_AS(___vp[2], ___tVECTOR);
    ___VOLATILE ___WORD *___vhead_p = ___CAST(___VOLATILE ___WORD*, ___vmeta + 0);
    ___VOLATILE ___WORD *___vtail_p = ___CAST(___VOLATILE ___WORD*, ___vmeta + 16);
    ___WORD ___vh = ___INT(___atomic_word_load(___vhead_p, 1));
    ___WORD ___vt = ___INT(___atomic_word_load(___vtail_p, 1));
    ___WORD ___avail = ___vt - ___vh;
    if (___avail <= 0) {
      ___RESULT = ___FIX(0);
    } else {
      ___WORD *___lp = ___BODY_AS(___ARG2, ___tVECTOR);
      ___SCMOBJ ___lbuf  = ___lp[0];
      ___SCMOBJ ___lnbuf = ___lp[1];
      ___WORD *___lmeta  = ___BODY_AS(___lp[2], ___tVECTOR);
      ___VOLATILE ___WORD *___lhead_p = ___CAST(___VOLATILE ___WORD*, ___lmeta + 0);
      ___VOLATILE ___WORD *___ltail_p = ___CAST(___VOLATILE ___WORD*, ___lmeta + 16);
      ___WORD ___n = (___avail == 1) ? 1 : ((___avail + 1) >> 1);
      if (___n > 16) ___n = 16;
      ___WORD ___lt = ___INT(___atomic_word_load(___ltail_p, 0));
      ___WORD ___lh = ___INT(___atomic_word_load(___lhead_p, 1));
      ___lmeta[17] = ___FIX(___lh);
      ___WORD ___lroom = 4096 - (___lt - ___lh);
      if (___n > ___lroom + 1) ___n = ___lroom + 1;
      if (___n <= 0) {
        ___RESULT = ___FIX(0);
      } else {
        ___SCMOBJ ___batch_t[16];
        ___SCMOBJ ___batch_n[16];
        ___WORD *___vbuf_p  = ___BODY_AS(___vbuf, ___tVECTOR);
        ___WORD *___vnbuf_p = ___BODY_AS(___vnbuf, ___tVECTOR);
        ___WORD ___k;
        for (___k = 0; ___k < ___n; ___k++) {
          ___WORD ___vi = (___vh + ___k) & 4095;
          ___batch_t[___k] = ___gc_atomic_slot_load(___vbuf_p + ___vi, 1);
          ___batch_n[___k] = ___gc_atomic_slot_load(___vnbuf_p + ___vi, 1);
        }
        if (___atomic_word_cas(___vhead_p, ___FIX(___vh), ___FIX(___vh + ___n), 3) == ___FIX(___vh)) {
          if (___n > 1) {
            ___WORD *___lbuf_p  = ___BODY_AS(___lbuf, ___tVECTOR);
            ___WORD *___lnbuf_p = ___BODY_AS(___lnbuf, ___tVECTOR);
            for (___k = 1; ___k < ___n; ___k++) {
              ___WORD ___li = (___lt + ___k - 1) & 4095;
              ___WORD *___ls  = ___lbuf_p + ___li;
              ___WORD *___lns = ___lnbuf_p + ___li;
              ___GC_WRITE_BARRIER(___ps, ___lbuf, ___ls, ___batch_t[___k]);
              ___atomic_word_store(___CAST(___VOLATILE ___WORD*, ___ls), ___CAST(___WORD, ___batch_t[___k]), 0);
              ___GC_WRITE_BARRIER(___ps, ___lnbuf, ___lns, ___batch_n[___k]);
              ___atomic_word_store(___CAST(___VOLATILE ___WORD*, ___lns), ___CAST(___WORD, ___batch_n[___k]), 0);
            }
            ___atomic_word_store(___ltail_p, ___FIX(___lt + ___n - 1), 2);
          }
          {
            ___SCMOBJ ___out = ___ARG3;
            ___WORD *___out_p = ___BODY_AS(___out, ___tVECTOR);
            ___GC_WRITE_BARRIER(___ps, ___out, ___out_p + 0, ___batch_t[0]);
            ___WORD_STORE_RELAXED(___out_p + 0, ___batch_t[0]);
            ___GC_WRITE_BARRIER(___ps, ___out, ___out_p + 1, ___batch_n[0]);
            ___WORD_STORE_RELAXED(___out_p + 1, ___batch_n[0]);
          }
          ___RESULT = ___FIX(___n);
        } else {
          ___RESULT = ___FIX(0);
        }
      }
    }"
   vpack lpack out))

;;;----------------------------------------------------------------------------
;;; Internal Effects & Scheduler Structures

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

;;;----------------------------------------------------------------------------
;;; Tiny TTAS Spinlock Helpers (for non-blocking channel, mutex & nursery handoffs)

(definline (%fspin-lock! (box :- AtomicFxBox))
  (let loop ((spins 0))
    (if (and (fx= (atomic-fxbox-ref box (memory-order relaxed)) 0)
             (fx= (atomic-fxbox-compare-and-swap! box 0 1 (memory-order acquire)) 0))
      #t
      (if (fx>= spins 64)
        (begin (thread-yield!) (loop 0))
        (begin (__cpu-relax!) (loop (fx+ spins 1)))))))

(definline (%fspin-unlock! (box :- AtomicFxBox))
  (atomic-fxbox-set! box 0 (memory-order release)))

(definline (%vspin-lock! (vec :- :vector) (idx :- :fixnum))
  (let loop ((spins 0))
    (if (and (fx= (:- (__atomic-fx-load vec idx 0) :fixnum) 0)
             (fx= (:- (__atomic-fx-cas! vec idx 0 1 1) :fixnum) 0))
      #t
      (if (fx>= spins 64)
        (begin (thread-yield!) (loop 0))
        (begin (__cpu-relax!) (loop (fx+ spins 1)))))))

(definline (%vspin-unlock! (vec :- :vector) (idx :- :fixnum))
  (__atomic-fx-store! vec idx 0 2))

;;;----------------------------------------------------------------------------
;;; FIFO Waiter Queue (Protected by owning primitive's TTAS spinlock)

(defstruct %WaitQ (head tail) final: #t)

(definline (%wq-empty? (q :- %WaitQ))
  (null? q.head))

(def (%wq-push! (q :- %WaitQ) item)
  (let ((cell (cons item '())))
    (if (null? q.head)
      (begin
        (set! q.head cell)
        (set! q.tail cell))
      (begin
        (set-cdr! q.tail cell)
        (set! q.tail cell)))))

(def (%wq-pop! (q :- %WaitQ))
  (let* ((h q.head)
         (nxt (##cdr h)))
    (set! q.head nxt)
    (when (null? nxt)
      (set! q.tail '()))
    (##car h)))

;;;----------------------------------------------------------------------------
;;; Structured Concurrency Nursery (Phase C18 Unified +32 Credits + Cancel)
;;;
;;; cells[0]  = active count (128B isolated from cancelled & lock)
;;; cells[16] = cancelled flag (0/1)
;;; cells[17] = TTAS spinlock (touched only on error or final join)

(defstruct Nursery
  ((sched       :- %FiberScheduler)
   (cells       :- :vector)
   waiter-k
   first-err
   has-err?
   err-handler)
  final: #t)

(defalias nursery? Nursery?)

(def (nursery-cancel! (n : Nursery))
  => :void
  (__atomic-fx-store! n.cells 16 1 2)
  (void))

(def (nursery-cancelled? (n : Nursery))
  => :boolean
  (fx> (:- (__atomic-fx-load n.cells 16 1) :fixnum) 0))

(def (%nursery-record-error! (n :- Nursery) exc)
  (let ((cells n.cells))
    (__atomic-fx-store! cells 16 1 2)
    (%vspin-lock! cells 17)
    (unless n.has-err?
      (set! n.has-err? #t)
      (set! n.first-err exc))
    (%vspin-unlock! cells 17)))

(def (%nursery-sub-active! (n :- Nursery) (cnt :- :fixnum))
  (let* ((cells n.cells)
         (prev (:- (__atomic-fx-fetch-sub! cells 0 cnt 3) :fixnum)))
    (when (fx= prev cnt)
      (let ((wk #f))
        (%vspin-lock! cells 17)
        (set! wk n.waiter-k)
        (set! n.waiter-k #f)
        (%vspin-unlock! cells 17)
        (when wk
          (%sched-wake! n.sched wk))))))

(def (%nursery-flush! (ctx :- %WorkerCtx))
  (let ((cred ctx.nursery-credit))
    (when (fx> cred 0)
      (let ((n ctx.nursery-cur))
        (set! ctx.nursery-credit 0)
        (set! ctx.nursery-cur #f)
        (%nursery-sub-active! n cred)))))

(def (%nursery-credit-take! (ctx :- %WorkerCtx) (n :- Nursery))
  (let ((cur ctx.nursery-cur)
        (cred ctx.nursery-credit))
    (if (and (eq? cur n) (fx>= cred 1))
      (set! ctx.nursery-credit (fx- cred 1))
      (begin
        (when (and cur (fx> cred 0))
          (%nursery-flush! ctx))
        (__atomic-fx-fetch-add! (&Nursery-cells n) 0 %MAX-NURSERY-BATCH 3)
        (set! ctx.nursery-cur n)
        (set! ctx.nursery-credit (fx- %MAX-NURSERY-BATCH 1))))))

(def (%nursery-child-done-batched! (ctx :- %WorkerCtx) (n :- Nursery))
  (let ((cur ctx.nursery-cur))
    (if (eq? cur n)
      (let ((cnt (fx+ ctx.nursery-credit 1)))
        (if (fx>= cnt %MAX-NURSERY-BATCH)
          (begin
            (set! ctx.nursery-credit 0)
            (set! ctx.nursery-cur #f)
            (%nursery-sub-active! n cnt))
          (set! ctx.nursery-credit cnt)))
      (begin
        (when cur
          (%nursery-flush! ctx))
        (set! ctx.nursery-cur n)
        (set! ctx.nursery-credit 1)))))

(def (with-nursery (proc : :procedure))
  (let* ((ctx (%current-wctx))
         (sched (&%WorkerCtx-sched ctx))
         (cells (let ((v (make-vector 32 0)))
                  (##vector-set! v 0 1)
                  v))
         (n (Nursery sched cells #f #f #f #f))
         (parent-res #f))
    (set! (&Nursery-err-handler n)
      (lambda (e)
        (let ((c (%carrier-wctx)))
          (%nursery-record-error! n e)
          (%nursery-flush! c)
          (%nursery-sub-active! n 1))
        %NURSERY-ERR-TAG))
    (with-catch
     (lambda (e) (%nursery-record-error! n e))
     (lambda () (set! parent-res (proc n))))
    ;; Re-fetch carrier ctx because (proc n) may have migrated across workers!
    (let* ((cur-ctx (%carrier-wctx))
           (drop (if (eq? (&%WorkerCtx-nursery-cur cur-ctx) n)
                   (let ((cred (&%WorkerCtx-nursery-credit cur-ctx)))
                     (set! (&%WorkerCtx-nursery-credit cur-ctx) 0)
                     (set! (&%WorkerCtx-nursery-cur cur-ctx) #f)
                     (fx+ cred 1))
                   (begin
                     (%nursery-flush! cur-ctx)
                     1)))
           (prev (:- (__atomic-fx-fetch-sub! cells 0 drop 3) :fixnum)))
      (when (fx> prev drop)
        (perform %eff-park-nursery n)))
    (if (&Nursery-has-err? n)
      (raise (&Nursery-first-err n))
      parent-res)))

(def (%park-nursery-waiter! sched k (n :- Nursery))
  (let ((cells n.cells)
        (wake-now? #f))
    (%vspin-lock! cells 17)
    (if (fx= (:- (__atomic-fx-load cells 0 1) :fixnum) 0)
      (set! wake-now? #t)
      (set! n.waiter-k k))
    (%vspin-unlock! cells 17)
    (when wake-now?
      (%sched-wake! sched k))))

;;;----------------------------------------------------------------------------
;;; Cooperative Non-Blocking Fiber Sleep (Lazy Per-Scheduler Timer Thread)

(def (%timer-insert sorted entry)
  (let ((dl (##car entry)))
    (if (or (null? sorted) (<= dl (##car (##car sorted))))
      (cons entry sorted)
      (let loop ((prev sorted) (cur (##cdr sorted)))
        (if (or (null? cur) (<= dl (##car (##car cur))))
          (begin
            (set-cdr! prev (cons entry cur))
            sorted)
          (loop cur (##cdr cur)))))))

(def (%sched-timer-loop (sched :- %FiberScheduler))
  (let ((mx sched.timer-mx)
        (cv sched.timer-cv)
        (st sched.state))
    (let loop ()
      (let ((to-wake '())
            (next-dl #f))
        (mutex-lock! mx)
        (let ((now (##current-time-point)))
          (let drain ((q sched.timer-q))
            (cond
             ((null? q)
              (set! sched.timer-q '()))
             ((<= (##car (##car q)) now)
              (set! to-wake (cons (##cdr (##car q)) to-wake))
              (drain (##cdr q)))
             (else
              (set! sched.timer-q q)
              (set! next-dl (##car (##car q)))))))
        (cond
         ((pair? to-wake)
          (mutex-unlock! mx)
          (for-each (lambda (k) (%sched-wake! sched k)) (reverse to-wake))
          (loop))
         ((fx> (:- (__atomic-fx-load st %FS-IDX-STOPPED 1) :fixnum) 0)
          (mutex-unlock! mx)
          (void))
         (next-dl
          (mutex-unlock! mx cv (seconds->time next-dl))
          (loop))
         (else
          (mutex-unlock! mx cv)
          (loop)))))))

(def (%sched-ensure-timer! (sched :- %FiberScheduler))
  (when (fx= (:- (__atomic-fx-cas! sched.state %FS-IDX-TIMER 0 1 3) :fixnum) 0)
    (let ((t (make-thread (lambda () (%sched-timer-loop sched))
                          'fiber-timer)))
      (set! sched.timer-thread t)
      (thread-start! t))))

(def (%park-sleep-waiter! (sched :- %FiberScheduler) k secs)
  (%sched-ensure-timer! sched)
  (let ((dl (+ (##current-time-point) secs)))
    (mutex-lock! sched.timer-mx)
    (set! sched.timer-q (%timer-insert sched.timer-q (cons dl k)))
    (condition-variable-signal! sched.timer-cv)
    (mutex-unlock! sched.timer-mx)))

(def (fiber-sleep! (secs : :real))
  => :void
  (cond
   ((not (in-fiber?))
    (thread-sleep! secs)
    (void))
   ((<= secs 0)
    (fiber-yield)
    (void))
   (else
    (perform %eff-park-sleep secs)
    (void))))

;;;----------------------------------------------------------------------------
;;; Fiber Spawn (Zero-Perform Direct Push), Yield & Worker Count

(def (fiber-worker-count)
  => :fixnum
  (:- (&%FiberScheduler-num-workers (&%WorkerCtx-sched (%current-wctx))) :fixnum))

(def (fiber-yield)
  (perform %eff-yield))

(def (fiber-spawn (thunk : :procedure) (n :? Nursery := #f))
  (let ((ctx (%current-wctx)))
    (if n
      (begin
        (%nursery-credit-take! ctx n)
        (%sched-push-task! ctx thunk n))
      (begin
        (__atomic-fx-fetch-add! (&%FiberScheduler-state (&%WorkerCtx-sched ctx))
                                %FS-IDX-ACTIVE 1 3)
        (%sched-push-task! ctx thunk #f)))
    (void)))

;;;----------------------------------------------------------------------------
;;; Wait-Free Single-Shot FiberPromise (Inline Atomic Slot, Zero Vector Alloc)
;;;
;;; 4-state atomic protocol inline in FiberPromise struct slot 1 (`state`):
;;;   0 = empty (no waiter, no value)
;;;   1 = waiter parked (waiter-k and sched published)
;;;   2 = claimed by single winning resolver (writing val)
;;;   3 = resolved (val published via release store)

(defstruct FiberPromise
  ((state :- :fixnum)
   val
   waiter-k
   sched)
  final: #t)

(def (make-fiber-promise)
  => FiberPromise
  (FiberPromise 0 #f #f #f))

(defalias fiber-promise? FiberPromise?)

(def (fiber-promise-resolved? (p : FiberPromise))
  => :boolean
  (fx= (:- (__atomic-struct-ref p 1 1) :fixnum) 3))

;; Atomically resolves p at most once; returns #t for the winning resolver, #f for losers.
(def (fiber-promise-resolve! (p : FiberPromise) val)
  => :boolean
  (let loop ()
    (let ((cur (:- (__atomic-struct-ref p 1 1) :fixnum)))
      (cond
       ((fx>= cur 2) #f)
       ((fx= cur 0)
        (if (fx= (:- (__atomic-struct-cas! p 1 0 2 3) :fixnum) 0)
          (begin
            (set! p.val val)
            (__atomic-struct-set! p 1 3 2)
            #t)
          (loop)))
       (else
        (if (fx= (:- (__atomic-struct-cas! p 1 1 2 3) :fixnum) 1)
          (let ((wk p.waiter-k)
                (sc p.sched))
            (set! p.val val)
            (__atomic-struct-set! p 1 3 2)
            (%sched-wake! sc (cons wk val))
            #t)
          (loop)))))))

(def (fiber-promise-await! (p : FiberPromise))
  (let ((cur (:- (__atomic-struct-ref p 1 1) :fixnum)))
    (cond
     ((fx= cur 3) p.val)
     ((fx= cur 2)
      (let spin ()
        (if (fx= (:- (__atomic-struct-ref p 1 1) :fixnum) 3)
          p.val
          (begin (__cpu-relax!) (spin)))))
     ((in-fiber?)
      (perform %eff-park-promise p))
     (else
      (let wait ()
        (if (fx= (:- (__atomic-struct-ref p 1 1) :fixnum) 3)
          p.val
          (begin (thread-yield!) (wait))))))))

(def (%park-promise-waiter! sched k (p :- FiberPromise))
  (set! p.waiter-k k)
  (set! p.sched sched)
  (let ((prev (:- (__atomic-struct-cas! p 1 0 1 3) :fixnum)))
    (unless (fx= prev 0)
      ;; Explicit acquire load guarantees release->acquire ordering for p.val on ARM64.
      (let spin ((s (:- (__atomic-struct-ref p 1 1) :fixnum)))
        (if (fx= s 3)
          (%sched-wake! sched (cons k p.val))
          (begin
            (__cpu-relax!)
            (spin (:- (__atomic-struct-ref p 1 1) :fixnum))))))))

;;;----------------------------------------------------------------------------
;;; Lock-Free Vyukov Bounded MPMC & Unbuffered Rendezvous FiberChannel
;;;
;;; Buffered channels (cap > 0) use a 128B cache-line-padded Vyukov lock-free
;;; bounded MPMC ring with zero-lock fast paths on send/recv and Dekker SeqCst
;;; rx-waiters / tx-waiters counters for zero lost wakeups. Unbuffered channels
;;; (cap == 0) use direct rendezvous handoff under meta[50].
;;;
;;; pack = #[cap mask buf seq meta]
;;;   meta[0]  = head       (128B isolated consumer cursor)
;;;   meta[16] = tail       (128B isolated producer cursor)
;;;   meta[32] = rx-waiters (128B isolated parked receiver count)
;;;   meta[48] = tx-waiters (128B isolated parked sender count)
;;;   meta[49] = closed     (0=open, 1=closed)
;;;   meta[50] = lock       (TTAS spinlock for park/wake/close/unbuffered slow paths)

(def %CH-EMPTY (cons 'ch-empty '()))
(def %CH-RETRY (cons 'ch-retry '()))

;; Lock-free Vyukov bounded MPMC push (bounded 64-try CAS loop).
;; Returns fixnum: 0 = pushed, 1 = full, 2 = retry budget hit.
(def (%vyukov-try-push! (pack :- :vector) val)
  (declare (not interrupts-enabled))
  (##c-code
   "___WORD *___p = ___BODY_AS(___ARG1, ___tVECTOR);
    ___WORD ___cap  = ___INT(___p[0]);
    ___WORD ___mask = ___INT(___p[1]);
    ___SCMOBJ ___buf = ___p[2];
    ___WORD *___buf_p = ___BODY_AS(___buf, ___tVECTOR);
    ___VOLATILE ___WORD *___seq_p  = ___CAST(___VOLATILE ___WORD*, ___BODY_AS(___p[3], ___tVECTOR));
    ___WORD *___meta = ___BODY_AS(___p[4], ___tVECTOR);
    ___VOLATILE ___WORD *___tail_p = ___CAST(___VOLATILE ___WORD*, ___meta + 16);
    ___WORD ___res = 2;
    int ___tries;
    for (___tries = 0; ___tries < 64; ___tries++) {
      ___WORD ___pos = ___INT(___atomic_word_load(___tail_p, 0));
      ___WORD ___idx = (___mask >= 0) ? (___pos & ___mask) : (___pos % ___cap);
      ___WORD ___s   = ___INT(___atomic_word_load(___seq_p + ___idx, 1));
      ___WORD ___exp = ___pos << 1;
      ___WORD ___dif = ___s - ___exp;
      if (___dif == 0) {
        if (___atomic_word_cas(___tail_p, ___FIX(___pos), ___FIX(___pos + 1), 0) == ___FIX(___pos)) {
          ___WORD *___slot = ___buf_p + ___idx;
          ___GC_WRITE_BARRIER(___ps, ___buf, ___slot, ___ARG2);
          ___WORD_STORE_RELAXED(___slot, ___ARG2);
          ___atomic_word_store(___seq_p + ___idx, ___FIX(___exp + 1), 4);
          ___res = 0;
          break;
        }
      } else if (___dif < 0) {
        ___res = 1;
        break;
      }
    }
    ___RESULT = ___FIX(___res);"
   pack val))

;; Lock-free Vyukov bounded MPMC pop (bounded 64-try CAS loop).
;; Returns item directly, or empty-tag if empty, or retry-tag if contention budget hit.
(def (%vyukov-try-pop! (pack :- :vector) empty-tag retry-tag)
  (declare (not interrupts-enabled))
  (##c-code
   "___WORD *___p = ___BODY_AS(___ARG1, ___tVECTOR);
    ___WORD ___cap  = ___INT(___p[0]);
    ___WORD ___mask = ___INT(___p[1]);
    ___SCMOBJ ___buf = ___p[2];
    ___WORD *___buf_p = ___BODY_AS(___buf, ___tVECTOR);
    ___VOLATILE ___WORD *___seq_p  = ___CAST(___VOLATILE ___WORD*, ___BODY_AS(___p[3], ___tVECTOR));
    ___WORD *___meta = ___BODY_AS(___p[4], ___tVECTOR);
    ___VOLATILE ___WORD *___head_p = ___CAST(___VOLATILE ___WORD*, ___meta + 0);
    ___SCMOBJ ___res = ___ARG3;
    int ___tries;
    for (___tries = 0; ___tries < 64; ___tries++) {
      ___WORD ___pos = ___INT(___atomic_word_load(___head_p, 0));
      ___WORD ___idx = (___mask >= 0) ? (___pos & ___mask) : (___pos % ___cap);
      ___WORD ___s   = ___INT(___atomic_word_load(___seq_p + ___idx, 1));
      ___WORD ___exp = (___pos << 1) + 1;
      ___WORD ___dif = ___s - ___exp;
      if (___dif == 0) {
        if (___atomic_word_cas(___head_p, ___FIX(___pos), ___FIX(___pos + 1), 0) == ___FIX(___pos)) {
          ___WORD *___slot = ___buf_p + ___idx;
          ___SCMOBJ ___item = ___WORD_LOAD_RELAXED(___slot);
          ___GC_WRITE_BARRIER(___ps, ___buf, ___slot, ___FAL);
          ___WORD_STORE_RELAXED(___slot, ___FAL);
          ___atomic_word_store(___seq_p + ___idx, ___FIX((___pos + ___cap) << 1), 4);
          ___res = ___item;
          break;
        }
      } else if (___dif < 0) {
        ___res = ___ARG2;
        break;
      }
    }
    ___RESULT = ___res;"
   pack empty-tag retry-tag))

(defstruct FiberChannel
  ((cap          :- :fixnum)
   (pack         :- :vector)     ;; #[cap mask buf seq meta]
   (meta         :- :vector)     ;; 64-word 128B-padded control vector
   (recv-waiters :- %WaitQ)
   (send-waiters :- %WaitQ)
   sched)
  final: #t)

(def (make-fiber-channel (capacity : :fixnum := 16))
  => FiberChannel
  (when (fx< capacity 0)
    (raise-bad-argument make-fiber-channel "non-negative fixnum capacity" capacity))
  (let* ((meta (make-vector 64 0))
         (mask (if (and (fx> capacity 0) (fx= (fxand capacity (fx- capacity 1)) 0))
                 (fx- capacity 1)
                 -1))
         (buf (if (fx> capacity 0) (make-vector capacity #f) '#()))
         (seq (if (fx> capacity 0)
                (let ((v (make-vector capacity 0)))
                  (let init ((i 0))
                    (when (fx< i capacity)
                      (##vector-set! v i (fxarithmetic-shift-left i 1))
                      (init (fx+ i 1))))
                  v)
                '#()))
         (pack (vector capacity mask buf seq meta)))
    (FiberChannel capacity pack meta (%WaitQ '() '()) (%WaitQ '() '()) #f)))

(defalias fiber-channel? FiberChannel?)

(def (fiber-channel-closed? (ch : FiberChannel))
  => :boolean
  (fx> (:- (__atomic-fx-load ch.meta 49 1) :fixnum) 0))

(def (%vyukov-pop-loop (pack :- :vector))
  (let loop ()
    (let ((item (%vyukov-try-pop! pack %CH-EMPTY %CH-RETRY)))
      (if (eq? item %CH-RETRY)
        (begin (__cpu-relax!) (loop))
        item))))

(def (%vyukov-push-loop (pack :- :vector) val)
  (let loop ()
    (let ((st (:- (%vyukov-try-push! pack val) :fixnum)))
      (if (fx= st 2)
        (begin (__cpu-relax!) (loop))
        st))))

(def (%ch-wake-one-sender! (ch :- FiberChannel))
  (let ((meta ch.meta)
        (swq ch.send-waiters)
        (sk #f)
        (target #f)
        (pushed? #f))
    (%vspin-lock! meta 50)
    (when (and (fx= (:- (__atomic-fx-load meta 49 1) :fixnum) 0)
               (not (%wq-empty? swq)))
      (let* ((sw (##car (&%WaitQ-head swq)))
             (sval (##cdr sw))
             (st (%vyukov-push-loop ch.pack sval)))
        (when (fx= st 0)
          (%wq-pop! swq)
          (__atomic-fx-fetch-sub! meta 48 1 4)
          (set! sk (##car sw))
          (set! target ch.sched)
          (set! pushed? #t))))
    (%vspin-unlock! meta 50)
    (when pushed?
      (when (fx> (:- (__atomic-fx-load meta 32 4) :fixnum) 0)
        (%ch-wake-one-receiver! ch))
      (%sched-wake! target (cons sk #t)))))

(def (%ch-wake-one-receiver! (ch :- FiberChannel))
  (let ((meta ch.meta)
        (rwq ch.recv-waiters)
        (rk #f)
        (item #f)
        (target #f)
        (woke? #f))
    (%vspin-lock! meta 50)
    (when (not (%wq-empty? rwq))
      (let ((got (%vyukov-pop-loop ch.pack)))
        (unless (eq? got %CH-EMPTY)
          (set! rk (%wq-pop! rwq))
          (__atomic-fx-fetch-sub! meta 32 1 4)
          (set! item got)
          (set! target ch.sched)
          (set! woke? #t))))
    (%vspin-unlock! meta 50)
    (when woke?
      (when (fx> (:- (__atomic-fx-load meta 48 4) :fixnum) 0)
        (%ch-wake-one-sender! ch))
      (%sched-wake! target (cons rk item)))))

(def (fiber-channel-close! (ch : FiberChannel))
  => :void
  (let ((meta ch.meta)
        (rks '())
        (sks '())
        (sched #f))
    (%vspin-lock! meta 50)
    (when (fx= (:- (__atomic-fx-load meta 49 1) :fixnum) 0)
      (__atomic-fx-store! meta 49 1 4)
      (set! sched ch.sched)
      (let loop ()
        (unless (%wq-empty? ch.recv-waiters)
          (set! rks (cons (%wq-pop! ch.recv-waiters) rks))
          (loop)))
      (let loop ()
        (unless (%wq-empty? ch.send-waiters)
          (set! sks (cons (##car (%wq-pop! ch.send-waiters)) sks))
          (loop)))
      (__atomic-fx-store! meta 32 0 4)
      (__atomic-fx-store! meta 48 0 4))
    (%vspin-unlock! meta 50)
    (when sched
      (for-each (lambda (rk) (%sched-wake! sched (cons rk #!eof))) (reverse rks))
      (for-each (lambda (sk) (%sched-wake! sched (cons sk 'closed))) (reverse sks)))
    (void)))

;; Direct FIFO-safe handoff to a parked receiver only when buffered ring is empty.
(def (%ch-try-direct-handoff! (ch :- FiberChannel) val)
  (let ((meta ch.meta)
        (rwq ch.recv-waiters)
        (rk #f)
        (target #f)
        (closed? #f))
    (%vspin-lock! meta 50)
    (cond
     ((fx> (:- (__atomic-fx-load meta 49 1) :fixnum) 0)
      (set! closed? #t))
     ((and (not (%wq-empty? rwq))
           (fx= (:- (__atomic-fx-load meta 0 1) :fixnum)
                (:- (__atomic-fx-load meta 16 1) :fixnum)))
      (set! rk (%wq-pop! rwq))
      (__atomic-fx-fetch-sub! meta 32 1 4)
      (set! target ch.sched)))
    (%vspin-unlock! meta 50)
    (cond
     (closed? 'closed)
     (rk (%sched-wake! target (cons rk val)) #t)
     (else #f))))

(def (fiber-try-send! (ch : FiberChannel) val)
  => :boolean
  (let ((meta ch.meta))
    (if (fx> ch.cap 0)
      (let loop ()
        (when (fx> (:- (__atomic-fx-load meta 49 1) :fixnum) 0)
          (raise-io-closed fiber-try-send! "fiber channel is closed" ch))
        (let ((ho (if (fx> (:- (__atomic-fx-load meta 32 0) :fixnum) 0)
                    (%ch-try-direct-handoff! ch val)
                    #f)))
          (cond
           ((eq? ho 'closed)
            (raise-io-closed fiber-try-send! "fiber channel is closed" ch))
           (ho #t)
           (else
            (let ((st (:- (%vyukov-try-push! ch.pack val) :fixnum)))
              (cond
               ((fx= st 0)
                (when (fx> (:- (__atomic-fx-load meta 32 4) :fixnum) 0)
                  (%ch-wake-one-receiver! ch))
                #t)
               ((fx= st 1) #f)
               (else (__cpu-relax!) (loop))))))))
      ;; Unbuffered rendezvous (cap == 0)
      (let ((rwq ch.recv-waiters))
        (%vspin-lock! meta 50)
        (cond
         ((fx> (:- (__atomic-fx-load meta 49 1) :fixnum) 0)
          (%vspin-unlock! meta 50)
          (raise-io-closed fiber-try-send! "fiber channel is closed" ch))
         ((not (%wq-empty? rwq))
          (let ((rk (%wq-pop! rwq))
                (target ch.sched))
            (__atomic-fx-fetch-sub! meta 32 1 4)
            (%vspin-unlock! meta 50)
            (%sched-wake! target (cons rk val))
            #t))
         (else
          (%vspin-unlock! meta 50)
          #f))))))

(def (fiber-send! (ch : FiberChannel) val)
  (let ((meta ch.meta))
    (if (fx> ch.cap 0)
      (let loop ()
        (when (fx> (:- (__atomic-fx-load meta 49 1) :fixnum) 0)
          (raise-io-closed fiber-send! "fiber channel is closed" ch))
        (let ((ho (if (fx> (:- (__atomic-fx-load meta 32 0) :fixnum) 0)
                    (%ch-try-direct-handoff! ch val)
                    #f)))
          (cond
           ((eq? ho 'closed)
            (raise-io-closed fiber-send! "fiber channel is closed" ch))
           (ho #t)
           (else
            (let ((st (:- (%vyukov-try-push! ch.pack val) :fixnum)))
              (cond
               ((fx= st 0)
                (when (fx> (:- (__atomic-fx-load meta 32 4) :fixnum) 0)
                  (%ch-wake-one-receiver! ch))
                #t)
               ((fx= st 1)
                (if (in-fiber?)
                  (let ((res (perform %eff-park-send ch val)))
                    (when (eq? res 'closed)
                      (raise-io-closed fiber-send! "fiber channel is closed" ch))
                    #t)
                  (begin
                    (thread-yield!)
                    (loop))))
               (else (__cpu-relax!) (loop))))))))
      ;; Unbuffered rendezvous (cap == 0)
      (let ((rwq ch.recv-waiters))
        (%vspin-lock! meta 50)
        (cond
         ((fx> (:- (__atomic-fx-load meta 49 1) :fixnum) 0)
          (%vspin-unlock! meta 50)
          (raise-io-closed fiber-send! "fiber channel is closed" ch))
         ((not (%wq-empty? rwq))
          (let ((rk (%wq-pop! rwq))
                (target ch.sched))
            (__atomic-fx-fetch-sub! meta 32 1 4)
            (%vspin-unlock! meta 50)
            (%sched-wake! target (cons rk val))
            #t))
         ((in-fiber?)
          (%vspin-unlock! meta 50)
          (let ((res (perform %eff-park-send ch val)))
            (when (eq? res 'closed)
              (raise-io-closed fiber-send! "fiber channel is closed" ch))
            #t))
         (else
          (%vspin-unlock! meta 50)
          (thread-yield!)
          (fiber-send! ch val)))))))

(def (%park-send-waiter! sched k (ch :- FiberChannel) val)
  (let ((meta ch.meta)
        (rwq ch.recv-waiters)
        (swq ch.send-waiters))
    (%vspin-lock! meta 50)
    (unless ch.sched (set! ch.sched sched))
    (cond
     ((fx> (:- (__atomic-fx-load meta 49 1) :fixnum) 0)
      (%vspin-unlock! meta 50)
      (%sched-wake! sched (cons k 'closed)))
     ((and (not (%wq-empty? rwq))
           (or (fx= ch.cap 0)
               (fx= (:- (__atomic-fx-load meta 0 1) :fixnum)
                    (:- (__atomic-fx-load meta 16 1) :fixnum))))
      (let ((rk (%wq-pop! rwq)))
        (__atomic-fx-fetch-sub! meta 32 1 4)
        (%vspin-unlock! meta 50)
        (%sched-wake! sched (cons rk val))
        (%sched-wake! sched (cons k #t))))
     ((fx> ch.cap 0)
      ;; Publish tx-waiters += 1 with SeqCst BEFORE final ring re-check (Dekker!)
      (__atomic-fx-fetch-add! meta 48 1 4)
      (let ((st (%vyukov-push-loop ch.pack val)))
        (if (fx= st 0)
          (begin
            (__atomic-fx-fetch-sub! meta 48 1 4)
            (%vspin-unlock! meta 50)
            (when (fx> (:- (__atomic-fx-load meta 32 4) :fixnum) 0)
              (%ch-wake-one-receiver! ch))
            (%sched-wake! sched (cons k #t)))
          (begin
            (%wq-push! swq (cons k val))
            (%vspin-unlock! meta 50)))))
     (else
      (__atomic-fx-fetch-add! meta 48 1 4)
      (%wq-push! swq (cons k val))
      (%vspin-unlock! meta 50)))))

(def (fiber-try-recv! (ch : FiberChannel) (default : :t := #f))
  (let ((meta ch.meta))
    (if (fx> ch.cap 0)
      (let ((item (%vyukov-pop-loop ch.pack)))
        (if (not (eq? item %CH-EMPTY))
          (begin
            (when (fx> (:- (__atomic-fx-load meta 48 4) :fixnum) 0)
              (%ch-wake-one-sender! ch))
            item)
          (if (fx> (:- (__atomic-fx-load meta 49 1) :fixnum) 0)
            (let ((item2 (%vyukov-pop-loop ch.pack)))
              (if (eq? item2 %CH-EMPTY) #!eof item2))
            default)))
      ;; Unbuffered rendezvous (cap == 0)
      (let ((swq ch.send-waiters))
        (%vspin-lock! meta 50)
        (cond
         ((not (%wq-empty? swq))
          (let* ((sw (%wq-pop! swq))
                 (sk (##car sw))
                 (sval (##cdr sw))
                 (target ch.sched))
            (__atomic-fx-fetch-sub! meta 48 1 4)
            (%vspin-unlock! meta 50)
            (%sched-wake! target (cons sk #t))
            sval))
         ((fx> (:- (__atomic-fx-load meta 49 1) :fixnum) 0)
          (%vspin-unlock! meta 50)
          #!eof)
         (else
          (%vspin-unlock! meta 50)
          default))))))

(def (fiber-recv! (ch : FiberChannel))
  (let ((meta ch.meta))
    (if (fx> ch.cap 0)
      (let ((item (%vyukov-pop-loop ch.pack)))
        (if (not (eq? item %CH-EMPTY))
          (begin
            (when (fx> (:- (__atomic-fx-load meta 48 4) :fixnum) 0)
              (%ch-wake-one-sender! ch))
            item)
          (if (fx> (:- (__atomic-fx-load meta 49 1) :fixnum) 0)
            (let ((item2 (%vyukov-pop-loop ch.pack)))
              (if (eq? item2 %CH-EMPTY) #!eof item2))
            (begin
              (%current-wctx)
              (perform %eff-park-recv ch)))))
      ;; Unbuffered rendezvous (cap == 0)
      (let* ((ctx (%current-wctx))
             (sched (&%WorkerCtx-sched ctx))
             (swq ch.send-waiters))
        (%vspin-lock! meta 50)
        (unless ch.sched (set! ch.sched sched))
        (cond
         ((not (%wq-empty? swq))
          (let* ((sw (%wq-pop! swq))
                 (sk (##car sw))
                 (sval (##cdr sw)))
            (__atomic-fx-fetch-sub! meta 48 1 4)
            (%vspin-unlock! meta 50)
            (%sched-wake! sched (cons sk #t))
            sval))
         ((fx> (:- (__atomic-fx-load meta 49 1) :fixnum) 0)
          (%vspin-unlock! meta 50)
          #!eof)
         (else
          (%vspin-unlock! meta 50)
          (perform %eff-park-recv ch)))))))

(def (%park-recv-waiter! sched k (ch :- FiberChannel))
  (let ((meta ch.meta)
        (rwq ch.recv-waiters)
        (swq ch.send-waiters))
    (%vspin-lock! meta 50)
    (unless ch.sched (set! ch.sched sched))
    (if (fx> ch.cap 0)
      (begin
        ;; Publish rx-waiters += 1 with SeqCst BEFORE final ring re-check (Dekker!)
        (__atomic-fx-fetch-add! meta 32 1 4)
        (let ((item (%vyukov-pop-loop ch.pack)))
          (cond
           ((not (eq? item %CH-EMPTY))
            (__atomic-fx-fetch-sub! meta 32 1 4)
            (%vspin-unlock! meta 50)
            (when (fx> (:- (__atomic-fx-load meta 48 4) :fixnum) 0)
              (%ch-wake-one-sender! ch))
            (%sched-wake! sched (cons k item)))
           ((fx> (:- (__atomic-fx-load meta 49 1) :fixnum) 0)
            (__atomic-fx-fetch-sub! meta 32 1 4)
            (%vspin-unlock! meta 50)
            (%sched-wake! sched (cons k #!eof)))
           (else
            (%wq-push! rwq k)
            (%vspin-unlock! meta 50)))))
      ;; Unbuffered rendezvous (cap == 0)
      (cond
       ((not (%wq-empty? swq))
        (let* ((sw (%wq-pop! swq))
               (sk (##car sw))
               (sval (##cdr sw)))
          (__atomic-fx-fetch-sub! meta 48 1 4)
          (%vspin-unlock! meta 50)
          (%sched-wake! sched (cons sk #t))
          (%sched-wake! sched (cons k sval))))
       ((fx> (:- (__atomic-fx-load meta 49 1) :fixnum) 0)
        (%vspin-unlock! meta 50)
        (%sched-wake! sched (cons k #!eof)))
       (else
        (__atomic-fx-fetch-add! meta 32 1 4)
        (%wq-push! rwq k)
        (%vspin-unlock! meta 50))))))

;;;----------------------------------------------------------------------------
;;; 3-State Lock-Free Cooperative FiberMutex (Zero-Spinlock Fast Path)
;;;
;;; cells[0]  = state (0=unlocked, 1=locked uncontended, 2=locked with waiters)
;;; cells[16] = TTAS spinlock (contended park / handoff slow path only)

(defstruct FiberMutex
  ((cells   :- :vector)
   (waiters :- %WaitQ)
   sched)
  final: #t)

(def (make-fiber-mutex)
  => FiberMutex
  (FiberMutex (make-vector 32 0) (%WaitQ '() '()) #f))

(defalias fiber-mutex? FiberMutex?)

(def (fiber-mutex-lock! (fm : FiberMutex))
  => :void
  (let ((cells fm.cells))
    (unless (fx= (:- (__atomic-fx-cas! cells 0 0 1 1) :fixnum) 0)
      (%current-wctx)
      (perform %eff-park-mutex fm))
    (void)))

(def (%park-mutex-waiter! sched k (fm :- FiberMutex))
  (let ((cells fm.cells)
        (acquired? #f))
    (%vspin-lock! cells 16)
    (unless fm.sched (set! fm.sched sched))
    (let loop ()
      (let ((cur (:- (__atomic-fx-load cells 0 1) :fixnum)))
        (cond
         ((fx= cur 0)
          (if (fx= (:- (__atomic-fx-cas! cells 0 0 1 1) :fixnum) 0)
            (set! acquired? #t)
            (loop)))
         ((fx= cur 1)
          (if (fx= (:- (__atomic-fx-cas! cells 0 1 2 3) :fixnum) 1)
            (%wq-push! fm.waiters k)
            (loop)))
         (else
          (%wq-push! fm.waiters k)))))
    (%vspin-unlock! cells 16)
    (when acquired?
      (%sched-wake! sched (cons k #t)))))

(def (fiber-mutex-unlock! (fm : FiberMutex))
  => :void
  (let* ((cells fm.cells)
         (prev (:- (__atomic-fx-cas! cells 0 1 0 2) :fixnum)))
    (cond
     ((fx= prev 1) (void))
     ((fx= prev 0)
      (raise-context-error fiber-mutex-unlock! "fiber mutex is not locked" fm))
     (else
      (let ((next-k #f)
            (sched #f))
        (%vspin-lock! cells 16)
        (if (not (%wq-empty? fm.waiters))
          (begin
            (set! next-k (%wq-pop! fm.waiters))
            (set! sched fm.sched)
            ;; Direct ownership handoff: drop to state=1 if queue is now empty, else stay 2
            (when (%wq-empty? fm.waiters)
              (__atomic-fx-store! cells 0 1 2)))
          (__atomic-fx-store! cells 0 0 2))
        (%vspin-unlock! cells 16)
        (when next-k
          (%sched-wake! sched (cons next-k #t)))
        (void))))))

;; Exception-safe fiber lock (intentionally no continuation barrier so fibers
;; may cooperatively yield, sleep, or await FiberChannel while holding fm).
(def (with-fiber-lock (fm : FiberMutex) (proc : :procedure))
  (let ((eh (current-exception-handler)))
    (fiber-mutex-lock! fm)
    (with-exception-handler
     (lambda (e)
       (fiber-mutex-unlock! fm)
       (eh e))
     (lambda ()
       (let ((res (proc)))
         (fiber-mutex-unlock! fm)
         res)))))

;;;----------------------------------------------------------------------------
;;; Lock-Free Cooperative FiberSemaphore (Zero-Spinlock Fast Path + Dekker)
;;;
;;; cells[0]  = permits (128B isolated atomic counter)
;;; cells[16] = waiters-count (Dekker SeqCst against permits fetch-add)
;;; cells[17] = TTAS spinlock (contended park / handoff slow path only)

(defstruct FiberSemaphore
  ((cells   :- :vector)
   (waiters :- %WaitQ)
   sched)
  final: #t)

(def (make-fiber-semaphore (permits : :fixnum))
  => FiberSemaphore
  (when (fx< permits 0)
    (raise-bad-argument make-fiber-semaphore "non-negative fixnum permits" permits))
  (let ((cells (make-vector 32 0)))
    (##vector-set! cells 0 permits)
    (FiberSemaphore cells (%WaitQ '() '()) #f)))

(defalias fiber-semaphore? FiberSemaphore?)

(def (%sem-try-acquire-fast! (cells :- :vector))
  => :boolean
  (let loop ()
    (let ((c (:- (__atomic-fx-load cells 0 1) :fixnum)))
      (if (fx> c 0)
        (if (fx= (:- (__atomic-fx-cas! cells 0 c (fx- c 1) 1) :fixnum) c)
          #t
          (loop))
        #f))))

(def (fiber-semaphore-acquire! (sem : FiberSemaphore))
  => :void
  (unless (%sem-try-acquire-fast! sem.cells)
    (%current-wctx)
    (perform %eff-park-sem sem))
  (void))

(def (%park-sem-waiter! sched k (sem :- FiberSemaphore))
  (let ((cells sem.cells)
        (acquired? #f))
    (%vspin-lock! cells 17)
    (unless sem.sched (set! sem.sched sched))
    ;; Publish waiters-count += 1 with SeqCst BEFORE re-checking permits (Dekker!)
    (__atomic-fx-fetch-add! cells 16 1 4)
    (if (%sem-try-acquire-fast! cells)
      (begin
        (__atomic-fx-fetch-sub! cells 16 1 4)
        (set! acquired? #t))
      (%wq-push! sem.waiters k))
    (%vspin-unlock! cells 17)
    (when acquired?
      (%sched-wake! sched (cons k #t)))))

(def (fiber-semaphore-release! (sem : FiberSemaphore))
  => :void
  (let ((cells sem.cells))
    (if (fx= (:- (__atomic-fx-load cells 16 1) :fixnum) 0)
      (begin
        (__atomic-fx-fetch-add! cells 0 1 4)
        (when (fx> (:- (__atomic-fx-load cells 16 4) :fixnum) 0)
          ;; Raced with a concurrently parking waiter: reclaim permit and wake it!
          (let ((woke '())
                (sched #f))
            (%vspin-lock! cells 17)
            (set! sched sem.sched)
            (let drain ()
              (when (and (not (%wq-empty? sem.waiters))
                         (%sem-try-acquire-fast! cells))
                (__atomic-fx-fetch-sub! cells 16 1 4)
                (set! woke (cons (%wq-pop! sem.waiters) woke))
                (drain)))
            (%vspin-unlock! cells 17)
            (when sched
              (for-each (lambda (k) (%sched-wake! sched (cons k #t))) (reverse woke))))))
      (let ((next-k #f)
            (sched #f))
        (%vspin-lock! cells 17)
        (if (not (%wq-empty? sem.waiters))
          (begin
            (set! next-k (%wq-pop! sem.waiters))
            (__atomic-fx-fetch-sub! cells 16 1 4)
            (set! sched sem.sched))
          (__atomic-fx-fetch-add! cells 0 1 4))
        (%vspin-unlock! cells 17)
        (when next-k
          (%sched-wake! sched (cons next-k #t)))))
    (void)))

(def (with-fiber-semaphore (sem : FiberSemaphore) (proc : :procedure))
  (let ((eh (current-exception-handler)))
    (fiber-semaphore-acquire! sem)
    (with-exception-handler
     (lambda (e)
       (fiber-semaphore-release! sem)
       (eh e))
     (lambda ()
       (let ((res (proc)))
         (fiber-semaphore-release! sem)
         res)))))

;;;----------------------------------------------------------------------------
;;; Work-Stealing Scheduler Loop & run-fibers (Phase C18-C21 + Cascade Parker)

(def (%init-scheduler-handlers! (sched :- %FiberScheduler))
  (let ((st sched.state))
    (set! sched.handler-entries
      (list
       (%make-handler-entry
        %eff-yield 'suspend
        (lambda (k)
          (let ((ctx (%carrier-wctx)))
            (%sched-push-dq-pair! sched (&%WorkerCtx-dq ctx) k #f)
            (%sched-wake-one! sched))
          (void)))
       (%make-handler-entry
        %eff-park-promise 'suspend
        (lambda (k p)
          (%nursery-flush! (%carrier-wctx))
          (%park-promise-waiter! sched k p)
          (void)))
       (%make-handler-entry
        %eff-park-nursery 'suspend
        (lambda (k n)
          (%nursery-flush! (%carrier-wctx))
          (%park-nursery-waiter! sched k n)
          (void)))
       (%make-handler-entry
        %eff-park-send 'suspend
        (lambda (k ch val)
          (%nursery-flush! (%carrier-wctx))
          (%park-send-waiter! sched k ch val)
          (void)))
       (%make-handler-entry
        %eff-park-recv 'suspend
        (lambda (k ch)
          (%nursery-flush! (%carrier-wctx))
          (%park-recv-waiter! sched k ch)
          (void)))
       (%make-handler-entry
        %eff-park-sleep 'suspend
        (lambda (k secs)
          (%nursery-flush! (%carrier-wctx))
          (%park-sleep-waiter! sched k secs)
          (void)))
       (%make-handler-entry
        %eff-park-mutex 'suspend
        (lambda (k fm)
          (%nursery-flush! (%carrier-wctx))
          (%park-mutex-waiter! sched k fm)
          (void)))
       (%make-handler-entry
        %eff-park-sem 'suspend
        (lambda (k sem)
          (%nursery-flush! (%carrier-wctx))
          (%park-sem-waiter! sched k sem)
          (void)))))
    (set! sched.return-fn
      (lambda (_)
        (let ((prev (:- (__atomic-fx-fetch-sub! st %FS-IDX-ACTIVE 1 3) :fixnum)))
          (when (fx= prev 1)
            (%sched-shutdown-parkers! sched)))
        (void)))
    (set! sched.nursery-return-fn
      (lambda (_) (void)))))

;; Wrap detached fiber body inside the handler prompt with an exception catcher so
;; an uncaught exception in a detached fiber never kills a carrier worker thread
;; or leaks active-fibers.
(def (%run-fiber-thunk (sched :- %FiberScheduler) thunk)
  (%call-with-handler-entries
   sched.handler-entries
   sched.return-fn
   (lambda ()
     (with-catch
      (lambda (_) (void))
      thunk))))

;; Fast nursery-scoped fiber runner: uses pre-allocated Nursery.err-handler and
;; Phase C18 +32 batched completion credits (zero sched.active-fibers traffic!).
(def (%run-nursery-thunk (sched :- %FiberScheduler) (n :- Nursery) thunk)
  (%call-with-handler-entries
   sched.handler-entries
   sched.nursery-return-fn
   (lambda ()
     (let ((res (with-catch (&Nursery-err-handler n) thunk)))
       (unless (eq? res %NURSERY-ERR-TAG)
         (%nursery-child-done-batched! (%carrier-wctx) n))))))

;; Bounded searching-worker permit (caps concurrent steal scanners to max(1, W/2)).
(def (%sched-try-acquire-search! (sched :- %FiberScheduler))
  => :boolean
  (let ((st sched.state)
        (cap sched.max-searching))
    (let loop ((i 0))
      (if (fx>= i 4)
        #f
        (let ((cur (:- (__atomic-fx-load st %FS-IDX-SEARCH 1) :fixnum)))
          (if (fx>= cur cap)
            #f
            (if (fx= (:- (__atomic-fx-cas! st %FS-IDX-SEARCH cur (fx+ cur 1) 3) :fixnum) cur)
              #t
              (loop (fx+ i 1)))))))))

(definline (%sched-release-search! (sched :- %FiberScheduler))
  (__atomic-fx-fetch-sub! sched.state %FS-IDX-SEARCH 1 3))

;; Sticky-victim half-deque batch steal scan (returns count stolen: 0..16).
(def (%worker-try-steal-scan (ctx :- %WorkerCtx) num-workers deques)
  => :fixnum
  (let ((wid ctx.wid)
        (local-dq ctx.dq)
        (pick-out ctx.pick-out)
        (start ctx.steal-cursor))
    (let loop ((tried 1) (victim start))
      (if (fx>= tried num-workers)
        (begin
          ;; Pseudorandomly advance cursor on full miss to desynchronize thieves
          (set! ctx.steal-cursor (fxmodulo (fx+ (fx* start 5) 1) num-workers))
          0)
        (let ((v (if (fx= victim wid)
                   (let ((n (fx+ victim 1)))
                     (if (fx>= n num-workers) 0 n))
                   victim)))
          (let ((stolen (:- (%fq-steal-batch! (##vector-ref deques v) local-dq pick-out) :fixnum)))
            (if (fx> stolen 0)
              (begin
                (set! ctx.steal-cursor v)
                stolen)
              (let ((nxt (fx+ v 1)))
                (loop (fx+ tried 1)
                      (if (fx>= nxt num-workers) 0 nxt))))))))))

;; Throttled steal for the hot spin loop (num_searching <= max(1, W/2)).
(def (%worker-try-steal-throttled (ctx :- %WorkerCtx) (sched :- %FiberScheduler) num-workers deques)
  => :fixnum
  (if (or (fx<= num-workers 1)
          (not (%sched-try-acquire-search! sched)))
    0
    (let ((stolen (%worker-try-steal-scan ctx num-workers deques)))
      (%sched-release-search! sched)
      stolen)))

;; Unthrottled poll inside Dekker park double-check (serialized under park-mx):
;; scans lifo, local-dq, global-q, and ALL W-1 peer deques without throttling
;; to strictly preserve Quint parkDoubleCheckSleep (totalQueued == 0).
(def (%worker-poll-any-unthrottled (ctx :- %WorkerCtx) (sched :- %FiberScheduler)
                                   num-workers deques local-dq)
  (let ((pick-out ctx.pick-out))
    (cond
     (ctx.lifo
      (let ((t ctx.lifo)
            (n ctx.lifo-n))
        (set! ctx.lifo #f)
        (set! ctx.lifo-n #f)
        (values #t t n)))
     ((%fq-pop! local-dq pick-out)
      (let ((t (##vector-ref pick-out 0))
            (n (##vector-ref pick-out 1)))
        (##vector-set! pick-out 0 #f)
        (##vector-set! pick-out 1 #f)
        (values #t t n)))
     (else
      (let-values (((ok2 t2) (%sched-try-dequeue-global! sched)))
        (if ok2
          (values #t t2 #f)
          (if (fx> num-workers 1)
            (let ((stolen (%worker-try-steal-scan ctx num-workers deques)))
              (if (fx> stolen 0)
                (let ((t (##vector-ref pick-out 0))
                      (n (##vector-ref pick-out 1)))
                  (##vector-set! pick-out 0 #f)
                  (##vector-set! pick-out 1 #f)
                  (values #t t n))
                (values #f #f #f)))
            (values #f #f #f))))))))

(def (%worker-exec-task (sched :- %FiberScheduler) task n)
  (cond
   (n
    (%run-nursery-thunk sched n task))
   ((procedure? task)
    (%run-fiber-thunk sched task))
   ((effect-continuation? task)
    (resume task #f))
   ((effect-continuation? (##car task))
    (resume (##car task) (##cdr task)))
   (else
    ;; Overflowed nursery task (cons thunk nursery) dequeued from global-q
    (%run-nursery-thunk sched (##cdr task) (##car task)))))

(def (%worker-loop (sched :- %FiberScheduler) wid)
  (%set-carrier-qos!)
  (let* ((num-workers sched.num-workers)
         (deques sched.deques)
         (local-dq (vector-ref deques wid))
         (st sched.state)
         (park-mx sched.park-mx)
         (park-cv sched.park-cv)
         (pick-out (vector #f #f))
         (init-cursor (if (fx> num-workers 1)
                        (fxmodulo (fx+ wid 1) num-workers)
                        0))
         (ctx (%WorkerCtx sched wid local-dq
                          #f #f 0
                          init-cursor
                          #f 0
                          pick-out)))
    (thread-specific-set! (current-thread) ctx)
    (let loop ((ticks 0) (idle-spins 0) (is-spinning? #f))
      ;; Periodic nursery-credit flush every 16 ticks for bounded join latency
      (when (and (fx= (fxand ticks 15) 15)
                 (fx> (&%WorkerCtx-nursery-credit ctx) 0))
        (%nursery-flush! ctx))
      (let ((got-task? #f)
            (task #f)
            (task-n #f)
            (stolen-n 0))
        ;; 0. Periodically poll global-q every 32 local ticks (1-load fast skip!)
        (when (fx= (fxand ticks 31) 31)
          (let-values (((ok t) (%sched-try-dequeue-global! sched)))
            (when ok
              (set! (&%WorkerCtx-lifo-streak ctx) 0)
              (set! got-task? #t)
              (set! task t))))
        ;; 1. Fastest path: private 1-slot LIFO (0 atomics!) if streak < 8
        (when (and (not got-task?)
                   (&%WorkerCtx-lifo ctx)
                   (fx< (&%WorkerCtx-lifo-streak ctx) %MAX-LIFO-STREAK))
          (set! task (&%WorkerCtx-lifo ctx))
          (set! task-n (&%WorkerCtx-lifo-n ctx))
          (set! (&%WorkerCtx-lifo ctx) #f)
          (set! (&%WorkerCtx-lifo-n ctx) #f)
          (set! (&%WorkerCtx-lifo-streak ctx) (fx+ (&%WorkerCtx-lifo-streak ctx) 1))
          (set! got-task? #t))
        ;; 2. Local 4096-slot flat dual-array runqueue
        (when (not got-task?)
          (when (%fq-pop! local-dq pick-out)
            (set! (&%WorkerCtx-lifo-streak ctx) 0)
            (set! task (##vector-ref pick-out 0))
            (set! task-n (##vector-ref pick-out 1))
            (##vector-set! pick-out 0 #f)
            (##vector-set! pick-out 1 #f)
            (set! got-task? #t)))
        ;; 3. Fallback to private LIFO if streak hit cap while local-dq was empty
        (when (and (not got-task?) (&%WorkerCtx-lifo ctx))
          (set! task (&%WorkerCtx-lifo ctx))
          (set! task-n (&%WorkerCtx-lifo-n ctx))
          (set! (&%WorkerCtx-lifo ctx) #f)
          (set! (&%WorkerCtx-lifo-n ctx) #f)
          (set! (&%WorkerCtx-lifo-streak ctx) 0)
          (set! got-task? #t))
        ;; 4. Global lock-free wakeup/overflow queue (1-load fast skip when pending == 0)
        (when (not got-task?)
          (let-values (((ok t) (%sched-try-dequeue-global! sched)))
            (when ok
              (set! (&%WorkerCtx-lifo-streak ctx) 0)
              (set! got-task? #t)
              (set! task t))))
        ;; 5. Throttled sticky-victim half-deque batch steal (num_searching <= W/2)
        (when (not got-task?)
          (let ((sn (%worker-try-steal-throttled ctx sched num-workers deques)))
            (when (fx> sn 0)
              (set! (&%WorkerCtx-lifo-streak ctx) 0)
              (set! task (##vector-ref pick-out 0))
              (set! task-n (##vector-ref pick-out 1))
              (##vector-set! pick-out 0 #f)
              (##vector-set! pick-out 1 #f)
              (set! stolen-n sn)
              (set! got-task? #t))))
        (if got-task?
          (begin
            (cond
             (is-spinning?
              (let ((prev (:- (__atomic-fx-fetch-sub! st %FS-IDX-PARK 1 4) :fixnum)))
                ;; Formally verified unconditional Rayon/Tokio cascade wakeup
                ;; (fiber_steal_cascade_wakeup_smp.qnt): when the last spinning
                ;; worker transitions to BUSY and sleepers remain, wake one
                ;; sibling so tasks in ANY peer deque fan out across all W cores.
                (when (and (fx= (fxand prev %FS-SPIN-MASK) 1)
                           (fx> (fxand prev %FS-SLEEP-MASK) 0))
                  (%sched-wake-one! sched))))
             ((fx> stolen-n 1)
              ;; Busy worker stole a batch into its own local-dq; wake a sleeper if any.
              (%sched-wake-one! sched)))
            (%worker-exec-task sched task task-n)
            (loop (fx+ ticks 1) 0 #f))
          (if (fx> (&%WorkerCtx-nursery-credit ctx) 0)
            ;; Flush buffered nursery credits immediately before idling/parking,
            ;; then re-poll once in case flushing woke a parent nursery waiter locally.
            (begin
              (%nursery-flush! ctx)
              (loop ticks idle-spins is-spinning?))
            (cond
             ((fx<= (:- (__atomic-fx-load st %FS-IDX-ACTIVE 1) :fixnum) 0)
              (when is-spinning?
                (__atomic-fx-fetch-sub! st %FS-IDX-PARK 1 4))
              (%sched-shutdown-parkers! sched)
              (void))
             ((fx< idle-spins 32)
              (unless is-spinning?
                (__atomic-fx-fetch-add! st %FS-IDX-PARK 1 4))
              (%idle-pause! (fxarithmetic-shift-right idle-spins 3))
              (loop ticks (fx+ idle-spins 1) #t))
             ((fx< idle-spins 48)
              (%os-sched-yield!)
              (loop ticks (fx+ idle-spins 1) #t))
             (else
              ;; Park on condvar with Dekker/SeqCst unthrottled double-check (0% idle CPU!)
              (when is-spinning?
                (__atomic-fx-fetch-sub! st %FS-IDX-PARK 1 4))
              (mutex-lock! park-mx)
              (__atomic-fx-fetch-add! st %FS-IDX-PARK %FS-SLEEP-UNIT 4)
              (let-values (((ok2 t2 n2)
                            (%worker-poll-any-unthrottled ctx sched num-workers deques local-dq)))
                (cond
                 (ok2
                  (__atomic-fx-fetch-sub! st %FS-IDX-PARK %FS-SLEEP-UNIT 4)
                  (mutex-unlock! park-mx)
                  ;; Formally verified unconditional cascade wakeup on Dekker recovery
                  (%sched-wake-one! sched)
                  (%worker-exec-task sched t2 n2)
                  (loop (fx+ ticks 1) 0 #f))
                 ((or (fx<= (:- (__atomic-fx-load st %FS-IDX-ACTIVE 1) :fixnum) 0)
                      (fx> (:- (__atomic-fx-load st %FS-IDX-STOPPED 1) :fixnum) 0))
                  (__atomic-fx-fetch-sub! st %FS-IDX-PARK %FS-SLEEP-UNIT 4)
                  (mutex-unlock! park-mx)
                  (void))
                 (else
                  (mutex-unlock! park-mx park-cv)
                  (__atomic-fx-fetch-add! st %FS-IDX-PARK (fx- 1 %FS-SLEEP-UNIT) 4)
                  (__atomic-fx-fetch-and! st %FS-IDX-PARK (fxnot %FS-WAKING-BIT) 4)
                  (loop ticks 0 #t))))))))))))

(def (run-fibers (thunk : :procedure) workers: (workers : :t := (##current-vm-processor-count)))
  (let* ((w (max 1 (if (fixnum? workers) workers 1)))
         (max-search (max 1 (fxarithmetic-shift-right w 1)))
         (deques (let ((v (make-vector w #f)))
                   (let loop ((i 0))
                     (when (fx< i w)
                       (vector-set! v i (%make-local-runq))
                       (loop (fx+ i 1))))
                   v))
         (global-q (make-lf-queue))
         (st (let ((v (make-vector 96 0)))
               (vector-set! v %FS-IDX-ACTIVE 1)
               v))
         (park-mx (make-mutex 'fiber-park))
         (park-cv (make-condition-variable 'fiber-park))
         (timer-mx (make-mutex 'fiber-timer))
         (timer-cv (make-condition-variable 'fiber-timer))
         (root-done (make-atomic-fxbox 0))
         (root-box (cons #f #f))
         (sched (%FiberScheduler w max-search deques global-q st
                                 park-mx park-cv
                                 timer-mx timer-cv '() #f
                                 root-done root-box #f #f #f)))
    (%init-scheduler-handlers! sched)
    (%sched-enqueue-global!
     sched
     (lambda ()
       (with-catch
        (lambda (e)
          (set-car! root-box #f)
          (set-cdr! root-box e)
          (atomic-fxbox-set! root-done 1 (memory-order release)))
        (lambda ()
          (let ((res (thunk)))
            (set-car! root-box #t)
            (set-cdr! root-box res)
            (atomic-fxbox-set! root-done 1 (memory-order release)))))))
    (let ((threads
           (let loop ((i 0) (acc '()))
             (if (fx= i w)
               acc
               (let ((wid i))
                 (loop (fx+ i 1)
                       (cons (thread-start!
                              (make-thread
                               (lambda () (%worker-loop sched wid))
                               (list 'fiber-worker wid)))
                             acc)))))))
      (for-each thread-join! threads))
    (%sched-shutdown-parkers! sched)
    (let ((tt (&%FiberScheduler-timer-thread sched)))
      (when tt
        (thread-join! tt)))
    (if (car root-box)
      (cdr root-box)
      (raise (cdr root-box)))))

;;;----------------------------------------------------------------------------
;;; Structured Parallel Combinators (Work-Stealing across SMP Cores)

(def (%parallel-for-each-in-fiber f lst)
  (with-nursery
   (lambda (n)
     (for-each (lambda (x)
                 (fiber-spawn (lambda () (f x)) n))
               lst))))

(def (parallel-for-each (f : :procedure) (lst : :list)
                        workers: (workers : :t := (##current-vm-processor-count)))
  => :void
  (if (in-fiber?)
    (%parallel-for-each-in-fiber f lst)
    (run-fibers (lambda () (%parallel-for-each-in-fiber f lst))
                workers: workers))
  (void))

(def (%parallel-map-in-fiber f lst)
  (let* ((items (list->vector lst))
         (len (vector-length items))
         (out (make-vector len #f)))
    (with-nursery
     (lambda (n)
       (let loop ((i 0))
         (when (fx< i len)
           (let ((idx i)
                 (item (vector-ref items i)))
             (fiber-spawn (lambda () (vector-set! out idx (f item))) n))
           (loop (fx+ i 1))))))
    (vector->list out)))

(def (parallel-map (f : :procedure) (lst : :list)
                   workers: (workers : :t := (##current-vm-processor-count)))
  => :list
  (:- (if (in-fiber?)
        (%parallel-map-in-fiber f lst)
        (run-fibers (lambda () (%parallel-map-in-fiber f lst))
                    workers: workers))
      :list))
