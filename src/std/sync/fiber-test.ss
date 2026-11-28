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
        :std/actor
        :gerbil/runtime/util)
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
        (check (atomic-fxbox-ref closed-senders (memory-order acquire)) => 64)))

    (test-case "Wait-free FiberPromise SMP racing resolvers, external wakes & 500-promise fan-out"
      ;; 1. Pre-resolved fast path & fiber-promise-resolved?
      (let ((p (make-fiber-promise)))
        (check (fiber-promise? p) => #t)
        (check (fiber-promise-resolved? p) => #f)
        (check (fiber-promise-resolve! p 'hello) => #t)
        (check (fiber-promise-resolved? p) => #t)
        (check (fiber-promise-resolve! p 'second) => #f)
        (check (fiber-promise-await! p) => 'hello))

      ;; 2. External thread wakes parked fiber awaiter + 16 racing resolvers (exact 1 winner!)
      (def race-res
        (run-fibers
         (lambda ()
           (let ((p-ext (make-fiber-promise))
                 (wins (make-atomic-fxbox 0))
                 (fan-sum (make-atomic-fxbox 0)))
             ;; External green thread resolves p-ext after fiber parks
             (spawn/name 'promise-ext-waker
               (lambda ()
                 (thread-sleep! 0.01)
                 (fiber-promise-resolve! p-ext 4242)))
             (check (fiber-promise-await! p-ext) => 4242)
             ;; 16 concurrent fibers race to resolve a single FiberPromise
             (let ((p-race (make-fiber-promise))
                   (winner-val (make-atomic-fxbox -1)))
               (with-nursery
                (lambda (n)
                  (for (i (in-range 16))
                    (let ((id i))
                      (fiber-spawn
                       (lambda ()
                         (when (fiber-promise-resolve! p-race id)
                           (atomic-fxbox-fetch-add! wins 1 (memory-order relaxed))
                           (atomic-fxbox-set! winner-val id (memory-order release))))
                       n)))))
               (check (atomic-fxbox-ref wins (memory-order acquire)) => 1)
               (check (fiber-promise-await! p-race) => (atomic-fxbox-ref winner-val (memory-order acquire))))
             ;; 500-promise concurrent producer/awaiter fan-out across all SMP workers
             (let ((promises (let ((v (make-vector 500 #f)))
                               (for (i (in-range 500))
                                 (vector-set! v i (make-fiber-promise)))
                               v)))
               (with-nursery
                (lambda (n)
                  (for (i (in-range 500))
                    (let ((id i)
                          (pr (vector-ref promises i)))
                      (fiber-spawn
                       (lambda ()
                         (atomic-fxbox-fetch-add! fan-sum (fiber-promise-await! pr) (memory-order relaxed)))
                       n)
                      (fiber-spawn
                       (lambda ()
                         (when (fx= (fxand id 7) 0) (fiber-yield))
                         (fiber-promise-resolve! pr (fx+ id 1)))
                       n)))))
               (atomic-fxbox-ref fan-sum (memory-order acquire)))))))
      (check race-res => (/ (* 500 501) 2)))

    (test-case "Nursery+detached mixed spawn liveness & 10,000-fiber WSDeque batch-spill torture"
      ;; 1. Detached fibers spawned inside a nursery must keep scheduler alive after nursery exits
      (def detached-done (make-atomic-fxbox 0))
      (def nursery-ret
        (run-fibers
         (lambda ()
           (with-nursery
            (lambda (n)
              (for (i (in-range 32))
                (let ((id i))
                  (fiber-spawn
                   (lambda ()
                     (fiber-spawn
                      (lambda ()
                        (fiber-sleep! 0.015)
                        (atomic-fxbox-fetch-add! detached-done (fx+ id 1) (memory-order relaxed)))))
                   n)))))
           'nursery-finished)))
      (check nursery-ret => 'nursery-finished)
      (check (atomic-fxbox-ref detached-done (memory-order acquire)) => (/ (* 32 33) 2))

      ;; 2. 10,000 bulk-spawned nursery fibers overflow the 4096-slot LocalRunQ -> 256-item batch spill
      (def bulk-sum
        (run-fibers
         (lambda ()
           (let ((acc (make-atomic-fxbox 0)))
             (with-nursery
              (lambda (n)
                (let loop ((i 1))
                  (when (fx<= i 10000)
                    (let ((v i))
                      (fiber-spawn
                       (lambda ()
                         (atomic-fxbox-fetch-add! acc v (memory-order relaxed)))
                       n))
                    (loop (fx+ i 1))))))
             (atomic-fxbox-ref acc (memory-order acquire))))))
      (check bulk-sum => (/ (* 10000 10001) 2)))

    (test-case "Post-sleep steal-cascade wakeup activates all W/W SMP workers (Quint model witness)"
      (def expected-workers (max 1 (##current-vm-processor-count)))
      (def (count-distinct vec)
        (let ((len (vector-length vec)))
          (let loop ((i 0) (seen '()))
            (if (fx>= i len)
              (length seen)
              (let ((x (vector-ref vec i)))
                (loop (fx+ i 1)
                      (if (or (not x) (memq x seen)) seen (cons x seen))))))))

      ;; 1. Single-producer post-sleep fan-out: after fiber-sleep! parks all W-1
      ;;    siblings on park-cv, spawning W concurrent tasks MUST wake all W workers
      ;;    (previously starved to 2/W cores due to lost steal-cascade wakeup!).
      (def single-wave-distinct
        (run-fibers
         (lambda ()
           (fiber-sleep! 0.03)
           (let ((seen (make-vector expected-workers #f))
                 (arrived (make-atomic-fxbox 0))
                 (t0 (##current-time-point)))
             (with-nursery
              (lambda (n)
                (for (i (in-range expected-workers))
                  (let ((idx i))
                    (fiber-spawn
                     (lambda ()
                       (vector-set! seen idx (current-thread))
                       (atomic-fxbox-fetch-add! arrived 1 (memory-order acquire-release))
                       ;; Hold this carrier briefly until all W siblings have woken and arrived
                       ;; (bounded safety cap 0.5s prevents hang if a regression breaks cascade).
                       (let wait ()
                         (when (and (fx< (atomic-fxbox-ref arrived (memory-order acquire))
                                         expected-workers)
                                    (< (- (##current-time-point) t0) 0.5))
                           (wait))))
                     n)))))
             (count-distinct seen)))))
      (check single-wave-distinct => expected-workers)

      ;; 2. Distributed multi-deque cascade (Quint Counterexample 3 witness):
      ;;    two parent tasks populate distinct worker deques after all peers sleep,
      ;;    verifying unconditional cascade wakes all W workers across peer deques.
      (when (fx>= expected-workers 3)
        (let ((multi-wave-distinct
               (run-fibers
                (lambda ()
                  (fiber-sleep! 0.03)
                  (let* ((half (fxquotient expected-workers 2))
                         (rest (fx- expected-workers half))
                         (seen (make-vector expected-workers #f))
                         (arrived (make-atomic-fxbox 0))
                         (t0 (##current-time-point))
                         (spawn-group
                          (lambda (n base cnt)
                            (for (k (in-range cnt))
                              (let ((idx (fx+ base k)))
                                (fiber-spawn
                                 (lambda ()
                                   (vector-set! seen idx (current-thread))
                                   (atomic-fxbox-fetch-add! arrived 1 (memory-order acquire-release))
                                   (let wait ()
                                     (when (and (fx< (atomic-fxbox-ref arrived (memory-order acquire))
                                                     expected-workers)
                                                (< (- (##current-time-point) t0) 0.5))
                                       (wait))))
                                 n))))))
                    (with-nursery
                     (lambda (n)
                       (fiber-spawn (lambda () (spawn-group n 0 half)) n)
                       (fiber-spawn (lambda () (spawn-group n half rest)) n)))
                    (count-distinct seen))))))
          (check multi-wave-distinct => expected-workers))))

    (test-case "Phase C18 +32 nursery credit switching, nested nurseries & mid-batch error abort"
      ;; 1. Interleave 200 spawns across two distinct nurseries (crossing 32-credit
      ;;    boundaries and forcing nursery-cur switches on every iteration).
      (def switch-sums
        (run-fibers
         (lambda ()
           (let ((s1 (make-atomic-fxbox 0))
                 (s2 (make-atomic-fxbox 0)))
             (with-nursery
              (lambda (n1)
                (with-nursery
                 (lambda (n2)
                   (for (i (in-range 1 201))
                     (let ((v i))
                       (fiber-spawn
                        (lambda ()
                          (when (fx= (fxand v 15) 0) (fiber-yield))
                          (atomic-fxbox-fetch-add! s1 v (memory-order relaxed)))
                        n1)
                       (fiber-spawn
                        (lambda ()
                          (when (fx= (fxand v 15) 7) (fiber-yield))
                          (atomic-fxbox-fetch-add! s2 v (memory-order relaxed)))
                        n2)))))))
             (list (atomic-fxbox-ref s1 (memory-order acquire))
                   (atomic-fxbox-ref s2 (memory-order acquire)))))))
      (check switch-sums => (list (/ (* 200 201) 2) (/ (* 200 201) 2)))

      ;; 2. Mid-batch child error with unconsumed credits (5 spawns out of 32) inside
      ;;    an inner nursery must cleanly propagate and never leak outer nursery credits.
      (def outer-done (make-atomic-fxbox 0))
      (def caught-inner?
        (run-fibers
         (lambda ()
           (let ((caught #f))
             (with-nursery
              (lambda (outer)
                (for (i (in-range 1 41))
                  (let ((v i))
                    (fiber-spawn
                     (lambda ()
                       (fiber-yield)
                       (atomic-fxbox-fetch-add! outer-done v (memory-order relaxed)))
                     outer)))
                (with-catch
                 (lambda (e) (set! caught (Error? e)))
                 (lambda ()
                   (with-nursery
                    (lambda (inner)
                      (for (k (in-range 5))
                        (let ((id k))
                          (fiber-spawn
                           (lambda ()
                             (if (fx= id 2)
                               (error "mid-batch-credit-boom")
                               (fiber-yield)))
                           inner)))))))))
             caught))))
      (check caught-inner? => #t)
      (check (atomic-fxbox-ref outer-done (memory-order acquire)) => (/ (* 40 41) 2)))

    (test-case "Multi-wave park/wake stability & zero-busy-spin idle CPU verification"
      (def expected-workers (max 1 (##current-vm-processor-count)))
      (def (count-distinct vec)
        (let ((len (vector-length vec)))
          (let loop ((i 0) (seen '()))
            (if (fx>= i len)
              (length seen)
              (let ((x (vector-ref vec i)))
                (loop (fx+ i 1)
                      (if (or (not x) (memq x seen)) seen (cons x seen))))))))
      (def (proc-cpu-time)
        (let ((st (##process-statistics)))
          (+ (f64vector-ref st 0) (f64vector-ref st 1))))

      ;; 1. Zero-busy-spin idle check: sleeping 120ms across W workers must NOT burn
      ;;    W * 120ms of CPU time (proves workers truly park on park-cv), AND
      ;;    immediately waking from that sleep must activate all W/W workers!
      (def idle-res
        (run-fibers
         (lambda ()
           (let* ((cpu0 (proc-cpu-time))
                  (_ (fiber-sleep! 0.12))
                  (cpu-delta (- (proc-cpu-time) cpu0))
                  (wave-counts (make-vector 5 0)))
             ;; 5 consecutive sleep->burst waves inside one run-fibers prove
             ;; SPIN/SLEEP/WAKING counters never drift or leak across park/wake cycles.
             (for (w (in-range 5))
               (when (fx> w 0) (fiber-sleep! 0.025))
               (let ((seen (make-vector expected-workers #f))
                     (arrived (make-atomic-fxbox 0))
                     (t0 (##current-time-point)))
                 (with-nursery
                  (lambda (n)
                    (for (i (in-range expected-workers))
                      (let ((idx i))
                        (fiber-spawn
                         (lambda ()
                           (vector-set! seen idx (current-thread))
                           (atomic-fxbox-fetch-add! arrived 1 (memory-order acquire-release))
                           (let wait ()
                             (when (and (fx< (atomic-fxbox-ref arrived (memory-order acquire))
                                             expected-workers)
                                        (< (- (##current-time-point) t0) 0.5))
                               (wait))))
                         n)))))
                 (vector-set! wave-counts w (count-distinct seen))))
             (cons cpu-delta (vector->list wave-counts))))))
      ;; Idle CPU during 120ms sleep across W >= 2 workers must stay well below busy-spin
      (when (fx>= expected-workers 2)
        (check (< (car idle-res) (* 0.5 0.12 expected-workers)) => #t))
      (check (cdr idle-res) => (make-list 5 expected-workers)))

    (test-case "External-thread cold wakeup (FiberPromise & FiberChannel) cascades to all W/W workers"
      (def expected-workers (max 1 (##current-vm-processor-count)))
      (def (count-distinct vec)
        (let ((len (vector-length vec)))
          (let loop ((i 0) (seen '()))
            (if (fx>= i len)
              (length seen)
              (let ((x (vector-ref vec i)))
                (loop (fx+ i 1)
                      (if (or (not x) (memq x seen)) seen (cons x seen))))))))
      (def (run-wave!)
        (let ((seen (make-vector expected-workers #f))
              (arrived (make-atomic-fxbox 0))
              (t0 (##current-time-point)))
          (with-nursery
           (lambda (n)
             (for (i (in-range expected-workers))
               (let ((idx i))
                 (fiber-spawn
                  (lambda ()
                    (vector-set! seen idx (current-thread))
                    (atomic-fxbox-fetch-add! arrived 1 (memory-order acquire-release))
                    (let wait ()
                      (when (and (fx< (atomic-fxbox-ref arrived (memory-order acquire))
                                      expected-workers)
                                 (< (- (##current-time-point) t0) 0.5))
                        (wait))))
                  n)))))
          (count-distinct seen)))

      ;; 1. All W workers parked while root awaits FiberPromise; external green thread resolves it
      (def p-ext (make-fiber-promise))
      (def ext1
        (spawn/name 'cold-promise-waker
          (lambda ()
            (thread-sleep! 0.03)
            (fiber-promise-resolve! p-ext 'wake))))
      (def d-prom
        (run-fibers
         (lambda ()
           (check (fiber-promise-await! p-ext) => 'wake)
           (run-wave!))))
      (thread-join! ext1)
      (check d-prom => expected-workers)

      ;; 2. All W workers parked while root awaits FiberChannel; external green thread sends to it
      (def ch-ext (make-fiber-channel 1))
      (def ext2
        (spawn/name 'cold-chan-waker
          (lambda ()
            (thread-sleep! 0.03)
            (fiber-send! ch-ext 'go))))
      (def d-chan
        (run-fibers
         (lambda ()
           (check (fiber-recv! ch-ext) => 'go)
           (run-wave!))))
      (thread-join! ext2)
      (check d-chan => expected-workers))

    (test-case "LocalRunQ exact-once conservation across 4096 boundaries (4095/4096/4097/8500) & batch-stealing"
      (for-each
       (lambda (n-tasks)
         (let ((counts (make-vector n-tasks 0)))
           (run-fibers
            (lambda ()
              (with-nursery
               (lambda (n)
                 (let loop ((i 0))
                   (when (fx< i n-tasks)
                     (let ((idx i))
                       (fiber-spawn
                        (lambda ()
                          (__atomic-fx-fetch-add! counts idx 1 3))
                        n))
                     (loop (fx+ i 1))))))))
           ;; Verify EVERY task executed EXACTLY ONCE (catches both drops AND duplicates!)
           (let ((bad 0))
             (let check-loop ((i 0))
               (when (fx< i n-tasks)
                 (unless (fx= (:- (__atomic-fx-load counts i 1) :fixnum) 1)
                   (set! bad (fx+ bad 1)))
                 (check-loop (fx+ i 1))))
             (check bad => 0))))
       '(4095 4096 4097 8500)))

    (test-case "Private LIFO anti-starvation (streak cap 8), global-q fairness, fork-join tree & oversubscription"
      ;; 1. Single-worker LIFO ping-pong must NOT starve local-dq or global-q fibers!
      (def fairness-res
        (run-fibers
         (lambda ()
           (let ((ch (make-fiber-channel 1))
                 (stop (make-atomic-fxbox 0))
                 (local-ran (make-atomic-fxbox 0))
                 (global-ran (make-atomic-fxbox 0))
                 (p-ext (make-fiber-promise)))
             (with-nursery
              (lambda (n)
                ;; External thread wakes a fiber via global-q while ping-pong hogs LIFO
                (spawn/name 'fairness-ext
                  (lambda ()
                    (thread-sleep! 0.005)
                    (fiber-promise-resolve! p-ext 'global-ok)))
                (fiber-spawn
                 (lambda ()
                   (when (eq? (fiber-promise-await! p-ext) 'global-ok)
                     (atomic-fxbox-set! global-ran 1 (memory-order release))
                     (when (fx= (atomic-fxbox-ref local-ran (memory-order acquire)) 1)
                       (atomic-fxbox-set! stop 1 (memory-order release)))))
                 n)
                ;; Two ping-pong fibers continuously waking each other via LIFO
                (fiber-spawn
                 (lambda ()
                   (let lp ((k 0))
                     (when (and (fx= (atomic-fxbox-ref stop (memory-order acquire)) 0)
                                (fx< k 5000))
                       (fiber-send! ch k)
                       (lp (fx+ k 1))))
                   (fiber-channel-close! ch))
                 n)
                (fiber-spawn
                 (lambda ()
                   (let lp ()
                     (let ((v (fiber-recv! ch)))
                       (unless (eof-object? v)
                         (lp)))))
                 n)
                ;; Third local-dq fiber must execute without starvation
                (fiber-spawn
                 (lambda ()
                   (atomic-fxbox-set! local-ran 1 (memory-order release))
                   (when (fx= (atomic-fxbox-ref global-ran (memory-order acquire)) 1)
                     (atomic-fxbox-set! stop 1 (memory-order release))))
                 n)))
             (list (atomic-fxbox-ref local-ran (memory-order acquire))
                   (atomic-fxbox-ref global-ran (memory-order acquire)))))
         workers: 1))
      (check fairness-res => '(1 1))

      ;; 2. Post-sleep recursive divide-and-conquer fork-join tree (depth 6 = 64 leaves)
      (def tree-sum
        (run-fibers
         (lambda ()
           (fiber-sleep! 0.025)
           (let ((acc (make-atomic-fxbox 0)))
             (letrec ((fork-join
                       (lambda (lo hi)
                         (if (fx= lo hi)
                           (atomic-fxbox-fetch-add! acc lo (memory-order relaxed))
                           (let ((mid (fxarithmetic-shift-right (fx+ lo hi) 1)))
                             (with-nursery
                              (lambda (n)
                                (fiber-spawn (lambda () (fork-join lo mid)) n)
                                (fiber-spawn (lambda () (fork-join (fx+ mid 1) hi)) n))))))))
               (fork-join 1 64))
             (atomic-fxbox-ref acc (memory-order acquire))))))
      (check tree-sum => (/ (* 64 65) 2))

      ;; 3. Undersubscribed (1, 2, 3) & oversubscribed (2*P) workers after fiber-sleep!
      ;;    (proves sched_yield + condvar park never livelocks Gambit green threads)
      (def nprocs (max 1 (##current-vm-processor-count)))
      (for-each
       (lambda (w)
         (let ((tot (run-fibers
                     (lambda ()
                       (fiber-sleep! 0.015)
                       (let ((acc (make-atomic-fxbox 0)))
                         (with-nursery
                          (lambda (n)
                            (for (i (in-range 1 101))
                              (let ((v i))
                                (fiber-spawn
                                 (lambda ()
                                   (when (fx= (fxand v 7) 0) (fiber-yield))
                                   (atomic-fxbox-fetch-add! acc v (memory-order relaxed)))
                                 n)))))
                         (atomic-fxbox-ref acc (memory-order acquire))))
                     workers: w)))
           (check tot => (/ (* 100 101) 2))))
       (list 1 2 3 (fx* 2 nprocs))))

    (test-case "Phase C18 nursery credit boundaries (1/31/32/33/63/64/65), parent migration, parked-flush & parent-throw"
      ;; 1. Exact +32 credit boundary sizes
      (for-each
       (lambda (cnt)
         (let ((got (run-fibers
                     (lambda ()
                       (let ((acc (make-atomic-fxbox 0)))
                         (with-nursery
                          (lambda (n)
                            (for (i (in-range 1 (fx+ cnt 1)))
                              (let ((v i))
                                (fiber-spawn
                                 (lambda () (atomic-fxbox-fetch-add! acc v (memory-order relaxed)))
                                 n)))))
                         (atomic-fxbox-ref acc (memory-order acquire)))))))
           (check got => (/ (* cnt (fx+ cnt 1)) 2))))
       '(1 31 32 33 63 64 65))

      ;; 2. Parent spawns children on worker A, yields/migrates across workers, spawns more on B,
      ;;    parks on channel waiting for nested child nursery, then exits cleanly
      (def mig-res
        (run-fibers
         (lambda ()
           (let ((acc (make-atomic-fxbox 0))
                 (ch (make-fiber-channel 1)))
             (with-nursery
              (lambda (n)
                (for (i (in-range 1 11))
                  (let ((v i))
                    (fiber-spawn
                     (lambda () (atomic-fxbox-fetch-add! acc v (memory-order relaxed)))
                     n)))
                (for (_ (in-range 16)) (fiber-yield))
                (for (i (in-range 11 21))
                  (let ((v i))
                    (fiber-spawn
                     (lambda () (atomic-fxbox-fetch-add! acc v (memory-order relaxed)))
                     n)))
                ;; Spawn child that runs a nested nursery and signals ch while parent parks with unconsumed credits
                (fiber-spawn
                 (lambda ()
                   (with-nursery
                    (lambda (sub)
                      (for (_ (in-range 5))
                        (fiber-spawn (lambda () (fiber-yield)) sub))))
                   (fiber-send! ch 'nested-done))
                 n)
                (check (fiber-recv! ch) => 'nested-done)))
             (atomic-fxbox-ref acc (memory-order acquire))))))
      (check mig-res => (/ (* 20 21) 2))

      ;; 3. Parent body throws after spawning 5 children (holding 27 unconsumed credits):
      ;;    all 5 children must STILL complete before parent exception propagates!
      (def sib-done (make-atomic-fxbox 0))
      (check-exception
       (run-fibers
        (lambda ()
          (with-nursery
           (lambda (n)
             (for (_ (in-range 5))
               (fiber-spawn
                (lambda ()
                  (fiber-sleep! 0.01)
                  (atomic-fxbox-fetch-add! sib-done 1 (memory-order relaxed)))
                n))
             (error "parent-body-boom-with-credits")))))
       Error?)
      (check (atomic-fxbox-ref sib-done (memory-order acquire)) => 5))

    (test-case "FiberPromise 2000-race await/resolve torture & post-sleep nested parallel-map"
      ;; 1. Tight 2000-promise await/resolve race exercising state 0->1 vs 0->2->3 transitions
      (def prom-sum
        (run-fibers
         (lambda ()
           (let ((acc (make-atomic-fxbox 0)))
             (with-nursery
              (lambda (n)
                (for (i (in-range 1 2001))
                  (let ((v i)
                        (p (make-fiber-promise)))
                    (fiber-spawn
                     (lambda ()
                       (atomic-fxbox-fetch-add! acc (fiber-promise-await! p) (memory-order relaxed)))
                     n)
                    (fiber-spawn
                     (lambda ()
                       (fiber-promise-resolve! p v))
                     n)))))
             (atomic-fxbox-ref acc (memory-order acquire))))))
      (check prom-sum => (/ (* 2000 2001) 2))

      ;; 2. Post-sleep nested parallel-map preserves order and runs across all W workers
      (def expected-workers (max 1 (##current-vm-processor-count)))
      (def pmap-res
        (run-fibers
         (lambda ()
           (fiber-sleep! 0.025)
           (let ((arrived (make-atomic-fxbox 0))
                 (t0 (##current-time-point)))
             (parallel-map
              (lambda (x)
                (atomic-fxbox-fetch-add! arrived 1 (memory-order acquire-release))
                (let wait ()
                  (when (and (fx< (atomic-fxbox-ref arrived (memory-order acquire))
                                  expected-workers)
                             (< (- (##current-time-point) t0) 0.5))
                    (wait)))
                (* x x))
              (iota expected-workers))))))
      (check pmap-res => (map (lambda (x) (* x x)) (iota expected-workers))))

    (test-case "Vyukov lock-free FiberChannel non-pow2 cap=3 & cap=16 exact-once MPMC + lock-free FiberMutex/Semaphore torture"
      ;; 1. Exact-once MPMC conservation on BOTH non-pow2 (cap=3) and pow2 (cap=16) Vyukov rings
      (for-each
       (lambda (cap)
         (let* ((nprod 6)
                (ncons 6)
                (per 400)
                (total (fx* nprod per))
                (seen (make-vector total 0)))
           (run-fibers
            (lambda ()
              (let ((ch (make-fiber-channel cap)))
                (with-nursery
                 (lambda (n)
                   (for (p (in-range nprod))
                     (let ((pid p))
                       (fiber-spawn
                        (lambda ()
                          (for (i (in-range per))
                            (fiber-send! ch (fx+ (fx* pid per) i))))
                        n)))
                   (for (_ (in-range ncons))
                     (fiber-spawn
                      (lambda ()
                        (for (_ (in-range per))
                          (let ((v (fiber-recv! ch)))
                            (__atomic-fx-fetch-add! seen v 1 3))))
                      n)))))))
           (let ((bad 0))
             (let lp ((i 0))
               (when (fx< i total)
                 (unless (fx= (:- (__atomic-fx-load seen i 1) :fixnum) 1)
                   (set! bad (fx+ bad 1)))
                 (lp (fx+ i 1))))
             (check bad => 0))))
       '(3 16))

      ;; 2. 3-state lock-free FiberMutex: unbalanced unlock check + 128-fiber contended handoff
      (let ((fm (make-fiber-mutex)))
        (check-exception (fiber-mutex-unlock! fm) ContextError?))
      (def mtx-tot
        (run-fibers
         (lambda ()
           (let ((fm (make-fiber-mutex))
                 (cnt 0))
             (with-nursery
              (lambda (n)
                (for (_ (in-range 128))
                  (fiber-spawn
                   (lambda ()
                     (for (k (in-range 25))
                       (with-fiber-lock fm
                         (lambda ()
                           (let ((c cnt))
                             (when (fx= (fxand k 7) 0) (fiber-yield))
                             (set! cnt (fx+ c 1)))))))
                   n))))
             cnt))))
      (check mtx-tot => (* 128 25))

      ;; 3. Lock-free FiberSemaphore: Dekker release/park race with permits=1 & permits=3 across 200 fibers
      (for-each
       (lambda (permits)
         (let ((res
                (run-fibers
                 (lambda ()
                   (let ((sem (make-fiber-semaphore permits))
                         (active (make-atomic-fxbox 0))
                         (max-seen (make-atomic-fxbox 0))
                         (done (make-atomic-fxbox 0)))
                     (with-nursery
                      (lambda (n)
                        (for (_ (in-range 200))
                          (fiber-spawn
                           (lambda ()
                             (with-fiber-semaphore sem
                               (lambda ()
                                 (let ((cur (fx+ (atomic-fxbox-fetch-add! active 1 (memory-order acquire-release)) 1)))
                                   (let upd ()
                                     (let ((m (atomic-fxbox-ref max-seen (memory-order acquire))))
                                       (when (and (fx> cur m)
                                                  (not (fx= (atomic-fxbox-compare-and-swap! max-seen m cur (memory-order acquire-release)) m)))
                                         (upd))))
                                   (fiber-yield)
                                   (atomic-fxbox-fetch-sub! active 1 (memory-order acquire-release))
                                   (atomic-fxbox-fetch-add! done 1 (memory-order relaxed))))))
                           n))))
                     (list (atomic-fxbox-ref done (memory-order acquire))
                           (<= (atomic-fxbox-ref max-seen (memory-order acquire)) permits)))))))
           (check res => '(200 #t))))
       '(1 3)))))
