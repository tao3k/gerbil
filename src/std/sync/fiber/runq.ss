;;; -*- Gerbil -*-
;;; © Gerbil Contributors
;;; Native C23 Carrier Helpers, 128B-Padded Flat Dual-Array Runqueue & Waiter Queue

(import :gerbil/runtime/util)
(export #t)

;;;----------------------------------------------------------------------------
;;; Native C23 Carrier Scheduling & Backoff Helpers

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

;;;----------------------------------------------------------------------------
;;; 128B Cache-Line-Padded 4096-Slot Flat Dual-Array Work-Stealing Runqueue
;;;
;;; Represented as a 3-element pack vector #[buf nbuf meta]:
;;;   buf      : 4096-slot task vector (thunk / k / FiberPromise / (k . val))
;;;   nbuf     : 4096-slot nursery vector (Nursery or #f)
;;;   meta[0]  : head (contested by owner pop & peer thieves via CAS)
;;;   meta[16] : tail (owner-only release store, 128B isolated from head)
;;;   meta[17] : cached-head (owner-private estimate avoiding head reads on push)

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
;;; Tiny TTAS Vector Spinlock & FIFO Waiter Queue (Slow-Path Park/Handoff Helpers)

(def (%vspin-lock! (vec :- :vector) (idx :- :fixnum))
  (let loop ((spins 0))
    (if (and (fx= (:- (__atomic-fx-load vec idx 0) :fixnum) 0)
             (fx= (:- (__atomic-fx-cas! vec idx 0 1 1) :fixnum) 0))
      #t
      (if (fx>= spins 64)
        (begin (thread-yield!) (loop 0))
        (begin (__cpu-relax!) (loop (fx+ spins 1)))))))

(def (%vspin-unlock! (vec :- :vector) (idx :- :fixnum))
  (__atomic-fx-store! vec idx 0 2))

(defstruct %WaitQ (head tail) final: #t)

(def (%wq-empty? (q :- %WaitQ))
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
