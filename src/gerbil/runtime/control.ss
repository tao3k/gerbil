;;; -*- Gerbil -*-
;;; © vyzo
;;; Gambit control primitives
prelude: "../core"
package: gerbil/runtime
namespace: #f

(import "gambit" "util" "table")
(export #t)

;; Private sentinel for atomic-promise cells (never exposed to user code)
(def __atomic-promise-pending
  (list 'atomic-promise-pending))

;; Optional SRFI-226 continuation-barrier hook installed by :std/control.
;; Fast path checks Gambit's native per-thread ##thread-control-state slot
;; in a single load with zero allocation when no delimited control is active.
(def __continuation-barrier-hook #f)

(def (__set-continuation-barrier-hook! (proc :? :procedure))
  (set! __continuation-barrier-hook proc))

(def (__call-with-runtime-barrier (thunk : :procedure))
  (if (and __continuation-barrier-hook (##thread-control-state))
    (__continuation-barrier-hook thunk)
    (thunk)))

(def (make-promise (thunk : :procedure))
  => :promise
  (:- (##make-delay-promise thunk) :promise))

(def (make-atomic-promise (thunk : :procedure))
  => :promise
  (let ((mx (make-mutex 'promise))
        (cell (vector __atomic-promise-pending)))
    (make-promise
     (lambda ()
       (let ((cached (__atomic-slot-load cell 0 1)))
         (if (not (eq? cached __atomic-promise-pending))
           cached
           (let (once (vector 0))
             (dynamic-wind
                 (lambda ()
                   (declare (not interrupts-enabled))
                   (unless (##fx= (__atomic-fx-cas! once 0 0 1 3) 0)
                     (error "Cannot reenter atomic block"))
                   (mutex-lock! mx))
                 (lambda ()
                   (let ((v (__atomic-slot-load cell 0 1)))
                     (if (not (eq? v __atomic-promise-pending))
                       v
                       (let* ((raw (__call-with-runtime-barrier thunk))
                              (res (if (##promise? raw)
                                     (##force-out-of-line raw)
                                     raw)))
                         ;; Release-publish result with GC card + SATB barrier
                         ;; so weak-memory SMP readers see fully initialized object.
                         (__atomic-slot-exchange! cell 0 res 2)
                         (__atomic-fence! 3)
                         res))))
                 (cut mutex-unlock! mx)))))))))

(def* call-with-parameters
  (((thunk : :procedure)) (thunk))
  (((thunk : :procedure) param val)
   (##parameterize1 param val thunk))
  (((thunk : :procedure) param val . rest)
   (call-with-parameters
    (cut apply call-with-parameters thunk rest)
    param val)))

(def (with-unwind-protect (K : :procedure) (fini : :procedure))
  (let (once (vector 0))
    (dynamic-wind
        (lambda ()
          (declare (not interrupts-enabled))
          (unless (##fx= (__atomic-fx-cas! once 0 0 1 3) 0)
            (error "Cannot re-enter unwind protected block")))
        (cut __call-with-runtime-barrier K)
        fini)))

;; same as unwind-protect but it does not protect against
;; continuation escapes, only raised exceptions.
;; use with care, you must be certain that K does not escape.
;; Cleanup runs at most once; a cleanup exception supersedes a body exception.
(def (with-unwind-protect! (K : :procedure) (fini : :procedure))
  (let (unwinding #f)
    (let (E (current-exception-handler))
      (with-exception-handler
       (lambda (e)
         ;; Forward under E as well, so its exceptions cannot reenter us.
         (##with-exception-handler E
           (lambda ()
             (unless unwinding
               (set! unwinding #t)
               (fini))
             (E e))))
       (lambda ()
         (let (result (K))
           (unless unwinding
             (set! unwinding #t)
             (fini))
           result))))))

;; kwt: #f or a vector as a perfect hash-table for expected keywords
(def (keyword-dispatch kwt K . all-args)
  (when kwt
    (unless (vector? kwt)
      (error "keyword-dispatch: expected vector" kwt)))
  (unless (procedure? K)
    (error "keyword-dispatch: expected procedure" K))
  (let (keys (make-symbolic-table #f 0))
    (let lp ((rest all-args) (args #f) (tail #f))
      (match rest
        ([hd . hd-rest]
         (cond
          ((keyword? hd)
           (match hd-rest
             ([val . rest]
              (when kwt
                (let ((pos (##fxmodulo (##keyword-hash hd) (##vector-length kwt))))
                  (unless (eq? hd (##vector-ref kwt pos))
                    (error "Unexpected keyword argument" K hd))))
              (unless (eq? (symbolic-table-ref keys hd absent-value)
                           absent-value)
                (error "Duplicate keyword argument" K hd))
              (symbolic-table-set! keys hd val)
              (lp rest args tail))))
          ((eq? hd #!key)               ; keyword escape
           (match hd-rest
             ([val . rest]
              (if args
                (begin
                  (##set-cdr! tail hd-rest)
                  (lp rest args hd-rest))
                (lp rest hd-rest hd-rest)))))
          ((eq? hd #!rest)              ; end keyword processing
           (if args
             (begin
               (##set-cdr! tail hd-rest)
               (##apply K (cons keys args)))
             (##apply K (cons keys hd-rest))))
          (else                         ; plain argument
           (if args
             (begin
               (##set-cdr! tail rest)
               (lp hd-rest args rest))
             (lp hd-rest rest rest)))))
        (else
         (if args
           (begin
             (##set-cdr! tail [])
             (##apply K (cons keys args)))
           (K keys)))))))

(def (keyword-rest kwt . drop)
  (let (rest [])
    (raw-table-for-each
     kwt
     (lambda (k v)
       (unless (memq k drop)
         (set! rest (cons* k v rest)))))
    rest))
