;;; -*- Gerbil -*-
;;; © vyzo
;;; :std/struct/pqueue test

(import ./pqueue
        :std/iter
        :std/test)
(export pqueue-test)

(def pqueue-test
  (test-suite "test :std/struct/pqueue"
    (test-case "test pqueue ops"
      (def pq (make-PQueue cdr))
      (check (pqueue-empty? pq) => #t)
      (check (pqueue-size pq) => 0)
      (pqueue-push! pq ['a . 1])
      (pqueue-push! pq ['b . 5])
      (pqueue-push! pq ['c . 3])
      (pqueue-push! pq ['d . 2])
      (pqueue-push! pq ['e . 4])
      (check (pqueue-empty? pq) => #f)
      (check (pqueue-size pq) => 5)
      (check (pqueue-pop! pq) => ['a . 1])
      (check (pqueue-pop! pq) => ['d . 2])
      (check (pqueue-pop! pq) => ['c . 3])
      (pqueue-push! pq ['f . 3])
      (pqueue-push! pq ['g . 6])
      (check (pqueue-size pq) => 4)
      (check (pqueue-pop! pq) => ['f . 3])
      (check (pqueue-pop! pq) => ['e . 4])
      (check (pqueue-pop! pq) => ['b . 5])
      (check (pqueue-pop! pq) => ['g . 6])
      (check (pqueue-empty? pq) => #t))

    (test-case "PQueue iterators"
      (def pq (make-PQueue cdr))
      (pqueue-push! pq ['a . 1])
      (pqueue-push! pq ['b . 3])
      (pqueue-push! pq ['c . 2])
      ;; in-pqueue: non-destructive copy, yields in priority order (min-heap)
      (check (for/collect (x (in-pqueue pq)) x) => '((a . 1) (c . 2) (b . 3)))
      ;; original is intact
      (check (pqueue-size pq) => 3)
      (check (pqueue-pop! pq) => ['a . 1])
      ;; iterating over the pqueue itself is destructive
      (pqueue-push! pq ['d . 1])
      (check (for/collect (x pq) x) => '((d . 1) (c . 2) (b . 3)))
      (check (pqueue-empty? pq) => #t)
      ;; empty pqueue
      (check (for/collect (x (in-pqueue (make-PQueue cdr))) x) => '()))))
