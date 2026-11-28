;;; -*- Gerbil -*-
;;; © vyzo
;;; asynchronous completions
(import :std/error
        :gerbil/runtime/util)
(export Completion
        Completion?
        (rename: make-Completion make-completion)
        completion-ready?
        completion-wait!
        completion-post!
        completion-reset!
        completion-error!
        with-completion-error)

;; Atomic state protocol (ARM64 acquire/release safe, lock-free fast path):
;;   0 = pending, 1 = value posted, 2 = error posted
(defstruct Completion ((mx    :- :mutex)
                       (cv    :- :condvar)
                       (state :- :vector)
                       ready? val exn)
  final: #t
  constructor: :init!
  print: (ready?))

(defmethod {:init! Completion}
  (lambda (self (name 'completion)) ;; name is for debugging
    (set! self.mx (make-mutex name))
    (set! self.cv (make-condition-variable name))
    (set! self.state (vector 0))
    (set! self.ready? #f)))

(def (completion-ready? (c : Completion))
  => :boolean
  (fx> (:- (__atomic-fx-load c.state 0 1) :fixnum) 0))

(def (completion-reset! (c : Completion))
  (mutex-lock! c.mx)
  (__atomic-fx-store! c.state 0 0 2)
  (set! c.ready? #f)
  (set! c.val #f)
  (set! c.exn #f)
  (mutex-unlock! c.mx)
  (void))

(def (completion-wait! (c : Completion))
  ;; Lock-free acquire fast path when completion is already published.
  (let ((st (:- (__atomic-fx-load c.state 0 1) :fixnum)))
    (cond
     ((fx= st 1) c.val)
     ((fx= st 2) (raise c.exn))
     (else
      (let lp ()
        (mutex-lock! c.mx)
        (let ((s (:- (__atomic-fx-load c.state 0 1) :fixnum)))
          (cond
           ((fx= s 1)
            (let ((val c.val))
              (mutex-unlock! c.mx)
              val))
           ((fx= s 2)
            (let ((exn c.exn))
              (mutex-unlock! c.mx)
              (raise exn)))
           (else
            (mutex-unlock! c.mx c.cv)
            (lp)))))))))

(defrule (do-completion-post! compl val set-e state-code)
  (using (c compl :- Completion)
    (mutex-lock! c.mx)
    (if (fx> (:- (__atomic-fx-load c.state 0 1) :fixnum) 0)
      (begin
        (mutex-unlock! c.mx)
        (raise-context-error completion-post! "Completion has already been posted" c))
      (begin
        (set-e c val)
        (set! c.ready? #t)
        ;; Release store publishes val/exn before any lock-free reader sees state > 0.
        (__atomic-fx-store! c.state 0 state-code 2)
        (condition-variable-broadcast! c.cv)
        (mutex-unlock! c.mx)
        (void)))))

(def (completion-post! (compl : Completion) val)
  (do-completion-post! compl val &Completion-val-set! 1))

(def (completion-error! (compl : Completion) exn)
  (do-completion-post! compl exn &Completion-exn-set! 2))

(defrules with-completion-error ()
  ((_ compl expr rest ...)
   (try
    expr rest ...
    (catch (e)
      (completion-error! compl e)
      (raise e)))))
