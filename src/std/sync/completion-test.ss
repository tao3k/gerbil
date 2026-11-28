;;; -*- Gerbil -*-
;;; © vyzo
;;; :std/misc/completion test

(import :std/test
        :std/error
        :std/iter
        :std/sync/atomic
        ./completion)
(export completion-test)

(def completion-test
  (test-suite "test :std/misc/completion"
    (test-case "test completion wait"
      (def c (make-completion))
      (def thr (spawn completion-post! c 'done))
      (check (completion-wait! c) => 'done))
    (test-case "test completion error"
      (def c (make-completion 'error-test))
      (def thr (spawn completion-error! c 'fail))
      (check-exception (completion-wait! c) (cut eq? <> 'fail)))
    (test-case "SMP all-core racing completion-post!/error! & multi-round reset"
      (def n (max 4 (##current-vm-processor-count)))
      (def c (make-completion 'smp-race))
      (for (round (in-range 25))
        (let* ((waiters
                (for/collect (_ (in-range n))
                  (spawn (lambda ()
                           (with-catch
                            (lambda (e) (cons 'err e))
                            (lambda () (cons 'val (completion-wait! c))))))))
               (posters
                (for/collect (i (in-range n))
                  (let ((id i))
                    (spawn (lambda ()
                             (with-catch
                              (lambda (e)
                                (if (ContextError? e) 'lost (raise e)))
                              (lambda ()
                                (if (fx= (fxand id 1) 0)
                                  (completion-post! c (cons round id))
                                  (completion-error! c (cons 'boom id)))
                                'won))))))))
          (let* ((p-res (map thread-join! posters))
                 (wins (length (filter (lambda (x) (eq? x 'won)) p-res)))
                 (losses (length (filter (lambda (x) (eq? x 'lost)) p-res))))
            ;; Exactly ONE racing poster wins; all other n-1 posters receive ContextError!
            (check wins => 1)
            (check losses => (fx- n 1)))
          (let* ((res (map thread-join! waiters))
                 (first (car res)))
            ;; Every waiter MUST observe the exact same winning outcome (single-winner release/acquire!)
            (for-each (lambda (r) (check r => first)) res))
          (check (completion-ready? c) => #t)
          (completion-reset! c)
          (check (completion-ready? c) => #f))))))
