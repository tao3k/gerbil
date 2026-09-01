;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; :std/misc/lru test

(import :std/struct/lru
        :std/iter
        :std/test)
(export lru-test)

(def lru-test
  (test-suite "test :std/struct/lru"
    (test-case "test LRU cache ops"
      (def c (make-LRUCache 3))

      (lru-cache-put! c 'a 1)
      (lru-cache-put! c 'b 2)
      (lru-cache-put! c 'c 3)

      (check (LRUCache-size c) => 3)
      (check (lru-cache->list c) => '((c . 3) (b . 2) (a . 1)))

      (check (lru-cache-get c 'a) => 1)
      (check (lru-cache->list c) => '((a . 1) (c . 3) (b . 2)))

      (check (lru-cache-get c 'b) => 2)
      (check (lru-cache->list c) => '((b . 2) (a . 1) (c . 3)))

      (check (lru-cache-get c 'c) => 3)
      (check (lru-cache->list c) => '((c . 3) (b . 2) (a . 1)))

      (lru-cache-put! c 'd 4)
      (check (LRUCache-size c) => 3)
      (check (lru-cache-get c 'a) => #f)
      (check (lru-cache-get c 'd) => 4)
      (check (lru-cache->list c) => '((d . 4) (c . 3) (b . 2)))

      (check (lru-cache-get c 'd) => 4)
      (check (lru-cache->list c) => '((d . 4) (c . 3) (b . 2)))

      (check (lru-cache-get c 'c) => 3)
      (check (lru-cache->list c) => '((c . 3) (d . 4) (b . 2)))

      (check (lru-cache-get c 'b) => 2)
      (check (lru-cache->list c) => '((b . 2) (c . 3) (d . 4)))

      (lru-cache-remove! c 'd)
      (check (LRUCache-size c) => 2)
      (check (lru-cache-get c 'd) => #f)
      (check (lru-cache->list c) => '((b . 2) (c . 3)))

      (lru-cache-remove! c 'b)
      (check (LRUCache-size c) => 1)
      (check (lru-cache-get c 'b) => #f)
      (check (lru-cache->list c) => '((c . 3)))

      (lru-cache-remove! c 'c)
      (check (LRUCache-size c) => 0)
      (check (lru-cache-get c 'c) => #f)
      (check (lru-cache->list c) => '())

      (lru-cache-put! c 'a 1)
      (lru-cache-put! c 'b 2)
      (lru-cache-put! c 'c 3)
      (check (LRUCache-size c) => 3)

      (lru-cache-remove! c 'b)
      (check (LRUCache-size c) => 2)
      (check (lru-cache->list c) => '((c . 3) (a . 1)))

      (lru-cache-put! c 'b 2)
      (lru-cache-remove! c 'b)
      (check (LRUCache-size c) => 2)
      (check (lru-cache->list c) => '((c . 3) (a . 1)))

      (lru-cache-flush! c)
      (check (LRUCache-size c) => 0)
      (check (lru-cache->list c) => '()))

    (test-case "test LRU cache iterators"
      (def c (make-LRUCache 4))
      (lru-cache-put! c 'a 1)
      (lru-cache-put! c 'b 2)
      (lru-cache-put! c 'c 3)
      ;; after puts: head=(c . 3) -> (b . 2) -> (a . 1)=tail

      (check (for/collect (x c) x)
             => '((c . 3) (b . 2) (a . 1)))
      (check (for/collect (x (in-lru-cache-keys c)) x)
             => '(c b a))
      (check (for/collect (x (in-lru-cache-values c)) x)
             => '(3 2 1))

      ;; empty cache iterates zero times
      (def empty (make-LRUCache 2))
      (check (for/collect (x empty) x) => '())

      ;; iterator is non-destructive; order follows MRU after a touch
      (lru-cache-get c 'a)    ; promote a to head: (a . 1) -> (c . 3) -> (b . 2)
      (check (for/collect (x (in-lru-cache-keys c)) x)
             => '(a c b)))))
