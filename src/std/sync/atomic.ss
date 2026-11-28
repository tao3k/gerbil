;;; -*- Gerbil -*-
;;; © Gerbil Contributors
;;; SRFI-230 Atomic Operations backed directly by Gambit modern-c C23
;;; GC-barriered (generational card + Yuasa SATB) atomic primitives.

(import :std/error
        :gerbil/runtime/util)
(export
  memory-order
  memory-order?
  AtomicFlag
  make-atomic-flag
  atomic-flag?
  atomic-flag-test-and-set!
  atomic-flag-clear!
  AtomicBox
  make-atomic-box
  atomic-box?
  atomic-box-ref
  atomic-box-set!
  atomic-box-swap!
  atomic-box-compare-and-swap!
  AtomicFxBox
  make-atomic-fxbox
  atomic-fxbox?
  atomic-fxbox-ref
  atomic-fxbox-set!
  atomic-fxbox-swap!
  atomic-fxbox-compare-and-swap!
  atomic-fxbox-fetch-add!
  atomic-fxbox-fetch-sub!
  atomic-fxbox-fetch-and!
  atomic-fxbox-fetch-ior!
  atomic-fxbox-fetch-xor!
  atomic-fxbox+/fetch!
  atomic-fxbox-/fetch!
  atomic-fxbox-and/fetch!
  atomic-fxbox-ior/fetch!
  atomic-fxbox-xor/fetch!
  AtomicPair
  make-atomic-pair
  atomic-pair?
  atomic-pair-ref
  atomic-pair-set!
  atomic-pair-swap!
  atomic-pair-compare-and-swap!
  atomic-fence
  vector-atomic-ref
  vector-atomic-set!
  vector-atomic-swap!
  vector-atomic-cas!)

;;; Memory Order Protocol (SRFI-230)
;;;   0 = relaxed
;;;   1 = acquire
;;;   2 = release
;;;   3 = acquire-release
;;;   4 = sequentially-consistent

(defsyntax (memory-order stx)
  (syntax-case stx ()
    ((_ sym)
     (let ((s (stx-e #'sym)))
       (if (memq s '(relaxed acquire release acquire-release sequentially-consistent))
         #''sym
         (raise-syntax-error #f "invalid SRFI-230 memory-order" stx #'sym))))))

(def (memory-order? obj)
  => :boolean
  (or (eq? obj 'relaxed)
      (eq? obj 'acquire)
      (eq? obj 'release)
      (eq? obj 'acquire-release)
      (eq? obj 'sequentially-consistent)))

(defrule (order->code order-expr where)
  (let ((__ord order-expr))
    (cond
     ((eq? __ord 'sequentially-consistent) 4)
     ((eq? __ord 'acquire) 1)
     ((eq? __ord 'release) 2)
     ((eq? __ord 'acquire-release) 3)
     ((eq? __ord 'relaxed) 0)
     (else (raise-bad-argument where "SRFI-230 memory-order" __ord)))))

;;; Disjoint SRFI-230 Atomic Struct Types

(defstruct AtomicFlag ((cell :- :vector)) final: #t)
(defstruct AtomicBox ((cell :- :vector)) final: #t)
(defstruct AtomicFxBox ((cell :- :vector)) final: #t)
(defstruct AtomicPair ((cell :- :vector)) final: #t)

;;; Atomic Flags

(def (make-atomic-flag)
  => AtomicFlag
  (AtomicFlag (vector 0)))

(defalias atomic-flag? AtomicFlag?)

(def (atomic-flag-test-and-set! (flag : AtomicFlag)
                                (order : :t := 'sequentially-consistent))
  => :boolean
  (not (##fx= (__atomic-fx-exchange! flag.cell 0 1
                                     (order->code order atomic-flag-test-and-set!))
              0)))

(def (atomic-flag-clear! (flag : AtomicFlag)
                         (order : :t := 'sequentially-consistent))
  => :void
  (__atomic-fx-store! flag.cell 0 0
                      (order->code order atomic-flag-clear!))
  (void))

;;; Atomic Boxes (GC-barriered: Generational Card + Yuasa SATB via Exchange/CAS)

(def (make-atomic-box obj)
  => AtomicBox
  (AtomicBox (vector obj)))

(defalias atomic-box? AtomicBox?)

(def (atomic-box-ref (box : AtomicBox)
                     (order : :t := 'sequentially-consistent))
  (__atomic-slot-load box.cell 0 (order->code order atomic-box-ref)))

(def (atomic-box-set! (box : AtomicBox)
                      obj
                      (order : :t := 'sequentially-consistent))
  => :void
  (__atomic-slot-exchange! box.cell 0 obj (order->code order atomic-box-set!))
  (void))

(def (atomic-box-swap! (box : AtomicBox)
                       obj
                       (order : :t := 'sequentially-consistent))
  (__atomic-slot-exchange! box.cell 0 obj (order->code order atomic-box-swap!)))

(def (atomic-box-compare-and-swap! (box : AtomicBox)
                                   expected
                                   desired
                                   (order : :t := 'sequentially-consistent))
  (__atomic-slot-cas! box.cell 0 expected desired
                      (order->code order atomic-box-compare-and-swap!)))

;;; Atomic Fixnum Boxes (Zero-Barrier Hardware Atomic RMW)

(def (make-atomic-fxbox (fx : :fixnum))
  => AtomicFxBox
  (AtomicFxBox (vector fx)))

(defalias atomic-fxbox? AtomicFxBox?)

(def (atomic-fxbox-ref (fxbox : AtomicFxBox)
                       (order : :t := 'sequentially-consistent))
  => :fixnum
  (:- (__atomic-fx-load fxbox.cell 0 (order->code order atomic-fxbox-ref)) :fixnum))

(def (atomic-fxbox-set! (fxbox : AtomicFxBox)
                        (fx : :fixnum)
                        (order : :t := 'sequentially-consistent))
  => :void
  (__atomic-fx-store! fxbox.cell 0 fx (order->code order atomic-fxbox-set!))
  (void))

(def (atomic-fxbox-swap! (fxbox : AtomicFxBox)
                         (fx : :fixnum)
                         (order : :t := 'sequentially-consistent))
  => :fixnum
  (:- (__atomic-fx-exchange! fxbox.cell 0 fx (order->code order atomic-fxbox-swap!)) :fixnum))

(def (atomic-fxbox-compare-and-swap! (fxbox : AtomicFxBox)
                                     (expected : :fixnum)
                                     (desired : :fixnum)
                                     (order : :t := 'sequentially-consistent))
  => :fixnum
  (:- (__atomic-fx-cas! fxbox.cell 0 expected desired
                        (order->code order atomic-fxbox-compare-and-swap!)) :fixnum))

(def (atomic-fxbox-fetch-add! (fxbox : AtomicFxBox)
                              (fx : :fixnum)
                              (order : :t := 'sequentially-consistent))
  => :fixnum
  (:- (__atomic-fx-fetch-add! fxbox.cell 0 fx (order->code order atomic-fxbox-fetch-add!)) :fixnum))

(def (atomic-fxbox-fetch-sub! (fxbox : AtomicFxBox)
                              (fx : :fixnum)
                              (order : :t := 'sequentially-consistent))
  => :fixnum
  (:- (__atomic-fx-fetch-sub! fxbox.cell 0 fx (order->code order atomic-fxbox-fetch-sub!)) :fixnum))

(def (atomic-fxbox-fetch-and! (fxbox : AtomicFxBox)
                              (fx : :fixnum)
                              (order : :t := 'sequentially-consistent))
  => :fixnum
  (:- (__atomic-fx-fetch-and! fxbox.cell 0 fx (order->code order atomic-fxbox-fetch-and!)) :fixnum))

(def (atomic-fxbox-fetch-ior! (fxbox : AtomicFxBox)
                              (fx : :fixnum)
                              (order : :t := 'sequentially-consistent))
  => :fixnum
  (:- (__atomic-fx-fetch-ior! fxbox.cell 0 fx (order->code order atomic-fxbox-fetch-ior!)) :fixnum))

(def (atomic-fxbox-fetch-xor! (fxbox : AtomicFxBox)
                              (fx : :fixnum)
                              (order : :t := 'sequentially-consistent))
  => :fixnum
  (:- (__atomic-fx-fetch-xor! fxbox.cell 0 fx (order->code order atomic-fxbox-fetch-xor!)) :fixnum))

(defalias atomic-fxbox+/fetch! atomic-fxbox-fetch-add!)
(defalias atomic-fxbox-/fetch! atomic-fxbox-fetch-sub!)
(defalias atomic-fxbox-and/fetch! atomic-fxbox-fetch-and!)
(defalias atomic-fxbox-ior/fetch! atomic-fxbox-fetch-ior!)
(defalias atomic-fxbox-xor/fetch! atomic-fxbox-fetch-xor!)

;;; Atomic Pairs (Zero-Tear Immutable Cons-Cell Replacement)

(def (make-atomic-pair car-val cdr-val)
  => AtomicPair
  (AtomicPair (vector (cons car-val cdr-val))))

(defalias atomic-pair? AtomicPair?)

(def (atomic-pair-ref (apair : AtomicPair)
                      (order : :t := 'sequentially-consistent))
  (let ((p (__atomic-slot-load apair.cell 0 (order->code order atomic-pair-ref))))
    (values (##car p) (##cdr p))))

(def (atomic-pair-set! (apair : AtomicPair)
                       car-val
                       cdr-val
                       (order : :t := 'sequentially-consistent))
  => :void
  (__atomic-slot-exchange! apair.cell 0 (cons car-val cdr-val)
                           (order->code order atomic-pair-set!))
  (void))

(def (atomic-pair-swap! (apair : AtomicPair)
                        car-val
                        cdr-val
                        (order : :t := 'sequentially-consistent))
  (let ((old (__atomic-slot-exchange! apair.cell 0 (cons car-val cdr-val)
                                      (order->code order atomic-pair-swap!))))
    (values (##car old) (##cdr old))))

(def (atomic-pair-compare-and-swap! (apair : AtomicPair)
                                    exp-car
                                    exp-cdr
                                    des-car
                                    des-cdr
                                    (order : :t := 'sequentially-consistent))
  (let ((cell apair.cell)
        (code (order->code order atomic-pair-compare-and-swap!))
        (desired (cons des-car des-cdr)))
    (let loop ((cur (__atomic-slot-load cell 0 code)))
      (let ((c-car (##car cur))
            (c-cdr (##cdr cur)))
        (if (and (eq? c-car exp-car) (eq? c-cdr exp-cdr))
          (let ((prev (__atomic-slot-cas! cell 0 cur desired code)))
            (if (eq? prev cur)
              (values c-car c-cdr)
              (loop prev)))
          (values c-car c-cdr))))))

;;; Memory Fence & GC-Barriered Atomic Vector Slot Operations

(def (atomic-fence (order : :t := 'sequentially-consistent))
  => :void
  (__atomic-fence! (order->code order atomic-fence))
  (void))

(def (vector-atomic-ref (vec : :vector)
                        (idx : :fixnum)
                        (order : :t := 'sequentially-consistent))
  (unless (and (fx>= idx 0) (fx< idx (vector-length vec)))
    (raise-bad-argument vector-atomic-ref "vector index in range" idx))
  (__atomic-slot-load vec idx (order->code order vector-atomic-ref)))

(def (vector-atomic-set! (vec : :vector)
                         (idx : :fixnum)
                         val
                         (order : :t := 'sequentially-consistent))
  => :void
  (unless (and (fx>= idx 0) (fx< idx (vector-length vec)))
    (raise-bad-argument vector-atomic-set! "vector index in range" idx))
  (__atomic-slot-exchange! vec idx val (order->code order vector-atomic-set!))
  (void))

(def (vector-atomic-swap! (vec : :vector)
                          (idx : :fixnum)
                          val
                          (order : :t := 'sequentially-consistent))
  (unless (and (fx>= idx 0) (fx< idx (vector-length vec)))
    (raise-bad-argument vector-atomic-swap! "vector index in range" idx))
  (__atomic-slot-exchange! vec idx val (order->code order vector-atomic-swap!)))

(def (vector-atomic-cas! (vec : :vector)
                         (idx : :fixnum)
                         expected
                         desired
                         (order : :t := 'sequentially-consistent))
  (unless (and (fx>= idx 0) (fx< idx (vector-length vec)))
    (raise-bad-argument vector-atomic-cas! "vector index in range" idx))
  (__atomic-slot-cas! vec idx expected desired (order->code order vector-atomic-cas!)))
