;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; double ended queues
(import :std/error
        :std/interface
        :std/iter/interface
        :std/iter/iterators)
(export Deque Deque?
        make-Deque
        Deque-length
        deque-empty?
        push-front! pop-front! peek-front
        push-back! pop-back! peek-back
        deque->list
        in-deque-front in-deque-back
        DequeFrontIterator DequeFrontIterator?
        DequeBackIterator DequeBackIterator?
        in-deque-front! in-deque-back!)
(declare
  (fixnum)
  (not safe))

(deftype @Node Node)
(defstruct Node (e (prev :- @Node) (next :- @Node))
  constructor: :init!
  final: #t)

(defmethod {:init! Node}
  (lambda (self e)
    (struct-instance-init! self e)))

(def (make-Node/prev e (prev :- Node))
  (let (new (make-Node e))
    (using (new :- Node)
      (set! new.prev prev)
      (set! prev.next new)
      new)))

(def (make-Node/next e (next :- Node))
  (let (new (make-Node e))
    (using (new :- Node)
      (set! new.next next)
      (set! next.prev new)
      new)))

(defstruct Deque ((front :- Node)
                  (back  :- Node)
                  (length :- :fixnum))
  constructor: :init!
  final: #t)

(defmethod {:init! Deque}
  (lambda (self)
    (struct-instance-init! self #f #f 0)))

(def (deque-empty? (dq : Deque))
  => :boolean
  (zero? dq.length))

(def (push-front! (dq : Deque) v)
  (let (new (if dq.front
              (make-Node/next v dq.front)
              (make-Node v)))
    (set! dq.front new)
    (unless dq.back
      (set! dq.back new))
    (set! dq.length (fx1+ dq.length))))

(def (push-back! (dq : Deque) v)
  (let (new (if dq.back
              (make-Node/prev v dq.back)
              (make-Node v)))
    (set! dq.back new)
    (unless dq.front
      (set! dq.front new))
    (set! dq.length (fx1+ dq.length))))

(def (pop-front! (dq : Deque) (default absent-obj))
  (cond
   (dq.front
    => (lambda (front)
         (let (next (&Node-next front))
           (set! dq.front next)
           (if next
             (set! (&Node-prev next) #f)
             (set! dq.back #f))
           (set! dq.length (fx1- dq.length))
           (&Node-e front))))
   ((eq? default absent-obj)
    (raise-context-error pop-front! "Cannot pop; empty deque" dq))
   (else default)))

(def (pop-back! (dq : Deque) (default absent-obj))
  (cond
   (dq.back
    => (lambda ((back :- Node))
         (using (prev back.prev :- Node)
           (set! dq.back prev)
           (if prev
             (set! prev.next #f)
             (set! dq.front #f))
           (set! dq.length (fx1- dq.length))
           back.e)))
   ((eq? default absent-obj)
    (raise-context-error pop-back! "Cannot pop; empty deque" dq))
   (else default)))

(def (peek-front (dq : Deque) (default absent-obj))
  (cond
   (dq.front => &Node-e)
   ((eq? default absent-obj)
    (raise-context-error peek-front "Cannot peek; empty deque" dq))
   (else default)))

(def (peek-back (dq : Deque) (default absent-obj))
  (cond
   (dq.back => &Node-e)
   ((eq? default absent-obj)
    (raise-context-error peek-back "Cannot peek; empty deque" dq))
   (else default)))

(def (deque->list (dq : Deque))
  => :list
  (let lp ((n dq.back :- Node) (r [] :- :list))
    => :list
    (if n
      (lp n.prev (cons n.e r))
      r)))

(def (deque-copy (dq : Deque))
  => Deque
  (let (new (make-Deque))
    (let lp ((n dq.front :- Node))
      (when n
        (using (n :- Node)
          (push-back! new n.e)
          (lp n.next))))
    new))

(defstruct DequeFrontIterator ((dq :- Deque))
  final: #t)

(defstruct DequeBackIterator ((dq :- Deque))
  final: #t)

(implement Iterator DequeFrontIterator
  (next!
   (lambda (self)
     (if (deque-empty? self.dq)
       #!eof
       (pop-front! self.dq)))))

(implement Iterator DequeBackIterator
  (next!
   (lambda (self)
     (if (deque-empty? self.dq)
       #!eof
       (pop-back! self.dq)))))

(def (in-deque-front (dq : Deque))
  => Iterator
  (Iterator (make-DequeFrontIterator (deque-copy dq))))

(def (in-deque-back (dq : Deque))
  => Iterator
  (Iterator (make-DequeBackIterator (deque-copy dq))))

(def (in-deque-front! (dq : Deque))
  => Iterator
  (Iterator (make-DequeFrontIterator dq)))

(def (in-deque-back! (dq : Deque))
  => Iterator
  (Iterator (make-DequeBackIterator dq)))

(implement Iterable Deque
  (iter
   (lambda (self)
     (in-deque-front! self))))
