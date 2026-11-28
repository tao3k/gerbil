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
;;; Wait-Free Single-Shot FiberPromise (Zero Spinlock / Zero Channel Overhead)
;;;
;;; 4-state atomic protocol in state[0]:
;;;   0 = empty (no waiter, no value)
;;;   1 = waiter parked (waiter-k and sched published)
;;;   2 = claimed by single winning resolver (writing val)
;;;   3 = resolved (val published via release store)

(defstruct FiberPromise
  ((state :- :vector)
   val
   waiter-k
   sched)
  final: #t)

(def (make-fiber-promise)
  => FiberPromise
  (FiberPromise (vector 0) #f #f #f))

(defalias fiber-promise? FiberPromise?)

(def (fiber-promise-resolved? (p : FiberPromise))
  => :boolean
  (fx= (:- (__atomic-fx-load p.state 0 1) :fixnum) 3))

;; Atomically resolves p at most once; returns #t for the winning resolver, #f for losers.
(def (fiber-promise-resolve! (p : FiberPromise) val)
  => :boolean
  (let ((st p.state))
    (let loop ()
      (let ((cur (:- (__atomic-fx-load st 0 1) :fixnum)))
        (cond
         ((fx>= cur 2) #f)
         ((fx= cur 0)
          (if (fx= (:- (__atomic-fx-cas! st 0 0 2 3) :fixnum) 0)
            (begin
              (set! p.val val)
              (__atomic-fx-store! st 0 3 2)
              #t)
            (loop)))
         (else
          (if (fx= (:- (__atomic-fx-cas! st 0 1 2 3) :fixnum) 1)
            (let ((wk p.waiter-k)
                  (sc p.sched))
              (set! p.val val)
              (__atomic-fx-store! st 0 3 2)
              (%sched-wake! sc (cons wk val))
              #t)
            (loop))))))))

(def (fiber-promise-await! (p : FiberPromise))
  (let ((st p.state))
    (let ((cur (:- (__atomic-fx-load st 0 1) :fixnum)))
      (cond
       ((fx= cur 3) p.val)
       ((fx= cur 2)
        (let spin ()
          (if (fx= (:- (__atomic-fx-load st 0 1) :fixnum) 3)
            p.val
            (begin (__cpu-relax!) (spin)))))
       ((in-fiber?)
        (perform %eff-park-promise p))
       (else
        (let wait ()
          (if (fx= (:- (__atomic-fx-load st 0 1) :fixnum) 3)
            p.val
            (begin (thread-yield!) (wait)))))))))

(def (%park-promise-waiter! sched k (p :- FiberPromise))
  (let ((st p.state))
    (set! p.waiter-k k)
    (set! p.sched sched)
    (let ((prev (:- (__atomic-fx-cas! st 0 0 1 3) :fixnum)))
      (unless (fx= prev 0)
        ;; Explicit acquire load guarantees release->acquire ordering for p.val on ARM64.
        (let spin ((s (:- (__atomic-fx-load st 0 1) :fixnum)))
          (if (fx= s 3)
            (%sched-wake! sched (cons k p.val))
            (begin
              (__cpu-relax!)
              (spin (:- (__atomic-fx-load st 0 1) :fixnum)))))))))

;;;----------------------------------------------------------------------------
;;; Direct-Style Bounded & Unbuffered Fiber Channel (Zero Lost Wakeup + Close)

(defstruct FiberChannel
  ((lock         :- AtomicFxBox)
   (cap          :- :fixnum)
   (buf          :- :vector)
   (head         :- :fixnum)
   (tail         :- :fixnum)
   (count        :- :fixnum)
   (closed?      :- :boolean)
   (recv-waiters :- %WaitQ)
   (send-waiters :- %WaitQ)
   sched)
  final: #t)

(def (make-fiber-channel (capacity : :fixnum := 16))
  => FiberChannel
  (when (fx< capacity 0)
    (raise-bad-argument make-fiber-channel "non-negative fixnum capacity" capacity))
  (FiberChannel
   (make-atomic-fxbox 0)
   capacity
   (if (fx> capacity 0) (make-vector capacity #f) '#())
   0 0 0 #f
   (%WaitQ '() '())
   (%WaitQ '() '())
   #f))

(defalias fiber-channel? FiberChannel?)

(def (fiber-channel-closed? (ch : FiberChannel))
  => :boolean
  (%fspin-lock! ch.lock)
  (let ((c ch.closed?))
    (%fspin-unlock! ch.lock)
    (:- c :boolean)))

(def (fiber-channel-close! (ch : FiberChannel))
  => :void
  (let ((rks '())
        (sks '())
        (sched #f))
    (%fspin-lock! ch.lock)
    (unless ch.closed?
      (set! ch.closed? #t)
      (set! sched ch.sched)
      (let loop ()
        (unless (%wq-empty? ch.recv-waiters)
          (set! rks (cons (%wq-pop! ch.recv-waiters) rks))
          (loop)))
      (let loop ()
        (unless (%wq-empty? ch.send-waiters)
          (set! sks (cons (##car (%wq-pop! ch.send-waiters)) sks))
          (loop))))
    (%fspin-unlock! ch.lock)
    (when sched
      (for-each (lambda (rk) (%sched-wake! sched (cons rk #!eof))) (reverse rks))
      (for-each (lambda (sk) (%sched-wake! sched (cons sk 'closed))) (reverse sks)))
    (void)))

(def (fiber-try-send! (ch : FiberChannel) val)
  => :boolean
  (let* ((ctx (thread-specific (current-thread)))
         (in-f? (%WorkerCtx? ctx))
         (sched (if in-f? (&%WorkerCtx-sched ctx) ch.sched))
         (lock ch.lock)
         (cap ch.cap)
         (rwq ch.recv-waiters))
    (%fspin-lock! lock)
    (when (and in-f? (not ch.sched))
      (set! ch.sched sched))
    (cond
     (ch.closed?
      (%fspin-unlock! lock)
      (raise-io-closed fiber-try-send! "fiber channel is closed" ch))
     ((not (%wq-empty? rwq))
      (let ((rk (%wq-pop! rwq))
            (target-sched (or sched ch.sched)))
        (%fspin-unlock! lock)
        (%sched-wake! target-sched (cons rk val))
        #t))
     ((fx< ch.count cap)
      (let ((t ch.tail))
        (vector-set! ch.buf t val)
        (set! ch.tail (let ((nt (fx+ t 1))) (if (fx= nt cap) 0 nt)))
        (set! ch.count (fx+ ch.count 1))
        (%fspin-unlock! lock)
        #t))
     (else
      (%fspin-unlock! lock)
      #f))))

(def (fiber-send! (ch : FiberChannel) val)
  (let* ((ctx (thread-specific (current-thread)))
         (in-f? (%WorkerCtx? ctx))
         (sched (if in-f? (&%WorkerCtx-sched ctx) ch.sched))
         (lock ch.lock)
         (cap ch.cap)
         (rwq ch.recv-waiters))
    (%fspin-lock! lock)
    (when (and in-f? (not ch.sched))
      (set! ch.sched sched))
    (cond
     (ch.closed?
      (%fspin-unlock! lock)
      (raise-io-closed fiber-send! "fiber channel is closed" ch))
     ((not (%wq-empty? rwq))
      (let ((rk (%wq-pop! rwq))
            (target-sched (or sched ch.sched)))
        (%fspin-unlock! lock)
        (%sched-wake! target-sched (cons rk val))
        #t))
     ((fx< ch.count cap)
      (let ((t ch.tail))
        (vector-set! ch.buf t val)
        (set! ch.tail (let ((nt (fx+ t 1))) (if (fx= nt cap) 0 nt)))
        (set! ch.count (fx+ ch.count 1))
        (%fspin-unlock! lock)
        #t))
     (in-f?
      (%fspin-unlock! lock)
      (let ((res (perform %eff-park-send ch val)))
        (when (eq? res 'closed)
          (raise-io-closed fiber-send! "fiber channel is closed" ch))
        #t))
     (else
      ;; External green-thread/actor sender into a full FiberChannel: cooperative yield retry.
      (%fspin-unlock! lock)
      (thread-yield!)
      (fiber-send! ch val)))))

(def (%park-send-waiter! sched k (ch :- FiberChannel) val)
  (let ((lock ch.lock)
        (cap ch.cap)
        (rwq ch.recv-waiters)
        (swq ch.send-waiters))
    (%fspin-lock! lock)
    (unless ch.sched (set! ch.sched sched))
    (cond
     (ch.closed?
      (%fspin-unlock! lock)
      (%sched-wake! sched (cons k 'closed)))
     ((not (%wq-empty? rwq))
      (let ((rk (%wq-pop! rwq)))
        (%fspin-unlock! lock)
        (%sched-wake! sched (cons rk val))
        (%sched-wake! sched (cons k #t))))
     ((fx< ch.count cap)
      (let ((t ch.tail))
        (vector-set! ch.buf t val)
        (set! ch.tail (let ((nt (fx+ t 1))) (if (fx= nt cap) 0 nt)))
        (set! ch.count (fx+ ch.count 1))
        (%fspin-unlock! lock)
        (%sched-wake! sched (cons k #t))))
     (else
      (%wq-push! swq (cons k val))
      (%fspin-unlock! lock)))))

(def (fiber-try-recv! (ch : FiberChannel) (default : :t := #f))
  (let* ((ctx (thread-specific (current-thread)))
         (in-f? (%WorkerCtx? ctx))
         (sched (if in-f? (&%WorkerCtx-sched ctx) ch.sched))
         (lock ch.lock)
         (cap ch.cap)
         (swq ch.send-waiters))
    (%fspin-lock! lock)
    (when (and in-f? (not ch.sched))
      (set! ch.sched sched))
    (cond
     ((fx> ch.count 0)
      (let* ((h ch.head)
             (buf ch.buf)
             (item (vector-ref buf h))
             (nh (let ((x (fx+ h 1))) (if (fx= x cap) 0 x))))
        (vector-set! buf h #f)
        (set! ch.head nh)
        (if (not (%wq-empty? swq))
          (let* ((sw (%wq-pop! swq))
                 (sk (##car sw))
                 (sval (##cdr sw))
                 (t ch.tail)
                 (target-sched (or sched ch.sched)))
            (vector-set! buf t sval)
            (set! ch.tail (let ((nt (fx+ t 1))) (if (fx= nt cap) 0 nt)))
            (%fspin-unlock! lock)
            (%sched-wake! target-sched (cons sk #t))
            item)
          (begin
            (set! ch.count (fx- ch.count 1))
            (%fspin-unlock! lock)
            item))))
     ((not (%wq-empty? swq))
      (let* ((sw (%wq-pop! swq))
             (sk (##car sw))
             (sval (##cdr sw))
             (target-sched (or sched ch.sched)))
        (%fspin-unlock! lock)
        (%sched-wake! target-sched (cons sk #t))
        sval))
     (ch.closed?
      (%fspin-unlock! lock)
      #!eof)
     (else
      (%fspin-unlock! lock)
      default))))

(def (fiber-recv! (ch : FiberChannel))
  (let* ((ctx (%current-wctx))
         (sched (&%WorkerCtx-sched ctx))
         (lock ch.lock)
         (cap ch.cap)
         (swq ch.send-waiters))
    (%fspin-lock! lock)
    (unless ch.sched (set! ch.sched sched))
    (cond
     ((fx> ch.count 0)
      (let* ((h ch.head)
             (buf ch.buf)
             (item (vector-ref buf h))
             (nh (let ((x (fx+ h 1))) (if (fx= x cap) 0 x))))
        (vector-set! buf h #f)
        (set! ch.head nh)
        (if (not (%wq-empty? swq))
          (let* ((sw (%wq-pop! swq))
                 (sk (##car sw))
                 (sval (##cdr sw))
                 (t ch.tail))
            (vector-set! buf t sval)
            (set! ch.tail (let ((nt (fx+ t 1))) (if (fx= nt cap) 0 nt)))
            (%fspin-unlock! lock)
            (%sched-wake! sched (cons sk #t))
            item)
          (begin
            (set! ch.count (fx- ch.count 1))
            (%fspin-unlock! lock)
            item))))
     ((not (%wq-empty? swq))
      (let* ((sw (%wq-pop! swq))
             (sk (##car sw))
             (sval (##cdr sw)))
        (%fspin-unlock! lock)
        (%sched-wake! sched (cons sk #t))
        sval))
     (ch.closed?
      (%fspin-unlock! lock)
      #!eof)
     (else
      (%fspin-unlock! lock)
      (perform %eff-park-recv ch)))))

(def (%park-recv-waiter! sched k (ch :- FiberChannel))
  (let ((lock ch.lock)
        (cap ch.cap)
        (rwq ch.recv-waiters)
        (swq ch.send-waiters))
    (%fspin-lock! lock)
    (unless ch.sched (set! ch.sched sched))
    (cond
     ((fx> ch.count 0)
      (let* ((h ch.head)
             (buf ch.buf)
             (item (vector-ref buf h))
             (nh (let ((x (fx+ h 1))) (if (fx= x cap) 0 x))))
        (vector-set! buf h #f)
        (set! ch.head nh)
        (if (not (%wq-empty? swq))
          (let* ((sw (%wq-pop! swq))
                 (sk (##car sw))
                 (sval (##cdr sw))
                 (t ch.tail))
            (vector-set! buf t sval)
            (set! ch.tail (let ((nt (fx+ t 1))) (if (fx= nt cap) 0 nt)))
            (%fspin-unlock! lock)
            (%sched-wake! sched (cons sk #t))
            (%sched-wake! sched (cons k item)))
          (begin
            (set! ch.count (fx- ch.count 1))
            (%fspin-unlock! lock)
            (%sched-wake! sched (cons k item))))))
     ((not (%wq-empty? swq))
      (let* ((sw (%wq-pop! swq))
             (sk (##car sw))
             (sval (##cdr sw)))
        (%fspin-unlock! lock)
        (%sched-wake! sched (cons sk #t))
        (%sched-wake! sched (cons k sval))))
     (ch.closed?
      (%fspin-unlock! lock)
      (%sched-wake! sched (cons k #!eof)))
     (else
      (%wq-push! rwq k)
      (%fspin-unlock! lock)))))

;;;----------------------------------------------------------------------------
;;; Cooperative Non-Blocking FiberMutex (Yield- & Migration-Safe)

(defstruct FiberMutex
  ((lock    :- AtomicFxBox)
   (held?   :- :boolean)
   (waiters :- %WaitQ)
   sched)
  final: #t)

(def (make-fiber-mutex)
  => FiberMutex
  (FiberMutex (make-atomic-fxbox 0) #f (%WaitQ '() '()) #f))

(defalias fiber-mutex? FiberMutex?)

(def (fiber-mutex-lock! (fm : FiberMutex))
  => :void
  (let* ((ctx (%current-wctx))
         (sched (&%WorkerCtx-sched ctx))
         (lock fm.lock))
    (%fspin-lock! lock)
    (unless fm.sched (set! fm.sched sched))
    (if (not fm.held?)
      (begin
        (set! fm.held? #t)
        (%fspin-unlock! lock)
        (void))
      (begin
        (%fspin-unlock! lock)
        (perform %eff-park-mutex fm)
        (void)))))

(def (%park-mutex-waiter! sched k (fm :- FiberMutex))
  (let ((lock fm.lock))
    (%fspin-lock! lock)
    (unless fm.sched (set! fm.sched sched))
    (if (not fm.held?)
      (begin
        (set! fm.held? #t)
        (%fspin-unlock! lock)
        (%sched-wake! sched (cons k #t)))
      (begin
        (%wq-push! fm.waiters k)
        (%fspin-unlock! lock)))))

(def (fiber-mutex-unlock! (fm : FiberMutex))
  => :void
  (let ((lock fm.lock)
        (next-k #f)
        (sched #f))
    (%fspin-lock! lock)
    (unless fm.held?
      (%fspin-unlock! lock)
      (raise-context-error fiber-mutex-unlock! "fiber mutex is not locked" fm))
    (if (not (%wq-empty? fm.waiters))
      (begin
        ;; Direct ownership handoff to next queued fiber (fm.held? stays #t)
        (set! next-k (%wq-pop! fm.waiters))
        (set! sched fm.sched)
        (%fspin-unlock! lock)
        (%sched-wake! sched (cons next-k #t)))
      (begin
        (set! fm.held? #f)
        (%fspin-unlock! lock)))
    (void)))

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
;;; Cooperative Non-Blocking FiberSemaphore (Bounded Concurrency Limiter)

(defstruct FiberSemaphore
  ((lock    :- AtomicFxBox)
   (permits :- :fixnum)
   (waiters :- %WaitQ)
   sched)
  final: #t)

(def (make-fiber-semaphore (permits : :fixnum))
  => FiberSemaphore
  (when (fx< permits 0)
    (raise-bad-argument make-fiber-semaphore "non-negative fixnum permits" permits))
  (FiberSemaphore (make-atomic-fxbox 0) permits (%WaitQ '() '()) #f))

(defalias fiber-semaphore? FiberSemaphore?)

(def (fiber-semaphore-acquire! (sem : FiberSemaphore))
  => :void
  (let* ((ctx (%current-wctx))
         (sched (&%WorkerCtx-sched ctx))
         (lock sem.lock))
    (%fspin-lock! lock)
    (unless sem.sched (set! sem.sched sched))
    (if (fx> sem.permits 0)
      (begin
        (set! sem.permits (fx- sem.permits 1))
        (%fspin-unlock! lock)
        (void))
      (begin
        (%fspin-unlock! lock)
        (perform %eff-park-sem sem)
        (void)))))

(def (%park-sem-waiter! sched k (sem :- FiberSemaphore))
  (let ((lock sem.lock))
    (%fspin-lock! lock)
    (unless sem.sched (set! sem.sched sched))
    (if (fx> sem.permits 0)
      (begin
        (set! sem.permits (fx- sem.permits 1))
        (%fspin-unlock! lock)
        (%sched-wake! sched (cons k #t)))
      (begin
        (%wq-push! sem.waiters k)
        (%fspin-unlock! lock)))))

(def (fiber-semaphore-release! (sem : FiberSemaphore))
  => :void
  (let ((lock sem.lock)
        (next-k #f)
        (sched #f))
    (%fspin-lock! lock)
    (if (not (%wq-empty? sem.waiters))
      (begin
        (set! next-k (%wq-pop! sem.waiters))
        (set! sched sem.sched)
        (%fspin-unlock! lock)
        (%sched-wake! sched (cons next-k #t)))
      (begin
        (set! sem.permits (fx+ sem.permits 1))
        (%fspin-unlock! lock)))
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
