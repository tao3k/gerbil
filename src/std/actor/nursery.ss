;;; -*- Gerbil -*-
;;; © Gerbil Contributors
;;; Structured Actor Concurrency, SRFI-226 Actor Context Marks &
;;; Direct Zero-Hop Fiber <-> Actor Non-Blocking RPC with Sharded Flat Timer Ring

(import :std/error
        :std/control
        :std/time/time
        :std/time/precise
        :std/sync/atomic
        :std/sync/concurrent
        :std/sync/threads
        :std/sync/fiber
        :gerbil/runtime/thread
        :gerbil/runtime/util
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

  ;; Direct Zero-Hop Work-Stealing Fiber <-> Gerbil Actor Non-Blocking RPC Bridge
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
;;; Direct Zero-Hop Fiber <-> Actor Non-Blocking RPC + Sharded Flat Timer Ring
;;;
;;; Local actor RPCs embed a `FiberReplyPeer` as `Envelope.source` pointing
;;; directly at `fiber-promise-resolve!` + the caller's `FiberPromise`:
;;;   - `(--> reply)` / `send-reply!` resolves the `FiberPromise` directly from
;;;     the actor server thread with ZERO reply Envelope allocation, ZERO router
;;;     actor hop, ZERO ConcurrentTable traffic, and ZERO seqno atomics!
;;;   - The resolved `FiberPromise` wakes the caller fiber directly on its own
;;;     carrier worker's 128B-padded external inbox (`ext-qs[wid]`).
;;;   - Exact timeouts (including 0% idle CPU cold-sleep and <50ms short
;;;     deadlines) are monitored by 16 processor-indexed lazily-started pure
;;;     timer-watchdog shards backed by a 1024-slot zero-allocation flat Vyukov
;;;     dual-array ring (with automatic LFQueue spill if >1024 concurrent RPCs
;;;     are in-flight on a single shard).

(def %FIBER-TIMER-SHARDS 16)
(def %FIBER-TIMER-MASK   15)
(def %FIBER-TIMER-RING-CAP 1024)
(def %fiber-timer-epoch  (##current-time-point))
(def %fiber-timer-init-mx (make-mutex 'fiber-timer-init))
(def %fiber-timer-shards (make-vector %FIBER-TIMER-SHARDS #f))
(def %fiber-reply-option (ReplyOption seqno: 0))

(defstruct %FiberTimerEntry
  ((promise :- FiberPromise)
   (dl-ms   :- :fixnum))
  final: #t)

(defstruct %FiberTimerShard
  ((ring     :- :vector)     ;; #[pbuf dbuf seq meta]
   (meta     :- :vector)     ;; 64-word 128B-padded: [0]=head, [16]=tail, [32]=min-dl, [48]=ovf-cnt
   (overflow :- LFQueue)
   (mx       :- :mutex)
   (cv       :- :condvar))
  final: #t)

(defstruct %FiberRPCTimeout (deadline) final: #t)
(defstruct %FiberRPCError (exc) final: #t)

(defrule (%fl->fixnum-floor x)
  (let ((fl x))
    (if (and (##fl> fl -1e15) (##fl< fl 1e15))
      (##flonum->fixnum (##flfloor fl))
      (exact (floor fl)))))

(defrule (%fl->fixnum-ceiling x)
  (let ((fl x))
    (if (and (##fl> fl -1e15) (##fl< fl 1e15))
      (##flonum->fixnum (##flceiling fl))
      (exact (ceiling fl)))))

(definline (%now-rel-ms (t :- :flonum))
  (let ((ms (%fl->fixnum-floor (##fl* (##fl- t %fiber-timer-epoch) 1000.0))))
    (if (fx> ms 0) ms 1)))

(definline (%rel-ms->abs (ms :- :fixnum))
  (##fl+ %fiber-timer-epoch (##fl* (##fixnum->flonum ms) 0.001)))

(def (%make-timer-ring)
  (let* ((cap %FIBER-TIMER-RING-CAP)
         (pbuf (make-vector cap #f))
         (dbuf (make-vector cap 0))
         (seq (let ((v (make-vector cap 0)))
                (let init ((i 0))
                  (when (fx< i cap)
                    (##vector-set! v i (fxarithmetic-shift-left i 1))
                    (init (fx+ i 1))))
                v))
         (meta (make-vector 64 0)))
    (vector pbuf dbuf seq meta)))

;; Lock-free MPSC/MPMC push of (promise, dl-ms) into 1024-slot flat Vyukov ring.
;; Returns 0=pushed, 1=full, 2=retry.
(def (%timer-ring-try-push! (ring :- :vector) (prom :- FiberPromise) (dl-ms :- :fixnum))
  (declare (not interrupts-enabled))
  (cond-expand
   (gerbil-smp
    (##c-code
     "___WORD *___p = ___BODY_AS(___ARG1, ___tVECTOR);
      ___SCMOBJ ___pbuf = ___p[0];
      ___WORD *___pbuf_p = ___BODY_AS(___pbuf, ___tVECTOR);
      ___WORD *___dbuf_p = ___BODY_AS(___p[1], ___tVECTOR);
      ___VOLATILE ___WORD *___seq_p = ___CAST(___VOLATILE ___WORD*, ___BODY_AS(___p[2], ___tVECTOR));
      ___WORD *___meta = ___BODY_AS(___p[3], ___tVECTOR);
      ___VOLATILE ___WORD *___tail_p = ___CAST(___VOLATILE ___WORD*, ___meta + 16);
      ___WORD ___res = 2;
      int ___tries;
      for (___tries = 0; ___tries < 64; ___tries++) {
        ___WORD ___pos = ___INT(___atomic_word_load(___tail_p, 0));
        ___WORD ___idx = ___pos & 1023;
        ___WORD ___s   = ___INT(___atomic_word_load(___seq_p + ___idx, 1));
        ___WORD ___exp = ___pos << 1;
        ___WORD ___dif = ___s - ___exp;
        if (___dif == 0) {
          if (___atomic_word_cas(___tail_p, ___FIX(___pos), ___FIX(___pos + 1), 0) == ___FIX(___pos)) {
            ___WORD *___pslot = ___pbuf_p + ___idx;
            ___GC_WRITE_BARRIER(___ps, ___pbuf, ___pslot, ___ARG2);
            ___WORD_STORE_RELAXED(___pslot, ___ARG2);
            ___dbuf_p[___idx] = ___ARG3;
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
     ring prom dl-ms))
   (else
    (let* ((pbuf (##vector-ref ring 0))
           (dbuf (##vector-ref ring 1))
           (seq (##vector-ref ring 2))
           (meta (##vector-ref ring 3))
           (pos (:- (##vector-ref meta 16) :fixnum))
           (idx (fxand pos 1023))
           (exp (fxarithmetic-shift-left pos 1)))
      (if (fx= (:- (##vector-ref seq idx) :fixnum) exp)
        (begin
          (##vector-set! meta 16 (fx+ pos 1))
          (##vector-set! pbuf idx prom)
          (##vector-set! dbuf idx dl-ms)
          (##vector-set! seq idx (fx+ exp 1))
          0)
        1)))))

;; Single-consumer pop from 1024-slot flat Vyukov ring into out[0]=prom, out[1]=dl-ms.
;; Returns 0=empty, 1=popped, 2=producer mid-write (retry).
(def (%timer-ring-try-pop! (ring :- :vector) (out :- :vector))
  (declare (not interrupts-enabled))
  (cond-expand
   (gerbil-smp
    (##c-code
     "___WORD *___p = ___BODY_AS(___ARG1, ___tVECTOR);
      ___SCMOBJ ___pbuf = ___p[0];
      ___WORD *___pbuf_p = ___BODY_AS(___pbuf, ___tVECTOR);
      ___WORD *___dbuf_p = ___BODY_AS(___p[1], ___tVECTOR);
      ___VOLATILE ___WORD *___seq_p = ___CAST(___VOLATILE ___WORD*, ___BODY_AS(___p[2], ___tVECTOR));
      ___WORD *___meta = ___BODY_AS(___p[3], ___tVECTOR);
      ___VOLATILE ___WORD *___head_p = ___CAST(___VOLATILE ___WORD*, ___meta + 0);
      ___VOLATILE ___WORD *___tail_p = ___CAST(___VOLATILE ___WORD*, ___meta + 16);
      ___WORD ___pos = ___INT(___atomic_word_load(___head_p, 0));
      ___WORD ___idx = ___pos & 1023;
      ___WORD ___exp = (___pos << 1) + 1;
      ___WORD ___s   = ___INT(___atomic_word_load(___seq_p + ___idx, 1));
      if (___s == ___exp) {
        ___WORD *___pslot = ___pbuf_p + ___idx;
        ___SCMOBJ ___prom = ___WORD_LOAD_RELAXED(___pslot);
        ___SCMOBJ ___dlms = ___dbuf_p[___idx];
        ___GC_WRITE_BARRIER(___ps, ___pbuf, ___pslot, ___FAL);
        ___WORD_STORE_RELAXED(___pslot, ___FAL);
        ___atomic_word_store(___head_p, ___FIX(___pos + 1), 2);
        ___atomic_word_store(___seq_p + ___idx, ___FIX((___pos + 1024) << 1), 2);
        ___WORD *___out_p = ___BODY_AS(___ARG2, ___tVECTOR);
        ___GC_WRITE_BARRIER(___ps, ___ARG2, ___out_p + 0, ___prom);
        ___WORD_STORE_RELAXED(___out_p + 0, ___prom);
        ___out_p[1] = ___dlms;
        ___RESULT = ___FIX(1);
      } else {
        ___WORD ___t = ___INT(___atomic_word_load(___tail_p, 1));
        ___RESULT = (___pos < ___t) ? ___FIX(2) : ___FIX(0);
      }"
     ring out))
   (else
    (let* ((pbuf (##vector-ref ring 0))
           (dbuf (##vector-ref ring 1))
           (seq (##vector-ref ring 2))
           (meta (##vector-ref ring 3))
           (pos (:- (##vector-ref meta 0) :fixnum))
           (idx (fxand pos 1023))
           (exp (fx+ (fxarithmetic-shift-left pos 1) 1)))
      (if (fx= (:- (##vector-ref seq idx) :fixnum) exp)
        (begin
          (##vector-set! out 0 (##vector-ref pbuf idx))
          (##vector-set! out 1 (##vector-ref dbuf idx))
          (##vector-set! pbuf idx #f)
          (##vector-set! meta 0 (fx+ pos 1))
          (##vector-set! seq idx (fxarithmetic-shift-left (fx+ pos 1024) 1))
          1)
        0)))))

(definline (%timer-ring-nonempty? (meta :- :vector))
  (not (fx= (:- (__atomic-fx-load meta 0 4) :fixnum)
            (:- (__atomic-fx-load meta 16 4) :fixnum))))

(def (%fiber-timer-signal! (shard :- %FiberTimerShard))
  (let ((mx shard.mx))
    (mutex-lock! mx)
    (condition-variable-signal! shard.cv)
    (mutex-unlock! mx)))

(def (%fiber-timer-loop (shard :- %FiberTimerShard))
  (let ((ring shard.ring)
        (meta shard.meta)
        (overflow shard.overflow)
        (mx shard.mx)
        (cv shard.cv)
        (out (vector #f 0)))
    (let loop ((active-timers '())
               (hot? #f))
      ;; 1. Drain flat 1024-slot ring, skipping already-resolved promises in place (0 alloc!)
      (let ((got-any? #f))
        (let drain-ring ((ts active-timers))
          (let ((st (:- (%timer-ring-try-pop! ring out) :fixnum)))
            (cond
             ((fx= st 1)
              (set! got-any? #t)
              (let ((prom (:- (##vector-ref out 0) FiberPromise))
                    (dl-ms (:- (##vector-ref out 1) :fixnum)))
                (##vector-set! out 0 #f)
                (if (fiber-promise-resolved? prom)
                  (drain-ring ts)
                  (drain-ring (cons (%FiberTimerEntry prom dl-ms) ts)))))
             ((fx= st 2)
              (__cpu-relax!)
              (drain-ring ts))
             (else
              ;; 2. Drain overflow LFQueue only when overflow-pending > 0
              (let drain-ovf ((ts ts))
                (if (fx= (:- (__atomic-fx-load meta 48 1) :fixnum) 0)
                  ;; 3. Sweep active timers and locate earliest remaining deadline
                  (if (null? ts)
                    (let ((is-hot? (or hot? got-any?)))
                      (if is-hot?
                        ;; Hot-idle 50ms grace: keeps min-dl at now+50ms so steady-state
                        ;; normal-timeout RPCs skip CAS + condvar wakes completely!
                        (let* ((gabs (##fl+ (##current-time-point) 0.05))
                               (gms (%now-rel-ms gabs)))
                          (mutex-lock! mx)
                          (__atomic-fx-store! meta 32 gms 4)
                          (if (or (%timer-ring-nonempty? meta)
                                  (fx> (:- (__atomic-fx-load meta 48 4) :fixnum) 0))
                            (begin
                              (mutex-unlock! mx)
                              (loop '() #t))
                            (let ((woke? (mutex-unlock! mx cv (seconds->time gabs))))
                              ;; If woken early or new activity arrived, stay hot; else cold-idle.
                              (loop '() (or woke? (%timer-ring-nonempty? meta)
                                            (fx> (:- (__atomic-fx-load meta 48 1) :fixnum) 0))))))
                        ;; Cold-idle: 0% CPU infinite sleep until next RPC wakes shard
                        (begin
                          (mutex-lock! mx)
                          (__atomic-fx-store! meta 32 0 4)
                          (if (or (%timer-ring-nonempty? meta)
                                  (fx> (:- (__atomic-fx-load meta 48 4) :fixnum) 0))
                            (begin
                              (mutex-unlock! mx)
                              (loop '() #t))
                            (begin
                              (mutex-unlock! mx cv)
                              (loop '() #t))))))
                    (let* ((now (##current-time-point))
                           (now-ms (%now-rel-ms now)))
                      (let sweep ((xs ts) (kept '()) (earliest-ms 0))
                        (if (pair? xs)
                          (let ((entry (:- (##car xs) %FiberTimerEntry)))
                            (cond
                             ((fiber-promise-resolved? (&%FiberTimerEntry-promise entry))
                              (sweep (##cdr xs) kept earliest-ms))
                             ((fx<= (&%FiberTimerEntry-dl-ms entry) now-ms)
                              (let ((dms (&%FiberTimerEntry-dl-ms entry)))
                                (fiber-promise-resolve!
                                 (&%FiberTimerEntry-promise entry)
                                 (%FiberRPCTimeout (%rel-ms->abs dms))))
                              (sweep (##cdr xs) kept earliest-ms))
                             (else
                              (let ((dms (&%FiberTimerEntry-dl-ms entry)))
                                (if (or (fx= earliest-ms 0) (fx< dms earliest-ms))
                                  (sweep (##cdr xs) (cons entry kept) dms)
                                  (sweep (##cdr xs) (cons entry kept) earliest-ms))))))
                          (if (null? kept)
                            (loop '() #t)
                            (begin
                              (mutex-lock! mx)
                              (__atomic-fx-store! meta 32 earliest-ms 4)
                              (if (or (%timer-ring-nonempty? meta)
                                      (fx> (:- (__atomic-fx-load meta 48 4) :fixnum) 0))
                                (begin
                                  (mutex-unlock! mx)
                                  (loop kept #t))
                                (begin
                                  (mutex-unlock! mx cv (seconds->time (%rel-ms->abs earliest-ms)))
                                  (loop kept #t)))))))))
                  (let-values (((ok entry) (lf-queue-try-dequeue! overflow)))
                    (if ok
                      (begin
                        (__atomic-fx-fetch-sub! meta 48 1 3)
                        (set! got-any? #t)
                        (if (fiber-promise-resolved? (&%FiberTimerEntry-promise entry))
                          (drain-ovf ts)
                          (drain-ovf (cons entry ts))))
                      (begin
                        (thread-yield!)
                        (drain-ovf ts))))))))))))))

(def (%get-fiber-timer-shard (idx :- :fixnum))
  => %FiberTimerShard
  (let ((existing (__atomic-slot-load %fiber-timer-shards idx 1)))
    (if existing
      (:- existing %FiberTimerShard)
      (begin
        (mutex-lock! %fiber-timer-init-mx)
        (let ((again (__atomic-slot-load %fiber-timer-shards idx 1)))
          (if again
            (begin
              (mutex-unlock! %fiber-timer-init-mx)
              (:- again %FiberTimerShard))
            (let* ((ring (%make-timer-ring))
                   (meta (##vector-ref ring 3))
                   (overflow (make-lf-queue))
                   (mx (make-mutex 'fiber-rpc-timer))
                   (cv (make-condition-variable 'fiber-rpc-timer))
                   (shard (%FiberTimerShard ring meta overflow mx cv)))
              (__atomic-slot-exchange! %fiber-timer-shards idx shard 2)
              (thread-start!
               (make-thread (lambda () (%fiber-timer-loop shard))
                            (list 'fiber-rpc-timer idx)))
              (mutex-unlock! %fiber-timer-init-mx)
              shard)))))))

(def (%register-fiber-rpc-timer! (prom :- FiberPromise) (dl-ms :- :fixnum))
  (using (shard (%get-fiber-timer-shard (fxand (##current-processor-id) %FIBER-TIMER-MASK))
          :- %FiberTimerShard)
    (let ((ring shard.ring)
          (meta shard.meta))
      (let push-loop ()
        (let ((st (:- (%timer-ring-try-push! ring prom dl-ms) :fixnum)))
          (cond
           ((fx= st 0)
            ;; Dekker SeqCst: ring SeqCst store precedes reading published min-dl
            (let wake-loop ()
              (let ((cur (:- (__atomic-fx-load meta 32 4) :fixnum)))
                (when (or (fx= cur 0) (fx< dl-ms cur))
                  (if (fx= (:- (__atomic-fx-cas! meta 32 cur dl-ms 3) :fixnum) cur)
                    (%fiber-timer-signal! shard)
                    (wake-loop))))))
           ((fx= st 2)
            (__cpu-relax!)
            (push-loop))
           (else
            ;; >1024 concurrent RPCs on this shard: spill to overflow LFQueue & wake immediately
            (__atomic-fx-fetch-add! meta 48 1 4)
            (lf-queue-enqueue! shard.overflow (%FiberTimerEntry prom dl-ms))
            (%fiber-timer-signal! shard))))))))

(def (fiber-actor-call (dest : Peer)
                       msg
                       (protocol : :string)
                       timeout: (timeo : :real := default-reply-timeout)
                       expire: (expire :? :integer := #f))
  (cond
   ((not (in-fiber?))
    (->> dest msg protocol timeout: timeo expire: expire))
   ((LocalActor? dest)
    ;; Direct zero-hop Fiber <-> Actor RPC:
    ;; Actor replies directly into `promise` via `FiberReplyPeer` (0 router hop,
    ;; 0 ConcurrentTable, 0 reply Envelope, 0 seqno atomics).
    (let* ((now (##current-time-point))
           (deadline
            (cond
             (expire (if (##flonum? expire) expire (exact->inexact expire)))
             ((##flonum? timeo) (##fl+ now timeo))
             ((##fixnum? timeo) (##fl+ now (##fixnum->flonum timeo)))
             (else (let ((d (+ now timeo))) (if (##flonum? d) d (exact->inexact d))))))
           (exp
            (cond
             (expire expire)
             ((##flonum? deadline) (%fl->fixnum-ceiling deadline))
             (else (exact (ceiling deadline))))))
      (when (if (##fixnum? exp)
              (##fl<= (##fixnum->flonum exp) now)
              (<= exp now))
        (raise-timeout fiber-actor-call "fiber actor call already expired" dest protocol deadline))
      (let* ((promise (make-fiber-promise))
             (reply-peer (FiberReplyPeer fiber-promise-resolve! promise protocol 0))
             (env (Envelope source: reply-peer
                            dest: dest
                            message: msg
                            protocol: protocol
                            options: (Options expire: exp
                                              continue: %fiber-reply-option))))
        (using (d dest :- LocalActor)
          (thread-send-fast! d.thread env))
        ;; Fast skip: if actor already resolved `promise`, avoid timer registration entirely!
        (unless (fiber-promise-resolved? promise)
          (%register-fiber-rpc-timer! promise (%now-rel-ms deadline)))
        (let ((outcome (fiber-promise-await! promise)))
          (if (%FiberRPCTimeout? outcome)
            (raise-timeout fiber-actor-call "fiber actor call timeout" dest protocol (&%FiberRPCTimeout-deadline outcome))
            outcome)))))
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
                          (lambda (e) (fiber-promise-resolve! promise (%FiberRPCError e)))
                          (lambda ()
                            (let ((res (->> dest msg protocol timeout: timeo expire: expire)))
                              (fiber-promise-resolve! promise res)))))))
              (if ctx
                (call-with-continuation-mark actor-context-key ctx run)
                (run))))))
      (let ((outcome (fiber-promise-await! promise)))
        (if (%FiberRPCError? outcome)
          (raise (&%FiberRPCError-exc outcome))
          outcome))))))
