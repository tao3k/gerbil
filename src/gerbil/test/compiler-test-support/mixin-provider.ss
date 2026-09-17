;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Compiled before the client introduces an overlapping subtype.
(export #t)

(defstruct Base ())
(defclass Mixin ())
(defclass Parent ())
(defclass (Child Parent) ())
(defclass Closed () final: #t)
(defstruct OtherBase ())
(defclass (BasedMixin Base) ())
(defclass (OtherBasedMixin OtherBase) ())

(def (mixin-then-base x) (and (Mixin? x) (Base? x)))
(def (base-then-mixin x) (and (Base? x) (Mixin? x)))
(def pattern-mixin-base (? (and Mixin? Base?)))
(def pattern-base-mixin (? (and Base? Mixin?)))
(def pattern-parent-child (? (and Parent? Child?)))
(def pattern-child-parent (? (and Child? Parent?)))

(def (negative-parent x)
  (match x
    ((? Parent?) 'parent)
    ((? Child?) 'impossible)
    (else 'other)))

(def (negative-child x)
  (match x
    ((? Child?) 'child)
    ((? Parent?) 'parent)
    (else 'other)))

(def (accept-base (x : Base)) x)
(def (checked-from-mixin (x : Mixin)) (accept-base x))

(defclass Envelope ((source :~ Mixin? : Base)) final: #t)
(defclass IntersectionEnvelope
  ((source :~ (? (and Mixin? Base?)) :- Base))
  final: #t)
(def (wrap-source (x : Mixin)) (Envelope source: x))
(def (wrap-intersection (x : Mixin)) (IntersectionEnvelope source: x))

(def (final-disjoint (x : Closed)) (Base? x))
(def (struct-disjoint (x : Base)) (OtherBase? x))
(def (struct-mixins-disjoint (x : BasedMixin)) (OtherBasedMixin? x))
(def (effect-disjoint (x : Closed) (effect : :procedure))
  (Base? (begin (effect) x)))

;; A predicate accepts arbitrary objects, including an optional argument's #f.
(def (optional-real timeout: (timeout :? :real := #f)) timeout)
(def (real-or-false x) (real? x))
