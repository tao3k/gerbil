;;; -*- Gerbil -*-
;;; © gerbil-mcp contributors
;;; Thread-group utility tests — detached groups and recursive shutdown.

(import :std/sync/threads
        :std/error
        :std/test)
(export threads-test)

(def threads-test
  (test-suite "test :std/sync/threads"
    (test-case "join returns worker values and propagates original exceptions"
      (let (value [1 2 3])
        (check (eq? (thread-join!/error (spawn (lambda () value))) value) => #t))
      (for-each
        (lambda (failure)
          (check-exception (thread-join!/error
                            (spawn-thread (lambda () (raise failure))))
                           (lambda (e) (eq? e failure))))
        [(Error "worker failed") 'worker-failed #f]))

    (test-case "join translates timeouts and permits subsequent joining"
      (let ((worker (spawn (lambda () (thread-receive))))
            (timeout-value [timeout:]))
        (unwind-protect
          (begin
            (check (eq? (thread-join!/error worker 0 timeout-value) timeout-value) => #t)
            (check (thread-join!/error worker (seconds->time 0) #f) => #f)
            (check-exception (thread-join!/error worker 0) Timeout?)
            (check-exception (thread-join!/error worker (seconds->time 0)) Timeout?)
            ;; A worker can itself raise a native join timeout. That is its original
            ;; failure, not a timeout of this caller's join, so retain its identity.
            (let (failure (with-catch identity (cut thread-join! worker 0)))
              (check failure ? join-timeout-exception?)
              (check-exception
               (thread-join!/error (spawn-thread (lambda () (raise failure))))
               (lambda (e) (eq? e failure))))
            (thread-send worker 'finished)
            (check (thread-join!/error worker #f) => 'finished))
          (begin
            (thread-terminate! worker)
            (ignore-errors (thread-join! worker))))))

    (test-case "join preserves terminated-thread exceptions"
      (let (worker (spawn (lambda () (thread-receive))))
        (thread-terminate! worker)
        (check-exception (thread-join!/error worker) terminated-thread-exception?)))

    (test-case "thread group parent may be false or a thread group"
      (let* ((detached (make-thread-group 'detached #f))
             (child (make-thread-group 'child detached)))
        (check (thread-group? detached) => #t)
        (check (thread-group-parent detached) => #f)
        (check (thread-group-parent child) => detached)))

    (test-case "detached recursive thread group"
      (let* ((parent (make-detached-thread-group 'parent))
             (child (make-thread-group 'child parent))
             (parent-thread
              (make-thread (lambda () (thread-sleep! 60))
                           'parent-thread parent))
             (child-thread
              (make-thread (lambda () (thread-sleep! 60))
                           'child-thread child)))
        (try
         (check (thread-group-parent parent) => #f)
         (thread-start! parent-thread)
         (thread-start! child-thread)
         (let (threads (thread-group->thread-list* parent))
           (check (and (memq parent-thread threads) #t) => #t)
           (check (and (memq child-thread threads) #t) => #t))
         (thread-group-kill! parent)
         (check (thread-state-abnormally-terminated?
                 (thread-state parent-thread))
                => #t)
         (check (thread-state-abnormally-terminated?
                 (thread-state child-thread))
                => #t)
         (finally
          (thread-group-kill! parent)))))))
