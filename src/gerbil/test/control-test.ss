;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Runtime exception-only unwind protection

(export control-test)
(import (only-in :std/test test-suite test-case check))

(def control-test
  (test-suite "test gerbil/runtime/control"
    (test-case "normal return and value counts"
      (def count 0)
      (check (with-unwind-protect!
              (lambda () 'result)
              (lambda () (set! count (+ count 1)) 'ignored))
             => 'result)
      (check count => 1)
      (check (call-with-values
              (lambda ()
                (with-unwind-protect!
                 (lambda () (values))
                 (lambda () (set! count (+ count 1)))))
              list)
             => [])
      (check count => 2)
      (check (call-with-values
              (lambda ()
                (with-unwind-protect!
                 (lambda () (values 1 2 3))
                 (lambda () (set! count (+ count 1)))))
              list)
             => [1 2 3])
      (check count => 3))

    (test-case "body exception cleans up before a nonabortive handler"
      (def events [])
      (check (with-exception-handler
              (lambda (e)
                (set! events (cons e events))
                'resumed)
              (lambda ()
                (with-unwind-protect!
                 (lambda () (raise 'body))
                 (lambda () (set! events (cons 'cleanup events))))))
             => 'resumed)
      (check events => '(body cleanup)))

    (test-case "body exception identity"
      (def signal (cons 'signal []))
      (def count 0)
      (check (eq? (with-catch
                   (lambda (e) e)
                   (lambda ()
                     (with-unwind-protect!
                      (lambda () (raise signal))
                      (lambda () (set! count (+ count 1))))))
                  signal)
             => #t)
      (check count => 1))

    (test-case "cleanup exception supersedes normal return or body exception"
      (def count 0)
      (check (with-catch
              (lambda (e) e)
              (lambda ()
                (with-unwind-protect!
                 (lambda () 'result)
                 (lambda ()
                   (set! count (+ count 1))
                   (raise 'cleanup)))))
             => 'cleanup)
      (check count => 1)
      (set! count 0)
      (check (with-catch
              (lambda (e) e)
              (lambda ()
                (with-unwind-protect!
                 (lambda () (raise 'body))
                 (lambda ()
                   (set! count (+ count 1))
                   (raise 'cleanup)))))
             => 'cleanup)
      (check count => 1))

    (test-case "forwarding restores the saved exception handler"
      (def count 0)
      (def events [])
      (def restored? #t)
      (def saved-handler #f)
      (check (let/cc escape
               (def (handler (e : :symbol))
                 (set! restored? (and restored? (eq? (current-exception-handler) saved-handler)))
                 (set! events (cons e events))
                 (if (eq? e 'body)
                   (raise 'outer)
                   (escape e)))
               (with-exception-handler handler
                 (lambda ()
                   (set! saved-handler (current-exception-handler))
                   (with-unwind-protect!
                    (lambda () (raise 'body))
                    (lambda () (set! count (+ count 1)))))))
             => 'outer)
      (check restored? => #t)
      (check events => '(outer body))
      (check count => 1))

    (test-case "macro accepts one or multiple finalizers"
      (def events [])
      (check (unwind-protect! 'result
               (set! events (cons 'one events)))
             => 'result)
      (check events => '(one))
      (check (unwind-protect! 'result
               (set! events (cons 'two events))
               (set! events (cons 'three events)))
             => 'result)
      (check events => '(three two one)))

    (test-case "fast cleanup precedes an inner dynamic finalizer on exception"
      (def events [])
      (check (with-catch identity
               (lambda ()
                 (unwind-protect!
                   (unwind-protect
                     (raise 'body)
                     (set! events (cons 'inner events)))
                   (set! events (cons 'outer events)))))
             => 'body)
      ;; The fast handler runs before the catcher unwinds the dynamic extent.
      ;; Do not use it to release resources needed by the inner finalizer.
      (check (reverse events) => '(outer inner)))

    (test-case "continuation escape intentionally bypasses cleanup"
      (def count 0)
      (check (let/cc escape
               (unwind-protect! (escape 'escaped)
                 (set! count (+ count 1))))
             => 'escaped)
      (check count => 0)
      (check (let/cc escape
               (unwind-protect (escape 'escaped)
                 (set! count (+ count 1))))
             => 'escaped)
      (check count => 1))))
