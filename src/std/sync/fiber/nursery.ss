;;; -*- Gerbil -*-
;;; © Gerbil Contributors
;;; Structured Concurrency Nursery (Phase C18 Unified +32 Credits), Spawn & Yield

(import :std/error
        :std/control
        :gerbil/runtime/util
        ./runq
        ./state)
(export #t)

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
