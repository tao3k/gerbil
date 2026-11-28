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
        :std/sync/atomic
        :std/interface
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
        (check (increment-atomic-counter! ctr 0) => (* nworkers per-worker))))

    (test-case "12-core MOP specialize-class, bind-method!, and Interface prototype publication race torture"
      (let* ((rounds 24)
             (nthreads 12)
             (ok-count (make-atomic-fxbox 0)))
        (let rloop ((r 0))
          (when (< r rounds)
            (let* ((cname (string->symbol (string-append "smp-mop-cls-" (number->string r))))
                   (klass (make-class-type cname cname [] '(val) '((struct: . #t)) #f))
                   (iface-type (make-class-type
                                (string->symbol (string-append "smp-iface-" (number->string r)))
                                'smp-iface [interface-instance::t] [] '((struct: . #t)) #f))
                   (desc (make-interface-descriptor iface-type '(get-val)))
                   (bar (make-barrier nthreads)))
              (bind-method! klass 'get-val (lambda (self) (##unchecked-structure-ref self 1 klass #f)))
              (let ((threads
                     (let tloop ((i 0) (acc []))
                       (if (< i nthreads)
                         (let ((tid i))
                           (tloop (+ i 1)
                                  (cons
                                   (spawn/name 'mop-race
                                     (lambda ()
                                       (let ((inst (##structure klass (+ r tid))))
                                         (barrier-post! bar)
                                         (barrier-wait! bar)
                                         ;; Concurrent specialize-class + interface cast + method call!
                                         (let* ((spec (specialize-class klass))
                                                (iface (cast desc inst))
                                                (m (##unchecked-structure-ref iface 2 #f #f))
                                                (v (m (&interface-instance-object iface))))
                                           (when (and spec (= v (+ r tid)))
                                             (atomic-fxbox-fetch-add! ok-count 1 (memory-order relaxed)))))))
                                   acc)))
                         acc))))
                (for-each thread-join! threads)))
            (rloop (+ r 1))))
        (check (atomic-fxbox-ref ok-count (memory-order acquire)) => (* rounds nthreads))))

    (test-case "12-core Lock-Free RWLock read/write interleaving, locked-hash-table & Completion weak-memory torture"
      ;; 1. Atomic reader fast-path + concurrent writer interleaving on RWLock + locked-hash-table
      (let* ((rw (make-rwlock 'smp-fast-rw))
             (shared-a 0)
             (shared-b 0)
             (inconsistent (make-atomic-fxbox 0))
             (ht (make-hash-table lock: (make-rwlock 'smp-ht-rw)))
             (bar (make-barrier 12))
             (workers
              (let loop ((i 0) (acc []))
                (if (< i 12)
                  (let ((tid i))
                    (loop (+ i 1)
                          (cons
                           (spawn/name 'rw-torture
                             (lambda ()
                               (barrier-post! bar)
                               (barrier-wait! bar)
                               (if (< tid 2)
                                 ;; 2 writers updating invariant shared-a == shared-b + hash-table
                                 (let wloop ((k 0))
                                   (when (< k 400)
                                     (with-write-lock rw
                                       (lambda ()
                                         (set! shared-a (+ shared-a 1))
                                         (set! shared-b (+ shared-b 1))))
                                     (hash-put! ht (modulo k 32) (+ tid k))
                                     (wloop (+ k 1))))
                                 ;; 10 lock-free readers verifying shared-a == shared-b + reading hash-table
                                 (let rloop ((k 0))
                                   (when (< k 2000)
                                     (with-read-lock rw
                                       (lambda ()
                                         (unless (= shared-a shared-b)
                                           (atomic-fxbox-fetch-add! inconsistent 1 (memory-order relaxed)))))
                                     (hash-get ht (modulo k 32))
                                     (rloop (+ k 1)))))))
                           acc)))
                  acc))))
        (for-each thread-join! workers)
        (check (atomic-fxbox-ref inconsistent (memory-order acquire)) => 0)
        (check shared-a => 800)
        (check shared-b => 800))

      ;; 2. Completion ARM64 acquire/release publication race torture (200 rounds x 8 readers)
      (let ((bad (make-atomic-fxbox 0)))
        (let rloop ((r 0))
          (when (< r 200)
            (let* ((c (make-completion 'arm64-comp))
                   (payload (vector r (* r 2) (* r 3) (* r 4)))
                   (readers
                    (let loop ((i 0) (acc []))
                      (if (< i 8)
                        (loop (+ i 1)
                              (cons
                               (spawn/name 'comp-poll
                                 (lambda ()
                                   ;; Half poll completion-ready? lock-free, half block in completion-wait!
                                   (let ((v (if (= (modulo i 2) 0)
                                              (let spin ()
                                                (if (completion-ready? c)
                                                  (completion-wait! c)
                                                  (begin (thread-yield!) (spin))))
                                              (completion-wait! c))))
                                     (unless (and (vector? v)
                                                  (= (vector-ref v 0) r)
                                                  (= (vector-ref v 3) (* r 4)))
                                       (atomic-fxbox-fetch-add! bad 1 (memory-order relaxed))))))
                               acc))
                        acc))))
              (completion-post! c payload)
              (for-each thread-join! readers))
            (rloop (+ r 1))))
        (check (atomic-fxbox-ref bad (memory-order acquire)) => 0))

      ;; 3. Channel reader-abort recovery (cancelled waiter must not strand remaining readers!)
      (let* ((ch (make-channel 1))
             (cancel-exn (box 'chan-cancel))
             (r1 (spawn/name 'chan-cancel-r1
                   (lambda ()
                     (with-catch (lambda (e) (eq? e cancel-exn))
                                 (lambda () (channel-get ch) #f)))))
             (r2 (spawn/name 'chan-live-r2
                   (lambda () (channel-get ch)))))
        (thread-sleep! 0.02)
        (with-catch (lambda (e) (unless (abandoned-mutex-exception? e) (raise e)))
                    (lambda () (thread-interrupt! r1 (lambda () (raise cancel-exn)))))
        (check (thread-join! r1 5) => #t)
        (channel-put ch 'delivered-to-r2)
        (check (thread-join! r2 5) => 'delivered-to-r2)))))
