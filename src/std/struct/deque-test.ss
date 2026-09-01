;;; -*- Gerbil -*-
;;; © vyzo
;;; :std/struct/deque test

(import :std/struct/deque
        :std/iter
        :std/test)
(export deque-test)

(def deque-test
  (test-suite "test :std/struct/deque"
    (test-case "test deque ops"
      (def dq (make-Deque))
      (check (deque-empty? dq) => #t)
      (push-back! dq 1)
      (push-back! dq 2)
      (push-back! dq 3)
      (check (deque-empty? dq) => #f)
      (check (Deque-length dq) => 3)
      (check (deque->list dq) => '(1 2 3))
      (check (pop-front! dq) => 1)
      (check (deque->list dq) => '(2 3))
      (check (pop-back! dq) => 3)
      (check (deque->list dq) => '(2))
      (check (Deque-length dq) => 1)
      (check (pop-front! dq) => 2)
      (check (deque->list dq) => '())
      (check (Deque-length dq) => 0)
      (check (deque-empty? dq) => #t))

    (test-case "Iterable/Iterator Deque"
      (def dq (make-Deque))
      (push-back! dq 1)
      (push-back! dq 2)
      (push-back! dq 3)
      ;; forward iteration (front→back)
      (check (for/collect (x (in-deque-front dq)) x) => '(1 2 3))
      ;; reverse iteration (back→front)
      (check (for/collect (x (in-deque-back dq)) x) => '(3 2 1))
      ;; both are non-destructive
      (check (Deque-length dq) => 3)
      (check (deque->list dq) => '(1 2 3))
      ;; empty deque
      (check (for/collect (x (in-deque-front (make-Deque))) x) => '()))

    (test-case "destructive iterators"
      (def dq (make-Deque))
      (push-back! dq 1)
      (push-back! dq 2)
      (push-back! dq 3)
      ;; front iteration consumes from the front
      (check (for/collect (x (in-deque-front! dq)) x) => '(1 2 3))
      (check (deque-empty? dq) => #t)
      ;; back iteration consumes from the back
      (push-back! dq 1)
      (push-back! dq 2)
      (push-back! dq 3)
      (check (for/collect (x (in-deque-back! dq)) x) => '(3 2 1))
      (check (deque-empty? dq) => #t)
      ;; empty deque
      (check (for/collect (x (in-deque-front! (make-Deque))) x) => '()))

    (test-case "Iterable Deque is destructive"
      (def dq (make-Deque))
      (push-back! dq 1)
      (push-back! dq 2)
      (push-back! dq 3)
      ;; iterating over the deque itself consumes from the front
      (check (for/collect (x dq) x) => '(1 2 3))
      (check (deque-empty? dq) => #t))))
