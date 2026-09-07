;;; -*- Gerbil -*-
;;; © vyzo
;;; tests for std/time/timeout
(import :std/test
        ./timeout)
(export timeout-test)

(def timeout-test
  (test-suite "test :std/time/timeout"
    (test-case "test absolute timeout value conversion"
      (def absolute-timeout (timeout->abs-timeout 0))
      (check (flonum? absolute-timeout) => #t)
      (check (time? (timeout->abs-timeout 0 value: seconds->time)) => #t))

    (test-case "test no timeout bypasses value conversion"
      (check
       (timeout->abs-timeout
        #f 'none
        value: (lambda (_) (error "unexpected timeout conversion")))
       => 'none))))
