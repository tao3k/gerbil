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
      (check (concurrent-table-size ct) => (fx- nkeys 1)))

    (test-case "WSDeque full-ring wraparound (cap=64) exact-once conservation under all-core stealing"
      (def dq (make-ws-deque 64))
      (def n 5000)
      (def nthieves (max 2 (- (smp-nthreads) 1)))
      (def seen (make-vector n 0))
      (def done-push (make-atomic-fxbox 0))
      (def thieves
        (for/collect (_ (in-range nthieves))
          (spawn
           (lambda ()
             (let loop ()
               (let-values (((ok v) (ws-deque-try-steal! dq)))
                 (if ok
                   (begin
                     (let inc ()
                       (let ((old (vector-atomic-ref seen v (memory-order acquire))))
                         (unless (eq? (vector-atomic-cas! seen v old (fx+ old 1) (memory-order acquire-release)) old)
                           (inc))))
                     (loop))
                   (if (and (fx= (atomic-fxbox-ref done-push (memory-order acquire)) 1)
                            (fx= (ws-deque-size dq) 0))
                     (void)
                     (begin
                       (thread-yield!)
                       (loop))))))))))
      (let loop ((i 0))
        (when (fx< i n)
          (if (ws-deque-push! dq i)
            (loop (fx+ i 1))
            ;; Full ring: owner pops one locally to make room and retries i
            (begin
              (let-values (((ok v) (ws-deque-try-pop! dq)))
                (when ok
                  (let inc ()
                    (let ((old (vector-atomic-ref seen v (memory-order acquire))))
                      (unless (eq? (vector-atomic-cas! seen v old (fx+ old 1) (memory-order acquire-release)) old)
                        (inc))))))
              (loop i)))))
      (let drain ()
        (let-values (((ok v) (ws-deque-try-pop! dq)))
          (when ok
            (let inc ()
              (let ((old (vector-atomic-ref seen v (memory-order acquire))))
                (unless (eq? (vector-atomic-cas! seen v old (fx+ old 1) (memory-order acquire-release)) old)
                  (inc))))
            (drain))))
      (atomic-fxbox-set! done-push 1 (memory-order release))
      (for-each thread-join! thieves)
      ;; Every single item 0..4999 must be claimed EXACTLY ONCE (no drops, no duplicates!)
      (let ((bad 0))
        (let verify ((i 0))
          (when (fx< i n)
            (unless (fx= (vector-atomic-ref seen i (memory-order acquire)) 1)
              (set! bad (fx+ bad 1)))
            (verify (fx+ i 1))))
        (check bad => 0)))

    (test-case "LFQueue alternating empty/non-empty MPMC burst waves exact-once conservation"
      (def q (make-lf-queue))
      (def nwaves 15)
      (def half (max 2 (quotient (smp-nthreads) 2)))
      (def per-prod 200)
      (def total (* half per-prod))
      (for (_ (in-range nwaves))
        (let ((seen (make-vector total 0))
              (popped (make-atomic-fxbox 0)))
          (let ((prods
                 (for/collect (pid (in-range half))
                   (spawn
                    (lambda ()
                      (let lp ((i 0))
                        (when (fx< i per-prod)
                          (lf-queue-enqueue! q (fx+ (fx* pid per-prod) i))
                          (lp (fx+ i 1))))))))
                (cons-t
                 (for/collect (_ (in-range half))
                   (spawn
                    (lambda ()
                      (let lp ()
                        (when (fx< (atomic-fxbox-ref popped (memory-order acquire)) total)
                          (let-values (((ok v) (lf-queue-try-dequeue! q)))
                            (if ok
                              (begin
                                (let inc ()
                                  (let ((old (vector-atomic-ref seen v (memory-order acquire))))
                                    (unless (eq? (vector-atomic-cas! seen v old (fx+ old 1) (memory-order acquire-release)) old)
                                      (inc))))
                                (atomic-fxbox-fetch-add! popped 1 (memory-order acquire-release))
                                (lp))
                              (begin
                                (thread-yield!)
                                (lp)))))))))))
            (for-each thread-join! prods)
            (for-each thread-join! cons-t)
            (check (lf-queue-empty? q) => #t)
            (let ((bad 0))
              (let verify ((i 0))
                (when (fx< i total)
                  (unless (fx= (vector-atomic-ref seen i (memory-order acquire)) 1)
                    (set! bad (fx+ bad 1)))
                  (verify (fx+ i 1))))
              (check bad => 0)))))

    (test-case "LFQueue 128-slot segment boundaries (127/128/129/256/513) & #f/#!eof payloads"
      (for-each
       (lambda (n)
         (let ((q (make-lf-queue)))
           (for (i (in-range n))
             (lf-queue-enqueue! q (cond ((fx= (fxmodulo i 17) 0) #f)
                                        ((fx= (fxmodulo i 19) 0) #!eof)
                                        (else i))))
           (check (lf-queue-empty? q) => #f)
           (for (i (in-range n))
             (let-values (((ok v) (lf-queue-try-dequeue! q)))
               (check ok => #t)
               (check v => (cond ((fx= (fxmodulo i 17) 0) #f)
                                 ((fx= (fxmodulo i 19) 0) #!eof)
                                 (else i)))))
           (check (lf-queue-empty? q) => #t)
           (let-values (((ok v) (lf-queue-try-dequeue! q)))
             (check ok => #f))))
       '(127 128 129 256 513)))

    (test-case "ConcurrentTable striped-counter exact size under all-core insert/delete/equal? storm"
      (def nthr (smp-nthreads))
      (def per 200)
      ;; 1. eq? fast-path: concurrent insert then concurrent cross-thread delete -> exact size 0
      (def ct-eq (make-concurrent-table 128 eq? eq?-hash))
      (let ((ins
             (for/collect (tid (in-range nthr))
               (spawn
                (lambda ()
                  (for (i (in-range per))
                    (let ((k (fx+ (fx* tid per) i)))
                      (concurrent-table-set! ct-eq k (fx* k 2)))))))))
        (for-each thread-join! ins))
      (check (concurrent-table-size ct-eq) => (fx* nthr per))
      (let ((dels
             (for/collect (tid (in-range nthr))
               (spawn
                (lambda ()
                  ;; Delete a different thread's keys to force cross-core stripe decrements!
                  (let ((src (fxmodulo (fx+ tid 1) nthr)))
                    (for (i (in-range per))
                      (let ((k (fx+ (fx* src per) i)))
                        (check (concurrent-table-delete! ct-eq k) => #t)))))))))
        (for-each thread-join! dels))
      (check (concurrent-table-size ct-eq) => 0)

      ;; 2. equal? string-key path across all cores
      (def ct-str (make-concurrent-table 64 equal? equal?-hash))
      (let ((workers
             (for/collect (tid (in-range nthr))
               (spawn
                (lambda ()
                  (for (i (in-range 50))
                    (let ((k (string-append "k-" (number->string tid) "-" (number->string i))))
                      (concurrent-table-set! ct-str k i)
                      (check (concurrent-table-ref ct-str (string-copy k) #f) => i))))))))
        (for-each thread-join! workers))
      (check (concurrent-table-size ct-str) => (fx* nthr 50)))

    (test-case "LFStack simultaneous all-core MPMC push+pop exact-once conservation"
      (def st (make-lf-stack))
      (def half (max 2 (quotient (smp-nthreads) 2)))
      (def per 2000)
      (def total (fx* half per))
      (def seen (make-vector total 0))
      (def popped (make-atomic-fxbox 0))
      (def prods
        (for/collect (pid (in-range half))
          (spawn
           (lambda ()
             (for (i (in-range per))
               (lf-stack-push! st (fx+ (fx* pid per) i)))))))
      (def cons-ts
        (for/collect (_ (in-range half))
          (spawn
           (lambda ()
             (let lp ()
               (when (fx< (atomic-fxbox-ref popped (memory-order acquire)) total)
                 (let-values (((ok v) (lf-stack-try-pop! st)))
                   (if ok
                     (begin
                       (let inc ()
                         (let ((old (vector-atomic-ref seen v (memory-order acquire))))
                           (unless (eq? (vector-atomic-cas! seen v old (fx+ old 1) (memory-order acquire-release)) old)
                             (inc))))
                       (atomic-fxbox-fetch-add! popped 1 (memory-order acquire-release))
                       (lp))
                     (begin (thread-yield!) (lp))))))))))
      (for-each thread-join! prods)
      (for-each thread-join! cons-ts)
      (check (lf-stack-empty? st) => #t)
      (let ((bad 0))
        (for (i (in-range total))
          (unless (fx= (vector-atomic-ref seen i (memory-order acquire)) 1)
            (set! bad (fx+ bad 1))))
        (check bad => 0))))))
