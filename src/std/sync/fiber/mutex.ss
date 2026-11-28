;;; -*- Gerbil -*-
;;; © Gerbil Contributors
;;; Lock-Free Cooperative FiberMutex (3-State) & FiberSemaphore (Dekker SeqCst)

(import :std/error
        :std/control
        :gerbil/runtime/util
        ./runq
        ./state)
(export #t)

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
