;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Foreign allocation failure regression
(import :std/test
        :std/error
        :std/ffi)
(export ffi-test)

(def ffi-test
  (test-suite "foreign allocation errors"
    (test-case "null allocation is not premature input or retryable I/O"
      (let (error (with-catch values (lambda () (check-pointer allocation-test #f))))
        (check error ? AllocationError?)
        (check error ? foreign-allocation-error?)
        (check (PrematureEndOfInput? error) => #f)
        (check (IOError? error) => #f)
        (check (car (Error-irritants error)) => 'allocation-test)
        (check (Error-where error) ? string?)))))
