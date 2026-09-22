;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Internal network worker completion, cleanup and join contracts
(import :std/error
        :std/test
        ./thread)
(export thread-test)

(def thread-test
  (test-suite "Internal network worker completion"
    (test-case "ordinary results and returned exceptions are unchanged"
      (for-each
        (lambda (value)
          (check-eq? (network-thread-join!
                      (spawn-network-thread 'network-result (lambda () value)) 2)
                     value)
          ;; Application workers are valid inputs, including a caught exception
          ;; returned as a value rather than raised out of the worker.
          (check-eq? (network-thread-join! (spawn-thread (lambda () value)) 2) value))
        [#f (void) [1 2 3] (Error "returned error") (Timeout "returned timeout")]))

    (test-case "completed failures retain original object identity including false"
      (for-each
        (lambda (failure)
          (let (worker (spawn-network-thread 'network-failure (lambda () (raise failure))))
            (check-exception (network-thread-join! worker 2) (lambda (e) (eq? e failure)))
            ;; Native completion is normal and contains the internal wrapper,
            ;; never a generic symbol or the possibly false original exception.
            (let (result (thread-join! worker 2))
              (check result ? NetworkThreadError?)
              (check-eq? (NetworkThreadError-exception result) failure))
            (check-exception (network-thread-join! worker 0) (lambda (e) (eq? e failure))))
          (check-exception (network-thread-join! (spawn-thread (lambda () (raise failure))) 2)
                           (lambda (e) (eq? e failure))))
        [(Error "worker failed") (box 'original) #f (Timeout "worker timeout")]))

    (test-case "dynamic finalizers finish before failure completion and retain marker"
      (for-each
        (lambda (failure)
          (let* ((owner (current-thread)) (order []) (marker #f)
                 (worker
                  (spawn-network-thread 'network-cleanup
                    (lambda ()
                      (unwind-protect
                        (unwind-protect
                          (raise failure)
                          (set! order (cons 'inner order)))
                        (begin
                          (set! marker (thread-local-get network-thread-key))
                          (thread-send owner 'cleanup)
                          (thread-receive 5 'missing-release)
                          (set! order (cons 'outer order))))))))
            (unwind-protect
              (begin
                (check (thread-receive 2 'missing-cleanup) => 'cleanup)
                (check order => '(inner))
                (check marker => 'network-cleanup)
                (check (network-thread-join! worker 0 'waiting) => 'waiting)
                (thread-send worker 'release)
                (check-exception (network-thread-join! worker 2) (lambda (e) (eq? e failure)))
                (check order => '(outer inner)))
              (begin
                (thread-send worker 'release)
                (with-catch void (lambda () (network-thread-join! worker 2)))))))
        [(Error "unwind first") #f]))

    (test-case "join timeouts and worker-raised native timeouts remain distinct"
      (let ((worker (spawn-network-thread 'network-timeout (lambda () (thread-receive 5 'expired))))
            (timeout-value (NetworkThreadError exception: 'not-a-worker-failure)))
        (unwind-protect
          (begin
            (check-eq? (network-thread-join! worker 0 timeout-value) timeout-value)
            (check (network-thread-join! worker (seconds->time 0) #f) => #f)
            (check (network-thread-join! worker .001 'waiting) => 'waiting)
            (check-exception (network-thread-join! worker 0) Timeout?)
            (check-exception (network-thread-join! worker (seconds->time 0)) Timeout?)
            (let (failure (with-catch identity (lambda () (thread-join! worker 0))))
              (check failure ? join-timeout-exception?)
              (check-exception
               (network-thread-join!
                (spawn-network-thread 'network-native-timeout (lambda () (raise failure))) 2)
               (lambda (e) (eq? e failure))))
            (thread-send worker 'finished)
            (check (network-thread-join! worker #f) => 'finished)
            (check (network-thread-join! worker) => 'finished))
          (begin
            (thread-send worker 'release)
            (network-thread-join! worker 2)))))))
