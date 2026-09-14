;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Maybe returns — source execution and syntax hygiene.
(import :std/test :gerbil/expander :gerbil/runtime/syntax
        "compiler-test-support/maybe-client")
(export maybe-test)

(def maybe-test
  (test-suite "Maybe return syntax and source contracts"
    (test-case "source contracts" (main))
    (test-case "invalid type expressions"
      (for-each
        (lambda (expr) (check-exception (core-expand expr) syntax-error?))
        '((Maybe :fixnum)
           Maybe
           (lambda () => Maybe #f)
          (lambda () => (Maybe) #f)
          (lambda () => (Maybe :fixnum :string) #f)
          (lambda () => (Maybe . :fixnum) #f)
          (lambda () => (Maybe MissingType) #f)
          (lambda () => (maybe :fixnum) #f)
          (lambda () => :? :fixnum #f)
          (let (Maybe identity) (lambda () => (Maybe :fixnum) #f))
          (let-syntax ((Maybe (syntax-rules () ((_ x) x))))
            (lambda () => (Maybe :fixnum) #f))
          (lambda ((x : (Maybe :fixnum))) x)
          (: #f (Maybe :fixnum))
          (interface BadMaybe (get) => (Maybe))
           (definline (bad-inline x) => (Maybe :fixnum :string) x)
           (begin
             (interface MaybeLeft (value) => (Maybe :fixnum))
             (interface MaybeRight (value) => :fixnum)
             (interface (MaybeConflict MaybeLeft MaybeRight))))))))
