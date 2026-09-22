;;; -*- Gerbil -*-
;;; © vyzo
;;; read-write lock test
(import :std/test
        :std/sync/threads
        ./rwlock)
(export rwlock-cooperative-test)

;; Inspect the real lock through its type metadata, without exporting internals.
(def (rwlock-test-state (rw : RWLock))
  => :list
  (unless (mutex-lock! rw.mx 2)
    (error "Timed out inspecting RWLock"))
  (unwind-protect!
    [rw.readers rw.writer rw.writers-waiting]
    (mutex-unlock! rw.mx)))

;; Wait for an exact blocking boundary, not a scheduling delay.
(def (rwlock-test-wait! (worker : :thread)
                        (object : :t))
  => :void
  (let (deadline (+ (time->seconds (current-time)) 2))
    (let loop ()
      (let (state (thread-state worker))
        (cond
         ((and (thread-state-waiting? state)
               (eq? (thread-state-waiting-for state) object))
          (void))
         ((>= (time->seconds (current-time)) deadline)
          (error "Thread did not reach RWLock wait" worker object state))
         (else
          (thread-sleep! .001)
          (loop)))))))

(def (rwlock-test-progress! (rw : RWLock))
  => :void
  (let (worker
        (spawn-thread
         (lambda ()
           [(with-read-lock rw (lambda () 'read))
            (with-write-lock rw (lambda () 'write))])))
    (check (thread-join! worker 2 'timeout) => '(read write))))

(def rwlock-cooperative-test
  (test-suite "RWLock cooperative locking"
    (test-case "readers share the lock and queued writers precede new readers"
      (using (rw (make-rwlock) :- RWLock)
        (let ((writers []) (reader #f) (order []))
          (rwlock-read-lock! rw)
          (unwind-protect
            (begin
              (let (other
                    (spawn-thread
                     (lambda ()
                       (with-read-lock rw (lambda () (rwlock-test-state rw))))))
                (check (thread-join! other 2 'timeout) => [2 #f 0]))
              (check (rwlock-test-state rw) => [1 #f 0])
              (set! writers
                (map (lambda (_)
                       (spawn-thread
                        (lambda ()
                          (with-write-lock rw
                            (lambda ()
                              (set! order (cons 'write order))
                              (rwlock-test-state rw))))))
                     '(1 2)))
              (for-each (cut rwlock-test-wait! <> rw.wcv) writers)
              (check (rwlock-test-state rw) => [1 #f 2])
              (set! reader
                (spawn-thread
                 (lambda ()
                   (with-read-lock rw
                     (lambda ()
                       (set! order (cons 'read order))
                       (rwlock-test-state rw))))))
              (rwlock-test-wait! reader rw.rcv)
              (check (rwlock-test-state rw) => [1 #f 2]))
            (rwlock-read-unlock! rw))
          (let (states (map (lambda (writer) (thread-join! writer 2 'timeout)) writers))
            (for-each (lambda (writer state)
                        (check (car state) => 0)
                        (check-eq? (cadr state) writer))
                      writers states)
            ;; Both writers register once and leave the queue when acquiring.
            (check (map caddr states) ?
                   (lambda (counts)
                     (or (equal? counts '(0 1))
                         (equal? counts '(1 0))))))
          (check (thread-join! reader 2 'timeout) => [1 #f 0])
          (check (reverse order) => '(write write read))
          (check (rwlock-test-state rw) => [0 #f 0])
          (rwlock-test-progress! rw))))

    (test-case "body exceptions unlock before the outer handler and propagate unchanged"
      (for-each
        (lambda (scope)
          (let* ((rw (make-rwlock))
                 (failure [body-error:])
                 (observed #f)
                 (finalized? #f)
                 (worker
                  (spawn-thread
                   (lambda ()
                     (let (handler (current-exception-handler))
                       (with-exception-handler
                        (lambda (e)
                          (set! observed (rwlock-test-state rw))
                          (handler e))
                        (lambda ()
                          (unwind-protect
                            (scope rw (lambda () (raise failure)))
                            (set! finalized? #t)))))))))
            (check-exception (thread-join!/error worker 2) (cut eq? <> failure))
            (check observed => [0 #f 0])
            (check finalized? => #t)
            (rwlock-test-progress! rw)))
        [with-read-lock with-write-lock]))

    (test-case "inverse read scope restores the lock on return and body exception"
      (for-each
        (lambda (fail?)
          (let* ((rw (make-rwlock))
                 (failure [body-error:])
                 (observed #f)
                 (worker
                  (spawn-thread
                   (lambda ()
                     (with-read-lock rw
                       (lambda ()
                         (let (handler (current-exception-handler))
                           (with-exception-handler
                            (lambda (e)
                              (set! observed (rwlock-test-state rw))
                              (handler e))
                            (lambda ()
                              (let (result
                                    (do-with-rwlock rw
                                      (begin
                                        (check (rwlock-test-state rw) => [0 #f 0])
                                        (if fail? (raise failure) 'resume))
                                      rwlock-read-unlock!
                                      rwlock-read-lock!))
                                (set! observed (rwlock-test-state rw))
                                result))))))))))
            (if fail?
              (check-exception (thread-join!/error worker 2) (cut eq? <> failure))
              (check (thread-join! worker 2 'timeout) => 'resume))
            (check observed => [1 #f 0])
            (check (rwlock-test-state rw) => [0 #f 0])
            (rwlock-test-progress! rw)))
        '(#f #t)))))

(cond-expand
  ;; this test is quite flaky on CI (it is a race condition after all)
  ;; so it is not enabled by default.
  (enable-rwlock-test
   (import :std/iter
           ./barrier)
   (export rwlock-test)

   (def rwlock-test
     (test-suite "read/write locks"
       (test-case "many readers"
         (let* ((readers 100)
                (threads [])
                (barrier (make-barrier readers))
                (rwlock (make-rwlock))
                (wait-time .1)
                (start (current-time)))
           (for (i (in-range readers))
             (let (thread (spawn-thread (lambda ()
                                          (rwlock-read-lock! rwlock)
                                          (barrier-post! barrier)
                                          ;; wait till everyone has read locked
                                          (barrier-wait! barrier)
                                          (thread-sleep! wait-time)
                                          (rwlock-read-unlock! rwlock))))
               (set! threads (cons thread threads))))
           (for (thread threads)
             (check (thread-join! thread 30) => #!void))
           (let (end (current-time))
             ;; if it successfully parrelized the reader access it must have taken
             ;; at most  wait-time with some fuzz.
             (check (- (time->seconds end) (time->seconds start))
                    ? (lambda (dt) (<= dt (* 1.2 wait-time)))))))
       (test-case "many writers"
         (let* ((writers 100)
                (threads [])
                (barrier (make-barrier writers))
                (rwlock (make-rwlock))
                (wait-time .1)
                (start (current-time)))
           (for (i (in-range writers))
             (let (thread (spawn-thread (lambda ()
                                          (barrier-post! barrier)
                                          ;; wait till everyone has started
                                          (barrier-wait! barrier)
                                          ;; lock
                                          (rwlock-write-lock! rwlock)
                                          ;; wait a little and unlock
                                          (thread-sleep! wait-time)
                                          (rwlock-write-unlock! rwlock))))
               (set! threads (cons thread threads))))
           (for (thread threads)
             (check (thread-join! thread 30) => #!void))
           (let (end (current-time))
             ;; if it successfully serialized the writer access it must have taken
             ;; at least writers * wait-time.
             (check (- (time->seconds end) (time->seconds start))
                    ? (lambda (dt) (>= dt (* writers wait-time)))))))
       (test-case "many readers and one writer"
         (let* ((readers 100)
                (reader-threads [])
                (writer-thread #f)
                (rwlock (make-rwlock))
                (reader-wait-time .1)
                (writer-wait-time .5)
                (start (current-time)))
           ;; spawn half the readers before the writer and the other half after
           (for (i (in-range (/ readers 2)))
             (let (thread (spawn-thread (lambda ()
                                          (rwlock-read-lock! rwlock)
                                          (thread-sleep! reader-wait-time)
                                          (rwlock-read-unlock! rwlock))))
               (set! reader-threads (cons thread reader-threads))))
           (set! writer-thread
             (spawn-thread (lambda ()
                             (rwlock-write-lock! rwlock)
                             (thread-sleep! writer-wait-time)
                             (rwlock-write-unlock! rwlock))))
           (for (i (in-range (/ readers 2)))
             (let (thread (spawn-thread (lambda ()
                                          (rwlock-read-lock! rwlock)
                                          (thread-sleep! reader-wait-time)
                                          (rwlock-read-unlock! rwlock))))
               (set! reader-threads (cons thread reader-threads))))
           ;; wait for the writer
           (check (thread-join! writer-thread 30) => #!void)
           (let (end (current-time))
             ;; it must have taken about reader-wait-time + writer-wait-time (with some fuzz)
             (check (- (time->seconds end) (time->seconds start))
                    ? (lambda (dt) (and (>= dt (+ reader-wait-time writer-wait-time))
                                        <= dt (* 1.2 (+ reader-wait-time writer-wait-time))))))
           ;; wait for the readers
           (for (thread reader-threads)
             (check (thread-join! thread 30) => #!void))
           (let (end (current-time))
             ;; it must have taken at most 2*reader-wait-time + writer-wait-time, with some
             ;; fuzee
             (check (- (time->seconds end) (time->seconds start))
                    ? (lambda (dt) (and (>= dt (+ (* 2 reader-wait-time) writer-wait-time))
                                        <= dt (* 1.2 (+ (* 2 reader-wait-time) writer-wait-time))))))))))))
