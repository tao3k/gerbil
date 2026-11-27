;;; -*- Gerbil -*-
;;; © vyzo
;;; asynchronous completions
(import :std/error)
(export Completion
        Completion?
        (rename: make-Completion make-completion)
        (rename: Completion-ready? completion-ready?)
        completion-wait!
        completion-post!
        completion-reset!
        completion-error!
        with-completion-error)

(defstruct Completion ((mx :- :mutex)
                       (cv :- :condvar)
                       ready? val exn)
  final: #t
  constructor: :init!
  print: (ready?))

(defmethod {:init! Completion}
  (lambda (self (name 'completion)) ;; name is for debugging
    (set! self.mx (make-mutex name))
    (set! self.cv (make-condition-variable name))))

(def (completion-reset! (c : Completion))
  (mutex-lock! c.mx)
  (set! c.ready? #f)
  (set! c.val #f)
  (set! c.exn #f)
  (mutex-unlock! c.mx)
  (void))

(def (completion-wait! (c : Completion))
  (let lp ()
    (mutex-lock! c.mx)
    (if c.ready?
      (let ((exn c.exn)
            (val c.val))
        (mutex-unlock! c.mx)
        (if exn (raise exn) val))
      (begin
        (mutex-unlock! c.mx c.cv)
        (lp)))))

(defrule (do-completion-post! compl val set-e)
  (using (c compl :- Completion)
    (mutex-lock! c.mx)
    (if c.ready?
      (begin
        (mutex-unlock! c.mx)
        (raise-context-error completion-post! "Completion has already been posted" c))
      (begin
        (set-e c val)
        (set! c.ready? #t)
        (condition-variable-broadcast! c.cv)
        (mutex-unlock! c.mx)
        (void)))))

(def (completion-post! (compl : Completion) val)
  (do-completion-post! compl val &Completion-val-set!))

(def (completion-error! (compl : Completion) exn)
  (do-completion-post! compl exn &Completion-exn-set!))

(defrules with-completion-error ()
  ((_ compl expr rest ...)
   (try
    expr rest ...
    (catch (e)
      (completion-error! compl e)
      (raise e)))))
