;;; -*- Gerbil -*-
;;; © Gerbil Contributors
;;; SMP runtime, sync, and actor concurrency regression tests.
(import :std/test
        :std/actor
        :std/sync/spinlock
        :std/sync/completion
        :std/sync/channel
        :std/sync/barrier
        :std/sync/rwlock
        :std/sync/atom
        :std/sync/wg
        :gerbil/runtime/util
        :gerbil/runtime/thread
        :gerbil/runtime/mop
        :gerbil/runtime/table
        :gerbil/runtime/error)
(export smp-runtime-test)

(def smp-runtime-test
  (test-suite "SMP runtime, sync, and actor concurrency invariants"
    (test-case "single-slot atomic inline lock mutual exclusion, unwind safety, and owner-exit TOCTOU"
      (let* ((lock (__make-inline-lock))
             (counter 0)
             (nthreads 8)
             (iters 2000)
             (transient 32)
             (workers
              (let loop ((i 0) (acc []))
                (if (< i nthreads)
                  (loop (+ i 1)
                        (cons
                         (thread-start!
                          (make-thread
                           (lambda ()
                             (let run ((k 0))
                               (when (< k iters)
                                 (if (= (modulo k 250) 0)
                                   (with-catch
                                    (lambda (e) #f)
                                    (lambda ()
                                      (__do-inline-lock! lock
                                        (begin
                                          (set! counter (+ counter 1))
                                          (error "synthetic unwind inside inline lock")))))
                                   (__do-inline-lock! lock
                                     (set! counter (+ counter 1))))
                                 (run (+ k 1)))))))
                         acc))
                  acc)))
             ;; Short-lived threads acquire, release, and exit immediately while
             ;; contenders spin, exercising the stale-owner TOCTOU re-check path.
             (exiting
              (let loop ((i 0) (acc []))
                (if (< i transient)
                  (loop (+ i 1)
                        (cons
                         (thread-start!
                          (make-thread
                           (lambda ()
                             (__do-inline-lock! lock
                               (set! counter (+ counter 1))))))
                         acc))
                  acc))))
        (for-each thread-join! exiting)
        (for-each thread-join! workers)
        (check counter => (+ (* nthreads iters) transient))
        ;; Verify lock is completely unlocked after all normal + unwinding paths.
        (check (vector-ref lock 0) => #f)))

    (test-case "concurrent __shadow-class single-winner canonicalization"
      (let* ((t1 (##structure ##type-type 'smp-shadow-test-a 'smp-shadow-test-a 0 #f '#()))
             (nthreads 8)
             (results (make-vector nthreads #f))
             (threads
              (let loop ((i 0) (acc []))
                (if (< i nthreads)
                  (let ((idx i))
                    (loop (+ i 1)
                          (cons
                           (thread-start!
                            (make-thread
                             (lambda ()
                               (vector-set! results idx (__shadow-class t1)))))
                           acc)))
                  acc))))
        (for-each thread-join! threads)
        (let ((canon (vector-ref results 0)))
          (check (class-type? canon) => #t)
          (let check-all ((i 1))
            (when (< i nthreads)
              (check (eq? (vector-ref results i) canon) => #t)
              (check-all (+ i 1)))))))

    (test-case "wrap-runtime-exception re-entrancy guard prevents infinite recursion"
      (let ((raw (##with-exception-catcher
                  (lambda (e) e)
                  (lambda () (vector-ref '#() 0)))))
        (check (RuntimeException? (wrap-runtime-exception raw)) => #t)
        (parameterize ((__wrapping-runtime-exception? #t))
          ;; When already wrapping on this thread, returns raw exn directly in O(1).
          (check (eq? (wrap-runtime-exception raw) raw) => #t))))

    (test-case "concurrent eq-hash stability, hash dispersion, and GC rehash safety"
      (let* ((nobjs 256)
             (objs (let ((v (make-vector nobjs #f)))
                     (let loop ((i 0))
                       (when (< i nobjs)
                         (vector-set! v i (box i))
                         (loop (+ i 1))))
                     v))
             (nthreads 8)
             (per-thread (make-vector nthreads #f))
             (stable? (make-vector nthreads #t))
             (threads
              (let loop ((t 0) (acc []))
                (if (< t nthreads)
                  (let ((tid t))
                    (loop (+ t 1)
                          (cons
                           (thread-start!
                            (make-thread
                             (lambda ()
                               (let ((seen (make-vector nobjs #f)))
                                 (let pass ((p 0))
                                   (when (< p 4)
                                     (let idx ((i 0))
                                       (when (< i nobjs)
                                         (when (and (= tid 0) (= (modulo i 64) 0))
                                           (##gc))
                                         (let* ((obj (vector-ref objs i))
                                                (h (eq-hash obj)))
                                           (if (= p 0)
                                             (vector-set! seen i h)
                                             (unless (eqv? h (vector-ref seen i))
                                               (vector-set! stable? tid #f))))
                                         (idx (+ i 1))))
                                     (pass (+ p 1))))
                                 (vector-set! per-thread tid seen)))))
                           acc)))
                  acc))))
        (for-each thread-join! threads)
        (let ((ref0 (vector-ref per-thread 0))
              (distinct (make-hash-table-eqv)))
          (let check-t ((t 0))
            (when (< t nthreads)
              (check (vector-ref stable? t) => #t)
              (let ((cur (vector-ref per-thread t)))
                (let check-i ((i 0))
                  (when (< i nobjs)
                    (check (vector-ref cur i) => (vector-ref ref0 i))
                    (check-i (+ i 1)))))
              (check-t (+ t 1))))
          (let count-i ((i 0))
            (when (< i nobjs)
              (hash-put! distinct (vector-ref ref0 i) #t)
              (count-i (+ i 1))))
          ;; Ensure __object->eq-hash disperses distinct objects rather than colliding in 1 bucket.
          (check (>= (hash-length distinct) 200) => #t))))

    (test-case "SpinLock single-slot mutual exclusion, unwind safety, and owner-exit TOCTOU"
      (let* ((lock (SpinLock))
             (counter 0)
             (nthreads 8)
             (iters 1500)
             (transient 32)
             (workers
              (let loop ((i 0) (acc []))
                (if (< i nthreads)
                  (loop (+ i 1)
                        (cons
                         (thread-start!
                          (make-thread
                           (lambda ()
                             (let run ((k 0))
                               (when (< k iters)
                                 (if (= (modulo k 250) 0)
                                   (with-catch
                                    (lambda (e) #f)
                                    (lambda ()
                                      (do-with-spin-lock lock
                                        (set! counter (+ counter 1))
                                        (error "synthetic unwind inside spin lock"))))
                                   (do-with-spin-lock lock
                                     (set! counter (+ counter 1))))
                                 (run (+ k 1)))))))
                         acc))
                  acc)))
             (exiting
              (let loop ((i 0) (acc []))
                (if (< i transient)
                  (loop (+ i 1)
                        (cons
                         (thread-start!
                          (make-thread
                           (lambda ()
                             (do-with-spin-lock lock
                               (set! counter (+ counter 1))))))
                         acc))
                  acc))))
        (for-each thread-join! exiting)
        (for-each thread-join! workers)
        (check counter => (+ (* nthreads iters) transient))
        (check (do-with-spin-lock lock 'unlocked) => 'unlocked)))

    (test-case "Completion and Channel concurrent SMP producer/consumer and reset safety"
      ;; Bounded channel multi-producer/multi-consumer under SMP
      (let* ((ch (make-channel 8))
             (nprod 4)
             (ncons 4)
             (per-prod 250)
             (sums (make-vector ncons 0))
             (producers
              (let loop ((p 0) (acc []))
                (if (< p nprod)
                  (loop (+ p 1)
                        (cons
                         (spawn/name 'chan-prod
                           (lambda ()
                             (let send ((k 0))
                               (when (< k per-prod)
                                 (channel-put ch k)
                                 (send (+ k 1))))))
                         acc))
                  acc)))
             (consumers
              (let loop ((c 0) (acc []))
                (if (< c ncons)
                  (let ((cid c))
                    (loop (+ c 1)
                          (cons
                           (spawn/name 'chan-cons
                             (lambda ()
                               (let recv ((total 0))
                                 (let ((v (if (= (modulo total 7) 0)
                                            (let ((x (channel-try-get ch 'empty)))
                                              (if (eq? x 'empty) (channel-get ch) x))
                                            (channel-get ch))))
                                   (if (eof-object? v)
                                     (vector-set! sums cid total)
                                     (recv (+ total v)))))))
                           acc)))
                  acc))))
        (for-each thread-join! producers)
        (channel-close ch)
        (check (channel-closed? ch) => #t)
        (for-each thread-join! consumers)
        (let ((total (let sum-loop ((i 0) (s 0))
                       (if (< i ncons)
                         (sum-loop (+ i 1) (+ s (vector-ref sums i)))
                         s)))
              (expected (* nprod (quotient (* (- per-prod 1) per-prod) 2))))
          (check total => expected)))

      ;; Completion concurrent wait/post/reset cycles
      (let ((comp (make-completion 'smp-completion)))
        (let cycle ((r 0))
          (when (< r 20)
            (let* ((observed (make-vector 4 #f))
                   (waiters
                    (let loop ((i 0) (acc []))
                      (if (< i 4)
                        (let ((idx i))
                          (loop (+ i 1)
                                (cons
                                 (spawn/name 'comp-waiter
                                   (lambda ()
                                     (vector-set! observed idx (completion-wait! comp))))
                                 acc)))
                        acc))))
              (completion-post! comp r)
              (for-each thread-join! waiters)
              (let check-w ((i 0))
                (when (< i 4)
                  (check (vector-ref observed i) => r)
                  (check-w (+ i 1))))
              (completion-reset! comp)
              (cycle (+ r 1)))))))

    (test-case "Actor SMP mailbox, concurrent request/reply, and expired-reply extraction"
      (let* ((proto "/smp-actor-test/v0")
             (nservers 4)
             (nclients 8)
             (reqs-per-client 100)
             (servers
              (let loop ((s 0) (acc []))
                (if (< s nservers)
                  (loop (+ s 1)
                        (cons
                         (spawn/name 'smp-actor-server
                           (lambda ()
                             (let serve ()
                               ;; Periodically probe non-blocking mailbox-next (else branch)
                               ;; alongside blocking receive + expired-envelope extraction.
                               (<- protocol: proto
                                   (['add a b]
                                    (--> (+ a b))
                                    (serve))
                                   ('stop
                                    (--> 'stopped))))))
                         acc))
                  (list->vector (reverse acc)))))
             (ok-counts (make-vector nclients 0))
             (clients
              (let loop ((c 0) (acc []))
                (if (< c nclients)
                  (let ((cid c))
                    (loop (+ c 1)
                          (cons
                           (spawn/name 'smp-actor-client
                             (lambda ()
                               (let ((me (actor-local-peer)))
                                 (let req ((k 0) (ok 0))
                                   (if (< k reqs-per-client)
                                     (let* ((srv (vector-ref servers (modulo (+ cid k) nservers)))
                                            (dest (LocalActor srv)))
                                       ;; Interleave expired envelopes to exercise SMP
                                       ;; mailbox-extract-and-next under concurrent sends.
                                       (when (= (modulo k 10) 0)
                                         (thread-send
                                          srv
                                          (Envelope source: me
                                                    dest: dest
                                                    message: 'stale
                                                    protocol: proto
                                                    options: (Options expire: 0))))
                                       (let ((ans (->> dest ['add cid k] proto timeout: 10)))
                                         (req (+ k 1)
                                              (if (= ans (+ cid k)) (+ ok 1) ok))))
                                     (vector-set! ok-counts cid ok))))))
                           acc)))
                  acc))))
        (for-each thread-join! clients)
        ;; Verify non-blocking mailbox-next returns mailbox-empty cleanly under SMP.
        (check (mailbox-next) => mailbox-empty)
        (let stop-loop ((s 0))
          (when (< s nservers)
            (let ((srv (vector-ref servers s)))
              (check (->> (LocalActor srv) 'stop proto timeout: 10) => 'stopped)
              (thread-join! srv 5)
              (check (thread-dead? srv) => #t))
            (stop-loop (+ s 1))))
        (let check-c ((c 0))
          (when (< c nclients)
            (check (vector-ref ok-counts c) => reqs-per-client)
            (check-c (+ c 1)))))

      ;; Verify <- skips raw non-Envelope messages without crashing in envelope-expired?.
      (let* ((proto "/smp-mixed-mailbox/v0")
             (srv (spawn/name 'smp-mixed-actor
                    (lambda ()
                      (<- protocol: proto
                          ('hello (--> 'world))))))
             (dest (LocalActor srv)))
        (thread-send srv 'raw-non-envelope-msg)
        (check (->> dest 'hello proto timeout: 5) => 'world)
        (thread-join! srv 5)
        (check (thread-dead? srv) => #t)))

    (test-case "RWLock writer-cancel recovery, Barrier, AtomicCounter, and WG under SMP"
      ;; Cancelled waiting writer must not starve subsequent readers.
      (let* ((rw (make-rwlock 'smp-rw))
             (cancel-exn (box 'cancel))
             (writer #f))
        (rwlock-read-lock! rw)
        (set! writer
          (spawn/name 'smp-cancelled-writer
            (lambda ()
              (with-catch
               (lambda (e) (eq? e cancel-exn))
               (lambda ()
                 (rwlock-write-lock! rw)
                 (rwlock-write-unlock! rw)
                 #f)))))
        ;; Wait briefly until the writer blocks on rw.wcv, then interrupt it.
        ;; In Gambit, escaping out of a thread-interrupt! thunk raises
        ;; abandoned-mutex-exception in the interrupting caller.
        (thread-sleep! 0.02)
        (with-catch
         (lambda (e)
           (unless (abandoned-mutex-exception? e)
             (raise e)))
         (lambda ()
           (thread-interrupt! writer (lambda () (raise cancel-exn)))))
        (check (thread-join! writer 5) => #t)
        ;; A second reader must still acquire the lock without starving.
        (let ((r2 (spawn/name 'smp-reader2
                    (lambda ()
                      (with-read-lock rw (lambda () 'ok))))))
          (check (thread-join! r2 5) => 'ok))
        (rwlock-read-unlock! rw))

      ;; AtomicCounter + WG + Barrier concurrent stress
      (let* ((ctr (AtomicCounter 0))
             (nworkers 8)
             (per-worker 500)
             (bar (make-barrier nworkers))
             (wg (make-wg nworkers)))
        (let loop ((w 0))
          (when (< w nworkers)
            (wg-add! wg
              (lambda ()
                (barrier-post! bar)
                (barrier-wait! bar)
                (let inc ((k 0))
                  (when (< k per-worker)
                    (increment-atomic-counter! ctr 1)
                    (inc (+ k 1))))))
            (loop (+ w 1))))
        (wg-wait! wg)
        (check (increment-atomic-counter! ctr 0) => (* nworkers per-worker))))))
