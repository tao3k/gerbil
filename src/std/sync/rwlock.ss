;;; -*- Gerbil -*-
;;; © vyzo
;;; read-write locks
(import :std/error
        :std/interface
        :std/sync/atomic
        :gerbil/runtime/control)
(export RWLock RWLock?
        (rename: make-RWLock make-rwlock)
        rwlock-readers
        rwlock-read-lock!
        rwlock-read-unlock!
        rwlock-write-lock!
        rwlock-write-unlock!
        with-read-lock
        with-write-lock
        do-with-read-lock
        do-with-write-lock
        do-with-rwlock)

;; Lock-free reader-fast-path SMP RWLock backed by SRFI-230 AtomicFxBox state:
;;   bit 0 (1)   : writer active
;;   bit 1 (2)   : one or more writers waiting (writer-preferring)
;;   bits 2.. (+4): active reader count
;; Bits 0 and 1 are mutated only while holding rw.mx; reader count uses C23
;; lock-free CAS/fetch-sub so read-heavy SMP workloads scale across all cores
;; with zero mutex contention.
(defstruct RWLock ((mx              :- :mutex)
                   (rcv             :- :condvar)
                   (wcv             :- :condvar)
                   (state           :- AtomicFxBox)
                   (writer          :- :thread)
                   (writers-waiting :- :fixnum))
  final: #t
  constructor: :init!)

(defmethod {:init! RWLock}
  (lambda (self (name 'rwlock))
    (let ((mx (make-mutex name))
          (rcv (make-condition-variable (make-symbol name "-read-lock")))
          (wcv (make-condition-variable (make-symbol name "-write-lock"))))
      (set! self.mx mx)
      (set! self.rcv rcv)
      (set! self.wcv wcv)
      (set! self.state (make-atomic-fxbox 0))
      (set! self.writer #f)
      (set! self.writers-waiting 0))))

(def (rwlock-readers (rw : RWLock))
  => :fixnum
  (fxarithmetic-shift-right (atomic-fxbox-ref rw.state (memory-order acquire)) 2))

(def (rwlock-read-lock! (rw : RWLock))
  (let fast-loop ()
    (let ((s (atomic-fxbox-ref rw.state (memory-order acquire))))
      (if (fx= (fxand s 3) 0)
        (let ((prev (atomic-fxbox-compare-and-swap! rw.state s (fx+ s 4) (memory-order acquire))))
          (if (fx= prev s)
            (void)
            (fast-loop)))
        (let slow-loop ()
          (mutex-lock! rw.mx)
          (let ((cur (atomic-fxbox-ref rw.state (memory-order acquire))))
            (if (fx= (fxand cur 3) 0)
              (begin
                (atomic-fxbox-fetch-add! rw.state 4 (memory-order acquire))
                (mutex-unlock! rw.mx)
                (void))
              (begin
                (mutex-unlock! rw.mx rw.rcv)
                (slow-loop)))))))))

(def (rwlock-read-unlock! (rw : RWLock))
  ;; SeqCst RMW pairs with writer's SeqCst fetch-ior! of writer-waiting bit (2)
  ;; so the last reader never misses waking a waiting writer on ARM64.
  (let ((prev (atomic-fxbox-fetch-sub! rw.state 4 (memory-order sequentially-consistent))))
    (when (fx< prev 4)
      (atomic-fxbox-fetch-add! rw.state 4 (memory-order relaxed))
      (raise-context-error rwlock-read-unlock! "rwlock is not read locked" rw))
    (when (and (fx= (fxand prev -4) 4)
               (fx> (fxand prev 2) 0))
      (mutex-lock! rw.mx)
      (when (fx> rw.writers-waiting 0)
        (condition-variable-signal! rw.wcv))
      (mutex-unlock! rw.mx))
    (void)))

(def (rwlock-write-lock! (rw : RWLock))
  (let loop ((waiting? #f))
    (mutex-lock! rw.mx)
    (unless waiting?
      (set! rw.writers-waiting (fx+ rw.writers-waiting 1))
      (when (fx= rw.writers-waiting 1)
        ;; Publish writer-waiting bit (2) with SeqCst before observing reader count.
        (atomic-fxbox-fetch-ior! rw.state 2 (memory-order sequentially-consistent))))
    (let ((cur (atomic-fxbox-ref rw.state (memory-order acquire))))
      (if (and (fx= (fxand cur -4) 0) (not rw.writer))
        (begin
          (set! rw.writers-waiting (fx- rw.writers-waiting 1))
          ;; Set writer-active (1) BEFORE clearing writer-waiting (2) so bits 0..1
          ;; are never both 0 during handoff and no reader can sneak in.
          (atomic-fxbox-fetch-ior! rw.state 1 (memory-order acquire-release))
          (when (fx= rw.writers-waiting 0)
            (atomic-fxbox-fetch-and! rw.state -3 (memory-order release)))
          (set! rw.writer (current-thread))
          (mutex-unlock! rw.mx))
        (let (woke? #f)
          (unwind-protect
            (begin
              (mutex-unlock! rw.mx rw.wcv)
              (set! woke? #t))
            (unless woke?
              (mutex-lock! rw.mx)
              (set! rw.writers-waiting (fx- rw.writers-waiting 1))
              (when (fx= rw.writers-waiting 0)
                (atomic-fxbox-fetch-and! rw.state -3 (memory-order release))
                (unless rw.writer
                  (condition-variable-broadcast! rw.rcv)))
              (mutex-unlock! rw.mx)))
          (loop #t))))))

(def (rwlock-write-unlock! (rw : RWLock))
  (mutex-lock! rw.mx)
  (unless rw.writer
    (mutex-unlock! rw.mx)
    (raise-context-error rwlock-write-unlock! "rwlock is not write locked" rw))
  (set! rw.writer #f)
  (atomic-fxbox-fetch-and! rw.state -2 (memory-order release))
  (if (fx> rw.writers-waiting 0)
    (condition-variable-signal! rw.wcv)
    (condition-variable-broadcast! rw.rcv))
  (mutex-unlock! rw.mx))

;; Pair only completed entry with exit; entry may itself release a read lock.
;; Guard body with SRFI-226 runtime continuation barrier so delimited captures
;; cannot escape or re-enter the critical section without balancing unlock.
(defrule (do-with-rwlock rw expr enter! exit!)
  (let (handler (current-exception-handler))
    (enter! rw)
    (with-exception-handler
     (lambda (e)
       (with-catch void
         (lambda ()
           (exit! rw)
           (handler e)))
       ;; if the handler returns here the state is inconsistent -- we need to bail
       (##thread-end-with-uncaught-exception! e))
     (lambda ()
       (let (result (__call-with-runtime-barrier (lambda () expr)))
         (exit! rw)
         result)))))

(defrules do-with-read-lock ()
  ((_ rw expr)
   (do-with-rwlock rw expr rwlock-read-lock! rwlock-read-unlock!))
  ((_ rw expr ~ type)
   (and (identifier? #'~)
        (member #'~ '(: :-) free-identifier=?))
   (~ (do-with-rwlock rw expr rwlock-read-lock! rwlock-read-unlock!)
      type)))

(defrules do-with-write-lock ()
  ((_ rw expr)
   (do-with-rwlock rw expr rwlock-write-lock! rwlock-write-unlock!))
  ((_ rw expr ~ type)
   (and (identifier? #'~)
        (member #'~ '(: :-) free-identifier=?))
   (~ (do-with-rwlock rw expr rwlock-write-lock! rwlock-write-unlock!)
      type)))

(def (with-read-lock (rw : RWLock) (proc : :procedure))
  (do-with-read-lock rw (proc)))

(def (with-write-lock (rw : RWLock) (proc : :procedure))
  (do-with-write-lock rw (proc)))

;; methods for the Locker interface
(implement Locker RWLock
  (read-lock!    __rwlock-read-lock!)
  (read-unlock!  __rwlock-read-unlock!)
  (write-lock!   __rwlock-write-lock!)
  (write-unlock! __rwlock-write-unlock!))
