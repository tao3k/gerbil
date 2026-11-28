;;; -*- Gerbil -*-
;;; © vyzo
;;; spin locks (TTAS acquire/release with CPU relax backoff & SRFI-226 barrier)
(import :gerbil/runtime/util
        :gerbil/runtime/control)
(export SpinLock SpinLock?
        spin-lock!
        spin-unlock!
        do-with-spin-lock)


;; Inline atomic owner slot (slot 1, zero extra vector box per SpinLock).
(defstruct SpinLock (lk (max :- :fixnum))
  constructor: :init!
  final: #t)

(defmethod {:init! SpinLock}
  (lambda (self (max-spin 10 : :fixnum))
    (set! self.lk #f)
    (set! self.max max-spin)))

(definline (spin-lock! (lock : SpinLock))
  (let ((max-spin lock.max))
    (declare (not interrupts-enabled))
    (let ((self (##current-thread)))
      (let again ((spin 0))
        (let ((cur (__atomic-struct-ref lock 1 1)))
          (cond
           ((not cur)
            (let ((owner (__atomic-struct-cas! lock 1 #f self 1)))
              (when owner
                (if (##fx< spin max-spin)
                  (begin
                    (__cpu-relax!)
                    (again (##fx+ spin 1)))
                  (begin
                    (__check-spin-deadlock! lock owner self)
                    (##thread-yield!)
                    (again 0))))))
           ((##fx< spin max-spin)
            (__cpu-relax!)
            (cond-expand
              ((not gerbil-smp)
               (##thread-yield!)))
            (again (##fx+ spin 1)))
           (else
            (__check-spin-deadlock! lock cur self)
            (##thread-yield!)
            (again 0))))))))

(def (__check-spin-deadlock! lock owner self)
  (declare (not interrupts-enabled))
  (when (thread? owner)
    (cond
     ((eq? owner self)
      (##thread-deadlock-action!))
     ;; Re-verify slot 1 == owner via atomic RMW after observing termination
     ;; so a thread that unlocked cleanly before exiting cannot trigger a
     ;; false abandoned-mutex exception under SMP.
     ((and (thread-dead? owner)
           (eq? (__atomic-struct-cas! lock 1 owner owner 3) owner))
      (##thread-abandoned-mutex-action!)))))

(definline (spin-unlock! (lock : SpinLock))
  (declare (not interrupts-enabled))
  (__atomic-struct-cas! lock 1 (##current-thread) #f 2))

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
          (begin0 (__call-with-runtime-barrier (lambda () body rest ...))
            (spin-unlock! __lock))))))))
