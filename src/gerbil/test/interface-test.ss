;;; -*- Gerbil -*-
;;; © vyzo
;;; interface unit-test
(import :std/test
        :std/interface
        (only-in :gerbil/runtime/error contract-violation-error?))
(export interface-test)

(defstruct X (x))
(defclass (Y X) (y)
  constructor: :init!)

(defmethod {:init! Y}
  (lambda (self x y: y)
    (set! (X-x self) x)
    (set! (@ self y) y)))

(interface A
  (a x))
(interface B
  (b x))
(interface (C A B)
  (c x))

(defmethod {a X}
  (lambda (self arg) (+ (X-x self) arg)))
(defmethod {b X}
  (lambda (self arg) (- (X-x self) arg)))
(defmethod {c X}
  (lambda (self arg) (* (X-x self) arg)))

(defmethod {a Y}
  (lambda (self arg)
    (* (+ (X-x self) arg) (Y-y self))))
(defmethod {b Y}
  (lambda (self arg)
    (* (- (X-x self) arg) (Y-y self))))
(defmethod {c Y}
  (lambda (self arg)
    (* (X-x self) (Y-y self) arg)))

(interface KeywordMethod
  (combine (a : :fixnum) (b : :fixnum)
           scale: (scale : :fixnum := 2))
  => :fixnum)

(defmethod {combine X}
  (lambda (self a b scale: scale)
    (fx* (fx+ a b) scale))
  interface: KeywordMethod)

(@implement KeywordMethod X)

(interface RestMethods
  (collect . args) => :list
  (prepend (first : :fixnum) . args) => :list)

(defmethod {collect X}
  (lambda (self . args) (cons (X-x self) args))
  interface: RestMethods)
(defmethod {prepend X}
  (lambda (self first . args) (cons first args))
  interface: RestMethods)
(@implement RestMethods X)

(definterface-extension-method RestMethods (extend self . args) => :list
  (apply RestMethods-collect self args))
(definterface-extension-method RestMethods (extend-from self (first : :fixnum) . args) => :list
  (cons first args))

(def interface-test
  (test-suite "test :std/interface"
    (test-case "nullable interface binding"
      (def evaluations 0)
      (def bodies 0)
      (for-each
        (lambda (value)
          (using (obj (begin (set! evaluations (+ evaluations 1)) value) :? A)
            (set! bodies (+ bodies 1))
            (check (if obj (obj.a 1) #f) => (and value 2))
            (check (not obj) => (not value))))
        (list #f (make-X 1) (A (make-X 1))))
      (check evaluations => 3)
      (check bodies => 3)
      (check (:? #f A) => #f)
      (check-exception (using (obj 42 :? A) obj) interface-cast-error?)
      (check-exception (using (obj #f :? A) (obj.?a 1)) contract-violation-error?))
    (test-case "typed method positional and keyword arguments"
      (using (obj (KeywordMethod (make-X 0)) : KeywordMethod)
        (check (obj.combine 3 4) => 14)
        (check (obj.combine 3 4 scale: 3) => 21)))

    (test-case "rest-only interface and extension methods"
      (using (obj (RestMethods (make-X 1)) : RestMethods)
        (check (obj.collect) => [1])
        (check (obj.collect 2 3) => [1 2 3])
        (check (RestMethods-collect obj) => [1])
        (check (&RestMethods-collect obj 2 3) => [1 2 3])
        (check (obj.extend) => [1])
        (check (obj.extend 2 3) => [1 2 3])
        (check (&RestMethods-extend obj 2 3) => [1 2 3])
        ;; A method used as a value must lift to its actual procedure.
        (for-each
         (lambda (proc)
           (check (proc obj) => [1])
           (check (apply proc obj [2 3]) => [1 2 3]))
         [RestMethods-collect &RestMethods-collect
          RestMethods-extend &RestMethods-extend])))

    (test-case "fixed arguments before rest retain their contracts"
      (using (obj (RestMethods (make-X 1)) : RestMethods)
        (check (obj.prepend 2) => [2])
        (check (obj.prepend 2 3 4) => [2 3 4])
        (check (obj.extend-from 2) => [2])
        (check (obj.extend-from 2 3 4) => [2 3 4])
        (check-exception (obj.prepend "bad") contract-violation-error?)
        (check-exception (obj.extend-from "bad") contract-violation-error?)
        (for-each
         (lambda (proc)
           (check (proc obj 2) => [2])
           (check (apply proc obj [2 3 4]) => [2 3 4]))
         [RestMethods-prepend &RestMethods-prepend
          RestMethods-extend-from &RestMethods-extend-from])
        (for-each
         (lambda (proc)
           (check-exception (proc obj "bad") contract-violation-error?))
         [RestMethods-prepend RestMethods-extend-from])))

    (test-case "test dispatch"
      (def x (make-X 1))
      (def y (make-Y 1 y: 2))

      (check (is-A? x) => #t)
      (check (is-B? x) => #t)
      (check (is-C? x) => #t)

      (check (A-a (A x) 1) => 2)
      (check (B-b (B x) 1) => 0)
      (check (C-a (C x) 1) => 2)
      (check (C-b (C x) 1) => 0)
      (check (C-c (C x) 1) => 1)

      (check (is-A? y) => #t)
      (check (is-B? y) => #t)
      (check (is-C? y) => #t)

      (check (A-a (A y) 1) => 4)
      (check (B-b (B y) 1) => 0)
      (check (C-a (C y) 1) => 4)
      (check (C-b (C y) 1) => 0)
      (check (C-c (C y) 1) => 2))

    (test-case "test conversions"
      (def x (make-X 1))
      (def y (make-Y 1 y: 2))

      (def xa (A x))
      (def xb (B x))
      (def xc (C x))

      (def ya (A y))
      (def yb (B y))
      (def yc (C y))

      (check (A? xa) => #t)
      (check (B? xa) => #f)
      (check (C? xa) => #f)

      (check (A? xb) => #f)
      (check (B? xb) => #t)
      (check (C? xb) => #f)

      (check (A? xc) => #f)
      (check (B? xc) => #f)
      (check (C? xc) => #t)

      (check (A? ya) => #t)
      (check (B? ya) => #f)
      (check (C? ya) => #f)

      (check (A? yb) => #f)
      (check (B? yb) => #t)
      (check (C? yb) => #f)

      (check (A? yc) => #f)
      (check (B? yc) => #f)
      (check (C? yc) => #t)

      (check (B-b (B xa) 1) => 0)
      (check (C-a (C xb) 1) => 2)
      (check (C-b (C xb) 1) => 0)
      (check (C-c (C xb) 1) => 1)
      (check (A-a (A xc) 1) => 2)

      (check (B-b (B ya) 1) => 0)
      (check (C-a (C yb) 1) => 4)
      (check (C-b (C yb) 1) => 0)
      (check (C-c (C yb) 1) => 2)
      (check (A-a (A yc) 1) => 4))))
