;;; -*- Gerbil -*-
;;; © Gerbil Contributors
;;; True-multicore SMP tests for :std/sync/fiber, structured ActorNursery,
;;; SRFI-226 actor context marks, and Fiber <-> Actor RPC bridge.

(import :std/test
        :std/error
        :std/iter
        :std/control
        :std/sync/atomic
        :std/sync/fiber
        :std/actor)
(export fiber-test)

(def proto:/fiber-test "/fiber-test/v0")

(def fiber-test
  (test-suite "Work-stealing structured concurrency (:std/sync/fiber) & Actor interop"
    (test-case "run-fibers + with-nursery 4000-fiber work-stealing fan-out on all VM processors"
      (def sum (make-atomic-fxbox 0))
      (def expected-workers (max 1 (##current-vm-processor-count)))
      (def res
        (run-fibers
         (lambda ()
           (check (in-fiber?) => #t)
           (check (fiber-worker-count) => expected-workers)
           (with-nursery
            (lambda (n)
              (check (nursery? n) => #t)
              (let loop ((i 1))
                (when (fx<= i 4000)
                  (let ((v i))
                    (fiber-spawn
                     (lambda ()
                       (when (fx= (fxand v 15) 0)
                         (fiber-yield))
                       (atomic-fxbox-fetch-add! sum v (memory-order relaxed)))
                     n))
                  (loop (fx+ i 1))))))
           (atomic-fxbox-ref sum (memory-order sequentially-consistent)))))
      (check res => (/ (* 4000 4001) 2)))

    (test-case "with-nursery propagates child error after waiting for siblings"
      (def finished (make-atomic-fxbox 0))
      (check-exception
       (run-fibers
        (lambda ()
          (with-nursery
           (lambda (n)
             (fiber-spawn (lambda () (error "fiber-boom")) n)
             (fiber-spawn
              (lambda ()
                (fiber-yield)
                (atomic-fxbox-fetch-add! finished 1))
              n)))))
       Error?)
      (check (atomic-fxbox-ref finished) => 1))

    (test-case "FiberChannel bounded & unbuffered MPMC stress + close on all VM processors"
      ;; Bounded MPMC
      (def total-sum
        (run-fibers
         (lambda ()
           (let ((ch (make-fiber-channel 16))
                 (sum (make-atomic-fxbox 0)))
             (check (fiber-channel? ch) => #t)
             (with-nursery
              (lambda (n)
                ;; 4 producers * 500 items
                (let ploop ((p 0))
                  (when (fx< p 4)
                    (let ((pid p))
                      (fiber-spawn
                       (lambda ()
                         (let loop ((i 1))
                           (when (fx<= i 500)
                             (fiber-send! ch (fx+ (fx* pid 500) i))
                             (loop (fx+ i 1)))))
                       n))
                    (ploop (fx+ p 1))))
                ;; 4 consumers * 500 items
                (let cloop ((c 0))
                  (when (fx< c 4)
                    (fiber-spawn
                     (lambda ()
                       (let loop ((i 0))
                         (when (fx< i 500)
                           (let ((v (fiber-recv! ch)))
                             (atomic-fxbox-fetch-add! sum v (memory-order relaxed)))
                           (loop (fx+ i 1)))))
                     n)
                    (cloop (fx+ c 1))))))
             ;; Close wakes subsequent recv with #!eof and rejects send
             (fiber-channel-close! ch)
             (check (fiber-channel-closed? ch) => #t)
             (check (fiber-recv! ch) => #!eof)
             (check-exception (fiber-send! ch 1) io-closed-error?)
             (atomic-fxbox-ref sum)))))
      (check total-sum => (/ (* 2000 2001) 2))
      ;; Unbuffered rendezvous (capacity = 0)
      (def rdv
        (run-fibers
         (lambda ()
           (let ((ch (make-fiber-channel 0))
                 (acc (make-atomic-fxbox 0)))
             (with-nursery
              (lambda (n)
                (fiber-spawn
                 (lambda ()
                   (let loop ((i 1))
                     (when (fx<= i 200)
                       (fiber-send! ch i)
                       (loop (fx+ i 1)))))
                 n)
                (fiber-spawn
                 (lambda ()
                   (let loop ((i 0))
                     (when (fx< i 200)
                       (atomic-fxbox-fetch-add! acc (fiber-recv! ch))
                       (loop (fx+ i 1)))))
                 n)))
             (atomic-fxbox-ref acc)))))
      (check rdv => (/ (* 200 201) 2)))

    (test-case "parallel-map and parallel-for-each across all SMP workers"
      (def inputs (iota 200))
      (def squares (parallel-map (lambda (x) (* x x)) inputs))
      (check squares => (map (lambda (x) (* x x)) inputs))
      (def acc (make-atomic-fxbox 0))
      (parallel-for-each (lambda (x) (atomic-fxbox-fetch-add! acc x)) inputs)
      (check (atomic-fxbox-ref acc) => (/ (* 199 200) 2)))

    (test-case "ActorNursery structured supervision, SRFI-226 context marks, and fiber-actor-call"
      ;; 1. ActorNursery + SRFI-226 actor context propagation + fiber-actor-call bridge
      (def result
        (with-actor-context '((trace-id . "req-smp-42") (tenant . "gerbil"))
          (lambda ()
            (with-actor-nursery
             (lambda (an)
               (check (actor-nursery? an) => #t)
               (def server
                 (nursery-spawn-actor/name an 'echo-srv
                   (lambda ()
                     (def tid (actor-context-ref 'trace-id))
                     (let loop ()
                       (<- protocol: proto:/fiber-test
                           ('stop (--> 'stopped))
                           (x (--> (cons tid (* x 2))) (loop)))))))
               ;; 64 lightweight fibers concurrently RPC the Gerbil Actor without blocking carriers!
               (def fiber-sum
                 (run-fibers
                  (lambda ()
                    (let ((tot (make-atomic-fxbox 0)))
                      (with-nursery
                       (lambda (fn)
                         (let loop ((i 1))
                           (when (fx<= i 64)
                             (let ((v i))
                               (fiber-spawn
                                (lambda ()
                                  (let ((rep (fiber-actor-call server v proto:/fiber-test)))
                                    (check (car rep) => "req-smp-42")
                                    (atomic-fxbox-fetch-add! tot (cdr rep))))
                                fn))
                             (loop (fx+ i 1))))))
                      (atomic-fxbox-ref tot)))))
               (check (->> server 'stop proto:/fiber-test) => 'stopped)
               fiber-sum)))))
      (check result => (* 2 (/ (* 64 65) 2)))

      ;; 2. ActorNursery cancels orphaned sibling actors cleanly on failure
      (def sibling-alive (make-atomic-fxbox 0))
      (check-exception
       (with-actor-nursery
        (lambda (an)
          (nursery-spawn-actor/name an 'long-sibling
            (lambda ()
              (atomic-fxbox-set! sibling-alive 1 (memory-order release))
              (thread-sleep! 60)))
          (nursery-spawn-actor/name an 'failing-actor
            (lambda ()
              (let wait ()
                (when (fx= (atomic-fxbox-ref sibling-alive (memory-order acquire)) 0)
                  (thread-yield!)
                  (wait)))
              (error "actor-nursery-boom")))))
       Error?))

    (test-case "Cross-worker migration torture: SRFI-226 marks, nested handlers & parameterize across steals"
      (def eff-tag (make-effect 'mig-tag))
      (def p-key (make-parameter 'root))
      (def m-key (list 'mig-mark))
      (def verified (make-atomic-fxbox 0))
      (def migrated (make-atomic-fxbox 0))
      (run-fibers
       (lambda ()
         (with-nursery
          (lambda (n)
            (for (fid (in-range 128))
              (let ((id fid))
                (fiber-spawn
                 (lambda ()
                   (let ((start-thr (current-thread)))
                     (parameterize ((p-key id))
                       (with-continuation-mark m-key (cons 'outer id)
                         (with-handler
                           ((tail: (eff-tag x) (+ x id)))
                           (let loop ((step 0) (ok #t))
                             (if (fx< step 24)
                               (begin
                                 (fiber-yield)
                                 (unless (eq? (current-thread) start-thr)
                                   (atomic-fxbox-fetch-add! migrated 1 (memory-order relaxed)))
                                 (let* ((m (continuation-mark-set-first
                                            (current-continuation-marks) m-key #f))
                                        (e (perform eff-tag step))
                                        (p (p-key))
                                        (step-ok (and (equal? m (cons 'outer id))
                                                      (= e (+ step id))
                                                      (= p id))))
                                   (loop (fx+ step 1) (and ok step-ok))))
                               (when ok
                                 (atomic-fxbox-fetch-add! verified 1 (memory-order relaxed))))))))))
                 n)))))))
      (check (atomic-fxbox-ref verified (memory-order acquire)) => 128)
      (when (> (##current-vm-processor-count) 1)
        (check (> (atomic-fxbox-ref migrated (memory-order acquire)) 0) => #t)))

    (test-case "Detached fiber uncaught exceptions & nested prompt unwinding never kill workers or leak TCState"
      (def ok-count (make-atomic-fxbox 0))
      (def eff-inner (make-effect 'inner-exn-eff))
      (run-fibers
       (lambda ()
         ;; 1. Spawn 32 detached fibers that throw uncaught exceptions; scheduler must NOT hang or lose workers!
         (for (i (in-range 32))
           (fiber-spawn
            (lambda ()
              (when (fx= (fxand i 1) 0) (fiber-yield))
              (error "detached-fiber-boom" i))))
         ;; 2. Spawn 64 nursery fibers that throw inside nested with-handler + prompt + marks,
         ;;    catch them, and verify zero leaked marks/handlers on carrier threads!
         (with-nursery
          (lambda (n)
            (for (i (in-range 64))
              (let ((id i)
                    (ptag (make-continuation-prompt-tag 'fiber-exn-prompt))
                    (mkey (list 'fiber-exn-mark)))
                (fiber-spawn
                 (lambda ()
                   (let ((caught
                          (with-catch
                           (lambda (e) (and (Error? e) (equal? (error-message e) "inner-boom")))
                           (lambda ()
                             (call-with-continuation-prompt
                              (lambda ()
                                (with-continuation-mark mkey id
                                  (with-handler
                                    (((eff-inner k x) (resume k (+ x 1))))
                                    (fiber-yield)
                                    (check (perform eff-inner 10) => 11)
                                    (error "inner-boom"))))
                              ptag)))))
                     (when (and caught
                                (not (continuation-prompt-available? ptag))
                                (not (continuation-mark-set-first
                                      (current-continuation-marks) mkey #f)))
                       (atomic-fxbox-fetch-add! ok-count 1 (memory-order relaxed)))))
                 n)))))))
      (check (atomic-fxbox-ref ok-count (memory-order acquire)) => 64))

    (test-case "Cooperative nursery-cancel!, non-blocking fiber-sleep!, FiberMutex & FiberSemaphore SMP stress"
      ;; 1. Cooperative nursery-cancel! triggered on first child error
      (def observed-cancel (make-atomic-fxbox 0))
      (check-exception
       (run-fibers
        (lambda ()
          (with-nursery
           (lambda (n)
             (fiber-spawn
              (lambda ()
                (let wait ()
                  (if (nursery-cancelled? n)
                    (atomic-fxbox-fetch-add! observed-cancel 1 (memory-order release))
                    (begin (fiber-yield) (wait)))))
              n)
             (fiber-spawn (lambda () (fiber-yield) (error "trigger-cancel")) n)))))
       Error?)
      (check (atomic-fxbox-ref observed-cancel (memory-order acquire)) => 1)

      ;; 2. Non-blocking fiber-sleep!: 64 fibers sleep 40ms on 2 workers -> ~50-200ms wall time!
      (def t0 (##current-time-point))
      (def slept (make-atomic-fxbox 0))
      (run-fibers
       (lambda ()
         (with-nursery
          (lambda (n)
            (for (_ (in-range 64))
              (fiber-spawn
               (lambda ()
                 (fiber-sleep! 0.04)
                 (atomic-fxbox-fetch-add! slept 1 (memory-order relaxed)))
               n)))))
       workers: 2)
      (check (atomic-fxbox-ref slept (memory-order acquire)) => 64)
      (check (< (- (##current-time-point) t0) 0.5) => #t)

      ;; 3. FiberMutex mutual exclusion across yields + exception unlock safety under SMP
      (def fm-total
        (run-fibers
         (lambda ()
           (let ((fm (make-fiber-mutex))
                 (counter 0))
             (check (fiber-mutex? fm) => #t)
             (with-nursery
              (lambda (n)
                (for (i (in-range 64))
                  (let ((id i))
                    (fiber-spawn
                     (lambda ()
                       (for (k (in-range 20))
                         (if (and (fx= (fxand id 7) 0) (fx= k 10))
                           (with-catch void
                             (lambda ()
                               (with-fiber-lock fm
                                 (lambda ()
                                   (set! counter (fx+ counter 1))
                                   (fiber-yield)
                                   (error "unlock-on-error")))))
                           (with-fiber-lock fm
                             (lambda ()
                               (let ((c counter))
                                 (when (fx= (fxand k 3) 0) (fiber-yield))
                                 (set! counter (fx+ c 1))))))))
                     n)))))
             counter))))
      (check fm-total => (* 64 20))

      ;; 4. FiberSemaphore bounded concurrency invariant (never exceeds 4 concurrent holders!)
      (def sem-ok
        (run-fibers
         (lambda ()
           (let ((sem (make-fiber-semaphore 4))
                 (in-flight (make-atomic-fxbox 0))
                 (max-seen (make-atomic-fxbox 0))
                 (completed (make-atomic-fxbox 0)))
             (check (fiber-semaphore? sem) => #t)
             (with-nursery
              (lambda (n)
                (for (_ (in-range 120))
                  (fiber-spawn
                   (lambda ()
                     (with-fiber-semaphore sem
                       (lambda ()
                         (let ((cur (fx+ (atomic-fxbox-fetch-add! in-flight 1 (memory-order acquire-release)) 1)))
                           (let upd ()
                             (let ((m (atomic-fxbox-ref max-seen (memory-order acquire))))
                               (when (and (fx> cur m)
                                          (not (fx= (atomic-fxbox-compare-and-swap! max-seen m cur (memory-order acquire-release)) m)))
                                 (upd))))
                           (fiber-yield)
                           (atomic-fxbox-fetch-sub! in-flight 1 (memory-order acquire-release))
                           (atomic-fxbox-fetch-add! completed 1 (memory-order relaxed))))))
                   n))))
             (list (atomic-fxbox-ref completed) (<= (atomic-fxbox-ref max-seen) 4))))))
      (check sem-ok => '(120 #t)))

    (test-case "FiberChannel try-send/try-recv & concurrent close-race storm across all SMP workers"
      (run-fibers
       (lambda ()
         (let ((ch (make-fiber-channel 2)))
           (check (fiber-try-recv! ch 'none) => 'none)
           (check (fiber-try-send! ch 10) => #t)
           (check (fiber-try-send! ch 20) => #t)
           (check (fiber-try-send! ch 30) => #f)
           (check (fiber-try-recv! ch 'none) => 10)
           (check (fiber-try-recv! ch 'none) => 20)
           (check (fiber-try-recv! ch 'none) => 'none))))
      ;; Concurrent close race: 64 senders + 64 receivers on cap=1 channel while closer closes mid-flight
      (let ((closed-senders (make-atomic-fxbox 0))
            (eof-receivers (make-atomic-fxbox 0)))
        (run-fibers
         (lambda ()
           (let ((ch (make-fiber-channel 1)))
             (with-nursery
              (lambda (n)
                (for (i (in-range 64))
                  (fiber-spawn
                   (lambda ()
                     (with-catch
                      (lambda (e)
                        (when (io-closed-error? e)
                          (atomic-fxbox-fetch-add! closed-senders 1 (memory-order relaxed))))
                      (lambda ()
                        (let loop ((k 0))
                          (fiber-send! ch k)
                          (loop (fx+ k 1))))))
                   n))
                (for (_ (in-range 64))
                  (fiber-spawn
                   (lambda ()
                     (let loop ()
                       (let ((v (fiber-recv! ch)))
                         (if (eof-object? v)
                           (atomic-fxbox-fetch-add! eof-receivers 1 (memory-order relaxed))
                           (loop)))))
                   n))
                (fiber-spawn
                 (lambda ()
                   (fiber-sleep! 0.01)
                   (fiber-channel-close! ch))
                 n))))))
        (check (atomic-fxbox-ref eof-receivers (memory-order acquire)) => 64)
        (check (atomic-fxbox-ref closed-senders (memory-order acquire)) => 64)))))
