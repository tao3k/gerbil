;;; -*- Gerbil -*-
;;; © vyzo
;;; tests for std/time/timeout
(import :std/test
        ./precise
        ./timeout)
(export timeout-test)

(def timeout-test
  (test-suite "test :std/time/timeout"
    (test-case "absolute timeout implementations retain heterogeneous results"
      (check (AbsTimeout-abs-timeout (AbsTimeout !NoTimeout)) => #f)
      (check (flonum? (AbsTimeout-abs-timeout (AbsTimeout 0))) => #t)
      (check (time? (AbsTimeout-abs-timeout (AbsTimeout (current-time-coarse)))) => #t)
      (check (time? (AbsTimeout-abs-timeout (AbsTimeout (current-time-precise)))) => #t))

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
