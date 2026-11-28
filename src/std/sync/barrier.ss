;;; -*- Gerbil -*-
;;; © vyzo
;;; thread barriers
(import :std/error
        :gerbil/runtime/util)
(export Barrier? Barrier
        (rename: make-Barrier make-barrier)
        barrier-wait!
        barrier-post!
        barrier-error!
        with-barrier-error)

;; Scheme can raise #f; failure presence must not depend on payload truth.
;; Inline atomic tripped state (slot 3: 0=open, 1=passed, 2=failed) and atomic
;; count (slot 4) give zero-allocation creation, zero-mutex barrier-wait! after
;; trip, and lock-free barrier-post! for the first limit-1 posters.
(defstruct Barrier ((mx      :- :mutex)
                    (cv      :- :condvar)
                    (tripped :- :fixnum)
                    (count   :- :fixnum)
                    (limit   :- :fixnum)
                    exn
                    (failed? :- :boolean))
  constructor: :init! final: #t)

(defmethod {:init! Barrier}
  (lambda (self (limit :~ nonnegative-fixnum? :- :fixnum))
    (set! self.mx (make-mutex 'barrier))
    (set! self.cv (make-condition-variable 'barrier))
    (set! self.tripped (if (fx= limit 0) 1 0))
    (set! self.count 0)
    (set! self.limit limit)
    (set! self.failed? #f)))

(def (barrier-wait! (b : Barrier))
  => :void
  (let ((st (:- (__atomic-struct-ref b 3 1) :fixnum)))
    (cond
     ((fx= st 1) (void))
     ((fx= st 2) (abort! (raise b.exn)))
     (else
      (let loop ()
        => :void
        (mutex-lock! b.mx)
        (cond
         (b.failed?
          (let (exn b.exn)
            (mutex-unlock! b.mx)
            (abort! (raise exn))))
         ((fx< (:- (__atomic-struct-ref b 4 1) :fixnum) b.limit)
          (mutex-unlock! b.mx b.cv)
          (loop))
         (else
          (mutex-unlock! b.mx)
          (void))))))))

(def (barrier-post! (b : Barrier))
  => :void
  (let ((next
         (let loop ()
           (let* ((cur (:- (__atomic-struct-ref b 4 1) :fixnum))
                  (nxt (fx+ cur 1)))
             (if (eq? (__atomic-struct-cas! b 4 cur nxt 3) cur)
               nxt
               (loop))))))
    (unless (fx< next b.limit)
      (mutex-lock! b.mx)
      (unless b.failed?
        (__atomic-struct-set! b 3 1 2))
      (condition-variable-broadcast! b.cv)
      (mutex-unlock! b.mx))
    (void)))

;; Preserve the first failure even when its value is #f.
(def (barrier-error! (b : Barrier) exn)
  => :void
  (mutex-lock! b.mx)
  (unless b.failed?
    (set! b.failed? #t)
    (set! b.exn exn)
    (__atomic-struct-set! b 3 2 2))
  (condition-variable-broadcast! b.cv)
  (mutex-unlock! b.mx)
  (void))

(defrules with-barrier-error ()
  ((_ b expr rest ...)
   (try
    expr rest ...
    (catch (e)
      (barrier-error! b e)
      (raise e)))))
