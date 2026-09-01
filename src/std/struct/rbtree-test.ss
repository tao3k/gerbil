;;; -*- Gerbil -*-
;;; © vyzo
;;; :std/struct/rbtree test

(import :std/struct/rbtree
        :std/iter
        :std/test)
(export rbtree-test)


(def rbtree-test
  (test-suite "test :std/struct/rbtree"
    (test-case "test rbtree ops"
      (def t (RBTree -))
      (check (rbtree-empty? t) => #t)
      (rbtree-put! t 1 'a)
      (check (rbtree-empty? t) => #f)
      (check (rbtree-ref t 1) => 'a)
      (rbtree-put! t 3 'c)
      (check (rbtree-ref t 3) => 'c)
      (rbtree-put! t 2 'b)
      (check (rbtree-ref t 2) => 'b)
      (rbtree-put! t 5 'e)
      (check (rbtree-ref t 5) => 'e)
      (rbtree-put! t 4 'd)
      (check (rbtree-ref t 4) => 'd)
      (check (rbtree->listr t) => '((5 . e) (4 . d) (3 . c) (2 . b) (1 . a)))
      (rbtree-remove! t 10)
      (check (rbtree->listr t) => '((5 . e) (4 . d) (3 . c) (2 . b) (1 . a)))
      (rbtree-remove! t 3)
      (check (rbtree-get t 3) => #f)
      (check (rbtree->listr t) => '((5 . e) (4 . d) (2 . b) (1 . a)))
      (rbtree-remove! t 1)
      (check (rbtree-get t 1) => #f)
      (check (rbtree->listr t) => '((5 . e) (4 . d) (2 . b)))
      (rbtree-remove! t 4)
      (check (rbtree-get t 4) => #f)
      (check (rbtree->listr t) => '((5 . e) (2 . b)))
      (rbtree-remove! t 2)
      (check (rbtree-get t 2) => #f)
      (check (rbtree->listr t) => '((5 . e)))
      (rbtree-remove! t 5)
      (check (rbtree-get t 5) => #f)
      (check (rbtree->listr t) => '())
      (check (rbtree-empty? t) => #t))

    (test-case "test rbtree iterators"
      (def t (RBTree -))
      (for-each (match <>
                  ([k . v] (rbtree-put! t k v)))
                '((1 . a) (3 . c) (2 . b) (5 . e) (4 . d)))

      ;; iteration via Iterable yields (k . v) pairs in ascending key order
      (check (for/collect (x t) x)
             => '((1 . a) (2 . b) (3 . c) (4 . d) (5 . e)))
      (check (for/collect (x t) (car x))
             => '(1 2 3 4 5))
      (check (for/collect (x t) (cdr x))
             => '(a b c d e))
      ;; key and value iterators
      (check (for/collect (x (in-rbtree-keys t)) x)
             => '(1 2 3 4 5))
      (check (for/collect (x (in-rbtree-values t)) x)
             => '(a b c d e))

      ;; empty tree iterates zero times
      (check (for/collect (x (RBTree -)) x) => '())

      ;; non-destructive: tree is unchanged after iteration
      (check (rbtree->list t) => '((1 . a) (2 . b) (3 . c) (4 . d) (5 . e))))

    (test-case "HashTable interface on RBTree"
      (def t-raw (list->rbtree - '((1 . a) (2 . b) (3 . c))))
      (using (t t-raw : HashTable)
        ;; ref with default
        (check (t.ref 0 'missing) => 'missing)
        (check (t.ref 1 #f) => 'a)
        ;; set! (puts a new key)
        (t.set! 4 'd)
        (check (t.ref 4 #f) => 'd)
        ;; update! (applies proc to existing value)
        (t.update! 1 symbol->string 'x)
        (check (t.ref 1 #f) => "a")
        ;; update! on missing key: proc receives the default value
        (t.update! 10 (lambda (v) (list 'was v)) 'missing)
        (check (t.ref 10 #f) => '(was missing))
        ;; delete!
        (t.delete! 2)
        (check (t.ref 2 #f) => #f)
        ;; length (O(n) for rbtree; keys: 1 3 4 10)
        (check (t.length) => 4)
        ;; for-each visits in ascending key order; prepend → descending list
        (def pairs [])
        (t.for-each (lambda (k v) (set! pairs (cons (cons k v) pairs))))
        (check pairs => '((10 was missing) (4 . d) (3 . c) (1 . "a")))
        ;; copy: independent snapshot
        (let (t2 (t.copy))
          (check (HashTable? t2) => #t)
          (using (t2 t2 : HashTable)
            (check (t2.ref 3 #f) => 'c)
            (check (t2.ref 2 #f) => #f)    ; deleted from t
            (t2.delete! 3)
            (check (t.ref 3 #f) => 'c)))   ; t is unaffected
        ;; new: empty table with same comparator
        (let (t3 (t.new #f))
          (check (HashTable? t3) => #t)
          (using (t3 t3 : HashTable)
            (check (t3.ref 1 #f) => #f)
            (t3.set! 99 'z)
            (check (t3.ref 99 #f) => 'z)))
        ;; clear!
        (t.clear!)
        (check (rbtree-empty? t-raw) => #t)
        (check (t.length) => 0)))))

