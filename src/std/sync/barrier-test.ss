;;; -*- Gerbil -*-
;;; © vyzo
;;; :std/misc/barrier test

(import :std/test
        :std/iter
        :std/sync/atomic
        ./barrier)
(export barrier-test)

(def barrier-test
  (test-suite "test :std/misc/barrier"
    (test-case "test barrier wait"
      (def b (make-barrier 2))
      (def thr1 (spawn barrier-post! b))
      (def thr2 (spawn barrier-post! b))
      (check (barrier-wait! b) => (void)))
    (test-case "test barrier error"
      (def b (make-barrier 2))
      (def thr (spawn barrier-error! b 'fail))
      (check-exception (barrier-wait! b) (cut eq? <> 'fail)))
    (test-case "SMP all-core barrier synchronization & concurrent post/error race"
      (def n (max 4 (##current-vm-processor-count)))
      ;; 1. 20 rounds of all-core barrier-post! + barrier-wait! + post-trip fast-path wait
      (for (_ (in-range 20))
        (let ((b (make-barrier n))
              (arrived (make-atomic-fxbox 0)))
          (let ((ts (for/collect (_ (in-range n))
                      (spawn (lambda ()
                               (atomic-fxbox-fetch-add! arrived 1 (memory-order acquire-release))
                               (barrier-post! b)
                               (barrier-wait! b))))))
            (for-each thread-join! ts)
            (check (atomic-fxbox-ref arrived (memory-order acquire)) => n)
            ;; Post-trip zero-mutex fast-path must return immediately
            (check (barrier-wait! b) => (void)))))
      ;; 2. Concurrent barrier-post! racing against barrier-error! across all cores
      (for (_ (in-range 20))
        (let* ((b (make-barrier n))
               (waiters
                (for/collect (_ (in-range n))
                  (spawn (lambda ()
                           (with-catch
                            (lambda (e) (if (eq? e 'race-err) 'err 'other))
                            (lambda () (barrier-wait! b) 'ok))))))
               (posters
                (for/collect (i (in-range n))
                  (spawn (lambda ()
                           (if (fx= i 0)
                             (barrier-error! b 'race-err)
                             (barrier-post! b)))))))
          (for-each thread-join! posters)
          (let ((outcomes (map thread-join! waiters)))
            (for-each (lambda (o)
                        (check (or (eq? o 'ok) (eq? o 'err)) => #t))
                      outcomes)))))))
