;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; LRU cache

(import :std/error
        :std/interface
        :std/iter/interface
        :std/iter/iterators)
(export LRUCache LRUCache?
        make-LRUCache
        lru-cache-ref lru-cache-get lru-cache-put! lru-cache-remove!
        LRUCache-size LRUCache-cap
        lru-cache-flush! lru-cache-for-each lru-cache-walk
        lru-cache-fold lru-cache-foldr lru-cache->list
        in-lru-cache-keys in-lru-cache-values)
(declare (not safe))

(deftype @Node Node)

(defstruct LRUCache (ht (hd :- @Node) (tl :- @Node) size cap)
  constructor: :init!
  final: #t )

(defstruct Node (key val (prev :- @Node) (next :- @Node))
  final: #t )

(defmethod {:init! LRUCache}
  (lambda (self (cap :~ fx>1? :- :fixnum))
    (struct-instance-init! self (make-hash-table) #f #f 0 cap)))

(def (fx>1? cap)
  (and (fixnum? cap) (fx> cap 1)))

(def (lru-cache-ref (lru : LRUCache) key (default absent-obj))
  (cond
   ((hash-get lru.ht key)
    => (lambda (n)
         (using (n :- Node)
           (lru-cache-touch! lru n)
           n.val)))
   ((eq? default absent-obj)
    (raise-unbound-key lru-cache-ref lru key))
   (else default)))

(def (lru-cache-touch! (lru :- LRUCache) (n :- Node))
  (using ((hd lru.hd :- Node)
          (tl lru.tl :- Node))
    (cond
     ((eq? n hd))
     ((eq? n tl)
      (using (prev n.prev :- Node)
        (set! prev.next #f)
        (set! lru.tl prev)
        (set! n.next hd)
        (set! hd.prev n)
        (set! n.prev #f)
        (set! lru.hd n)))
     (else
      (using ((prev n.prev :- Node)
              (next n.next :- Node))
        (set! prev.next next)
        (set! next.prev prev)
        (set! n.next hd)
        (set! hd.prev n)
        (set! n.prev #f)
        (set! lru.hd n))))))

(def (lru-cache-get (lru : LRUCache) key)
  (lru-cache-ref lru key #f))

(def (lru-cache-put! (lru : LRUCache) key val)
  => :void
  (cond
   ((hash-get lru.ht key)
    => (lambda (n)
         (using (n :- Node)
           ;; update in-place
           (set! n.val val)
           ;; and move to front
           (lru-cache-touch! lru n)
           (void))))
   (else
    (let ((n (make-Node key val #f #f))
          (sz lru.size))
      (using (n :- Node)
        (hash-put! lru.ht key n)
        (cond
         ((fx= sz 0)
          ;; empty cache
          (set! lru.hd n)
          (set! lru.tl n)
          (set! lru.size 1))
         ((fx< sz lru.cap)
          ;; we have space, add to front
          (using (hd lru.hd :- Node)
            (set! hd.prev n)
            (set! n.next hd)
            (set! lru.hd n)
            (set! lru.size (fx+ sz 1))))
         (else
          ;; cache is full, drop tail node and add to front
          (using ((hd lru.hd :- Node)
                  (tl lru.tl :- Node)
                  (xl tl.prev :- Node)) ; cap > 1, so this is not #f
            (hash-remove! lru.ht tl.key)
            (set! xl.next #f)
            (set! lru.tl xl)
            (set! hd.prev n)
            (set! n.next hd)
            (set! lru.hd n)))))
      (void)))))

(def (lru-cache-remove! (lru : LRUCache) key)
  => :void
  (alet (n (hash-get lru.ht key))
    (using (n :- Node)
      (hash-remove! lru.ht key)
      (set! lru.size (fx- lru.size 1))
      (cond
       ((eq? n lru.hd)
        (if (eq? n lru.tl)
          (begin
            (set! lru.hd #f)
            (set! lru.tl #f))
          (using (next n.next :- Node)
            (set! next.prev #f)
            (set! lru.hd next))))
       ((eq? n lru.tl)
        (using (prev n.prev :- Node)
          (set! prev.next #f)
          (set! lru.tl prev)))
       (else
        (using ((prev n.prev :- Node)
                (next n.next :- Node))
          (set! prev.next next)
          (set! next.prev prev))))))
  (void))

(def (lru-cache-flush! (lru : LRUCache))
  => :void
  (when (fx> lru.size 0)
    (struct-instance-init! lru (make-hash-table) #f #f 0)
    (void)))

(def (lru-cache-for-each (proc : :procedure) (lru : LRUCache))
  => :void
  (let lp ((n lru.hd))
    => :void
    (when n
      (using (n :- Node)
        (proc n.key n.val)
        (lp n.next)))))

(def (lru-cache-walk (proc : :procedure) (lru : LRUCache))
  => :void
  (lru-cache-for-each proc lru))

(def (lru-cache-fold (proc : :procedure) iv (lru : LRUCache))
  (let lp ((n lru.hd) (r iv))
    (if n
      (using (n :- Node)
        (lp n.next (proc n.key n.val r)))
      r)))

(def (lru-cache-foldr (proc : :procedure) iv (lru : LRUCache))
  (let lp ((n lru.tl) (r iv))
    (if n
      (using (n :- Node)
        (lp n.prev (proc n.key n.val r)))
      r)))

(def (lru-cache->list (lru : LRUCache))
  => :list
  (:- (lru-cache-foldr (lambda (k v r) (cons (cons k v) r)) [] lru)
      :list))

;;; iterators

(defstruct LRUCacheIterator (cursor (value :- :procedure))
  final: #t)

(implement Iterator LRUCacheIterator
  (next!
   (lambda (self)
     (let (n self.cursor)
       (if n
         (using (n :- Node)
           (let (result (self.value n.key n.val))
             (set! self.cursor n.next)
             result))
         #!eof)))))

(def (in-lru-cache-keys (lru : LRUCache))
  => Iterator
  (Iterator (make-LRUCacheIterator lru.hd (lambda (k _) k))))

(def (in-lru-cache-values (lru : LRUCache))
  => Iterator
  (Iterator (make-LRUCacheIterator lru.hd (lambda (_ v) v))))

(implement Iterable LRUCache
  (iter (lambda (self)
          (Iterator (make-LRUCacheIterator self.hd cons)))))
