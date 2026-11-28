;;; -*- Gerbil -*-
;;; © Gerbil Contributors
;;; Work-Stealing M:N Fiber Scheduler Loop & run-fibers (Phase C18-C21 + Cascade Parker)

(import :std/control
        :std/sync/atomic
        :std/sync/concurrent
        :gerbil/runtime/util
        ./runq
        ./state
        ./nursery
        ./timer
        ./promise
        ./channel
        ./mutex)
(export #t)

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
          (let ((ctx (%carrier-wctx)))
            (%nursery-flush! ctx)
            (%park-promise-waiter! ctx sched k p))
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

;; Scan peer external inboxes when local work & peer deques are empty so no
;; task queued to a busy worker's external inbox can ever stall idle cores.
(def (%worker-try-steal-ext (ctx :- %WorkerCtx) (sched :- %FiberScheduler) num-workers)
  (let ((wid ctx.wid)
        (start ctx.steal-cursor))
    (let loop ((tried 1) (victim start))
      (if (fx>= tried num-workers)
        (values #f #f)
        (let ((v (if (fx= victim wid)
                   (let ((n (fx+ victim 1)))
                     (if (fx>= n num-workers) 0 n))
                   victim)))
          (let-values (((ok t) (%sched-try-dequeue-ext! sched v)))
            (if ok
              (begin
                (set! ctx.steal-cursor v)
                (values #t t))
              (let ((nxt (fx+ v 1)))
                (loop (fx+ tried 1)
                      (if (fx>= nxt num-workers) 0 nxt))))))))))

;; Unthrottled poll inside Dekker park double-check (serialized under park-mx):
;; scans lifo, local-dq, own ext-q, global-q, and ALL W-1 peer deques + ext-qs
;; without throttling to strictly preserve Quint parkDoubleCheckSleep (totalQueued == 0).
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
      (let-values (((ok-e te) (%sched-try-dequeue-ext! sched ctx.wid)))
        (if ok-e
          (values #t te #f)
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
                    (let-values (((ok-pe tpe) (%worker-try-steal-ext ctx sched num-workers)))
                      (if ok-pe
                        (values #t tpe #f)
                        (values #f #f #f)))))
                (values #f #f #f))))))))))

(def (%worker-exec-task (sched :- %FiberScheduler) task n)
  (cond
   (n
    (%run-nursery-thunk sched n task))
   ((FiberPromise? task)
    (resume (&FiberPromise-waiter-k task) (&FiberPromise-val task)))
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
        ;; 0. Periodically poll own external inbox & global-q every 32 local ticks (1-load fast skip!)
        (when (fx= (fxand ticks 31) 31)
          (let-values (((ok t) (%sched-try-dequeue-ext! sched wid)))
            (if ok
              (begin
                (set! (&%WorkerCtx-lifo-streak ctx) 0)
                (set! got-task? #t)
                (set! task t))
              (let-values (((ok2 t2) (%sched-try-dequeue-global! sched)))
                (when ok2
                  (set! (&%WorkerCtx-lifo-streak ctx) 0)
                  (set! got-task? #t)
                  (set! task t2))))))
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
        ;; 4. Own 128B-padded external wakeup inbox (1-load fast skip when empty)
        (when (not got-task?)
          (let-values (((ok t) (%sched-try-dequeue-ext! sched wid)))
            (when ok
              (set! (&%WorkerCtx-lifo-streak ctx) 0)
              (set! got-task? #t)
              (set! task t))))
        ;; 5. Global lock-free wakeup/overflow queue (1-load fast skip when pending == 0)
        (when (not got-task?)
          (let-values (((ok t) (%sched-try-dequeue-global! sched)))
            (when ok
              (set! (&%WorkerCtx-lifo-streak ctx) 0)
              (set! got-task? #t)
              (set! task t))))
        ;; 6. Throttled sticky-victim half-deque batch steal (num_searching <= W/2) + peer ext-qs
        (when (not got-task?)
          (let ((sn (%worker-try-steal-throttled ctx sched num-workers deques)))
            (if (fx> sn 0)
              (begin
                (set! (&%WorkerCtx-lifo-streak ctx) 0)
                (set! task (##vector-ref pick-out 0))
                (set! task-n (##vector-ref pick-out 1))
                (##vector-set! pick-out 0 #f)
                (##vector-set! pick-out 1 #f)
                (set! stolen-n sn)
                (set! got-task? #t))
              (when (fx> num-workers 1)
                (let-values (((ok-pe tpe) (%worker-try-steal-ext ctx sched num-workers)))
                  (when ok-pe
                    (set! (&%WorkerCtx-lifo-streak ctx) 0)
                    (set! got-task? #t)
                    (set! task tpe)))))))
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
         (ext-qs (let ((v (make-vector w #f)))
                   (let loop ((i 0))
                     (when (fx< i w)
                       (vector-set! v i (make-lf-queue))
                       (loop (fx+ i 1))))
                   v))
         (ext-pending (make-vector (fxarithmetic-shift-left w 4) 0))
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
         (sched (%FiberScheduler w max-search deques ext-qs ext-pending global-q st
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
