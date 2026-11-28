;;; -*- Gerbil -*-
;;; © Gerbil Contributors
;;; True-multicore SMP tests for :std/sync/concurrent (LFStack, LFQueue, WSDeque, ConcurrentTable).

(import :std/test
        :std/iter
        :std/sync/atomic
        :std/sync/concurrent)
(export concurrent-test)

(def (smp-nthreads)
  (max 4 (##current-vm-processor-count)))

(def concurrent-test
  (test-suite "Lock-free SMP concurrent data structures (:std/sync/concurrent)"
    (test-case "LFStack concurrent MPMC push/pop conservation across all cores"
      (def st (make-lf-stack))
      (check (lf-stack? st) => #t)
      (check (lf-stack-empty? st) => #t)
      (def nthreads (smp-nthreads))
      (def per-thread 2000)
      (def producers
        (for/collect (tid (in-range nthreads))
          (spawn
           (lambda ()
             (let loop ((i 0))
               (when (fx< i per-thread)
                 (lf-stack-push! st (fx+ (fx* tid per-thread) i))
                 (loop (fx+ i 1))))))))
      (for-each thread-join! producers)
      (check (lf-stack-empty? st) => #f)
      (def sum (make-atomic-fxbox 0))
      (def cnt (make-atomic-fxbox 0))
      (def consumers
        (for/collect (_ (in-range nthreads))
          (spawn
           (lambda ()
             (let loop ()
               (let-values (((ok v) (lf-stack-try-pop! st)))
                 (when ok
                   (atomic-fxbox-fetch-add! sum v (memory-order relaxed))
                   (atomic-fxbox-fetch-add! cnt 1 (memory-order relaxed))
                   (loop))))))))
      (for-each thread-join! consumers)
      (def total (* nthreads per-thread))
      (check (lf-stack-empty? st) => #t)
      (check (atomic-fxbox-ref cnt) => total)
      (check (atomic-fxbox-ref sum) => (quotient (* total (- total 1)) 2)))

    (test-case "LFQueue concurrent MPMC FIFO conservation across all cores"
      (def q (make-lf-queue))
      (check (lf-queue? q) => #t)
      (check (lf-queue-empty? q) => #t)
      (def half (max 2 (quotient (smp-nthreads) 2)))
      (def nprod half)
      (def ncons half)
      (def per-prod 2500)
      (def total (* nprod per-prod))
      (def popped-cnt (make-atomic-fxbox 0))
      (def popped-sum (make-atomic-fxbox 0))
      (def producers
        (for/collect (tid (in-range nprod))
          (spawn
           (lambda ()
             (let loop ((i 0))
               (when (fx< i per-prod)
                 (lf-queue-enqueue! q (fx+ (fx* tid per-prod) i))
                 (loop (fx+ i 1))))))))
      (def consumers
        (for/collect (_ (in-range ncons))
          (spawn
           (lambda ()
             (let loop ()
               (if (fx>= (atomic-fxbox-ref popped-cnt (memory-order acquire)) total)
                 (void)
                 (let-values (((ok v) (lf-queue-try-dequeue! q)))
                   (if ok
                     (begin
                       (atomic-fxbox-fetch-add! popped-sum v (memory-order relaxed))
                       (atomic-fxbox-fetch-add! popped-cnt 1 (memory-order acquire-release))
                       (loop))
                     (begin
                       (thread-yield!)
                       (loop))))))))))
      (for-each thread-join! producers)
      (for-each thread-join! consumers)
      (check (lf-queue-empty? q) => #t)
      (check (atomic-fxbox-ref popped-cnt) => total)
      (check (atomic-fxbox-ref popped-sum) => (quotient (* total (- total 1)) 2)))

    (test-case "WSDeque Chase-Lev single-owner + all-core thieves exact element conservation"
      (def dq (make-ws-deque 4096))
      (check (ws-deque? dq) => #t)
      (def n 2000)
      (def nthieves (max 2 (- (smp-nthreads) 1)))
      (def seen (make-vector n 0))
      (def done-push (make-atomic-fxbox 0))
      (def stolen-cnt (make-atomic-fxbox 0))
      (def popped-cnt (make-atomic-fxbox 0))
      (def thieves
        (for/collect (_ (in-range nthieves))
          (spawn
           (lambda ()
             (let loop ()
               (let-values (((ok v) (ws-deque-try-steal! dq)))
                 (if ok
                   (begin
                     (vector-atomic-set! seen v 1 (memory-order release))
                     (atomic-fxbox-fetch-add! stolen-cnt 1 (memory-order relaxed))
                     (loop))
                   (if (and (fx= (atomic-fxbox-ref done-push (memory-order acquire)) 1)
                            (fx= (ws-deque-size dq) 0))
                     (void)
                     (begin
                       (thread-yield!)
                       (loop))))))))))
      ;; Owner pushes and pops concurrently while thieves steal from top
      (let loop ((i 0))
        (when (fx< i n)
          (unless (ws-deque-push! dq i)
            (error "ws-deque unexpectedly full"))
          (when (fx= (fxand i 3) 0)
            (let-values (((ok v) (ws-deque-try-pop! dq)))
              (when ok
                (vector-atomic-set! seen v 1 (memory-order release))
                (atomic-fxbox-fetch-add! popped-cnt 1 (memory-order relaxed)))))
          (loop (fx+ i 1))))
      ;; Owner drains remainder
      (let drain ()
        (let-values (((ok v) (ws-deque-try-pop! dq)))
          (when ok
            (vector-atomic-set! seen v 1 (memory-order release))
            (atomic-fxbox-fetch-add! popped-cnt 1 (memory-order relaxed))
            (drain))))
      (atomic-fxbox-set! done-push 1 (memory-order release))
      (for-each thread-join! thieves)
      (check (+ (atomic-fxbox-ref popped-cnt) (atomic-fxbox-ref stolen-cnt)) => n)
      (let verify ((i 0))
        (when (fx< i n)
          (check (vector-atomic-ref seen i (memory-order acquire)) => 1)
          (verify (fx+ i 1)))))

    (test-case "ConcurrentTable wait-free reads + lock-free updates & deletes across all cores"
      (def ct (make-concurrent-table 128 eq? eq?-hash))
      (check (concurrent-table? ct) => #t)
      (def nkeys 256)
      (def nthr (smp-nthreads))
      (def threads
        (for/collect (tid (in-range nthr))
          (spawn
           (lambda ()
             (let loop ((i 0))
               (when (fx< i nkeys)
                 (let ((k (fxmodulo (fx+ i (fx* tid 31)) nkeys)))
                   (concurrent-table-update! ct k (lambda (found? old) (if found? (fx+ old 1) 1)))
                   (check (fixnum? (concurrent-table-ref ct k 0)) => #t))
                 (loop (fx+ i 1))))))))
      (for-each thread-join! threads)
      (check (concurrent-table-size ct) => nkeys)
      (let verify ((k 0))
        (when (fx< k nkeys)
          (check (concurrent-table-ref ct k #f) => nthr)
          (verify (fx+ k 1))))
      (check (concurrent-table-delete! ct 42) => #t)
      (check (concurrent-table-delete! ct 42) => #f)
      (check (concurrent-table-ref ct 42 'missing) => 'missing)
      (check (concurrent-table-size ct) => (fx- nkeys 1)))))
