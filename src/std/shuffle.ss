;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; shuffling

(export #t)

(def (shuffle (lst : :list) (rng default-random-source))
  => :list
  (vector->list
   (vector-shuffle!
    (list->vector lst)
    rng)))

(def (vector-shuffle (vec : :vector) (rng default-random-source))
  => :vector
  (vector-shuffle! (vector-copy vec) rng))

(def (vector-shuffle! (vec : :vector) (rng default-random-source))
  => :vector
  (def random-integer
    (random-source-make-integers rng))
  (let (len (vector-length vec))
    (do ((i 0 (##fx+ i 1)))
        ((##fx= i len) vec)
      (let* ((j (##fx+ i (random-integer (##fx- len i))))
             (iv (##vector-ref vec i)))
        (##vector-set! vec i (##vector-ref vec j))
        (##vector-set! vec j iv)))))
