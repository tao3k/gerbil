;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Native regressions for overlapping type predicates and contracts.
(import :std/test
        (only-in :gerbil/runtime/error contract-violation-error?)
        ./mixin-provider)
(export main)

;; Neither common subtype existed when the provider was compiled.
(defstruct (Both Mixin Base) () final: #t)
(defclass (ClassBoth Mixin Base) () final: #t)

(def (main)
  (def both (Both))
  (def class-both (ClassBoth))
  (def base (Base))
  (def mixin (Mixin))
  (def parent (Parent))
  (def child (Child))
  (def closed (Closed))
  (for-each
   (lambda (predicate)
     (check (predicate both) => #t)
     (check (predicate class-both) => #t)
     (for-each
      (lambda (value) (check (predicate value) => #f))
      [base mixin closed #f 42]))
   [mixin-then-base base-then-mixin pattern-mixin-base pattern-base-mixin])
  (for-each
   (lambda (predicate)
     (check (predicate parent) => #f)
     (check (predicate child) => #t)
     (check (predicate closed) => #f))
   [pattern-parent-child pattern-child-parent])
  (check (negative-parent child) => 'parent)
  (check (negative-parent parent) => 'parent)
  (check (negative-parent closed) => 'other)
  (check (negative-child child) => 'child)
  (check (negative-child parent) => 'parent)
  (check (negative-child closed) => 'other)
  (check (checked-from-mixin both) => both)
  (check-exception (checked-from-mixin mixin) contract-violation-error?)
  (for-each
   (lambda (wrap get-source)
     (check (get-source (wrap both)) => both)
     (check (get-source (wrap class-both)) => class-both)
     (check-exception (wrap mixin) contract-violation-error?)
     (check-exception (wrap base) contract-violation-error?))
   [wrap-source wrap-intersection]
   [Envelope-source IntersectionEnvelope-source])
  (check (final-disjoint closed) => #f)
  (check (struct-disjoint base) => #f)
  (check (struct-mixins-disjoint (BasedMixin)) => #f)
  (def effects 0)
  (check (effect-disjoint closed (lambda () (set! effects (1+ effects)))) => #f)
  (check effects => 1)
  (check (optional-real) => #f)
  (check (optional-real timeout: 2.5) => 2.5)
  (check (real-or-false #f) => #f)
  (check (real-or-false 'not-a-number) => #f)
  (check (real-or-false 2.5) => #t))
