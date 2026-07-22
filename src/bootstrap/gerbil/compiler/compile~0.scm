(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1784758126)
  (begin
    (define gxc#gambit-annotations
      '(not gambit-scheme
            ieee-scheme
            r4rs-scheme
            r5rs-scheme
            block
            separate
            core
            inline
            inline-primitives
            inlining-limit
            constant-fold
            lambda-lift
            standard-bindings
            extended-bindings
            run-time-bindings
            safe
            interrupts-enabled
            poll-on-return
            proper-tail-calls
            generative-lambda
            optimize-dead-local-variables
            optimize-dead-definitions
            generic
            fixnum
            flonum
            mostly-fixnum
            mostly-flonum
            mostly-fixnum-flonum
            debug
            debug-location
            debug-source
            debug-environments))
    (define gxc#checked-primitives
      '(##direct-structure-ref
        ##direct-structure-set!
        ##structure-ref
        ##structure-set!))
    (define gxc#::collect-bindings::t
      (let ((__tmp215941 (list gxc#::void::t))
            (__tmp215940 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp215941
         '()
         __tmp215940
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args214555%_
        (apply make-instance gxc#::collect-bindings::t _%$args214555%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp215942
             (lambda ()
               (force gxc#::void-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-bindings::t
                  '%#begin
                  gxc#apply-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-bindings::t
                  '%#begin-syntax
                  gxc#apply-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-bindings::t
                  '%#module
                  gxc#apply-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-bindings::t
                  '%#define-values
                  gxc#collect-bindings-define-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-bindings::t
                  '%#define-syntax
                  gxc#collect-bindings-define-syntax%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::collect-bindings::t)))))
        (declare (not safe))
        (__make-atomic-promise __tmp215942)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx214547%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self214550%_
                (let ((__obj215916
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj215916))
               (__tmp215943
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self214550%_ _%stx214547%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp215943
           gxc#current-compile-method
           _%self214550%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp215945 (list gxc#::void::t))
            (__tmp215944 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp215945
         '(modules)
         __tmp215944
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args214544%_
        (apply make-instance gxc#::lift-modules::t _%$args214544%_)))
    (define gxc#::lift-modules-modules
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::lift-modules::t 'modules)))
    (define gxc#::lift-modules-modules-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::lift-modules::t 'modules)))
    (define gxc#&::lift-modules-modules
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#::lift-modules::t 'modules)))
    (define gxc#&::lift-modules-modules-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#::lift-modules::t 'modules)))
    (define gxc#::lift-modules-bind-methods!
      (let ((__tmp215946
             (lambda ()
               (force gxc#::void-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::lift-modules::t
                  '%#begin
                  gxc#apply-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::lift-modules::t
                  '%#module
                  gxc#lift-modules-module%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::lift-modules::t)))))
        (declare (not safe))
        (__make-atomic-promise __tmp215946)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords214519%_ _%$%modules214516214520%_ _%stx214521%_)
        (let ((_%modules214524%_
               (if (eq? _%$%modules214516214520%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%$%modules214516214520%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self214526%_
                  (let ((__obj215918
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj215918
                       _%modules214524%_
                       '1
                       '#f
                       '#f))
                    __obj215918))
                 (__tmp215947
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self214526%_ _%stx214521%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp215947
             gxc#current-compile-method
             _%self214526%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords214533%_ . _%args214534%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords214533%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords214533%_
                  'modules:
                  absent-value))
               _%args214534%_)))
    (define gxc#apply-lift-modules
      (lambda _%$%args214517214540%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%$%args214517214540%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp215949 (list)) (__tmp215948 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp215949
         '()
         __tmp215948
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args214512%_
        (apply make-instance gxc#::find-runtime-code::t _%$args214512%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp215950
             (lambda ()
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#begin
                  gxc#find-runtime-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#begin-syntax
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#begin-foreign
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#begin-annotation
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#module
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#import
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#export
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#provide
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#extern
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#define-values
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#define-syntax
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#define-alias
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#declare
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#lambda
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#case-lambda
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#let-values
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#letrec-values
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#letrec*-values
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#quote
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#call
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#call-unchecked
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#if
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#ref
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#set!
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#struct-instance?
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#struct-direct-instance?
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#struct-ref
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#struct-set!
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#struct-direct-ref
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#struct-direct-set!
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#struct-unchecked-ref
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#struct-unchecked-set!
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::find-runtime-code::t)))))
        (declare (not safe))
        (__make-atomic-promise __tmp215950)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx214504%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self214507%_
                (let ((__obj215920
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj215920))
               (__tmp215951
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self214507%_ _%stx214504%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp215951
           gxc#current-compile-method
           _%self214507%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp215953 (list gxc#::false::t))
            (__tmp215952 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp215953
         '()
         __tmp215952
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args214501%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args214501%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp215954
             (lambda ()
               (force gxc#::false-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-lambda-expression::t
                  '%#begin
                  gxc#apply-last-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-lambda-expression::t
                  '%#begin-annotation
                  gxc#apply-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-lambda-expression::t
                  '%#lambda
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-lambda-expression::t
                  '%#case-lambda
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-lambda-expression::t
                  '%#let-values
                  gxc#apply-body-last-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-lambda-expression::t
                  '%#letrec-values
                  gxc#apply-body-last-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-lambda-expression::t
                  '%#letrec*-values
                  gxc#apply-body-last-let-values%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::find-lambda-expression::t)))))
        (declare (not safe))
        (__make-atomic-promise __tmp215954)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx214493%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self214496%_
                (let ((__obj215922
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj215922))
               (__tmp215955
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self214496%_ _%stx214493%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp215955
           gxc#current-compile-method
           _%self214496%_))))
    (define gxc#::count-values::t
      (let ((__tmp215957 (list gxc#::false-expression::t))
            (__tmp215956 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp215957
         '()
         __tmp215956
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args214490%_
        (apply make-instance gxc#::count-values::t _%$args214490%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp215958
             (lambda ()
               (force gxc#::false-expression-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::count-values::t
                  '%#begin
                  gxc#apply-last-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::count-values::t
                  '%#begin-annotation
                  gxc#apply-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::count-values::t
                  '%#lambda
                  gxc#count-values-single%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::count-values::t
                  '%#case-lambda
                  gxc#count-values-single%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::count-values::t
                  '%#let-values
                  gxc#apply-body-last-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::count-values::t
                  '%#letrec-values
                  gxc#apply-body-last-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::count-values::t
                  '%#letrec*-values
                  gxc#apply-body-last-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::count-values::t
                  '%#quote
                  gxc#count-values-single%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::count-values::t
                  '%#call
                  gxc#count-values-call%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::count-values::t
                  '%#call-unchecked
                  gxc#count-values-call%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::count-values::t
                  '%#if
                  gxc#count-values-if%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::count-values::t)))))
        (declare (not safe))
        (__make-atomic-promise __tmp215958)))
    (define gxc#apply-count-values
      (lambda (_%stx214482%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self214485%_
                (let ((__obj215924
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj215924))
               (__tmp215959
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self214485%_ _%stx214482%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp215959
           gxc#current-compile-method
           _%self214485%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp215960 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp215960
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args214479%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args214479%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp215961
             (lambda ()
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#begin
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#begin-syntax
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#begin-foreign
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#begin-annotation
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#module
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#import
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#export
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#provide
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#extern
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#define-values
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#define-syntax
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#define-alias
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#define-runtime
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#declare
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#lambda
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#case-lambda
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#let-values
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#letrec-values
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#letrec*-values
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#quote
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#call
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#call-unchecked
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#if
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#ref
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#set!
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#struct-instance?
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#struct-direct-instance?
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#struct-ref
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#struct-set!
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#struct-direct-ref
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#struct-direct-set!
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#struct-unchecked-ref
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#struct-unchecked-set!
                  gxc#generate-runtime-empty)))))
        (declare (not safe))
        (__make-atomic-promise __tmp215961)))
    (define gxc#::generate-loader::t
      (let ((__tmp215963 (list gxc#::generate-runtime-empty::t))
            (__tmp215962 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp215963
         '()
         __tmp215962
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args214475%_
        (apply make-instance gxc#::generate-loader::t _%$args214475%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp215964
             (lambda ()
               (force gxc#::generate-runtime-empty-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-loader::t
                  '%#begin
                  gxc#generate-runtime-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-loader::t
                  '%#import
                  gxc#generate-runtime-loader-import%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::generate-loader::t)))))
        (declare (not safe))
        (__make-atomic-promise __tmp215964)))
    (define gxc#apply-generate-loader
      (lambda (_%stx214467%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self214470%_
                (let ((__obj215927
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj215927))
               (__tmp215965
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self214470%_ _%stx214467%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp215965
           gxc#current-compile-method
           _%self214470%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp215966 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp215966
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args214464%_
        (apply make-instance gxc#::generate-runtime::t _%$args214464%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp215967
             (lambda ()
               (force gxc#::generate-runtime-empty-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#begin
                  gxc#generate-runtime-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#begin-foreign
                  gxc#generate-runtime-begin-foreign%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#begin-annotation
                  gxc#generate-runtime-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#define-values
                  gxc#generate-runtime-define-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#declare
                  gxc#generate-runtime-declare%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#lambda
                  gxc#generate-runtime-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#case-lambda
                  gxc#generate-runtime-case-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#let-values
                  gxc#generate-runtime-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#letrec-values
                  gxc#generate-runtime-letrec-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#letrec*-values
                  gxc#generate-runtime-letrec*-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#quote
                  gxc#generate-runtime-quote%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#quote-syntax
                  gxc#generate-runtime-quote-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#call
                  gxc#generate-runtime-call%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#call-unchecked
                  gxc#generate-runtime-call-unchecked%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#if
                  gxc#generate-runtime-if%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#ref
                  gxc#generate-runtime-ref%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#set!
                  gxc#generate-runtime-setq%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#struct-instance?
                  gxc#generate-runtime-struct-instancep%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#struct-direct-instance?
                  gxc#generate-runtime-struct-direct-instancep%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#struct-ref
                  gxc#generate-runtime-struct-ref%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#struct-set!
                  gxc#generate-runtime-struct-setq%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#struct-direct-ref
                  gxc#generate-runtime-struct-direct-ref%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#struct-direct-set!
                  gxc#generate-runtime-struct-direct-setq%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#struct-unchecked-ref
                  gxc#generate-runtime-struct-unchecked-ref%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#struct-unchecked-set!
                  gxc#generate-runtime-struct-unchecked-setq%)))))
        (declare (not safe))
        (__make-atomic-promise __tmp215967)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx214456%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self214459%_
                (let ((__obj215929
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj215929))
               (__tmp215968
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self214459%_ _%stx214456%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp215968
           gxc#current-compile-method
           _%self214459%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp215970 (list gxc#::generate-runtime::t))
            (__tmp215969 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp215970
         '()
         __tmp215969
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args214453%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args214453%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp215971
             (lambda ()
               (force gxc#::generate-runtime-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-phi::t
                  '%#define-runtime
                  gxc#generate-runtime-phi-define-runtime%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::generate-runtime-phi::t)))))
        (declare (not safe))
        (__make-atomic-promise __tmp215971)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx214445%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self214448%_
                (let ((__obj215931
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj215931))
               (__tmp215972
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self214448%_ _%stx214445%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp215972
           gxc#current-compile-method
           _%self214448%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp215973 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp215973
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args214442%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args214442%_)))
    (define gxc#::collect-expression-refs-table
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::collect-expression-refs::t 'table)))
    (define gxc#::collect-expression-refs-table-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::collect-expression-refs::t 'table)))
    (define gxc#&::collect-expression-refs-table
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::collect-expression-refs::t
         'table)))
    (define gxc#&::collect-expression-refs-table-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::collect-expression-refs::t
         'table)))
    (define gxc#::collect-expression-refs-bind-methods!
      (let ((__tmp215974
             (lambda ()
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#begin
                  gxc#apply-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#begin-annotation
                  gxc#apply-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#lambda
                  gxc#apply-body-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#case-lambda
                  gxc#apply-body-case-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#let-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#letrec-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#letrec*-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#quote
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#quote-syntax
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#call
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#call-unchecked
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#if
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#ref
                  gxc#collect-refs-ref%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#set!
                  gxc#collect-refs-setq%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#struct-instance?
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#struct-direct-instance?
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#struct-ref
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#struct-set!
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#struct-direct-ref
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#struct-direct-set!
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#struct-unchecked-ref
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#struct-unchecked-set!
                  gxc#apply-operands)))))
        (declare (not safe))
        (__make-atomic-promise __tmp215974)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords214417%_ _%$%table214414214418%_ _%stx214419%_)
        (let ((_%table214422%_
               (if (eq? _%$%table214414214418%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%$%table214414214418%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self214424%_
                  (let ((__obj215933
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj215933
                       _%table214422%_
                       '1
                       '#f
                       '#f))
                    __obj215933))
                 (__tmp215975
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self214424%_ _%stx214419%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp215975
             gxc#current-compile-method
             _%self214424%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords214431%_ . _%args214432%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords214431%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords214431%_
                  'table:
                  absent-value))
               _%args214432%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%$%args214415214438%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%$%args214415214438%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp215977 (list gxc#::void-expression::t))
            (__tmp215976 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp215977
         '(state)
         __tmp215976
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args214410%_
        (apply make-instance gxc#::generate-meta::t _%$args214410%_)))
    (define gxc#::generate-meta-state
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::generate-meta::t 'state)))
    (define gxc#::generate-meta-state-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::generate-meta::t 'state)))
    (define gxc#&::generate-meta-state
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#::generate-meta::t 'state)))
    (define gxc#&::generate-meta-state-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#::generate-meta::t 'state)))
    (define gxc#::generate-meta-bind-methods!
      (let ((__tmp215978
             (lambda ()
               (force gxc#::void-expression-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta::t
                  '%#begin
                  gxc#generate-meta-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta::t
                  '%#begin-syntax
                  gxc#generate-meta-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta::t
                  '%#module
                  gxc#generate-meta-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta::t
                  '%#import
                  gxc#generate-meta-import%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta::t
                  '%#export
                  gxc#generate-meta-export%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta::t
                  '%#provide
                  gxc#generate-meta-provide%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta::t
                  '%#extern
                  gxc#generate-meta-extern%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta::t
                  '%#define-values
                  gxc#generate-meta-define-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta::t
                  '%#define-syntax
                  gxc#generate-meta-define-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta::t
                  '%#define-alias
                  gxc#generate-meta-define-alias%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta::t
                  '%#define-runtime
                  gxc#generate-meta-define-runtime%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta::t
                  '%#begin-foreign
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta::t
                  '%#declare
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::generate-meta::t)))))
        (declare (not safe))
        (__make-atomic-promise __tmp215978)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords214385%_ _%$%state214382214386%_ _%stx214387%_)
        (let ((_%state214390%_
               (if (eq? _%$%state214382214386%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%$%state214382214386%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self214392%_
                  (let ((__obj215935
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj215935
                       _%state214390%_
                       '1
                       '#f
                       '#f))
                    __obj215935))
                 (__tmp215979
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self214392%_ _%stx214387%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp215979
             gxc#current-compile-method
             _%self214392%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords214399%_ . _%args214400%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords214399%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords214399%_
                  'state:
                  absent-value))
               _%args214400%_)))
    (define gxc#apply-generate-meta
      (lambda _%$%args214383214406%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%$%args214383214406%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp215981 (list)) (__tmp215980 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp215981
         '(state)
         __tmp215980
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args214378%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args214378%_)))
    (define gxc#::generate-meta-phi-state
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::generate-meta-phi::t 'state)))
    (define gxc#::generate-meta-phi-state-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::generate-meta-phi::t 'state)))
    (define gxc#&::generate-meta-phi-state
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::generate-meta-phi::t
         'state)))
    (define gxc#&::generate-meta-phi-state-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::generate-meta-phi::t
         'state)))
    (define gxc#::generate-meta-phi-bind-methods!
      (let ((__tmp215982
             (lambda ()
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#begin
                  gxc#generate-meta-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#begin-syntax
                  gxc#generate-meta-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#define-syntax
                  gxc#generate-meta-define-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#define-alias
                  gxc#generate-meta-define-alias%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#define-values
                  gxc#generate-meta-phi-define-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#begin-annotation
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#lambda
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#case-lambda
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#let-values
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#letrec-values
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#letrec*-values
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#quote
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#quote-syntax
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#call
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#call-unchecked
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#if
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#ref
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#set!
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#struct-instance?
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#struct-direct-instance?
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#struct-ref
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#struct-set!
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#struct-direct-ref
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#struct-direct-set!
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#struct-unchecked-ref
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#struct-unchecked-set!
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#declare
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::generate-meta-phi::t)))))
        (declare (not safe))
        (__make-atomic-promise __tmp215982)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords214353%_ _%$%state214350214354%_ _%stx214355%_)
        (let ((_%state214358%_
               (if (eq? _%$%state214350214354%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%$%state214350214354%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self214360%_
                  (let ((__obj215937
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj215937
                       _%state214358%_
                       '1
                       '#f
                       '#f))
                    __obj215937))
                 (__tmp215983
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self214360%_ _%stx214355%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp215983
             gxc#current-compile-method
             _%self214360%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords214367%_ . _%args214368%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords214367%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords214367%_
                  'state:
                  absent-value))
               _%args214368%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%$%args214351214374%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%$%args214351214374%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self214279%_ _%stx214280%_)
        (let* ((_%$%g214282214299%_
                (lambda (_%$%g214283214296%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g214283214296%_))))
               (_%$%g214281214346%_
                (lambda (_%$%g214283214302%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g214283214302%_))
                      (let ((_%$%e214286214304%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g214283214302%_))))
                        (let ((_%$%hd214287214307%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e214286214304%_)))
                              (_%$%tl214288214309%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e214286214304%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl214288214309%_))
                              (let ((_%$%e214289214312%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl214288214309%_))))
                                (let ((_%$%hd214290214315%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e214289214312%_)))
                                      (_%$%tl214291214317%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e214289214312%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl214291214317%_))
                                      (let ((_%$%e214292214320%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl214291214317%_))))
                                        (let ((_%$%hd214293214323%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e214292214320%_)))
                                              (_%$%tl214294214325%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e214292214320%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl214294214325%_))
                                              (let ((__tmp215984
                                                     (lambda (_%bind214344%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#identifier?
                                                              _%bind214344%_))
                                                           (gxc#add-module-binding!
                                                            _%bind214344%_
                                                            '#f)
                                                           '#!void))))
                                                (declare (not safe))
                                                (gx#stx-for-each1
                                                 __tmp215984
                                                 _%$%hd214290214315%_))
                                              (_%$%g214282214299%_
                                               _%$%g214283214302%_))))
                                      (_%$%g214282214299%_
                                       _%$%g214283214302%_))))
                              (_%$%g214282214299%_ _%$%g214283214302%_))))
                      (_%$%g214282214299%_ _%$%g214283214302%_)))))
          (_%$%g214281214346%_ _%stx214280%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self214211%_ _%stx214212%_)
        (let* ((_%$%g214214214231%_
                (lambda (_%$%g214215214228%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g214215214228%_))))
               (_%$%g214213214276%_
                (lambda (_%$%g214215214234%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g214215214234%_))
                      (let ((_%$%e214218214236%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g214215214234%_))))
                        (let ((_%$%hd214219214239%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e214218214236%_)))
                              (_%$%tl214220214241%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e214218214236%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl214220214241%_))
                              (let ((_%$%e214221214244%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl214220214241%_))))
                                (let ((_%$%hd214222214247%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e214221214244%_)))
                                      (_%$%tl214223214249%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e214221214244%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl214223214249%_))
                                      (let ((_%$%e214224214252%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl214223214249%_))))
                                        (let ((_%$%hd214225214255%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e214224214252%_)))
                                              (_%$%tl214226214257%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e214224214252%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl214226214257%_))
                                              (gxc#add-module-binding!
                                               _%$%hd214222214247%_
                                               '#t)
                                              (_%$%g214214214231%_
                                               _%$%g214215214234%_))))
                                      (_%$%g214214214231%_
                                       _%$%g214215214234%_))))
                              (_%$%g214214214231%_ _%$%g214215214234%_))))
                      (_%$%g214214214231%_ _%$%g214215214234%_)))))
          (_%$%g214213214276%_ _%stx214212%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self214153%_ _%stx214154%_)
        (let* ((_%$%g214156214170%_
                (lambda (_%$%g214157214167%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g214157214167%_))))
               (_%$%g214155214208%_
                (lambda (_%$%g214157214173%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g214157214173%_))
                      (let ((_%$%e214160214175%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g214157214173%_))))
                        (let ((_%$%hd214161214178%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e214160214175%_)))
                              (_%$%tl214162214180%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e214160214175%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl214162214180%_))
                              (let ((_%$%e214163214183%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl214162214180%_))))
                                (let ((_%$%hd214164214186%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e214163214183%_)))
                                      (_%$%tl214165214188%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e214163214183%_))))
                                  (let ((_%ctx214205%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-local-e__0
                                            _%$%hd214164214186%_))))
                                    (set-box!
                                     (let ()
                                       (declare (not safe))
                                       (slot-ref__0 _%self214153%_ 'modules))
                                     (cons _%ctx214205%_
                                           (unbox (let ()
                                                    (declare (not safe))
                                                    (slot-ref__0
                                                     _%self214153%_
                                                     'modules)))))
                                    (let ((__tmp215985
                                           (lambda ()
                                             (let ((__tmp215986
                                                    (##structure-ref
                                                     _%ctx214205%_
                                                     '11
                                                     gx#module-context::t
                                                     '#f)))
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self214153%_
                                                __tmp215986)))))
                                      (declare (not safe))
                                      (call-with-parameters__1
                                       __tmp215985
                                       gx#current-expander-context
                                       _%ctx214205%_)))))
                              (_%$%g214156214170%_ _%$%g214157214173%_))))
                      (_%$%g214156214170%_ _%$%g214157214173%_)))))
          (_%$%g214155214208%_ _%stx214154%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%$%decls214107214109%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%$%decls214107214109%_
              (let ((_%decls214111%_ _%$%decls214107214109%_))
                (let _%lp214113%_ ((_%rest214115%_ _%decls214111%_))
                  (let* ((_%$%rest214116214124%_ _%rest214115%_)
                         (_%$%else214118214132%_ (lambda () '#f))
                         (_%$%K214120214141%_
                          (lambda (_%decls214135%_ _%decl214136%_)
                            (if (equal? _%decl214136%_ '(not safe))
                                '#t
                                (if (equal? _%decl214136%_ '(safe))
                                    '#f
                                    (_%lp214113%_ _%decls214135%_))))))
                    (if (pair? _%$%rest214116214124%_)
                        (let ((_%$%hd214121214144%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%rest214116214124%_)))
                              (_%$%tl214122214146%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%rest214116214124%_))))
                          (let* ((_%decl214149%_ _%$%hd214121214144%_)
                                 (_%decls214151%_ _%$%tl214122214146%_))
                            (_%$%K214120214141%_
                             _%decls214151%_
                             _%decl214149%_)))
                        (_%$%else214118214132%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id214101%_ _%syntax?214102%_)
        (let ((_%eid214104%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id214101%_))
                '1
                gx#binding::t
                '#f))
              (_%ht214105%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid214104%_))
              '#!void
              (let ((__tmp215987
                     (let ((__tmp215988
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid214104%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp215988 _%syntax?214102%_))))
                (declare (not safe))
                (hash-put! _%ht214105%_ _%eid214104%_ __tmp215987))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self214098%_ _%stx214099%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self213945%_ _%stx213946%_)
        (letrec ((_%simplify213948%_
                  (lambda (_%body213996%_)
                    (let _%lp213998%_ ((_%rest214000%_ _%body213996%_)
                                       (_%r214001%_ '()))
                      (let* ((_%$%rest214002214010%_ _%rest214000%_)
                             (_%$%else214004214018%_
                              (lambda () (reverse _%r214001%_)))
                             (_%$%K214006214086%_
                              (lambda (_%rest214021%_ _%hd214022%_)
                                (let* ((_%$%hd214023214039%_ _%hd214022%_)
                                       (_%$%else214027214047%_
                                        (lambda ()
                                          (_%lp213998%_
                                           _%rest214021%_
                                           (cons _%hd214022%_ _%r214001%_)))))
                                  (let ((_%$%K214035214076%_
                                         (lambda (_%exprs214074%_)
                                           (_%lp213998%_
                                            (append _%exprs214074%_
                                                    _%rest214021%_)
                                            _%r214001%_)))
                                        (_%$%K214030214060%_
                                         (lambda ()
                                           (if (null? _%rest214021%_)
                                               (_%lp213998%_
                                                _%rest214021%_
                                                (cons _%hd214022%_
                                                      _%r214001%_))
                                               (_%lp213998%_
                                                _%rest214021%_
                                                _%r214001%_))))
                                        (_%$%K214029214052%_
                                         (lambda ()
                                           (if (null? _%rest214021%_)
                                               (_%lp213998%_
                                                _%rest214021%_
                                                (cons _%hd214022%_
                                                      _%r214001%_))
                                               (_%lp213998%_
                                                _%rest214021%_
                                                _%r214001%_)))))
                                    (let ((_%$%try-match214026214055%_
                                           (lambda ()
                                             (if (symbol? _%$%hd214023214039%_)
                                                 (_%$%K214029214052%_)
                                                 (_%$%else214027214047%_)))))
                                      (if (pair? _%$%hd214023214039%_)
                                          (let ((_%$%tl214037214081%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%hd214023214039%_)))
                                                (_%$%hd214036214079%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%hd214023214039%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%$%hd214036214079%_
                                                         'begin))
                                                (let ((_%exprs214084%_
                                                       _%$%tl214037214081%_))
                                                  (_%$%K214035214076%_
                                                   _%exprs214084%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%$%hd214036214079%_
                                                             'quote))
                                                    (if (pair? _%$%tl214037214081%_)
                                                        (let ((_%$%tl214034214068%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%tl214037214081%_))))
                  (if (null? _%$%tl214034214068%_)
                      (_%$%K214030214060%_)
                      (_%$%try-match214026214055%_)))
                (_%$%try-match214026214055%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%try-match214026214055%_))))
                                          (_%$%try-match214026214055%_))))))))
                        (if (pair? _%$%rest214002214010%_)
                            (let ((_%$%hd214007214089%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest214002214010%_)))
                                  (_%$%tl214008214091%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest214002214010%_))))
                              (let* ((_%hd214094%_ _%$%hd214007214089%_)
                                     (_%rest214096%_ _%$%tl214008214091%_))
                                (_%$%K214006214086%_
                                 _%rest214096%_
                                 _%hd214094%_)))
                            (_%$%else214004214018%_)))))))
          (let* ((_%$%g213950213960%_
                  (lambda (_%$%g213951213957%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g213951213957%_))))
                 (_%$%g213949213993%_
                  (lambda (_%$%g213951213963%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g213951213963%_))
                        (let ((_%$%e213953213965%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g213951213963%_))))
                          (let ((_%$%hd213954213968%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e213953213965%_)))
                                (_%$%tl213955213970%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e213953213965%_))))
                            (let* ((_%body213988%_
                                    (map (lambda (_%$%g213983213985%_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self213945%_
                                              _%$%g213983213985%_)))
                                         _%$%tl213955213970%_))
                                   (_%body213990%_
                                    (_%simplify213948%_ _%body213988%_)))
                              (if (let ((__tmp215989 (length _%body213990%_)))
                                    (declare (not safe))
                                    (##fx= __tmp215989 '1))
                                  (car _%body213990%_)
                                  (cons 'begin _%body213990%_)))))
                        (_%$%g213950213960%_ _%$%g213951213963%_)))))
            (_%$%g213949213993%_ _%stx213946%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self213906%_ _%stx213907%_)
        (let* ((_%$%g213909213919%_
                (lambda (_%$%g213910213916%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g213910213916%_))))
               (_%$%g213908213942%_
                (lambda (_%$%g213910213922%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g213910213922%_))
                      (let ((_%$%e213912213924%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g213910213922%_))))
                        (let ((_%$%hd213913213927%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e213912213924%_)))
                              (_%$%tl213914213929%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e213912213924%_))))
                          (cons 'begin
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax->datum _%$%tl213914213929%_)))))
                      (_%$%g213909213919%_ _%$%g213910213922%_)))))
          (_%$%g213908213942%_ _%stx213907%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self213672%_ _%stx213673%_)
        (let* ((_%__stx214579214580%_ _%stx213673%_)
               (_%$%g213677213729%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx214579214580%_)))))
          (let ((_%__kont214581214582%_
                 (lambda (_%$%g213679213888%_ _%$%g213680213889%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self213672%_ _%$%g213679213888%_))))
                (_%__kont214583214584%_
                 (lambda (_%$%g213690213836%_
                          _%$%g213691213837%_
                          _%$%g213692213838%_)
                   (if (let ((__tmp215990
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%g213692213838%_))))
                         (declare (not safe))
                         (##memq __tmp215990 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self213672%_
                          _%$%g213690213836%_)))))
                (_%__kont214587214588%_
                 (lambda (_%$%g213714213758%_ _%$%g213715213759%_)
                   (let ((_%decls213774%_
                          (map gx#syntax->datum _%$%g213715213759%_)))
                     (let ((__tmp215992
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls213774%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self213672%_
                                                   _%$%g213714213758%_))
                                                '())))))
                           (__tmp215991
                            (append _%decls213774%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-decls)))))
                       (declare (not safe))
                       (call-with-parameters__1
                        __tmp215992
                        gxc#current-compile-decls
                        __tmp215991))))))
            (let* ((_%__match214634214635%_
                    (lambda (_%$%e213693213782%_
                             _%$%hd213694213785%_
                             _%$%tl213695213787%_
                             _%$%e213696213790%_
                             _%$%hd213697213793%_
                             _%$%tl213698213795%_
                             _%$%e213699213798%_
                             _%$%hd213700213801%_
                             _%$%tl213701213803%_
                             _%__splice214585214586%_
                             _%$%target213702213806%_
                             _%$%tl213704213808%_)
                      (letrec ((_%$%loop213705213811%_
                                (lambda (_%$%hd213703213814%_
                                         _%$%param213709213816%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd213703213814%_))
                                      (let ((_%$%e213706213818%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd213703213814%_))))
                                        (let ((_%$%lp-tl213708213823%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e213706213818%_)))
                                              (_%$%lp-hd213707213821%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e213706213818%_))))
                                          (_%$%loop213705213811%_
                                           _%$%lp-tl213708213823%_
                                           (cons _%$%lp-hd213707213821%_
                                                 _%$%param213709213816%_))))
                                      (let ((_%$%param213710213826%_
                                             (reverse _%$%param213709213816%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl213698213795%_))
                                            (let ((_%$%e213711213828%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl213698213795%_))))
                                              (let ((_%$%tl213713213833%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e213711213828%_)))
                                                    (_%$%hd213712213831%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e213711213828%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl213713213833%_))
                                                    (let ((_%$%g213690213836%_
                                                           _%$%hd213712213831%_)
                                                          (_%$%g213691213837%_
                                                           _%$%param213710213826%_)
                                                          (_%$%g213692213838%_
                                                           _%$%hd213700213801%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%$%g213692213838%_))
                       (not (let ((__tmp215993
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g213692213838%_))))
                              (declare (not safe))
                              (##memq __tmp215993 gxc#gambit-annotations))))
                  (_%__kont214583214584%_
                   _%$%g213690213836%_
                   _%$%g213691213837%_
                   _%$%g213692213838%_)
                  (_%__kont214587214588%_
                   _%$%hd213712213831%_
                   _%$%hd213697213793%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g213677213729%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g213677213729%_))))))))
                        (_%$%loop213705213811%_
                         _%$%target213702213806%_
                         '()))))
                   (_%__match214608214609%_
                    (lambda (_%$%e213681213864%_
                             _%$%hd213682213867%_
                             _%$%tl213683213869%_
                             _%$%e213684213872%_
                             _%$%hd213685213875%_
                             _%$%tl213686213877%_
                             _%$%e213687213880%_
                             _%$%hd213688213883%_
                             _%$%tl213689213885%_)
                      (let ((_%$%g213679213888%_ _%$%hd213688213883%_)
                            (_%$%g213680213889%_ _%$%hd213685213875%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%$%g213680213889%_))
                            (_%__kont214581214582%_
                             _%$%g213679213888%_
                             _%$%g213680213889%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd213685213875%_))
                                (let ((_%$%e213699213798%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd213685213875%_))))
                                  (let ((_%$%tl213701213803%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e213699213798%_)))
                                        (_%$%hd213700213801%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e213699213798%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%tl213701213803%_))
                                        (let ((_%__splice214585214586%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl213701213803%_
                                                  '0))))
                                          (let ((_%$%tl213704213808%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice214585214586%_
                                                    '1)))
                                                (_%$%target213702213806%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice214585214586%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl213704213808%_))
                                                (_%__match214634214635%_
                                                 _%$%e213681213864%_
                                                 _%$%hd213682213867%_
                                                 _%$%tl213683213869%_
                                                 _%$%e213684213872%_
                                                 _%$%hd213685213875%_
                                                 _%$%tl213686213877%_
                                                 _%$%e213699213798%_
                                                 _%$%hd213700213801%_
                                                 _%$%tl213701213803%_
                                                 _%__splice214585214586%_
                                                 _%$%target213702213806%_
                                                 _%$%tl213704213808%_)
                                                (_%__kont214587214588%_
                                                 _%$%hd213688213883%_
                                                 _%$%hd213685213875%_))))
                                        (_%__kont214587214588%_
                                         _%$%hd213688213883%_
                                         _%$%hd213685213875%_))))
                                (_%__kont214587214588%_
                                 _%$%hd213688213883%_
                                 _%$%hd213685213875%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx214579214580%_))
                  (let ((_%$%e213681213864%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx214579214580%_))))
                    (let ((_%$%tl213683213869%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e213681213864%_)))
                          (_%$%hd213682213867%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e213681213864%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl213683213869%_))
                          (let ((_%$%e213684213872%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl213683213869%_))))
                            (let ((_%$%tl213686213877%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e213684213872%_)))
                                  (_%$%hd213685213875%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e213684213872%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl213686213877%_))
                                  (let ((_%$%e213687213880%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl213686213877%_))))
                                    (let ((_%$%tl213689213885%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e213687213880%_)))
                                          (_%$%hd213688213883%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e213687213880%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl213689213885%_))
                                          (_%__match214608214609%_
                                           _%$%e213681213864%_
                                           _%$%hd213682213867%_
                                           _%$%tl213683213869%_
                                           _%$%e213684213872%_
                                           _%$%hd213685213875%_
                                           _%$%tl213686213877%_
                                           _%$%e213687213880%_
                                           _%$%hd213688213883%_
                                           _%$%tl213689213885%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%hd213685213875%_))
                                              (let ((_%$%e213699213798%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd213685213875%_))))
                                                (let ((_%$%tl213701213803%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e213699213798%_)))
                                                      (_%$%hd213700213801%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e213699213798%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl213701213803%_))
                                                      (let ((_%__splice214585214586%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl213701213803%_
                        '0))))
                (let ((_%$%tl213704213808%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice214585214586%_ '1)))
                      (_%$%target213702213806%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice214585214586%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl213704213808%_))
                      (_%__match214634214635%_
                       _%$%e213681213864%_
                       _%$%hd213682213867%_
                       _%$%tl213683213869%_
                       _%$%e213684213872%_
                       _%$%hd213685213875%_
                       _%$%tl213686213877%_
                       _%$%e213699213798%_
                       _%$%hd213700213801%_
                       _%$%tl213701213803%_
                       _%__splice214585214586%_
                       _%$%target213702213806%_
                       _%$%tl213704213808%_)
                      (let () (declare (not safe)) (_%$%g213677213729%_)))))
              (let () (declare (not safe)) (_%$%g213677213729%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g213677213729%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd213685213875%_))
                                      (let ((_%$%e213699213798%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd213685213875%_))))
                                        (let ((_%$%tl213701213803%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e213699213798%_)))
                                              (_%$%hd213700213801%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e213699213798%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%$%tl213701213803%_))
                                              (let ((_%__splice214585214586%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl213701213803%_
                                                        '0))))
                                                (let ((_%$%tl213704213808%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice214585214586%_
                                                          '1)))
                                                      (_%$%target213702213806%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice214585214586%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl213704213808%_))
                                                      (_%__match214634214635%_
                                                       _%$%e213681213864%_
                                                       _%$%hd213682213867%_
                                                       _%$%tl213683213869%_
                                                       _%$%e213684213872%_
                                                       _%$%hd213685213875%_
                                                       _%$%tl213686213877%_
                                                       _%$%e213699213798%_
                                                       _%$%hd213700213801%_
                                                       _%$%tl213701213803%_
                                                       _%__splice214585214586%_
                                                       _%$%target213702213806%_
                                                       _%$%tl213704213808%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g213677213729%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g213677213729%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g213677213729%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g213677213729%_)))))
                  (let () (declare (not safe)) (_%$%g213677213729%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self213631%_ _%stx213632%_)
        (let* ((_%$%g213634213644%_
                (lambda (_%$%g213635213641%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g213635213641%_))))
               (_%$%g213633213669%_
                (lambda (_%$%g213635213647%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g213635213647%_))
                      (let ((_%$%e213637213649%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g213635213647%_))))
                        (let ((_%$%hd213638213652%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e213637213649%_)))
                              (_%$%tl213639213654%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e213637213649%_))))
                          (let ((_%decls213667%_
                                 (map gx#syntax->datum _%$%tl213639213654%_)))
                            (let ((__tmp215994
                                   (append _%decls213667%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#current-compile-decls)))))
                              (declare (not safe))
                              (gxc#current-compile-decls __tmp215994))
                            (cons 'declare _%decls213667%_))))
                      (_%$%g213634213644%_ _%$%g213635213647%_)))))
          (_%$%g213633213669%_ _%stx213632%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self213378%_ _%stx213379%_)
        (let* ((_%$%g213381213398%_
                (lambda (_%$%g213382213395%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g213382213395%_))))
               (_%$%g213380213628%_
                (lambda (_%$%g213382213401%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g213382213401%_))
                      (let ((_%$%e213385213403%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g213382213401%_))))
                        (let ((_%$%hd213386213406%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e213385213403%_)))
                              (_%$%tl213387213408%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e213385213403%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl213387213408%_))
                              (let ((_%$%e213388213411%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl213387213408%_))))
                                (let ((_%$%hd213389213414%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e213388213411%_)))
                                      (_%$%tl213390213416%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e213388213411%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl213390213416%_))
                                      (let ((_%$%e213391213419%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl213390213416%_))))
                                        (let ((_%$%hd213392213422%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e213391213419%_)))
                                              (_%$%tl213393213424%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e213391213419%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl213393213424%_))
                                              (let* ((_%__stx214687214688%_
                                                      _%$%hd213389213414%_)
                                                     (_%$%g213445213459%_
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%__stx214687214688%_)))))
                                                (let ((_%__kont214689214690%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self213378%_
                                                            _%$%hd213392213422%_))))
                                                      (_%__kont214691214692%_
                                                       (lambda (_%$%g213451213591%_)
                                                         (let ((_%eid213600%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#generate-runtime-binding-id
                           _%$%g213451213591%_))))
                   (let ((_%$%lambda-expr213601213603%_
                          (gxc#apply-find-lambda-expression
                           _%$%hd213392213422%_)))
                     (if _%$%lambda-expr213601213603%_
                         (let* ((_%lambda-expr213605%_
                                 _%$%lambda-expr213601213603%_)
                                (__tmp215995
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-names))))
                           (declare (not safe))
                           (hash-put!
                            __tmp215995
                            _%lambda-expr213605%_
                            _%eid213600%_))
                         '#f))
                   (cons 'define
                         (cons _%eid213600%_
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self213378%_
                                        _%$%hd213392213422%_))
                                     '()))))))
              (_%__kont214693214694%_
               (lambda ()
                 (let* ((_%tmp213466%_
                         (let ()
                           (declare (not safe))
                           (gxc#generate-runtime-temporary__% '#t)))
                        (_%body213575%_
                         (let _%lp213468%_ ((_%rest213470%_
                                             _%$%hd213389213414%_)
                                            (_%k213471%_ '0)
                                            (_%r213472%_ '()))
                           (let* ((_%__stx214657214658%_ _%rest213470%_)
                                  (_%$%g213477213494%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%__stx214657214658%_)))))
                             (let ((_%__kont214659214660%_
                                    (lambda (_%$%g213479213562%_)
                                      (_%lp213468%_
                                       _%$%g213479213562%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k213471%_ '1))
                                       _%r213472%_)))
                                   (_%__kont214661214662%_
                                    (lambda (_%$%g213484213535%_
                                             _%$%g213485213536%_)
                                      (_%lp213468%_
                                       _%$%g213484213535%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k213471%_ '1))
                                       (cons (cons 'define
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%$%g213485213536%_))
                                                         (cons (gxc#generate-runtime-values-ref
                                                                _%tmp213466%_
                                                                _%k213471%_
                                                                _%$%g213484213535%_)
                                                               '())))
                                             _%r213472%_))))
                                   (_%__kont214663214664%_
                                    (lambda (_%$%g213489213506%_)
                                      (let ((__tmp215996
                                             (cons (cons 'define
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#generate-runtime-binding-id _%$%g213489213506%_))
                       (cons (gxc#generate-runtime-values->list
                              _%tmp213466%_
                              _%k213471%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                        (declare (not safe))
                                        (foldl__0
                                         cons
                                         __tmp215996
                                         _%r213472%_))))
                                   (_%__kont214665214666%_
                                    (lambda () (reverse _%r213472%_))))
                               (let ((_%$%g213475213522%_
                                      (lambda ()
                                        (let ((_%$%g213489213506%_
                                               _%__stx214657214658%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%$%g213489213506%_))
                                              (_%__kont214663214664%_
                                               _%$%g213489213506%_)
                                              (_%__kont214665214666%_))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx214657214658%_))
                                     (let ((_%$%e213480213551%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx214657214658%_))))
                                       (let ((_%$%tl213482213556%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e213480213551%_)))
                                             (_%$%hd213481213554%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e213480213551%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-datum?
                                                _%$%hd213481213554%_))
                                             (let ((_%$%e213483213559%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%hd213481213554%_))))
                                               (if (equal? _%$%e213483213559%_
                                                           '#f)
                                                   (_%__kont214659214660%_
                                                    _%$%tl213482213556%_)
                                                   (_%__kont214661214662%_
                                                    _%$%tl213482213556%_
                                                    _%$%hd213481213554%_)))
                                             (_%__kont214661214662%_
                                              _%$%tl213482213556%_
                                              _%$%hd213481213554%_))))
                                     (_%$%g213475213522%_))))))))
                   (cons 'begin
                         (cons (cons 'define
                                     (cons _%tmp213466%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self213378%_
                                                    _%$%hd213392213422%_))
                                                 '())))
                               (cons (gxc#generate-runtime-check-values
                                      _%tmp213466%_
                                      _%$%hd213389213414%_
                                      _%$%hd213392213422%_)
                                     _%body213575%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%__stx214687214688%_))
                                                      (let ((_%$%e213447213612%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%__stx214687214688%_))))
                (let ((_%$%tl213449213617%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e213447213612%_)))
                      (_%$%hd213448213615%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e213447213612%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%$%hd213448213615%_))
                      (let ((_%$%e213450213620%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%hd213448213615%_))))
                        (if (equal? _%$%e213450213620%_ '#f)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl213449213617%_))
                                (_%__kont214689214690%_)
                                (_%__kont214693214694%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl213449213617%_))
                                (_%__kont214691214692%_ _%$%hd213448213615%_)
                                (_%__kont214693214694%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl213449213617%_))
                          (_%__kont214691214692%_ _%$%hd213448213615%_)
                          (_%__kont214693214694%_)))))
              (_%__kont214693214694%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g213381213398%_
                                               _%$%g213382213401%_))))
                                      (_%$%g213381213398%_
                                       _%$%g213382213401%_))))
                              (_%$%g213381213398%_ _%$%g213382213401%_))))
                      (_%$%g213381213398%_ _%$%g213382213401%_)))))
          (_%$%g213380213628%_ _%stx213379%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals213353%_ _%hd213354%_ _%expr213355%_)
        (let ((_%$e213357%_ (gxc#apply-count-values _%expr213355%_)))
          (if _%$e213357%_
              (let ((_%len213362%_
                     (let ()
                       (declare (not safe))
                       (gx#stx-length _%hd213354%_)))
                    (_%cmp213363%_
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-list? _%hd213354%_))
                         fx=
                         fx>=)))
                (if (or (let () (declare (not safe)) (##fx= _%len213362%_ '0))
                        (_%cmp213363%_ _%$e213357%_ _%len213362%_))
                    '#!void
                    (let ()
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Value count mismatch"
                       _%expr213355%_
                       _%hd213354%_))))
              (let* ((_%len213369%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd213354%_)))
                     (_%cmp213371%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd213354%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg213373%_
                      (let ((__tmp215998
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd213354%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp215997 (number->string _%len213369%_)))
                        (declare (not safe))
                        (##string-append __tmp215998 __tmp215997 '" values")))
                     (_%count213375%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd213354%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len213369%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count213375%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals213353%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp213371%_
                                (cons _%count213375%_
                                      (cons _%len213369%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp213371%_
                                                        (cons _%count213375%_
                                                              (cons _%len213369%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg213373%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count213375%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var213348%_)
        (letrec ((_%generate-inline213350%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var213348%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var213348%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline213350%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline213350%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var213341%_ _%i213342%_ _%rest213343%_)
        (letrec ((_%generate-inline213345%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i213342%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest213343%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var213341%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var213341%_
                                                      (cons '0 '())))
                                          (cons _%var213341%_ '()))))
                        (cons '##values-ref
                              (cons _%var213341%_ (cons _%i213342%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline213345%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline213345%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var213335%_ _%i213336%_)
        (if (let () (declare (not safe)) (##fx= _%i213336%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var213335%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var213335%_ '()))
                                  (cons (cons 'list (cons _%var213335%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var213335%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var213335%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var213335%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i213336%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var213335%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var213335%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var213335%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var213335%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var213335%_ '()))
                                (cons _%i213336%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var213335%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i213336%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self213267%_ _%stx213268%_)
        (let* ((_%$%g213270213287%_
                (lambda (_%$%g213271213284%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g213271213284%_))))
               (_%$%g213269213332%_
                (lambda (_%$%g213271213290%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g213271213290%_))
                      (let ((_%$%e213274213292%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g213271213290%_))))
                        (let ((_%$%hd213275213295%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e213274213292%_)))
                              (_%$%tl213276213297%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e213274213292%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl213276213297%_))
                              (let ((_%$%e213277213300%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl213276213297%_))))
                                (let ((_%$%hd213278213303%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e213277213300%_)))
                                      (_%$%tl213279213305%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e213277213300%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl213279213305%_))
                                      (let ((_%$%e213280213308%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl213279213305%_))))
                                        (let ((_%$%hd213281213311%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e213280213308%_)))
                                              (_%$%tl213282213313%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e213280213308%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl213282213313%_))
                                              (gxc#generate-runtime-lambda-form
                                               _%self213267%_
                                               _%$%hd213278213303%_
                                               _%$%hd213281213311%_)
                                              (_%$%g213270213287%_
                                               _%$%g213271213290%_))))
                                      (_%$%g213270213287%_
                                       _%$%g213271213290%_))))
                              (_%$%g213270213287%_ _%$%g213271213290%_))))
                      (_%$%g213270213287%_ _%$%g213271213290%_)))))
          (_%$%g213269213332%_ _%stx213268%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self213226%_ _%hd213227%_ _%body213228%_)
        (let* ((_%hd213230%_ (gxc#generate-runtime-lambda-head _%hd213227%_))
               (_%body213232%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self213226%_ _%body213228%_)))
               (_%body213264%_
                (let* ((_%$%body213233213241%_ _%body213232%_)
                       (_%$%else213235213249%_
                        (lambda () (cons _%body213232%_ '())))
                       (_%$%K213237213254%_
                        (lambda (_%exprs213252%_) _%exprs213252%_)))
                  (if (pair? _%$%body213233213241%_)
                      (let ((_%$%hd213238213257%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%body213233213241%_)))
                            (_%$%tl213239213259%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%body213233213241%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%$%hd213238213257%_ 'begin))
                            (let ((_%exprs213262%_ _%$%tl213239213259%_))
                              (_%$%K213237213254%_ _%exprs213262%_))
                            (_%$%else213235213249%_)))
                      (_%$%else213235213249%_)))))
          (cons 'lambda (cons _%hd213230%_ _%body213264%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd213224%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd213224%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self211781%_ _%stx211782%_)
        (letrec ((_%dispatch-case?211784%_
                  (lambda (_%hd212462%_ _%body212463%_)
                    (let* ((_%form212465%_
                            (cons _%hd212462%_ (cons _%body212463%_ '())))
                           (_%__stx214719214720%_ _%form212465%_)
                           (_%$%g212470212627%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx214719214720%_)))))
                      (let ((_%__kont214721214722%_
                             (lambda (_%$%g212472213144%_
                                      _%$%g212473213145%_
                                      _%$%g212474213146%_)
                               '#t))
                            (_%__kont214727214728%_
                             (lambda (_%$%g212517212936%_
                                      _%$%g212518212937%_
                                      _%$%g212519212938%_
                                      _%$%g212520212939%_
                                      _%$%g212521212940%_
                                      _%$%g212522212941%_)
                               '#t))
                            (_%__kont214733214734%_
                             (lambda (_%$%g212583212735%_
                                      _%$%g212584212736%_
                                      _%$%g212585212737%_
                                      _%$%g212586212738%_)
                               '#t))
                            (_%__kont214735214736%_ (lambda () '#f)))
                        (let* ((_%__match214860214861%_
                                (lambda (_%$%e212587212639%_
                                         _%$%hd212588212642%_
                                         _%$%tl212589212644%_
                                         _%$%e212590212647%_
                                         _%$%hd212591212650%_
                                         _%$%tl212592212652%_
                                         _%$%e212593212655%_
                                         _%$%hd212594212658%_
                                         _%$%tl212595212660%_
                                         _%$%e212596212663%_
                                         _%$%hd212597212666%_
                                         _%$%tl212598212668%_
                                         _%$%e212599212671%_
                                         _%$%hd212600212674%_
                                         _%$%tl212601212676%_
                                         _%$%e212602212679%_
                                         _%$%hd212603212682%_
                                         _%$%tl212604212684%_
                                         _%$%e212605212687%_
                                         _%$%hd212606212690%_
                                         _%$%tl212607212692%_
                                         _%$%e212608212695%_
                                         _%$%hd212609212698%_
                                         _%$%tl212610212700%_
                                         _%$%e212611212703%_
                                         _%$%hd212612212706%_
                                         _%$%tl212613212708%_
                                         _%$%e212614212711%_
                                         _%$%hd212615212714%_
                                         _%$%tl212616212716%_
                                         _%$%e212617212719%_
                                         _%$%hd212618212722%_
                                         _%$%tl212619212724%_
                                         _%$%e212620212727%_
                                         _%$%hd212621212730%_
                                         _%$%tl212622212732%_)
                                  (let ((_%$%g212583212735%_
                                         _%$%hd212621212730%_)
                                        (_%$%g212584212736%_
                                         _%$%hd212612212706%_)
                                        (_%$%g212585212737%_
                                         _%$%hd212603212682%_)
                                        (_%$%g212586212738%_
                                         _%$%hd212588212642%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%$%g212586212738%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%$%g212585212737%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%$%g212586212738%_
                                                _%$%g212583212735%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%$%g212584212736%_
                                                     _%$%g212586212738%_))))
                                        (_%__kont214733214734%_
                                         _%$%g212583212735%_
                                         _%$%g212584212736%_
                                         _%$%g212585212737%_
                                         _%$%g212586212738%_)
                                        (_%__kont214735214736%_)))))
                               (_%__match214832214833%_
                                (lambda (_%$%e212587212639%_
                                         _%$%hd212588212642%_
                                         _%$%tl212589212644%_
                                         _%$%e212590212647%_
                                         _%$%hd212591212650%_
                                         _%$%tl212592212652%_
                                         _%$%e212593212655%_
                                         _%$%hd212594212658%_
                                         _%$%tl212595212660%_
                                         _%$%e212596212663%_
                                         _%$%hd212597212666%_
                                         _%$%tl212598212668%_
                                         _%$%e212599212671%_
                                         _%$%hd212600212674%_
                                         _%$%tl212601212676%_
                                         _%$%e212602212679%_
                                         _%$%hd212603212682%_
                                         _%$%tl212604212684%_
                                         _%$%e212605212687%_
                                         _%$%hd212606212690%_
                                         _%$%tl212607212692%_
                                         _%$%e212608212695%_
                                         _%$%hd212609212698%_
                                         _%$%tl212610212700%_
                                         _%$%e212611212703%_
                                         _%$%hd212612212706%_
                                         _%$%tl212613212708%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl212607212692%_))
                                      (let ((_%$%e212614212711%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl212607212692%_))))
                                        (let ((_%$%tl212616212716%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e212614212711%_)))
                                              (_%$%hd212615212714%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e212614212711%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%hd212615212714%_))
                                              (let ((_%$%e212617212719%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd212615212714%_))))
                                                (let ((_%$%tl212619212724%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e212617212719%_)))
                                                      (_%$%hd212618212722%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e212617212719%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%$%hd212618212722%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%$%hd212618212722%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl212619212724%_))
                      (let ((_%$%e212620212727%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl212619212724%_))))
                        (let ((_%$%tl212622212732%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e212620212727%_)))
                              (_%$%hd212621212730%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e212620212727%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl212622212732%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl212616212716%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl212592212652%_))
                                      (_%__match214860214861%_
                                       _%$%e212587212639%_
                                       _%$%hd212588212642%_
                                       _%$%tl212589212644%_
                                       _%$%e212590212647%_
                                       _%$%hd212591212650%_
                                       _%$%tl212592212652%_
                                       _%$%e212593212655%_
                                       _%$%hd212594212658%_
                                       _%$%tl212595212660%_
                                       _%$%e212596212663%_
                                       _%$%hd212597212666%_
                                       _%$%tl212598212668%_
                                       _%$%e212599212671%_
                                       _%$%hd212600212674%_
                                       _%$%tl212601212676%_
                                       _%$%e212602212679%_
                                       _%$%hd212603212682%_
                                       _%$%tl212604212684%_
                                       _%$%e212605212687%_
                                       _%$%hd212606212690%_
                                       _%$%tl212607212692%_
                                       _%$%e212608212695%_
                                       _%$%hd212609212698%_
                                       _%$%tl212610212700%_
                                       _%$%e212611212703%_
                                       _%$%hd212612212706%_
                                       _%$%tl212613212708%_
                                       _%$%e212614212711%_
                                       _%$%hd212615212714%_
                                       _%$%tl212616212716%_
                                       _%$%e212617212719%_
                                       _%$%hd212618212722%_
                                       _%$%tl212619212724%_
                                       _%$%e212620212727%_
                                       _%$%hd212621212730%_
                                       _%$%tl212622212732%_)
                                      (_%__kont214735214736%_))
                                  (_%__kont214735214736%_))
                              (_%__kont214735214736%_))))
                      (_%__kont214735214736%_))
                  (_%__kont214735214736%_))
              (_%__kont214735214736%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont214735214736%_))))
                                      (_%__kont214735214736%_))))
                               (_%__match214762214763%_
                                (lambda (_%$%e212523212780%_
                                         _%$%hd212524212783%_
                                         _%$%tl212525212785%_
                                         _%__splice214729214730%_
                                         _%$%target212526212788%_
                                         _%$%tl212528212790%_)
                                  (letrec ((_%$%loop212529212793%_
                                            (lambda (_%$%hd212527212796%_
                                                     _%$%arg212533212798%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd212527212796%_))
                                                  (let ((_%$%e212530212800%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd212527212796%_))))
                                                    (let ((_%$%lp-tl212532212805%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e212530212800%_)))
                                                          (_%$%lp-hd212531212803%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e212530212800%_))))
                                                      (_%$%loop212529212793%_
                                                       _%$%lp-tl212532212805%_
                                                       (cons _%$%lp-hd212531212803%_
                                                             _%$%arg212533212798%_))))
                                                  (let ((_%$%arg212534212808%_
                                                         (reverse _%$%arg212533212798%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl212525212785%_))
                                                        (let ((_%$%e212535212810%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl212525212785%_))))
                  (let ((_%$%tl212537212815%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e212535212810%_)))
                        (_%$%hd212536212813%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e212535212810%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd212536212813%_))
                        (let ((_%$%e212538212818%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd212536212813%_))))
                          (let ((_%$%tl212540212823%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e212538212818%_)))
                                (_%$%hd212539212821%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e212538212818%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd212539212821%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq?
                                       '%#call
                                       _%$%hd212539212821%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl212540212823%_))
                                        (let ((_%$%e212541212826%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl212540212823%_))))
                                          (let ((_%$%tl212543212831%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e212541212826%_)))
                                                (_%$%hd212542212829%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e212541212826%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd212542212829%_))
                                                (let ((_%$%e212544212834%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd212542212829%_))))
                                                  (let ((_%$%tl212546212839%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e212544212834%_)))
                                                        (_%$%hd212545212837%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e212544212834%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd212545212837%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%$%hd212545212837%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl212546212839%_))
                        (let ((_%$%e212547212842%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl212546212839%_))))
                          (let ((_%$%tl212549212847%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e212547212842%_)))
                                (_%$%hd212548212845%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e212547212842%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl212549212847%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl212543212831%_))
                                    (let ((_%$%e212550212850%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%tl212543212831%_))))
                                      (let ((_%$%tl212552212855%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e212550212850%_)))
                                            (_%$%hd212551212853%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e212550212850%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%hd212551212853%_))
                                            (let ((_%$%e212553212858%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%hd212551212853%_))))
                                              (let ((_%$%tl212555212863%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e212553212858%_)))
                                                    (_%$%hd212554212861%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e212553212858%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%$%hd212554212861%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%$%hd212554212861%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl212555212863%_))
                                                            (let ((_%$%e212556212866%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl212555212863%_))))
                      (let ((_%$%tl212558212871%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e212556212866%_)))
                            (_%$%hd212557212869%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e212556212866%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl212558212871%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%$%tl212552212855%_))
                                (if (let ((__tmp215999
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%$%tl212552212855%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp215999 '1))
                                    (let ((_%__splice214731214732%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%$%tl212552212855%_
                                              '1))))
                                      (let ((_%$%tl212561212876%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice214731214732%_
                                                '1)))
                                            (_%$%target212559212874%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice214731214732%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl212561212876%_))
                                            (let ((_%$%e212568212879%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl212561212876%_))))
                                              (let ((_%$%tl212570212884%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e212568212879%_)))
                                                    (_%$%hd212569212882%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e212568212879%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%hd212569212882%_))
                                                    (let ((_%$%e212571212887%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd212569212882%_))))
                                                      (let ((_%$%tl212573212892%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e212571212887%_)))
                    (_%$%hd212572212890%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e212571212887%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%$%hd212572212890%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%$%hd212572212890%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl212573212892%_))
                            (let ((_%$%e212574212895%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl212573212892%_))))
                              (let ((_%$%tl212576212900%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e212574212895%_)))
                                    (_%$%hd212575212898%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e212574212895%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl212576212900%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl212570212884%_))
                                        (letrec ((_%$%loop212562212903%_
                                                  (lambda (_%$%hd212560212906%_
                                                           _%$%xarg212566212908%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd212560212906%_))
                                                        (let ((_%$%e212563212910%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd212560212906%_))))
                  (let ((_%$%lp-tl212565212915%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e212563212910%_)))
                        (_%$%lp-hd212564212913%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e212563212910%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd212564212913%_))
                        (let ((_%$%e212577212918%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%lp-hd212564212913%_))))
                          (let ((_%$%tl212579212923%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e212577212918%_)))
                                (_%$%hd212578212921%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e212577212918%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd212578212921%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%$%hd212578212921%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl212579212923%_))
                                        (let ((_%$%e212580212926%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl212579212923%_))))
                                          (let ((_%$%tl212582212931%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e212580212926%_)))
                                                (_%$%hd212581212929%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e212580212926%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl212582212931%_))
                                                (_%$%loop212562212903%_
                                                 _%$%lp-tl212565212915%_
                                                 (cons _%$%hd212581212929%_
                                                       _%$%xarg212566212908%_))
                                                (_%__match214832214833%_
                                                 _%$%e212523212780%_
                                                 _%$%hd212524212783%_
                                                 _%$%tl212525212785%_
                                                 _%$%e212535212810%_
                                                 _%$%hd212536212813%_
                                                 _%$%tl212537212815%_
                                                 _%$%e212538212818%_
                                                 _%$%hd212539212821%_
                                                 _%$%tl212540212823%_
                                                 _%$%e212541212826%_
                                                 _%$%hd212542212829%_
                                                 _%$%tl212543212831%_
                                                 _%$%e212544212834%_
                                                 _%$%hd212545212837%_
                                                 _%$%tl212546212839%_
                                                 _%$%e212547212842%_
                                                 _%$%hd212548212845%_
                                                 _%$%tl212549212847%_
                                                 _%$%e212550212850%_
                                                 _%$%hd212551212853%_
                                                 _%$%tl212552212855%_
                                                 _%$%e212553212858%_
                                                 _%$%hd212554212861%_
                                                 _%$%tl212555212863%_
                                                 _%$%e212556212866%_
                                                 _%$%hd212557212869%_
                                                 _%$%tl212558212871%_))))
                                        (_%__match214832214833%_
                                         _%$%e212523212780%_
                                         _%$%hd212524212783%_
                                         _%$%tl212525212785%_
                                         _%$%e212535212810%_
                                         _%$%hd212536212813%_
                                         _%$%tl212537212815%_
                                         _%$%e212538212818%_
                                         _%$%hd212539212821%_
                                         _%$%tl212540212823%_
                                         _%$%e212541212826%_
                                         _%$%hd212542212829%_
                                         _%$%tl212543212831%_
                                         _%$%e212544212834%_
                                         _%$%hd212545212837%_
                                         _%$%tl212546212839%_
                                         _%$%e212547212842%_
                                         _%$%hd212548212845%_
                                         _%$%tl212549212847%_
                                         _%$%e212550212850%_
                                         _%$%hd212551212853%_
                                         _%$%tl212552212855%_
                                         _%$%e212553212858%_
                                         _%$%hd212554212861%_
                                         _%$%tl212555212863%_
                                         _%$%e212556212866%_
                                         _%$%hd212557212869%_
                                         _%$%tl212558212871%_))
                                    (_%__match214832214833%_
                                     _%$%e212523212780%_
                                     _%$%hd212524212783%_
                                     _%$%tl212525212785%_
                                     _%$%e212535212810%_
                                     _%$%hd212536212813%_
                                     _%$%tl212537212815%_
                                     _%$%e212538212818%_
                                     _%$%hd212539212821%_
                                     _%$%tl212540212823%_
                                     _%$%e212541212826%_
                                     _%$%hd212542212829%_
                                     _%$%tl212543212831%_
                                     _%$%e212544212834%_
                                     _%$%hd212545212837%_
                                     _%$%tl212546212839%_
                                     _%$%e212547212842%_
                                     _%$%hd212548212845%_
                                     _%$%tl212549212847%_
                                     _%$%e212550212850%_
                                     _%$%hd212551212853%_
                                     _%$%tl212552212855%_
                                     _%$%e212553212858%_
                                     _%$%hd212554212861%_
                                     _%$%tl212555212863%_
                                     _%$%e212556212866%_
                                     _%$%hd212557212869%_
                                     _%$%tl212558212871%_))
                                (_%__match214832214833%_
                                 _%$%e212523212780%_
                                 _%$%hd212524212783%_
                                 _%$%tl212525212785%_
                                 _%$%e212535212810%_
                                 _%$%hd212536212813%_
                                 _%$%tl212537212815%_
                                 _%$%e212538212818%_
                                 _%$%hd212539212821%_
                                 _%$%tl212540212823%_
                                 _%$%e212541212826%_
                                 _%$%hd212542212829%_
                                 _%$%tl212543212831%_
                                 _%$%e212544212834%_
                                 _%$%hd212545212837%_
                                 _%$%tl212546212839%_
                                 _%$%e212547212842%_
                                 _%$%hd212548212845%_
                                 _%$%tl212549212847%_
                                 _%$%e212550212850%_
                                 _%$%hd212551212853%_
                                 _%$%tl212552212855%_
                                 _%$%e212553212858%_
                                 _%$%hd212554212861%_
                                 _%$%tl212555212863%_
                                 _%$%e212556212866%_
                                 _%$%hd212557212869%_
                                 _%$%tl212558212871%_))))
                        (_%__match214832214833%_
                         _%$%e212523212780%_
                         _%$%hd212524212783%_
                         _%$%tl212525212785%_
                         _%$%e212535212810%_
                         _%$%hd212536212813%_
                         _%$%tl212537212815%_
                         _%$%e212538212818%_
                         _%$%hd212539212821%_
                         _%$%tl212540212823%_
                         _%$%e212541212826%_
                         _%$%hd212542212829%_
                         _%$%tl212543212831%_
                         _%$%e212544212834%_
                         _%$%hd212545212837%_
                         _%$%tl212546212839%_
                         _%$%e212547212842%_
                         _%$%hd212548212845%_
                         _%$%tl212549212847%_
                         _%$%e212550212850%_
                         _%$%hd212551212853%_
                         _%$%tl212552212855%_
                         _%$%e212553212858%_
                         _%$%hd212554212861%_
                         _%$%tl212555212863%_
                         _%$%e212556212866%_
                         _%$%hd212557212869%_
                         _%$%tl212558212871%_))))
                (let ((_%$%xarg212567212934%_
                       (reverse _%$%xarg212566212908%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl212537212815%_))
                      (let ((_%$%g212517212936%_ _%$%hd212575212898%_)
                            (_%$%g212518212937%_ _%$%xarg212567212934%_)
                            (_%$%g212519212938%_ _%$%hd212557212869%_)
                            (_%$%g212520212939%_ _%$%hd212548212845%_)
                            (_%$%g212521212940%_ _%$%tl212528212790%_)
                            (_%$%g212522212941%_ _%$%arg212534212808%_))
                        (if (and (let ((__tmp216000
                                        (let ((__tmp216001
                                               (lambda (_%$%g212984212987%_
                                                        _%$%g212985212989%_)
                                                 (cons _%$%g212984212987%_
                                                       _%$%g212985212989%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp216001
                                           '()
                                           _%$%g212522212941%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp216000))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%$%g212521212940%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%$%g212520212939%_
                                    'apply))
                                 (let ((__tmp216004
                                        (length (let ((__tmp216005
                                                       (lambda (_%$%g212991212994%_
                                                                _%$%g212992212996%_)
                                                         (cons _%$%g212991212994%_
                                                               _%$%g212992212996%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp216005
                                                   '()
                                                   _%$%g212522212941%_))))
                                       (__tmp216002
                                        (length (let ((__tmp216003
                                                       (lambda (_%$%g212998213001%_
                                                                _%$%g212999213003%_)
                                                         (cons _%$%g212998213001%_
                                                               _%$%g212999213003%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp216003
                                                   '()
                                                   _%$%g212518212937%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp216004 __tmp216002))
                                 (let ((__tmp216008
                                        (let ((__tmp216009
                                               (lambda (_%$%g213005213008%_
                                                        _%$%g213006213010%_)
                                                 (cons _%$%g213005213008%_
                                                       _%$%g213006213010%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp216009
                                           '()
                                           _%$%g212522212941%_)))
                                       (__tmp216006
                                        (let ((__tmp216007
                                               (lambda (_%$%g213012213015%_
                                                        _%$%g213013213017%_)
                                                 (cons _%$%g213012213015%_
                                                       _%$%g213013213017%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp216007
                                           '()
                                           _%$%g212518212937%_))))
                                   (declare (not safe))
                                   (andmap__1
                                    gx#free-identifier=?
                                    __tmp216008
                                    __tmp216006))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g212521212940%_
                                    _%$%g212517212936%_))
                                 (not (let ((__tmp216013
                                             (lambda (_%$%g213019213021%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%$%g213019213021%_
                                                  _%$%g212519212938%_))))
                                            (__tmp216010
                                             (let ((__tmp216012
                                                    (lambda (_%$%g213023213026%_
                                                             _%$%g213024213028%_)
                                                      (cons _%$%g213023213026%_
                                                            _%$%g213024213028%_)))
                                                   (__tmp216011
                                                    (cons _%$%g212521212940%_
                                                          '())))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp216012
                                                __tmp216011
                                                _%$%g212522212941%_))))
                                        (declare (not safe))
                                        (__find __tmp216013 __tmp216010))))
                            (_%__kont214727214728%_
                             _%$%g212517212936%_
                             _%$%g212518212937%_
                             _%$%g212519212938%_
                             _%$%g212520212939%_
                             _%$%g212521212940%_
                             _%$%g212522212941%_)
                            (_%__match214832214833%_
                             _%$%e212523212780%_
                             _%$%hd212524212783%_
                             _%$%tl212525212785%_
                             _%$%e212535212810%_
                             _%$%hd212536212813%_
                             _%$%tl212537212815%_
                             _%$%e212538212818%_
                             _%$%hd212539212821%_
                             _%$%tl212540212823%_
                             _%$%e212541212826%_
                             _%$%hd212542212829%_
                             _%$%tl212543212831%_
                             _%$%e212544212834%_
                             _%$%hd212545212837%_
                             _%$%tl212546212839%_
                             _%$%e212547212842%_
                             _%$%hd212548212845%_
                             _%$%tl212549212847%_
                             _%$%e212550212850%_
                             _%$%hd212551212853%_
                             _%$%tl212552212855%_
                             _%$%e212553212858%_
                             _%$%hd212554212861%_
                             _%$%tl212555212863%_
                             _%$%e212556212866%_
                             _%$%hd212557212869%_
                             _%$%tl212558212871%_)))
                      (_%__match214832214833%_
                       _%$%e212523212780%_
                       _%$%hd212524212783%_
                       _%$%tl212525212785%_
                       _%$%e212535212810%_
                       _%$%hd212536212813%_
                       _%$%tl212537212815%_
                       _%$%e212538212818%_
                       _%$%hd212539212821%_
                       _%$%tl212540212823%_
                       _%$%e212541212826%_
                       _%$%hd212542212829%_
                       _%$%tl212543212831%_
                       _%$%e212544212834%_
                       _%$%hd212545212837%_
                       _%$%tl212546212839%_
                       _%$%e212547212842%_
                       _%$%hd212548212845%_
                       _%$%tl212549212847%_
                       _%$%e212550212850%_
                       _%$%hd212551212853%_
                       _%$%tl212552212855%_
                       _%$%e212553212858%_
                       _%$%hd212554212861%_
                       _%$%tl212555212863%_
                       _%$%e212556212866%_
                       _%$%hd212557212869%_
                       _%$%tl212558212871%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop212562212903%_
                                           _%$%target212559212874%_
                                           '()))
                                        (_%__match214832214833%_
                                         _%$%e212523212780%_
                                         _%$%hd212524212783%_
                                         _%$%tl212525212785%_
                                         _%$%e212535212810%_
                                         _%$%hd212536212813%_
                                         _%$%tl212537212815%_
                                         _%$%e212538212818%_
                                         _%$%hd212539212821%_
                                         _%$%tl212540212823%_
                                         _%$%e212541212826%_
                                         _%$%hd212542212829%_
                                         _%$%tl212543212831%_
                                         _%$%e212544212834%_
                                         _%$%hd212545212837%_
                                         _%$%tl212546212839%_
                                         _%$%e212547212842%_
                                         _%$%hd212548212845%_
                                         _%$%tl212549212847%_
                                         _%$%e212550212850%_
                                         _%$%hd212551212853%_
                                         _%$%tl212552212855%_
                                         _%$%e212553212858%_
                                         _%$%hd212554212861%_
                                         _%$%tl212555212863%_
                                         _%$%e212556212866%_
                                         _%$%hd212557212869%_
                                         _%$%tl212558212871%_))
                                    (_%__match214832214833%_
                                     _%$%e212523212780%_
                                     _%$%hd212524212783%_
                                     _%$%tl212525212785%_
                                     _%$%e212535212810%_
                                     _%$%hd212536212813%_
                                     _%$%tl212537212815%_
                                     _%$%e212538212818%_
                                     _%$%hd212539212821%_
                                     _%$%tl212540212823%_
                                     _%$%e212541212826%_
                                     _%$%hd212542212829%_
                                     _%$%tl212543212831%_
                                     _%$%e212544212834%_
                                     _%$%hd212545212837%_
                                     _%$%tl212546212839%_
                                     _%$%e212547212842%_
                                     _%$%hd212548212845%_
                                     _%$%tl212549212847%_
                                     _%$%e212550212850%_
                                     _%$%hd212551212853%_
                                     _%$%tl212552212855%_
                                     _%$%e212553212858%_
                                     _%$%hd212554212861%_
                                     _%$%tl212555212863%_
                                     _%$%e212556212866%_
                                     _%$%hd212557212869%_
                                     _%$%tl212558212871%_))))
                            (_%__match214832214833%_
                             _%$%e212523212780%_
                             _%$%hd212524212783%_
                             _%$%tl212525212785%_
                             _%$%e212535212810%_
                             _%$%hd212536212813%_
                             _%$%tl212537212815%_
                             _%$%e212538212818%_
                             _%$%hd212539212821%_
                             _%$%tl212540212823%_
                             _%$%e212541212826%_
                             _%$%hd212542212829%_
                             _%$%tl212543212831%_
                             _%$%e212544212834%_
                             _%$%hd212545212837%_
                             _%$%tl212546212839%_
                             _%$%e212547212842%_
                             _%$%hd212548212845%_
                             _%$%tl212549212847%_
                             _%$%e212550212850%_
                             _%$%hd212551212853%_
                             _%$%tl212552212855%_
                             _%$%e212553212858%_
                             _%$%hd212554212861%_
                             _%$%tl212555212863%_
                             _%$%e212556212866%_
                             _%$%hd212557212869%_
                             _%$%tl212558212871%_))
                        (_%__match214832214833%_
                         _%$%e212523212780%_
                         _%$%hd212524212783%_
                         _%$%tl212525212785%_
                         _%$%e212535212810%_
                         _%$%hd212536212813%_
                         _%$%tl212537212815%_
                         _%$%e212538212818%_
                         _%$%hd212539212821%_
                         _%$%tl212540212823%_
                         _%$%e212541212826%_
                         _%$%hd212542212829%_
                         _%$%tl212543212831%_
                         _%$%e212544212834%_
                         _%$%hd212545212837%_
                         _%$%tl212546212839%_
                         _%$%e212547212842%_
                         _%$%hd212548212845%_
                         _%$%tl212549212847%_
                         _%$%e212550212850%_
                         _%$%hd212551212853%_
                         _%$%tl212552212855%_
                         _%$%e212553212858%_
                         _%$%hd212554212861%_
                         _%$%tl212555212863%_
                         _%$%e212556212866%_
                         _%$%hd212557212869%_
                         _%$%tl212558212871%_))
                    (_%__match214832214833%_
                     _%$%e212523212780%_
                     _%$%hd212524212783%_
                     _%$%tl212525212785%_
                     _%$%e212535212810%_
                     _%$%hd212536212813%_
                     _%$%tl212537212815%_
                     _%$%e212538212818%_
                     _%$%hd212539212821%_
                     _%$%tl212540212823%_
                     _%$%e212541212826%_
                     _%$%hd212542212829%_
                     _%$%tl212543212831%_
                     _%$%e212544212834%_
                     _%$%hd212545212837%_
                     _%$%tl212546212839%_
                     _%$%e212547212842%_
                     _%$%hd212548212845%_
                     _%$%tl212549212847%_
                     _%$%e212550212850%_
                     _%$%hd212551212853%_
                     _%$%tl212552212855%_
                     _%$%e212553212858%_
                     _%$%hd212554212861%_
                     _%$%tl212555212863%_
                     _%$%e212556212866%_
                     _%$%hd212557212869%_
                     _%$%tl212558212871%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match214832214833%_
                                                     _%$%e212523212780%_
                                                     _%$%hd212524212783%_
                                                     _%$%tl212525212785%_
                                                     _%$%e212535212810%_
                                                     _%$%hd212536212813%_
                                                     _%$%tl212537212815%_
                                                     _%$%e212538212818%_
                                                     _%$%hd212539212821%_
                                                     _%$%tl212540212823%_
                                                     _%$%e212541212826%_
                                                     _%$%hd212542212829%_
                                                     _%$%tl212543212831%_
                                                     _%$%e212544212834%_
                                                     _%$%hd212545212837%_
                                                     _%$%tl212546212839%_
                                                     _%$%e212547212842%_
                                                     _%$%hd212548212845%_
                                                     _%$%tl212549212847%_
                                                     _%$%e212550212850%_
                                                     _%$%hd212551212853%_
                                                     _%$%tl212552212855%_
                                                     _%$%e212553212858%_
                                                     _%$%hd212554212861%_
                                                     _%$%tl212555212863%_
                                                     _%$%e212556212866%_
                                                     _%$%hd212557212869%_
                                                     _%$%tl212558212871%_))))
                                            (_%__match214832214833%_
                                             _%$%e212523212780%_
                                             _%$%hd212524212783%_
                                             _%$%tl212525212785%_
                                             _%$%e212535212810%_
                                             _%$%hd212536212813%_
                                             _%$%tl212537212815%_
                                             _%$%e212538212818%_
                                             _%$%hd212539212821%_
                                             _%$%tl212540212823%_
                                             _%$%e212541212826%_
                                             _%$%hd212542212829%_
                                             _%$%tl212543212831%_
                                             _%$%e212544212834%_
                                             _%$%hd212545212837%_
                                             _%$%tl212546212839%_
                                             _%$%e212547212842%_
                                             _%$%hd212548212845%_
                                             _%$%tl212549212847%_
                                             _%$%e212550212850%_
                                             _%$%hd212551212853%_
                                             _%$%tl212552212855%_
                                             _%$%e212553212858%_
                                             _%$%hd212554212861%_
                                             _%$%tl212555212863%_
                                             _%$%e212556212866%_
                                             _%$%hd212557212869%_
                                             _%$%tl212558212871%_))))
                                    (_%__match214832214833%_
                                     _%$%e212523212780%_
                                     _%$%hd212524212783%_
                                     _%$%tl212525212785%_
                                     _%$%e212535212810%_
                                     _%$%hd212536212813%_
                                     _%$%tl212537212815%_
                                     _%$%e212538212818%_
                                     _%$%hd212539212821%_
                                     _%$%tl212540212823%_
                                     _%$%e212541212826%_
                                     _%$%hd212542212829%_
                                     _%$%tl212543212831%_
                                     _%$%e212544212834%_
                                     _%$%hd212545212837%_
                                     _%$%tl212546212839%_
                                     _%$%e212547212842%_
                                     _%$%hd212548212845%_
                                     _%$%tl212549212847%_
                                     _%$%e212550212850%_
                                     _%$%hd212551212853%_
                                     _%$%tl212552212855%_
                                     _%$%e212553212858%_
                                     _%$%hd212554212861%_
                                     _%$%tl212555212863%_
                                     _%$%e212556212866%_
                                     _%$%hd212557212869%_
                                     _%$%tl212558212871%_))
                                (_%__match214832214833%_
                                 _%$%e212523212780%_
                                 _%$%hd212524212783%_
                                 _%$%tl212525212785%_
                                 _%$%e212535212810%_
                                 _%$%hd212536212813%_
                                 _%$%tl212537212815%_
                                 _%$%e212538212818%_
                                 _%$%hd212539212821%_
                                 _%$%tl212540212823%_
                                 _%$%e212541212826%_
                                 _%$%hd212542212829%_
                                 _%$%tl212543212831%_
                                 _%$%e212544212834%_
                                 _%$%hd212545212837%_
                                 _%$%tl212546212839%_
                                 _%$%e212547212842%_
                                 _%$%hd212548212845%_
                                 _%$%tl212549212847%_
                                 _%$%e212550212850%_
                                 _%$%hd212551212853%_
                                 _%$%tl212552212855%_
                                 _%$%e212553212858%_
                                 _%$%hd212554212861%_
                                 _%$%tl212555212863%_
                                 _%$%e212556212866%_
                                 _%$%hd212557212869%_
                                 _%$%tl212558212871%_))
                            (_%__kont214735214736%_))))
                    (_%__kont214735214736%_))
                (_%__kont214735214736%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont214735214736%_))))
                                            (_%__kont214735214736%_))))
                                    (_%__kont214735214736%_))
                                (_%__kont214735214736%_))))
                        (_%__kont214735214736%_))
                    (_%__kont214735214736%_))
                (_%__kont214735214736%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont214735214736%_))))
                                        (_%__kont214735214736%_))
                                    (_%__kont214735214736%_))
                                (_%__kont214735214736%_))))
                        (_%__kont214735214736%_))))
                (_%__kont214735214736%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%loop212529212793%_
                                     _%$%target212526212788%_
                                     '()))))
                               (_%__match214750214751%_
                                (lambda (_%$%e212475213036%_
                                         _%$%hd212476213039%_
                                         _%$%tl212477213041%_
                                         _%__splice214723214724%_
                                         _%$%target212478213044%_
                                         _%$%tl212480213046%_)
                                  (letrec ((_%$%loop212481213049%_
                                            (lambda (_%$%hd212479213052%_
                                                     _%$%arg212485213054%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd212479213052%_))
                                                  (let ((_%$%e212482213056%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd212479213052%_))))
                                                    (let ((_%$%lp-tl212484213061%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e212482213056%_)))
                                                          (_%$%lp-hd212483213059%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e212482213056%_))))
                                                      (_%$%loop212481213049%_
                                                       _%$%lp-tl212484213061%_
                                                       (cons _%$%lp-hd212483213059%_
                                                             _%$%arg212485213054%_))))
                                                  (let ((_%$%arg212486213064%_
                                                         (reverse _%$%arg212485213054%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl212477213041%_))
                                                        (let ((_%$%e212487213066%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl212477213041%_))))
                  (let ((_%$%tl212489213071%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e212487213066%_)))
                        (_%$%hd212488213069%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e212487213066%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd212488213069%_))
                        (let ((_%$%e212490213074%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd212488213069%_))))
                          (let ((_%$%tl212492213079%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e212490213074%_)))
                                (_%$%hd212491213077%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e212490213074%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd212491213077%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq?
                                       '%#call
                                       _%$%hd212491213077%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl212492213079%_))
                                        (let ((_%$%e212493213082%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl212492213079%_))))
                                          (let ((_%$%tl212495213087%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e212493213082%_)))
                                                (_%$%hd212494213085%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e212493213082%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd212494213085%_))
                                                (let ((_%$%e212496213090%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd212494213085%_))))
                                                  (let ((_%$%tl212498213095%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e212496213090%_)))
                                                        (_%$%hd212497213093%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e212496213090%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd212497213093%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%$%hd212497213093%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl212498213095%_))
                        (let ((_%$%e212499213098%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl212498213095%_))))
                          (let ((_%$%tl212501213103%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e212499213098%_)))
                                (_%$%hd212500213101%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e212499213098%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl212501213103%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%$%tl212495213087%_))
                                    (let ((_%__splice214725214726%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%$%tl212495213087%_
                                              '0))))
                                      (let ((_%$%tl212504213108%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice214725214726%_
                                                '1)))
                                            (_%$%target212502213106%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice214725214726%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl212504213108%_))
                                            (letrec ((_%$%loop212505213111%_
                                                      (lambda (_%$%hd212503213114%_
                                                               _%$%xarg212509213116%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%hd212503213114%_))
                                                            (let ((_%$%e212506213118%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%hd212503213114%_))))
                      (let ((_%$%lp-tl212508213123%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e212506213118%_)))
                            (_%$%lp-hd212507213121%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e212506213118%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%lp-hd212507213121%_))
                            (let ((_%$%e212511213126%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%lp-hd212507213121%_))))
                              (let ((_%$%tl212513213131%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e212511213126%_)))
                                    (_%$%hd212512213129%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e212511213126%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd212512213129%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%$%hd212512213129%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl212513213131%_))
                                            (let ((_%$%e212514213134%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl212513213131%_))))
                                              (let ((_%$%tl212516213139%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e212514213134%_)))
                                                    (_%$%hd212515213137%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e212514213134%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl212516213139%_))
                                                    (_%$%loop212505213111%_
                                                     _%$%lp-tl212508213123%_
                                                     (cons _%$%hd212515213137%_
                                                           _%$%xarg212509213116%_))
                                                    (_%__match214762214763%_
                                                     _%$%e212475213036%_
                                                     _%$%hd212476213039%_
                                                     _%$%tl212477213041%_
                                                     _%__splice214723214724%_
                                                     _%$%target212478213044%_
                                                     _%$%tl212480213046%_))))
                                            (_%__match214762214763%_
                                             _%$%e212475213036%_
                                             _%$%hd212476213039%_
                                             _%$%tl212477213041%_
                                             _%__splice214723214724%_
                                             _%$%target212478213044%_
                                             _%$%tl212480213046%_))
                                        (_%__match214762214763%_
                                         _%$%e212475213036%_
                                         _%$%hd212476213039%_
                                         _%$%tl212477213041%_
                                         _%__splice214723214724%_
                                         _%$%target212478213044%_
                                         _%$%tl212480213046%_))
                                    (_%__match214762214763%_
                                     _%$%e212475213036%_
                                     _%$%hd212476213039%_
                                     _%$%tl212477213041%_
                                     _%__splice214723214724%_
                                     _%$%target212478213044%_
                                     _%$%tl212480213046%_))))
                            (_%__match214762214763%_
                             _%$%e212475213036%_
                             _%$%hd212476213039%_
                             _%$%tl212477213041%_
                             _%__splice214723214724%_
                             _%$%target212478213044%_
                             _%$%tl212480213046%_))))
                    (let ((_%$%xarg212510213142%_
                           (reverse _%$%xarg212509213116%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl212489213071%_))
                          (let ((_%$%g212472213144%_ _%$%xarg212510213142%_)
                                (_%$%g212473213145%_ _%$%hd212500213101%_)
                                (_%$%g212474213146%_ _%$%arg212486213064%_))
                            (if (and (let ((__tmp216014
                                            (let ((__tmp216015
                                                   (lambda (_%$%g213174213177%_
                                                            _%$%g213175213179%_)
                                                     (cons _%$%g213174213177%_
                                                           _%$%g213175213179%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp216015
                                               '()
                                               _%$%g212474213146%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp216014))
                                     (let ((__tmp216018
                                            (length (let ((__tmp216019
                                                           (lambda (_%$%g213181213184%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g213182213186%_)
                     (cons _%$%g213181213184%_ _%$%g213182213186%_))))
              (declare (not safe))
              (foldr__0 __tmp216019 '() _%$%g212474213146%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp216016
                                            (length (let ((__tmp216017
                                                           (lambda (_%$%g213188213191%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g213189213193%_)
                     (cons _%$%g213188213191%_ _%$%g213189213193%_))))
              (declare (not safe))
              (foldr__0 __tmp216017 '() _%$%g212472213144%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp216018 __tmp216016))
                                     (let ((__tmp216022
                                            (let ((__tmp216023
                                                   (lambda (_%$%g213195213198%_
                                                            _%$%g213196213200%_)
                                                     (cons _%$%g213195213198%_
                                                           _%$%g213196213200%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp216023
                                               '()
                                               _%$%g212474213146%_)))
                                           (__tmp216020
                                            (let ((__tmp216021
                                                   (lambda (_%$%g213202213205%_
                                                            _%$%g213203213207%_)
                                                     (cons _%$%g213202213205%_
                                                           _%$%g213203213207%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp216021
                                               '()
                                               _%$%g212472213144%_))))
                                       (declare (not safe))
                                       (andmap__1
                                        gx#free-identifier=?
                                        __tmp216022
                                        __tmp216020))
                                     (not (let ((__tmp216026
                                                 (lambda (_%$%g213209213211%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%$%g213209213211%_
                                                      _%$%g212473213145%_))))
                                                (__tmp216024
                                                 (let ((__tmp216025
                                                        (lambda (_%$%g213213213216%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g213214213218%_)
                  (cons _%$%g213213213216%_ _%$%g213214213218%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp216025
                                                    '()
                                                    _%$%g212474213146%_))))
                                            (declare (not safe))
                                            (__find __tmp216026 __tmp216024))))
                                (_%__kont214721214722%_
                                 _%$%g212472213144%_
                                 _%$%g212473213145%_
                                 _%$%g212474213146%_)
                                (_%__match214762214763%_
                                 _%$%e212475213036%_
                                 _%$%hd212476213039%_
                                 _%$%tl212477213041%_
                                 _%__splice214723214724%_
                                 _%$%target212478213044%_
                                 _%$%tl212480213046%_)))
                          (_%__match214762214763%_
                           _%$%e212475213036%_
                           _%$%hd212476213039%_
                           _%$%tl212477213041%_
                           _%__splice214723214724%_
                           _%$%target212478213044%_
                           _%$%tl212480213046%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop212505213111%_
                                               _%$%target212502213106%_
                                               '()))
                                            (_%__match214762214763%_
                                             _%$%e212475213036%_
                                             _%$%hd212476213039%_
                                             _%$%tl212477213041%_
                                             _%__splice214723214724%_
                                             _%$%target212478213044%_
                                             _%$%tl212480213046%_))))
                                    (_%__match214762214763%_
                                     _%$%e212475213036%_
                                     _%$%hd212476213039%_
                                     _%$%tl212477213041%_
                                     _%__splice214723214724%_
                                     _%$%target212478213044%_
                                     _%$%tl212480213046%_))
                                (_%__match214762214763%_
                                 _%$%e212475213036%_
                                 _%$%hd212476213039%_
                                 _%$%tl212477213041%_
                                 _%__splice214723214724%_
                                 _%$%target212478213044%_
                                 _%$%tl212480213046%_))))
                        (_%__match214762214763%_
                         _%$%e212475213036%_
                         _%$%hd212476213039%_
                         _%$%tl212477213041%_
                         _%__splice214723214724%_
                         _%$%target212478213044%_
                         _%$%tl212480213046%_))
                    (_%__match214762214763%_
                     _%$%e212475213036%_
                     _%$%hd212476213039%_
                     _%$%tl212477213041%_
                     _%__splice214723214724%_
                     _%$%target212478213044%_
                     _%$%tl212480213046%_))
                (_%__match214762214763%_
                 _%$%e212475213036%_
                 _%$%hd212476213039%_
                 _%$%tl212477213041%_
                 _%__splice214723214724%_
                 _%$%target212478213044%_
                 _%$%tl212480213046%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match214762214763%_
                                                 _%$%e212475213036%_
                                                 _%$%hd212476213039%_
                                                 _%$%tl212477213041%_
                                                 _%__splice214723214724%_
                                                 _%$%target212478213044%_
                                                 _%$%tl212480213046%_))))
                                        (_%__match214762214763%_
                                         _%$%e212475213036%_
                                         _%$%hd212476213039%_
                                         _%$%tl212477213041%_
                                         _%__splice214723214724%_
                                         _%$%target212478213044%_
                                         _%$%tl212480213046%_))
                                    (_%__match214762214763%_
                                     _%$%e212475213036%_
                                     _%$%hd212476213039%_
                                     _%$%tl212477213041%_
                                     _%__splice214723214724%_
                                     _%$%target212478213044%_
                                     _%$%tl212480213046%_))
                                (_%__match214762214763%_
                                 _%$%e212475213036%_
                                 _%$%hd212476213039%_
                                 _%$%tl212477213041%_
                                 _%__splice214723214724%_
                                 _%$%target212478213044%_
                                 _%$%tl212480213046%_))))
                        (_%__match214762214763%_
                         _%$%e212475213036%_
                         _%$%hd212476213039%_
                         _%$%tl212477213041%_
                         _%__splice214723214724%_
                         _%$%target212478213044%_
                         _%$%tl212480213046%_))))
                (_%__match214762214763%_
                 _%$%e212475213036%_
                 _%$%hd212476213039%_
                 _%$%tl212477213041%_
                 _%__splice214723214724%_
                 _%$%target212478213044%_
                 _%$%tl212480213046%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%loop212481213049%_
                                     _%$%target212478213044%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx214719214720%_))
                              (let ((_%$%e212475213036%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx214719214720%_))))
                                (let ((_%$%tl212477213041%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e212475213036%_)))
                                      (_%$%hd212476213039%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e212475213036%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd212476213039%_))
                                      (let ((_%__splice214723214724%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%hd212476213039%_
                                                '0))))
                                        (let ((_%$%tl212480213046%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice214723214724%_
                                                  '1)))
                                              (_%$%target212478213044%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice214723214724%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl212480213046%_))
                                              (_%__match214750214751%_
                                               _%$%e212475213036%_
                                               _%$%hd212476213039%_
                                               _%$%tl212477213041%_
                                               _%__splice214723214724%_
                                               _%$%target212478213044%_
                                               _%$%tl212480213046%_)
                                              (_%__match214762214763%_
                                               _%$%e212475213036%_
                                               _%$%hd212476213039%_
                                               _%$%tl212477213041%_
                                               _%__splice214723214724%_
                                               _%$%target212478213044%_
                                               _%$%tl212480213046%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl212477213041%_))
                                          (let ((_%$%e212590212647%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl212477213041%_))))
                                            (let ((_%$%tl212592212652%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e212590212647%_)))
                                                  (_%$%hd212591212650%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e212590212647%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd212591212650%_))
                                                  (let ((_%$%e212593212655%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd212591212650%_))))
                                                    (let ((_%$%tl212595212660%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e212593212655%_)))
                                                          (_%$%hd212594212658%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e212593212655%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd212594212658%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%$%hd212594212658%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl212595212660%_))
                          (let ((_%$%e212596212663%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl212595212660%_))))
                            (let ((_%$%tl212598212668%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e212596212663%_)))
                                  (_%$%hd212597212666%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e212596212663%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd212597212666%_))
                                  (let ((_%$%e212599212671%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd212597212666%_))))
                                    (let ((_%$%tl212601212676%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e212599212671%_)))
                                          (_%$%hd212600212674%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e212599212671%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd212600212674%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd212600212674%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl212601212676%_))
                                                  (let ((_%$%e212602212679%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl212601212676%_))))
                                                    (let ((_%$%tl212604212684%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e212602212679%_)))
                                                          (_%$%hd212603212682%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e212602212679%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl212604212684%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl212598212668%_))
                      (let ((_%$%e212605212687%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl212598212668%_))))
                        (let ((_%$%tl212607212692%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e212605212687%_)))
                              (_%$%hd212606212690%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e212605212687%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd212606212690%_))
                              (let ((_%$%e212608212695%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd212606212690%_))))
                                (let ((_%$%tl212610212700%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e212608212695%_)))
                                      (_%$%hd212609212698%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e212608212695%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd212609212698%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd212609212698%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl212610212700%_))
                                              (let ((_%$%e212611212703%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl212610212700%_))))
                                                (let ((_%$%tl212613212708%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e212611212703%_)))
                                                      (_%$%hd212612212706%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e212611212703%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl212613212708%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl212607212692%_))
                                                          (let ((_%$%e212614212711%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl212607212692%_))))
                    (let ((_%$%tl212616212716%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e212614212711%_)))
                          (_%$%hd212615212714%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e212614212711%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd212615212714%_))
                          (let ((_%$%e212617212719%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd212615212714%_))))
                            (let ((_%$%tl212619212724%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e212617212719%_)))
                                  (_%$%hd212618212722%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e212617212719%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%$%hd212618212722%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#ref
                                         _%$%hd212618212722%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl212619212724%_))
                                          (let ((_%$%e212620212727%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl212619212724%_))))
                                            (let ((_%$%tl212622212732%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e212620212727%_)))
                                                  (_%$%hd212621212730%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e212620212727%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl212622212732%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl212616212716%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl212592212652%_))
                                                          (_%__match214860214861%_
                                                           _%$%e212475213036%_
                                                           _%$%hd212476213039%_
                                                           _%$%tl212477213041%_
                                                           _%$%e212590212647%_
                                                           _%$%hd212591212650%_
                                                           _%$%tl212592212652%_
                                                           _%$%e212593212655%_
                                                           _%$%hd212594212658%_
                                                           _%$%tl212595212660%_
                                                           _%$%e212596212663%_
                                                           _%$%hd212597212666%_
                                                           _%$%tl212598212668%_
                                                           _%$%e212599212671%_
                                                           _%$%hd212600212674%_
                                                           _%$%tl212601212676%_
                                                           _%$%e212602212679%_
                                                           _%$%hd212603212682%_
                                                           _%$%tl212604212684%_
                                                           _%$%e212605212687%_
                                                           _%$%hd212606212690%_
                                                           _%$%tl212607212692%_
                                                           _%$%e212608212695%_
                                                           _%$%hd212609212698%_
                                                           _%$%tl212610212700%_
                                                           _%$%e212611212703%_
                                                           _%$%hd212612212706%_
                                                           _%$%tl212613212708%_
                                                           _%$%e212614212711%_
                                                           _%$%hd212615212714%_
                                                           _%$%tl212616212716%_
                                                           _%$%e212617212719%_
                                                           _%$%hd212618212722%_
                                                           _%$%tl212619212724%_
                                                           _%$%e212620212727%_
                                                           _%$%hd212621212730%_
                                                           _%$%tl212622212732%_)
                                                          (_%__kont214735214736%_))
                                                      (_%__kont214735214736%_))
                                                  (_%__kont214735214736%_))))
                                          (_%__kont214735214736%_))
                                      (_%__kont214735214736%_))
                                  (_%__kont214735214736%_))))
                          (_%__kont214735214736%_))))
                  (_%__kont214735214736%_))
              (_%__kont214735214736%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont214735214736%_))
                                          (_%__kont214735214736%_))
                                      (_%__kont214735214736%_))))
                              (_%__kont214735214736%_))))
                      (_%__kont214735214736%_))
                  (_%__kont214735214736%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont214735214736%_))
                                              (_%__kont214735214736%_))
                                          (_%__kont214735214736%_))))
                                  (_%__kont214735214736%_))))
                          (_%__kont214735214736%_))
                      (_%__kont214735214736%_))
                  (_%__kont214735214736%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont214735214736%_))))
                                          (_%__kont214735214736%_)))))
                              (_%__kont214735214736%_)))))))
                 (_%dispatch-case-e211785%_
                  (lambda (_%hd211932%_ _%body211933%_)
                    (let* ((_%form211935%_
                            (cons _%hd211932%_ (cons _%body211933%_ '())))
                           (_%__stx214863214864%_ _%form211935%_)
                           (_%$%g211939212063%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx214863214864%_)))))
                      (let ((_%__kont214865214866%_
                             (lambda (_%$%g211941212428%_
                                      _%$%g211942212429%_
                                      _%$%g211943212430%_)
                               (let ((__tmp216027
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%$%g211942212429%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self211781%_
                                  __tmp216027))))
                            (_%__kont214871214872%_
                             (lambda (_%$%g211986212280%_
                                      _%$%g211987212281%_
                                      _%$%g211988212282%_
                                      _%$%g211989212283%_)
                               (let ((__tmp216028
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%$%g211986212280%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self211781%_
                                  __tmp216028))))
                            (_%__kont214875214876%_
                             (lambda (_%$%g212026212148%_
                                      _%$%g212027212149%_
                                      _%$%g212028212150%_)
                               (let ((__tmp216029
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%$%g212026212148%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self211781%_
                                  __tmp216029)))))
                        (let* ((_%__match214972214973%_
                                (lambda (_%$%e212029212068%_
                                         _%$%hd212030212071%_
                                         _%$%tl212031212073%_
                                         _%$%e212032212076%_
                                         _%$%hd212033212079%_
                                         _%$%tl212034212081%_
                                         _%$%e212035212084%_
                                         _%$%hd212036212087%_
                                         _%$%tl212037212089%_
                                         _%$%e212038212092%_
                                         _%$%hd212039212095%_
                                         _%$%tl212040212097%_
                                         _%$%e212041212100%_
                                         _%$%hd212042212103%_
                                         _%$%tl212043212105%_
                                         _%$%e212044212108%_
                                         _%$%hd212045212111%_
                                         _%$%tl212046212113%_
                                         _%$%e212047212116%_
                                         _%$%hd212048212119%_
                                         _%$%tl212049212121%_
                                         _%$%e212050212124%_
                                         _%$%hd212051212127%_
                                         _%$%tl212052212129%_
                                         _%$%e212053212132%_
                                         _%$%hd212054212135%_
                                         _%$%tl212055212137%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl212049212121%_))
                                      (let ((_%$%e212056212140%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl212049212121%_))))
                                        (let ((_%$%tl212058212145%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e212056212140%_)))
                                              (_%$%hd212057212143%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e212056212140%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl212058212145%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl212034212081%_))
                                                  (_%__kont214875214876%_
                                                   _%$%hd212054212135%_
                                                   _%$%hd212045212111%_
                                                   _%$%hd212030212071%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g211939212063%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g211939212063%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g211939212063%_)))))
                               (_%__match214902214903%_
                                (lambda (_%$%e211990212186%_
                                         _%$%hd211991212189%_
                                         _%$%tl211992212191%_
                                         _%__splice214873214874%_
                                         _%$%target211993212194%_
                                         _%$%tl211995212196%_)
                                  (letrec ((_%$%loop211996212199%_
                                            (lambda (_%$%hd211994212202%_
                                                     _%$%arg212000212204%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd211994212202%_))
                                                  (let ((_%$%e211997212206%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd211994212202%_))))
                                                    (let ((_%$%lp-tl211999212211%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e211997212206%_)))
                                                          (_%$%lp-hd211998212209%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e211997212206%_))))
                                                      (_%$%loop211996212199%_
                                                       _%$%lp-tl211999212211%_
                                                       (cons _%$%lp-hd211998212209%_
                                                             _%$%arg212000212204%_))))
                                                  (let ((_%$%arg212001212214%_
                                                         (reverse _%$%arg212000212204%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl211992212191%_))
                                                        (let ((_%$%e212002212216%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl211992212191%_))))
                  (let ((_%$%tl212004212221%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e212002212216%_)))
                        (_%$%hd212003212219%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e212002212216%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd212003212219%_))
                        (let ((_%$%e212005212224%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd212003212219%_))))
                          (let ((_%$%tl212007212229%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e212005212224%_)))
                                (_%$%hd212006212227%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e212005212224%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd212006212227%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq?
                                       '%#call
                                       _%$%hd212006212227%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl212007212229%_))
                                        (let ((_%$%e212008212232%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl212007212229%_))))
                                          (let ((_%$%tl212010212237%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e212008212232%_)))
                                                (_%$%hd212009212235%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e212008212232%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd212009212235%_))
                                                (let ((_%$%e212011212240%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd212009212235%_))))
                                                  (let ((_%$%tl212013212245%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e212011212240%_)))
                                                        (_%$%hd212012212243%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e212011212240%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd212012212243%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%$%hd212012212243%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl212013212245%_))
                        (let ((_%$%e212014212248%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl212013212245%_))))
                          (let ((_%$%tl212016212253%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e212014212248%_)))
                                (_%$%hd212015212251%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e212014212248%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl212016212253%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl212010212237%_))
                                    (let ((_%$%e212017212256%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%tl212010212237%_))))
                                      (let ((_%$%tl212019212261%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e212017212256%_)))
                                            (_%$%hd212018212259%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e212017212256%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%hd212018212259%_))
                                            (let ((_%$%e212020212264%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%hd212018212259%_))))
                                              (let ((_%$%tl212022212269%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e212020212264%_)))
                                                    (_%$%hd212021212267%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e212020212264%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%$%hd212021212267%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%$%hd212021212267%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl212022212269%_))
                                                            (let ((_%$%e212023212272%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl212022212269%_))))
                      (let ((_%$%tl212025212277%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e212023212272%_)))
                            (_%$%hd212024212275%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e212023212272%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl212025212277%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl212004212221%_))
                                (_%__kont214871214872%_
                                 _%$%hd212024212275%_
                                 _%$%hd212015212251%_
                                 _%$%tl211995212196%_
                                 _%$%arg212001212214%_)
                                (_%__match214972214973%_
                                 _%$%e211990212186%_
                                 _%$%hd211991212189%_
                                 _%$%tl211992212191%_
                                 _%$%e212002212216%_
                                 _%$%hd212003212219%_
                                 _%$%tl212004212221%_
                                 _%$%e212005212224%_
                                 _%$%hd212006212227%_
                                 _%$%tl212007212229%_
                                 _%$%e212008212232%_
                                 _%$%hd212009212235%_
                                 _%$%tl212010212237%_
                                 _%$%e212011212240%_
                                 _%$%hd212012212243%_
                                 _%$%tl212013212245%_
                                 _%$%e212014212248%_
                                 _%$%hd212015212251%_
                                 _%$%tl212016212253%_
                                 _%$%e212017212256%_
                                 _%$%hd212018212259%_
                                 _%$%tl212019212261%_
                                 _%$%e212020212264%_
                                 _%$%hd212021212267%_
                                 _%$%tl212022212269%_
                                 _%$%e212023212272%_
                                 _%$%hd212024212275%_
                                 _%$%tl212025212277%_))
                            (let ()
                              (declare (not safe))
                              (_%$%g211939212063%_)))))
                    (let () (declare (not safe)) (_%$%g211939212063%_)))
                (let () (declare (not safe)) (_%$%g211939212063%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g211939212063%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g211939212063%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g211939212063%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g211939212063%_)))))
                        (let () (declare (not safe)) (_%$%g211939212063%_)))
                    (let () (declare (not safe)) (_%$%g211939212063%_)))
                (let () (declare (not safe)) (_%$%g211939212063%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g211939212063%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g211939212063%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g211939212063%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g211939212063%_)))))
                        (let () (declare (not safe)) (_%$%g211939212063%_)))))
                (let () (declare (not safe)) (_%$%g211939212063%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%loop211996212199%_
                                     _%$%target211993212194%_
                                     '()))))
                               (_%__match214890214891%_
                                (lambda (_%$%e211944212320%_
                                         _%$%hd211945212323%_
                                         _%$%tl211946212325%_
                                         _%__splice214867214868%_
                                         _%$%target211947212328%_
                                         _%$%tl211949212330%_)
                                  (letrec ((_%$%loop211950212333%_
                                            (lambda (_%$%hd211948212336%_
                                                     _%$%arg211954212338%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd211948212336%_))
                                                  (let ((_%$%e211951212340%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd211948212336%_))))
                                                    (let ((_%$%lp-tl211953212345%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e211951212340%_)))
                                                          (_%$%lp-hd211952212343%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e211951212340%_))))
                                                      (_%$%loop211950212333%_
                                                       _%$%lp-tl211953212345%_
                                                       (cons _%$%lp-hd211952212343%_
                                                             _%$%arg211954212338%_))))
                                                  (let ((_%$%arg211955212348%_
                                                         (reverse _%$%arg211954212338%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl211946212325%_))
                                                        (let ((_%$%e211956212350%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl211946212325%_))))
                  (let ((_%$%tl211958212355%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e211956212350%_)))
                        (_%$%hd211957212353%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e211956212350%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd211957212353%_))
                        (let ((_%$%e211959212358%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd211957212353%_))))
                          (let ((_%$%tl211961212363%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e211959212358%_)))
                                (_%$%hd211960212361%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e211959212358%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd211960212361%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq?
                                       '%#call
                                       _%$%hd211960212361%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl211961212363%_))
                                        (let ((_%$%e211962212366%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl211961212363%_))))
                                          (let ((_%$%tl211964212371%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e211962212366%_)))
                                                (_%$%hd211963212369%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e211962212366%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd211963212369%_))
                                                (let ((_%$%e211965212374%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd211963212369%_))))
                                                  (let ((_%$%tl211967212379%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e211965212374%_)))
                                                        (_%$%hd211966212377%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e211965212374%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd211966212377%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%$%hd211966212377%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl211967212379%_))
                        (let ((_%$%e211968212382%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl211967212379%_))))
                          (let ((_%$%tl211970212387%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e211968212382%_)))
                                (_%$%hd211969212385%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e211968212382%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl211970212387%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%$%tl211964212371%_))
                                    (let ((_%__splice214869214870%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%$%tl211964212371%_
                                              '0))))
                                      (let ((_%$%tl211973212392%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice214869214870%_
                                                '1)))
                                            (_%$%target211971212390%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice214869214870%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl211973212392%_))
                                            (letrec ((_%$%loop211974212395%_
                                                      (lambda (_%$%hd211972212398%_
                                                               _%$%xarg211978212400%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%hd211972212398%_))
                                                            (let ((_%$%e211975212402%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%hd211972212398%_))))
                      (let ((_%$%lp-tl211977212407%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e211975212402%_)))
                            (_%$%lp-hd211976212405%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e211975212402%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%lp-hd211976212405%_))
                            (let ((_%$%e211980212410%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%lp-hd211976212405%_))))
                              (let ((_%$%tl211982212415%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e211980212410%_)))
                                    (_%$%hd211981212413%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e211980212410%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd211981212413%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%$%hd211981212413%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl211982212415%_))
                                            (let ((_%$%e211983212418%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl211982212415%_))))
                                              (let ((_%$%tl211985212423%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e211983212418%_)))
                                                    (_%$%hd211984212421%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e211983212418%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl211985212423%_))
                                                    (_%$%loop211974212395%_
                                                     _%$%lp-tl211977212407%_
                                                     (cons _%$%hd211984212421%_
                                                           _%$%xarg211978212400%_))
                                                    (_%__match214902214903%_
                                                     _%$%e211944212320%_
                                                     _%$%hd211945212323%_
                                                     _%$%tl211946212325%_
                                                     _%__splice214867214868%_
                                                     _%$%target211947212328%_
                                                     _%$%tl211949212330%_))))
                                            (_%__match214902214903%_
                                             _%$%e211944212320%_
                                             _%$%hd211945212323%_
                                             _%$%tl211946212325%_
                                             _%__splice214867214868%_
                                             _%$%target211947212328%_
                                             _%$%tl211949212330%_))
                                        (_%__match214902214903%_
                                         _%$%e211944212320%_
                                         _%$%hd211945212323%_
                                         _%$%tl211946212325%_
                                         _%__splice214867214868%_
                                         _%$%target211947212328%_
                                         _%$%tl211949212330%_))
                                    (_%__match214902214903%_
                                     _%$%e211944212320%_
                                     _%$%hd211945212323%_
                                     _%$%tl211946212325%_
                                     _%__splice214867214868%_
                                     _%$%target211947212328%_
                                     _%$%tl211949212330%_))))
                            (_%__match214902214903%_
                             _%$%e211944212320%_
                             _%$%hd211945212323%_
                             _%$%tl211946212325%_
                             _%__splice214867214868%_
                             _%$%target211947212328%_
                             _%$%tl211949212330%_))))
                    (let ((_%$%xarg211979212426%_
                           (reverse _%$%xarg211978212400%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl211958212355%_))
                          (_%__kont214865214866%_
                           _%$%xarg211979212426%_
                           _%$%hd211969212385%_
                           _%$%arg211955212348%_)
                          (_%__match214902214903%_
                           _%$%e211944212320%_
                           _%$%hd211945212323%_
                           _%$%tl211946212325%_
                           _%__splice214867214868%_
                           _%$%target211947212328%_
                           _%$%tl211949212330%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop211974212395%_
                                               _%$%target211971212390%_
                                               '()))
                                            (_%__match214902214903%_
                                             _%$%e211944212320%_
                                             _%$%hd211945212323%_
                                             _%$%tl211946212325%_
                                             _%__splice214867214868%_
                                             _%$%target211947212328%_
                                             _%$%tl211949212330%_))))
                                    (_%__match214902214903%_
                                     _%$%e211944212320%_
                                     _%$%hd211945212323%_
                                     _%$%tl211946212325%_
                                     _%__splice214867214868%_
                                     _%$%target211947212328%_
                                     _%$%tl211949212330%_))
                                (_%__match214902214903%_
                                 _%$%e211944212320%_
                                 _%$%hd211945212323%_
                                 _%$%tl211946212325%_
                                 _%__splice214867214868%_
                                 _%$%target211947212328%_
                                 _%$%tl211949212330%_))))
                        (_%__match214902214903%_
                         _%$%e211944212320%_
                         _%$%hd211945212323%_
                         _%$%tl211946212325%_
                         _%__splice214867214868%_
                         _%$%target211947212328%_
                         _%$%tl211949212330%_))
                    (_%__match214902214903%_
                     _%$%e211944212320%_
                     _%$%hd211945212323%_
                     _%$%tl211946212325%_
                     _%__splice214867214868%_
                     _%$%target211947212328%_
                     _%$%tl211949212330%_))
                (_%__match214902214903%_
                 _%$%e211944212320%_
                 _%$%hd211945212323%_
                 _%$%tl211946212325%_
                 _%__splice214867214868%_
                 _%$%target211947212328%_
                 _%$%tl211949212330%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match214902214903%_
                                                 _%$%e211944212320%_
                                                 _%$%hd211945212323%_
                                                 _%$%tl211946212325%_
                                                 _%__splice214867214868%_
                                                 _%$%target211947212328%_
                                                 _%$%tl211949212330%_))))
                                        (_%__match214902214903%_
                                         _%$%e211944212320%_
                                         _%$%hd211945212323%_
                                         _%$%tl211946212325%_
                                         _%__splice214867214868%_
                                         _%$%target211947212328%_
                                         _%$%tl211949212330%_))
                                    (_%__match214902214903%_
                                     _%$%e211944212320%_
                                     _%$%hd211945212323%_
                                     _%$%tl211946212325%_
                                     _%__splice214867214868%_
                                     _%$%target211947212328%_
                                     _%$%tl211949212330%_))
                                (_%__match214902214903%_
                                 _%$%e211944212320%_
                                 _%$%hd211945212323%_
                                 _%$%tl211946212325%_
                                 _%__splice214867214868%_
                                 _%$%target211947212328%_
                                 _%$%tl211949212330%_))))
                        (_%__match214902214903%_
                         _%$%e211944212320%_
                         _%$%hd211945212323%_
                         _%$%tl211946212325%_
                         _%__splice214867214868%_
                         _%$%target211947212328%_
                         _%$%tl211949212330%_))))
                (_%__match214902214903%_
                 _%$%e211944212320%_
                 _%$%hd211945212323%_
                 _%$%tl211946212325%_
                 _%__splice214867214868%_
                 _%$%target211947212328%_
                 _%$%tl211949212330%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%loop211950212333%_
                                     _%$%target211947212328%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx214863214864%_))
                              (let ((_%$%e211944212320%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx214863214864%_))))
                                (let ((_%$%tl211946212325%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e211944212320%_)))
                                      (_%$%hd211945212323%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e211944212320%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd211945212323%_))
                                      (let ((_%__splice214867214868%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%hd211945212323%_
                                                '0))))
                                        (let ((_%$%tl211949212330%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice214867214868%_
                                                  '1)))
                                              (_%$%target211947212328%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice214867214868%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl211949212330%_))
                                              (_%__match214890214891%_
                                               _%$%e211944212320%_
                                               _%$%hd211945212323%_
                                               _%$%tl211946212325%_
                                               _%__splice214867214868%_
                                               _%$%target211947212328%_
                                               _%$%tl211949212330%_)
                                              (_%__match214902214903%_
                                               _%$%e211944212320%_
                                               _%$%hd211945212323%_
                                               _%$%tl211946212325%_
                                               _%__splice214867214868%_
                                               _%$%target211947212328%_
                                               _%$%tl211949212330%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl211946212325%_))
                                          (let ((_%$%e212032212076%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl211946212325%_))))
                                            (let ((_%$%tl212034212081%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e212032212076%_)))
                                                  (_%$%hd212033212079%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e212032212076%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd212033212079%_))
                                                  (let ((_%$%e212035212084%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd212033212079%_))))
                                                    (let ((_%$%tl212037212089%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e212035212084%_)))
                                                          (_%$%hd212036212087%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e212035212084%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd212036212087%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%$%hd212036212087%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl212037212089%_))
                          (let ((_%$%e212038212092%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl212037212089%_))))
                            (let ((_%$%tl212040212097%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e212038212092%_)))
                                  (_%$%hd212039212095%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e212038212092%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd212039212095%_))
                                  (let ((_%$%e212041212100%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd212039212095%_))))
                                    (let ((_%$%tl212043212105%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e212041212100%_)))
                                          (_%$%hd212042212103%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e212041212100%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd212042212103%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd212042212103%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl212043212105%_))
                                                  (let ((_%$%e212044212108%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl212043212105%_))))
                                                    (let ((_%$%tl212046212113%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e212044212108%_)))
                                                          (_%$%hd212045212111%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e212044212108%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl212046212113%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl212040212097%_))
                      (let ((_%$%e212047212116%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl212040212097%_))))
                        (let ((_%$%tl212049212121%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e212047212116%_)))
                              (_%$%hd212048212119%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e212047212116%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd212048212119%_))
                              (let ((_%$%e212050212124%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd212048212119%_))))
                                (let ((_%$%tl212052212129%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e212050212124%_)))
                                      (_%$%hd212051212127%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e212050212124%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd212051212127%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd212051212127%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl212052212129%_))
                                              (let ((_%$%e212053212132%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl212052212129%_))))
                                                (let ((_%$%tl212055212137%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e212053212132%_)))
                                                      (_%$%hd212054212135%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e212053212132%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl212055212137%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl212049212121%_))
                                                          (let ((_%$%e212056212140%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl212049212121%_))))
                    (let ((_%$%tl212058212145%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e212056212140%_)))
                          (_%$%hd212057212143%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e212056212140%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl212058212145%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl212034212081%_))
                              (_%__kont214875214876%_
                               _%$%hd212054212135%_
                               _%$%hd212045212111%_
                               _%$%hd211945212323%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g211939212063%_)))
                          (let ()
                            (declare (not safe))
                            (_%$%g211939212063%_)))))
                  (let () (declare (not safe)) (_%$%g211939212063%_)))
              (let () (declare (not safe)) (_%$%g211939212063%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g211939212063%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g211939212063%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g211939212063%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g211939212063%_)))))
                      (let () (declare (not safe)) (_%$%g211939212063%_)))
                  (let () (declare (not safe)) (_%$%g211939212063%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g211939212063%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g211939212063%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g211939212063%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g211939212063%_)))))
                          (let () (declare (not safe)) (_%$%g211939212063%_)))
                      (let () (declare (not safe)) (_%$%g211939212063%_)))
                  (let () (declare (not safe)) (_%$%g211939212063%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g211939212063%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g211939212063%_))))))
                              (let ()
                                (declare (not safe))
                                (_%$%g211939212063%_))))))))
                 (_%generate1211786%_
                  (lambda (_%args211917%_
                           _%arglen211918%_
                           _%hd211919%_
                           _%body211920%_)
                    (let* ((_%len211922%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd211919%_)))
                           (_%condition211927%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd211919%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen211918%_
                                                (cons _%len211922%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen211918%_ (cons _%len211922%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len211922%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen211918%_
                                                    (cons _%len211922%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen211918%_ (cons _%len211922%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch211929%_
                            (if (_%dispatch-case?211784%_
                                 _%hd211919%_
                                 _%body211920%_)
                                (_%dispatch-case-e211785%_
                                 _%hd211919%_
                                 _%body211920%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self211781%_
                                 _%hd211919%_
                                 _%body211920%_))))
                      (cons _%condition211927%_
                            (cons (cons 'apply
                                        (cons _%dispatch211929%_
                                              (cons _%args211917%_ '())))
                                  '()))))))
          (let* ((_%$%g211788211816%_
                  (lambda (_%$%g211789211813%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g211789211813%_))))
                 (_%$%g211787211914%_
                  (lambda (_%$%g211789211819%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g211789211819%_))
                        (let ((_%$%e211792211821%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g211789211819%_))))
                          (let ((_%$%hd211793211824%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e211792211821%_)))
                                (_%$%tl211794211826%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e211792211821%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%$%tl211794211826%_))
                                (let ((_g216030_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%$%tl211794211826%_
                                          '0))))
                                  (begin
                                    (let ((_g216031_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g216030_)
                                                 (##values-length _g216030_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g216031_ 2)))
                                          (error "Context expects 2 values"
                                                 _g216031_)))
                                    (let ((_%$%target211795211829%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g216030_ 0)))
                                          (_%$%tl211797211831%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g216030_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl211797211831%_))
                                          (letrec ((_%$%loop211798211834%_
                                                    (lambda (_%$%hd211796211837%_
                                                             _%$%body211802211839%_
                                                             _%$%hd211803211840%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%hd211796211837%_))
                                                          (let ((_%$%e211799211842%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%hd211796211837%_))))
                    (let ((_%$%lp-hd211800211845%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e211799211842%_)))
                          (_%$%lp-tl211801211847%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e211799211842%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%lp-hd211800211845%_))
                          (let ((_%$%e211806211850%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%lp-hd211800211845%_))))
                            (let ((_%$%hd211807211853%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e211806211850%_)))
                                  (_%$%tl211808211855%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e211806211850%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl211808211855%_))
                                  (let ((_%$%e211809211858%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl211808211855%_))))
                                    (let ((_%$%hd211810211861%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e211809211858%_)))
                                          (_%$%tl211811211863%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e211809211858%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl211811211863%_))
                                          (_%$%loop211798211834%_
                                           _%$%lp-tl211801211847%_
                                           (cons _%$%hd211810211861%_
                                                 _%$%body211802211839%_)
                                           (cons _%$%hd211807211853%_
                                                 _%$%hd211803211840%_))
                                          (_%$%g211788211816%_
                                           _%$%g211789211819%_))))
                                  (_%$%g211788211816%_ _%$%g211789211819%_))))
                          (_%$%g211788211816%_ _%$%g211789211819%_))))
                  (let ((_%$%body211804211866%_
                         (reverse _%$%body211802211839%_))
                        (_%$%hd211805211867%_ (reverse _%$%hd211803211840%_)))
                    (let ((_%args211889%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__0)))
                          (_%arglen211890%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__0)))
                          (_%name211891%_
                           (let ((_%$e211886%_
                                  (let ((__tmp216032
                                         (let ()
                                           (declare (not safe))
                                           (gxc#current-compile-runtime-names))))
                                    (declare (not safe))
                                    (hash-get __tmp216032 _%stx211782%_))))
                             (if _%$e211886%_
                                 _%$e211886%_
                                 ''case-lambda-dispatch))))
                      (cons 'lambda
                            (cons _%args211889%_
                                  (cons (cons 'let
                                              (cons (cons (cons _%arglen211890%_
                                                                (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '##length (cons _%args211889%_ '()))
                                  (cons 'let
                                        (cons '()
                                              (cons '(declare (not safe))
                                                    (cons (cons '##length
                                                                (cons _%args211889%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '()))
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons 'cond
                                                                (let ((__tmp216034
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (map (lambda (_%$%g211892211895%_
                                             _%$%g211893211897%_)
                                      (_%generate1211786%_
                                       _%args211889%_
                                       _%arglen211890%_
                                       _%$%g211892211895%_
                                       _%$%g211893211897%_))
                                    (let ((__tmp216035
                                           (lambda (_%$%g211899211902%_
                                                    _%$%g211900211904%_)
                                             (cons _%$%g211899211902%_
                                                   _%$%g211900211904%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp216035
                                       '()
                                       _%$%hd211805211867%_))
                                    (let ((__tmp216036
                                           (lambda (_%$%g211906211909%_
                                                    _%$%g211907211911%_)
                                             (cons _%$%g211906211909%_
                                                   _%$%g211907211911%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp216036
                                       '()
                                       _%$%body211804211866%_))))
                              (__tmp216033
                               (cons (cons 'else
                                           (cons (cons '##raise-wrong-number-of-arguments-exception
                                                       (cons _%name211891%_
                                                             (cons _%args211889%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())))
                          (declare (not safe))
                          (##append __tmp216034 __tmp216033)))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%loop211798211834%_
                                             _%$%target211795211829%_
                                             '()
                                             '()))
                                          (_%$%g211788211816%_
                                           _%$%g211789211819%_)))))
                                (_%$%g211788211816%_ _%$%g211789211819%_))))
                        (_%$%g211788211816%_ _%$%g211789211819%_)))))
            (_%$%g211787211914%_ _%stx211782%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self211018%_ _%stx211019%_ _%compiled-body?211020%_)
        (letrec ((_%generate-simple211022%_
                  (lambda (_%hd211766%_ _%body211767%_)
                    (_%coalesce-boolean211023%_
                     (_%simplify-let211024%_
                      (gxc#generate-runtime-simple-let
                       _%self211018%_
                       'let
                       _%hd211766%_
                       _%body211767%_
                       _%compiled-body?211020%_)))))
                 (_%coalesce-boolean211023%_
                  (lambda (_%code211627%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%$%code211628211654%_ _%code211627%_)
                               (_%$%else211630211662%_
                                (lambda () _%code211627%_))
                               (_%$%K211632211699%_
                                (lambda (_%expr2211665%_
                                         _%expr1211666%_
                                         _%id211667%_)
                                  (let* ((_%$%expr2211668211676%_
                                          _%expr2211665%_)
                                         (_%$%else211670211684%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1211666%_
                                                        (cons _%expr2211665%_
                                                              '())))))
                                         (_%$%K211672211689%_
                                          (lambda (_%exprs211687%_)
                                            (cons 'or
                                                  (cons _%expr1211666%_
                                                        _%exprs211687%_)))))
                                    (if (pair? _%$%expr2211668211676%_)
                                        (let ((_%$%hd211673211692%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%expr2211668211676%_)))
                                              (_%$%tl211674211694%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%expr2211668211676%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%$%hd211673211692%_
                                                       'or))
                                              (let ((_%exprs211697%_
                                                     _%$%tl211674211694%_))
                                                (_%$%K211672211689%_
                                                 _%exprs211697%_))
                                              (_%$%else211670211684%_)))
                                        (_%$%else211670211684%_))))))
                          (if (pair? _%$%code211628211654%_)
                              (let ((_%$%hd211633211702%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%code211628211654%_)))
                                    (_%$%tl211634211704%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%code211628211654%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%$%hd211633211702%_ 'let))
                                    (if (pair? _%$%tl211634211704%_)
                                        (let ((_%$%hd211635211707%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%tl211634211704%_)))
                                              (_%$%tl211636211709%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%tl211634211704%_))))
                                          (if (pair? _%$%hd211635211707%_)
                                              (let ((_%$%hd211647211712%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%hd211635211707%_)))
                                                    (_%$%tl211648211714%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%hd211635211707%_))))
                                                (if (pair? _%$%hd211647211712%_)
                                                    (let ((_%$%hd211649211717%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%hd211647211712%_)))
                                                          (_%$%tl211650211719%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%hd211647211712%_))))
                                                      (let ((_%id211722%_
                                                             _%$%hd211649211717%_))
                                                        (if (pair? _%$%tl211650211719%_)
                                                            (let ((_%$%hd211651211724%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%$%tl211650211719%_)))
                          (_%$%tl211652211726%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%tl211650211719%_))))
                      (let ((_%expr1211729%_ _%$%hd211651211724%_))
                        (if (null? _%$%tl211652211726%_)
                            (if (null? _%$%tl211648211714%_)
                                (if (pair? _%$%tl211636211709%_)
                                    (let ((_%$%hd211637211731%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%tl211636211709%_)))
                                          (_%$%tl211638211733%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%tl211636211709%_))))
                                      (if (pair? _%$%hd211637211731%_)
                                          (let ((_%$%hd211639211736%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%hd211637211731%_)))
                                                (_%$%tl211640211738%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%hd211637211731%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%$%hd211639211736%_
                                                         'if))
                                                (if (pair? _%$%tl211640211738%_)
                                                    (let ((_%$%hd211641211741%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%tl211640211738%_)))
                                                          (_%$%tl211642211743%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%tl211640211738%_))))
                                                      (if (eq? _%$%hd211641211741%_
                                                               _%id211722%_)
                                                          (if (pair? _%$%tl211642211743%_)
                                                              (let ((_%$%hd211643211750%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##car _%$%tl211642211743%_)))
                            (_%$%tl211644211752%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%tl211642211743%_))))
                        (if (eq? _%$%hd211643211750%_ _%id211722%_)
                            (if (pair? _%$%tl211644211752%_)
                                (let ((_%$%hd211645211759%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%tl211644211752%_)))
                                      (_%$%tl211646211761%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%tl211644211752%_))))
                                  (let ((_%expr2211764%_ _%$%hd211645211759%_))
                                    (if (null? _%$%tl211646211761%_)
                                        (if (null? _%$%tl211638211733%_)
                                            (_%$%K211632211699%_
                                             _%expr2211764%_
                                             _%expr1211729%_
                                             _%id211722%_)
                                            (_%$%else211630211662%_))
                                        (_%$%else211630211662%_))))
                                (_%$%else211630211662%_))
                            (_%$%else211630211662%_)))
                      (_%$%else211630211662%_))
                  (_%$%else211630211662%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%else211630211662%_))
                                                (_%$%else211630211662%_)))
                                          (_%$%else211630211662%_)))
                                    (_%$%else211630211662%_))
                                (_%$%else211630211662%_))
                            (_%$%else211630211662%_))))
                    (_%$%else211630211662%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%else211630211662%_)))
                                              (_%$%else211630211662%_)))
                                        (_%$%else211630211662%_))
                                    (_%$%else211630211662%_)))
                              (_%$%else211630211662%_)))
                        _%code211627%_)))
                 (_%simplify-let211024%_
                  (lambda (_%code211326%_)
                    (let* ((_%$%code211327211399%_ _%code211326%_)
                           (_%$%else211332211407%_ (lambda () _%code211326%_)))
                      (let ((_%$%K211391211607%_
                             (lambda (_%expr211605%_) _%expr211605%_))
                            (_%$%K211374211553%_
                             (lambda (_%body211549%_
                                      _%expr211550%_
                                      _%id211551%_)
                               (cons 'let
                                     (cons (cons (cons _%id211551%_
                                                       (cons _%expr211550%_
                                                             '()))
                                                 '())
                                           _%body211549%_))))
                            (_%$%K211351211477%_
                             (lambda (_%body211471%_
                                      _%expr2211472%_
                                      _%id2211473%_
                                      _%expr1211474%_
                                      _%id1211475%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1211475%_
                                                       (cons _%expr1211474%_
                                                             '()))
                                                 (cons (cons _%id2211473%_
                                                             (cons _%expr2211472%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body211471%_))))
                            (_%$%K211334211416%_
                             (lambda (_%body211411%_
                                      _%bind211412%_
                                      _%expr1211413%_
                                      _%id1211414%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1211414%_
                                                       (cons _%expr1211413%_
                                                             '()))
                                                 _%bind211412%_)
                                           _%body211411%_)))))
                        (if (pair? _%$%code211327211399%_)
                            (let ((_%$%tl211393211612%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%code211327211399%_)))
                                  (_%$%hd211392211610%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%code211327211399%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%$%hd211392211610%_ 'let))
                                  (if (pair? _%$%tl211393211612%_)
                                      (let ((_%$%tl211395211617%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%tl211393211612%_)))
                                            (_%$%hd211394211615%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%tl211393211612%_))))
                                        (if (null? _%$%hd211394211615%_)
                                            (if (pair? _%$%tl211395211617%_)
                                                (let ((_%$%tl211397211622%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%tl211395211617%_)))
                                                      (_%$%hd211396211620%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%tl211395211617%_))))
                                                  (if (null? _%$%tl211397211622%_)
                                                      (let ((_%expr211625%_
                                                             _%$%hd211396211620%_))
                                                        (_%$%K211391211607%_
                                                         _%expr211625%_))
                                                      (_%$%else211332211407%_)))
                                                (_%$%else211332211407%_))
                                            (if (pair? _%$%hd211394211615%_)
                                                (let ((_%$%tl211386211568%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%hd211394211615%_)))
                                                      (_%$%hd211385211566%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%hd211394211615%_))))
                                                  (if (pair? _%$%hd211385211566%_)
                                                      (let ((_%$%tl211388211573%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%hd211385211566%_)))
                    (_%$%hd211387211571%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%hd211385211566%_))))
                (if (pair? _%$%tl211388211573%_)
                    (let ((_%$%tl211390211580%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%tl211388211573%_)))
                          (_%$%hd211389211578%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%tl211388211573%_))))
                      (if (null? _%$%tl211390211580%_)
                          (if (null? _%$%tl211386211568%_)
                              (if (pair? _%$%tl211395211617%_)
                                  (let ((_%$%tl211380211587%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl211395211617%_)))
                                        (_%$%hd211379211585%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%tl211395211617%_))))
                                    (if (pair? _%$%hd211379211585%_)
                                        (let ((_%$%tl211382211592%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%hd211379211585%_)))
                                              (_%$%hd211381211590%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%hd211379211585%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%$%hd211381211590%_
                                                       'let))
                                              (if (pair? _%$%tl211382211592%_)
                                                  (let ((_%$%tl211384211597%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%tl211382211592%_)))
                                                        (_%$%hd211383211595%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%tl211382211592%_))))
                                                    (if (null? _%$%hd211383211595%_)
                                                        (if (null? _%$%tl211380211587%_)
                                                            (let ((_%id211576%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%hd211387211571%_)
                          (_%expr211583%_ _%$%hd211389211578%_)
                          (_%body211600%_ _%$%tl211384211597%_))
                      (_%$%K211374211553%_
                       _%body211600%_
                       _%expr211583%_
                       _%id211576%_))
                    (_%$%else211332211407%_))
                (if (pair? _%$%hd211383211595%_)
                    (let ((_%$%tl211363211526%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%hd211383211595%_)))
                          (_%$%hd211362211524%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%hd211383211595%_))))
                      (if (pair? _%$%hd211362211524%_)
                          (let ((_%$%tl211365211531%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%hd211362211524%_)))
                                (_%$%hd211364211529%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%hd211362211524%_))))
                            (if (pair? _%$%tl211365211531%_)
                                (let ((_%$%tl211367211538%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%tl211365211531%_)))
                                      (_%$%hd211366211536%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%tl211365211531%_))))
                                  (if (null? _%$%tl211367211538%_)
                                      (if (null? _%$%tl211363211526%_)
                                          (if (null? _%$%tl211380211587%_)
                                              (let ((_%id1211500%_
                                                     _%$%hd211387211571%_)
                                                    (_%expr1211507%_
                                                     _%$%hd211389211578%_)
                                                    (_%id2211534%_
                                                     _%$%hd211364211529%_)
                                                    (_%expr2211541%_
                                                     _%$%hd211366211536%_)
                                                    (_%body211543%_
                                                     _%$%tl211384211597%_))
                                                (_%$%K211351211477%_
                                                 _%body211543%_
                                                 _%expr2211541%_
                                                 _%id2211534%_
                                                 _%expr1211507%_
                                                 _%id1211500%_))
                                              (_%$%else211332211407%_))
                                          (_%$%else211332211407%_))
                                      (_%$%else211332211407%_)))
                                (_%$%else211332211407%_)))
                          (_%$%else211332211407%_)))
                    (_%$%else211332211407%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%else211332211407%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%$%hd211381211590%_
                                                           'let*))
                                                  (if (pair? _%$%tl211382211592%_)
                                                      (let ((_%$%tl211344211460%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%tl211382211592%_)))
                    (_%$%hd211343211458%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%tl211382211592%_))))
                (if (null? _%$%tl211380211587%_)
                    (let ((_%id1211439%_ _%$%hd211387211571%_)
                          (_%expr1211446%_ _%$%hd211389211578%_)
                          (_%bind211463%_ _%$%hd211343211458%_)
                          (_%body211465%_ _%$%tl211344211460%_))
                      (_%$%K211334211416%_
                       _%body211465%_
                       _%bind211463%_
                       _%expr1211446%_
                       _%id1211439%_))
                    (_%$%else211332211407%_)))
              (_%$%else211332211407%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%else211332211407%_))))
                                        (_%$%else211332211407%_)))
                                  (_%$%else211332211407%_))
                              (_%$%else211332211407%_))
                          (_%$%else211332211407%_)))
                    (_%$%else211332211407%_)))
              (_%$%else211332211407%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%else211332211407%_))))
                                      (_%$%else211332211407%_))
                                  (_%$%else211332211407%_)))
                            (_%$%else211332211407%_))))))
                 (_%generate-values211025%_
                  (lambda (_%hd211139%_ _%body211140%_)
                    (let _%lp211142%_ ((_%rest211144%_ _%hd211139%_)
                                       (_%bind211145%_ '())
                                       (_%check211146%_ '())
                                       (_%post211147%_ '()))
                      (let* ((_%__stx215192215193%_ _%rest211144%_)
                             (_%$%g211150211161%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx215192215193%_)))))
                        (let ((_%__kont215194215195%_
                               (lambda (_%$%g211152211188%_
                                        _%$%g211153211189%_)
                                 (let* ((_%__stx215148215149%_
                                         _%$%g211153211189%_)
                                        (_%$%g211204211229%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx215148215149%_)))))
                                   (let ((_%__kont215150215151%_
                                          (lambda (_%$%g211206211302%_
                                                   _%$%g211207211303%_)
                                            (let ((_%eid211317%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%$%g211207211303%_)))
                                                  (_%expr211318%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self211018%_
                                                      _%$%g211206211302%_))))
                                              (_%lp211142%_
                                               _%$%g211152211188%_
                                               (cons (cons _%eid211317%_
                                                           (cons _%expr211318%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind211145%_)
                                               _%check211146%_
                                               _%post211147%_))))
                                         (_%__kont215152215153%_
                                          (lambda (_%$%g211217211250%_
                                                   _%$%g211218211251%_)
                                            (let* ((_%vals211264%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values211266%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals211264%_
                                                     _%$%g211218211251%_
                                                     _%$%g211217211250%_))
                                                   (_%refs211268%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals211264%_
                                                     _%$%g211218211251%_))
                                                   (_%expr211270%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self211018%_
                                                       _%$%g211217211250%_))))
                                              (_%lp211142%_
                                               _%$%g211152211188%_
                                               (cons (cons _%vals211264%_
                                                           (cons _%expr211270%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind211145%_)
                                               (cons _%check-values211266%_
                                                     _%check211146%_)
                                               (cons _%refs211268%_
                                                     _%post211147%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx215148215149%_))
                                         (let ((_%$%e211208211278%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx215148215149%_))))
                                           (let ((_%$%tl211210211283%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e211208211278%_)))
                                                 (_%$%hd211209211281%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e211208211278%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%hd211209211281%_))
                                                 (let ((_%$%e211211211286%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%hd211209211281%_))))
                                                   (let ((_%$%tl211213211291%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e211211211286%_)))
                                                         (_%$%hd211212211289%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e211211211286%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%$%tl211213211291%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%tl211210211283%_))
                     (let ((_%$%e211214211294%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl211210211283%_))))
                       (let ((_%$%tl211216211299%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e211214211294%_)))
                             (_%$%hd211215211297%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e211214211294%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl211216211299%_))
                             (_%__kont215150215151%_
                              _%$%hd211215211297%_
                              _%$%hd211212211289%_)
                             (let ()
                               (declare (not safe))
                               (_%$%g211204211229%_)))))
                     (let () (declare (not safe)) (_%$%g211204211229%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%$%tl211210211283%_))
                     (let ((_%$%e211222211242%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl211210211283%_))))
                       (let ((_%$%tl211224211247%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e211222211242%_)))
                             (_%$%hd211223211245%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e211222211242%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl211224211247%_))
                             (_%__kont215152215153%_
                              _%$%hd211223211245%_
                              _%$%hd211209211281%_)
                             (let ()
                               (declare (not safe))
                               (_%$%g211204211229%_)))))
                     (let () (declare (not safe)) (_%$%g211204211229%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl211210211283%_))
                                                     (let ((_%$%e211222211242%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl211210211283%_))))
                                                       (let ((_%$%tl211224211247%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e211222211242%_)))
                     (_%$%hd211223211245%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%e211222211242%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl211224211247%_))
                     (_%__kont215152215153%_
                      _%$%hd211223211245%_
                      _%$%hd211209211281%_)
                     (let () (declare (not safe)) (_%$%g211204211229%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%$%g211204211229%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%$%g211204211229%_)))))))
                              (_%__kont215196215197%_
                               (lambda ()
                                 (let* ((_%body211168%_
                                         (if _%compiled-body?211020%_
                                             _%body211140%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self211018%_
                                                _%body211140%_))))
                                        (_%body211170%_
                                         (_%generate-values-post211026%_
                                          _%post211147%_
                                          _%body211168%_))
                                        (_%body211172%_
                                         (_%generate-values-check211027%_
                                          _%check211146%_
                                          _%body211170%_)))
                                   (cons 'let
                                         (cons (reverse _%bind211145%_)
                                               (cons _%body211172%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx215192215193%_))
                              (let ((_%$%e211154211180%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx215192215193%_))))
                                (let ((_%$%tl211156211185%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e211154211180%_)))
                                      (_%$%hd211155211183%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e211154211180%_))))
                                  (_%__kont215194215195%_
                                   _%$%tl211156211185%_
                                   _%$%hd211155211183%_)))
                              (_%__kont215196215197%_)))))))
                 (_%generate-values-post211026%_
                  (lambda (_%post211098%_ _%body211099%_)
                    (let _%lp211101%_ ((_%rest211103%_ _%post211098%_)
                                       (_%body211104%_ _%body211099%_))
                      (let* ((_%$%rest211105211113%_ _%rest211103%_)
                             (_%$%else211107211121%_
                              (lambda () _%body211104%_))
                             (_%$%K211109211127%_
                              (lambda (_%rest211124%_ _%bind211125%_)
                                (_%lp211101%_
                                 _%rest211124%_
                                 (cons 'let
                                       (cons _%bind211125%_
                                             (cons _%body211104%_ '())))))))
                        (if (pair? _%$%rest211105211113%_)
                            (let ((_%$%hd211110211130%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest211105211113%_)))
                                  (_%$%tl211111211132%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest211105211113%_))))
                              (let* ((_%bind211135%_ _%$%hd211110211130%_)
                                     (_%rest211137%_ _%$%tl211111211132%_))
                                (_%$%K211109211127%_
                                 _%rest211137%_
                                 _%bind211135%_)))
                            (_%$%else211107211121%_))))))
                 (_%generate-values-check211027%_
                  (lambda (_%check211095%_ _%body211096%_)
                    (cons 'begin
                          (let ((__tmp216038 (reverse _%check211095%_))
                                (__tmp216037 (cons _%body211096%_ '())))
                            (declare (not safe))
                            (##append __tmp216038 __tmp216037))))))
          (let* ((_%$%g211029211046%_
                  (lambda (_%$%g211030211043%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g211030211043%_))))
                 (_%$%g211028211092%_
                  (lambda (_%$%g211030211049%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g211030211049%_))
                        (let ((_%$%e211033211051%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g211030211049%_))))
                          (let ((_%$%hd211034211054%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e211033211051%_)))
                                (_%$%tl211035211056%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e211033211051%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl211035211056%_))
                                (let ((_%$%e211036211059%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl211035211056%_))))
                                  (let ((_%$%hd211037211062%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e211036211059%_)))
                                        (_%$%tl211038211064%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e211036211059%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl211038211064%_))
                                        (let ((_%$%e211039211067%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl211038211064%_))))
                                          (let ((_%$%hd211040211070%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e211039211067%_)))
                                                (_%$%tl211041211072%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e211039211067%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl211041211072%_))
                                                (if (gxc#generate-runtime-simple-let?
                                                     _%$%hd211037211062%_)
                                                    (_%generate-simple211022%_
                                                     _%$%hd211037211062%_
                                                     _%$%hd211040211070%_)
                                                    (_%generate-values211025%_
                                                     _%$%hd211037211062%_
                                                     _%$%hd211040211070%_))
                                                (_%$%g211029211046%_
                                                 _%$%g211030211049%_))))
                                        (_%$%g211029211046%_
                                         _%$%g211030211049%_))))
                                (_%$%g211029211046%_ _%$%g211030211049%_))))
                        (_%$%g211029211046%_ _%$%g211030211049%_)))))
            (_%$%g211028211092%_ _%stx211019%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self211772%_ _%stx211773%_)
        (let ((_%compiled-body?211775%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self211772%_
           _%stx211773%_
           _%compiled-body?211775%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g216039_
        (let ((_g216040_ (let () (declare (not safe)) (##length _g216039_))))
          (cond ((let () (declare (not safe)) (##fx= _g216040_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g216039_))
                ((let () (declare (not safe)) (##fx= _g216040_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g216039_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g216039_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals210912%_ _%hd210913%_)
        (let _%lp210915%_ ((_%rest210917%_ _%hd210913%_)
                           (_%k210918%_ '0)
                           (_%r210919%_ '()))
          (let* ((_%__stx215206215207%_ _%rest210917%_)
                 (_%$%g210924210941%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx215206215207%_)))))
            (let ((_%__kont215208215209%_
                   (lambda (_%$%g210926211004%_)
                     (_%lp210915%_
                      _%$%g210926211004%_
                      (let () (declare (not safe)) (##fx+ _%k210918%_ '1))
                      _%r210919%_)))
                  (_%__kont215210215211%_
                   (lambda (_%$%g210931210977%_ _%$%g210932210978%_)
                     (_%lp210915%_
                      _%$%g210931210977%_
                      (let () (declare (not safe)) (##fx+ _%k210918%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%$%g210932210978%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals210912%_
                                         _%k210918%_
                                         _%$%g210931210977%_)
                                        '()))
                            _%r210919%_))))
                  (_%__kont215212215213%_
                   (lambda (_%$%g210936210953%_)
                     (let ((__tmp216041
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%$%g210936210953%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals210912%_
                                               _%k210918%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (foldl__0 cons __tmp216041 _%r210919%_))))
                  (_%__kont215214215215%_ (lambda () (reverse _%r210919%_))))
              (let ((_%$%g210922210964%_
                     (lambda ()
                       (let ((_%$%g210936210953%_ _%__stx215206215207%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%$%g210936210953%_))
                             (_%__kont215212215213%_ _%$%g210936210953%_)
                             (_%__kont215214215215%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx215206215207%_))
                    (let ((_%$%e210927210993%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx215206215207%_))))
                      (let ((_%$%tl210929210998%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e210927210993%_)))
                            (_%$%hd210928210996%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e210927210993%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%$%hd210928210996%_))
                            (let ((_%$%e210930211001%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd210928210996%_))))
                              (if (equal? _%$%e210930211001%_ '#f)
                                  (_%__kont215208215209%_ _%$%tl210929210998%_)
                                  (_%__kont215210215211%_
                                   _%$%tl210929210998%_
                                   _%$%hd210928210996%_)))
                            (_%__kont215210215211%_
                             _%$%tl210929210998%_
                             _%$%hd210928210996%_))))
                    (let () (declare (not safe)) (_%$%g210922210964%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self210591%_ _%stx210592%_ _%compiled-body?210593%_)
        (letrec ((_%generate-simple210595%_
                  (lambda (_%hd210897%_ _%body210898%_)
                    (gxc#generate-runtime-simple-let
                     _%self210591%_
                     'letrec
                     _%hd210897%_
                     _%body210898%_
                     _%compiled-body?210593%_)))
                 (_%generate-values210596%_
                  (lambda (_%hd210676%_ _%body210677%_)
                    (let _%lp210679%_ ((_%rest210681%_ _%hd210676%_)
                                       (_%bind210682%_ '())
                                       (_%check210683%_ '())
                                       (_%post210684%_ '()))
                      (let* ((_%__stx215280215281%_ _%rest210681%_)
                             (_%$%g210687210698%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx215280215281%_)))))
                        (let ((_%__kont215282215283%_
                               (lambda (_%$%g210689210725%_
                                        _%$%g210690210726%_)
                                 (let* ((_%__stx215236215237%_
                                         _%$%g210690210726%_)
                                        (_%$%g210741210766%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx215236215237%_)))))
                                   (let ((_%__kont215238215239%_
                                          (lambda (_%$%g210743210873%_
                                                   _%$%g210744210874%_)
                                            (let ((_%eid210888%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%$%g210744210874%_)))
                                                  (_%expr210889%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self210591%_
                                                      _%$%g210743210873%_))))
                                              (_%lp210679%_
                                               _%$%g210689210725%_
                                               (cons (cons _%eid210888%_
                                                           (cons _%expr210889%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind210682%_)
                                               _%check210683%_
                                               _%post210684%_))))
                                         (_%__kont215240215241%_
                                          (lambda (_%$%g210754210787%_
                                                   _%$%g210755210788%_)
                                            (let* ((_%vals210801%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values210803%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals210801%_
                                                     _%$%g210755210788%_
                                                     _%$%g210754210787%_))
                                                   (_%refs210805%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals210801%_
                                                     _%$%g210755210788%_))
                                                   (_%expr210807%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self210591%_
                                                       _%$%g210754210787%_))))
                                              (_%lp210679%_
                                               _%$%g210689210725%_
                                               (let ((__tmp216043
                                                      (cons (cons _%vals210801%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr210807%_ '()))
                    _%bind210682%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp216042
                                                      (map (lambda (_%$%e210809210811%_)
                                                             (let* ((_%$%$%e210809210813210822%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%e210809210811%_)
                            (_%$%E210815210826%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%$%$%e210809210813210822%_
                                        '([eid _])))
                               '#!void))
                            (_%$%K210816210831%_
                             (lambda (_%eid210829%_)
                               (cons _%eid210829%_ (cons '#!void '())))))
                       (if (pair? _%$%$%e210809210813210822%_)
                           (let ((_%$%hd210817210834%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$%e210809210813210822%_)))
                                 (_%$%tl210818210836%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$%e210809210813210822%_))))
                             (let ((_%eid210839%_ _%$%hd210817210834%_))
                               (if (pair? _%$%tl210818210836%_)
                                   (let ((_%$%tl210820210841%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%tl210818210836%_))))
                                     (if (null? _%$%tl210820210841%_)
                                         (_%$%K210816210831%_ _%eid210839%_)
                                         (_%$%E210815210826%_)))
                                   (_%$%E210815210826%_))))
                           (_%$%E210815210826%_))))
                   _%refs210805%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  __tmp216043
                                                  __tmp216042))
                                               (cons _%check-values210803%_
                                                     _%check210683%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  _%refs210805%_
                                                  _%post210684%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx215236215237%_))
                                         (let ((_%$%e210745210849%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx215236215237%_))))
                                           (let ((_%$%tl210747210854%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e210745210849%_)))
                                                 (_%$%hd210746210852%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e210745210849%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%hd210746210852%_))
                                                 (let ((_%$%e210748210857%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%hd210746210852%_))))
                                                   (let ((_%$%tl210750210862%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e210748210857%_)))
                                                         (_%$%hd210749210860%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e210748210857%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%$%tl210750210862%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%tl210747210854%_))
                     (let ((_%$%e210751210865%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl210747210854%_))))
                       (let ((_%$%tl210753210870%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e210751210865%_)))
                             (_%$%hd210752210868%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e210751210865%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl210753210870%_))
                             (_%__kont215238215239%_
                              _%$%hd210752210868%_
                              _%$%hd210749210860%_)
                             (let ()
                               (declare (not safe))
                               (_%$%g210741210766%_)))))
                     (let () (declare (not safe)) (_%$%g210741210766%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%$%tl210747210854%_))
                     (let ((_%$%e210759210779%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl210747210854%_))))
                       (let ((_%$%tl210761210784%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e210759210779%_)))
                             (_%$%hd210760210782%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e210759210779%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl210761210784%_))
                             (_%__kont215240215241%_
                              _%$%hd210760210782%_
                              _%$%hd210746210852%_)
                             (let ()
                               (declare (not safe))
                               (_%$%g210741210766%_)))))
                     (let () (declare (not safe)) (_%$%g210741210766%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl210747210854%_))
                                                     (let ((_%$%e210759210779%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl210747210854%_))))
                                                       (let ((_%$%tl210761210784%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e210759210779%_)))
                     (_%$%hd210760210782%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%e210759210779%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl210761210784%_))
                     (_%__kont215240215241%_
                      _%$%hd210760210782%_
                      _%$%hd210746210852%_)
                     (let () (declare (not safe)) (_%$%g210741210766%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%$%g210741210766%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%$%g210741210766%_)))))))
                              (_%__kont215284215285%_
                               (lambda ()
                                 (let* ((_%body210705%_
                                         (if _%compiled-body?210593%_
                                             _%body210677%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self210591%_
                                                _%body210677%_))))
                                        (_%body210707%_
                                         (_%generate-values-post210598%_
                                          _%post210684%_
                                          _%body210705%_))
                                        (_%body210709%_
                                         (_%generate-values-check210597%_
                                          _%check210683%_
                                          _%body210707%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind210682%_)
                                               (cons _%body210709%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx215280215281%_))
                              (let ((_%$%e210691210717%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx215280215281%_))))
                                (let ((_%$%tl210693210722%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e210691210717%_)))
                                      (_%$%hd210692210720%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e210691210717%_))))
                                  (_%__kont215282215283%_
                                   _%$%tl210693210722%_
                                   _%$%hd210692210720%_)))
                              (_%__kont215284215285%_)))))))
                 (_%generate-values-check210597%_
                  (lambda (_%check210673%_ _%body210674%_)
                    (cons 'begin
                          (let ((__tmp216045 (reverse _%check210673%_))
                                (__tmp216044 (cons _%body210674%_ '())))
                            (declare (not safe))
                            (##append __tmp216045 __tmp216044)))))
                 (_%generate-values-post210598%_
                  (lambda (_%post210666%_ _%body210667%_)
                    (cons 'begin
                          (let ((__tmp216047
                                 (let ((__tmp216049
                                        (lambda (_%$%g210668210670%_)
                                          (cons 'set! _%$%g210668210670%_)))
                                       (__tmp216048 (reverse _%post210666%_)))
                                   (declare (not safe))
                                   (##map __tmp216049 __tmp216048)))
                                (__tmp216046 (cons _%body210667%_ '())))
                            (declare (not safe))
                            (##append __tmp216047 __tmp216046))))))
          (let* ((_%$%g210600210617%_
                  (lambda (_%$%g210601210614%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g210601210614%_))))
                 (_%$%g210599210663%_
                  (lambda (_%$%g210601210620%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g210601210620%_))
                        (let ((_%$%e210604210622%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g210601210620%_))))
                          (let ((_%$%hd210605210625%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e210604210622%_)))
                                (_%$%tl210606210627%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e210604210622%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl210606210627%_))
                                (let ((_%$%e210607210630%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl210606210627%_))))
                                  (let ((_%$%hd210608210633%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e210607210630%_)))
                                        (_%$%tl210609210635%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e210607210630%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl210609210635%_))
                                        (let ((_%$%e210610210638%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl210609210635%_))))
                                          (let ((_%$%hd210611210641%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e210610210638%_)))
                                                (_%$%tl210612210643%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e210610210638%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl210612210643%_))
                                                (if (gxc#generate-runtime-simple-let?
                                                     _%$%hd210608210633%_)
                                                    (_%generate-simple210595%_
                                                     _%$%hd210608210633%_
                                                     _%$%hd210611210641%_)
                                                    (_%generate-values210596%_
                                                     _%$%hd210608210633%_
                                                     _%$%hd210611210641%_))
                                                (_%$%g210600210617%_
                                                 _%$%g210601210620%_))))
                                        (_%$%g210600210617%_
                                         _%$%g210601210620%_))))
                                (_%$%g210600210617%_ _%$%g210601210620%_))))
                        (_%$%g210600210617%_ _%$%g210601210620%_)))))
            (_%$%g210599210663%_ _%stx210592%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self210903%_ _%stx210904%_)
        (let ((_%compiled-body?210906%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self210903%_
           _%stx210904%_
           _%compiled-body?210906%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g216050_
        (let ((_g216051_ (let () (declare (not safe)) (##length _g216050_))))
          (cond ((let () (declare (not safe)) (##fx= _g216051_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g216050_))
                ((let () (declare (not safe)) (##fx= _g216051_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g216050_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g216050_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self210172%_ _%stx210173%_)
        (letrec ((_%generate-values210175%_
                  (lambda (_%hd210418%_ _%body210419%_)
                    (let _%lp210421%_ ((_%rest210423%_ _%hd210418%_)
                                       (_%bind210424%_ '()))
                      (let* ((_%$%rest210425210433%_ _%rest210423%_)
                             (_%$%else210427210444%_
                              (lambda ()
                                (let ((_%bind210441%_ (reverse _%bind210424%_))
                                      (_%body210442%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self210172%_
                                          _%body210419%_))))
                                  (cons 'letrec*
                                        (cons _%bind210441%_
                                              (cons _%body210442%_ '()))))))
                             (_%$%K210429210578%_
                              (lambda (_%rest210447%_ _%hd-bind210448%_)
                                (let* ((_%__stx215294215295%_
                                        _%hd-bind210448%_)
                                       (_%$%g210451210476%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx215294215295%_)))))
                                  (let ((_%__kont215296215297%_
                                         (lambda (_%$%g210453210557%_
                                                  _%$%g210454210558%_)
                                           (let ((_%eid210572%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%$%g210454210558%_)))
                                                 (_%expr210573%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self210172%_
                                                     _%$%g210453210557%_))))
                                             (_%lp210421%_
                                              _%rest210447%_
                                              (cons (cons _%eid210572%_
                                                          (cons _%expr210573%_
                                                                '()))
                                                    _%bind210424%_)))))
                                        (_%__kont215298215299%_
                                         (lambda (_%$%g210464210497%_
                                                  _%$%g210465210498%_)
                                           (let* ((_%vals210517%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp210519%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values210521%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp210519%_
                                                    _%$%g210465210498%_
                                                    _%$%g210464210497%_))
                                                  (_%refs210523%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals210517%_
                                                    _%$%g210465210498%_))
                                                  (_%expr210525%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self210172%_
                                                      _%$%g210464210497%_))))
                                             (_%lp210421%_
                                              _%rest210447%_
                                              (let ((__tmp216052
                                                     (cons (cons _%vals210517%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp210519%_
                                                       (cons _%expr210525%_
                                                             '()))
                                                 '())
                                           (cons _%check-values210521%_
                                                 (cons _%tmp210519%_ '()))))
                               '()))
                   _%bind210424%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp216052
                                                 _%refs210523%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx215294215295%_))
                                        (let ((_%$%e210455210533%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx215294215295%_))))
                                          (let ((_%$%tl210457210538%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e210455210533%_)))
                                                (_%$%hd210456210536%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e210455210533%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd210456210536%_))
                                                (let ((_%$%e210458210541%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd210456210536%_))))
                                                  (let ((_%$%tl210460210546%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e210458210541%_)))
                                                        (_%$%hd210459210544%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e210458210541%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl210460210546%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl210457210538%_))
                                                            (let ((_%$%e210461210549%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl210457210538%_))))
                      (let ((_%$%tl210463210554%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e210461210549%_)))
                            (_%$%hd210462210552%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e210461210549%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl210463210554%_))
                            (_%__kont215296215297%_
                             _%$%hd210462210552%_
                             _%$%hd210459210544%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g210451210476%_)))))
                    (let () (declare (not safe)) (_%$%g210451210476%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%$%tl210457210538%_))
                    (let ((_%$%e210469210489%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl210457210538%_))))
                      (let ((_%$%tl210471210494%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e210469210489%_)))
                            (_%$%hd210470210492%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e210469210489%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl210471210494%_))
                            (_%__kont215298215299%_
                             _%$%hd210470210492%_
                             _%$%hd210456210536%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g210451210476%_)))))
                    (let () (declare (not safe)) (_%$%g210451210476%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl210457210538%_))
                                                    (let ((_%$%e210469210489%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl210457210538%_))))
                                                      (let ((_%$%tl210471210494%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e210469210489%_)))
                    (_%$%hd210470210492%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e210469210489%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl210471210494%_))
                    (_%__kont215298215299%_
                     _%$%hd210470210492%_
                     _%$%hd210456210536%_)
                    (let () (declare (not safe)) (_%$%g210451210476%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g210451210476%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g210451210476%_))))))))
                        (if (pair? _%$%rest210425210433%_)
                            (let ((_%$%hd210430210581%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest210425210433%_)))
                                  (_%$%tl210431210583%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest210425210433%_))))
                              (let* ((_%hd-bind210586%_ _%$%hd210430210581%_)
                                     (_%rest210588%_ _%$%tl210431210583%_))
                                (_%$%K210429210578%_
                                 _%rest210588%_
                                 _%hd-bind210586%_)))
                            (_%$%else210427210444%_))))))
                 (_%generate-letrec?210176%_
                  (lambda (_%hd210308%_)
                    (let _%lp210310%_ ((_%rest210312%_ _%hd210308%_))
                      (let* ((_%$%rest210313210321%_ _%rest210312%_)
                             (_%$%else210315210329%_ (lambda () '#t))
                             (_%$%K210317210406%_
                              (lambda (_%rest210332%_ _%hd-bind210333%_)
                                (let* ((_%$%g210335210352%_
                                        (lambda (_%$%g210336210349%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%$%g210336210349%_))))
                                       (_%$%g210334210403%_
                                        (lambda (_%$%g210336210355%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%g210336210355%_))
                                              (let ((_%$%e210339210357%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%g210336210355%_))))
                                                (let ((_%$%hd210340210360%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e210339210357%_)))
                                                      (_%$%tl210341210362%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e210339210357%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%hd210340210360%_))
                                                      (let ((_%$%e210342210365%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%hd210340210360%_))))
                (let ((_%$%hd210343210368%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e210342210365%_)))
                      (_%$%tl210344210370%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e210342210365%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl210344210370%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl210341210362%_))
                          (let ((_%$%e210345210373%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl210341210362%_))))
                            (let ((_%$%hd210346210376%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e210345210373%_)))
                                  (_%$%tl210347210378%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e210345210373%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl210347210378%_))
                                  (if (_%is-lambda-expr?210177%_
                                       _%$%hd210346210376%_)
                                      (_%lp210310%_ _%rest210332%_)
                                      '#f)
                                  (_%$%g210335210352%_ _%$%g210336210355%_))))
                          (_%$%g210335210352%_ _%$%g210336210355%_))
                      (_%$%g210335210352%_ _%$%g210336210355%_))))
              (_%$%g210335210352%_ _%$%g210336210355%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g210335210352%_
                                               _%$%g210336210355%_)))))
                                  (_%$%g210334210403%_ _%hd-bind210333%_)))))
                        (if (pair? _%$%rest210313210321%_)
                            (let ((_%$%hd210318210409%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest210313210321%_)))
                                  (_%$%tl210319210411%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest210313210321%_))))
                              (let* ((_%hd-bind210414%_ _%$%hd210318210409%_)
                                     (_%rest210416%_ _%$%tl210319210411%_))
                                (_%$%K210317210406%_
                                 _%rest210416%_
                                 _%hd-bind210414%_)))
                            (_%$%else210315210329%_))))))
                 (_%is-lambda-expr?210177%_
                  (lambda (_%expr210245%_)
                    (let* ((_%__stx215338215339%_ _%expr210245%_)
                           (_%$%g210248210262%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx215338215339%_)))))
                      (let ((_%__kont215340215341%_
                             (lambda (_%$%g210250210290%_ _%$%g210251210291%_)
                               '#t))
                            (_%__kont215342215343%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx215338215339%_))
                            (let ((_%$%e210252210274%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx215338215339%_))))
                              (let ((_%$%tl210254210279%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e210252210274%_)))
                                    (_%$%hd210253210277%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e210252210274%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd210253210277%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%$%hd210253210277%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl210254210279%_))
                                            (let ((_%$%e210255210282%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl210254210279%_))))
                                              (let ((_%$%tl210257210287%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e210255210282%_)))
                                                    (_%$%hd210256210285%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e210255210282%_))))
                                                (_%__kont215340215341%_
                                                 _%$%tl210257210287%_
                                                 _%$%hd210256210285%_)))
                                            (_%__kont215342215343%_))
                                        (_%__kont215342215343%_))
                                    (_%__kont215342215343%_))))
                            (_%__kont215342215343%_)))))))
          (let* ((_%$%g210179210196%_
                  (lambda (_%$%g210180210193%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g210180210193%_))))
                 (_%$%g210178210242%_
                  (lambda (_%$%g210180210199%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g210180210199%_))
                        (let ((_%$%e210183210201%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g210180210199%_))))
                          (let ((_%$%hd210184210204%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e210183210201%_)))
                                (_%$%tl210185210206%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e210183210201%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl210185210206%_))
                                (let ((_%$%e210186210209%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl210185210206%_))))
                                  (let ((_%$%hd210187210212%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e210186210209%_)))
                                        (_%$%tl210188210214%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e210186210209%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl210188210214%_))
                                        (let ((_%$%e210189210217%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl210188210214%_))))
                                          (let ((_%$%hd210190210220%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e210189210217%_)))
                                                (_%$%tl210191210222%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e210189210217%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl210191210222%_))
                                                (if (gxc#generate-runtime-simple-let?
                                                     _%$%hd210187210212%_)
                                                    (if (_%generate-letrec?210176%_
                                                         _%$%hd210187210212%_)
                                                        (gxc#generate-runtime-simple-let
                                                         _%self210172%_
                                                         'letrec
                                                         _%$%hd210187210212%_
                                                         _%$%hd210190210220%_
                                                         '#f)
                                                        (gxc#generate-runtime-simple-let
                                                         _%self210172%_
                                                         'letrec*
                                                         _%$%hd210187210212%_
                                                         _%$%hd210190210220%_
                                                         '#f))
                                                    (_%generate-values210175%_
                                                     _%$%hd210187210212%_
                                                     _%$%hd210190210220%_))
                                                (_%$%g210179210196%_
                                                 _%$%g210180210199%_))))
                                        (_%$%g210179210196%_
                                         _%$%g210180210199%_))))
                                (_%$%g210179210196%_ _%$%g210180210199%_))))
                        (_%$%g210179210196%_ _%$%g210180210199%_)))))
            (_%$%g210178210242%_ _%stx210173%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd210109%_)
        (let _%lp210111%_ ((_%rest210113%_ _%hd210109%_))
          (let* ((_%$%rest210114210130%_ _%rest210113%_)
                 (_%$%else210117210138%_ (lambda () '#f)))
            (let ((_%$%K210120210151%_
                   (lambda (_%rest210149%_) (_%lp210111%_ _%rest210149%_)))
                  (_%$%K210119210143%_ (lambda () '#t)))
              (let ((_%$%try-match210116210146%_
                     (lambda ()
                       (if (null? _%$%rest210114210130%_)
                           (_%$%K210119210143%_)
                           (_%$%else210117210138%_)))))
                (if (pair? _%$%rest210114210130%_)
                    (let ((_%$%tl210122210156%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest210114210130%_)))
                          (_%$%hd210121210154%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest210114210130%_))))
                      (if (pair? _%$%hd210121210154%_)
                          (let ((_%$%tl210124210161%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%hd210121210154%_)))
                                (_%$%hd210123210159%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%hd210121210154%_))))
                            (if (pair? _%$%hd210123210159%_)
                                (let ((_%$%tl210128210164%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%hd210123210159%_))))
                                  (if (null? _%$%tl210128210164%_)
                                      (if (pair? _%$%tl210124210161%_)
                                          (let ((_%$%tl210126210167%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl210124210161%_))))
                                            (if (null? _%$%tl210126210167%_)
                                                (let ((_%rest210170%_
                                                       _%$%tl210122210156%_))
                                                  (_%lp210111%_
                                                   _%rest210170%_))
                                                (_%$%else210117210138%_)))
                                          (_%$%else210117210138%_))
                                      (_%$%else210117210138%_)))
                                (_%$%else210117210138%_)))
                          (_%$%else210117210138%_)))
                    (_%$%try-match210116210146%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self210021%_
               _%form210022%_
               _%hd210023%_
               _%body210024%_
               _%compiled-body?210025%_)
        (letrec ((_%generate1210027%_
                  (lambda (_%bind210066%_)
                    (let* ((_%$%bind210067210078%_ _%bind210066%_)
                           (_%$%E210069210081%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%$%bind210067210078%_
                                       '([[id] expr])))
                              '#!void))
                           (_%$%K210070210087%_
                            (lambda (_%expr210084%_ _%id210085%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id210085%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self210021%_
                                             _%expr210084%_))
                                          '())))))
                      (if (pair? _%$%bind210067210078%_)
                          (let ((_%$%hd210071210090%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%bind210067210078%_)))
                                (_%$%tl210072210092%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%bind210067210078%_))))
                            (if (pair? _%$%hd210071210090%_)
                                (let ((_%$%hd210075210095%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%hd210071210090%_)))
                                      (_%$%tl210076210097%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%hd210071210090%_))))
                                  (let ((_%id210100%_ _%$%hd210075210095%_))
                                    (if (null? _%$%tl210076210097%_)
                                        (if (pair? _%$%tl210072210092%_)
                                            (let ((_%$%hd210073210102%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%tl210072210092%_)))
                                                  (_%$%tl210074210104%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%tl210072210092%_))))
                                              (let ((_%expr210107%_
                                                     _%$%hd210073210102%_))
                                                (if (null? _%$%tl210074210104%_)
                                                    (_%$%K210070210087%_
                                                     _%expr210107%_
                                                     _%id210100%_)
                                                    (_%$%E210069210081%_))))
                                            (_%$%E210069210081%_))
                                        (_%$%E210069210081%_))))
                                (_%$%E210069210081%_)))
                          (_%$%E210069210081%_))))))
          (let* ((_%bind210029%_ (map _%generate1210027%_ _%hd210023%_))
                 (_%body210031%_
                  (if _%compiled-body?210025%_
                      _%body210024%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self210021%_ _%body210024%_))))
                 (_%body210063%_
                  (let* ((_%$%body210032210040%_ _%body210031%_)
                         (_%$%else210034210048%_
                          (lambda () (cons _%body210031%_ '())))
                         (_%$%K210036210053%_
                          (lambda (_%exprs210051%_) _%exprs210051%_)))
                    (if (pair? _%$%body210032210040%_)
                        (let ((_%$%hd210037210056%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%body210032210040%_)))
                              (_%$%tl210038210058%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%body210032210040%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%$%hd210037210056%_ 'begin))
                              (let ((_%exprs210061%_ _%$%tl210038210058%_))
                                (_%$%K210036210053%_ _%exprs210061%_))
                              (_%$%else210034210048%_)))
                        (_%$%else210034210048%_)))))
            (cons _%form210022%_ (cons _%bind210029%_ _%body210063%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self209921%_ _%stx209922%_)
        (letrec ((_%generate1209924%_
                  (lambda (_%datum209976%_)
                    (if (or (null? _%datum209976%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum209976%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum209976%_))
                            (eof-object? _%datum209976%_))
                        _%datum209976%_
                        (if (uninterned-symbol? _%datum209976%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum209976%_
                               '#t))
                            (if (pair? _%datum209976%_)
                                (cons (_%generate1209924%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum209976%_)))
                                      (_%generate1209924%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum209976%_))))
                                (if (box? _%datum209976%_)
                                    (box (_%generate1209924%_
                                          (unbox _%datum209976%_)))
                                    (if (vector? _%datum209976%_)
                                        (vector-map
                                         _%generate1209924%_
                                         _%datum209976%_)
                                        (if (or (s8vector? _%datum209976%_)
                                                (u8vector? _%datum209976%_)
                                                (s16vector? _%datum209976%_)
                                                (u16vector? _%datum209976%_)
                                                (s32vector? _%datum209976%_)
                                                (u32vector? _%datum209976%_)
                                                (s64vector? _%datum209976%_)
                                                (u64vector? _%datum209976%_)
                                                (f32vector? _%datum209976%_)
                                                (f64vector? _%datum209976%_))
                                            _%datum209976%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx209922%_)))))))))))
          (let* ((_%$%g209926209939%_
                  (lambda (_%$%g209927209936%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g209927209936%_))))
                 (_%$%g209925209973%_
                  (lambda (_%$%g209927209942%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g209927209942%_))
                        (let ((_%$%e209929209944%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g209927209942%_))))
                          (let ((_%$%hd209930209947%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e209929209944%_)))
                                (_%$%tl209931209949%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e209929209944%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl209931209949%_))
                                (let ((_%$%e209932209952%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl209931209949%_))))
                                  (let ((_%$%hd209933209955%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e209932209952%_)))
                                        (_%$%tl209934209957%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e209932209952%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl209934209957%_))
                                        (cons 'quote
                                              (cons (_%generate1209924%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd209933209955%_)))
                                                    '()))
                                        (_%$%g209926209939%_
                                         _%$%g209927209942%_))))
                                (_%$%g209926209939%_ _%$%g209927209942%_))))
                        (_%$%g209926209939%_ _%$%g209927209942%_)))))
            (_%$%g209925209973%_ _%stx209922%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self209368%_ _%stx209369%_)
        (letrec ((_%compile-call209371%_
                  (lambda (_%rator209658%_ _%rands209659%_)
                    (let ((_%rator209665%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self209368%_
                              _%rator209658%_)))
                          (_%rands209666%_
                           (map (lambda (_%$%g209660209662%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self209368%_
                                     _%$%g209660209662%_)))
                                _%rands209659%_)))
                      (let* ((_%__stx215385215386%_ _%rator209665%_)
                             (_%$%g209669209721%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx215385215386%_)))))
                        (let ((_%__kont215387215388%_
                               (lambda (_%$%g209671209841%_
                                        _%$%g209672209842%_
                                        _%$%g209673209843%_
                                        _%$%g209674209844%_)
                                 (if (let ((__tmp216055
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands209666%_)))
                                           (__tmp216053
                                            (length (let ((__tmp216054
                                                           (lambda (_%$%g209880209883%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g209881209885%_)
                     (cons _%$%g209880209883%_ _%$%g209881209885%_))))
              (declare (not safe))
              (foldr__0 __tmp216054 '() _%$%g209673209843%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp216055 __tmp216053))
                                     (let* ((_%id209888%_ _%$%g209674209844%_)
                                            (_%args209897%_
                                             (let ((__tmp216056
                                                    (lambda (_%$%g209889209892%_
                                                             _%$%g209890209894%_)
                                                      (cons _%$%g209889209892%_
                                                            _%$%g209890209894%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp216056
                                                '()
                                                _%$%g209673209843%_)))
                                            (_%body209906%_
                                             (let ((__tmp216057
                                                    (lambda (_%$%g209898209901%_
                                                             _%$%g209899209903%_)
                                                      (cons _%$%g209898209901%_
                                                            _%$%g209899209903%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp216057
                                                '()
                                                _%$%g209672209842%_)))
                                            (_%init209908%_
                                             (map list
                                                  _%args209897%_
                                                  _%rands209666%_)))
                                       (cons 'let
                                             (cons _%id209888%_
                                                   (cons _%init209908%_
                                                         _%body209906%_))))
                                     (let ((__tmp216058
                                            (let ((__tmp216059
                                                   (lambda (_%$%g209910209913%_
                                                            _%$%g209911209915%_)
                                                     (cons _%$%g209910209913%_
                                                           _%$%g209911209915%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp216059
                                               '()
                                               _%$%g209673209843%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx209369%_
                                        __tmp216058
                                        _%rands209666%_)))))
                              (_%__kont215393215394%_
                               (lambda ()
                                 (cons _%rator209665%_ _%rands209666%_))))
                          (let ((_%__match215452215453%_
                                 (lambda (_%$%e209675209733%_
                                          _%$%hd209676209736%_
                                          _%$%tl209677209738%_
                                          _%$%e209678209741%_
                                          _%$%hd209679209744%_
                                          _%$%tl209680209746%_
                                          _%$%e209681209749%_
                                          _%$%hd209682209752%_
                                          _%$%tl209683209754%_
                                          _%$%e209684209757%_
                                          _%$%hd209685209760%_
                                          _%$%tl209686209762%_
                                          _%$%e209687209765%_
                                          _%$%hd209688209768%_
                                          _%$%tl209689209770%_
                                          _%$%e209690209773%_
                                          _%$%hd209691209776%_
                                          _%$%tl209692209778%_
                                          _%$%e209693209781%_
                                          _%$%hd209694209784%_
                                          _%$%tl209695209786%_
                                          _%__splice215389215390%_
                                          _%$%target209696209789%_
                                          _%$%tl209698209791%_)
                                   (letrec ((_%$%loop209699209794%_
                                             (lambda (_%$%hd209697209797%_
                                                      _%$%arg209703209799%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%hd209697209797%_))
                                                   (let ((_%$%e209700209801%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%hd209697209797%_))))
                                                     (let ((_%$%lp-tl209702209806%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e209700209801%_)))
                                                           (_%$%lp-hd209701209804%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e209700209801%_))))
                                                       (_%$%loop209699209794%_
                                                        _%$%lp-tl209702209806%_
                                                        (cons _%$%lp-hd209701209804%_
                                                              _%$%arg209703209799%_))))
                                                   (let ((_%$%arg209704209809%_
                                                          (reverse _%$%arg209703209799%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%$%tl209695209786%_))
                                                         (let ((_%__splice215391215392%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%$%tl209695209786%_
                           '0))))
                   (let ((_%$%tl209707209813%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice215391215392%_ '1)))
                         (_%$%target209705209811%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice215391215392%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl209707209813%_))
                         (letrec ((_%$%loop209708209816%_
                                   (lambda (_%$%hd209706209819%_
                                            _%$%body209712209821%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%hd209706209819%_))
                                         (let ((_%$%e209709209823%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%hd209706209819%_))))
                                           (let ((_%$%lp-tl209711209828%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e209709209823%_)))
                                                 (_%$%lp-hd209710209826%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e209709209823%_))))
                                             (_%$%loop209708209816%_
                                              _%$%lp-tl209711209828%_
                                              (cons _%$%lp-hd209710209826%_
                                                    _%$%body209712209821%_))))
                                         (let ((_%$%body209713209831%_
                                                (reverse _%$%body209712209821%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%$%tl209689209770%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl209683209754%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl209680209746%_))
                                                       (let ((_%$%e209714209833%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl209680209746%_))))
                 (let ((_%$%tl209716209838%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e209714209833%_)))
                       (_%$%hd209715209836%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e209714209833%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl209716209838%_))
                       (let ((_%$%g209671209841%_ _%$%hd209715209836%_)
                             (_%$%g209672209842%_ _%$%body209713209831%_)
                             (_%$%g209673209843%_ _%$%arg209704209809%_)
                             (_%$%g209674209844%_ _%$%hd209685209760%_))
                         (if (eq? _%$%g209674209844%_ _%$%g209671209841%_)
                             (_%__kont215387215388%_
                              _%$%g209671209841%_
                              _%$%g209672209842%_
                              _%$%g209673209843%_
                              _%$%g209674209844%_)
                             (_%__kont215393215394%_)))
                       (_%__kont215393215394%_))))
               (_%__kont215393215394%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont215393215394%_))
                                               (_%__kont215393215394%_)))))))
                           (_%$%loop209708209816%_
                            _%$%target209705209811%_
                            '()))
                         (_%__kont215393215394%_))))
                 (_%__kont215393215394%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%$%loop209699209794%_
                                      _%$%target209696209789%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx215385215386%_))
                                (let ((_%$%e209675209733%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx215385215386%_))))
                                  (let ((_%$%tl209677209738%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e209675209733%_)))
                                        (_%$%hd209676209736%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e209675209733%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd209676209736%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%$%hd209676209736%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl209677209738%_))
                                                (let ((_%$%e209678209741%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl209677209738%_))))
                                                  (let ((_%$%tl209680209746%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e209678209741%_)))
                                                        (_%$%hd209679209744%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e209678209741%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd209679209744%_))
                                                        (let ((_%$%e209681209749%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd209679209744%_))))
                  (let ((_%$%tl209683209754%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e209681209749%_)))
                        (_%$%hd209682209752%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e209681209749%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd209682209752%_))
                        (let ((_%$%e209684209757%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd209682209752%_))))
                          (let ((_%$%tl209686209762%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e209684209757%_)))
                                (_%$%hd209685209760%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e209684209757%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl209686209762%_))
                                (let ((_%$%e209687209765%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl209686209762%_))))
                                  (let ((_%$%tl209689209770%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e209687209765%_)))
                                        (_%$%hd209688209768%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e209687209765%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd209688209768%_))
                                        (let ((_%$%e209690209773%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd209688209768%_))))
                                          (let ((_%$%tl209692209778%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e209690209773%_)))
                                                (_%$%hd209691209776%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e209690209773%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd209691209776%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%$%hd209691209776%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl209692209778%_))
                                                        (let ((_%$%e209693209781%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl209692209778%_))))
                  (let ((_%$%tl209695209786%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e209693209781%_)))
                        (_%$%hd209694209784%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e209693209781%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%$%hd209694209784%_))
                        (let ((_%__splice215389215390%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%$%hd209694209784%_
                                  '0))))
                          (let ((_%$%tl209698209791%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice215389215390%_ '1)))
                                (_%$%target209696209789%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice215389215390%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl209698209791%_))
                                (_%__match215452215453%_
                                 _%$%e209675209733%_
                                 _%$%hd209676209736%_
                                 _%$%tl209677209738%_
                                 _%$%e209678209741%_
                                 _%$%hd209679209744%_
                                 _%$%tl209680209746%_
                                 _%$%e209681209749%_
                                 _%$%hd209682209752%_
                                 _%$%tl209683209754%_
                                 _%$%e209684209757%_
                                 _%$%hd209685209760%_
                                 _%$%tl209686209762%_
                                 _%$%e209687209765%_
                                 _%$%hd209688209768%_
                                 _%$%tl209689209770%_
                                 _%$%e209690209773%_
                                 _%$%hd209691209776%_
                                 _%$%tl209692209778%_
                                 _%$%e209693209781%_
                                 _%$%hd209694209784%_
                                 _%$%tl209695209786%_
                                 _%__splice215389215390%_
                                 _%$%target209696209789%_
                                 _%$%tl209698209791%_)
                                (_%__kont215393215394%_))))
                        (_%__kont215393215394%_))))
                (_%__kont215393215394%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont215393215394%_))
                                                (_%__kont215393215394%_))))
                                        (_%__kont215393215394%_))))
                                (_%__kont215393215394%_))))
                        (_%__kont215393215394%_))))
                (_%__kont215393215394%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont215393215394%_))
                                            (_%__kont215393215394%_))
                                        (_%__kont215393215394%_))))
                                (_%__kont215393215394%_)))))))))
          (let* ((_%$%g209373209396%_
                  (lambda (_%$%g209374209393%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g209374209393%_))))
                 (_%$%g209372209655%_
                  (lambda (_%$%g209374209399%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g209374209399%_))
                        (let ((_%$%e209377209401%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g209374209399%_))))
                          (let ((_%$%hd209378209404%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e209377209401%_)))
                                (_%$%tl209379209406%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e209377209401%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl209379209406%_))
                                (let ((_%$%e209380209409%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl209379209406%_))))
                                  (let ((_%$%hd209381209412%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e209380209409%_)))
                                        (_%$%tl209382209414%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e209380209409%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%tl209382209414%_))
                                        (let ((_g216060_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%$%tl209382209414%_
                                                  '0))))
                                          (begin
                                            (let ((_g216061_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g216060_)
                                                         (##values-length
                                                          _g216060_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g216061_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g216061_)))
                                            (let ((_%$%target209383209417%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g216060_
                                                      0)))
                                                  (_%$%tl209385209419%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g216060_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl209385209419%_))
                                                  (letrec ((_%$%loop209386209422%_
                                                            (lambda (_%$%hd209384209425%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%rand209390209427%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd209384209425%_))
                          (let ((_%$%e209387209429%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd209384209425%_))))
                            (let ((_%$%lp-hd209388209432%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e209387209429%_)))
                                  (_%$%lp-tl209389209434%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e209387209429%_))))
                              (_%$%loop209386209422%_
                               _%$%lp-tl209389209434%_
                               (cons _%$%lp-hd209388209432%_
                                     _%$%rand209390209427%_))))
                          (let ((_%$%rand209391209437%_
                                 (reverse _%$%rand209390209427%_)))
                            (if (gxc#current-compile-decls-unsafe?)
                                (_%compile-call209371%_
                                 _%$%hd209381209412%_
                                 (let ((__tmp216062
                                        (lambda (_%$%g209457209460%_
                                                 _%$%g209458209462%_)
                                          (cons _%$%g209457209460%_
                                                _%$%g209458209462%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp216062
                                    '()
                                    _%$%rand209391209437%_)))
                                (let* ((_%__stx215501215502%_
                                        _%$%hd209381209412%_)
                                       (_%$%g209466209478%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx215501215502%_)))))
                                  (let ((_%__kont215503215504%_
                                         (lambda ()
                                           (let ((_%f209515%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self209368%_
                                                     _%$%hd209381209412%_))))
                                             (if (and (let ((__tmp216063
                                                             (symbol->string
                                                              _%f209515%_)))
                                                        (declare (not safe))
                                                        (##string-prefix?
                                                         '"##"
                                                         __tmp216063))
                                                      (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##memq _%f209515%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let _%lp209517%_ ((_%rest209520%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (reverse (let ((__tmp216065
                                             (lambda (_%$%g209637209640%_
                                                      _%$%g209638209642%_)
                                               (cons _%$%g209637209640%_
                                                     _%$%g209638209642%_))))
                                        (declare (not safe))
                                        (foldr__0
                                         __tmp216065
                                         '()
                                         _%$%rand209391209437%_))))
                            (_%bind209522%_ '())
                            (_%args209523%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%$%rest209524209532%_
                                                           _%rest209520%_)
                                                          (_%$%else209526209540%_
                                                           (lambda ()
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%bind209522%_
                                 (cons '(declare (not safe))
                                       (cons (cons _%f209515%_ _%args209523%_)
                                             '()))))))
                  (_%$%K209528209626%_
                   (lambda (_%rest209543%_ _%e209544%_)
                     (let* ((_%__stx215455215456%_ _%e209544%_)
                            (_%$%g209549209567%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%__stx215455215456%_)))))
                       (let ((_%__kont215457215458%_
                              (lambda ()
                                (_%lp209517%_
                                 _%rest209543%_
                                 _%bind209522%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _%e209544%_))
                                       _%args209523%_))))
                             (_%__kont215459215460%_
                              (lambda ()
                                (_%lp209517%_
                                 _%rest209543%_
                                 _%bind209522%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _%e209544%_))
                                       _%args209523%_))))
                             (_%__kont215461215462%_
                              (lambda ()
                                (let ((_%tmp209574%_
                                       (let ((__tmp216064
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__tmp))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp216064))))
                                  (_%lp209517%_
                                   _%rest209543%_
                                   (cons (cons _%tmp209574%_
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _%e209544%_))
                                                     '()))
                                         _%bind209522%_)
                                   (cons _%tmp209574%_ _%args209523%_))))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%__stx215455215456%_))
                             (let ((_%$%e209551209605%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%__stx215455215456%_))))
                               (let ((_%$%tl209553209610%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e209551209605%_)))
                                     (_%$%hd209552209608%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e209551209605%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#identifier? _%$%hd209552209608%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-eq?
                                            '%#ref
                                            _%$%hd209552209608%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%tl209553209610%_))
                                             (let ((_%$%e209554209613%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%tl209553209610%_))))
                                               (let ((_%$%tl209556209618%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e209554209613%_)))
                                                     (_%$%hd209555209616%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e209554209613%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%$%tl209556209618%_))
                                                     (_%__kont215457215458%_)
                                                     (_%__kont215461215462%_))))
                                             (_%__kont215461215462%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#quote
                                                _%$%hd209552209608%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%tl209553209610%_))
                                                 (let ((_%$%e209560209590%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%tl209553209610%_))))
                                                   (let ((_%$%tl209562209595%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e209560209590%_)))
                                                         (_%$%hd209561209593%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e209560209590%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%$%tl209562209595%_))
                                                         (_%__kont215459215460%_)
                                                         (_%__kont215461215462%_))))
                                                 (_%__kont215461215462%_))
                                             (_%__kont215461215462%_)))
                                     (_%__kont215461215462%_))))
                             (_%__kont215461215462%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (pair? _%$%rest209524209532%_)
                                                         (let ((_%$%hd209529209629%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%rest209524209532%_)))
                       (_%$%tl209530209631%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%rest209524209532%_))))
                   (let* ((_%e209634%_ _%$%hd209529209629%_)
                          (_%rest209636%_ _%$%tl209530209631%_))
                     (_%$%K209528209626%_ _%rest209636%_ _%e209634%_)))
                 (_%$%else209526209540%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%compile-call209371%_
                                                  _%$%hd209381209412%_
                                                  (let ((__tmp216066
                                                         (lambda (_%$%g209644209647%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g209645209649%_)
                   (cons _%$%g209644209647%_ _%$%g209645209649%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp216066
                                                     '()
                                                     _%$%rand209391209437%_)))))))
                                        (_%__kont215505215506%_
                                         (lambda ()
                                           (_%compile-call209371%_
                                            _%$%hd209381209412%_
                                            (let ((__tmp216067
                                                   (lambda (_%$%g209484209487%_
                                                            _%$%g209485209489%_)
                                                     (cons _%$%g209484209487%_
                                                           _%$%g209485209489%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp216067
                                               '()
                                               _%$%rand209391209437%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx215501215502%_))
                                        (let ((_%$%e209468209497%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx215501215502%_))))
                                          (let ((_%$%tl209470209502%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e209468209497%_)))
                                                (_%$%hd209469209500%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e209468209497%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd209469209500%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%$%hd209469209500%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl209470209502%_))
                                                        (let ((_%$%e209471209505%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl209470209502%_))))
                  (let ((_%$%tl209473209510%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e209471209505%_)))
                        (_%$%hd209472209508%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e209471209505%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl209473209510%_))
                        (_%__kont215503215504%_)
                        (_%__kont215505215506%_))))
                (_%__kont215505215506%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont215505215506%_))
                                                (_%__kont215505215506%_))))
                                        (_%__kont215505215506%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%loop209386209422%_
                                                     _%$%target209383209417%_
                                                     '()))
                                                  (_%$%g209373209396%_
                                                   _%$%g209374209399%_)))))
                                        (_%$%g209373209396%_
                                         _%$%g209374209399%_))))
                                (_%$%g209373209396%_ _%$%g209374209399%_))))
                        (_%$%g209373209396%_ _%$%g209374209399%_)))))
            (_%$%g209372209655%_ _%stx209369%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self209113%_ _%stx209114%_)
        (let* ((_%__stx215573215574%_ _%stx209114%_)
               (_%$%g209117209146%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx215573215574%_)))))
          (let ((_%__kont215575215576%_
                 (lambda (_%$%g209119209212%_ _%$%g209120209213%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self209113%_
                        _%stx209114%_)
                       (let ((_%f209235%_
                              (let ((__tmp216068
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%$%g209120209213%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self209113%_
                                 __tmp216068))))
                         (let _%lp209237%_ ((_%rest209240%_
                                             (reverse (let ((__tmp216070
                                                             (lambda (_%$%g209357209360%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g209358209362%_)
                       (cons _%$%g209357209360%_ _%$%g209358209362%_))))
                (declare (not safe))
                (foldr__0 __tmp216070 '() _%$%g209119209212%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind209242%_ '())
                                            (_%args209243%_ '()))
                           (let* ((_%$%rest209244209252%_ _%rest209240%_)
                                  (_%$%else209246209260%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind209242%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f209235%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args209243%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%$%K209248209346%_
                                   (lambda (_%rest209263%_ _%e209264%_)
                                     (let* ((_%__stx215527215528%_ _%e209264%_)
                                            (_%$%g209269209287%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx215527215528%_)))))
                                       (let ((_%__kont215529215530%_
                                              (lambda ()
                                                (_%lp209237%_
                                                 _%rest209263%_
                                                 _%bind209242%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e209264%_))
                                                       _%args209243%_))))
                                             (_%__kont215531215532%_
                                              (lambda ()
                                                (_%lp209237%_
                                                 _%rest209263%_
                                                 _%bind209242%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e209264%_))
                                                       _%args209243%_))))
                                             (_%__kont215533215534%_
                                              (lambda ()
                                                (let ((_%tmp209294%_
                                                       (let ((__tmp216069
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp216069))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp209237%_
                                                   _%rest209263%_
                                                   (cons (cons _%tmp209294%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e209264%_))
                             '()))
                 _%bind209242%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp209294%_
                                                         _%args209243%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx215527215528%_))
                                             (let ((_%$%e209271209325%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx215527215528%_))))
                                               (let ((_%$%tl209273209330%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e209271209325%_)))
                                                     (_%$%hd209272209328%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e209271209325%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%$%hd209272209328%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%$%hd209272209328%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%tl209273209330%_))
                     (let ((_%$%e209274209333%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl209273209330%_))))
                       (let ((_%$%tl209276209338%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e209274209333%_)))
                             (_%$%hd209275209336%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e209274209333%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl209276209338%_))
                             (_%__kont215529215530%_)
                             (_%__kont215533215534%_))))
                     (_%__kont215533215534%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%$%hd209272209328%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%tl209273209330%_))
                         (let ((_%$%e209280209310%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%tl209273209330%_))))
                           (let ((_%$%tl209282209315%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e209280209310%_)))
                                 (_%$%hd209281209313%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e209280209310%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%$%tl209282209315%_))
                                 (_%__kont215531215532%_)
                                 (_%__kont215533215534%_))))
                         (_%__kont215533215534%_))
                     (_%__kont215533215534%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont215533215534%_))))
                                             (_%__kont215533215534%_)))))))
                             (if (pair? _%$%rest209244209252%_)
                                 (let ((_%$%hd209249209349%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%rest209244209252%_)))
                                       (_%$%tl209250209351%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%rest209244209252%_))))
                                   (let* ((_%e209354%_ _%$%hd209249209349%_)
                                          (_%rest209356%_
                                           _%$%tl209250209351%_))
                                     (_%$%K209248209346%_
                                      _%rest209356%_
                                      _%e209354%_)))
                                 (_%$%else209246209260%_))))))))
                (_%__kont215579215580%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self209113%_ _%stx209114%_))))
            (let ((_%__match215618215619%_
                   (lambda (_%$%e209121209158%_
                            _%$%hd209122209161%_
                            _%$%tl209123209163%_
                            _%$%e209124209166%_
                            _%$%hd209125209169%_
                            _%$%tl209126209171%_
                            _%$%e209127209174%_
                            _%$%hd209128209177%_
                            _%$%tl209129209179%_
                            _%$%e209130209182%_
                            _%$%hd209131209185%_
                            _%$%tl209132209187%_
                            _%__splice215577215578%_
                            _%$%target209133209190%_
                            _%$%tl209135209192%_)
                     (letrec ((_%$%loop209136209195%_
                               (lambda (_%$%hd209134209198%_
                                        _%$%rand209140209200%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd209134209198%_))
                                     (let ((_%$%e209137209202%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd209134209198%_))))
                                       (let ((_%$%lp-tl209139209207%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e209137209202%_)))
                                             (_%$%lp-hd209138209205%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e209137209202%_))))
                                         (_%$%loop209136209195%_
                                          _%$%lp-tl209139209207%_
                                          (cons _%$%lp-hd209138209205%_
                                                _%$%rand209140209200%_))))
                                     (let ((_%$%rand209141209210%_
                                            (reverse _%$%rand209140209200%_)))
                                       (_%__kont215575215576%_
                                        _%$%rand209141209210%_
                                        _%$%hd209131209185%_))))))
                       (_%$%loop209136209195%_
                        _%$%target209133209190%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx215573215574%_))
                  (let ((_%$%e209121209158%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx215573215574%_))))
                    (let ((_%$%tl209123209163%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e209121209158%_)))
                          (_%$%hd209122209161%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e209121209158%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl209123209163%_))
                          (let ((_%$%e209124209166%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl209123209163%_))))
                            (let ((_%$%tl209126209171%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e209124209166%_)))
                                  (_%$%hd209125209169%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e209124209166%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd209125209169%_))
                                  (let ((_%$%e209127209174%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd209125209169%_))))
                                    (let ((_%$%tl209129209179%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e209127209174%_)))
                                          (_%$%hd209128209177%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e209127209174%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd209128209177%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd209128209177%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl209129209179%_))
                                                  (let ((_%$%e209130209182%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl209129209179%_))))
                                                    (let ((_%$%tl209132209187%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e209130209182%_)))
                                                          (_%$%hd209131209185%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e209130209182%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl209132209187%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%$%tl209126209171%_))
                      (let ((_%__splice215577215578%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl209126209171%_
                                '0))))
                        (let ((_%$%tl209135209192%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice215577215578%_ '1)))
                              (_%$%target209133209190%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice215577215578%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl209135209192%_))
                              (_%__match215618215619%_
                               _%$%e209121209158%_
                               _%$%hd209122209161%_
                               _%$%tl209123209163%_
                               _%$%e209124209166%_
                               _%$%hd209125209169%_
                               _%$%tl209126209171%_
                               _%$%e209127209174%_
                               _%$%hd209128209177%_
                               _%$%tl209129209179%_
                               _%$%e209130209182%_
                               _%$%hd209131209185%_
                               _%$%tl209132209187%_
                               _%__splice215577215578%_
                               _%$%target209133209190%_
                               _%$%tl209135209192%_)
                              (_%__kont215579215580%_))))
                      (_%__kont215579215580%_))
                  (_%__kont215579215580%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont215579215580%_))
                                              (_%__kont215579215580%_))
                                          (_%__kont215579215580%_))))
                                  (_%__kont215579215580%_))))
                          (_%__kont215579215580%_))))
                  (_%__kont215579215580%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self208925%_ _%stx208926%_)
        (letrec ((_%simplify208928%_
                  (lambda (_%code209013%_)
                    (let* ((_%$%code209014209032%_ _%code209013%_)
                           (_%$%else209016209040%_ (lambda () _%code209013%_))
                           (_%$%K209018209076%_
                            (lambda (_%expr209043%_ _%test209044%_)
                              (let* ((_%$%expr209045209053%_ _%expr209043%_)
                                     (_%$%else209047209061%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test209044%_
                                                    (cons _%expr209043%_
                                                          '())))))
                                     (_%$%K209049209066%_
                                      (lambda (_%exprs209064%_)
                                        (cons 'and
                                              (cons _%test209044%_
                                                    _%exprs209064%_)))))
                                (if (pair? _%$%expr209045209053%_)
                                    (let ((_%$%hd209050209069%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%expr209045209053%_)))
                                          (_%$%tl209051209071%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%expr209045209053%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%$%hd209050209069%_ 'and))
                                          (let ((_%exprs209074%_
                                                 _%$%tl209051209071%_))
                                            (_%$%K209049209066%_
                                             _%exprs209074%_))
                                          (_%$%else209047209061%_)))
                                    (_%$%else209047209061%_))))))
                      (if (pair? _%$%code209014209032%_)
                          (let ((_%$%hd209019209079%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%code209014209032%_)))
                                (_%$%tl209020209081%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%code209014209032%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%$%hd209019209079%_ 'if))
                                (if (pair? _%$%tl209020209081%_)
                                    (let ((_%$%hd209021209084%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%tl209020209081%_)))
                                          (_%$%tl209022209086%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%tl209020209081%_))))
                                      (let ((_%test209089%_
                                             _%$%hd209021209084%_))
                                        (if (pair? _%$%tl209022209086%_)
                                            (let ((_%$%hd209023209091%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%tl209022209086%_)))
                                                  (_%$%tl209024209093%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%tl209022209086%_))))
                                              (let ((_%expr209096%_
                                                     _%$%hd209023209091%_))
                                                (if (pair? _%$%tl209024209093%_)
                                                    (let ((_%$%hd209025209098%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%tl209024209093%_)))
                                                          (_%$%tl209026209100%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%tl209024209093%_))))
                                                      (if (pair? _%$%hd209025209098%_)
                                                          (let ((_%$%hd209027209103%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%hd209025209098%_)))
                        (_%$%tl209028209105%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%hd209025209098%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%$%hd209027209103%_ 'quote))
                        (if (pair? _%$%tl209028209105%_)
                            (let ((_%$%hd209029209108%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%tl209028209105%_)))
                                  (_%$%tl209030209110%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%tl209028209105%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%$%hd209029209108%_ '#f))
                                  (if (null? _%$%tl209030209110%_)
                                      (if (null? _%$%tl209026209100%_)
                                          (_%$%K209018209076%_
                                           _%expr209096%_
                                           _%test209089%_)
                                          (_%$%else209016209040%_))
                                      (_%$%else209016209040%_))
                                  (_%$%else209016209040%_)))
                            (_%$%else209016209040%_))
                        (_%$%else209016209040%_)))
                  (_%$%else209016209040%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%else209016209040%_))))
                                            (_%$%else209016209040%_))))
                                    (_%$%else209016209040%_))
                                (_%$%else209016209040%_)))
                          (_%$%else209016209040%_))))))
          (let* ((_%$%g208930208951%_
                  (lambda (_%$%g208931208948%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g208931208948%_))))
                 (_%$%g208929209010%_
                  (lambda (_%$%g208931208954%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g208931208954%_))
                        (let ((_%$%e208935208956%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g208931208954%_))))
                          (let ((_%$%hd208936208959%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e208935208956%_)))
                                (_%$%tl208937208961%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e208935208956%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl208937208961%_))
                                (let ((_%$%e208938208964%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl208937208961%_))))
                                  (let ((_%$%hd208939208967%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e208938208964%_)))
                                        (_%$%tl208940208969%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e208938208964%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl208940208969%_))
                                        (let ((_%$%e208941208972%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl208940208969%_))))
                                          (let ((_%$%hd208942208975%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e208941208972%_)))
                                                (_%$%tl208943208977%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e208941208972%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl208943208977%_))
                                                (let ((_%$%e208944208980%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl208943208977%_))))
                                                  (let ((_%$%hd208945208983%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e208944208980%_)))
                                                        (_%$%tl208946208985%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e208944208980%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl208946208985%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#current-compile-boolean-context))
                                                            (_%simplify208928%_
                                                             (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self208925%_
                                    _%$%hd208939208967%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self208925%_
                                          _%$%hd208942208975%_))
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self208925%_
                                                _%$%hd208945208983%_))
                                             '())))))
                    (cons 'if
                          (cons (let ((__tmp216071
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self208925%_
                                            _%$%hd208939208967%_)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp216071
                                   gxc#current-compile-boolean-context
                                   '#t))
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self208925%_
                                         _%$%hd208942208975%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self208925%_
                                               _%$%hd208945208983%_))
                                            '())))))
                (_%$%g208930208951%_ _%$%g208931208954%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g208930208951%_
                                                 _%$%g208931208954%_))))
                                        (_%$%g208930208951%_
                                         _%$%g208931208954%_))))
                                (_%$%g208930208951%_ _%$%g208931208954%_))))
                        (_%$%g208930208951%_ _%$%g208931208954%_)))))
            (_%$%g208929209010%_ _%stx208926%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self208873%_ _%stx208874%_)
        (let* ((_%$%g208876208889%_
                (lambda (_%$%g208877208886%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g208877208886%_))))
               (_%$%g208875208922%_
                (lambda (_%$%g208877208892%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g208877208892%_))
                      (let ((_%$%e208879208894%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g208877208892%_))))
                        (let ((_%$%hd208880208897%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e208879208894%_)))
                              (_%$%tl208881208899%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e208879208894%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl208881208899%_))
                              (let ((_%$%e208882208902%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl208881208899%_))))
                                (let ((_%$%hd208883208905%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e208882208902%_)))
                                      (_%$%tl208884208907%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e208882208902%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl208884208907%_))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-binding-id
                                         _%$%hd208883208905%_))
                                      (_%$%g208876208889%_
                                       _%$%g208877208892%_))))
                              (_%$%g208876208889%_ _%$%g208877208892%_))))
                      (_%$%g208876208889%_ _%$%g208877208892%_)))))
          (_%$%g208875208922%_ _%stx208874%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self208805%_ _%stx208806%_)
        (let* ((_%$%g208808208825%_
                (lambda (_%$%g208809208822%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g208809208822%_))))
               (_%$%g208807208870%_
                (lambda (_%$%g208809208828%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g208809208828%_))
                      (let ((_%$%e208812208830%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g208809208828%_))))
                        (let ((_%$%hd208813208833%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e208812208830%_)))
                              (_%$%tl208814208835%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e208812208830%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl208814208835%_))
                              (let ((_%$%e208815208838%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl208814208835%_))))
                                (let ((_%$%hd208816208841%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e208815208838%_)))
                                      (_%$%tl208817208843%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e208815208838%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl208817208843%_))
                                      (let ((_%$%e208818208846%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl208817208843%_))))
                                        (let ((_%$%hd208819208849%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e208818208846%_)))
                                              (_%$%tl208820208851%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e208818208846%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl208820208851%_))
                                              (cons 'set!
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#generate-runtime-binding-id
                                                             _%$%hd208816208841%_))
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self208805%_
                           _%$%hd208819208849%_))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g208808208825%_
                                               _%$%g208809208828%_))))
                                      (_%$%g208808208825%_
                                       _%$%g208809208828%_))))
                              (_%$%g208808208825%_ _%$%g208809208828%_))))
                      (_%$%g208808208825%_ _%$%g208809208828%_)))))
          (_%$%g208807208870%_ _%stx208806%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self208616%_ _%stx208617%_)
        (let* ((_%$%g208619208636%_
                (lambda (_%$%g208620208633%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g208620208633%_))))
               (_%$%g208618208802%_
                (lambda (_%$%g208620208639%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g208620208639%_))
                      (let ((_%$%e208623208641%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g208620208639%_))))
                        (let ((_%$%hd208624208644%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e208623208641%_)))
                              (_%$%tl208625208646%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e208623208641%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl208625208646%_))
                              (let ((_%$%e208626208649%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl208625208646%_))))
                                (let ((_%$%hd208627208652%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e208626208649%_)))
                                      (_%$%tl208628208654%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e208626208649%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl208628208654%_))
                                      (let ((_%$%e208629208657%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl208628208654%_))))
                                        (let ((_%$%hd208630208660%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e208629208657%_)))
                                              (_%$%tl208631208662%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e208629208657%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl208631208662%_))
                                              (if (gxc#current-compile-decls-unsafe?)
                                                  (cons '##structure-instance-of?
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__1 _%self208616%_ _%$%hd208630208660%_))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self208616%_
                               _%$%hd208627208652%_))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let _%lp208681%_ ((_%rest208684%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$%hd208627208652%_
                                    (cons _%$%hd208630208660%_ '())))
                             (_%bind208686%_ '())
                             (_%args208687%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%$%rest208688208696%_
                                                            _%rest208684%_)
                                                           (_%$%else208690208704%_
                                                            (lambda ()
                                                              (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%bind208686%_
                                  (cons '(declare (not safe))
                                        (cons (cons '##structure-instance-of?
                                                    _%args208687%_)
                                              '()))))))
                   (_%$%K208692208790%_
                    (lambda (_%rest208707%_ _%e208708%_)
                      (let* ((_%__stx215621215622%_ _%e208708%_)
                             (_%$%g208713208731%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx215621215622%_)))))
                        (let ((_%__kont215623215624%_
                               (lambda ()
                                 (_%lp208681%_
                                  _%rest208707%_
                                  _%bind208686%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e208708%_))
                                        _%args208687%_))))
                              (_%__kont215625215626%_
                               (lambda ()
                                 (_%lp208681%_
                                  _%rest208707%_
                                  _%bind208686%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e208708%_))
                                        _%args208687%_))))
                              (_%__kont215627215628%_
                               (lambda ()
                                 (let ((_%tmp208738%_
                                        (let ((__tmp216072
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__tmp))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp216072))))
                                   (_%lp208681%_
                                    _%rest208707%_
                                    (cons (cons _%tmp208738%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__0
                                                         _%e208708%_))
                                                      '()))
                                          _%bind208686%_)
                                    (cons _%tmp208738%_ _%args208687%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx215621215622%_))
                              (let ((_%$%e208715208769%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx215621215622%_))))
                                (let ((_%$%tl208717208774%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e208715208769%_)))
                                      (_%$%hd208716208772%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e208715208769%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd208716208772%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd208716208772%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl208717208774%_))
                                              (let ((_%$%e208718208777%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl208717208774%_))))
                                                (let ((_%$%tl208720208782%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e208718208777%_)))
                                                      (_%$%hd208719208780%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e208718208777%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl208720208782%_))
                                                      (_%__kont215623215624%_)
                                                      (_%__kont215627215628%_))))
                                              (_%__kont215627215628%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%$%hd208716208772%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl208717208774%_))
                                                  (let ((_%$%e208724208754%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl208717208774%_))))
                                                    (let ((_%$%tl208726208759%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e208724208754%_)))
                                                          (_%$%hd208725208757%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e208724208754%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl208726208759%_))
                                                          (_%__kont215625215626%_)
                                                          (_%__kont215627215628%_))))
                                                  (_%__kont215627215628%_))
                                              (_%__kont215627215628%_)))
                                      (_%__kont215627215628%_))))
                              (_%__kont215627215628%_)))))))
              (if (pair? _%$%rest208688208696%_)
                  (let ((_%$%hd208693208793%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest208688208696%_)))
                        (_%$%tl208694208795%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest208688208696%_))))
                    (let* ((_%e208798%_ _%$%hd208693208793%_)
                           (_%rest208800%_ _%$%tl208694208795%_))
                      (_%$%K208692208790%_ _%rest208800%_ _%e208798%_)))
                  (_%$%else208690208704%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g208619208636%_
                                               _%$%g208620208639%_))))
                                      (_%$%g208619208636%_
                                       _%$%g208620208639%_))))
                              (_%$%g208619208636%_ _%$%g208620208639%_))))
                      (_%$%g208619208636%_ _%$%g208620208639%_)))))
          (_%$%g208618208802%_ _%stx208617%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self208427%_ _%stx208428%_)
        (let* ((_%$%g208430208447%_
                (lambda (_%$%g208431208444%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g208431208444%_))))
               (_%$%g208429208613%_
                (lambda (_%$%g208431208450%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g208431208450%_))
                      (let ((_%$%e208434208452%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g208431208450%_))))
                        (let ((_%$%hd208435208455%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e208434208452%_)))
                              (_%$%tl208436208457%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e208434208452%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl208436208457%_))
                              (let ((_%$%e208437208460%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl208436208457%_))))
                                (let ((_%$%hd208438208463%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e208437208460%_)))
                                      (_%$%tl208439208465%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e208437208460%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl208439208465%_))
                                      (let ((_%$%e208440208468%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl208439208465%_))))
                                        (let ((_%$%hd208441208471%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e208440208468%_)))
                                              (_%$%tl208442208473%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e208440208468%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl208442208473%_))
                                              (if (gxc#current-compile-decls-unsafe?)
                                                  (cons '##structure-direct-instance-of?
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__1 _%self208427%_ _%$%hd208441208471%_))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self208427%_
                               _%$%hd208438208463%_))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let _%lp208492%_ ((_%rest208495%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$%hd208438208463%_
                                    (cons _%$%hd208441208471%_ '())))
                             (_%bind208497%_ '())
                             (_%args208498%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%$%rest208499208507%_
                                                            _%rest208495%_)
                                                           (_%$%else208501208515%_
                                                            (lambda ()
                                                              (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%bind208497%_
                                  (cons '(declare (not safe))
                                        (cons (cons '##structure-direct-instance-of?
                                                    _%args208498%_)
                                              '()))))))
                   (_%$%K208503208601%_
                    (lambda (_%rest208518%_ _%e208519%_)
                      (let* ((_%__stx215667215668%_ _%e208519%_)
                             (_%$%g208524208542%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx215667215668%_)))))
                        (let ((_%__kont215669215670%_
                               (lambda ()
                                 (_%lp208492%_
                                  _%rest208518%_
                                  _%bind208497%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e208519%_))
                                        _%args208498%_))))
                              (_%__kont215671215672%_
                               (lambda ()
                                 (_%lp208492%_
                                  _%rest208518%_
                                  _%bind208497%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e208519%_))
                                        _%args208498%_))))
                              (_%__kont215673215674%_
                               (lambda ()
                                 (let ((_%tmp208549%_
                                        (let ((__tmp216073
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__tmp))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp216073))))
                                   (_%lp208492%_
                                    _%rest208518%_
                                    (cons (cons _%tmp208549%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__0
                                                         _%e208519%_))
                                                      '()))
                                          _%bind208497%_)
                                    (cons _%tmp208549%_ _%args208498%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx215667215668%_))
                              (let ((_%$%e208526208580%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx215667215668%_))))
                                (let ((_%$%tl208528208585%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e208526208580%_)))
                                      (_%$%hd208527208583%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e208526208580%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd208527208583%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd208527208583%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl208528208585%_))
                                              (let ((_%$%e208529208588%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl208528208585%_))))
                                                (let ((_%$%tl208531208593%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e208529208588%_)))
                                                      (_%$%hd208530208591%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e208529208588%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl208531208593%_))
                                                      (_%__kont215669215670%_)
                                                      (_%__kont215673215674%_))))
                                              (_%__kont215673215674%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%$%hd208527208583%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl208528208585%_))
                                                  (let ((_%$%e208535208565%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl208528208585%_))))
                                                    (let ((_%$%tl208537208570%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e208535208565%_)))
                                                          (_%$%hd208536208568%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e208535208565%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl208537208570%_))
                                                          (_%__kont215671215672%_)
                                                          (_%__kont215673215674%_))))
                                                  (_%__kont215673215674%_))
                                              (_%__kont215673215674%_)))
                                      (_%__kont215673215674%_))))
                              (_%__kont215673215674%_)))))))
              (if (pair? _%$%rest208499208507%_)
                  (let ((_%$%hd208504208604%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest208499208507%_)))
                        (_%$%tl208505208606%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest208499208507%_))))
                    (let* ((_%e208609%_ _%$%hd208504208604%_)
                           (_%rest208611%_ _%$%tl208505208606%_))
                      (_%$%K208503208601%_ _%rest208611%_ _%e208609%_)))
                  (_%$%else208501208515%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g208430208447%_
                                               _%$%g208431208450%_))))
                                      (_%$%g208430208447%_
                                       _%$%g208431208450%_))))
                              (_%$%g208430208447%_ _%$%g208431208450%_))))
                      (_%$%g208430208447%_ _%$%g208431208450%_)))))
          (_%$%g208429208613%_ _%stx208428%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self208343%_ _%stx208344%_)
        (let* ((_%$%g208346208367%_
                (lambda (_%$%g208347208364%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g208347208364%_))))
               (_%$%g208345208424%_
                (lambda (_%$%g208347208370%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g208347208370%_))
                      (let ((_%$%e208351208372%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g208347208370%_))))
                        (let ((_%$%hd208352208375%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e208351208372%_)))
                              (_%$%tl208353208377%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e208351208372%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl208353208377%_))
                              (let ((_%$%e208354208380%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl208353208377%_))))
                                (let ((_%$%hd208355208383%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e208354208380%_)))
                                      (_%$%tl208356208385%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e208354208380%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl208356208385%_))
                                      (let ((_%$%e208357208388%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl208356208385%_))))
                                        (let ((_%$%hd208358208391%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e208357208388%_)))
                                              (_%$%tl208359208393%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e208357208388%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl208359208393%_))
                                              (let ((_%$%e208360208396%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl208359208393%_))))
                                                (let ((_%$%hd208361208399%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e208360208396%_)))
                                                      (_%$%tl208362208401%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e208360208396%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl208362208401%_))
                                                      (cons '##structure-ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#compile-e__1
                             _%self208343%_
                             _%$%hd208361208399%_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _%self208343%_
                                   _%$%hd208358208391%_))
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self208343%_
                                         _%$%hd208355208383%_))
                                      (cons ''#f '())))))
              (_%$%g208346208367%_ _%$%g208347208370%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g208346208367%_
                                               _%$%g208347208370%_))))
                                      (_%$%g208346208367%_
                                       _%$%g208347208370%_))))
                              (_%$%g208346208367%_ _%$%g208347208370%_))))
                      (_%$%g208346208367%_ _%$%g208347208370%_)))))
          (_%$%g208345208424%_ _%stx208344%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self208243%_ _%stx208244%_)
        (let* ((_%$%g208246208271%_
                (lambda (_%$%g208247208268%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g208247208268%_))))
               (_%$%g208245208340%_
                (lambda (_%$%g208247208274%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g208247208274%_))
                      (let ((_%$%e208252208276%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g208247208274%_))))
                        (let ((_%$%hd208253208279%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e208252208276%_)))
                              (_%$%tl208254208281%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e208252208276%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl208254208281%_))
                              (let ((_%$%e208255208284%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl208254208281%_))))
                                (let ((_%$%hd208256208287%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e208255208284%_)))
                                      (_%$%tl208257208289%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e208255208284%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl208257208289%_))
                                      (let ((_%$%e208258208292%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl208257208289%_))))
                                        (let ((_%$%hd208259208295%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e208258208292%_)))
                                              (_%$%tl208260208297%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e208258208292%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl208260208297%_))
                                              (let ((_%$%e208261208300%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl208260208297%_))))
                                                (let ((_%$%hd208262208303%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e208261208300%_)))
                                                      (_%$%tl208263208305%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e208261208300%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl208263208305%_))
                                                      (let ((_%$%e208264208308%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl208263208305%_))))
                (let ((_%$%hd208265208311%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e208264208308%_)))
                      (_%$%tl208266208313%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e208264208308%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl208266208313%_))
                      (cons '##structure-set!
                            (cons (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self208243%_
                                     _%$%hd208262208303%_))
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self208243%_
                                           _%$%hd208265208311%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self208243%_
                                                 _%$%hd208259208295%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self208243%_
                                                       _%$%hd208256208287%_))
                                                    (cons ''#f '()))))))
                      (_%$%g208246208271%_ _%$%g208247208274%_))))
              (_%$%g208246208271%_ _%$%g208247208274%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g208246208271%_
                                               _%$%g208247208274%_))))
                                      (_%$%g208246208271%_
                                       _%$%g208247208274%_))))
                              (_%$%g208246208271%_ _%$%g208247208274%_))))
                      (_%$%g208246208271%_ _%$%g208247208274%_)))))
          (_%$%g208245208340%_ _%stx208244%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self208159%_ _%stx208160%_)
        (let* ((_%$%g208162208183%_
                (lambda (_%$%g208163208180%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g208163208180%_))))
               (_%$%g208161208240%_
                (lambda (_%$%g208163208186%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g208163208186%_))
                      (let ((_%$%e208167208188%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g208163208186%_))))
                        (let ((_%$%hd208168208191%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e208167208188%_)))
                              (_%$%tl208169208193%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e208167208188%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl208169208193%_))
                              (let ((_%$%e208170208196%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl208169208193%_))))
                                (let ((_%$%hd208171208199%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e208170208196%_)))
                                      (_%$%tl208172208201%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e208170208196%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl208172208201%_))
                                      (let ((_%$%e208173208204%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl208172208201%_))))
                                        (let ((_%$%hd208174208207%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e208173208204%_)))
                                              (_%$%tl208175208209%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e208173208204%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl208175208209%_))
                                              (let ((_%$%e208176208212%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl208175208209%_))))
                                                (let ((_%$%hd208177208215%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e208176208212%_)))
                                                      (_%$%tl208178208217%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e208176208212%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl208178208217%_))
                                                      (cons '##direct-structure-ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#compile-e__1
                             _%self208159%_
                             _%$%hd208177208215%_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _%self208159%_
                                   _%$%hd208174208207%_))
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self208159%_
                                         _%$%hd208171208199%_))
                                      (cons ''#f '())))))
              (_%$%g208162208183%_ _%$%g208163208186%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g208162208183%_
                                               _%$%g208163208186%_))))
                                      (_%$%g208162208183%_
                                       _%$%g208163208186%_))))
                              (_%$%g208162208183%_ _%$%g208163208186%_))))
                      (_%$%g208162208183%_ _%$%g208163208186%_)))))
          (_%$%g208161208240%_ _%stx208160%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self208059%_ _%stx208060%_)
        (let* ((_%$%g208062208087%_
                (lambda (_%$%g208063208084%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g208063208084%_))))
               (_%$%g208061208156%_
                (lambda (_%$%g208063208090%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g208063208090%_))
                      (let ((_%$%e208068208092%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g208063208090%_))))
                        (let ((_%$%hd208069208095%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e208068208092%_)))
                              (_%$%tl208070208097%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e208068208092%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl208070208097%_))
                              (let ((_%$%e208071208100%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl208070208097%_))))
                                (let ((_%$%hd208072208103%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e208071208100%_)))
                                      (_%$%tl208073208105%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e208071208100%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl208073208105%_))
                                      (let ((_%$%e208074208108%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl208073208105%_))))
                                        (let ((_%$%hd208075208111%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e208074208108%_)))
                                              (_%$%tl208076208113%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e208074208108%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl208076208113%_))
                                              (let ((_%$%e208077208116%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl208076208113%_))))
                                                (let ((_%$%hd208078208119%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e208077208116%_)))
                                                      (_%$%tl208079208121%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e208077208116%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl208079208121%_))
                                                      (let ((_%$%e208080208124%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl208079208121%_))))
                (let ((_%$%hd208081208127%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e208080208124%_)))
                      (_%$%tl208082208129%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e208080208124%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl208082208129%_))
                      (cons '##direct-structure-set!
                            (cons (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self208059%_
                                     _%$%hd208078208119%_))
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self208059%_
                                           _%$%hd208081208127%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self208059%_
                                                 _%$%hd208075208111%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self208059%_
                                                       _%$%hd208072208103%_))
                                                    (cons ''#f '()))))))
                      (_%$%g208062208087%_ _%$%g208063208090%_))))
              (_%$%g208062208087%_ _%$%g208063208090%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g208062208087%_
                                               _%$%g208063208090%_))))
                                      (_%$%g208062208087%_
                                       _%$%g208063208090%_))))
                              (_%$%g208062208087%_ _%$%g208063208090%_))))
                      (_%$%g208062208087%_ _%$%g208063208090%_)))))
          (_%$%g208061208156%_ _%stx208060%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self207854%_ _%stx207855%_)
        (let* ((_%$%g207857207878%_
                (lambda (_%$%g207858207875%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g207858207875%_))))
               (_%$%g207856208056%_
                (lambda (_%$%g207858207881%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g207858207881%_))
                      (let ((_%$%e207862207883%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g207858207881%_))))
                        (let ((_%$%hd207863207886%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e207862207883%_)))
                              (_%$%tl207864207888%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e207862207883%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl207864207888%_))
                              (let ((_%$%e207865207891%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl207864207888%_))))
                                (let ((_%$%hd207866207894%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e207865207891%_)))
                                      (_%$%tl207867207896%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e207865207891%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl207867207896%_))
                                      (let ((_%$%e207868207899%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl207867207896%_))))
                                        (let ((_%$%hd207869207902%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e207868207899%_)))
                                              (_%$%tl207870207904%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e207868207899%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl207870207904%_))
                                              (let ((_%$%e207871207907%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl207870207904%_))))
                                                (let ((_%$%hd207872207910%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e207871207907%_)))
                                                      (_%$%tl207873207912%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e207871207907%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl207873207912%_))
                                                      (if (gxc#current-compile-decls-unsafe?)
                                                          (cons '##unchecked-structure-ref
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self207854%_
                                 _%$%hd207872207910%_))
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self207854%_
                                       _%$%hd207869207902%_))
                                    (cons ''#f (cons ''#f '())))))
                  (let _%lp207935%_ ((_%rest207938%_
                                      (cons _%$%hd207869207902%_
                                            (cons _%$%hd207872207910%_ '())))
                                     (_%bind207940%_ '())
                                     (_%args207941%_ '()))
                    (let* ((_%$%rest207942207950%_ _%rest207938%_)
                           (_%$%else207944207958%_
                            (lambda ()
                              (cons 'let
                                    (cons _%bind207940%_
                                          (cons '(declare (not safe))
                                                (cons (cons '##unchecked-structure-ref
                                                            (let ((__tmp216074
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons ''#f (cons ''#f '()))))
                      (declare (not safe))
                      (##append _%args207941%_ __tmp216074)))
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (_%$%K207946208044%_
                            (lambda (_%rest207961%_ _%e207962%_)
                              (let* ((_%__stx215713215714%_ _%e207962%_)
                                     (_%$%g207967207985%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx215713215714%_)))))
                                (let ((_%__kont215715215716%_
                                       (lambda ()
                                         (_%lp207935%_
                                          _%rest207961%_
                                          _%bind207940%_
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _%e207962%_))
                                                _%args207941%_))))
                                      (_%__kont215717215718%_
                                       (lambda ()
                                         (_%lp207935%_
                                          _%rest207961%_
                                          _%bind207940%_
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _%e207962%_))
                                                _%args207941%_))))
                                      (_%__kont215719215720%_
                                       (lambda ()
                                         (let ((_%tmp207992%_
                                                (let ((__tmp216075
                                                       (let ()
                                                         (declare (not safe))
                                                         (##gensym '__tmp))))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp216075))))
                                           (_%lp207935%_
                                            _%rest207961%_
                                            (cons (cons _%tmp207992%_
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _%e207962%_))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%bind207940%_)
                                            (cons _%tmp207992%_
                                                  _%args207941%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx215713215714%_))
                                      (let ((_%$%e207969208023%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx215713215714%_))))
                                        (let ((_%$%tl207971208028%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e207969208023%_)))
                                              (_%$%hd207970208026%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e207969208023%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%$%hd207970208026%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#ref
                                                     _%$%hd207970208026%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl207971208028%_))
                                                      (let ((_%$%e207972208031%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl207971208028%_))))
                (let ((_%$%tl207974208036%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e207972208031%_)))
                      (_%$%hd207973208034%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e207972208031%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl207974208036%_))
                      (_%__kont215715215716%_)
                      (_%__kont215719215720%_))))
              (_%__kont215719215720%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#quote
                                                         _%$%hd207970208026%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl207971208028%_))
                                                          (let ((_%$%e207978208008%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl207971208028%_))))
                    (let ((_%$%tl207980208013%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e207978208008%_)))
                          (_%$%hd207979208011%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e207978208008%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl207980208013%_))
                          (_%__kont215717215718%_)
                          (_%__kont215719215720%_))))
                  (_%__kont215719215720%_))
              (_%__kont215719215720%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont215719215720%_))))
                                      (_%__kont215719215720%_)))))))
                      (if (pair? _%$%rest207942207950%_)
                          (let ((_%$%hd207947208047%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%rest207942207950%_)))
                                (_%$%tl207948208049%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%rest207942207950%_))))
                            (let* ((_%e208052%_ _%$%hd207947208047%_)
                                   (_%rest208054%_ _%$%tl207948208049%_))
                              (_%$%K207946208044%_
                               _%rest208054%_
                               _%e208052%_)))
                          (_%$%else207944207958%_)))))
              (_%$%g207857207878%_ _%$%g207858207881%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g207857207878%_
                                               _%$%g207858207881%_))))
                                      (_%$%g207857207878%_
                                       _%$%g207858207881%_))))
                              (_%$%g207857207878%_ _%$%g207858207881%_))))
                      (_%$%g207857207878%_ _%$%g207858207881%_)))))
          (_%$%g207856208056%_ _%stx207855%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self207633%_ _%stx207634%_)
        (let* ((_%$%g207636207661%_
                (lambda (_%$%g207637207658%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g207637207658%_))))
               (_%$%g207635207851%_
                (lambda (_%$%g207637207664%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g207637207664%_))
                      (let ((_%$%e207642207666%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g207637207664%_))))
                        (let ((_%$%hd207643207669%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e207642207666%_)))
                              (_%$%tl207644207671%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e207642207666%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl207644207671%_))
                              (let ((_%$%e207645207674%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl207644207671%_))))
                                (let ((_%$%hd207646207677%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e207645207674%_)))
                                      (_%$%tl207647207679%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e207645207674%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl207647207679%_))
                                      (let ((_%$%e207648207682%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl207647207679%_))))
                                        (let ((_%$%hd207649207685%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e207648207682%_)))
                                              (_%$%tl207650207687%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e207648207682%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl207650207687%_))
                                              (let ((_%$%e207651207690%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl207650207687%_))))
                                                (let ((_%$%hd207652207693%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e207651207690%_)))
                                                      (_%$%tl207653207695%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e207651207690%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl207653207695%_))
                                                      (let ((_%$%e207654207698%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl207653207695%_))))
                (let ((_%$%hd207655207701%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e207654207698%_)))
                      (_%$%tl207656207703%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e207654207698%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl207656207703%_))
                      (if (gxc#current-compile-decls-unsafe?)
                          (cons '##unchecked-structure-set!
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self207633%_
                                         _%$%hd207652207693%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self207633%_
                                               _%$%hd207655207701%_))
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self207633%_
                                                     _%$%hd207649207685%_))
                                                  (cons ''#f
                                                        (cons ''#f '()))))))
                          (let _%lp207730%_ ((_%rest207733%_
                                              (cons _%$%hd207649207685%_
                                                    (cons _%$%hd207655207701%_
                                                          (cons _%$%hd207652207693%_
                                                                '()))))
                                             (_%bind207735%_ '())
                                             (_%args207736%_ '()))
                            (let* ((_%$%rest207737207745%_ _%rest207733%_)
                                   (_%$%else207739207753%_
                                    (lambda ()
                                      (cons 'let
                                            (cons _%bind207735%_
                                                  (cons '(declare (not safe))
                                                        (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp216076 (cons ''#f (cons ''#f '()))))
                              (declare (not safe))
                              (##append _%args207736%_ __tmp216076)))
                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%$%K207741207839%_
                                    (lambda (_%rest207756%_ _%e207757%_)
                                      (let* ((_%__stx215759215760%_
                                              _%e207757%_)
                                             (_%$%g207762207780%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%__stx215759215760%_)))))
                                        (let ((_%__kont215761215762%_
                                               (lambda ()
                                                 (_%lp207730%_
                                                  _%rest207756%_
                                                  _%bind207735%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e207757%_))
                                                        _%args207736%_))))
                                              (_%__kont215763215764%_
                                               (lambda ()
                                                 (_%lp207730%_
                                                  _%rest207756%_
                                                  _%bind207735%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e207757%_))
                                                        _%args207736%_))))
                                              (_%__kont215765215766%_
                                               (lambda ()
                                                 (let ((_%tmp207787%_
                                                        (let ((__tmp216077
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##gensym '__tmp))))
                  (declare (not safe))
                  (make-symbol__0 __tmp216077))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%lp207730%_
                                                    _%rest207756%_
                                                    (cons (cons _%tmp207787%_
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gxc#compile-e__0 _%e207757%_))
                              '()))
                  _%bind207735%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%tmp207787%_
                                                          _%args207736%_))))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%__stx215759215760%_))
                                              (let ((_%$%e207764207818%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%__stx215759215760%_))))
                                                (let ((_%$%tl207766207823%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e207764207818%_)))
                                                      (_%$%hd207765207821%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e207764207818%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%$%hd207765207821%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%$%hd207765207821%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl207766207823%_))
                      (let ((_%$%e207767207826%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl207766207823%_))))
                        (let ((_%$%tl207769207831%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e207767207826%_)))
                              (_%$%hd207768207829%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e207767207826%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl207769207831%_))
                              (_%__kont215761215762%_)
                              (_%__kont215765215766%_))))
                      (_%__kont215765215766%_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-eq? '%#quote _%$%hd207765207821%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl207766207823%_))
                          (let ((_%$%e207773207803%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl207766207823%_))))
                            (let ((_%$%tl207775207808%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e207773207803%_)))
                                  (_%$%hd207774207806%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e207773207803%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl207775207808%_))
                                  (_%__kont215763215764%_)
                                  (_%__kont215765215766%_))))
                          (_%__kont215765215766%_))
                      (_%__kont215765215766%_)))
              (_%__kont215765215766%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont215765215766%_)))))))
                              (if (pair? _%$%rest207737207745%_)
                                  (let ((_%$%hd207742207842%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%rest207737207745%_)))
                                        (_%$%tl207743207844%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%rest207737207745%_))))
                                    (let* ((_%e207847%_ _%$%hd207742207842%_)
                                           (_%rest207849%_
                                            _%$%tl207743207844%_))
                                      (_%$%K207741207839%_
                                       _%rest207849%_
                                       _%e207847%_)))
                                  (_%$%else207739207753%_)))))
                      (_%$%g207636207661%_ _%$%g207637207664%_))))
              (_%$%g207636207661%_ _%$%g207637207664%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g207636207661%_
                                               _%$%g207637207664%_))))
                                      (_%$%g207636207661%_
                                       _%$%g207637207664%_))))
                              (_%$%g207636207661%_ _%$%g207637207664%_))))
                      (_%$%g207636207661%_ _%$%g207637207664%_)))))
          (_%$%g207635207851%_ _%stx207634%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self207472%_ _%stx207473%_)
        (letrec ((_%import-set-template207475%_
                  (lambda (_%in207578%_ _%phi207579%_)
                    (let ((_%iphi207581%_
                           (fx+ _%phi207579%_
                                (##direct-structure-ref
                                 _%in207578%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports207582%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in207578%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp207584%_ ((_%rest207586%_ _%imports207582%_)
                                         (_%r207587%_ '()))
                        (let* ((_%$%rest207588207596%_ _%rest207586%_)
                               (_%$%else207590207604%_ (lambda () _%r207587%_))
                               (_%$%K207592207621%_
                                (lambda (_%rest207607%_ _%in207608%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in207608%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi207581%_))
                                          (_%lp207584%_
                                           _%rest207607%_
                                           (cons _%in207608%_ _%r207587%_))
                                          (_%lp207584%_
                                           _%rest207607%_
                                           _%r207587%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in207608%_
                                             'gx#module-import::t))
                                          (let ((_%iphi207612%_
                                                 (fx+ _%phi207579%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in207608%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi207612%_))
                                                (_%lp207584%_
                                                 _%rest207607%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in207608%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r207587%_))
                                                (_%lp207584%_
                                                 _%rest207607%_
                                                 _%r207587%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in207608%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi207615%_
                                                     (fx+ _%iphi207581%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in207608%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi207615%_))
                                                    (_%lp207584%_
                                                     _%rest207607%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in207608%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r207587%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi207615%_))
                                                        (_%lp207584%_
                                                         _%rest207607%_
                                                         (let ((__tmp216078
                                                                (_%import-set-template207475%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in207608%_
                         _%iphi207581%_)))
                   (declare (not safe))
                   (foldl__0 cons _%r207587%_ __tmp216078)))
                (_%lp207584%_ _%rest207607%_ _%r207587%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp207584%_
                                               _%rest207607%_
                                               _%r207587%_)))))))
                          (if (pair? _%$%rest207588207596%_)
                              (let ((_%$%hd207593207624%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest207588207596%_)))
                                    (_%$%tl207594207626%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest207588207596%_))))
                                (let* ((_%in207629%_ _%$%hd207593207624%_)
                                       (_%rest207631%_ _%$%tl207594207626%_))
                                  (_%$%K207592207621%_
                                   _%rest207631%_
                                   _%in207629%_)))
                              (_%$%else207590207604%_))))))))
          (let* ((_%$%g207477207487%_
                  (lambda (_%$%g207478207484%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g207478207484%_))))
                 (_%$%g207476207575%_
                  (lambda (_%$%g207478207490%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g207478207490%_))
                        (let ((_%$%e207480207492%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g207478207490%_))))
                          (let ((_%$%hd207481207495%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e207480207492%_)))
                                (_%$%tl207482207497%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e207480207492%_))))
                            (let ((_%ht207511%_
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq))))
                              (let _%lp207513%_ ((_%rest207515%_
                                                  _%$%tl207482207497%_)
                                                 (_%loads207516%_ '()))
                                (letrec ((_%K207518%_
                                          (lambda (_%ctx207568%_
                                                   _%rest207569%_)
                                            (let ((_%id207571%_
                                                   (##structure-ref
                                                    _%ctx207568%_
                                                    '1
                                                    gx#expander-context::t
                                                    '#f)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__hash-get
                                                     _%ht207511%_
                                                     _%id207571%_))
                                                  (_%lp207513%_
                                                   _%rest207569%_
                                                   _%loads207516%_)
                                                  (let ((_%rt207573%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#module-id->path-string
                                                            _%id207571%_))))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht207511%_
                                                       _%id207571%_
                                                       _%rt207573%_))
                                                    (_%lp207513%_
                                                     _%rest207569%_
                                                     (cons _%rt207573%_
                                                           _%loads207516%_))))))))
                                  (let* ((_%$%rest207519207527%_
                                          _%rest207515%_)
                                         (_%$%else207521207539%_
                                          (lambda ()
                                            (cons 'begin
                                                  (let ((__tmp216080
                                                         (lambda (_%$%g207534207536%_)
                                                           (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g207534207536%_)))
                (__tmp216079 (reverse _%loads207516%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (##map __tmp216080
                                                           __tmp216079)))))
                                         (_%$%K207523207556%_
                                          (lambda (_%rest207542%_ _%in207543%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-instance-of?
                                                   _%in207543%_
                                                   'gx#module-context::t))
                                                (_%K207518%_
                                                 _%in207543%_
                                                 _%rest207542%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##structure-direct-instance-of?
                                                       _%in207543%_
                                                       'gx#module-import::t))
                                                    (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%in207543%_
                            '3
                            '#f
                            '#f)))
                (_%K207518%_
                 (##direct-structure-ref
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%in207543%_ '1 '#f '#f))
                  '1
                  gx#module-export::t
                  '#f)
                 _%rest207542%_)
                (_%lp207513%_ _%rest207542%_ _%loads207516%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           _%in207543%_
                                                           'gx#import-set::t))
                                                        (let ((_%phi207548%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref _%in207543%_ '2 '#f '#f))))
                  (if (fxzero? _%phi207548%_)
                      (_%K207518%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%in207543%_ '1 '#f '#f))
                       _%rest207542%_)
                      (if (fxpositive? _%phi207548%_)
                          (let ((_%deps207552%_
                                 (_%import-set-template207475%_
                                  _%in207543%_
                                  '0)))
                            (_%lp207513%_
                             (let ()
                               (declare (not safe))
                               (foldl__0 cons _%rest207542%_ _%deps207552%_))
                             _%loads207516%_))
                          (_%lp207513%_ _%rest207542%_ _%loads207516%_))))
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"Unexpected import"
                   _%stx207473%_
                   _%in207543%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%$%rest207519207527%_)
                                        (let ((_%$%hd207524207559%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%rest207519207527%_)))
                                              (_%$%tl207525207561%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%rest207519207527%_))))
                                          (let* ((_%in207564%_
                                                  _%$%hd207524207559%_)
                                                 (_%rest207566%_
                                                  _%$%tl207525207561%_))
                                            (_%$%K207523207556%_
                                             _%rest207566%_
                                             _%in207564%_)))
                                        (_%$%else207521207539%_))))))))
                        (_%$%g207477207487%_ _%$%g207478207490%_)))))
            (_%$%g207476207575%_ _%stx207473%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self207286%_ _%stx207287%_)
        (letrec ((_%add-lift!207289%_
                  (lambda (_%expr207470%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr207470%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote207290%_
                  (lambda (_%id207467%_ _%marks207468%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id207467%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks207468%_
                                                        '()))))))))
                 (_%generate-simple207291%_
                  (lambda (_%stxq207462%_)
                    (let ((_%gid207464%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid207465%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%stxq207462%_))))
                      (_%add-lift!207289%_
                       (cons 'define
                             (cons _%gid207464%_
                                   (cons (_%generate-syntax-quote207290%_
                                          _%qid207465%_
                                          ''())
                                         '()))))
                      (let ((__tmp216081
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp216081 _%stxq207462%_ _%gid207464%_))
                      _%gid207464%_)))
                 (_%generate-serialized207292%_
                  (lambda (_%stxq207452%_ _%marks207453%_)
                    (let* ((_%mark-refs207455%_
                            (map _%generate-mark207293%_ _%marks207453%_))
                           (_%gid207457%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid207459%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier
                               _%stxq207452%_))))
                      (_%add-lift!207289%_
                       (cons 'define
                             (cons _%gid207457%_
                                   (cons (_%generate-syntax-quote207290%_
                                          _%qid207459%_
                                          (cons 'list _%mark-refs207455%_))
                                         '()))))
                      (let ((__tmp216082
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp216082 _%stxq207452%_ _%gid207457%_))
                      _%gid207457%_)))
                 (_%generate-mark207293%_
                  (lambda (_%mark207437%_)
                    (let ((_%$e207439%_
                           (let ((__tmp216083
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp216083 _%mark207437%_))))
                      (if _%$e207439%_
                          _%$e207439%_
                          (let* ((_%gid207443%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr207445%_
                                  (_%serialize-mark207294%_ _%mark207437%_))
                                 (_%ctx207447%_
                                  (let ((__tmp216084
                                         (##structure-ref
                                          _%mark207437%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp216084)))
                                 (_%ctx-ref207449%_
                                  (if (eq? _%ctx207447%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref207295%_
                                                               _%ctx207447%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp216085
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp216085
                               _%mark207437%_
                               _%gid207443%_))
                            (_%add-lift!207289%_
                             (cons 'define
                                   (cons _%gid207443%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr207445%_ '()))
                   (cons _%ctx-ref207449%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid207443%_)))))
                 (_%serialize-mark207294%_
                  (lambda (_%mark207385%_)
                    (letrec ((_%quote-e207387%_
                              (lambda (_%sym207435%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym207435%_))
                                    _%sym207435%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym207435%_))))))
                      (let* ((_%$%mark207388207397%_ _%mark207385%_)
                             (_%$%E207390207400%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%$%mark207388207397%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%$%K207391207412%_
                              (lambda (_%trace207403%_
                                       _%phi207404%_
                                       _%ctx207405%_
                                       _%subst207406%_)
                                (let ((_%subs207408%_
                                       (if _%subst207406%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst207406%_))
                                           '())))
                                  (cons _%phi207404%_
                                        (let ((__tmp216086
                                               (lambda (_%pair207410%_)
                                                 (cons (_%quote-e207387%_
                                                        (car _%pair207410%_))
                                                       (_%quote-e207387%_
                                                        (cdr _%pair207410%_))))))
                                          (declare (not safe))
                                          (##map __tmp216086
                                                 _%subs207408%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%$%mark207388207397%_
                               'gx#expander-mark::t))
                            (let* ((_%$%e207392207415%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%mark207388207397%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst207418%_ _%$%e207392207415%_)
                                   (_%$%e207393207420%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%mark207388207397%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx207423%_ _%$%e207393207420%_)
                                   (_%$%e207394207425%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%mark207388207397%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi207428%_ _%$%e207394207425%_)
                                   (_%$%e207395207430%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%mark207388207397%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace207433%_ _%$%e207395207430%_))
                              (_%$%K207391207412%_
                               _%trace207433%_
                               _%phi207428%_
                               _%ctx207423%_
                               _%subst207418%_))
                            (_%$%E207390207400%_))))))
                 (_%context-ref207295%_
                  (lambda (_%ctx207372%_)
                    (if (let ((__tmp216087
                               (##structure-ref
                                _%ctx207372%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp216087
                           'gx#module-context::t))
                        (let ((_%ctx-ref207374%_
                               (_%context-ref-nested207297%_ _%ctx207372%_))
                              (_%ctx-origin207375%_
                               (_%context-ref-origin207296%_ _%ctx207372%_))
                              (_%origin207376%_
                               (_%context-ref-origin207296%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin207376%_ _%ctx-origin207375%_)
                              (let ((_%ref207378%_
                                     (_%context-ref-nested207297%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp207380%_ ((_%ref207382%_
                                                    (cdr _%ref207378%_))
                                                   (_%ctx-ref207383%_
                                                    (cdr _%ctx-ref207374%_)))
                                  (if (and (pair? _%ref207382%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref207382%_))
                                                (car _%ctx-ref207383%_)))
                                      (_%lp207380%_
                                       (cdr _%ref207382%_)
                                       (cdr _%ctx-ref207383%_))
                                      (cons '#f _%ctx-ref207383%_))))
                              _%ctx-ref207374%_))
                        (let ((__tmp216088
                               (##structure-ref
                                _%ctx207372%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp216088)))))
                 (_%context-ref-origin207296%_
                  (lambda (_%ctx207364%_)
                    (let _%lp207366%_ ((_%ctx207368%_ _%ctx207364%_))
                      (let ((_%super207370%_
                             (##structure-ref
                              _%ctx207368%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super207370%_
                               'gx#module-context::t))
                            (_%lp207366%_ _%super207370%_)
                            _%ctx207368%_)))))
                 (_%context-ref-nested207297%_
                  (lambda (_%ctx207355%_)
                    (let _%lp207357%_ ((_%ctx207359%_ _%ctx207355%_)
                                       (_%r207360%_ '()))
                      (let ((_%super207362%_
                             (##structure-ref
                              _%ctx207359%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super207362%_
                               'gx#module-context::t))
                            (_%lp207357%_
                             _%super207362%_
                             (cons (car (##structure-ref
                                         _%ctx207359%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r207360%_))
                            (cons (let ((__tmp216089
                                         (##structure-ref
                                          _%ctx207359%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp216089))
                                  _%r207360%_)))))))
          (let* ((_%$%g207299207312%_
                  (lambda (_%$%g207300207309%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g207300207309%_))))
                 (_%$%g207298207352%_
                  (lambda (_%$%g207300207315%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g207300207315%_))
                        (let ((_%$%e207302207317%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g207300207315%_))))
                          (let ((_%$%hd207303207320%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e207302207317%_)))
                                (_%$%tl207304207322%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e207302207317%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl207304207322%_))
                                (let ((_%$%e207305207325%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl207304207322%_))))
                                  (let ((_%$%hd207306207328%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e207305207325%_)))
                                        (_%$%tl207307207330%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e207305207325%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl207307207330%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%$%hd207306207328%_))
                                            (let ((_%$e207346%_
                                                   (let ((__tmp216090
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-identifiers))))
                                                     (declare (not safe))
                                                     (hash-get
                                                      __tmp216090
                                                      _%$%hd207306207328%_))))
                                              (if _%$e207346%_
                                                  _%$e207346%_
                                                  (let ((_%marks207350%_
                                                         (##direct-structure-ref
                                                          _%$%hd207306207328%_
                                                          '4
                                                          gx#syntax-quote::t
                                                          '#f)))
                                                    (if (null? _%marks207350%_)
                                                        (_%generate-simple207291%_
                                                         _%$%hd207306207328%_)
                                                        (_%generate-serialized207292%_
                                                         _%$%hd207306207328%_
                                                         _%marks207350%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot quote non-identifier syntax"
                                               _%$%hd207306207328%_)))
                                        (_%$%g207299207312%_
                                         _%$%g207300207315%_))))
                                (_%$%g207299207312%_ _%$%g207300207315%_))))
                        (_%$%g207299207312%_ _%$%g207300207315%_)))))
            (_%$%g207298207352%_ _%stx207287%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self207218%_ _%stx207219%_)
        (let* ((_%$%g207221207238%_
                (lambda (_%$%g207222207235%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g207222207235%_))))
               (_%$%g207220207283%_
                (lambda (_%$%g207222207241%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g207222207241%_))
                      (let ((_%$%e207225207243%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g207222207241%_))))
                        (let ((_%$%hd207226207246%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e207225207243%_)))
                              (_%$%tl207227207248%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e207225207243%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl207227207248%_))
                              (let ((_%$%e207228207251%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl207227207248%_))))
                                (let ((_%$%hd207229207254%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e207228207251%_)))
                                      (_%$%tl207230207256%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e207228207251%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl207230207256%_))
                                      (let ((_%$%e207231207259%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl207230207256%_))))
                                        (let ((_%$%hd207232207262%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e207231207259%_)))
                                              (_%$%tl207233207264%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e207231207259%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl207233207264%_))
                                              (cons 'define
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%hd207229207254%_))
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self207218%_
                           _%$%hd207232207262%_))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g207221207238%_
                                               _%$%g207222207241%_))))
                                      (_%$%g207221207238%_
                                       _%$%g207222207241%_))))
                              (_%$%g207221207238%_ _%$%g207222207241%_))))
                      (_%$%g207221207238%_ _%$%g207222207241%_)))))
          (_%$%g207220207283%_ _%stx207219%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self207167%_ _%stx207168%_)
        (let* ((_%$%g207170207180%_
                (lambda (_%$%g207171207177%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g207171207177%_))))
               (_%$%g207169207215%_
                (lambda (_%$%g207171207183%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g207171207183%_))
                      (let ((_%$%e207173207185%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g207171207183%_))))
                        (let ((_%$%hd207174207188%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e207173207185%_)))
                              (_%$%tl207175207190%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e207173207185%_))))
                          (let* ((_%c-body207207%_
                                  (map (lambda (_%$%g207202207204%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self207167%_
                                            _%$%g207202207204%_)))
                                       _%$%tl207175207190%_))
                                 (_%c-body207212%_
                                  (let ((__tmp216091
                                         (lambda (_%$obj207209%_)
                                           (not (eq? _%$obj207209%_
                                                     '#!void)))))
                                    (declare (not safe))
                                    (##filter __tmp216091 _%c-body207207%_))))
                            (cons '%#begin _%c-body207212%_))))
                      (_%$%g207170207180%_ _%$%g207171207183%_)))))
          (_%$%g207169207215%_ _%stx207168%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self207072%_ _%stx207073%_)
        (let* ((_%$%g207075207085%_
                (lambda (_%$%g207076207082%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g207076207082%_))))
               (_%$%g207074207164%_
                (lambda (_%$%g207076207088%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g207076207088%_))
                      (let ((_%$%e207078207090%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g207076207088%_))))
                        (let ((_%$%hd207079207093%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e207078207090%_)))
                              (_%$%tl207080207095%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e207078207090%_))))
                          (let* ((_%phi207108%_
                                  (let ((__tmp216092
                                         (let ()
                                           (declare (not safe))
                                           (gx#current-expander-phi))))
                                    (declare (not safe))
                                    (##fx+ __tmp216092 '1)))
                                 (_%block207110%_
                                  (gxc#meta-state-begin-phi!
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self207072%_ 'state))
                                   _%phi207108%_))
                                 (_%compiled207113%_
                                  (let ((__tmp216093
                                         (lambda ()
                                           (gxc#apply-generate-meta-phi__%
                                            '#f
                                            (let ()
                                              (declare (not safe))
                                              (slot-ref__0
                                               _%self207072%_
                                               'state))
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     '%#begin))
                                                  _%$%tl207080207095%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp216093
                                     gx#current-expander-phi
                                     _%phi207108%_)))
                                 (_%$%g207116207126%_
                                  (lambda (_%$%g207117207123%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%$%g207117207123%_))))
                                 (_%$%g207115207161%_
                                  (lambda (_%$%g207117207129%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%g207117207129%_))
                                        (let ((_%$%e207119207131%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%g207117207129%_))))
                                          (let ((_%$%hd207120207134%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e207119207131%_)))
                                                (_%$%tl207121207136%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e207119207131%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd207120207134%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#begin
                                                       _%$%hd207120207134%_))
                                                    (let ((_%c-body207156%_
                                                           (filter (lambda (_%$obj207153%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (not (eq? _%$obj207153%_ '#!void)))
                           _%$%tl207121207136%_)))
              (if _%block207110%_
                  (cons '%#begin-syntax
                        (cons (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%block207110%_
                                                            '()))
                                                '())))
                              _%c-body207156%_))
                  (if (null? _%c-body207156%_)
                      '#!void
                      (cons '%#begin-syntax _%c-body207156%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g207116207126%_
                                                     _%$%g207117207129%_))
                                                (_%$%g207116207126%_
                                                 _%$%g207117207129%_))))
                                        (_%$%g207116207126%_
                                         _%$%g207117207129%_)))))
                            (_%$%g207115207161%_ _%compiled207113%_))))
                      (_%$%g207075207085%_ _%$%g207076207088%_)))))
          (_%$%g207074207164%_ _%stx207073%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self207003%_ _%stx207004%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self207003%_ 'state)))
        (let* ((_%$%g207006207020%_
                (lambda (_%$%g207007207017%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g207007207017%_))))
               (_%$%g207005207069%_
                (lambda (_%$%g207007207023%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g207007207023%_))
                      (let ((_%$%e207010207025%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g207007207023%_))))
                        (let ((_%$%hd207011207028%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e207010207025%_)))
                              (_%$%tl207012207030%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e207010207025%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl207012207030%_))
                              (let ((_%$%e207013207033%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl207012207030%_))))
                                (let ((_%$%hd207014207036%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e207013207033%_)))
                                      (_%$%tl207015207038%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e207013207033%_))))
                                  (let ((_%key207055%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-identifier-key
                                            _%$%hd207014207036%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (interned-symbol? _%key207055%_))
                                        '#!void
                                        (let ()
                                          (declare (not safe))
                                          (gxc#raise-compile-error
                                           '"Cannot compile module with uninterned id"
                                           _%stx207004%_
                                           _%$%hd207014207036%_
                                           _%key207055%_)))
                                    (let* ((_%ctx207057%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%$%hd207014207036%_)))
                                           (_%code207060%_
                                            (let ((__tmp216094
                                                   (lambda ()
                                                     (let ((__tmp216095
                                                            (##structure-ref
                                                             _%ctx207057%_
                                                             '11
                                                             gx#module-context::t
                                                             '#f)))
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self207003%_
                                                        __tmp216095)))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp216094
                                               gx#current-expander-context
                                               _%ctx207057%_)))
                                           (_%rt207062%_
                                            (let ((__tmp216096
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#current-compile-runtime-sections))))
                                              (declare (not safe))
                                              (hash-get
                                               __tmp216096
                                               _%ctx207057%_)))
                                           (_%loader207064%_
                                            (if _%rt207062%_
                                                (cons (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'load-module '()))
                          (cons (cons '%#quote (cons _%rt207062%_ '())) '())))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                           (_%modid207066%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd207014207036%_))))
                                      (gxc#meta-state-end-phi!
                                       (let ()
                                         (declare (not safe))
                                         (slot-ref__0 _%self207003%_ 'state)))
                                      (cons '%#module
                                            (cons _%modid207066%_
                                                  (cons _%code207060%_
                                                        _%loader207064%_)))))))
                              (_%$%g207006207020%_ _%$%g207007207023%_))))
                      (_%$%g207006207020%_ _%$%g207007207023%_)))))
          (_%$%g207005207069%_ _%stx207004%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx206990%_ _%context-chain206991%_)
        (let _%lp206993%_ ((_%ctx206995%_ _%ctx206990%_) (_%path206996%_ '()))
          (let ((_%super206998%_
                 (##structure-ref _%ctx206995%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super206998%_ _%context-chain206991%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx206995%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path206996%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super206998%_
                       'gx#module-context::t))
                    (_%lp206993%_
                     _%super206998%_
                     (cons (car (##structure-ref
                                 _%ctx206995%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path206996%_))
                    (cons (let ((__tmp216097
                                 (##structure-ref
                                  _%ctx206995%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp216097))
                          _%path206996%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp206983%_ ((_%ctx206985%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r206986%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx206985%_ 'gx#module-context::t))
              (_%lp206983%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx206985%_ '3 '#f '#f))
               (cons _%ctx206985%_ _%r206986%_))
              _%r206986%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self206748%_ _%stx206749%_)
        (letrec* ((_%context-chain206751%_ (gxc#current-context-chain))
                  (_%make-import-spec206752%_
                   (lambda (_%in206920%_)
                     (let* ((_%$%in206921206933%_ _%in206920%_)
                            (_%$%E206923206936%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%$%in206921206933%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%$%K206924206946%_
                             (lambda (_%phi206939%_
                                      _%name206940%_
                                      _%src-name206941%_
                                      _%src-phi206942%_
                                      _%src-key206943%_
                                      _%src-ctx206944%_)
                               (cons _%phi206939%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%name206940%_))
                                           (cons _%src-phi206942%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-identifier-key
                                                          _%src-name206941%_))
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%$%in206921206933%_
                              'gx#module-import::t))
                           (let ((_%$%e206925206949%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%$%in206921206933%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%$%e206925206949%_
                                    'gx#module-export::t))
                                 (let* ((_%$%e206928206952%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%e206925206949%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx206955%_ _%$%e206928206952%_)
                                        (_%$%e206929206957%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%e206925206949%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key206960%_ _%$%e206929206957%_)
                                        (_%$%e206930206962%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%e206925206949%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi206965%_ _%$%e206930206962%_)
                                        (_%$%e206931206967%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%e206925206949%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name206970%_
                                         _%$%e206931206967%_)
                                        (_%$%e206926206972%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%in206921206933%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name206975%_ _%$%e206926206972%_)
                                        (_%$%e206927206977%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%in206921206933%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi206980%_ _%$%e206927206977%_))
                                   (_%$%K206924206946%_
                                    _%phi206980%_
                                    _%name206975%_
                                    _%src-name206970%_
                                    _%src-phi206965%_
                                    _%src-key206960%_
                                    _%src-ctx206955%_))
                                 (_%$%E206923206936%_)))
                           (_%$%E206923206936%_)))))
                  (_%make-import-path206753%_
                   (lambda (_%ctx206918%_)
                     (gxc#generate-meta-import-path
                      _%ctx206918%_
                      _%context-chain206751%_)))
                  (_%make-import-spec-in206754%_
                   (lambda (_%ctx206915%_ _%in206916%_)
                     (cons 'spec:
                           (cons (_%make-import-path206753%_ _%ctx206915%_)
                                 (reverse _%in206916%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self206748%_ 'state)))
          (let* ((_%$%g206756206766%_
                  (lambda (_%$%g206757206763%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g206757206763%_))))
                 (_%$%g206755206912%_
                  (lambda (_%$%g206757206769%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g206757206769%_))
                        (let ((_%$%e206759206771%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g206757206769%_))))
                          (let ((_%$%hd206760206774%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e206759206771%_)))
                                (_%$%tl206761206776%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e206759206771%_))))
                            (let _%lp206790%_ ((_%rest206792%_
                                                _%$%tl206761206776%_)
                                               (_%current-src206793%_ '#f)
                                               (_%current-in206794%_ '())
                                               (_%r206795%_ '()))
                              (let* ((_%$%rest206796206804%_ _%rest206792%_)
                                     (_%$%else206798206814%_
                                      (lambda ()
                                        (let ((_%r206812%_
                                               (if _%current-src206793%_
                                                   (cons (_%make-import-spec-in206754%_
                                                          _%current-src206793%_
                                                          _%current-in206794%_)
                                                         _%r206795%_)
                                                   _%r206795%_)))
                                          (cons '%#import
                                                (reverse _%r206812%_)))))
                                     (_%$%K206800206900%_
                                      (lambda (_%rest206817%_ _%in206818%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               _%in206818%_
                                               'gx#module-import::t))
                                            (let* ((_%$%in206820206827%_
                                                    _%in206818%_)
                                                   (_%$%E206822206830%_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"No clause matching"
                                                               _%$%in206820206827%_
                                                               '((module-import
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (module-export src-ctx)))))
              '#!void))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%K206823206838%_
                                                    (lambda (_%src-ctx206833%_)
                                                      (if (eq? _%current-src206793%_
                                                               _%src-ctx206833%_)
                                                          (_%lp206790%_
                                                           _%rest206817%_
                                                           _%current-src206793%_
                                                           (cons (_%make-import-spec206752%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in206818%_)
                         _%current-in206794%_)
                   _%r206795%_)
                  (if _%current-src206793%_
                      (_%lp206790%_
                       _%rest206817%_
                       _%src-ctx206833%_
                       (cons (_%make-import-spec206752%_ _%in206818%_) '())
                       (cons (_%make-import-spec-in206754%_
                              _%current-src206793%_
                              _%current-in206794%_)
                             _%r206795%_))
                      (_%lp206790%_
                       _%rest206817%_
                       _%src-ctx206833%_
                       (cons (_%make-import-spec206752%_ _%in206818%_) '())
                       _%r206795%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%e206824206841%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%$%in206820206827%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%$%e206824206841%_
                                                     'gx#module-export::t))
                                                  (let* ((_%$%e206825206844%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%e206824206841%_
                                                             '1
                                                             '#f
                                                             '#f)))
                                                         (_%src-ctx206847%_
                                                          _%$%e206825206844%_))
                                                    (_%$%K206823206838%_
                                                     _%src-ctx206847%_))
                                                  (_%$%E206822206830%_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   _%in206818%_
                                                   'gx#import-set::t))
                                                (let* ((_%phi206850%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in206818%_
                                                           '2
                                                           '#f
                                                           '#f)))
                                                       (_%src206852%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in206818%_
                                                           '1
                                                           '#f
                                                           '#f)))
                                                       (_%src-in206892%_
                                                        (let* ((_%$%g206853206862%_
                                                                (_%make-import-path206753%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%src206852%_))
                       (_%$%E206856206866%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%$%g206853206862%_
                                   '([path])
                                   '(path)))
                          '#!void)))
                  (let ((_%$%K206858206882%_
                         (lambda (_%path206880%_) _%path206880%_))
                        (_%$%K206857206872%_
                         (lambda (_%path206870%_) (cons 'in: _%path206870%_))))
                    (if (pair? _%$%g206853206862%_)
                        (let ((_%$%tl206860206887%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%g206853206862%_)))
                              (_%$%hd206859206885%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%g206853206862%_))))
                          (if (null? _%$%tl206860206887%_)
                              (let ((_%path206890%_ _%$%hd206859206885%_))
                                (_%$%K206858206882%_ _%path206890%_))
                              (let ((_%path206875%_ _%$%g206853206862%_))
                                (_%$%K206857206872%_ _%path206875%_))))
                        (let ((_%path206875%_ _%$%g206853206862%_))
                          (_%$%K206857206872%_ _%path206875%_))))))
               (_%r206894%_
                (if _%current-src206793%_
                    (cons (_%make-import-spec-in206754%_
                           _%current-src206793%_
                           _%current-in206794%_)
                          _%r206795%_)
                    _%r206795%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp206790%_
                                                   _%rest206817%_
                                                   '#f
                                                   '()
                                                   (cons (if (fxzero? _%phi206850%_)
                                                             _%src-in206892%_
                                                             (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi206850%_ (cons _%src-in206892%_ '()))))
                 _%r206894%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##structure-instance-of?
                                                       _%in206818%_
                                                       'gx#module-context::t))
                                                    (let ((_%r206898%_
                                                           (if _%current-src206793%_
                                                               (cons (_%make-import-spec-in206754%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%current-src206793%_
                              _%current-in206794%_)
                             _%r206795%_)
                       _%r206795%_)))
              (_%lp206790%_
               _%rest206817%_
               '#f
               '()
               (cons (cons 'runtime: (_%make-import-path206753%_ _%in206818%_))
                     _%r206898%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#!void))))))
                                (if (pair? _%$%rest206796206804%_)
                                    (let ((_%$%hd206801206903%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%rest206796206804%_)))
                                          (_%$%tl206802206905%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%rest206796206804%_))))
                                      (let* ((_%in206908%_
                                              _%$%hd206801206903%_)
                                             (_%rest206910%_
                                              _%$%tl206802206905%_))
                                        (_%$%K206800206900%_
                                         _%rest206910%_
                                         _%in206908%_)))
                                    (_%$%else206798206814%_))))))
                        (_%$%g206756206766%_ _%$%g206757206769%_)))))
            (_%$%g206755206912%_ _%stx206749%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self206558%_ _%stx206559%_)
        (letrec* ((_%context-chain206561%_ (gxc#current-context-chain))
                  (_%make-import-path206562%_
                   (lambda (_%ctx206746%_)
                     (gxc#generate-meta-import-path
                      _%ctx206746%_
                      _%context-chain206561%_))))
          (let* ((_%$%g206564206574%_
                  (lambda (_%$%g206565206571%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g206565206571%_))))
                 (_%$%g206563206743%_
                  (lambda (_%$%g206565206577%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g206565206577%_))
                        (let ((_%$%e206567206579%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g206565206577%_))))
                          (let ((_%$%hd206568206582%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e206567206579%_)))
                                (_%$%tl206569206584%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e206567206579%_))))
                            (let _%lp206598%_ ((_%rest206600%_
                                                _%$%tl206569206584%_)
                                               (_%r206601%_ '()))
                              (let* ((_%$%rest206602206610%_ _%rest206600%_)
                                     (_%$%else206604206618%_
                                      (lambda ()
                                        (cons '%#export
                                              (reverse _%r206601%_))))
                                     (_%$%K206606206731%_
                                      (lambda (_%rest206621%_ _%out206622%_)
                                        (let* ((_%$%out206623206636%_
                                                _%out206622%_)
                                               (_%$%E206626206640%_
                                                (lambda ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"No clause matching"
                                                           _%$%out206623206636%_
                                                           '((module-export
                                                              _
                                                              key
                                                              phi
                                                              name))
                                                           '((export-set
                                                              src
                                                              phi))))
                                                  '#!void)))
                                          (let ((_%$%K206630206710%_
                                                 (lambda (_%name206706%_
                                                          _%phi206707%_
                                                          _%key206708%_)
                                                   (_%lp206598%_
                                                    _%rest206621%_
                                                    (cons (cons 'spec:
                                                                (cons _%phi206707%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-identifier-key
                                       _%key206708%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-identifier-key
                                             _%name206706%_))
                                          '()))))
                  _%r206601%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%K206627206690%_
                                                 (lambda (_%phi206644%_
                                                          _%src206645%_)
                                                   (let* ((_%out206685%_
                                                           (if _%src206645%_
                                                               (cons 'import:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let* ((_%$%g206646206655%_
                                           (_%make-import-path206562%_
                                            _%src206645%_))
                                          (_%$%E206649206659%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (error '"No clause matching"
                                                      _%$%g206646206655%_
                                                      '([path])
                                                      '(path)))
                                             '#!void)))
                                     (let ((_%$%K206651206675%_
                                            (lambda (_%path206673%_)
                                              _%path206673%_))
                                           (_%$%K206650206665%_
                                            (lambda (_%path206663%_)
                                              (cons 'in: _%path206663%_))))
                                       (if (pair? _%$%g206646206655%_)
                                           (let ((_%$%tl206653206680%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%g206646206655%_)))
                                                 (_%$%hd206652206678%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%g206646206655%_))))
                                             (if (null? _%$%tl206653206680%_)
                                                 (let ((_%path206683%_
                                                        _%$%hd206652206678%_))
                                                   (_%$%K206651206675%_
                                                    _%path206683%_))
                                                 (let ((_%path206668%_
                                                        _%$%g206646206655%_))
                                                   (_%$%K206650206665%_
                                                    _%path206668%_))))
                                           (let ((_%path206668%_
                                                  _%$%g206646206655%_))
                                             (_%$%K206650206665%_
                                              _%path206668%_)))))
                                   '()))
                       '#t))
                  (_%out206687%_
                   (if (fxzero? _%phi206644%_)
                       _%out206685%_
                       (cons 'phi:
                             (cons _%phi206644%_ (cons _%out206685%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp206598%_
                                                      _%rest206621%_
                                                      (cons _%out206687%_
                                                            _%r206601%_))))))
                                            (let ((_%$%try-match206625206703%_
                                                   (lambda ()
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            _%$%out206623206636%_
                                                            'gx#export-set::t))
                                                         (let* ((_%$%e206628206693%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%$%out206623206636%_
                            '1
                            '#f
                            '#f)))
                        (_%$%e206629206698%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%$%out206623206636%_
                            '2
                            '#f
                            '#f))))
                   (let ((_%src206696%_ _%$%e206628206693%_)
                         (_%phi206701%_ _%$%e206629206698%_))
                     (_%$%K206627206690%_ _%phi206701%_ _%src206696%_)))
                 (_%$%E206626206640%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%$%out206623206636%_
                                                     'gx#module-export::t))
                                                  (let* ((_%$%e206631206713%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%out206623206636%_
                                                             '1
                                                             '#f
                                                             '#f)))
                                                         (_%$%e206632206716%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%out206623206636%_
                                                             '2
                                                             '#f
                                                             '#f)))
                                                         (_%$%e206633206721%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%out206623206636%_
                                                             '3
                                                             '#f
                                                             '#f)))
                                                         (_%$%e206634206726%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%out206623206636%_
                                                             '4
                                                             '#f
                                                             '#f))))
                                                    (let ((_%key206719%_
                                                           _%$%e206632206716%_)
                                                          (_%phi206724%_
                                                           _%$%e206633206721%_)
                                                          (_%name206729%_
                                                           _%$%e206634206726%_))
                                                      (_%$%K206630206710%_
                                                       _%name206729%_
                                                       _%phi206724%_
                                                       _%key206719%_)))
                                                  (_%$%try-match206625206703%_))))))))
                                (if (pair? _%$%rest206602206610%_)
                                    (let ((_%$%hd206607206734%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%rest206602206610%_)))
                                          (_%$%tl206608206736%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%rest206602206610%_))))
                                      (let* ((_%out206739%_
                                              _%$%hd206607206734%_)
                                             (_%rest206741%_
                                              _%$%tl206608206736%_))
                                        (_%$%K206606206731%_
                                         _%rest206741%_
                                         _%out206739%_)))
                                    (_%$%else206604206618%_))))))
                        (_%$%g206564206574%_ _%$%g206565206577%_)))))
            (_%$%g206563206743%_ _%stx206559%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self206519%_ _%stx206520%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self206519%_ 'state)))
        (let* ((_%$%g206522206532%_
                (lambda (_%$%g206523206529%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g206523206529%_))))
               (_%$%g206521206555%_
                (lambda (_%$%g206523206535%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g206523206535%_))
                      (let ((_%$%e206525206537%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g206523206535%_))))
                        (let ((_%$%hd206526206540%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e206525206537%_)))
                              (_%$%tl206527206542%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e206525206537%_))))
                          (cons '%#provide
                                (map gxc#generate-runtime-identifier
                                     _%$%tl206527206542%_))))
                      (_%$%g206522206532%_ _%$%g206523206535%_)))))
          (_%$%g206521206555%_ _%stx206520%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self206394%_ _%stx206395%_)
        (letrec ((_%generate1206397%_
                  (lambda (_%id206514%_ _%eid206515%_)
                    (let ((_%eid206517%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid206515%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid206517%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx206395%_
                             _%eid206517%_)))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _%id206514%_))
                            (cons _%eid206517%_ '()))))))
          (let* ((_%$%g206399206427%_
                  (lambda (_%$%g206400206424%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g206400206424%_))))
                 (_%$%g206398206511%_
                  (lambda (_%$%g206400206430%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g206400206430%_))
                        (let ((_%$%e206403206432%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g206400206430%_))))
                          (let ((_%$%hd206404206435%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e206403206432%_)))
                                (_%$%tl206405206437%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e206403206432%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%$%tl206405206437%_))
                                (let ((_g216098_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%$%tl206405206437%_
                                          '0))))
                                  (begin
                                    (let ((_g216099_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g216098_)
                                                 (##values-length _g216098_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g216099_ 2)))
                                          (error "Context expects 2 values"
                                                 _g216099_)))
                                    (let ((_%$%target206406206440%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g216098_ 0)))
                                          (_%$%tl206408206442%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g216098_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl206408206442%_))
                                          (letrec ((_%$%loop206409206445%_
                                                    (lambda (_%$%hd206407206448%_
                                                             _%$%eid206413206450%_
                                                             _%$%id206414206451%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%hd206407206448%_))
                                                          (let ((_%$%e206410206453%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%hd206407206448%_))))
                    (let ((_%$%lp-hd206411206456%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e206410206453%_)))
                          (_%$%lp-tl206412206458%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e206410206453%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%lp-hd206411206456%_))
                          (let ((_%$%e206417206461%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%lp-hd206411206456%_))))
                            (let ((_%$%hd206418206464%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e206417206461%_)))
                                  (_%$%tl206419206466%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e206417206461%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl206419206466%_))
                                  (let ((_%$%e206420206469%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl206419206466%_))))
                                    (let ((_%$%hd206421206472%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e206420206469%_)))
                                          (_%$%tl206422206474%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e206420206469%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl206422206474%_))
                                          (_%$%loop206409206445%_
                                           _%$%lp-tl206412206458%_
                                           (cons _%$%hd206421206472%_
                                                 _%$%eid206413206450%_)
                                           (cons _%$%hd206418206464%_
                                                 _%$%id206414206451%_))
                                          (_%$%g206399206427%_
                                           _%$%g206400206430%_))))
                                  (_%$%g206399206427%_ _%$%g206400206430%_))))
                          (_%$%g206399206427%_ _%$%g206400206430%_))))
                  (let ((_%$%eid206415206477%_ (reverse _%$%eid206413206450%_))
                        (_%$%id206416206478%_ (reverse _%$%id206414206451%_)))
                    (cons '%#extern
                          (map _%generate1206397%_
                               (let ((__tmp216100
                                      (lambda (_%$%g206496206499%_
                                               _%$%g206497206501%_)
                                        (cons _%$%g206496206499%_
                                              _%$%g206497206501%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp216100
                                  '()
                                  _%$%id206416206478%_))
                               (let ((__tmp216101
                                      (lambda (_%$%g206503206506%_
                                               _%$%g206504206508%_)
                                        (cons _%$%g206503206506%_
                                              _%$%g206504206508%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp216101
                                  '()
                                  _%$%eid206415206477%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%loop206409206445%_
                                             _%$%target206406206440%_
                                             '()
                                             '()))
                                          (_%$%g206399206427%_
                                           _%$%g206400206430%_)))))
                                (_%$%g206399206427%_ _%$%g206400206430%_))))
                        (_%$%g206399206427%_ _%$%g206400206430%_)))))
            (_%$%g206398206511%_ _%stx206395%_)))))
    (define gxc#generate-meta-define-runtime%
      (lambda (_%self206322%_ _%stx206323%_)
        (let* ((_%$%g206325206342%_
                (lambda (_%$%g206326206339%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g206326206339%_))))
               (_%$%g206324206391%_
                (lambda (_%$%g206326206345%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g206326206345%_))
                      (let ((_%$%e206329206347%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g206326206345%_))))
                        (let ((_%$%hd206330206350%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e206329206347%_)))
                              (_%$%tl206331206352%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e206329206347%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl206331206352%_))
                              (let ((_%$%e206332206355%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl206331206352%_))))
                                (let ((_%$%hd206333206358%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e206332206355%_)))
                                      (_%$%tl206334206360%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e206332206355%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl206334206360%_))
                                      (let ((_%$%e206335206363%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl206334206360%_))))
                                        (let ((_%$%hd206336206366%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e206335206363%_)))
                                              (_%$%tl206337206368%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e206335206363%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl206337206368%_))
                                              (let ((_%ident206387%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#generate-runtime-identifier
                                                        _%$%hd206333206358%_)))
                                                    (_%eid206388%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd206336206366%_)))
                                                    (_%props206389%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier-properties
                                                        _%$%hd206333206358%_))))
                                                (cons '%#define-runtime
                                                      (cons _%ident206387%_
                                                            (cons _%eid206388%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%props206389%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g206325206342%_
                                               _%$%g206326206345%_))))
                                      (_%$%g206325206342%_
                                       _%$%g206326206345%_))))
                              (_%$%g206325206342%_ _%$%g206326206345%_))))
                      (_%$%g206325206342%_ _%$%g206326206345%_)))))
          (_%$%g206324206391%_ _%stx206323%_))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self206111%_ _%stx206112%_)
        (letrec ((_%generate1206114%_
                  (lambda (_%id206316%_)
                    (let ((_%eid206318%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id206316%_)))
                          (_%ident206319%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%id206316%_)))
                          (_%props206320%_
                           (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier-properties
                              _%id206316%_))))
                      (cons '%#define-runtime
                            (cons _%ident206319%_
                                  (cons _%eid206318%_ _%props206320%_))))))
                 (_%generate*206115%_
                  (lambda (_%all206284%_)
                    (let* ((_%$%all206285206293%_ _%all206284%_)
                           (_%$%else206287206301%_
                            (lambda () (cons '%#begin _%all206284%_)))
                           (_%$%K206289206306%_
                            (lambda (_%one206304%_) _%one206304%_)))
                      (if (pair? _%$%all206285206293%_)
                          (let ((_%$%hd206290206309%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%all206285206293%_)))
                                (_%$%tl206291206311%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%all206285206293%_))))
                            (let ((_%one206314%_ _%$%hd206290206309%_))
                              (if (null? _%$%tl206291206311%_)
                                  (_%$%K206289206306%_ _%one206314%_)
                                  (_%$%else206287206301%_))))
                          (_%$%else206287206301%_))))))
          (let* ((_%$%g206117206134%_
                  (lambda (_%$%g206118206131%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g206118206131%_))))
                 (_%$%g206116206281%_
                  (lambda (_%$%g206118206137%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g206118206137%_))
                        (let ((_%$%e206121206139%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g206118206137%_))))
                          (let ((_%$%hd206122206142%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e206121206139%_)))
                                (_%$%tl206123206144%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e206121206139%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl206123206144%_))
                                (let ((_%$%e206124206147%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl206123206144%_))))
                                  (let ((_%$%hd206125206150%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e206124206147%_)))
                                        (_%$%tl206126206152%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e206124206147%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl206126206152%_))
                                        (let ((_%$%e206127206155%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl206126206152%_))))
                                          (let ((_%$%hd206128206158%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e206127206155%_)))
                                                (_%$%tl206129206160%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e206127206155%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl206129206160%_))
                                                (let _%lp206180%_ ((_%rest206182%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%hd206125206150%_)
                           (_%r206183%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%__stx215838215839%_
                                                          _%rest206182%_)
                                                         (_%$%g206188206205%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%__stx215838215839%_)))))
                                                    (let ((_%__kont215840215841%_
                                                           (lambda (_%$%g206190206268%_)
                                                             (_%lp206180%_
                                                              _%$%g206190206268%_
                                                              _%r206183%_)))
                                                          (_%__kont215842215843%_
                                                           (lambda (_%$%g206195206241%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g206196206242%_)
                     (_%lp206180%_
                      _%$%g206195206241%_
                      (cons (_%generate1206114%_ _%$%g206196206242%_)
                            _%r206183%_))))
                  (_%__kont215844215845%_
                   (lambda (_%$%g206200206217%_)
                     (_%generate*206115%_
                      (let ((__tmp216102
                             (cons (_%generate1206114%_ _%$%g206200206217%_)
                                   '())))
                        (declare (not safe))
                        (foldl__0 cons __tmp216102 _%r206183%_)))))
                  (_%__kont215846215847%_
                   (lambda () (_%generate*206115%_ (reverse! _%r206183%_)))))
              (let ((_%$%g206186206228%_
                     (lambda ()
                       (let ((_%$%g206200206217%_ _%__stx215838215839%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%$%g206200206217%_))
                             (_%__kont215844215845%_ _%$%g206200206217%_)
                             (_%__kont215846215847%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx215838215839%_))
                    (let ((_%$%e206191206257%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx215838215839%_))))
                      (let ((_%$%tl206193206262%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e206191206257%_)))
                            (_%$%hd206192206260%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e206191206257%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%$%hd206192206260%_))
                            (let ((_%$%e206194206265%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd206192206260%_))))
                              (if (equal? _%$%e206194206265%_ '#f)
                                  (_%__kont215840215841%_ _%$%tl206193206262%_)
                                  (_%__kont215842215843%_
                                   _%$%tl206193206262%_
                                   _%$%hd206192206260%_)))
                            (_%__kont215842215843%_
                             _%$%tl206193206262%_
                             _%$%hd206192206260%_))))
                    (_%$%g206186206228%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g206117206134%_
                                                 _%$%g206118206137%_))))
                                        (_%$%g206117206134%_
                                         _%$%g206118206137%_))))
                                (_%$%g206117206134%_ _%$%g206118206137%_))))
                        (_%$%g206117206134%_ _%$%g206118206137%_)))))
            (_%$%g206116206281%_ _%stx206112%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self206008%_ _%stx206009%_)
        (let* ((_%$%g206011206028%_
                (lambda (_%$%g206012206025%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g206012206025%_))))
               (_%$%g206010206108%_
                (lambda (_%$%g206012206031%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g206012206031%_))
                      (let ((_%$%e206015206033%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g206012206031%_))))
                        (let ((_%$%hd206016206036%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e206015206033%_)))
                              (_%$%tl206017206038%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e206015206033%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl206017206038%_))
                              (let ((_%$%e206018206041%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl206017206038%_))))
                                (let ((_%$%hd206019206044%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e206018206041%_)))
                                      (_%$%tl206020206046%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e206018206041%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl206020206046%_))
                                      (let ((_%$%e206021206049%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl206020206046%_))))
                                        (let ((_%$%hd206022206052%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e206021206049%_)))
                                              (_%$%tl206023206054%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e206021206049%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl206023206054%_))
                                              (let* ((_%eid206073%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#generate-runtime-binding-id
                                                         _%$%hd206019206044%_)))
                                                     (_%phi206075%_
                                                      (let ((__tmp216103
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#current-expander-phi))))
                (declare (not safe))
                (##fx+ __tmp216103 '1)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%block206077%_
                                                      (gxc#meta-state-begin-phi!
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self206008%_
                                                          'state))
                                                       _%phi206075%_)))
                                                (let* ((_%$%g206080206087%_
                                                        (lambda (_%$%g206081206084%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%$%g206081206084%_))))
                                                       (_%$%g206079206105%_
                                                        (lambda (_%$%g206081206090%_)
                                                          (gxc#meta-state-add-phi!
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self206008%_
                                                              'state))
                                                           _%phi206075%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#define-runtime))
                         (cons _%$%g206081206090%_
                               (cons _%$%hd206022206052%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g206079206105%_
                                                   _%eid206073%_))
                                                (if _%block206077%_
                                                    (cons '%#begin
                                                          (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block206077%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        (cons (cons '%#define-syntax
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-identifier
                                             _%$%hd206019206044%_))
                                          (cons _%eid206073%_ '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons '%#define-syntax
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#generate-runtime-identifier
                           _%$%hd206019206044%_))
                        (cons _%eid206073%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g206011206028%_
                                               _%$%g206012206031%_))))
                                      (_%$%g206011206028%_
                                       _%$%g206012206031%_))))
                              (_%$%g206011206028%_ _%$%g206012206031%_))))
                      (_%$%g206011206028%_ _%$%g206012206031%_)))))
          (_%$%g206010206108%_ _%stx206009%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self205940%_ _%stx205941%_)
        (let* ((_%$%g205943205960%_
                (lambda (_%$%g205944205957%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205944205957%_))))
               (_%$%g205942206005%_
                (lambda (_%$%g205944205963%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205944205963%_))
                      (let ((_%$%e205947205965%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205944205963%_))))
                        (let ((_%$%hd205948205968%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205947205965%_)))
                              (_%$%tl205949205970%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205947205965%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl205949205970%_))
                              (let ((_%$%e205950205973%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl205949205970%_))))
                                (let ((_%$%hd205951205976%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e205950205973%_)))
                                      (_%$%tl205952205978%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e205950205973%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl205952205978%_))
                                      (let ((_%$%e205953205981%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl205952205978%_))))
                                        (let ((_%$%hd205954205984%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e205953205981%_)))
                                              (_%$%tl205955205986%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e205953205981%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl205955205986%_))
                                              (cons '%#define-alias
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#generate-runtime-identifier
                                                             _%$%hd205951205976%_))
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#generate-runtime-identifier
                           _%$%hd205954205984%_))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g205943205960%_
                                               _%$%g205944205963%_))))
                                      (_%$%g205943205960%_
                                       _%$%g205944205963%_))))
                              (_%$%g205943205960%_ _%$%g205944205963%_))))
                      (_%$%g205943205960%_ _%$%g205944205963%_)))))
          (_%$%g205942206005%_ _%stx205941%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self205937%_ _%stx205938%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self205937%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx205938%_)
        (gxc#generate-meta-define-values% _%self205937%_ _%stx205938%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self205934%_ _%stx205935%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self205934%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx205935%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp216105 (list)) (__tmp216104 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp216105
         '(src n open blocks)
         __tmp216104
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args205931%_
        (apply make-instance gxc#meta-state::t _%$args205931%_)))
    (define gxc#meta-state-src
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#meta-state::t 'src)))
    (define gxc#meta-state-n
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#meta-state::t 'n)))
    (define gxc#meta-state-open
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#meta-state::t 'open)))
    (define gxc#meta-state-blocks
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#meta-state::t 'blocks)))
    (define gxc#meta-state-src-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#meta-state::t 'src)))
    (define gxc#meta-state-n-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#meta-state::t 'n)))
    (define gxc#meta-state-open-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#meta-state::t 'open)))
    (define gxc#meta-state-blocks-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#meta-state::t 'blocks)))
    (define gxc#&meta-state-src
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#meta-state::t 'src)))
    (define gxc#&meta-state-n
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#meta-state::t 'n)))
    (define gxc#&meta-state-open
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#meta-state::t 'open)))
    (define gxc#&meta-state-blocks
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#meta-state::t 'blocks)))
    (define gxc#&meta-state-src-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#meta-state::t 'src)))
    (define gxc#&meta-state-n-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#meta-state::t 'n)))
    (define gxc#&meta-state-open-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#meta-state::t 'open)))
    (define gxc#&meta-state-blocks-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#meta-state::t 'blocks)))
    (define gxc#meta-state:::init!
      (lambda (_%self205917%_ _%ctx205918%_)
        (let ((_%self205921%_ _%self205917%_))
          (if (let ((__tmp216106
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self205921%_))))
                (declare (not safe))
                (##fx< '4 __tmp216106))
              (begin
                (let ((__tmp216107
                       (let ((__tmp216108
                              (##structure-ref
                               _%ctx205918%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp216108))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self205921%_
                   __tmp216107
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self205921%_ '1 '2 '#f '#f))
                (let ((__tmp216109
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self205921%_
                   __tmp216109
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self205921%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp216110
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self205921%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self205921%_
                       '4
                       __tmp216110))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp216112 (list)) (__tmp216111 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp216112
         '(ctx phi n code)
         __tmp216111
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args205792%_
        (apply make-instance gxc#meta-state-block::t _%$args205792%_)))
    (define gxc#meta-state-block-ctx
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#meta-state-block::t 'ctx)))
    (define gxc#meta-state-block-phi
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#meta-state-block::t 'phi)))
    (define gxc#meta-state-block-n
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#meta-state-block::t 'n)))
    (define gxc#meta-state-block-code
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#meta-state-block::t 'code)))
    (define gxc#meta-state-block-ctx-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#meta-state-block::t 'ctx)))
    (define gxc#meta-state-block-phi-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#meta-state-block::t 'phi)))
    (define gxc#meta-state-block-n-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#meta-state-block::t 'n)))
    (define gxc#meta-state-block-code-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#meta-state-block::t 'code)))
    (define gxc#&meta-state-block-ctx
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#meta-state-block::t 'ctx)))
    (define gxc#&meta-state-block-phi
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#meta-state-block::t 'phi)))
    (define gxc#&meta-state-block-n
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#meta-state-block::t 'n)))
    (define gxc#&meta-state-block-code
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#meta-state-block::t 'code)))
    (define gxc#&meta-state-block-ctx-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#meta-state-block::t 'ctx)))
    (define gxc#&meta-state-block-phi-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#meta-state-block::t 'phi)))
    (define gxc#&meta-state-block-n-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#meta-state-block::t 'n)))
    (define gxc#&meta-state-block-code-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#meta-state-block::t 'code)))
    (define gxc#meta-state-begin-phi!
      (lambda (_%state205752%_ _%phi205753%_)
        (let* ((_%$%state205754205762%_ _%state205752%_)
               (_%$%E205756205765%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%state205754205762%_
                           '((meta-state src n open))))
                  '#!void))
               (_%$%K205757205774%_
                (lambda (_%open205768%_ _%n205769%_ _%src205770%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open205768%_ _%phi205753%_))
                      '#f
                      (let ((_%block-ref205772%_
                             (let ((__tmp216113 (number->string _%n205769%_)))
                               (declare (not safe))
                               (##string-append
                                _%src205770%_
                                '"~"
                                __tmp216113))))
                        (##structure-set!
                         _%state205752%_
                         (let () (declare (not safe)) (##fx+ _%n205769%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp216114
                               (let ((__tmp216115
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp216115
                                  _%phi205753%_
                                  _%n205769%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open205768%_ _%phi205753%_ __tmp216114))
                        _%block-ref205772%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%$%state205754205762%_
                 'gxc#meta-state::t))
              (let* ((_%$%e205758205777%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%$%state205754205762%_
                         '1
                         '#f
                         '#f)))
                     (_%src205780%_ _%$%e205758205777%_)
                     (_%$%e205759205782%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%$%state205754205762%_
                         '2
                         '#f
                         '#f)))
                     (_%n205785%_ _%$%e205759205782%_)
                     (_%$%e205760205787%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%$%state205754205762%_
                         '3
                         '#f
                         '#f)))
                     (_%open205790%_ _%$%e205760205787%_))
                (_%$%K205757205774%_ _%open205790%_ _%n205785%_ _%src205780%_))
              (_%$%E205756205765%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state205746%_ _%phi205747%_ _%stx205748%_)
        (let ((_%block205750%_
               (let ((__tmp216116
                      (##structure-ref
                       _%state205746%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp216116 _%phi205747%_))))
          (##structure-set!
           _%block205750%_
           (cons _%stx205748%_
                 (##structure-ref
                  _%block205750%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state205740%_)
        (##structure-set!
         _%state205740%_
         (let ((__tmp216119
                (lambda (_%_205742%_ _%block205743%_ _%r205744%_)
                  (cons _%block205743%_ _%r205744%_)))
               (__tmp216118
                (##structure-ref _%state205740%_ '4 gxc#meta-state::t '#f))
               (__tmp216117
                (##structure-ref _%state205740%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp216119 __tmp216118 __tmp216117))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state205740%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state205693%_)
        (gxc#meta-state-end-phi! _%state205693%_)
        (let ((__tmp216121
               (lambda (_%block205695%_ _%r205696%_)
                 (let* ((_%$%block205697205706%_ _%block205695%_)
                        (_%$%E205699205709%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%$%block205697205706%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%$%K205700205717%_
                         (lambda (_%code205712%_
                                  _%n205713%_
                                  _%phi205714%_
                                  _%ctx205715%_)
                           (if (null? _%code205712%_)
                               _%r205696%_
                               (cons (cons _%ctx205715%_
                                           (cons _%phi205714%_
                                                 (cons _%n205713%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code205712%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r205696%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%$%block205697205706%_
                          'gxc#meta-state-block::t))
                       (let* ((_%$%e205701205720%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%$%block205697205706%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx205723%_ _%$%e205701205720%_)
                              (_%$%e205702205725%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%$%block205697205706%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi205728%_ _%$%e205702205725%_)
                              (_%$%e205703205730%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%$%block205697205706%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n205733%_ _%$%e205703205730%_)
                              (_%$%e205704205735%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%$%block205697205706%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code205738%_ _%$%e205704205735%_))
                         (_%$%K205700205717%_
                          _%code205738%_
                          _%n205733%_
                          _%phi205728%_
                          _%ctx205723%_))
                       (_%$%E205699205709%_)))))
              (__tmp216120
               (##structure-ref _%state205693%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (foldl__0 __tmp216121 '() __tmp216120))))
    (define gxc#collect-expression-refs
      (lambda (_%stx205689%_)
        (let ((_%ht205691%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht205691%_ _%stx205689%_)
          _%ht205691%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self205632%_ _%stx205633%_)
        (let* ((_%$%g205635205648%_
                (lambda (_%$%g205636205645%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205636205645%_))))
               (_%$%g205634205686%_
                (lambda (_%$%g205636205651%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205636205651%_))
                      (let ((_%$%e205638205653%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205636205651%_))))
                        (let ((_%$%hd205639205656%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205638205653%_)))
                              (_%$%tl205640205658%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205638205653%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl205640205658%_))
                              (let ((_%$%e205641205661%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl205640205658%_))))
                                (let ((_%$%hd205642205664%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e205641205661%_)))
                                      (_%$%tl205643205666%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e205641205661%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl205643205666%_))
                                      (let* ((_%bind205681%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#resolve-identifier__0
                                                 _%$%hd205642205664%_)))
                                             (_%eid205683%_
                                              (if _%bind205681%_
                                                  (##structure-ref
                                                   _%bind205681%_
                                                   '1
                                                   gx#binding::t
                                                   '#f)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%hd205642205664%_))))
                                             (__tmp216122
                                              (let ()
                                                (declare (not safe))
                                                (slot-ref__0
                                                 _%self205632%_
                                                 'table))))
                                        (declare (not safe))
                                        (hash-put!
                                         __tmp216122
                                         _%eid205683%_
                                         _%eid205683%_))
                                      (_%$%g205635205648%_
                                       _%$%g205636205651%_))))
                              (_%$%g205635205648%_ _%$%g205636205651%_))))
                      (_%$%g205635205648%_ _%$%g205636205651%_)))))
          (_%$%g205634205686%_ _%stx205633%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self205559%_ _%stx205560%_)
        (let* ((_%$%g205562205579%_
                (lambda (_%$%g205563205576%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205563205576%_))))
               (_%$%g205561205629%_
                (lambda (_%$%g205563205582%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205563205582%_))
                      (let ((_%$%e205566205584%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205563205582%_))))
                        (let ((_%$%hd205567205587%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205566205584%_)))
                              (_%$%tl205568205589%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205566205584%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl205568205589%_))
                              (let ((_%$%e205569205592%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl205568205589%_))))
                                (let ((_%$%hd205570205595%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e205569205592%_)))
                                      (_%$%tl205571205597%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e205569205592%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl205571205597%_))
                                      (let ((_%$%e205572205600%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl205571205597%_))))
                                        (let ((_%$%hd205573205603%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e205572205600%_)))
                                              (_%$%tl205574205605%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e205572205600%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl205574205605%_))
                                              (let* ((_%bind205624%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#resolve-identifier__0
                                                         _%$%hd205570205595%_)))
                                                     (_%eid205626%_
                                                      (if _%bind205624%_
                                                          (##structure-ref
                                                           _%bind205624%_
                                                           '1
                                                           gx#binding::t
                                                           '#f)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%hd205570205595%_)))))
                                                (let ((__tmp216123
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self205559%_
                                                          'table))))
                                                  (declare (not safe))
                                                  (hash-put!
                                                   __tmp216123
                                                   _%eid205626%_
                                                   _%eid205626%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self205559%_
                                                   _%$%hd205573205603%_)))
                                              (_%$%g205562205579%_
                                               _%$%g205563205582%_))))
                                      (_%$%g205562205579%_
                                       _%$%g205563205582%_))))
                              (_%$%g205562205579%_ _%$%g205563205582%_))))
                      (_%$%g205562205579%_ _%$%g205563205582%_)))))
          (_%$%g205561205629%_ _%stx205560%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self205516%_ _%stx205517%_)
        (let* ((_%$%g205519205529%_
                (lambda (_%$%g205520205526%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205520205526%_))))
               (_%$%g205518205556%_
                (lambda (_%$%g205520205532%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205520205532%_))
                      (let ((_%$%e205522205534%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205520205532%_))))
                        (let ((_%$%hd205523205537%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205522205534%_)))
                              (_%$%tl205524205539%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205522205534%_))))
                          (let ((__tmp216124
                                 (lambda (_%$%g205551205553%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self205516%_
                                      _%$%g205551205553%_)))))
                            (declare (not safe))
                            (ormap__0 __tmp216124 _%$%tl205524205539%_))))
                      (_%$%g205519205529%_ _%$%g205520205532%_)))))
          (_%$%g205518205556%_ _%stx205517%_))))
    (define gxc#count-values-single%
      (lambda (_%self205513%_ _%stx205514%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self205381%_ _%stx205382%_)
        (let* ((_%__stx215868215869%_ _%stx205382%_)
               (_%$%g205385205414%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx215868215869%_)))))
          (let ((_%__kont215870215871%_
                 (lambda (_%$%g205387205480%_ _%$%g205388205481%_)
                   (length (let ((__tmp216125
                                  (lambda (_%$%g205502205505%_
                                           _%$%g205503205507%_)
                                    (cons _%$%g205502205505%_
                                          _%$%g205503205507%_))))
                             (declare (not safe))
                             (foldr__0 __tmp216125 '() _%$%g205387205480%_)))))
                (_%__kont215874215875%_ (lambda () '#f)))
            (let ((_%__match215913215914%_
                   (lambda (_%$%e205389205426%_
                            _%$%hd205390205429%_
                            _%$%tl205391205431%_
                            _%$%e205392205434%_
                            _%$%hd205393205437%_
                            _%$%tl205394205439%_
                            _%$%e205395205442%_
                            _%$%hd205396205445%_
                            _%$%tl205397205447%_
                            _%$%e205398205450%_
                            _%$%hd205399205453%_
                            _%$%tl205400205455%_
                            _%__splice215872215873%_
                            _%$%target205401205458%_
                            _%$%tl205403205460%_)
                     (letrec ((_%$%loop205404205463%_
                               (lambda (_%$%hd205402205466%_
                                        _%$%rand205408205468%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd205402205466%_))
                                     (let ((_%$%e205405205470%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd205402205466%_))))
                                       (let ((_%$%lp-tl205407205475%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e205405205470%_)))
                                             (_%$%lp-hd205406205473%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e205405205470%_))))
                                         (_%$%loop205404205463%_
                                          _%$%lp-tl205407205475%_
                                          (cons _%$%lp-hd205406205473%_
                                                _%$%rand205408205468%_))))
                                     (let ((_%$%rand205409205478%_
                                            (reverse _%$%rand205408205468%_)))
                                       (let ((_%$%g205387205480%_
                                              _%$%rand205409205478%_)
                                             (_%$%g205388205481%_
                                              _%$%hd205399205453%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%$%g205388205481%_
                                                'values))
                                             (_%__kont215870215871%_
                                              _%$%g205387205480%_
                                              _%$%g205388205481%_)
                                             (_%__kont215874215875%_))))))))
                       (_%$%loop205404205463%_
                        _%$%target205401205458%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx215868215869%_))
                  (let ((_%$%e205389205426%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx215868215869%_))))
                    (let ((_%$%tl205391205431%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e205389205426%_)))
                          (_%$%hd205390205429%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e205389205426%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl205391205431%_))
                          (let ((_%$%e205392205434%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl205391205431%_))))
                            (let ((_%$%tl205394205439%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e205392205434%_)))
                                  (_%$%hd205393205437%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e205392205434%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd205393205437%_))
                                  (let ((_%$%e205395205442%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd205393205437%_))))
                                    (let ((_%$%tl205397205447%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e205395205442%_)))
                                          (_%$%hd205396205445%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e205395205442%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd205396205445%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd205396205445%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl205397205447%_))
                                                  (let ((_%$%e205398205450%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl205397205447%_))))
                                                    (let ((_%$%tl205400205455%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e205398205450%_)))
                                                          (_%$%hd205399205453%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e205398205450%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl205400205455%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%$%tl205394205439%_))
                      (let ((_%__splice215872215873%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl205394205439%_
                                '0))))
                        (let ((_%$%tl205403205460%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice215872215873%_ '1)))
                              (_%$%target205401205458%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice215872215873%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl205403205460%_))
                              (_%__match215913215914%_
                               _%$%e205389205426%_
                               _%$%hd205390205429%_
                               _%$%tl205391205431%_
                               _%$%e205392205434%_
                               _%$%hd205393205437%_
                               _%$%tl205394205439%_
                               _%$%e205395205442%_
                               _%$%hd205396205445%_
                               _%$%tl205397205447%_
                               _%$%e205398205450%_
                               _%$%hd205399205453%_
                               _%$%tl205400205455%_
                               _%__splice215872215873%_
                               _%$%target205401205458%_
                               _%$%tl205403205460%_)
                              (_%__kont215874215875%_))))
                      (_%__kont215874215875%_))
                  (_%__kont215874215875%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont215874215875%_))
                                              (_%__kont215874215875%_))
                                          (_%__kont215874215875%_))))
                                  (_%__kont215874215875%_))))
                          (_%__kont215874215875%_))))
                  (_%__kont215874215875%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self205286%_ _%stx205287%_)
        (let* ((_%$%g205289205310%_
                (lambda (_%$%g205290205307%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205290205307%_))))
               (_%$%g205288205378%_
                (lambda (_%$%g205290205313%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205290205313%_))
                      (let ((_%$%e205294205315%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205290205313%_))))
                        (let ((_%$%hd205295205318%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205294205315%_)))
                              (_%$%tl205296205320%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205294205315%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl205296205320%_))
                              (let ((_%$%e205297205323%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl205296205320%_))))
                                (let ((_%$%hd205298205326%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e205297205323%_)))
                                      (_%$%tl205299205328%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e205297205323%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl205299205328%_))
                                      (let ((_%$%e205300205331%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl205299205328%_))))
                                        (let ((_%$%hd205301205334%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e205300205331%_)))
                                              (_%$%tl205302205336%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e205300205331%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl205302205336%_))
                                              (let ((_%$%e205303205339%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl205302205336%_))))
                                                (let ((_%$%hd205304205342%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e205303205339%_)))
                                                      (_%$%tl205305205344%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e205303205339%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl205305205344%_))
                                                      (let ((_%$%c1205366205368%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1
                        _%self205286%_
                        _%$%hd205301205334%_))))
                (if _%$%c1205366205368%_
                    (let* ((_%c1205370%_ _%$%c1205366205368%_)
                           (_%$%c2205371205373%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self205286%_
                               _%$%hd205304205342%_))))
                      (if _%$%c2205371205373%_
                          (let ((_%c2205375%_ _%$%c2205371205373%_))
                            (if (fx= _%c1205370%_ _%c2205375%_)
                                _%c1205370%_
                                '#f))
                          '#f))
                    '#f))
              (_%$%g205289205310%_ _%$%g205290205313%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g205289205310%_
                                               _%$%g205290205313%_))))
                                      (_%$%g205289205310%_
                                       _%$%g205290205313%_))))
                              (_%$%g205289205310%_ _%$%g205290205313%_))))
                      (_%$%g205289205310%_ _%$%g205290205313%_)))))
          (_%$%g205288205378%_ _%stx205287%_))))))
