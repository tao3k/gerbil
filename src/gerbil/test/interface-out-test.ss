;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Interface exports, checked-only filtering, inheritance and re-exporting.
(import :std/test)
(export interface-out-test)

(module defaults
  (export (interface-out Public Empty Other Derived))
  (interface Public (value (x : :fixnum)) => :fixnum)
  (interface Empty)
  (interface Other (other) => :fixnum)
  (interface (Derived Public) (other) => :fixnum))

(module explicit
  (export (interface-out unchecked: #t Explicit))
  (interface Explicit (value (x : :fixnum)) => :fixnum))

(module checked
  (export (interface-out unchecked: #f Checked CheckedEmpty))
  (interface Checked (value (x : :fixnum)) => :fixnum)
  (interface CheckedEmpty))

(module reexports
  (import defaults)
  (export (interface-out Public Derived Empty)))

(import (prefix-in defaults default#)
        (prefix-in explicit explicit#)
        (prefix-in checked checked#)
        (prefix-in reexports reexport#))

(defstruct ExportedImpl (base))
(defmethod {value ExportedImpl}
  (lambda (self x) (fx+ (ExportedImpl-base self) x)))
(defmethod {other ExportedImpl}
  (lambda (self) (ExportedImpl-base self)))

;; Test actual imported bindings, including the absence of unchecked exports.
(defsyntax (imported? stx)
  (syntax-case stx ()
    ((_ id) (if (resolve-identifier #'id) #'#t #'#f))))

(def interface-out-test
  (test-suite "test interface-out"
    (test-case "default export includes interface metadata and both call paths"
      (def raw (ExportedImpl 10))
      (def obj (default#Public raw))
      (check (imported? default#Public::t) => #t)
      (check (imported? default#Public::interface) => #t)
      (check (default#Public? (default#make-Public raw)) => #t)
      (check (default#Public? (default#try-Public raw)) => #t)
      (check (default#is-Public? raw) => #t)
      (check (default#Public-value obj 2) => 12)
      (check (default#&Public-value obj 3) => 13)
      (check (default#::Public-value obj 4) => 14)
      (check (default#__Public-value obj 5) => 15))

    (test-case "explicit unchecked exports"
      (def obj (explicit#Explicit (ExportedImpl 10)))
      (check (explicit#Explicit-value obj 2) => 12)
      (check (explicit#&Explicit-value obj 3) => 13)
      (check (explicit#::Explicit-value obj 4) => 14)
      (check (explicit#__Explicit-value obj 5) => 15))

    (test-case "checked-only export omits unchecked macros and procedures"
      (def raw (ExportedImpl 10))
      (def obj (checked#Checked raw))
      (check (imported? checked#Checked::t) => #t)
      (check (imported? checked#Checked::interface) => #t)
      (check (checked#Checked? (checked#make-Checked raw)) => #t)
      (check (checked#Checked? (checked#try-Checked raw)) => #t)
      (check (checked#is-Checked? raw) => #t)
      (check (checked#Checked-value obj 2) => 12)
      (check (checked#::Checked-value obj 3) => 13)
      (check (imported? checked#&Checked-value) => #f)
      (check (imported? checked#__Checked-value) => #f))

    (test-case "multiple interfaces, empty interfaces and inherited methods"
      (def raw (ExportedImpl 10))
      (check (default#Empty? (default#Empty raw)) => #t)
      (check (checked#CheckedEmpty? (checked#CheckedEmpty raw)) => #t)
      (check (default#Other-other (default#Other raw)) => 10)
      (def obj (default#Derived raw))
      (check (default#Derived-value obj 2) => 12)
      (check (default#&Derived-value obj 3) => 13)
      (check (default#::Derived-value obj 4) => 14)
      (check (default#__Derived-value obj 5) => 15)
      (check (default#Derived-other obj) => 10))

    (test-case "imported interfaces can be re-exported"
      (def raw (ExportedImpl 10))
      (def obj (reexport#Public raw))
      (check (reexport#Public-value obj 2) => 12)
      (check (reexport#&Public-value obj 3) => 13)
      (check (reexport#::Public-value obj 4) => 14)
      (check (reexport#__Public-value obj 5) => 15)
      (check (reexport#Empty? (reexport#Empty raw)) => #t)
      (check (reexport#Derived-value (reexport#Derived raw) 6) => 16))))
