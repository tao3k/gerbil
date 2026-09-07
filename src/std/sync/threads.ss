;;; -*- Gerbil -*-
;;; © gerbil-mcp contributors
;;; Thread-group utilities — recursive inspection and deterministic shutdown.

(import :std/error)
(export make-detached-thread-group
        thread-group->thread-list*
        thread-group-kill!)

;; Make a thread group with no parent.
(def (make-detached-thread-group (name : :t := (void)))
  => :thread-group
  (make-thread-group name #f))

;; Return the threads in a group and all its descendant groups.
(def (thread-group->thread-list* (tgroup : :thread-group))
  => :list
  (let loop ((groups [tgroup]) (threads []))
    (if (null? groups)
      threads
      (let (next (car groups))
        (loop (foldl cons
                     (cdr groups)
                     (thread-group->thread-group-list next))
              (foldl cons
                     threads
                     (thread-group->thread-list next)))))))

;; Terminate and join every active thread in a group hierarchy except the caller.
(def (thread-group-kill! (tgroup : :thread-group))
  => :void
  (def (active-thread? thread)
    (let (state (thread-state thread))
      (not (or (thread-state-uninitialized? state)
               (thread-state-initialized? state)
               (thread-state-normally-terminated? state)
               (thread-state-abnormally-terminated? state)))))

  (let (self (current-thread))
    (let loop ()
      (let (threads
            (foldl (lambda (thread result)
                     (if (or (eq? thread self)
                             (not (active-thread? thread)))
                       result
                       (cons thread result)))
                   []
                   (thread-group->thread-list* tgroup)))
        (unless (null? threads)
          (for-each (lambda (thread)
                      (ignore-errors (thread-terminate! thread)))
                    threads)
          (for-each (lambda (thread)
                      (ignore-errors (thread-join! thread)))
                    threads)
          (loop))))))
