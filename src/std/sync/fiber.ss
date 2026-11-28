;;; -*- Gerbil -*-
;;; © Gerbil Contributors
;;; Direct-Style Work-Stealing Structured Concurrency Runtime (:std/sync/fiber)
;;;
;;; Maximally aligned with Gambit modern-c (gambit fiber) & SMP runtime:
;;;   - M:N work-stealing scheduler with 4096-slot per-worker Chase-Lev deques
;;;     (WSDeque) + randomized xorshift victim stealing + lock-free LFQueue
;;;   - Zero-busy-spin adaptive Rayon/Tokio spinning+waking condvar parker
;;;   - One-shot effect continuations from :std/control (SRFI-226 + C-runtime
;;;     stack rewind ##continuation-try-rewind-oneshot!)
;;;   - Exception-isolated fibers & structured nurseries with cooperative
;;;     cancellation (with-nursery, nursery-cancel!, nursery-cancelled?)
;;;   - Bounded & unbuffered zero-lost-wakeup FiberChannel (+ try-send/try-recv/close)
;;;   - Non-blocking cooperative fiber-sleep!, FiberMutex, FiberSemaphore
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
;;; Internal Effects & Scheduler Structures

(def %eff-spawn        (make-effect 'fiber-spawn))
(def %eff-yield        (make-effect 'fiber-yield))
(def %eff-park-nursery (make-effect 'fiber-park-nursery))
(def %eff-park-send    (make-effect 'fiber-park-send))
(def %eff-park-recv    (make-effect 'fiber-park-recv))
(def %eff-park-sleep   (make-effect 'fiber-park-sleep))
(def %eff-park-mutex   (make-effect 'fiber-park-mutex))
(def %eff-park-sem     (make-effect 'fiber-park-sem))

(defstruct %FiberScheduler
  ((num-workers     :- :fixnum)
   (deques          :- :vector)
   (global-q        :- LFQueue)
   (active-fibers   :- AtomicFxBox)
   (spinning        :- AtomicFxBox)
   (sleepers        :- AtomicFxBox)
   (waking          :- AtomicFxBox)
   (stopped         :- AtomicFxBox)
   (park-mx         :- :mutex)
   (park-cv         :- :condvar)
   (timer-started   :- AtomicFxBox)
   (timer-mx        :- :mutex)
   (timer-cv        :- :condvar)
   timer-q
   timer-thread
   (root-done       :- AtomicFxBox)
   root-box
   handler-entries
   return-fn)
  final: #t)

(defstruct %WorkerCtx
  ((sched :- %FiberScheduler)
   (wid   :- :fixnum)
   (dq    :- WSDeque))
  final: #t)

(def (in-fiber?)
  => :boolean
  (%WorkerCtx? (thread-specific (current-thread))))

(def (%current-wctx)
  (let ((ctx (thread-specific (current-thread))))
    (if (%WorkerCtx? ctx)
      ctx
      (raise-context-error fiber "fiber operation called outside run-fibers"))))

;; Zero-mutex fast path whenever any worker is searching or already waking.
;; Identical Dekker/SeqCst wakeup invariant to :std/sync/wg.
(def (%sched-wake-one! (sched :- %FiberScheduler))
  (atomic-fence (memory-order sequentially-consistent))
  (when (and (fx= (atomic-fxbox-ref sched.spinning (memory-order acquire)) 0)
             (fx= (atomic-fxbox-ref sched.waking (memory-order acquire)) 0)
             (fx> (atomic-fxbox-ref sched.sleepers (memory-order acquire)) 0))
    (mutex-lock! sched.park-mx)
    (when (and (fx= (atomic-fxbox-ref sched.stopped (memory-order acquire)) 0)
               (fx= (atomic-fxbox-ref sched.spinning (memory-order acquire)) 0)
               (fx= (atomic-fxbox-ref sched.waking (memory-order acquire)) 0)
               (fx> (atomic-fxbox-ref sched.sleepers (memory-order acquire)) 0))
      (atomic-fxbox-set! sched.waking 1 (memory-order release))
      (condition-variable-signal! sched.park-cv))
    (mutex-unlock! sched.park-mx)))

(def (%sched-shutdown-parkers! (sched :- %FiberScheduler))
  (when (fx= (atomic-fxbox-swap! sched.stopped 1 (memory-order acquire-release)) 0)
    (mutex-lock! sched.park-mx)
    (condition-variable-broadcast! sched.park-cv)
    (mutex-unlock! sched.park-mx)
    (when (fx> (atomic-fxbox-ref sched.timer-started (memory-order acquire)) 0)
      (mutex-lock! sched.timer-mx)
      (condition-variable-broadcast! sched.timer-cv)
      (mutex-unlock! sched.timer-mx))))

(def (%sched-enqueue-local! task)
  (let* ((ctx (%current-wctx))
         (sched (&%WorkerCtx-sched ctx)))
    (unless (ws-deque-push! (&%WorkerCtx-dq ctx) task)
      (lf-queue-enqueue! (&%FiberScheduler-global-q sched) task))
    (%sched-wake-one! sched)))

(def (%sched-wake! (sched :- %FiberScheduler) task)
  (let ((ctx (thread-specific (current-thread))))
    (if (and (%WorkerCtx? ctx) (eq? (&%WorkerCtx-sched ctx) sched))
      (unless (ws-deque-push! (&%WorkerCtx-dq ctx) task)
        (lf-queue-enqueue! sched.global-q task))
      (lf-queue-enqueue! sched.global-q task))
    (%sched-wake-one! sched)))

;;;----------------------------------------------------------------------------
;;; Tiny TTAS Spinlock Helper (for non-blocking channel, mutex & nursery handoffs)

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
;;; Structured Concurrency Nursery (Zero Orphaned Fibers + Cooperative Cancel)

(defstruct Nursery
  ((sched     :- %FiberScheduler)
   (active    :- AtomicFxBox)
   (cancelled :- AtomicFxBox)
   (lock      :- AtomicFxBox)
   waiter-k
   first-err
   has-err?)
  final: #t)

(defalias nursery? Nursery?)

(def (nursery-cancel! (n : Nursery))
  => :void
  (atomic-fxbox-set! n.cancelled 1 (memory-order release))
  (void))

(def (nursery-cancelled? (n : Nursery))
  => :boolean
  (fx> (atomic-fxbox-ref n.cancelled (memory-order acquire)) 0))

(def (%nursery-record-error! (n :- Nursery) exc)
  (atomic-fxbox-set! n.cancelled 1 (memory-order release))
  (%fspin-lock! n.lock)
  (unless n.has-err?
    (set! n.has-err? #t)
    (set! n.first-err exc))
  (%fspin-unlock! n.lock))

(def (%nursery-child-done! (n :- Nursery))
  (let ((prev (atomic-fxbox-fetch-sub! n.active 1 (memory-order acquire-release))))
    (when (fx= prev 1)
      (let ((wk #f))
        (%fspin-lock! n.lock)
        (set! wk n.waiter-k)
        (set! n.waiter-k #f)
        (%fspin-unlock! n.lock)
        (when wk
          (%sched-wake! n.sched wk))))))

(def (with-nursery (proc : :procedure))
  (let* ((ctx (%current-wctx))
         (sched (&%WorkerCtx-sched ctx))
         (n (Nursery sched
                     (make-atomic-fxbox 1)
                     (make-atomic-fxbox 0)
                     (make-atomic-fxbox 0)
                     #f #f #f))
         (parent-res #f))
    (with-catch
     (lambda (e) (%nursery-record-error! n e))
     (lambda () (set! parent-res (proc n))))
    (let ((prev (atomic-fxbox-fetch-sub! (&Nursery-active n) 1 (memory-order acquire-release))))
      (when (fx> prev 1)
        (perform %eff-park-nursery n)))
    (if (&Nursery-has-err? n)
      (raise (&Nursery-first-err n))
      parent-res)))

(def (%park-nursery-waiter! sched k (n :- Nursery))
  (let ((wake-now? #f))
    (%fspin-lock! n.lock)
    (if (fx= (atomic-fxbox-ref n.active (memory-order acquire)) 0)
      (set! wake-now? #t)
      (set! n.waiter-k k))
    (%fspin-unlock! n.lock)
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
        (stopped sched.stopped))
    (let loop ()
      (let ((to-wake '())
            (next-dl #f)
            (done? #f))
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
         ((fx> (atomic-fxbox-ref stopped (memory-order acquire)) 0)
          (mutex-unlock! mx)
          (void))
         (next-dl
          (mutex-unlock! mx cv (seconds->time next-dl))
          (loop))
         (else
          (mutex-unlock! mx cv)
          (loop)))))))

(def (%sched-ensure-timer! (sched :- %FiberScheduler))
  (when (fx= (atomic-fxbox-compare-and-swap! sched.timer-started 0 1 (memory-order acquire-release)) 0)
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
;;; Fiber Spawn, Yield & Worker Count

(def (fiber-worker-count)
  => :fixnum
  (:- (&%FiberScheduler-num-workers (&%WorkerCtx-sched (%current-wctx))) :fixnum))

(def (fiber-yield)
  (perform %eff-yield))

(def (fiber-spawn (thunk : :procedure) (n :? Nursery := #f))
  (if n
    (begin
      (atomic-fxbox-fetch-add! (&Nursery-active n) 1 (memory-order acquire-release))
      (perform %eff-spawn
               (lambda ()
                 (with-catch
                  (lambda (e)
                    (%nursery-record-error! n e)
                    (%nursery-child-done! n))
                  (lambda ()
                    (thunk)
                    (%nursery-child-done! n))))))
    (perform %eff-spawn thunk)))

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
;;; Work-Stealing Scheduler Loop & run-fibers (4096-slot Deques + Adaptive Park)

(def (%init-scheduler-handlers! (sched :- %FiberScheduler))
  (let ((active sched.active-fibers))
    (set! sched.handler-entries
      (list
       (%make-handler-entry
        %eff-spawn 'tail
        (lambda (thunk)
          (atomic-fxbox-fetch-add! active 1 (memory-order acquire-release))
          (%sched-enqueue-local! thunk)
          (void)))
       (%make-handler-entry
        %eff-yield 'suspend
        (lambda (k)
          (%sched-enqueue-local! k)
          (void)))
       (%make-handler-entry
        %eff-park-nursery 'suspend
        (lambda (k n)
          (%park-nursery-waiter! sched k n)
          (void)))
       (%make-handler-entry
        %eff-park-send 'suspend
        (lambda (k ch val)
          (%park-send-waiter! sched k ch val)
          (void)))
       (%make-handler-entry
        %eff-park-recv 'suspend
        (lambda (k ch)
          (%park-recv-waiter! sched k ch)
          (void)))
       (%make-handler-entry
        %eff-park-sleep 'suspend
        (lambda (k secs)
          (%park-sleep-waiter! sched k secs)
          (void)))
       (%make-handler-entry
        %eff-park-mutex 'suspend
        (lambda (k fm)
          (%park-mutex-waiter! sched k fm)
          (void)))
       (%make-handler-entry
        %eff-park-sem 'suspend
        (lambda (k sem)
          (%park-sem-waiter! sched k sem)
          (void)))))
    (set! sched.return-fn
      (lambda (_)
        (let ((prev (atomic-fxbox-fetch-sub! active 1 (memory-order acquire-release))))
          (when (fx= prev 1)
            (%sched-shutdown-parkers! sched)))
        (void)))))

;; Wrap every fiber body inside the handler prompt with an exception catcher so
;; an uncaught exception in a detached fiber never kills a carrier worker thread
;; or leaks active-fibers (while nursery/root fibers capture errors internally).
(def (%run-fiber-thunk (sched :- %FiberScheduler) thunk)
  (%call-with-handler-entries
   sched.handler-entries
   sched.return-fn
   (lambda ()
     (with-catch
      (lambda (_) (void))
      thunk))))

;; Fast 30-bit xorshift PRNG for randomized work-stealing victim selection.
(definline (%xorshift30 (x :- :fixnum))
  (let* ((x1 (fxxor x (fxand (fxarithmetic-shift-left x 13) #x3fffffff)))
         (x2 (fxxor x1 (fxarithmetic-shift-right x1 17)))
         (x3 (fxxor x2 (fxand (fxarithmetic-shift-left x2 5) #x3fffffff))))
    (if (fx= x3 0) 1 x3)))

(def (%worker-try-steal wid num-workers deques seed)
  (if (fx<= num-workers 1)
    (values #f #f)
    (let ((start (fxmodulo seed num-workers)))
      (let loop ((i 0))
        (if (fx= i num-workers)
          (values #f #f)
          (let* ((v (fx+ start i))
                 (victim (if (fx>= v num-workers) (fx- v num-workers) v)))
            (if (fx= victim wid)
              (loop (fx+ i 1))
              (let-values (((ok task) (ws-deque-try-steal! (vector-ref deques victim))))
                (if ok
                  (values #t task)
                  (loop (fx+ i 1)))))))))))

(def (%worker-poll-any (sched :- %FiberScheduler) wid num-workers deques local-dq global-q rng)
  (let-values (((ok1 t1) (ws-deque-try-pop! local-dq)))
    (if ok1
      (values #t t1)
      (let-values (((ok2 t2) (lf-queue-try-dequeue! global-q)))
        (if ok2
          (values #t t2)
          (%worker-try-steal wid num-workers deques rng))))))

(def (%worker-exec-task (sched :- %FiberScheduler) task)
  (cond
   ((procedure? task)
    (%run-fiber-thunk sched task))
   ((effect-continuation? task)
    (resume task #f))
   (else
    (resume (##car task) (##cdr task)))))

(def (%worker-loop (sched :- %FiberScheduler) wid)
  (let* ((num-workers sched.num-workers)
         (deques sched.deques)
         (local-dq (vector-ref deques wid))
         (global-q sched.global-q)
         (active sched.active-fibers)
         (spinning sched.spinning)
         (sleepers sched.sleepers)
         (waking sched.waking)
         (stopped sched.stopped)
         (park-mx sched.park-mx)
         (park-cv sched.park-cv)
         (ctx (%WorkerCtx sched wid local-dq))
         (init-rng (fxior (fxand (fx* (fx+ wid 1) 1103515245) #x3fffffff) 1)))
    (thread-specific-set! (current-thread) ctx)
    (let loop ((ticks 0) (idle-spins 0) (rng init-rng) (is-spinning? #f))
      (let ((got-task? #f)
            (task #f)
            (next-rng rng))
        ;; Periodically poll global-q every 32 local ticks for fairness
        (when (fx= (fxand ticks 31) 31)
          (let-values (((ok t) (lf-queue-try-dequeue! global-q)))
            (when ok
              (set! got-task? #t)
              (set! task t))))
        ;; 1. Fast path: LIFO pop from own 4096-slot Chase-Lev deque
        (unless got-task?
          (let-values (((ok t) (ws-deque-try-pop! local-dq)))
            (when ok
              (set! got-task? #t)
              (set! task t))))
        ;; 2. Global wakeup / overflow queue
        (unless got-task?
          (let-values (((ok t) (lf-queue-try-dequeue! global-q)))
            (when ok
              (set! got-task? #t)
              (set! task t))))
        ;; 3. Randomized work-steal from peer worker deques
        (unless got-task?
          (set! next-rng (%xorshift30 rng))
          (let-values (((ok t) (%worker-try-steal wid num-workers deques next-rng)))
            (when ok
              (set! got-task? #t)
              (set! task t))))
        (if got-task?
          (begin
            (when is-spinning?
              (let ((prev (atomic-fxbox-fetch-sub! spinning 1 (memory-order acquire-release))))
                ;; If we were the last searching worker and more work exists, cascade-wake one!
                (when (and (fx= prev 1)
                           (or (fx> (ws-deque-size local-dq) 0)
                               (not (lf-queue-empty? global-q))))
                  (%sched-wake-one! sched))))
            (%worker-exec-task sched task)
            (loop (fx+ ticks 1) 0 next-rng #f))
          (cond
           ((fx<= (atomic-fxbox-ref active (memory-order acquire)) 0)
            (when is-spinning?
              (atomic-fxbox-fetch-sub! spinning 1 (memory-order acquire-release)))
            (%sched-shutdown-parkers! sched)
            (void))
           ((fx< idle-spins 64)
            (unless is-spinning?
              (atomic-fxbox-fetch-add! spinning 1 (memory-order acquire-release)))
            (__cpu-relax!)
            (loop ticks (fx+ idle-spins 1) next-rng #t))
           ((fx< idle-spins 80)
            (thread-yield!)
            (loop ticks (fx+ idle-spins 1) next-rng #t))
           (else
            ;; Park on condvar with Dekker/SeqCst double-check (0% idle CPU!)
            (when is-spinning?
              (atomic-fxbox-fetch-sub! spinning 1 (memory-order sequentially-consistent)))
            (mutex-lock! park-mx)
            (atomic-fxbox-fetch-add! sleepers 1 (memory-order sequentially-consistent))
            (let-values (((ok2 t2) (%worker-poll-any sched wid num-workers deques local-dq global-q next-rng)))
              (cond
               (ok2
                (atomic-fxbox-fetch-sub! sleepers 1 (memory-order release))
                (mutex-unlock! park-mx)
                (when (or (fx> (ws-deque-size local-dq) 0)
                          (not (lf-queue-empty? global-q)))
                  (%sched-wake-one! sched))
                (%worker-exec-task sched t2)
                (loop (fx+ ticks 1) 0 next-rng #f))
               ((or (fx<= (atomic-fxbox-ref active (memory-order acquire)) 0)
                    (fx> (atomic-fxbox-ref stopped (memory-order acquire)) 0))
                (atomic-fxbox-fetch-sub! sleepers 1 (memory-order release))
                (mutex-unlock! park-mx)
                (void))
               (else
                (mutex-unlock! park-mx park-cv)
                (atomic-fxbox-fetch-add! spinning 1 (memory-order sequentially-consistent))
                (atomic-fxbox-fetch-sub! sleepers 1 (memory-order sequentially-consistent))
                (atomic-fxbox-swap! waking 0 (memory-order sequentially-consistent))
                (loop ticks 0 next-rng #t)))))))))))

(def (run-fibers (thunk : :procedure) workers: (workers : :t := (##current-vm-processor-count)))
  (let* ((w (max 1 (if (fixnum? workers) workers 1)))
         (deques (let ((v (make-vector w #f)))
                   (let loop ((i 0))
                     (when (fx< i w)
                       (vector-set! v i (make-ws-deque 4096))
                       (loop (fx+ i 1))))
                   v))
         (global-q (make-lf-queue))
         (active (make-atomic-fxbox 1))
         (spinning (make-atomic-fxbox 0))
         (sleepers (make-atomic-fxbox 0))
         (waking (make-atomic-fxbox 0))
         (stopped (make-atomic-fxbox 0))
         (park-mx (make-mutex 'fiber-park))
         (park-cv (make-condition-variable 'fiber-park))
         (timer-started (make-atomic-fxbox 0))
         (timer-mx (make-mutex 'fiber-timer))
         (timer-cv (make-condition-variable 'fiber-timer))
         (root-done (make-atomic-fxbox 0))
         (root-box (cons #f #f))
         (sched (%FiberScheduler w deques global-q active
                                 spinning sleepers waking stopped park-mx park-cv
                                 timer-started timer-mx timer-cv '() #f
                                 root-done root-box #f #f)))
    (%init-scheduler-handlers! sched)
    (lf-queue-enqueue!
     global-q
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
