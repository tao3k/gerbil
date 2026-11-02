;;; -*- Gerbil -*-
;;; (C) fare
;;; Inner build file for std, as specially imported and called by ./build.ss for bootstrap reasons

(import "build-config" "make")
(include "build-spec.ss")

;; The enclosing stdlib stage owns frontend retirement. A nested process here
;; would leave build.ss and its imported expansion world resident during GCC.
(def (build separate-compiler: (separate-compiler #f) . args)
  (apply make (apply build-spec args)
    initialize-gambit-sharp: #t
    separate-compiler: separate-compiler
    args))
