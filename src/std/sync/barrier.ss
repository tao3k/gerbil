;;; -*- Gerbil -*-
;;; © vyzo
;;; thread barriers
(import :std/error)
(export Barrier? Barrier
        (rename: make-Barrier make-barrier)
        barrier-wait!
        barrier-post!
        barrier-error!
        with-barrier-error)

;; Scheme can raise #f; failure presence must not depend on payload truth.
(defstruct Barrier ((mx    :- :mutex)
                    (cv    :- :condvar)
                    (count :- :fixnum)
                    (limit :- :fixnum)
                    exn
                    (failed? :- :boolean))
  constructor: :init! final: #t )

(defmethod {:init! Barrier}
  (lambda (self (limit :~ nonnegative-fixnum? :- :fixnum))
    (set! self.mx (make-mutex 'barrier))
    (set! self.cv (make-condition-variable 'barrier))
    (set! self.count 0)
    (set! self.limit limit)
    (set! self.failed? #f)))

(def (barrier-wait! (b : Barrier))
  => :void
  (let loop ()
    => :void
    (mutex-lock! b.mx)
    (cond
     (b.failed?
      (let (exn b.exn)
        (mutex-unlock! b.mx)
        (abort! (raise exn))))
     ((fx< b.count b.limit)
      (mutex-unlock! b.mx b.cv)
      (loop))
     (else
      (mutex-unlock! b.mx)
      (void)))))

(def (barrier-post! (b : Barrier))
  => :void
  (mutex-lock! b.mx)
  (let* ((count b.count)
         (count+1 (fx+ count 1)))
    (set! b.count count+1)
    (unless (fx< count+1 b.limit)
      (condition-variable-broadcast! b.cv))
    (mutex-unlock! b.mx)
    (void)))

;; Preserve the first failure even when its value is #f.
(def (barrier-error! (b : Barrier) exn)
  => :void
  (mutex-lock! b.mx)
  (unless b.failed?
    (set! b.failed? #t)
    (set! b.exn exn))
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
