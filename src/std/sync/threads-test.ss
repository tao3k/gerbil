;;; -*- Gerbil -*-
;;; © gerbil-mcp contributors
;;; Thread-group utility tests — detached groups and recursive shutdown.

(import :std/sync/threads
        :std/test)
(export threads-test)

(def threads-test
  (test-suite "test :std/sync/threads"
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
