;;; -*- Gerbil -*-
;;; © Gerbil Contributors
;;; True-multicore SMP tests for :std/sync/atomic (SRFI-230) and upgraded :std/sync/atom.

(import :std/test
        :std/error
        :std/iter
        :std/sync/atomic
        :std/sync/atom)
(export atomic-test)

(def (smp-nthreads)
  (max 4 (##current-vm-processor-count)))

(def atomic-test
  (test-suite "SRFI-230 C23 GC-barriered atomics (:std/sync/atomic)"
    (test-case "memory-order syntax and predicate"
      (check (memory-order? (memory-order relaxed)) => #t)
      (check (memory-order? (memory-order acquire)) => #t)
      (check (memory-order? (memory-order release)) => #t)
      (check (memory-order? (memory-order acquire-release)) => #t)
      (check (memory-order? (memory-order sequentially-consistent)) => #t)
      (check (memory-order? 'bogus) => #f))

    (test-case "atomic-flag test-and-set! and clear! under full-core SMP contention"
      (def fl (make-atomic-flag))
      (check (atomic-flag? fl) => #t)
      (check (atomic-flag-test-and-set! fl (memory-order acquire)) => #f)
      (check (atomic-flag-test-and-set! fl (memory-order acquire)) => #t)
      (atomic-flag-clear! fl (memory-order release))
      (check (atomic-flag-test-and-set! fl) => #f)
      (atomic-flag-clear! fl)
      ;; All-core contention on a single atomic flag lock
      (def nthr (smp-nthreads))
      (def shared 0)
      (def threads
        (for/collect (_ (in-range nthr))
          (spawn
           (lambda ()
             (let loop ((i 0))
               (when (fx< i 1000)
                 (let acquire ()
                   (when (atomic-flag-test-and-set! fl (memory-order acquire))
                     (acquire)))
                 (set! shared (fx+ shared 1))
                 (atomic-flag-clear! fl (memory-order release))
                 (loop (fx+ i 1))))))))
      (for-each thread-join! threads)
      (check shared => (* nthr 1000)))

    (test-case "atomic-fxbox hardware fetch-add/sub/and/ior/xor and full-core SMP stress"
      (def fx (make-atomic-fxbox 10))
      (check (atomic-fxbox? fx) => #t)
      (check (atomic-fxbox-ref fx) => 10)
      (check (atomic-fxbox-fetch-add! fx 5 (memory-order acquire-release)) => 10)
      (check (atomic-fxbox-ref fx (memory-order acquire)) => 15)
      (check (atomic-fxbox-fetch-sub! fx 3) => 15)
      (check (atomic-fxbox-ref fx) => 12)
      (check (atomic-fxbox-fetch-ior! fx #x100) => 12)
      (check (atomic-fxbox-ref fx) => #x10c)
      (check (atomic-fxbox-fetch-and! fx #x0ff) => #x10c)
      (check (atomic-fxbox-ref fx) => 12)
      (check (atomic-fxbox-fetch-xor! fx #x05) => 12)
      (check (atomic-fxbox-ref fx) => 9)
      (check (atomic-fxbox-compare-and-swap! fx 9 0) => 9)
      (check (atomic-fxbox-ref fx) => 0)
      ;; All-core concurrent fetch-add + fetch-sub conservation
      (def nthr (smp-nthreads))
      (def threads
        (for/collect (tid (in-range nthr))
          (spawn
           (lambda ()
             (let loop ((i 0))
               (when (fx< i 5000)
                 (atomic-fxbox+/fetch! fx 3 (memory-order relaxed))
                 (atomic-fxbox-/fetch! fx 1 (memory-order relaxed))
                 (loop (fx+ i 1))))))))
      (for-each thread-join! threads)
      (check (atomic-fxbox-ref fx (memory-order sequentially-consistent)) => (* nthr 5000 2)))

    (test-case "atomic-box GC-barriered CAS & release/acquire object publication"
      (def ab (make-atomic-box #f))
      (check (atomic-box? ab) => #t)
      ;; Publish freshly allocated heap vectors across cores with release/acquire
      (def done (make-atomic-fxbox 0))
      (def n 2000)
      (def nreaders (max 2 (- (smp-nthreads) 1)))
      (def writer
        (spawn
         (lambda ()
           (let loop ((i 1))
             (when (fx<= i n)
               (let ((payload (vector i (fx* i 7) (number->string i))))
                 (atomic-box-set! ab payload (memory-order release)))
               (when (fx= (fxand i 255) 0) (##gc))
               (loop (fx+ i 1))))
           (atomic-fxbox-set! done 1 (memory-order release)))))
      (def bad (make-atomic-fxbox 0))
      (def readers
        (for/collect (_ (in-range nreaders))
          (spawn
           (lambda ()
             (let loop ()
               (let ((v (atomic-box-ref ab (memory-order acquire))))
                 (when v
                   (let ((a (vector-ref v 0))
                         (b (vector-ref v 1))
                         (s (vector-ref v 2)))
                     (unless (and (fixnum? a)
                                  (fx= b (fx* a 7))
                                  (string? s))
                       (atomic-fxbox-fetch-add! bad 1)))))
               (when (fx= (atomic-fxbox-ref done (memory-order acquire)) 0)
                 (loop)))))))
      (thread-join! writer)
      (for-each thread-join! readers)
      (check (atomic-fxbox-ref bad) => 0)
      (let ((final (atomic-box-ref ab (memory-order acquire))))
        (check (vector-ref final 0) => n)
        (check (vector-ref final 1) => (* n 7))))

    (test-case "atomic-pair zero-tear CAS across all cores"
      (def ap (make-atomic-pair 0 0))
      (check (atomic-pair? ap) => #t)
      (def nthr (smp-nthreads))
      (def threads
        (for/collect (_ (in-range nthr))
          (spawn
           (lambda ()
             (let loop ((i 0))
               (when (fx< i 1000)
                 (let retry ()
                   (let-values (((a b) (atomic-pair-ref ap (memory-order acquire))))
                     (let-values (((pa pb) (atomic-pair-compare-and-swap!
                                            ap a b (fx+ a 1) (fx+ b 2)
                                            (memory-order acquire-release))))
                       (unless (and (fx= pa a) (fx= pb b))
                         (retry)))))
                 (loop (fx+ i 1))))))))
      (for-each thread-join! threads)
      (let-values (((a b) (atomic-pair-ref ap (memory-order sequentially-consistent))))
        (check a => (* nthr 1000))
        (check b => (* nthr 2000))))

    (test-case "atomic-fence, vector-atomic-*, and upgraded AtomicCounter/Atom"
      (atomic-fence (memory-order acquire-release))
      (def v (vector 'a 'b 'c))
      (check (vector-atomic-ref v 1 (memory-order acquire)) => 'b)
      (check (vector-atomic-swap! v 1 'bb (memory-order acquire-release)) => 'b)
      (check (vector-atomic-cas! v 1 'bb 'bbb (memory-order sequentially-consistent)) => 'bb)
      (check (vector-atomic-ref v 1) => 'bbb)
      ;; Hardware fetch-add AtomicCounter under full-core contention
      (def nthr (smp-nthreads))
      (def ctr (AtomicCounter 0))
      (def threads
        (for/collect (_ (in-range nthr))
          (spawn
           (lambda ()
             (let loop ((i 0))
               (when (fx< i 5000)
                 (increment-atomic-counter-by-1! ctr)
                 (loop (fx+ i 1))))))))
      (for-each thread-join! threads)
      (check (atomic-counter-ref ctr) => (* nthr 5000))
      ;; Weak-memory safe Atom deref
      (def a (atom (cons 0 0)))
      (def a-threads
        (for/collect (_ (in-range nthr))
          (spawn
           (lambda ()
             (let loop ((i 0))
               (when (fx< i 500)
                 (atom-swap! a (lambda (p) (cons (fx+ (car p) 1) (fx+ (cdr p) 2))))
                 (let ((cur (atom-deref a)))
                   (check (fx= (cdr cur) (fx* (car cur) 2)) => #t))
                 (loop (fx+ i 1))))))))
      (for-each thread-join! a-threads)
      (check (atom-deref a) => (cons (* nthr 500) (* nthr 1000))))))
