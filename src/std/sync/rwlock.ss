;;; -*- Gerbil -*-
;;; © vyzo
;;; read-write locks
(import :std/error
        :std/interface
        :gerbil/runtime/control
        :gerbil/runtime/util)
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

;; Per-processor cache-line-padded striped SMP RWLock (Linux percpu_rwsem style):
;;   cells layout (each hot slot separated by 16 words = 128 bytes on 64-bit,
;;   matching Apple Silicon L2 & x86_64 adjacent-line prefetch granularity):
;;     cells[0]             : write-state bitmask (bit 0 = writer active,
;;                            bit 1 = writer waiting; mutated ONLY under rw.mx)
;;     cells[16 + s*16]     : signed distributed reader count for stripe s
;;                            (s = 0..nstripes-1, indexed by ##current-processor-id).
;;
;; Readers stay 100% wait-free/lock-free with ZERO shared cache-line writes:
;;   - write-state stays in shared L1 S-state across all cores while no writer waits.
;;   - each core updates only its own 128B-padded stripe via single-instruction
;;     hardware fetch-add/fetch-sub (zero CAS retry loops!).
;;   - green-thread migration between read-lock! and read-unlock! is naturally
;;     supported because sum_{s} stripe[s] is the exact active reader count.
(def (%rwlock-next-pow2 (n : :fixnum))
  => :fixnum
  (let loop ((p 1))
    (if (fx>= p n) p (loop (fxarithmetic-shift-left p 1)))))

(defstruct RWLock ((mx              :- :mutex)
                   (rcv             :- :condvar)
                   (wcv             :- :condvar)
                   (cells           :- :vector)
                   (nstripes        :- :fixnum)
                   (mask            :- :fixnum)
                   (writer          :- :thread)
                   (writers-waiting :- :fixnum))
  final: #t
  constructor: :init!)

(defmethod {:init! RWLock}
  (lambda (self (name 'rwlock))
    (let* ((mx (make-mutex name))
           (rcv (make-condition-variable (make-symbol name "-read-lock")))
           (wcv (make-condition-variable (make-symbol name "-write-lock")))
           (nprocs (let ((p (##current-vm-processor-count)))
                     (if (and (fixnum? p) (fx> p 0)) p 1)))
           (nstripes (min 64 (%rwlock-next-pow2 nprocs)))
           (cells (make-vector (fx+ 16 (fxarithmetic-shift-left nstripes 4)) 0)))
      (set! self.mx mx)
      (set! self.rcv rcv)
      (set! self.wcv wcv)
      (set! self.cells cells)
      (set! self.nstripes nstripes)
      (set! self.mask (fx- nstripes 1))
      (set! self.writer #f)
      (set! self.writers-waiting 0))))

(definline (%rwlock-stripe-slot (mask :- :fixnum))
  (fx+ 16 (fxarithmetic-shift-left (fxand (##current-processor-id) mask) 4)))

;; Sum all per-processor reader stripes using the specified memory order code
;; (1 = acquire, 4 = sequentially-consistent).
(def (%rwlock-sum-stripes (cells :- :vector) (nstripes :- :fixnum) (order-code :- :fixnum))
  => :fixnum
  (let loop ((s 0) (idx 16) (acc 0))
    (if (fx< s nstripes)
      (loop (fx+ s 1)
            (fx+ idx 16)
            (fx+ acc (:- (__atomic-fx-load cells idx order-code) :fixnum)))
      acc)))

(def (rwlock-readers (rw : RWLock))
  => :fixnum
  (let ((total (%rwlock-sum-stripes rw.cells rw.nstripes 1)))
    (if (fx> total 0) total 0)))

(def (%rwlock-maybe-wake-writer! (rw :- RWLock))
  (mutex-lock! rw.mx)
  (when (and (fx> rw.writers-waiting 0)
             (fx= (%rwlock-sum-stripes rw.cells rw.nstripes 4) 0))
    (condition-variable-signal! rw.wcv))
  (mutex-unlock! rw.mx))

(def (rwlock-read-lock! (rw : RWLock))
  (let ((cells rw.cells)
        (mask rw.mask))
    ;; Relaxed pre-check avoids dirtying stripe while writer is active/waiting;
    ;; formal Dekker synchronization happens on the SeqCst fetch-add + SeqCst load below.
    (if (fx= (:- (__atomic-fx-load cells 0 0) :fixnum) 0)
      (let ((slot (%rwlock-stripe-slot mask)))
        ;; SeqCst fetch-add + SeqCst load pairs with writer's SeqCst fetch-ior of writer-waiting (2).
        (__atomic-fx-fetch-add! cells slot 1 4)
        (if (fx= (:- (__atomic-fx-load cells 0 4) :fixnum) 0)
          (void)
          (begin
            ;; A writer became active or waiting concurrently: roll back on the
            ;; exact same stripe and wake the writer if we were the last reader.
            (__atomic-fx-fetch-sub! cells slot 1 4)
            (%rwlock-maybe-wake-writer! rw)
            (%rwlock-read-lock-slow! rw))))
      (%rwlock-read-lock-slow! rw))))

(def (%rwlock-read-lock-slow! (rw :- RWLock))
  (let ((cells rw.cells)
        (mask rw.mask)
        (mx rw.mx)
        (rcv rw.rcv))
    (let slow-loop ()
      (mutex-lock! mx)
      (if (fx= (:- (__atomic-fx-load cells 0 1) :fixnum) 0)
        (let ((slot (%rwlock-stripe-slot mask)))
          (__atomic-fx-fetch-add! cells slot 1 3)
          (mutex-unlock! mx)
          (void))
        (begin
          (mutex-unlock! mx rcv)
          (slow-loop))))))

(def (%rwlock-verify-unbalanced-unlock! (rw :- RWLock) (slot :- :fixnum))
  ;; Rare slow path: only reached when stripe went <= 0 AND lock-free sum < 0.
  ;; Freeze new fast-path readers via bit 1 under rw.mx so SeqCst scan is exact
  ;; even under concurrent cross-processor migrations.
  (let ((cells rw.cells)
        (nstripes rw.nstripes)
        (mx rw.mx)
        (unbalanced? #f))
    (mutex-lock! mx)
    (let ((set-bit? (fx= (fxand (:- (__atomic-fx-load cells 0 1) :fixnum) 2) 0)))
      (when set-bit?
        (__atomic-fx-fetch-ior! cells 0 2 4))
      (let ((total (%rwlock-sum-stripes cells nstripes 4)))
        (cond
         ((fx< total 0)
          (__atomic-fx-fetch-add! cells slot 1 0)
          (set! unbalanced? #t))
         ((and (fx= total 0) (fx> rw.writers-waiting 0))
          (condition-variable-signal! rw.wcv))))
      (when (and set-bit? (fx= rw.writers-waiting 0))
        (__atomic-fx-fetch-and! cells 0 -3 2)
        (unless rw.writer
          (condition-variable-broadcast! rw.rcv))))
    (mutex-unlock! mx)
    (when unbalanced?
      (raise-context-error rwlock-read-unlock! "rwlock is not read locked" rw))))

(def (rwlock-read-unlock! (rw : RWLock))
  (let* ((cells rw.cells)
         (slot (%rwlock-stripe-slot rw.mask))
         ;; SeqCst fetch-sub + SeqCst load pairs with writer's SeqCst fetch-ior of writer-waiting (2).
         (prev (:- (__atomic-fx-fetch-sub! cells slot 1 4) :fixnum))
         (ws (:- (__atomic-fx-load cells 0 4) :fixnum)))
    (cond
     ((and (fx= ws 0) (fx>= prev 1))
      ;; Zero-contention fast path: own cache line only, no writer waiting!
      (void))
     ((fx> (fxand ws 2) 0)
      ;; Writer is waiting (or active): check exact sum under rw.mx.
      (let ((unbalanced? #f))
        (mutex-lock! rw.mx)
        (let ((total (%rwlock-sum-stripes cells rw.nstripes 4)))
          (cond
           ((fx< total 0)
            (__atomic-fx-fetch-add! cells slot 1 0)
            (set! unbalanced? #t))
           ((and (fx= total 0) (fx> rw.writers-waiting 0))
            (condition-variable-signal! rw.wcv))))
        (mutex-unlock! rw.mx)
        (when unbalanced?
          (raise-context-error rwlock-read-unlock! "rwlock is not read locked" rw))
        (void)))
     (else
      ;; ws has no waiting writer (ws=0 or ws=1), and prev <= 0 (either migrated
      ;; reader or unbalanced unlock): check lock-free sum before slow freeze.
      (when (fx< (%rwlock-sum-stripes cells rw.nstripes 4) 0)
        (%rwlock-verify-unbalanced-unlock! rw slot))
      (void)))))

(def (rwlock-write-lock! (rw : RWLock))
  (let ((cells rw.cells)
        (nstripes rw.nstripes)
        (mx rw.mx)
        (wcv rw.wcv)
        (rcv rw.rcv))
    (let loop ((waiting? #f))
      (mutex-lock! mx)
      (unless waiting?
        (set! rw.writers-waiting (fx+ rw.writers-waiting 1))
        (when (fx= rw.writers-waiting 1)
          ;; Publish writer-waiting bit (2) with SeqCst before observing reader stripes.
          (__atomic-fx-fetch-ior! cells 0 2 4)))
      (if (and (not rw.writer)
               (fx= (%rwlock-sum-stripes cells nstripes 4) 0))
        (begin
          (set! rw.writers-waiting (fx- rw.writers-waiting 1))
          ;; Set writer-active (1) BEFORE clearing writer-waiting (2) so bits 0..1
          ;; are never both 0 during handoff and no reader can sneak in.
          (__atomic-fx-fetch-ior! cells 0 1 3)
          (when (fx= rw.writers-waiting 0)
            (__atomic-fx-fetch-and! cells 0 -3 2))
          (set! rw.writer (current-thread))
          (mutex-unlock! mx))
        (let (woke? #f)
          (unwind-protect
            (begin
              (mutex-unlock! mx wcv)
              (set! woke? #t))
            (unless woke?
              (mutex-lock! mx)
              (set! rw.writers-waiting (fx- rw.writers-waiting 1))
              (when (fx= rw.writers-waiting 0)
                (__atomic-fx-fetch-and! cells 0 -3 2)
                (unless rw.writer
                  (condition-variable-broadcast! rcv)))
              (mutex-unlock! mx)))
          (loop #t))))))

(def (rwlock-write-unlock! (rw : RWLock))
  (mutex-lock! rw.mx)
  (unless rw.writer
    (mutex-unlock! rw.mx)
    (raise-context-error rwlock-write-unlock! "rwlock is not write locked" rw))
  (set! rw.writer #f)
  (__atomic-fx-fetch-and! rw.cells 0 -2 2)
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
