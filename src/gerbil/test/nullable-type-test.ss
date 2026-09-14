;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Nullable optimizer metadata and branch refinement regressions.
(import :std/test :gerbil/compiler :gerbil/expander
        "compiler-test-support/nullable-dotted")
(export nullable-type-test)

(def nullable-type-test
  (test-suite "nullable optimizer types"
    (test-case "nullable dotted source contracts" (main))
    (test-case "nullable subtyping, normalization and joins"
      (gxc#optimizer-info-init!)
      (gxc#optimizer-load-builtin-ssxi (current-expander-context))
      (def (type name) (gxc#optimizer-resolve-class 'test name))
      (def integer (type 'fixnum::t))
      (def maybe (gxc#nullable-type integer))
      (check (gxc#!class? maybe) => #f)
      (check (gxc#!procedure? maybe) => #f)
      (check (gxc#!type-subtype? integer maybe) => #t)
      (check (gxc#!type-subtype? (type 'false::t) maybe) => #t)
      (check (gxc#!type-subtype? maybe integer) => #f)
      (check (gxc#!type-subtype? maybe (gxc#nullable-type (type 'number::t))) => #t)
      (check (eq? maybe (gxc#nullable-type maybe)) => #t)
      (check (gxc#nullable-type #f) => #f)
      (check (gxc#optimizer-type-expression
              (gxc#greatest-common-type 'test integer (type 'false::t)))
             => '(nullable fixnum::t))
      (check (gxc#!type-subtype? (gxc#nullable-type (type 'true::t)) (type 'boolean::t)) => #t)
      (check (gxc#optimizer-type-expression
              (gxc#greatest-common-type 'test integer #f)) => 't::t)
      (check (gxc#optimizer-type-expression
              (gxc#optimizer-resolve-type-expression 'test '(nullable (nullable fixnum::t))))
             => '(nullable fixnum::t))
      (check (gxc#map-type-expressions gxc#type-expression->datum
				       '((nullable fixnum::t) #f . (nullable string::t)))
             => '((nullable fixnum::t) #f . (nullable string::t)))
      (check (gxc#!signature-return
              (gxc#!procedure-signature
               (gxc#apply-basic-expression-type
                '(%#case-lambda (() (%#quote 1)) ((x) (%#ref unknown-result))))))
             => 't::t)
      (check (eq? integer (gxc#greatest-common-type 'test integer (gxc#make-!abort))) => #t))
    (test-case "nullable checked accessors require a stable truthy guard"
      (gxc#optimizer-info-init!)
      (gxc#optimizer-load-builtin-ssxi (current-expander-context))
      (parameterize ((gxc#current-compile-local-type (make-hash-table-eq))
                     (gxc#current-compile-mutators (make-hash-table-eq))
                     (gxc#current-compile-path-type []))
        (def klass (gxc#make-!class 'nullable-root [] '(field) #f #t #f #f #f))
        (gxc#optimizer-declare-class! 'nullable-root::t klass)
        (gxc#optimizer-declare-type! 'root (gxc#nullable-type klass) #t)
        (gxc#optimizer-declare-type! 'get-field
          (gxc#make-!accessor 'nullable-root::t 'field #t) #t)
        (check (syntax->datum
                (gxc#apply-optimize-call '(%#call (%#ref get-field) (%#ref root))))
               => '(%#struct-ref (%#ref nullable-root::t) (%#quote 1) (%#ref root)))
        (def guarded
          '(%#if (%#ref root)
                 (%#call (%#ref get-field) (%#ref root))
                 (%#quote #f)))
        (check (syntax->datum (gxc#apply-optimize-call guarded))
               => '(%#if (%#ref root)
                         (%#struct-unchecked-ref (%#ref nullable-root::t) (%#quote 1) (%#ref root))
                         (%#quote #f)))
        (hash-put! (gxc#current-compile-mutators) 'root #t)
        (check (syntax->datum (gxc#apply-optimize-call guarded))
               => '(%#if (%#ref root)
                         (%#struct-ref (%#ref nullable-root::t) (%#quote 1) (%#ref root))
                         (%#quote #f)))))
    (test-case "known predicates fold and unknown predicates refine"
      (gxc#optimizer-info-init!)
      (gxc#optimizer-load-builtin-ssxi (current-expander-context))
      (parameterize ((gxc#current-compile-local-type (make-hash-table-eq))
                     (gxc#current-compile-mutators (make-hash-table-eq))
                     (gxc#current-compile-path-type []))
        (def integer (gxc#optimizer-resolve-class 'test 'fixnum::t))
        (gxc#optimizer-declare-type! 'value integer #t)
        (gxc#optimizer-declare-type! 'pred (gxc#make-!predicate 'fixnum::t) #t)
        (gxc#optimizer-declare-type! 'primitive-pred (gxc#make-!primitive-predicate 'fixnum::t) #t)
        (check (syntax->datum (gxc#apply-optimize-call '(%#call (%#ref pred) (%#ref value))))
               => '(%#quote #t))
        (check (syntax->datum (gxc#apply-optimize-call '(%#call (%#ref primitive-pred) (%#ref value))))
               => '(%#quote #t))
        (check (syntax->datum
                (gxc#apply-optimize-call
                 '(%#if (%#call (%#ref pred) (%#ref unknown))
                        (%#call (%#ref primitive-pred) (%#ref unknown))
                        (%#quote #f))))
               => '(%#if (%#call-unchecked (%#ref class-instance?) (%#ref fixnum::t) (%#ref unknown))
                         (%#quote #t) (%#quote #f)))
        (gxc#optimizer-declare-type! 'value (gxc#nullable-type integer) #t)
        (check (syntax->datum
                (gxc#apply-optimize-call '(%#call (%#ref primitive-pred) (%#ref value))))
               => '(%#call (%#ref primitive-pred) (%#ref value)))
        (check (syntax->datum
                (gxc#apply-optimize-call
                 '(%#if (%#ref value)
                        (%#call (%#ref primitive-pred) (%#ref value))
                        (%#quote #f))))
               => '(%#if (%#ref value) (%#quote #t) (%#quote #f)))
        (check (syntax->datum
                (gxc#apply-optimize-call
                 '(%#call (%#ref primitive-pred)
                          (%#begin (%#call (%#ref effect)) (%#quote "not an integer")))))
               => '(%#begin (%#begin (%#call (%#ref effect)) (%#quote "not an integer"))
                            (%#quote #f)))
        (let-values (((yes no) (gxc#expression-path-types '(%#ref value))))
          (check (cdr (assq 'value yes)) => integer)
          (check (gxc#!type-id (cdr (assq 'value no))) => 'false))
        (let-values (((yes no)
                      (gxc#expression-path-types '(%#call (%#ref not) (%#ref value)))))
          (check (gxc#!type-id (cdr (assq 'value yes))) => 'false)
          (check (cdr (assq 'value no)) => integer))
        (check (gxc#current-compile-path-type) => [])
        (hash-put! (gxc#current-compile-mutators) 'value #t)
        (check (call-with-values
                   (lambda () (gxc#expression-path-types '(%#ref value))) list)
               => '(() ()))
        (check (call-with-values
                   (lambda () (gxc#expression-path-types '(%#call (%#ref pred) (%#ref value)))) list)
               => '(() ()))))))
