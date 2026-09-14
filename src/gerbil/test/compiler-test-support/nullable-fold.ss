;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Predicate and cast folding in live compiled bodies.
(import :std/test :std/interface
        (only-in :gerbil/runtime/error contract-violation-error?))
(export #t)

(defclass Item ())
(interface View (value))
(defmethod {value Item} (lambda (self) 42))

(def (class-known (x : Item)) (list (Item? x) (: x Item)))
(def (class-truth (x :? Item))
  (if x (list (Item? x) (: x Item)) #f))
(def (class-predicate (x :? Item))
  (if (Item? x) (list (Item? x) (: x Item)) #f))
(def (class-open-predicate (x :? Item)) (Item? x))
(def (class-open-cast (x :? Item)) (: x Item))

;; View? tests the view type, not whether a raw object implements its methods.
(def (view-known (x : View)) (list (View? x) (View x)))
(def (view-truth (x :? View))
  (if x (list (View? x) (View x)) #f))
(def (view-predicate (x :? View))
  (if (View? x) (list (View? x) (View x)) #f))
(def (view-open-predicate (x :? View)) (View? x))
(def (view-open-cast (x :? View)) (View x))
(def (view-convert (x : Item)) (View x))

(def (main)
  (def item (make-Item))
  (def view (View item))
  (for-each
    (lambda (proc) (check (proc item) => (list #t item)))
    (list class-known class-truth class-predicate))
  (for-each
    (lambda (proc) (check (proc view) => (list #t view)))
    (list view-known view-truth view-predicate))
  (for-each
    (lambda (proc) (check (proc #f) => #f))
    (list class-truth class-predicate class-open-predicate
          view-truth view-predicate view-open-predicate))
  (check (class-open-predicate item) => #t)
  (check (view-open-predicate view) => #t)
  (for-each
    (lambda (proc value rejected?)
      (check (proc value) => value)
      (check-exception (proc #f) rejected?))
    (list class-open-cast view-open-cast)
    (list item view)
    (list contract-violation-error? interface-cast-error?))
  (for-each
    (lambda (proc)
      (check (View? (proc item)) => #t)
      (check (View-value (proc item)) => 42))
    (list view-convert)))
