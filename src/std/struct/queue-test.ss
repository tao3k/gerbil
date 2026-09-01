;;; -*- Gerbil -*-
;;; © vyzo
;;; :std/misc/queue test

(import :std/struct/queue
        :std/iter
        :std/test)
(export queue-test)

(def queue-test
  (test-suite "test :std/misc/queue"
    (test-case "test queue ops"
      (def q (make-Queue))
      (check (queue-empty? q) => #t)
      (enqueue! q 1)
      (enqueue! q 2)
      (enqueue! q 3)
      (check (Queue-length q) => 3)
      (check (queue->list q) => '(1 2 3))
      (check (dequeue! q) => 1)
      (check (Queue-length q) => 2)
      (check (queue->list q) => '(2 3))
      (check (dequeue! q) => 2)
      (check (Queue-length q) => 1)
      (check (queue->list q) => '(3))
      (enqueue! q 4)
      (check (Queue-length q) => 2)
      (check (queue->list q) => '(3 4))
      (check (dequeue! q) => 3)
      (check (Queue-length q) => 1)
      (check (queue->list q) => '(4))
      (check (dequeue! q) => 4)
      (check (queue-empty? q) => #t)
      (check (Queue-length q) => 0)
      (check (queue->list q) => '()))

    (test-case "Iterable Queue"
      (def q (make-Queue))
      (enqueue! q 'a)
      (enqueue! q 'b)
      (enqueue! q 'c)
      ;; iterating over the queue itself is destructive
      (check (for/collect (x q) x) => '(a b c))
      (check (queue-empty? q) => #t)
      ;; in-queue is non-destructive snapshot iteration
      (enqueue! q 'a)
      (enqueue! q 'b)
      (enqueue! q 'c)
      (check (for/collect (x (in-queue q)) x) => '(a b c))
      ;; queue is intact after iteration
      (check (Queue-length q) => 3)
      (check (dequeue! q) => 'a)
      ;; snapshot taken before second enqueue doesn't include 'd
      (let (it (in-queue q))
        (enqueue! q 'd)
        (check (for/collect (x it) x) => '(b c)))
      ;; empty queue
      (check (for/collect (x (in-queue (make-Queue))) x) => '()))))
