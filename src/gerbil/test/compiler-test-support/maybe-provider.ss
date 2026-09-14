;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Maybe return producers — class, interface and builtin aliases.
(import :std/interface
        (rename-in (only-in :gerbil/core/contract Maybe) (Maybe Optional)))
(export #t)

(defclass Item ())
(interface View (value))
(defmethod {value Item} (lambda (self) 42))
(deftype @Item Item)
(deftype @View View)
(deftype @Integer :fixnum)
(deftype @Void :void)
(deftype @Any :t)

(def (item-result x) => (Maybe @Item) x)
(def (view-result (x : :t)) => (Optional (Maybe @View)) x)
(definline (inline-result (x : :t)) => (Maybe @View) x)
(def (integer-result x) => (Maybe @Integer) x)
(def (void-result x) => (Maybe @Void) x)
(def (any-result x) => (Maybe @Any) x)
(def (typed-item-result (x : :t)) => (Maybe (Maybe @Item)) x)
(def (optional-result (x #f : :t)) => (Maybe @View) x)
(def (keyword-result x: (x : :t := #f)) => (Maybe @View) x)
(definline (optional-inline (x #f : :t)) => (Maybe @View) x)
(definline (keyword-inline x: (x : :t := #f)) => (Maybe @View) x)
(def (overlap-result (x :? :string)) => (Maybe :fixnum) x)
(def (boolean-result (x : :boolean)) => (Maybe :fixnum) x)
(def (custom-reject (x :~ (lambda (v) #f) :? @Item)) => (Maybe @Item) x)
(def (ordinary-void x) => :void x)
(def (ordinary-item (x : @Item)) => @Item x)

(interface Results
  (item x) => (Maybe Item)
  (view x) => (Maybe View)
  (default (x #f)) => (Maybe View)
  (keyword x: (x #f)) => (Maybe View))
(defclass Factory ())
(defmethod {maybe Factory}
  (lambda (self x) => (Maybe @View) x))
(defmethod {item Factory} (lambda (self x) x))
(defmethod {view Factory} (lambda (self x) x))
(defmethod {default Factory} (lambda (self x) x))
(defmethod {keyword Factory}
  (lambda (self x: x) x)
  interface: Results)
(@implement Results Factory)

(definterface-extension-method Results (extension self x)
  => (Maybe @View)
  x)

;; Mixin return compatibility must resolve aliases and normalize nesting.
(interface Left (result x) => (Maybe @View))
(interface Right (result x) => (Maybe (Maybe View)))
(interface (Both Left Right))
