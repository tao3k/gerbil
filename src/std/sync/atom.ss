;;; -*- Gerbil -*-
;;; © fare, vyzo
;;; Atoms in the style of clojure: shared, synchronous, independent state

;; NB: Compared to the Clojure atom API, we:
;; - Do not support the meta field and the functions alter-meta! reset-meta!
;; - Replace swap-vals! and reset-vals! by swap-values! and reset-values!
;;   returning values rather than vectors.
;; - Rename add-watch and remove-watch to add-watch! and remove-watch!
;; - Do not have generic functions that work on multiple kinds of "references"
;;   but only one set of functions for atoms.
;; - Also export atom-increment! and atomic-counter for the common case.

(import :std/error
        :gerbil/runtime/util)

(export atom
        atom-deref
        (rename: Atom? atom?)
        (rename: swap! atom-swap!)
        (rename: swap-values! atom-swap-values!)
        (rename: reset! atom-reset!)
        (rename: reset-values! atom-reset-values!)
        (rename: compare-and-set! atom-compare-and-set!)
        atom-validator
        atom-validator-set!
        (rename: add-watch! atom-add-watch!)
        (rename: remove-watch! atom-remove-watch!)
        atom-increment!
        (struct-out AtomicCounter)
        atomic-counter-ref
        atomic-counter-set!
        increment-atomic-counter!
        increment-atomic-counter-by-1!)

;; Inline atomic struct layout (zero extra box vector per atom):
;;   slot 1 = mutex (slow path only when validator or watchers are installed)
;;   slot 2 = val (C23 atomic slot via __atomic-struct-ref/set!/cas!)
;;   slot 3 = validator (atomic acquire/release visibility)
;;   slot 4 = watchers (hash table, mutated under mutex)
;;   slot 5 = has-watchers? (0 = lock-free fast path eligible, 1 = mutex+notify)
(defstruct Atom
  (mutex val validator watchers (has-watchers? :- :fixnum))
  final: #t)

(def (atom (initial-value (void)) validator: (validator #f))
  (Atom (make-mutex 'atom) initial-value validator (hash) 0))

;; Lock-free SRFI-230 acquire load ensures weak-memory SMP (ARM64) visibility
;; of objects published by swap!/reset!/compare-and-set!.
(def (atom-deref (a : Atom))
  (__atomic-struct-ref a 2 1))

(defrule (&deref a)
  (__atomic-struct-ref a 2 1))

(def (atom-validator (a : Atom))
  (__atomic-struct-ref a 3 1))

(def (atom-validator-set! (a : Atom) v)
  (__atomic-struct-set! a 3 v 2)
  (void))

(defrule (%atom-lock-free? a)
  (and (##not (__atomic-struct-ref a 3 1))
       (##fx= (:- (__atomic-struct-ref a 5 1) :fixnum) 0)))

;; Internal helper to ensure atomicity on validator/watcher slow path
(defrule (with-atom-lock a body ...)
  (with-lock (&Atom-mutex a) (lambda () body ...)))

;; Internal helper to be called inside with-atom-lock
(def (update-atom! a new-val (values? #t))
  (let ((validator (__atomic-struct-ref a 3 1)))
    (when validator
      (unless (validator new-val)
        (raise-bad-argument update-atom! "valid atom value" new-val)))
    (let ((old-val (__atomic-struct-set! a 2 new-val 2)))
      (when (##fx> (:- (__atomic-struct-ref a 5 1) :fixnum) 0)
        (hash-for-each (lambda (key watch) (watch key a old-val new-val))
                       (&Atom-watchers a)))
      (if values?
        (values old-val new-val)
        new-val))))

;; analog to Clojure swap-values!, but returning (values old-val new-val) rather than [old-val new-val]
(def* swap-values!
  ((a f)
   (let ((a (:- a Atom)))
     (let loop ()
       (if (%atom-lock-free? a)
         (let* ((old (__atomic-struct-ref a 2 1))
                (new (f old)))
           (if (and (%atom-lock-free? a)
                    (##eq? (__atomic-struct-cas! a 2 old new 3) old))
             (values old new)
             (begin (__cpu-relax!) (loop))))
         (with-atom-lock a (update-atom! a (f (&deref a))))))))
  ((a f val)
   (let ((a (:- a Atom)))
     (let loop ()
       (if (%atom-lock-free? a)
         (let* ((old (__atomic-struct-ref a 2 1))
                (new (f old val)))
           (if (and (%atom-lock-free? a)
                    (##eq? (__atomic-struct-cas! a 2 old new 3) old))
             (values old new)
             (begin (__cpu-relax!) (loop))))
         (with-atom-lock a (update-atom! a (f (&deref a) val)))))))
  ((a f val . rest)
   (let ((a (:- a Atom)))
     (let loop ()
       (if (%atom-lock-free? a)
         (let* ((old (__atomic-struct-ref a 2 1))
                (new (apply f old val rest)))
           (if (and (%atom-lock-free? a)
                    (##eq? (__atomic-struct-cas! a 2 old new 3) old))
             (values old new)
             (begin (__cpu-relax!) (loop))))
         (with-atom-lock a (update-atom! a (apply f (&deref a) val rest))))))))

(def* swap-value!
  ((a f)
   (let ((a (:- a Atom)))
     (let loop ()
       (if (%atom-lock-free? a)
         (let* ((old (__atomic-struct-ref a 2 1))
                (new (f old)))
           (if (and (%atom-lock-free? a)
                    (##eq? (__atomic-struct-cas! a 2 old new 3) old))
             new
             (begin (__cpu-relax!) (loop))))
         (with-atom-lock a (update-atom! a (f (&deref a)) #f))))))
  ((a f val)
   (let ((a (:- a Atom)))
     (let loop ()
       (if (%atom-lock-free? a)
         (let* ((old (__atomic-struct-ref a 2 1))
                (new (f old val)))
           (if (and (%atom-lock-free? a)
                    (##eq? (__atomic-struct-cas! a 2 old new 3) old))
             new
             (begin (__cpu-relax!) (loop))))
         (with-atom-lock a (update-atom! a (f (&deref a) val) #f))))))
  ((a f val . rest)
   (let ((a (:- a Atom)))
     (let loop ()
       (if (%atom-lock-free? a)
         (let* ((old (__atomic-struct-ref a 2 1))
                (new (apply f old val rest)))
           (if (and (%atom-lock-free? a)
                    (##eq? (__atomic-struct-cas! a 2 old new 3) old))
             new
             (begin (__cpu-relax!) (loop))))
         (with-atom-lock a (update-atom! a (apply f (&deref a) val rest) #f)))))))

;; same as Clojure swap!
(def* swap!
  ((a f)
   (swap-value! a f))
  ((a f val)
   (swap-value! a f val))
  ((a f val . rest)
   (apply swap-value! a f rest)))

;; analog to Clojure reset-values!, but returning (values old-val new-val) rather than [old-val new-val]
(def (reset-values! a new-val)
  (let ((a (:- a Atom)))
    (if (%atom-lock-free? a)
      (let ((old (__atomic-struct-set! a 2 new-val 2)))
        (values old new-val))
      (with-atom-lock a (update-atom! a new-val)))))

;; same as Clojure reset!
(def (reset! a new-val)
  (let ((a (:- a Atom)))
    (if (%atom-lock-free? a)
      (begin
        (__atomic-struct-set! a 2 new-val 2)
        new-val)
      (with-atom-lock a (update-atom! a new-val #f)))))

;; same as Clojure compare-and-set!
(def (compare-and-set! a old-val new-val)
  (let ((a (:- a Atom)))
    (if (%atom-lock-free? a)
      (##eq? (__atomic-struct-cas! a 2 old-val new-val 3) old-val)
      (with-atom-lock a
        (and (eq? (&deref a) old-val)
             (update-atom! a new-val #f)
             #t)))))

;; same as Clojure add-watch
(def (add-watch! a key fn)
  (let ((a (:- a Atom)))
    (with-atom-lock a
      (hash-put! (&Atom-watchers a) key fn)
      (__atomic-struct-set! a 5 1 2))))

;; same as Clojure remove-watch
(def (remove-watch! a key)
  (let ((a (:- a Atom)))
    (with-atom-lock a
      (let ((ws (&Atom-watchers a)))
        (hash-remove! ws key)
        (when (##fx= (hash-length ws) 0)
          (__atomic-struct-set! a 5 0 2))))))

(def (atom-increment! a (increment 1))
  (let ((a (:- a Atom)))
    (let loop ()
      (if (%atom-lock-free? a)
        (let* ((old (__atomic-struct-ref a 2 1))
               (new (+ old increment)))
          (if (and (%atom-lock-free? a)
                   (##eq? (__atomic-struct-cas! a 2 old new 3) old))
            new
            (begin (__cpu-relax!) (loop))))
        (swap! a + increment)))))

(defstruct AtomicCounter (v) final: #t constructor: :init!)
(defmethod {:init! AtomicCounter}
  (lambda (self (initial-value : :fixnum := 0))
    (struct-instance-init! self (vector initial-value))))

(def (atomic-counter-ref (counter : AtomicCounter)) => :fixnum
  (:- (__atomic-fx-load (AtomicCounter-v counter) 0 1) :fixnum))

(def (atomic-counter-set! (counter : AtomicCounter) (val : :fixnum)) => :void
  (__atomic-fx-store! (AtomicCounter-v counter) 0 val 2)
  (void))

;; Single-instruction hardware atomic fetch-add (ldaddal / lock xadd) via C23 SRFI-230.
(def (increment-atomic-counter! (counter : AtomicCounter) (increment : :fixnum := 1)) => :fixnum
  (:- (__atomic-fx-fetch-add! (AtomicCounter-v counter) 0 increment 3) :fixnum))

(def (increment-atomic-counter-by-1! (counter : AtomicCounter)) => :fixnum
  (:- (__atomic-fx-fetch-add! (AtomicCounter-v counter) 0 1 3) :fixnum))
