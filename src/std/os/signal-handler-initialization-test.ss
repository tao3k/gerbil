;;; -*- Gerbil -*-
;;; (C) Gerbil contributors

(import :std/source
        :std/string/path
        :std/test)
(export signal-handler-initialization-test)

;; Exercise the actual initializer expression with a yielding, signal-free
;; constructor. Importing the real singleton first would hide the race.
(def (signal-handler-promise-constructor)
  => :procedure
  (call-with-input-file
   (path-expand "signal-handler.ss" (this-source-directory))
   (lambda (input)
     (let loop ()
       (let (form (read input))
         (cond
          ((eof-object? form)
           (error "system-signal-handler definition not found"))
          ((and (pair? form) (eq? (car form) 'def)
                (eq? (cadr form) 'system-signal-handler))
           (:- (eval `(lambda (make-signal-handler) ,(caddr form))) :procedure))
          (else (loop))))))))

(def signal-handler-initialization-test
  (test-suite "signal handler initialization"
    (test-case "competing first callers construct only the retained dispatcher"
      (def constructions 0)
      (def routed-instance #f)
      (def mx (make-mutex 'constructor-state))
      (def (construct)
        => :vector
        (let (instance
              (do-with-lock mx
                (set! constructions (fx1+ constructions))
                (vector constructions)))
          (thread-sleep! 0.05)
          (do-with-lock mx
            (set! routed-instance instance))
          instance))
      (def promise ((signal-handler-promise-constructor) construct))
      (def parent (current-thread))
      (def (caller)
        => :void
        (thread-receive)
        (thread-send parent (force promise)))
      (def first (spawn caller))
      (def second (spawn caller))
      (thread-send first 'start)
      (thread-send second 'start)
      (def a (thread-receive 5 #f))
      (def b (thread-receive 5 #f))
      (check constructions => 1)
      (check a ? vector?)
      (check (eq? a b) => #t)
      (check (eq? a (force promise)) => #t)
      (check (eq? a routed-instance) => #t)
      (thread-join! first)
      (thread-join! second))))
