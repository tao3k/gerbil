;;; -*- Gerbil -*-
;;; © Gerbil Contributors
;;; Wait-Free Single-Shot FiberPromise (Inline Atomic Slot + Per-Worker External Wakeup)
;;;
;;; 4-state atomic protocol inline in FiberPromise struct slot 1 (`state`):
;;;   0 = empty (no waiter, no value)
;;;   1 = waiter parked (waiter-k, sched, and hint-wid published)
;;;   2 = claimed by single winning resolver (writing val)
;;;   3 = resolved (val published via release store)

(import :std/control
        :gerbil/runtime/util
        ./state)
(export #t)

(defstruct FiberPromise
  ((state    :- :fixnum)
   val
   waiter-k
   sched
   (hint-wid :- :fixnum))
  final: #t)

(def (make-fiber-promise)
  => FiberPromise
  (FiberPromise 0 #f #f #f 0))

(defalias fiber-promise? FiberPromise?)

(def (fiber-promise-resolved? (p : FiberPromise))
  => :boolean
  (fx= (:- (__atomic-struct-ref p 1 1) :fixnum) 3))

;; Atomically resolves p at most once; returns #t for the winning resolver, #f for losers.
;; Wakes the parked waiter directly via its home worker's 128B-padded external inbox
;; with zero (cons wk val) pair allocation.
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
          (let ((sc p.sched)
                (wid p.hint-wid))
            (set! p.val val)
            (__atomic-struct-set! p 1 3 2)
            (%sched-wake-target! sc wid p)
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

(def (%park-promise-waiter! (ctx :- %WorkerCtx) sched k (p :- FiberPromise))
  (set! p.waiter-k k)
  (set! p.sched sched)
  (set! p.hint-wid ctx.wid)
  (let ((prev (:- (__atomic-struct-cas! p 1 0 1 3) :fixnum)))
    (unless (fx= prev 0)
      ;; Explicit acquire load guarantees release->acquire ordering for p.val on ARM64.
      (let spin ((s (:- (__atomic-struct-ref p 1 1) :fixnum)))
        (if (fx= s 3)
          (%sched-wake! sched p)
          (begin
            (__cpu-relax!)
            (spin (:- (__atomic-struct-ref p 1 1) :fixnum))))))))
