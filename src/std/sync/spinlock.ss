;;; -*- Gerbil -*-
;;; © vyzo
;;; spin locks
(export SpinLock SpinLock?
        spin-lock!
        spin-unlock!
        do-with-spin-lock)


(defstruct SpinLock ((lk :- :vector) (max :- :fixnum))
  constructor: :init!
  final: #t)

(defmethod {:init! SpinLock}
  (lambda (self (max-spin 10 : :fixnum))
    (set! self.lk (vector #f))
    (set! self.max max-spin)))

(definline (spin-lock! (lock : SpinLock))
  (let ((lk lock.lk) (max-spin lock.max))
    (declare (not interrupts-enabled))
    (let ((self (##current-thread)))
      (let again ((spin 0))
        (let ((owner (##vector-cas! lk 0 self #f)))
          (cond
           ((not owner)
            (void))
           ((##fx< spin max-spin)
            (cond-expand
              ((not gerbil-smp)
               (##thread-yield!)))
            (again (##fx+ spin 1)))
           (else
            (__check-spin-deadlock! lk owner self)
            (##thread-yield!)
            (again 0))))))))

(def (__check-spin-deadlock! lk owner self)
  (declare (not interrupts-enabled))
  (when (thread? owner)
    (cond
     ((eq? owner self)
      (##thread-deadlock-action!))
     ;; Re-verify lk[0] == owner via atomic RMW after observing termination
     ;; so a thread that unlocked cleanly before exiting cannot trigger a
     ;; false abandoned-mutex exception under SMP.
     ((and (thread-dead? owner)
           (eq? (##vector-cas! lk 0 owner owner) owner))
      (##thread-abandoned-mutex-action!)))))

(definline (spin-unlock! (lock : SpinLock))
  (let (lk lock.lk)
    (declare (not interrupts-enabled))
    (##vector-cas! lk 0 #f (##current-thread))))

(defrules do-with-spin-lock ()
  ((_ lock-expr ~ klass body rest ...)
   (signature-contract? #'(~ klass))
   (~ (do-with-spin-lock lock-expr body rest ...)
      klass))
  ((_ lock-expr body rest ...)
   (let ((__lock lock-expr))
     (spin-lock! __lock)
     (let ((__eh (##current-exception-handler)))
       (##with-exception-handler
        (lambda (__exn)
          (spin-unlock! __lock)
          (__eh __exn))
        (lambda ()
          (begin0 (begin body rest ...)
            (spin-unlock! __lock))))))))
