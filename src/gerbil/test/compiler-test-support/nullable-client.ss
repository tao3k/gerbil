;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Cross-module nullable signature consumer.
(import :std/test :std/interface :test/nullable-provider)
(def (forward-result flag) (required-api (nullable-result flag)))
(def (forward-argument (obj :? @NullableAPI)) (required-api obj))
(def (indirect proc obj) (proc obj))
(def (rejected? thunk)
  (with-catch interface-cast-error? (lambda () (thunk) #f)))
(def (main)
  (check (rejected? (lambda () (forward-result #f))) => #t)
  (check (rejected? (lambda () (forward-argument #f))) => #t)
  (check (rejected? (lambda () (indirect required-api (nullable-result #f)))) => #t)
  (check (nullable-identity #f) => #f)
  (check (guarded-api #f) => #f)
  (check (guarded-api (make-APIValue)) => 42)
  (check (guarded-api (nullable-result #t)) => 42))
