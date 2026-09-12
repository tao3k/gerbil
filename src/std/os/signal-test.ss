;;; -*- Gerbil -*-
;;; (C) Gerbil contributors

(import :std/test
        ./error
        ./signal-test-support)
(export signal-test)

(def signal-test
  (test-suite "signal primitives (C stub only)"
    (test-case "valid C ints preserve PID and signal semantics"
      (for-each
       (lambda (pid)
         (for-each
          (lambda (signo)
            (kill pid signo)
            (check (stub-pid) => pid)
            (check (stub-signo) => signo))
          (filter fixnum? (list 0 INT_MIN INT_MAX))))
       (filter fixnum? (list 0 -1 -2 42 INT_MIN INT_MAX))))
    (test-case "out-of-range ints never invoke the C target"
      (for-each
       (lambda (value)
         (let (calls (stub-calls))
           (check-exception (kill value 0) cfun-conversion-exception?)
           (check-exception (kill 42 value) cfun-conversion-exception?)
           (check (stub-calls) => calls)))
       (filter fixnum? (list (+ INT_MAX 1) (- INT_MIN 1)
                            #x100000000 #xffffffff))))
    (test-case "errno still becomes an OS error"
      (check-exception (kill 12345 0) os-error?))))
