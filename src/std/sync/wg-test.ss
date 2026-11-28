;;; -*- Gerbil -*-
;;; © fare
;;; :std/sync/wg test
(import :std/test
        :std/error
        :std/iter
        ./atomic
        ./wg)
(export wg-test)

(def wg-test
  (test-suite "test :std/sync/wg"
    (test-case "nil wg: add runs thunk directly, wait is no-op"
      (def ran #f)
      (wg-add! #f (lambda () (set! ran #t)))
      (check ran => #t)
      (check (wg-wait! #f) => (void)))

    (test-case "basic: tasks complete before wg-wait! returns"
      (def mx (make-mutex))
      (def results [])
      (def wg (make-wg 2))
      (for (i (in-range 10))
        (wg-add! wg (lambda ()
                      (mutex-lock! mx)
                      (set! results (cons i results))
                      (mutex-unlock! mx))))
      (wg-wait! wg)
      (check (length results) => 10))

    (test-case "single worker: tasks run sequentially"
      (def order [])
      (def wg (make-wg 1))
      (for (i (in-range 5))
        (let (j i)
          (wg-add! wg (lambda () (set! order (cons j order))))))
      (wg-wait! wg)
      ;; single worker → FIFO order; reverse because we consed
      (check (reverse order) => '(0 1 2 3 4)))

    (test-case "wg-wait! propagates worker exception"
      (def wg (make-wg 2))
      (wg-add! wg (lambda () (with-catch ##thread-end-with-uncaught-exception!
                                         (cut error "boom" 42))))
      (check-exception (wg-wait! wg)
                       (lambda (e) (and (Error? e) (equal? (error-message e) "boom")))))

    (test-case "many workers, many tasks: all complete"
      (def count 0)
      (def mx (make-mutex))
      (def wg (make-wg 4))
      (for (_ (in-range 100))
        (wg-add! wg (lambda ()
                      (mutex-lock! mx)
                      (set! count (fx+ count 1))
                      (mutex-unlock! mx))))
      (wg-wait! wg)
      (check count => 100))

    (test-case "SMP stress: multi-producer burst + idle park/wake cycles"
      (def acc (make-atomic-fxbox 0))
      (def wg (make-wg 8))
      ;; Phase 1: 4 concurrent producers submitting 2000 tasks each
      (def producers
        (map (lambda (_)
               (spawn (lambda ()
                        (for (_ (in-range 2000))
                          (wg-add! wg (lambda ()
                                        (atomic-fxbox-fetch-add! acc 1 (memory-order relaxed))))))))
             (iota 4)))
      (for-each thread-join! producers)
      ;; Phase 2: let all workers park on condvar, then wake via trickled tasks
      (thread-sleep! 0.02)
      (for (_ (in-range 20))
        (wg-add! wg (lambda ()
                      (atomic-fxbox-fetch-add! acc 1 (memory-order relaxed))))
        (thread-sleep! 0.002))
      (wg-wait! wg)
      (check (atomic-fxbox-ref acc (memory-order acquire)) => 8020))

    (test-case "SMP liveness: post-idle cascade wakeup activates all W/W workers across repeated waves"
      (def w (max 2 (##current-vm-processor-count)))
      (def (count-distinct vec)
        (let ((len (vector-length vec)))
          (let loop ((i 0) (seen '()))
            (if (fx>= i len)
              (length seen)
              (let ((x (vector-ref vec i)))
                (loop (fx+ i 1)
                      (if (or (not x) (memq x seen)) seen (cons x seen))))))))
      (def wg (make-wg w))
      (def wave-counts (make-vector 5 0))
      ;; 5 consecutive idle->burst waves: sleep 25ms so ALL W workers park on wg.cv,
      ;; then submit W barrier-synchronized tasks and verify ALL W/W distinct workers run!
      (for (round (in-range 5))
        (thread-sleep! 0.025)
        (let ((seen (make-vector w #f))
              (arrived (make-atomic-fxbox 0))
              (done (make-atomic-fxbox 0))
              (t0 (##current-time-point)))
          (for (i (in-range w))
            (let ((idx i))
              (wg-add! wg
                       (lambda ()
                         (vector-set! seen idx (current-thread))
                         (atomic-fxbox-fetch-add! arrived 1 (memory-order acquire-release))
                         (let wait ()
                           (when (and (fx< (atomic-fxbox-ref arrived (memory-order acquire)) w)
                                      (< (- (##current-time-point) t0) 0.5))
                             (wait)))
                         (atomic-fxbox-fetch-add! done 1 (memory-order acquire-release))))))
          (let join-wave ()
            (when (and (fx< (atomic-fxbox-ref done (memory-order acquire)) w)
                       (< (- (##current-time-point) t0) 1.0))
              (thread-yield!)
              (join-wave)))
          (check (atomic-fxbox-ref done (memory-order acquire)) => w)
          (vector-set! wave-counts round (count-distinct seen))))
      (wg-wait! wg)
      (check (vector->list wave-counts) => (make-list 5 w)))

    (test-case "SMP conservation: 12,000 multi-segment tasks exact-once execution across all host cores"
      (def w (max 4 (##current-vm-processor-count)))
      (def total 12000)
      (def seen (make-vector total 0))
      (def wg (make-wg w))
      (def nprod (max 2 (quotient w 2)))
      (def per (quotient total nprod))
      (def prods
        (map (lambda (pid)
               (spawn
                (lambda ()
                  (let ((base (fx* pid per)))
                    (for (i (in-range per))
                      (let ((idx (fx+ base i)))
                        (wg-add! wg
                                 (lambda ()
                                   (let inc ()
                                     (let ((old (vector-atomic-ref seen idx (memory-order acquire))))
                                       (unless (eq? (vector-atomic-cas! seen idx old (fx+ old 1) (memory-order acquire-release)) old)
                                         (inc))))))))))))
             (iota nprod)))
      (for-each thread-join! prods)
      (wg-wait! wg)
      (let ((bad 0))
        (for (i (in-range (fx* nprod per)))
          (unless (fx= (vector-atomic-ref seen i (memory-order acquire)) 1)
            (set! bad (fx+ bad 1))))
        (check bad => 0)))))
