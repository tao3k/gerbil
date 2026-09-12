(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1789188909)
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
      (let ((__tmp215924 (list gxc#::void::t))
            (__tmp215923 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp215924
         '()
         __tmp215923
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args214538%_
        (apply make-instance gxc#::collect-bindings::t _%$args214538%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp215925
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
        (__make-atomic-promise __tmp215925)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx214530%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self214533%_
                (let ((__obj215899
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj215899))
               (__tmp215926
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self214533%_ _%stx214530%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp215926
           gxc#current-compile-method
           _%self214533%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp215928 (list gxc#::void::t))
            (__tmp215927 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp215928
         '(modules)
         __tmp215927
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args214527%_
        (apply make-instance gxc#::lift-modules::t _%$args214527%_)))
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
      (let ((__tmp215929
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
        (__make-atomic-promise __tmp215929)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords214502%_ _%$%modules214499214503%_ _%stx214504%_)
        (let ((_%modules214507%_
               (if (eq? _%$%modules214499214503%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%$%modules214499214503%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self214509%_
                  (let ((__obj215901
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj215901
                       _%modules214507%_
                       '1
                       '#f
                       '#f))
                    __obj215901))
                 (__tmp215930
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self214509%_ _%stx214504%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp215930
             gxc#current-compile-method
             _%self214509%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords214516%_ . _%args214517%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords214516%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords214516%_
                  'modules:
                  absent-value))
               _%args214517%_)))
    (define gxc#apply-lift-modules
      (lambda _%$%args214500214523%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%$%args214500214523%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp215932 (list)) (__tmp215931 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp215932
         '()
         __tmp215931
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args214495%_
        (apply make-instance gxc#::find-runtime-code::t _%$args214495%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp215933
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
        (__make-atomic-promise __tmp215933)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx214487%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self214490%_
                (let ((__obj215903
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj215903))
               (__tmp215934
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self214490%_ _%stx214487%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp215934
           gxc#current-compile-method
           _%self214490%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp215936 (list gxc#::false::t))
            (__tmp215935 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp215936
         '()
         __tmp215935
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args214484%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args214484%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp215937
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
        (__make-atomic-promise __tmp215937)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx214476%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self214479%_
                (let ((__obj215905
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj215905))
               (__tmp215938
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self214479%_ _%stx214476%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp215938
           gxc#current-compile-method
           _%self214479%_))))
    (define gxc#::count-values::t
      (let ((__tmp215940 (list gxc#::false-expression::t))
            (__tmp215939 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp215940
         '()
         __tmp215939
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args214473%_
        (apply make-instance gxc#::count-values::t _%$args214473%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp215941
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
        (__make-atomic-promise __tmp215941)))
    (define gxc#apply-count-values
      (lambda (_%stx214465%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self214468%_
                (let ((__obj215907
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj215907))
               (__tmp215942
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self214468%_ _%stx214465%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp215942
           gxc#current-compile-method
           _%self214468%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp215943 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp215943
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args214462%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args214462%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp215944
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
        (__make-atomic-promise __tmp215944)))
    (define gxc#::generate-loader::t
      (let ((__tmp215946 (list gxc#::generate-runtime-empty::t))
            (__tmp215945 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp215946
         '()
         __tmp215945
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args214458%_
        (apply make-instance gxc#::generate-loader::t _%$args214458%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp215947
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
        (__make-atomic-promise __tmp215947)))
    (define gxc#apply-generate-loader
      (lambda (_%stx214450%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self214453%_
                (let ((__obj215910
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj215910))
               (__tmp215948
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self214453%_ _%stx214450%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp215948
           gxc#current-compile-method
           _%self214453%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp215949 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp215949
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args214447%_
        (apply make-instance gxc#::generate-runtime::t _%$args214447%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp215950
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
        (__make-atomic-promise __tmp215950)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx214439%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self214442%_
                (let ((__obj215912
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj215912))
               (__tmp215951
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self214442%_ _%stx214439%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp215951
           gxc#current-compile-method
           _%self214442%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp215953 (list gxc#::generate-runtime::t))
            (__tmp215952 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp215953
         '()
         __tmp215952
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args214436%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args214436%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp215954
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
        (__make-atomic-promise __tmp215954)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx214428%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self214431%_
                (let ((__obj215914
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj215914))
               (__tmp215955
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self214431%_ _%stx214428%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp215955
           gxc#current-compile-method
           _%self214431%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp215956 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp215956
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args214425%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args214425%_)))
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
      (let ((__tmp215957
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
        (__make-atomic-promise __tmp215957)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords214400%_ _%$%table214397214401%_ _%stx214402%_)
        (let ((_%table214405%_
               (if (eq? _%$%table214397214401%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%$%table214397214401%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self214407%_
                  (let ((__obj215916
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj215916
                       _%table214405%_
                       '1
                       '#f
                       '#f))
                    __obj215916))
                 (__tmp215958
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self214407%_ _%stx214402%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp215958
             gxc#current-compile-method
             _%self214407%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords214414%_ . _%args214415%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords214414%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords214414%_
                  'table:
                  absent-value))
               _%args214415%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%$%args214398214421%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%$%args214398214421%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp215960 (list gxc#::void-expression::t))
            (__tmp215959 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp215960
         '(state)
         __tmp215959
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args214393%_
        (apply make-instance gxc#::generate-meta::t _%$args214393%_)))
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
      (let ((__tmp215961
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
        (__make-atomic-promise __tmp215961)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords214368%_ _%$%state214365214369%_ _%stx214370%_)
        (let ((_%state214373%_
               (if (eq? _%$%state214365214369%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%$%state214365214369%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self214375%_
                  (let ((__obj215918
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj215918
                       _%state214373%_
                       '1
                       '#f
                       '#f))
                    __obj215918))
                 (__tmp215962
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self214375%_ _%stx214370%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp215962
             gxc#current-compile-method
             _%self214375%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords214382%_ . _%args214383%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords214382%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords214382%_
                  'state:
                  absent-value))
               _%args214383%_)))
    (define gxc#apply-generate-meta
      (lambda _%$%args214366214389%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%$%args214366214389%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp215964 (list)) (__tmp215963 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp215964
         '(state)
         __tmp215963
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args214361%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args214361%_)))
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
      (let ((__tmp215965
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
        (__make-atomic-promise __tmp215965)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords214336%_ _%$%state214333214337%_ _%stx214338%_)
        (let ((_%state214341%_
               (if (eq? _%$%state214333214337%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%$%state214333214337%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self214343%_
                  (let ((__obj215920
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj215920
                       _%state214341%_
                       '1
                       '#f
                       '#f))
                    __obj215920))
                 (__tmp215966
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self214343%_ _%stx214338%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp215966
             gxc#current-compile-method
             _%self214343%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords214350%_ . _%args214351%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords214350%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords214350%_
                  'state:
                  absent-value))
               _%args214351%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%$%args214334214357%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%$%args214334214357%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self214262%_ _%stx214263%_)
        (let* ((_%$%g214265214282%_
                (lambda (_%$%g214266214279%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g214266214279%_))))
               (_%$%g214264214329%_
                (lambda (_%$%g214266214285%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g214266214285%_))
                      (let ((_%$%e214269214287%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g214266214285%_))))
                        (let ((_%$%hd214270214290%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e214269214287%_)))
                              (_%$%tl214271214292%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e214269214287%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl214271214292%_))
                              (let ((_%$%e214272214295%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl214271214292%_))))
                                (let ((_%$%hd214273214298%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e214272214295%_)))
                                      (_%$%tl214274214300%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e214272214295%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl214274214300%_))
                                      (let ((_%$%e214275214303%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl214274214300%_))))
                                        (let ((_%$%hd214276214306%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e214275214303%_)))
                                              (_%$%tl214277214308%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e214275214303%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl214277214308%_))
                                              (let ((__tmp215967
                                                     (lambda (_%bind214327%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#identifier?
                                                              _%bind214327%_))
                                                           (gxc#add-module-binding!
                                                            _%bind214327%_
                                                            '#f)
                                                           '#!void))))
                                                (declare (not safe))
                                                (gx#stx-for-each1
                                                 __tmp215967
                                                 _%$%hd214273214298%_))
                                              (_%$%g214265214282%_
                                               _%$%g214266214285%_))))
                                      (_%$%g214265214282%_
                                       _%$%g214266214285%_))))
                              (_%$%g214265214282%_ _%$%g214266214285%_))))
                      (_%$%g214265214282%_ _%$%g214266214285%_)))))
          (_%$%g214264214329%_ _%stx214263%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self214194%_ _%stx214195%_)
        (let* ((_%$%g214197214214%_
                (lambda (_%$%g214198214211%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g214198214211%_))))
               (_%$%g214196214259%_
                (lambda (_%$%g214198214217%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g214198214217%_))
                      (let ((_%$%e214201214219%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g214198214217%_))))
                        (let ((_%$%hd214202214222%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e214201214219%_)))
                              (_%$%tl214203214224%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e214201214219%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl214203214224%_))
                              (let ((_%$%e214204214227%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl214203214224%_))))
                                (let ((_%$%hd214205214230%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e214204214227%_)))
                                      (_%$%tl214206214232%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e214204214227%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl214206214232%_))
                                      (let ((_%$%e214207214235%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl214206214232%_))))
                                        (let ((_%$%hd214208214238%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e214207214235%_)))
                                              (_%$%tl214209214240%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e214207214235%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl214209214240%_))
                                              (gxc#add-module-binding!
                                               _%$%hd214205214230%_
                                               '#t)
                                              (_%$%g214197214214%_
                                               _%$%g214198214217%_))))
                                      (_%$%g214197214214%_
                                       _%$%g214198214217%_))))
                              (_%$%g214197214214%_ _%$%g214198214217%_))))
                      (_%$%g214197214214%_ _%$%g214198214217%_)))))
          (_%$%g214196214259%_ _%stx214195%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self214136%_ _%stx214137%_)
        (let* ((_%$%g214139214153%_
                (lambda (_%$%g214140214150%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g214140214150%_))))
               (_%$%g214138214191%_
                (lambda (_%$%g214140214156%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g214140214156%_))
                      (let ((_%$%e214143214158%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g214140214156%_))))
                        (let ((_%$%hd214144214161%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e214143214158%_)))
                              (_%$%tl214145214163%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e214143214158%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl214145214163%_))
                              (let ((_%$%e214146214166%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl214145214163%_))))
                                (let ((_%$%hd214147214169%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e214146214166%_)))
                                      (_%$%tl214148214171%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e214146214166%_))))
                                  (let ((_%ctx214188%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-local-e__0
                                            _%$%hd214147214169%_))))
                                    (set-box!
                                     (let ()
                                       (declare (not safe))
                                       (slot-ref__0 _%self214136%_ 'modules))
                                     (cons _%ctx214188%_
                                           (unbox (let ()
                                                    (declare (not safe))
                                                    (slot-ref__0
                                                     _%self214136%_
                                                     'modules)))))
                                    (let ((__tmp215968
                                           (lambda ()
                                             (let ((__tmp215969
                                                    (##structure-ref
                                                     _%ctx214188%_
                                                     '11
                                                     gx#module-context::t
                                                     '#f)))
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self214136%_
                                                __tmp215969)))))
                                      (declare (not safe))
                                      (call-with-parameters__1
                                       __tmp215968
                                       gx#current-expander-context
                                       _%ctx214188%_)))))
                              (_%$%g214139214153%_ _%$%g214140214156%_))))
                      (_%$%g214139214153%_ _%$%g214140214156%_)))))
          (_%$%g214138214191%_ _%stx214137%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%$%decls214090214092%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%$%decls214090214092%_
              (let ((_%decls214094%_ _%$%decls214090214092%_))
                (let _%lp214096%_ ((_%rest214098%_ _%decls214094%_))
                  (let* ((_%$%rest214099214107%_ _%rest214098%_)
                         (_%$%else214101214115%_ (lambda () '#f))
                         (_%$%K214103214124%_
                          (lambda (_%decls214118%_ _%decl214119%_)
                            (if (equal? _%decl214119%_ '(not safe))
                                '#t
                                (if (equal? _%decl214119%_ '(safe))
                                    '#f
                                    (_%lp214096%_ _%decls214118%_))))))
                    (if (pair? _%$%rest214099214107%_)
                        (let ((_%$%hd214104214127%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%rest214099214107%_)))
                              (_%$%tl214105214129%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%rest214099214107%_))))
                          (let* ((_%decl214132%_ _%$%hd214104214127%_)
                                 (_%decls214134%_ _%$%tl214105214129%_))
                            (_%$%K214103214124%_
                             _%decls214134%_
                             _%decl214132%_)))
                        (_%$%else214101214115%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id214084%_ _%syntax?214085%_)
        (let ((_%eid214087%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id214084%_))
                '1
                gx#binding::t
                '#f))
              (_%ht214088%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid214087%_))
              '#!void
              (let ((__tmp215970
                     (let ((__tmp215971
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid214087%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp215971 _%syntax?214085%_))))
                (declare (not safe))
                (hash-put! _%ht214088%_ _%eid214087%_ __tmp215970))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self214081%_ _%stx214082%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self213928%_ _%stx213929%_)
        (letrec ((_%simplify213931%_
                  (lambda (_%body213979%_)
                    (let _%lp213981%_ ((_%rest213983%_ _%body213979%_)
                                       (_%r213984%_ '()))
                      (let* ((_%$%rest213985213993%_ _%rest213983%_)
                             (_%$%else213987214001%_
                              (lambda () (reverse _%r213984%_)))
                             (_%$%K213989214069%_
                              (lambda (_%rest214004%_ _%hd214005%_)
                                (let* ((_%$%hd214006214022%_ _%hd214005%_)
                                       (_%$%else214010214030%_
                                        (lambda ()
                                          (_%lp213981%_
                                           _%rest214004%_
                                           (cons _%hd214005%_ _%r213984%_)))))
                                  (let ((_%$%K214018214059%_
                                         (lambda (_%exprs214057%_)
                                           (_%lp213981%_
                                            (append _%exprs214057%_
                                                    _%rest214004%_)
                                            _%r213984%_)))
                                        (_%$%K214013214043%_
                                         (lambda ()
                                           (if (null? _%rest214004%_)
                                               (_%lp213981%_
                                                _%rest214004%_
                                                (cons _%hd214005%_
                                                      _%r213984%_))
                                               (_%lp213981%_
                                                _%rest214004%_
                                                _%r213984%_))))
                                        (_%$%K214012214035%_
                                         (lambda ()
                                           (if (null? _%rest214004%_)
                                               (_%lp213981%_
                                                _%rest214004%_
                                                (cons _%hd214005%_
                                                      _%r213984%_))
                                               (_%lp213981%_
                                                _%rest214004%_
                                                _%r213984%_)))))
                                    (let ((_%$%try-match214009214038%_
                                           (lambda ()
                                             (if (symbol? _%$%hd214006214022%_)
                                                 (_%$%K214012214035%_)
                                                 (_%$%else214010214030%_)))))
                                      (if (pair? _%$%hd214006214022%_)
                                          (let ((_%$%tl214020214064%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%hd214006214022%_)))
                                                (_%$%hd214019214062%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%hd214006214022%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%$%hd214019214062%_
                                                         'begin))
                                                (let ((_%exprs214067%_
                                                       _%$%tl214020214064%_))
                                                  (_%$%K214018214059%_
                                                   _%exprs214067%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%$%hd214019214062%_
                                                             'quote))
                                                    (if (pair? _%$%tl214020214064%_)
                                                        (let ((_%$%tl214017214051%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%tl214020214064%_))))
                  (if (null? _%$%tl214017214051%_)
                      (_%$%K214013214043%_)
                      (_%$%try-match214009214038%_)))
                (_%$%try-match214009214038%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%try-match214009214038%_))))
                                          (_%$%try-match214009214038%_))))))))
                        (if (pair? _%$%rest213985213993%_)
                            (let ((_%$%hd213990214072%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest213985213993%_)))
                                  (_%$%tl213991214074%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest213985213993%_))))
                              (let* ((_%hd214077%_ _%$%hd213990214072%_)
                                     (_%rest214079%_ _%$%tl213991214074%_))
                                (_%$%K213989214069%_
                                 _%rest214079%_
                                 _%hd214077%_)))
                            (_%$%else213987214001%_)))))))
          (let* ((_%$%g213933213943%_
                  (lambda (_%$%g213934213940%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g213934213940%_))))
                 (_%$%g213932213976%_
                  (lambda (_%$%g213934213946%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g213934213946%_))
                        (let ((_%$%e213936213948%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g213934213946%_))))
                          (let ((_%$%hd213937213951%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e213936213948%_)))
                                (_%$%tl213938213953%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e213936213948%_))))
                            (let* ((_%body213971%_
                                    (map (lambda (_%$%g213966213968%_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self213928%_
                                              _%$%g213966213968%_)))
                                         _%$%tl213938213953%_))
                                   (_%body213973%_
                                    (_%simplify213931%_ _%body213971%_)))
                              (if (let ((__tmp215972 (length _%body213973%_)))
                                    (declare (not safe))
                                    (##fx= __tmp215972 '1))
                                  (car _%body213973%_)
                                  (cons 'begin _%body213973%_)))))
                        (_%$%g213933213943%_ _%$%g213934213946%_)))))
            (_%$%g213932213976%_ _%stx213929%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self213889%_ _%stx213890%_)
        (let* ((_%$%g213892213902%_
                (lambda (_%$%g213893213899%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g213893213899%_))))
               (_%$%g213891213925%_
                (lambda (_%$%g213893213905%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g213893213905%_))
                      (let ((_%$%e213895213907%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g213893213905%_))))
                        (let ((_%$%hd213896213910%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e213895213907%_)))
                              (_%$%tl213897213912%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e213895213907%_))))
                          (cons 'begin
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax->datum _%$%tl213897213912%_)))))
                      (_%$%g213892213902%_ _%$%g213893213905%_)))))
          (_%$%g213891213925%_ _%stx213890%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self213655%_ _%stx213656%_)
        (let* ((_%__stx214562214563%_ _%stx213656%_)
               (_%$%g213660213712%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx214562214563%_)))))
          (let ((_%__kont214564214565%_
                 (lambda (_%$%g213662213871%_ _%$%g213663213872%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self213655%_ _%$%g213662213871%_))))
                (_%__kont214566214567%_
                 (lambda (_%$%g213673213819%_
                          _%$%g213674213820%_
                          _%$%g213675213821%_)
                   (if (let ((__tmp215973
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%g213675213821%_))))
                         (declare (not safe))
                         (##memq __tmp215973 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self213655%_
                          _%$%g213673213819%_)))))
                (_%__kont214570214571%_
                 (lambda (_%$%g213697213741%_ _%$%g213698213742%_)
                   (let ((_%decls213757%_
                          (map gx#syntax->datum _%$%g213698213742%_)))
                     (let ((__tmp215975
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls213757%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self213655%_
                                                   _%$%g213697213741%_))
                                                '())))))
                           (__tmp215974
                            (append _%decls213757%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-decls)))))
                       (declare (not safe))
                       (call-with-parameters__1
                        __tmp215975
                        gxc#current-compile-decls
                        __tmp215974))))))
            (let* ((_%__match214617214618%_
                    (lambda (_%$%e213676213765%_
                             _%$%hd213677213768%_
                             _%$%tl213678213770%_
                             _%$%e213679213773%_
                             _%$%hd213680213776%_
                             _%$%tl213681213778%_
                             _%$%e213682213781%_
                             _%$%hd213683213784%_
                             _%$%tl213684213786%_
                             _%__splice214568214569%_
                             _%$%target213685213789%_
                             _%$%tl213687213791%_)
                      (letrec ((_%$%loop213688213794%_
                                (lambda (_%$%hd213686213797%_
                                         _%$%param213692213799%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd213686213797%_))
                                      (let ((_%$%e213689213801%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd213686213797%_))))
                                        (let ((_%$%lp-tl213691213806%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e213689213801%_)))
                                              (_%$%lp-hd213690213804%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e213689213801%_))))
                                          (_%$%loop213688213794%_
                                           _%$%lp-tl213691213806%_
                                           (cons _%$%lp-hd213690213804%_
                                                 _%$%param213692213799%_))))
                                      (let ((_%$%param213693213809%_
                                             (reverse _%$%param213692213799%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl213681213778%_))
                                            (let ((_%$%e213694213811%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl213681213778%_))))
                                              (let ((_%$%tl213696213816%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e213694213811%_)))
                                                    (_%$%hd213695213814%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e213694213811%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl213696213816%_))
                                                    (let ((_%$%g213673213819%_
                                                           _%$%hd213695213814%_)
                                                          (_%$%g213674213820%_
                                                           _%$%param213693213809%_)
                                                          (_%$%g213675213821%_
                                                           _%$%hd213683213784%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%$%g213675213821%_))
                       (not (let ((__tmp215976
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g213675213821%_))))
                              (declare (not safe))
                              (##memq __tmp215976 gxc#gambit-annotations))))
                  (_%__kont214566214567%_
                   _%$%g213673213819%_
                   _%$%g213674213820%_
                   _%$%g213675213821%_)
                  (_%__kont214570214571%_
                   _%$%hd213695213814%_
                   _%$%hd213680213776%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g213660213712%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g213660213712%_))))))))
                        (_%$%loop213688213794%_
                         _%$%target213685213789%_
                         '()))))
                   (_%__match214591214592%_
                    (lambda (_%$%e213664213847%_
                             _%$%hd213665213850%_
                             _%$%tl213666213852%_
                             _%$%e213667213855%_
                             _%$%hd213668213858%_
                             _%$%tl213669213860%_
                             _%$%e213670213863%_
                             _%$%hd213671213866%_
                             _%$%tl213672213868%_)
                      (let ((_%$%g213662213871%_ _%$%hd213671213866%_)
                            (_%$%g213663213872%_ _%$%hd213668213858%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%$%g213663213872%_))
                            (_%__kont214564214565%_
                             _%$%g213662213871%_
                             _%$%g213663213872%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd213668213858%_))
                                (let ((_%$%e213682213781%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd213668213858%_))))
                                  (let ((_%$%tl213684213786%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e213682213781%_)))
                                        (_%$%hd213683213784%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e213682213781%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%tl213684213786%_))
                                        (let ((_%__splice214568214569%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl213684213786%_
                                                  '0))))
                                          (let ((_%$%tl213687213791%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice214568214569%_
                                                    '1)))
                                                (_%$%target213685213789%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice214568214569%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl213687213791%_))
                                                (_%__match214617214618%_
                                                 _%$%e213664213847%_
                                                 _%$%hd213665213850%_
                                                 _%$%tl213666213852%_
                                                 _%$%e213667213855%_
                                                 _%$%hd213668213858%_
                                                 _%$%tl213669213860%_
                                                 _%$%e213682213781%_
                                                 _%$%hd213683213784%_
                                                 _%$%tl213684213786%_
                                                 _%__splice214568214569%_
                                                 _%$%target213685213789%_
                                                 _%$%tl213687213791%_)
                                                (_%__kont214570214571%_
                                                 _%$%hd213671213866%_
                                                 _%$%hd213668213858%_))))
                                        (_%__kont214570214571%_
                                         _%$%hd213671213866%_
                                         _%$%hd213668213858%_))))
                                (_%__kont214570214571%_
                                 _%$%hd213671213866%_
                                 _%$%hd213668213858%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx214562214563%_))
                  (let ((_%$%e213664213847%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx214562214563%_))))
                    (let ((_%$%tl213666213852%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e213664213847%_)))
                          (_%$%hd213665213850%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e213664213847%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl213666213852%_))
                          (let ((_%$%e213667213855%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl213666213852%_))))
                            (let ((_%$%tl213669213860%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e213667213855%_)))
                                  (_%$%hd213668213858%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e213667213855%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl213669213860%_))
                                  (let ((_%$%e213670213863%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl213669213860%_))))
                                    (let ((_%$%tl213672213868%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e213670213863%_)))
                                          (_%$%hd213671213866%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e213670213863%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl213672213868%_))
                                          (_%__match214591214592%_
                                           _%$%e213664213847%_
                                           _%$%hd213665213850%_
                                           _%$%tl213666213852%_
                                           _%$%e213667213855%_
                                           _%$%hd213668213858%_
                                           _%$%tl213669213860%_
                                           _%$%e213670213863%_
                                           _%$%hd213671213866%_
                                           _%$%tl213672213868%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%hd213668213858%_))
                                              (let ((_%$%e213682213781%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd213668213858%_))))
                                                (let ((_%$%tl213684213786%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e213682213781%_)))
                                                      (_%$%hd213683213784%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e213682213781%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl213684213786%_))
                                                      (let ((_%__splice214568214569%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl213684213786%_
                        '0))))
                (let ((_%$%tl213687213791%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice214568214569%_ '1)))
                      (_%$%target213685213789%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice214568214569%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl213687213791%_))
                      (_%__match214617214618%_
                       _%$%e213664213847%_
                       _%$%hd213665213850%_
                       _%$%tl213666213852%_
                       _%$%e213667213855%_
                       _%$%hd213668213858%_
                       _%$%tl213669213860%_
                       _%$%e213682213781%_
                       _%$%hd213683213784%_
                       _%$%tl213684213786%_
                       _%__splice214568214569%_
                       _%$%target213685213789%_
                       _%$%tl213687213791%_)
                      (let () (declare (not safe)) (_%$%g213660213712%_)))))
              (let () (declare (not safe)) (_%$%g213660213712%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g213660213712%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd213668213858%_))
                                      (let ((_%$%e213682213781%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd213668213858%_))))
                                        (let ((_%$%tl213684213786%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e213682213781%_)))
                                              (_%$%hd213683213784%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e213682213781%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%$%tl213684213786%_))
                                              (let ((_%__splice214568214569%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl213684213786%_
                                                        '0))))
                                                (let ((_%$%tl213687213791%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice214568214569%_
                                                          '1)))
                                                      (_%$%target213685213789%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice214568214569%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl213687213791%_))
                                                      (_%__match214617214618%_
                                                       _%$%e213664213847%_
                                                       _%$%hd213665213850%_
                                                       _%$%tl213666213852%_
                                                       _%$%e213667213855%_
                                                       _%$%hd213668213858%_
                                                       _%$%tl213669213860%_
                                                       _%$%e213682213781%_
                                                       _%$%hd213683213784%_
                                                       _%$%tl213684213786%_
                                                       _%__splice214568214569%_
                                                       _%$%target213685213789%_
                                                       _%$%tl213687213791%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g213660213712%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g213660213712%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g213660213712%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g213660213712%_)))))
                  (let () (declare (not safe)) (_%$%g213660213712%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self213614%_ _%stx213615%_)
        (let* ((_%$%g213617213627%_
                (lambda (_%$%g213618213624%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g213618213624%_))))
               (_%$%g213616213652%_
                (lambda (_%$%g213618213630%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g213618213630%_))
                      (let ((_%$%e213620213632%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g213618213630%_))))
                        (let ((_%$%hd213621213635%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e213620213632%_)))
                              (_%$%tl213622213637%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e213620213632%_))))
                          (let ((_%decls213650%_
                                 (map gx#syntax->datum _%$%tl213622213637%_)))
                            (let ((__tmp215977
                                   (append _%decls213650%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#current-compile-decls)))))
                              (declare (not safe))
                              (gxc#current-compile-decls __tmp215977))
                            (cons 'declare _%decls213650%_))))
                      (_%$%g213617213627%_ _%$%g213618213630%_)))))
          (_%$%g213616213652%_ _%stx213615%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self213361%_ _%stx213362%_)
        (let* ((_%$%g213364213381%_
                (lambda (_%$%g213365213378%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g213365213378%_))))
               (_%$%g213363213611%_
                (lambda (_%$%g213365213384%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g213365213384%_))
                      (let ((_%$%e213368213386%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g213365213384%_))))
                        (let ((_%$%hd213369213389%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e213368213386%_)))
                              (_%$%tl213370213391%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e213368213386%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl213370213391%_))
                              (let ((_%$%e213371213394%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl213370213391%_))))
                                (let ((_%$%hd213372213397%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e213371213394%_)))
                                      (_%$%tl213373213399%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e213371213394%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl213373213399%_))
                                      (let ((_%$%e213374213402%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl213373213399%_))))
                                        (let ((_%$%hd213375213405%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e213374213402%_)))
                                              (_%$%tl213376213407%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e213374213402%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl213376213407%_))
                                              (let* ((_%__stx214670214671%_
                                                      _%$%hd213372213397%_)
                                                     (_%$%g213428213442%_
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%__stx214670214671%_)))))
                                                (let ((_%__kont214672214673%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self213361%_
                                                            _%$%hd213375213405%_))))
                                                      (_%__kont214674214675%_
                                                       (lambda (_%$%g213434213574%_)
                                                         (let ((_%eid213583%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#generate-runtime-binding-id
                           _%$%g213434213574%_))))
                   (let ((_%$%lambda-expr213584213586%_
                          (gxc#apply-find-lambda-expression
                           _%$%hd213375213405%_)))
                     (if _%$%lambda-expr213584213586%_
                         (let* ((_%lambda-expr213588%_
                                 _%$%lambda-expr213584213586%_)
                                (__tmp215978
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-names))))
                           (declare (not safe))
                           (hash-put!
                            __tmp215978
                            _%lambda-expr213588%_
                            _%eid213583%_))
                         '#f))
                   (cons 'define
                         (cons _%eid213583%_
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self213361%_
                                        _%$%hd213375213405%_))
                                     '()))))))
              (_%__kont214676214677%_
               (lambda ()
                 (let* ((_%tmp213449%_
                         (let ()
                           (declare (not safe))
                           (gxc#generate-runtime-temporary__% '#t)))
                        (_%body213558%_
                         (let _%lp213451%_ ((_%rest213453%_
                                             _%$%hd213372213397%_)
                                            (_%k213454%_ '0)
                                            (_%r213455%_ '()))
                           (let* ((_%__stx214640214641%_ _%rest213453%_)
                                  (_%$%g213460213477%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%__stx214640214641%_)))))
                             (let ((_%__kont214642214643%_
                                    (lambda (_%$%g213462213545%_)
                                      (_%lp213451%_
                                       _%$%g213462213545%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k213454%_ '1))
                                       _%r213455%_)))
                                   (_%__kont214644214645%_
                                    (lambda (_%$%g213467213518%_
                                             _%$%g213468213519%_)
                                      (_%lp213451%_
                                       _%$%g213467213518%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k213454%_ '1))
                                       (cons (cons 'define
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%$%g213468213519%_))
                                                         (cons (gxc#generate-runtime-values-ref
                                                                _%tmp213449%_
                                                                _%k213454%_
                                                                _%$%g213467213518%_)
                                                               '())))
                                             _%r213455%_))))
                                   (_%__kont214646214647%_
                                    (lambda (_%$%g213472213489%_)
                                      (let ((__tmp215979
                                             (cons (cons 'define
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#generate-runtime-binding-id _%$%g213472213489%_))
                       (cons (gxc#generate-runtime-values->list
                              _%tmp213449%_
                              _%k213454%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                        (declare (not safe))
                                        (foldl__0
                                         cons
                                         __tmp215979
                                         _%r213455%_))))
                                   (_%__kont214648214649%_
                                    (lambda () (reverse _%r213455%_))))
                               (let ((_%$%g213458213505%_
                                      (lambda ()
                                        (let ((_%$%g213472213489%_
                                               _%__stx214640214641%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%$%g213472213489%_))
                                              (_%__kont214646214647%_
                                               _%$%g213472213489%_)
                                              (_%__kont214648214649%_))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx214640214641%_))
                                     (let ((_%$%e213463213534%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx214640214641%_))))
                                       (let ((_%$%tl213465213539%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e213463213534%_)))
                                             (_%$%hd213464213537%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e213463213534%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-datum?
                                                _%$%hd213464213537%_))
                                             (let ((_%$%e213466213542%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%hd213464213537%_))))
                                               (if (equal? _%$%e213466213542%_
                                                           '#f)
                                                   (_%__kont214642214643%_
                                                    _%$%tl213465213539%_)
                                                   (_%__kont214644214645%_
                                                    _%$%tl213465213539%_
                                                    _%$%hd213464213537%_)))
                                             (_%__kont214644214645%_
                                              _%$%tl213465213539%_
                                              _%$%hd213464213537%_))))
                                     (_%$%g213458213505%_))))))))
                   (cons 'begin
                         (cons (cons 'define
                                     (cons _%tmp213449%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self213361%_
                                                    _%$%hd213375213405%_))
                                                 '())))
                               (cons (gxc#generate-runtime-check-values
                                      _%tmp213449%_
                                      _%$%hd213372213397%_
                                      _%$%hd213375213405%_)
                                     _%body213558%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%__stx214670214671%_))
                                                      (let ((_%$%e213430213595%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%__stx214670214671%_))))
                (let ((_%$%tl213432213600%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e213430213595%_)))
                      (_%$%hd213431213598%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e213430213595%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%$%hd213431213598%_))
                      (let ((_%$%e213433213603%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%hd213431213598%_))))
                        (if (equal? _%$%e213433213603%_ '#f)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl213432213600%_))
                                (_%__kont214672214673%_)
                                (_%__kont214676214677%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl213432213600%_))
                                (_%__kont214674214675%_ _%$%hd213431213598%_)
                                (_%__kont214676214677%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl213432213600%_))
                          (_%__kont214674214675%_ _%$%hd213431213598%_)
                          (_%__kont214676214677%_)))))
              (_%__kont214676214677%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g213364213381%_
                                               _%$%g213365213384%_))))
                                      (_%$%g213364213381%_
                                       _%$%g213365213384%_))))
                              (_%$%g213364213381%_ _%$%g213365213384%_))))
                      (_%$%g213364213381%_ _%$%g213365213384%_)))))
          (_%$%g213363213611%_ _%stx213362%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals213336%_ _%hd213337%_ _%expr213338%_)
        (let ((_%$e213340%_ (gxc#apply-count-values _%expr213338%_)))
          (if _%$e213340%_
              (let ((_%len213345%_
                     (let ()
                       (declare (not safe))
                       (gx#stx-length _%hd213337%_)))
                    (_%cmp213346%_
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-list? _%hd213337%_))
                         fx=
                         fx>=)))
                (if (or (let () (declare (not safe)) (##fx= _%len213345%_ '0))
                        (_%cmp213346%_ _%$e213340%_ _%len213345%_))
                    '#!void
                    (let ()
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Value count mismatch"
                       _%expr213338%_
                       _%hd213337%_))))
              (let* ((_%len213352%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd213337%_)))
                     (_%cmp213354%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd213337%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg213356%_
                      (let ((__tmp215981
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd213337%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp215980 (number->string _%len213352%_)))
                        (declare (not safe))
                        (##string-append __tmp215981 __tmp215980 '" values")))
                     (_%count213358%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd213337%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len213352%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count213358%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals213336%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp213354%_
                                (cons _%count213358%_
                                      (cons _%len213352%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp213354%_
                                                        (cons _%count213358%_
                                                              (cons _%len213352%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg213356%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count213358%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var213331%_)
        (letrec ((_%generate-inline213333%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var213331%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var213331%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline213333%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline213333%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var213324%_ _%i213325%_ _%rest213326%_)
        (letrec ((_%generate-inline213328%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i213325%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest213326%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var213324%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var213324%_
                                                      (cons '0 '())))
                                          (cons _%var213324%_ '()))))
                        (cons '##values-ref
                              (cons _%var213324%_ (cons _%i213325%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline213328%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline213328%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var213318%_ _%i213319%_)
        (if (let () (declare (not safe)) (##fx= _%i213319%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var213318%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var213318%_ '()))
                                  (cons (cons 'list (cons _%var213318%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var213318%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var213318%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var213318%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i213319%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var213318%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var213318%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var213318%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var213318%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var213318%_ '()))
                                (cons _%i213319%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var213318%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i213319%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self213250%_ _%stx213251%_)
        (let* ((_%$%g213253213270%_
                (lambda (_%$%g213254213267%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g213254213267%_))))
               (_%$%g213252213315%_
                (lambda (_%$%g213254213273%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g213254213273%_))
                      (let ((_%$%e213257213275%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g213254213273%_))))
                        (let ((_%$%hd213258213278%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e213257213275%_)))
                              (_%$%tl213259213280%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e213257213275%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl213259213280%_))
                              (let ((_%$%e213260213283%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl213259213280%_))))
                                (let ((_%$%hd213261213286%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e213260213283%_)))
                                      (_%$%tl213262213288%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e213260213283%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl213262213288%_))
                                      (let ((_%$%e213263213291%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl213262213288%_))))
                                        (let ((_%$%hd213264213294%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e213263213291%_)))
                                              (_%$%tl213265213296%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e213263213291%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl213265213296%_))
                                              (gxc#generate-runtime-lambda-form
                                               _%self213250%_
                                               _%$%hd213261213286%_
                                               _%$%hd213264213294%_)
                                              (_%$%g213253213270%_
                                               _%$%g213254213273%_))))
                                      (_%$%g213253213270%_
                                       _%$%g213254213273%_))))
                              (_%$%g213253213270%_ _%$%g213254213273%_))))
                      (_%$%g213253213270%_ _%$%g213254213273%_)))))
          (_%$%g213252213315%_ _%stx213251%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self213209%_ _%hd213210%_ _%body213211%_)
        (let* ((_%hd213213%_ (gxc#generate-runtime-lambda-head _%hd213210%_))
               (_%body213215%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self213209%_ _%body213211%_)))
               (_%body213247%_
                (let* ((_%$%body213216213224%_ _%body213215%_)
                       (_%$%else213218213232%_
                        (lambda () (cons _%body213215%_ '())))
                       (_%$%K213220213237%_
                        (lambda (_%exprs213235%_) _%exprs213235%_)))
                  (if (pair? _%$%body213216213224%_)
                      (let ((_%$%hd213221213240%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%body213216213224%_)))
                            (_%$%tl213222213242%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%body213216213224%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%$%hd213221213240%_ 'begin))
                            (let ((_%exprs213245%_ _%$%tl213222213242%_))
                              (_%$%K213220213237%_ _%exprs213245%_))
                            (_%$%else213218213232%_)))
                      (_%$%else213218213232%_)))))
          (cons 'lambda (cons _%hd213213%_ _%body213247%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd213207%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd213207%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self211764%_ _%stx211765%_)
        (letrec ((_%dispatch-case?211767%_
                  (lambda (_%hd212445%_ _%body212446%_)
                    (let* ((_%form212448%_
                            (cons _%hd212445%_ (cons _%body212446%_ '())))
                           (_%__stx214702214703%_ _%form212448%_)
                           (_%$%g212453212610%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx214702214703%_)))))
                      (let ((_%__kont214704214705%_
                             (lambda (_%$%g212455213127%_
                                      _%$%g212456213128%_
                                      _%$%g212457213129%_)
                               '#t))
                            (_%__kont214710214711%_
                             (lambda (_%$%g212500212919%_
                                      _%$%g212501212920%_
                                      _%$%g212502212921%_
                                      _%$%g212503212922%_
                                      _%$%g212504212923%_
                                      _%$%g212505212924%_)
                               '#t))
                            (_%__kont214716214717%_
                             (lambda (_%$%g212566212718%_
                                      _%$%g212567212719%_
                                      _%$%g212568212720%_
                                      _%$%g212569212721%_)
                               '#t))
                            (_%__kont214718214719%_ (lambda () '#f)))
                        (let* ((_%__match214843214844%_
                                (lambda (_%$%e212570212622%_
                                         _%$%hd212571212625%_
                                         _%$%tl212572212627%_
                                         _%$%e212573212630%_
                                         _%$%hd212574212633%_
                                         _%$%tl212575212635%_
                                         _%$%e212576212638%_
                                         _%$%hd212577212641%_
                                         _%$%tl212578212643%_
                                         _%$%e212579212646%_
                                         _%$%hd212580212649%_
                                         _%$%tl212581212651%_
                                         _%$%e212582212654%_
                                         _%$%hd212583212657%_
                                         _%$%tl212584212659%_
                                         _%$%e212585212662%_
                                         _%$%hd212586212665%_
                                         _%$%tl212587212667%_
                                         _%$%e212588212670%_
                                         _%$%hd212589212673%_
                                         _%$%tl212590212675%_
                                         _%$%e212591212678%_
                                         _%$%hd212592212681%_
                                         _%$%tl212593212683%_
                                         _%$%e212594212686%_
                                         _%$%hd212595212689%_
                                         _%$%tl212596212691%_
                                         _%$%e212597212694%_
                                         _%$%hd212598212697%_
                                         _%$%tl212599212699%_
                                         _%$%e212600212702%_
                                         _%$%hd212601212705%_
                                         _%$%tl212602212707%_
                                         _%$%e212603212710%_
                                         _%$%hd212604212713%_
                                         _%$%tl212605212715%_)
                                  (let ((_%$%g212566212718%_
                                         _%$%hd212604212713%_)
                                        (_%$%g212567212719%_
                                         _%$%hd212595212689%_)
                                        (_%$%g212568212720%_
                                         _%$%hd212586212665%_)
                                        (_%$%g212569212721%_
                                         _%$%hd212571212625%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%$%g212569212721%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%$%g212568212720%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%$%g212569212721%_
                                                _%$%g212566212718%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%$%g212567212719%_
                                                     _%$%g212569212721%_))))
                                        (_%__kont214716214717%_
                                         _%$%g212566212718%_
                                         _%$%g212567212719%_
                                         _%$%g212568212720%_
                                         _%$%g212569212721%_)
                                        (_%__kont214718214719%_)))))
                               (_%__match214815214816%_
                                (lambda (_%$%e212570212622%_
                                         _%$%hd212571212625%_
                                         _%$%tl212572212627%_
                                         _%$%e212573212630%_
                                         _%$%hd212574212633%_
                                         _%$%tl212575212635%_
                                         _%$%e212576212638%_
                                         _%$%hd212577212641%_
                                         _%$%tl212578212643%_
                                         _%$%e212579212646%_
                                         _%$%hd212580212649%_
                                         _%$%tl212581212651%_
                                         _%$%e212582212654%_
                                         _%$%hd212583212657%_
                                         _%$%tl212584212659%_
                                         _%$%e212585212662%_
                                         _%$%hd212586212665%_
                                         _%$%tl212587212667%_
                                         _%$%e212588212670%_
                                         _%$%hd212589212673%_
                                         _%$%tl212590212675%_
                                         _%$%e212591212678%_
                                         _%$%hd212592212681%_
                                         _%$%tl212593212683%_
                                         _%$%e212594212686%_
                                         _%$%hd212595212689%_
                                         _%$%tl212596212691%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl212590212675%_))
                                      (let ((_%$%e212597212694%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl212590212675%_))))
                                        (let ((_%$%tl212599212699%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e212597212694%_)))
                                              (_%$%hd212598212697%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e212597212694%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%hd212598212697%_))
                                              (let ((_%$%e212600212702%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd212598212697%_))))
                                                (let ((_%$%tl212602212707%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e212600212702%_)))
                                                      (_%$%hd212601212705%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e212600212702%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%$%hd212601212705%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%$%hd212601212705%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl212602212707%_))
                      (let ((_%$%e212603212710%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl212602212707%_))))
                        (let ((_%$%tl212605212715%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e212603212710%_)))
                              (_%$%hd212604212713%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e212603212710%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl212605212715%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl212599212699%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl212575212635%_))
                                      (_%__match214843214844%_
                                       _%$%e212570212622%_
                                       _%$%hd212571212625%_
                                       _%$%tl212572212627%_
                                       _%$%e212573212630%_
                                       _%$%hd212574212633%_
                                       _%$%tl212575212635%_
                                       _%$%e212576212638%_
                                       _%$%hd212577212641%_
                                       _%$%tl212578212643%_
                                       _%$%e212579212646%_
                                       _%$%hd212580212649%_
                                       _%$%tl212581212651%_
                                       _%$%e212582212654%_
                                       _%$%hd212583212657%_
                                       _%$%tl212584212659%_
                                       _%$%e212585212662%_
                                       _%$%hd212586212665%_
                                       _%$%tl212587212667%_
                                       _%$%e212588212670%_
                                       _%$%hd212589212673%_
                                       _%$%tl212590212675%_
                                       _%$%e212591212678%_
                                       _%$%hd212592212681%_
                                       _%$%tl212593212683%_
                                       _%$%e212594212686%_
                                       _%$%hd212595212689%_
                                       _%$%tl212596212691%_
                                       _%$%e212597212694%_
                                       _%$%hd212598212697%_
                                       _%$%tl212599212699%_
                                       _%$%e212600212702%_
                                       _%$%hd212601212705%_
                                       _%$%tl212602212707%_
                                       _%$%e212603212710%_
                                       _%$%hd212604212713%_
                                       _%$%tl212605212715%_)
                                      (_%__kont214718214719%_))
                                  (_%__kont214718214719%_))
                              (_%__kont214718214719%_))))
                      (_%__kont214718214719%_))
                  (_%__kont214718214719%_))
              (_%__kont214718214719%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont214718214719%_))))
                                      (_%__kont214718214719%_))))
                               (_%__match214745214746%_
                                (lambda (_%$%e212506212763%_
                                         _%$%hd212507212766%_
                                         _%$%tl212508212768%_
                                         _%__splice214712214713%_
                                         _%$%target212509212771%_
                                         _%$%tl212511212773%_)
                                  (letrec ((_%$%loop212512212776%_
                                            (lambda (_%$%hd212510212779%_
                                                     _%$%arg212516212781%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd212510212779%_))
                                                  (let ((_%$%e212513212783%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd212510212779%_))))
                                                    (let ((_%$%lp-tl212515212788%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e212513212783%_)))
                                                          (_%$%lp-hd212514212786%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e212513212783%_))))
                                                      (_%$%loop212512212776%_
                                                       _%$%lp-tl212515212788%_
                                                       (cons _%$%lp-hd212514212786%_
                                                             _%$%arg212516212781%_))))
                                                  (let ((_%$%arg212517212791%_
                                                         (reverse _%$%arg212516212781%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl212508212768%_))
                                                        (let ((_%$%e212518212793%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl212508212768%_))))
                  (let ((_%$%tl212520212798%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e212518212793%_)))
                        (_%$%hd212519212796%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e212518212793%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd212519212796%_))
                        (let ((_%$%e212521212801%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd212519212796%_))))
                          (let ((_%$%tl212523212806%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e212521212801%_)))
                                (_%$%hd212522212804%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e212521212801%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd212522212804%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq?
                                       '%#call
                                       _%$%hd212522212804%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl212523212806%_))
                                        (let ((_%$%e212524212809%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl212523212806%_))))
                                          (let ((_%$%tl212526212814%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e212524212809%_)))
                                                (_%$%hd212525212812%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e212524212809%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd212525212812%_))
                                                (let ((_%$%e212527212817%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd212525212812%_))))
                                                  (let ((_%$%tl212529212822%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e212527212817%_)))
                                                        (_%$%hd212528212820%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e212527212817%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd212528212820%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%$%hd212528212820%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl212529212822%_))
                        (let ((_%$%e212530212825%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl212529212822%_))))
                          (let ((_%$%tl212532212830%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e212530212825%_)))
                                (_%$%hd212531212828%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e212530212825%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl212532212830%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl212526212814%_))
                                    (let ((_%$%e212533212833%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%tl212526212814%_))))
                                      (let ((_%$%tl212535212838%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e212533212833%_)))
                                            (_%$%hd212534212836%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e212533212833%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%hd212534212836%_))
                                            (let ((_%$%e212536212841%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%hd212534212836%_))))
                                              (let ((_%$%tl212538212846%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e212536212841%_)))
                                                    (_%$%hd212537212844%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e212536212841%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%$%hd212537212844%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%$%hd212537212844%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl212538212846%_))
                                                            (let ((_%$%e212539212849%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl212538212846%_))))
                      (let ((_%$%tl212541212854%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e212539212849%_)))
                            (_%$%hd212540212852%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e212539212849%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl212541212854%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%$%tl212535212838%_))
                                (if (let ((__tmp215982
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%$%tl212535212838%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp215982 '1))
                                    (let ((_%__splice214714214715%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%$%tl212535212838%_
                                              '1))))
                                      (let ((_%$%tl212544212859%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice214714214715%_
                                                '1)))
                                            (_%$%target212542212857%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice214714214715%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl212544212859%_))
                                            (let ((_%$%e212551212862%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl212544212859%_))))
                                              (let ((_%$%tl212553212867%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e212551212862%_)))
                                                    (_%$%hd212552212865%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e212551212862%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%hd212552212865%_))
                                                    (let ((_%$%e212554212870%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd212552212865%_))))
                                                      (let ((_%$%tl212556212875%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e212554212870%_)))
                    (_%$%hd212555212873%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e212554212870%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%$%hd212555212873%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%$%hd212555212873%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl212556212875%_))
                            (let ((_%$%e212557212878%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl212556212875%_))))
                              (let ((_%$%tl212559212883%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e212557212878%_)))
                                    (_%$%hd212558212881%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e212557212878%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl212559212883%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl212553212867%_))
                                        (letrec ((_%$%loop212545212886%_
                                                  (lambda (_%$%hd212543212889%_
                                                           _%$%xarg212549212891%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd212543212889%_))
                                                        (let ((_%$%e212546212893%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd212543212889%_))))
                  (let ((_%$%lp-tl212548212898%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e212546212893%_)))
                        (_%$%lp-hd212547212896%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e212546212893%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd212547212896%_))
                        (let ((_%$%e212560212901%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%lp-hd212547212896%_))))
                          (let ((_%$%tl212562212906%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e212560212901%_)))
                                (_%$%hd212561212904%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e212560212901%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd212561212904%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%$%hd212561212904%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl212562212906%_))
                                        (let ((_%$%e212563212909%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl212562212906%_))))
                                          (let ((_%$%tl212565212914%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e212563212909%_)))
                                                (_%$%hd212564212912%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e212563212909%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl212565212914%_))
                                                (_%$%loop212545212886%_
                                                 _%$%lp-tl212548212898%_
                                                 (cons _%$%hd212564212912%_
                                                       _%$%xarg212549212891%_))
                                                (_%__match214815214816%_
                                                 _%$%e212506212763%_
                                                 _%$%hd212507212766%_
                                                 _%$%tl212508212768%_
                                                 _%$%e212518212793%_
                                                 _%$%hd212519212796%_
                                                 _%$%tl212520212798%_
                                                 _%$%e212521212801%_
                                                 _%$%hd212522212804%_
                                                 _%$%tl212523212806%_
                                                 _%$%e212524212809%_
                                                 _%$%hd212525212812%_
                                                 _%$%tl212526212814%_
                                                 _%$%e212527212817%_
                                                 _%$%hd212528212820%_
                                                 _%$%tl212529212822%_
                                                 _%$%e212530212825%_
                                                 _%$%hd212531212828%_
                                                 _%$%tl212532212830%_
                                                 _%$%e212533212833%_
                                                 _%$%hd212534212836%_
                                                 _%$%tl212535212838%_
                                                 _%$%e212536212841%_
                                                 _%$%hd212537212844%_
                                                 _%$%tl212538212846%_
                                                 _%$%e212539212849%_
                                                 _%$%hd212540212852%_
                                                 _%$%tl212541212854%_))))
                                        (_%__match214815214816%_
                                         _%$%e212506212763%_
                                         _%$%hd212507212766%_
                                         _%$%tl212508212768%_
                                         _%$%e212518212793%_
                                         _%$%hd212519212796%_
                                         _%$%tl212520212798%_
                                         _%$%e212521212801%_
                                         _%$%hd212522212804%_
                                         _%$%tl212523212806%_
                                         _%$%e212524212809%_
                                         _%$%hd212525212812%_
                                         _%$%tl212526212814%_
                                         _%$%e212527212817%_
                                         _%$%hd212528212820%_
                                         _%$%tl212529212822%_
                                         _%$%e212530212825%_
                                         _%$%hd212531212828%_
                                         _%$%tl212532212830%_
                                         _%$%e212533212833%_
                                         _%$%hd212534212836%_
                                         _%$%tl212535212838%_
                                         _%$%e212536212841%_
                                         _%$%hd212537212844%_
                                         _%$%tl212538212846%_
                                         _%$%e212539212849%_
                                         _%$%hd212540212852%_
                                         _%$%tl212541212854%_))
                                    (_%__match214815214816%_
                                     _%$%e212506212763%_
                                     _%$%hd212507212766%_
                                     _%$%tl212508212768%_
                                     _%$%e212518212793%_
                                     _%$%hd212519212796%_
                                     _%$%tl212520212798%_
                                     _%$%e212521212801%_
                                     _%$%hd212522212804%_
                                     _%$%tl212523212806%_
                                     _%$%e212524212809%_
                                     _%$%hd212525212812%_
                                     _%$%tl212526212814%_
                                     _%$%e212527212817%_
                                     _%$%hd212528212820%_
                                     _%$%tl212529212822%_
                                     _%$%e212530212825%_
                                     _%$%hd212531212828%_
                                     _%$%tl212532212830%_
                                     _%$%e212533212833%_
                                     _%$%hd212534212836%_
                                     _%$%tl212535212838%_
                                     _%$%e212536212841%_
                                     _%$%hd212537212844%_
                                     _%$%tl212538212846%_
                                     _%$%e212539212849%_
                                     _%$%hd212540212852%_
                                     _%$%tl212541212854%_))
                                (_%__match214815214816%_
                                 _%$%e212506212763%_
                                 _%$%hd212507212766%_
                                 _%$%tl212508212768%_
                                 _%$%e212518212793%_
                                 _%$%hd212519212796%_
                                 _%$%tl212520212798%_
                                 _%$%e212521212801%_
                                 _%$%hd212522212804%_
                                 _%$%tl212523212806%_
                                 _%$%e212524212809%_
                                 _%$%hd212525212812%_
                                 _%$%tl212526212814%_
                                 _%$%e212527212817%_
                                 _%$%hd212528212820%_
                                 _%$%tl212529212822%_
                                 _%$%e212530212825%_
                                 _%$%hd212531212828%_
                                 _%$%tl212532212830%_
                                 _%$%e212533212833%_
                                 _%$%hd212534212836%_
                                 _%$%tl212535212838%_
                                 _%$%e212536212841%_
                                 _%$%hd212537212844%_
                                 _%$%tl212538212846%_
                                 _%$%e212539212849%_
                                 _%$%hd212540212852%_
                                 _%$%tl212541212854%_))))
                        (_%__match214815214816%_
                         _%$%e212506212763%_
                         _%$%hd212507212766%_
                         _%$%tl212508212768%_
                         _%$%e212518212793%_
                         _%$%hd212519212796%_
                         _%$%tl212520212798%_
                         _%$%e212521212801%_
                         _%$%hd212522212804%_
                         _%$%tl212523212806%_
                         _%$%e212524212809%_
                         _%$%hd212525212812%_
                         _%$%tl212526212814%_
                         _%$%e212527212817%_
                         _%$%hd212528212820%_
                         _%$%tl212529212822%_
                         _%$%e212530212825%_
                         _%$%hd212531212828%_
                         _%$%tl212532212830%_
                         _%$%e212533212833%_
                         _%$%hd212534212836%_
                         _%$%tl212535212838%_
                         _%$%e212536212841%_
                         _%$%hd212537212844%_
                         _%$%tl212538212846%_
                         _%$%e212539212849%_
                         _%$%hd212540212852%_
                         _%$%tl212541212854%_))))
                (let ((_%$%xarg212550212917%_
                       (reverse _%$%xarg212549212891%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl212520212798%_))
                      (let ((_%$%g212500212919%_ _%$%hd212558212881%_)
                            (_%$%g212501212920%_ _%$%xarg212550212917%_)
                            (_%$%g212502212921%_ _%$%hd212540212852%_)
                            (_%$%g212503212922%_ _%$%hd212531212828%_)
                            (_%$%g212504212923%_ _%$%tl212511212773%_)
                            (_%$%g212505212924%_ _%$%arg212517212791%_))
                        (if (and (let ((__tmp215983
                                        (let ((__tmp215984
                                               (lambda (_%$%g212967212970%_
                                                        _%$%g212968212972%_)
                                                 (cons _%$%g212967212970%_
                                                       _%$%g212968212972%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp215984
                                           '()
                                           _%$%g212505212924%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp215983))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%$%g212504212923%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%$%g212503212922%_
                                    'apply))
                                 (let ((__tmp215987
                                        (length (let ((__tmp215988
                                                       (lambda (_%$%g212974212977%_
                                                                _%$%g212975212979%_)
                                                         (cons _%$%g212974212977%_
                                                               _%$%g212975212979%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp215988
                                                   '()
                                                   _%$%g212505212924%_))))
                                       (__tmp215985
                                        (length (let ((__tmp215986
                                                       (lambda (_%$%g212981212984%_
                                                                _%$%g212982212986%_)
                                                         (cons _%$%g212981212984%_
                                                               _%$%g212982212986%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp215986
                                                   '()
                                                   _%$%g212501212920%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp215987 __tmp215985))
                                 (let ((__tmp215991
                                        (let ((__tmp215992
                                               (lambda (_%$%g212988212991%_
                                                        _%$%g212989212993%_)
                                                 (cons _%$%g212988212991%_
                                                       _%$%g212989212993%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp215992
                                           '()
                                           _%$%g212505212924%_)))
                                       (__tmp215989
                                        (let ((__tmp215990
                                               (lambda (_%$%g212995212998%_
                                                        _%$%g212996213000%_)
                                                 (cons _%$%g212995212998%_
                                                       _%$%g212996213000%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp215990
                                           '()
                                           _%$%g212501212920%_))))
                                   (declare (not safe))
                                   (andmap__1
                                    gx#free-identifier=?
                                    __tmp215991
                                    __tmp215989))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g212504212923%_
                                    _%$%g212500212919%_))
                                 (not (let ((__tmp215996
                                             (lambda (_%$%g213002213004%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%$%g213002213004%_
                                                  _%$%g212502212921%_))))
                                            (__tmp215993
                                             (let ((__tmp215995
                                                    (lambda (_%$%g213006213009%_
                                                             _%$%g213007213011%_)
                                                      (cons _%$%g213006213009%_
                                                            _%$%g213007213011%_)))
                                                   (__tmp215994
                                                    (cons _%$%g212504212923%_
                                                          '())))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp215995
                                                __tmp215994
                                                _%$%g212505212924%_))))
                                        (declare (not safe))
                                        (__find __tmp215996 __tmp215993))))
                            (_%__kont214710214711%_
                             _%$%g212500212919%_
                             _%$%g212501212920%_
                             _%$%g212502212921%_
                             _%$%g212503212922%_
                             _%$%g212504212923%_
                             _%$%g212505212924%_)
                            (_%__match214815214816%_
                             _%$%e212506212763%_
                             _%$%hd212507212766%_
                             _%$%tl212508212768%_
                             _%$%e212518212793%_
                             _%$%hd212519212796%_
                             _%$%tl212520212798%_
                             _%$%e212521212801%_
                             _%$%hd212522212804%_
                             _%$%tl212523212806%_
                             _%$%e212524212809%_
                             _%$%hd212525212812%_
                             _%$%tl212526212814%_
                             _%$%e212527212817%_
                             _%$%hd212528212820%_
                             _%$%tl212529212822%_
                             _%$%e212530212825%_
                             _%$%hd212531212828%_
                             _%$%tl212532212830%_
                             _%$%e212533212833%_
                             _%$%hd212534212836%_
                             _%$%tl212535212838%_
                             _%$%e212536212841%_
                             _%$%hd212537212844%_
                             _%$%tl212538212846%_
                             _%$%e212539212849%_
                             _%$%hd212540212852%_
                             _%$%tl212541212854%_)))
                      (_%__match214815214816%_
                       _%$%e212506212763%_
                       _%$%hd212507212766%_
                       _%$%tl212508212768%_
                       _%$%e212518212793%_
                       _%$%hd212519212796%_
                       _%$%tl212520212798%_
                       _%$%e212521212801%_
                       _%$%hd212522212804%_
                       _%$%tl212523212806%_
                       _%$%e212524212809%_
                       _%$%hd212525212812%_
                       _%$%tl212526212814%_
                       _%$%e212527212817%_
                       _%$%hd212528212820%_
                       _%$%tl212529212822%_
                       _%$%e212530212825%_
                       _%$%hd212531212828%_
                       _%$%tl212532212830%_
                       _%$%e212533212833%_
                       _%$%hd212534212836%_
                       _%$%tl212535212838%_
                       _%$%e212536212841%_
                       _%$%hd212537212844%_
                       _%$%tl212538212846%_
                       _%$%e212539212849%_
                       _%$%hd212540212852%_
                       _%$%tl212541212854%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop212545212886%_
                                           _%$%target212542212857%_
                                           '()))
                                        (_%__match214815214816%_
                                         _%$%e212506212763%_
                                         _%$%hd212507212766%_
                                         _%$%tl212508212768%_
                                         _%$%e212518212793%_
                                         _%$%hd212519212796%_
                                         _%$%tl212520212798%_
                                         _%$%e212521212801%_
                                         _%$%hd212522212804%_
                                         _%$%tl212523212806%_
                                         _%$%e212524212809%_
                                         _%$%hd212525212812%_
                                         _%$%tl212526212814%_
                                         _%$%e212527212817%_
                                         _%$%hd212528212820%_
                                         _%$%tl212529212822%_
                                         _%$%e212530212825%_
                                         _%$%hd212531212828%_
                                         _%$%tl212532212830%_
                                         _%$%e212533212833%_
                                         _%$%hd212534212836%_
                                         _%$%tl212535212838%_
                                         _%$%e212536212841%_
                                         _%$%hd212537212844%_
                                         _%$%tl212538212846%_
                                         _%$%e212539212849%_
                                         _%$%hd212540212852%_
                                         _%$%tl212541212854%_))
                                    (_%__match214815214816%_
                                     _%$%e212506212763%_
                                     _%$%hd212507212766%_
                                     _%$%tl212508212768%_
                                     _%$%e212518212793%_
                                     _%$%hd212519212796%_
                                     _%$%tl212520212798%_
                                     _%$%e212521212801%_
                                     _%$%hd212522212804%_
                                     _%$%tl212523212806%_
                                     _%$%e212524212809%_
                                     _%$%hd212525212812%_
                                     _%$%tl212526212814%_
                                     _%$%e212527212817%_
                                     _%$%hd212528212820%_
                                     _%$%tl212529212822%_
                                     _%$%e212530212825%_
                                     _%$%hd212531212828%_
                                     _%$%tl212532212830%_
                                     _%$%e212533212833%_
                                     _%$%hd212534212836%_
                                     _%$%tl212535212838%_
                                     _%$%e212536212841%_
                                     _%$%hd212537212844%_
                                     _%$%tl212538212846%_
                                     _%$%e212539212849%_
                                     _%$%hd212540212852%_
                                     _%$%tl212541212854%_))))
                            (_%__match214815214816%_
                             _%$%e212506212763%_
                             _%$%hd212507212766%_
                             _%$%tl212508212768%_
                             _%$%e212518212793%_
                             _%$%hd212519212796%_
                             _%$%tl212520212798%_
                             _%$%e212521212801%_
                             _%$%hd212522212804%_
                             _%$%tl212523212806%_
                             _%$%e212524212809%_
                             _%$%hd212525212812%_
                             _%$%tl212526212814%_
                             _%$%e212527212817%_
                             _%$%hd212528212820%_
                             _%$%tl212529212822%_
                             _%$%e212530212825%_
                             _%$%hd212531212828%_
                             _%$%tl212532212830%_
                             _%$%e212533212833%_
                             _%$%hd212534212836%_
                             _%$%tl212535212838%_
                             _%$%e212536212841%_
                             _%$%hd212537212844%_
                             _%$%tl212538212846%_
                             _%$%e212539212849%_
                             _%$%hd212540212852%_
                             _%$%tl212541212854%_))
                        (_%__match214815214816%_
                         _%$%e212506212763%_
                         _%$%hd212507212766%_
                         _%$%tl212508212768%_
                         _%$%e212518212793%_
                         _%$%hd212519212796%_
                         _%$%tl212520212798%_
                         _%$%e212521212801%_
                         _%$%hd212522212804%_
                         _%$%tl212523212806%_
                         _%$%e212524212809%_
                         _%$%hd212525212812%_
                         _%$%tl212526212814%_
                         _%$%e212527212817%_
                         _%$%hd212528212820%_
                         _%$%tl212529212822%_
                         _%$%e212530212825%_
                         _%$%hd212531212828%_
                         _%$%tl212532212830%_
                         _%$%e212533212833%_
                         _%$%hd212534212836%_
                         _%$%tl212535212838%_
                         _%$%e212536212841%_
                         _%$%hd212537212844%_
                         _%$%tl212538212846%_
                         _%$%e212539212849%_
                         _%$%hd212540212852%_
                         _%$%tl212541212854%_))
                    (_%__match214815214816%_
                     _%$%e212506212763%_
                     _%$%hd212507212766%_
                     _%$%tl212508212768%_
                     _%$%e212518212793%_
                     _%$%hd212519212796%_
                     _%$%tl212520212798%_
                     _%$%e212521212801%_
                     _%$%hd212522212804%_
                     _%$%tl212523212806%_
                     _%$%e212524212809%_
                     _%$%hd212525212812%_
                     _%$%tl212526212814%_
                     _%$%e212527212817%_
                     _%$%hd212528212820%_
                     _%$%tl212529212822%_
                     _%$%e212530212825%_
                     _%$%hd212531212828%_
                     _%$%tl212532212830%_
                     _%$%e212533212833%_
                     _%$%hd212534212836%_
                     _%$%tl212535212838%_
                     _%$%e212536212841%_
                     _%$%hd212537212844%_
                     _%$%tl212538212846%_
                     _%$%e212539212849%_
                     _%$%hd212540212852%_
                     _%$%tl212541212854%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match214815214816%_
                                                     _%$%e212506212763%_
                                                     _%$%hd212507212766%_
                                                     _%$%tl212508212768%_
                                                     _%$%e212518212793%_
                                                     _%$%hd212519212796%_
                                                     _%$%tl212520212798%_
                                                     _%$%e212521212801%_
                                                     _%$%hd212522212804%_
                                                     _%$%tl212523212806%_
                                                     _%$%e212524212809%_
                                                     _%$%hd212525212812%_
                                                     _%$%tl212526212814%_
                                                     _%$%e212527212817%_
                                                     _%$%hd212528212820%_
                                                     _%$%tl212529212822%_
                                                     _%$%e212530212825%_
                                                     _%$%hd212531212828%_
                                                     _%$%tl212532212830%_
                                                     _%$%e212533212833%_
                                                     _%$%hd212534212836%_
                                                     _%$%tl212535212838%_
                                                     _%$%e212536212841%_
                                                     _%$%hd212537212844%_
                                                     _%$%tl212538212846%_
                                                     _%$%e212539212849%_
                                                     _%$%hd212540212852%_
                                                     _%$%tl212541212854%_))))
                                            (_%__match214815214816%_
                                             _%$%e212506212763%_
                                             _%$%hd212507212766%_
                                             _%$%tl212508212768%_
                                             _%$%e212518212793%_
                                             _%$%hd212519212796%_
                                             _%$%tl212520212798%_
                                             _%$%e212521212801%_
                                             _%$%hd212522212804%_
                                             _%$%tl212523212806%_
                                             _%$%e212524212809%_
                                             _%$%hd212525212812%_
                                             _%$%tl212526212814%_
                                             _%$%e212527212817%_
                                             _%$%hd212528212820%_
                                             _%$%tl212529212822%_
                                             _%$%e212530212825%_
                                             _%$%hd212531212828%_
                                             _%$%tl212532212830%_
                                             _%$%e212533212833%_
                                             _%$%hd212534212836%_
                                             _%$%tl212535212838%_
                                             _%$%e212536212841%_
                                             _%$%hd212537212844%_
                                             _%$%tl212538212846%_
                                             _%$%e212539212849%_
                                             _%$%hd212540212852%_
                                             _%$%tl212541212854%_))))
                                    (_%__match214815214816%_
                                     _%$%e212506212763%_
                                     _%$%hd212507212766%_
                                     _%$%tl212508212768%_
                                     _%$%e212518212793%_
                                     _%$%hd212519212796%_
                                     _%$%tl212520212798%_
                                     _%$%e212521212801%_
                                     _%$%hd212522212804%_
                                     _%$%tl212523212806%_
                                     _%$%e212524212809%_
                                     _%$%hd212525212812%_
                                     _%$%tl212526212814%_
                                     _%$%e212527212817%_
                                     _%$%hd212528212820%_
                                     _%$%tl212529212822%_
                                     _%$%e212530212825%_
                                     _%$%hd212531212828%_
                                     _%$%tl212532212830%_
                                     _%$%e212533212833%_
                                     _%$%hd212534212836%_
                                     _%$%tl212535212838%_
                                     _%$%e212536212841%_
                                     _%$%hd212537212844%_
                                     _%$%tl212538212846%_
                                     _%$%e212539212849%_
                                     _%$%hd212540212852%_
                                     _%$%tl212541212854%_))
                                (_%__match214815214816%_
                                 _%$%e212506212763%_
                                 _%$%hd212507212766%_
                                 _%$%tl212508212768%_
                                 _%$%e212518212793%_
                                 _%$%hd212519212796%_
                                 _%$%tl212520212798%_
                                 _%$%e212521212801%_
                                 _%$%hd212522212804%_
                                 _%$%tl212523212806%_
                                 _%$%e212524212809%_
                                 _%$%hd212525212812%_
                                 _%$%tl212526212814%_
                                 _%$%e212527212817%_
                                 _%$%hd212528212820%_
                                 _%$%tl212529212822%_
                                 _%$%e212530212825%_
                                 _%$%hd212531212828%_
                                 _%$%tl212532212830%_
                                 _%$%e212533212833%_
                                 _%$%hd212534212836%_
                                 _%$%tl212535212838%_
                                 _%$%e212536212841%_
                                 _%$%hd212537212844%_
                                 _%$%tl212538212846%_
                                 _%$%e212539212849%_
                                 _%$%hd212540212852%_
                                 _%$%tl212541212854%_))
                            (_%__kont214718214719%_))))
                    (_%__kont214718214719%_))
                (_%__kont214718214719%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont214718214719%_))))
                                            (_%__kont214718214719%_))))
                                    (_%__kont214718214719%_))
                                (_%__kont214718214719%_))))
                        (_%__kont214718214719%_))
                    (_%__kont214718214719%_))
                (_%__kont214718214719%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont214718214719%_))))
                                        (_%__kont214718214719%_))
                                    (_%__kont214718214719%_))
                                (_%__kont214718214719%_))))
                        (_%__kont214718214719%_))))
                (_%__kont214718214719%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%loop212512212776%_
                                     _%$%target212509212771%_
                                     '()))))
                               (_%__match214733214734%_
                                (lambda (_%$%e212458213019%_
                                         _%$%hd212459213022%_
                                         _%$%tl212460213024%_
                                         _%__splice214706214707%_
                                         _%$%target212461213027%_
                                         _%$%tl212463213029%_)
                                  (letrec ((_%$%loop212464213032%_
                                            (lambda (_%$%hd212462213035%_
                                                     _%$%arg212468213037%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd212462213035%_))
                                                  (let ((_%$%e212465213039%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd212462213035%_))))
                                                    (let ((_%$%lp-tl212467213044%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e212465213039%_)))
                                                          (_%$%lp-hd212466213042%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e212465213039%_))))
                                                      (_%$%loop212464213032%_
                                                       _%$%lp-tl212467213044%_
                                                       (cons _%$%lp-hd212466213042%_
                                                             _%$%arg212468213037%_))))
                                                  (let ((_%$%arg212469213047%_
                                                         (reverse _%$%arg212468213037%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl212460213024%_))
                                                        (let ((_%$%e212470213049%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl212460213024%_))))
                  (let ((_%$%tl212472213054%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e212470213049%_)))
                        (_%$%hd212471213052%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e212470213049%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd212471213052%_))
                        (let ((_%$%e212473213057%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd212471213052%_))))
                          (let ((_%$%tl212475213062%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e212473213057%_)))
                                (_%$%hd212474213060%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e212473213057%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd212474213060%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq?
                                       '%#call
                                       _%$%hd212474213060%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl212475213062%_))
                                        (let ((_%$%e212476213065%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl212475213062%_))))
                                          (let ((_%$%tl212478213070%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e212476213065%_)))
                                                (_%$%hd212477213068%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e212476213065%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd212477213068%_))
                                                (let ((_%$%e212479213073%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd212477213068%_))))
                                                  (let ((_%$%tl212481213078%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e212479213073%_)))
                                                        (_%$%hd212480213076%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e212479213073%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd212480213076%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%$%hd212480213076%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl212481213078%_))
                        (let ((_%$%e212482213081%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl212481213078%_))))
                          (let ((_%$%tl212484213086%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e212482213081%_)))
                                (_%$%hd212483213084%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e212482213081%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl212484213086%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%$%tl212478213070%_))
                                    (let ((_%__splice214708214709%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%$%tl212478213070%_
                                              '0))))
                                      (let ((_%$%tl212487213091%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice214708214709%_
                                                '1)))
                                            (_%$%target212485213089%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice214708214709%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl212487213091%_))
                                            (letrec ((_%$%loop212488213094%_
                                                      (lambda (_%$%hd212486213097%_
                                                               _%$%xarg212492213099%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%hd212486213097%_))
                                                            (let ((_%$%e212489213101%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%hd212486213097%_))))
                      (let ((_%$%lp-tl212491213106%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e212489213101%_)))
                            (_%$%lp-hd212490213104%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e212489213101%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%lp-hd212490213104%_))
                            (let ((_%$%e212494213109%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%lp-hd212490213104%_))))
                              (let ((_%$%tl212496213114%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e212494213109%_)))
                                    (_%$%hd212495213112%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e212494213109%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd212495213112%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%$%hd212495213112%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl212496213114%_))
                                            (let ((_%$%e212497213117%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl212496213114%_))))
                                              (let ((_%$%tl212499213122%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e212497213117%_)))
                                                    (_%$%hd212498213120%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e212497213117%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl212499213122%_))
                                                    (_%$%loop212488213094%_
                                                     _%$%lp-tl212491213106%_
                                                     (cons _%$%hd212498213120%_
                                                           _%$%xarg212492213099%_))
                                                    (_%__match214745214746%_
                                                     _%$%e212458213019%_
                                                     _%$%hd212459213022%_
                                                     _%$%tl212460213024%_
                                                     _%__splice214706214707%_
                                                     _%$%target212461213027%_
                                                     _%$%tl212463213029%_))))
                                            (_%__match214745214746%_
                                             _%$%e212458213019%_
                                             _%$%hd212459213022%_
                                             _%$%tl212460213024%_
                                             _%__splice214706214707%_
                                             _%$%target212461213027%_
                                             _%$%tl212463213029%_))
                                        (_%__match214745214746%_
                                         _%$%e212458213019%_
                                         _%$%hd212459213022%_
                                         _%$%tl212460213024%_
                                         _%__splice214706214707%_
                                         _%$%target212461213027%_
                                         _%$%tl212463213029%_))
                                    (_%__match214745214746%_
                                     _%$%e212458213019%_
                                     _%$%hd212459213022%_
                                     _%$%tl212460213024%_
                                     _%__splice214706214707%_
                                     _%$%target212461213027%_
                                     _%$%tl212463213029%_))))
                            (_%__match214745214746%_
                             _%$%e212458213019%_
                             _%$%hd212459213022%_
                             _%$%tl212460213024%_
                             _%__splice214706214707%_
                             _%$%target212461213027%_
                             _%$%tl212463213029%_))))
                    (let ((_%$%xarg212493213125%_
                           (reverse _%$%xarg212492213099%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl212472213054%_))
                          (let ((_%$%g212455213127%_ _%$%xarg212493213125%_)
                                (_%$%g212456213128%_ _%$%hd212483213084%_)
                                (_%$%g212457213129%_ _%$%arg212469213047%_))
                            (if (and (let ((__tmp215997
                                            (let ((__tmp215998
                                                   (lambda (_%$%g213157213160%_
                                                            _%$%g213158213162%_)
                                                     (cons _%$%g213157213160%_
                                                           _%$%g213158213162%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp215998
                                               '()
                                               _%$%g212457213129%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp215997))
                                     (let ((__tmp216001
                                            (length (let ((__tmp216002
                                                           (lambda (_%$%g213164213167%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g213165213169%_)
                     (cons _%$%g213164213167%_ _%$%g213165213169%_))))
              (declare (not safe))
              (foldr__0 __tmp216002 '() _%$%g212457213129%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp215999
                                            (length (let ((__tmp216000
                                                           (lambda (_%$%g213171213174%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g213172213176%_)
                     (cons _%$%g213171213174%_ _%$%g213172213176%_))))
              (declare (not safe))
              (foldr__0 __tmp216000 '() _%$%g212455213127%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp216001 __tmp215999))
                                     (let ((__tmp216005
                                            (let ((__tmp216006
                                                   (lambda (_%$%g213178213181%_
                                                            _%$%g213179213183%_)
                                                     (cons _%$%g213178213181%_
                                                           _%$%g213179213183%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp216006
                                               '()
                                               _%$%g212457213129%_)))
                                           (__tmp216003
                                            (let ((__tmp216004
                                                   (lambda (_%$%g213185213188%_
                                                            _%$%g213186213190%_)
                                                     (cons _%$%g213185213188%_
                                                           _%$%g213186213190%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp216004
                                               '()
                                               _%$%g212455213127%_))))
                                       (declare (not safe))
                                       (andmap__1
                                        gx#free-identifier=?
                                        __tmp216005
                                        __tmp216003))
                                     (not (let ((__tmp216009
                                                 (lambda (_%$%g213192213194%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%$%g213192213194%_
                                                      _%$%g212456213128%_))))
                                                (__tmp216007
                                                 (let ((__tmp216008
                                                        (lambda (_%$%g213196213199%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g213197213201%_)
                  (cons _%$%g213196213199%_ _%$%g213197213201%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp216008
                                                    '()
                                                    _%$%g212457213129%_))))
                                            (declare (not safe))
                                            (__find __tmp216009 __tmp216007))))
                                (_%__kont214704214705%_
                                 _%$%g212455213127%_
                                 _%$%g212456213128%_
                                 _%$%g212457213129%_)
                                (_%__match214745214746%_
                                 _%$%e212458213019%_
                                 _%$%hd212459213022%_
                                 _%$%tl212460213024%_
                                 _%__splice214706214707%_
                                 _%$%target212461213027%_
                                 _%$%tl212463213029%_)))
                          (_%__match214745214746%_
                           _%$%e212458213019%_
                           _%$%hd212459213022%_
                           _%$%tl212460213024%_
                           _%__splice214706214707%_
                           _%$%target212461213027%_
                           _%$%tl212463213029%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop212488213094%_
                                               _%$%target212485213089%_
                                               '()))
                                            (_%__match214745214746%_
                                             _%$%e212458213019%_
                                             _%$%hd212459213022%_
                                             _%$%tl212460213024%_
                                             _%__splice214706214707%_
                                             _%$%target212461213027%_
                                             _%$%tl212463213029%_))))
                                    (_%__match214745214746%_
                                     _%$%e212458213019%_
                                     _%$%hd212459213022%_
                                     _%$%tl212460213024%_
                                     _%__splice214706214707%_
                                     _%$%target212461213027%_
                                     _%$%tl212463213029%_))
                                (_%__match214745214746%_
                                 _%$%e212458213019%_
                                 _%$%hd212459213022%_
                                 _%$%tl212460213024%_
                                 _%__splice214706214707%_
                                 _%$%target212461213027%_
                                 _%$%tl212463213029%_))))
                        (_%__match214745214746%_
                         _%$%e212458213019%_
                         _%$%hd212459213022%_
                         _%$%tl212460213024%_
                         _%__splice214706214707%_
                         _%$%target212461213027%_
                         _%$%tl212463213029%_))
                    (_%__match214745214746%_
                     _%$%e212458213019%_
                     _%$%hd212459213022%_
                     _%$%tl212460213024%_
                     _%__splice214706214707%_
                     _%$%target212461213027%_
                     _%$%tl212463213029%_))
                (_%__match214745214746%_
                 _%$%e212458213019%_
                 _%$%hd212459213022%_
                 _%$%tl212460213024%_
                 _%__splice214706214707%_
                 _%$%target212461213027%_
                 _%$%tl212463213029%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match214745214746%_
                                                 _%$%e212458213019%_
                                                 _%$%hd212459213022%_
                                                 _%$%tl212460213024%_
                                                 _%__splice214706214707%_
                                                 _%$%target212461213027%_
                                                 _%$%tl212463213029%_))))
                                        (_%__match214745214746%_
                                         _%$%e212458213019%_
                                         _%$%hd212459213022%_
                                         _%$%tl212460213024%_
                                         _%__splice214706214707%_
                                         _%$%target212461213027%_
                                         _%$%tl212463213029%_))
                                    (_%__match214745214746%_
                                     _%$%e212458213019%_
                                     _%$%hd212459213022%_
                                     _%$%tl212460213024%_
                                     _%__splice214706214707%_
                                     _%$%target212461213027%_
                                     _%$%tl212463213029%_))
                                (_%__match214745214746%_
                                 _%$%e212458213019%_
                                 _%$%hd212459213022%_
                                 _%$%tl212460213024%_
                                 _%__splice214706214707%_
                                 _%$%target212461213027%_
                                 _%$%tl212463213029%_))))
                        (_%__match214745214746%_
                         _%$%e212458213019%_
                         _%$%hd212459213022%_
                         _%$%tl212460213024%_
                         _%__splice214706214707%_
                         _%$%target212461213027%_
                         _%$%tl212463213029%_))))
                (_%__match214745214746%_
                 _%$%e212458213019%_
                 _%$%hd212459213022%_
                 _%$%tl212460213024%_
                 _%__splice214706214707%_
                 _%$%target212461213027%_
                 _%$%tl212463213029%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%loop212464213032%_
                                     _%$%target212461213027%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx214702214703%_))
                              (let ((_%$%e212458213019%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx214702214703%_))))
                                (let ((_%$%tl212460213024%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e212458213019%_)))
                                      (_%$%hd212459213022%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e212458213019%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd212459213022%_))
                                      (let ((_%__splice214706214707%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%hd212459213022%_
                                                '0))))
                                        (let ((_%$%tl212463213029%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice214706214707%_
                                                  '1)))
                                              (_%$%target212461213027%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice214706214707%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl212463213029%_))
                                              (_%__match214733214734%_
                                               _%$%e212458213019%_
                                               _%$%hd212459213022%_
                                               _%$%tl212460213024%_
                                               _%__splice214706214707%_
                                               _%$%target212461213027%_
                                               _%$%tl212463213029%_)
                                              (_%__match214745214746%_
                                               _%$%e212458213019%_
                                               _%$%hd212459213022%_
                                               _%$%tl212460213024%_
                                               _%__splice214706214707%_
                                               _%$%target212461213027%_
                                               _%$%tl212463213029%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl212460213024%_))
                                          (let ((_%$%e212573212630%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl212460213024%_))))
                                            (let ((_%$%tl212575212635%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e212573212630%_)))
                                                  (_%$%hd212574212633%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e212573212630%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd212574212633%_))
                                                  (let ((_%$%e212576212638%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd212574212633%_))))
                                                    (let ((_%$%tl212578212643%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e212576212638%_)))
                                                          (_%$%hd212577212641%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e212576212638%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd212577212641%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%$%hd212577212641%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl212578212643%_))
                          (let ((_%$%e212579212646%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl212578212643%_))))
                            (let ((_%$%tl212581212651%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e212579212646%_)))
                                  (_%$%hd212580212649%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e212579212646%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd212580212649%_))
                                  (let ((_%$%e212582212654%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd212580212649%_))))
                                    (let ((_%$%tl212584212659%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e212582212654%_)))
                                          (_%$%hd212583212657%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e212582212654%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd212583212657%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd212583212657%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl212584212659%_))
                                                  (let ((_%$%e212585212662%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl212584212659%_))))
                                                    (let ((_%$%tl212587212667%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e212585212662%_)))
                                                          (_%$%hd212586212665%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e212585212662%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl212587212667%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl212581212651%_))
                      (let ((_%$%e212588212670%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl212581212651%_))))
                        (let ((_%$%tl212590212675%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e212588212670%_)))
                              (_%$%hd212589212673%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e212588212670%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd212589212673%_))
                              (let ((_%$%e212591212678%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd212589212673%_))))
                                (let ((_%$%tl212593212683%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e212591212678%_)))
                                      (_%$%hd212592212681%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e212591212678%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd212592212681%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd212592212681%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl212593212683%_))
                                              (let ((_%$%e212594212686%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl212593212683%_))))
                                                (let ((_%$%tl212596212691%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e212594212686%_)))
                                                      (_%$%hd212595212689%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e212594212686%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl212596212691%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl212590212675%_))
                                                          (let ((_%$%e212597212694%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl212590212675%_))))
                    (let ((_%$%tl212599212699%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e212597212694%_)))
                          (_%$%hd212598212697%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e212597212694%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd212598212697%_))
                          (let ((_%$%e212600212702%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd212598212697%_))))
                            (let ((_%$%tl212602212707%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e212600212702%_)))
                                  (_%$%hd212601212705%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e212600212702%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%$%hd212601212705%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#ref
                                         _%$%hd212601212705%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl212602212707%_))
                                          (let ((_%$%e212603212710%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl212602212707%_))))
                                            (let ((_%$%tl212605212715%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e212603212710%_)))
                                                  (_%$%hd212604212713%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e212603212710%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl212605212715%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl212599212699%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl212575212635%_))
                                                          (_%__match214843214844%_
                                                           _%$%e212458213019%_
                                                           _%$%hd212459213022%_
                                                           _%$%tl212460213024%_
                                                           _%$%e212573212630%_
                                                           _%$%hd212574212633%_
                                                           _%$%tl212575212635%_
                                                           _%$%e212576212638%_
                                                           _%$%hd212577212641%_
                                                           _%$%tl212578212643%_
                                                           _%$%e212579212646%_
                                                           _%$%hd212580212649%_
                                                           _%$%tl212581212651%_
                                                           _%$%e212582212654%_
                                                           _%$%hd212583212657%_
                                                           _%$%tl212584212659%_
                                                           _%$%e212585212662%_
                                                           _%$%hd212586212665%_
                                                           _%$%tl212587212667%_
                                                           _%$%e212588212670%_
                                                           _%$%hd212589212673%_
                                                           _%$%tl212590212675%_
                                                           _%$%e212591212678%_
                                                           _%$%hd212592212681%_
                                                           _%$%tl212593212683%_
                                                           _%$%e212594212686%_
                                                           _%$%hd212595212689%_
                                                           _%$%tl212596212691%_
                                                           _%$%e212597212694%_
                                                           _%$%hd212598212697%_
                                                           _%$%tl212599212699%_
                                                           _%$%e212600212702%_
                                                           _%$%hd212601212705%_
                                                           _%$%tl212602212707%_
                                                           _%$%e212603212710%_
                                                           _%$%hd212604212713%_
                                                           _%$%tl212605212715%_)
                                                          (_%__kont214718214719%_))
                                                      (_%__kont214718214719%_))
                                                  (_%__kont214718214719%_))))
                                          (_%__kont214718214719%_))
                                      (_%__kont214718214719%_))
                                  (_%__kont214718214719%_))))
                          (_%__kont214718214719%_))))
                  (_%__kont214718214719%_))
              (_%__kont214718214719%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont214718214719%_))
                                          (_%__kont214718214719%_))
                                      (_%__kont214718214719%_))))
                              (_%__kont214718214719%_))))
                      (_%__kont214718214719%_))
                  (_%__kont214718214719%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont214718214719%_))
                                              (_%__kont214718214719%_))
                                          (_%__kont214718214719%_))))
                                  (_%__kont214718214719%_))))
                          (_%__kont214718214719%_))
                      (_%__kont214718214719%_))
                  (_%__kont214718214719%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont214718214719%_))))
                                          (_%__kont214718214719%_)))))
                              (_%__kont214718214719%_)))))))
                 (_%dispatch-case-e211768%_
                  (lambda (_%hd211915%_ _%body211916%_)
                    (let* ((_%form211918%_
                            (cons _%hd211915%_ (cons _%body211916%_ '())))
                           (_%__stx214846214847%_ _%form211918%_)
                           (_%$%g211922212046%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx214846214847%_)))))
                      (let ((_%__kont214848214849%_
                             (lambda (_%$%g211924212411%_
                                      _%$%g211925212412%_
                                      _%$%g211926212413%_)
                               (let ((__tmp216010
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%$%g211925212412%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self211764%_
                                  __tmp216010))))
                            (_%__kont214854214855%_
                             (lambda (_%$%g211969212263%_
                                      _%$%g211970212264%_
                                      _%$%g211971212265%_
                                      _%$%g211972212266%_)
                               (let ((__tmp216011
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%$%g211969212263%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self211764%_
                                  __tmp216011))))
                            (_%__kont214858214859%_
                             (lambda (_%$%g212009212131%_
                                      _%$%g212010212132%_
                                      _%$%g212011212133%_)
                               (let ((__tmp216012
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%$%g212009212131%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self211764%_
                                  __tmp216012)))))
                        (let* ((_%__match214955214956%_
                                (lambda (_%$%e212012212051%_
                                         _%$%hd212013212054%_
                                         _%$%tl212014212056%_
                                         _%$%e212015212059%_
                                         _%$%hd212016212062%_
                                         _%$%tl212017212064%_
                                         _%$%e212018212067%_
                                         _%$%hd212019212070%_
                                         _%$%tl212020212072%_
                                         _%$%e212021212075%_
                                         _%$%hd212022212078%_
                                         _%$%tl212023212080%_
                                         _%$%e212024212083%_
                                         _%$%hd212025212086%_
                                         _%$%tl212026212088%_
                                         _%$%e212027212091%_
                                         _%$%hd212028212094%_
                                         _%$%tl212029212096%_
                                         _%$%e212030212099%_
                                         _%$%hd212031212102%_
                                         _%$%tl212032212104%_
                                         _%$%e212033212107%_
                                         _%$%hd212034212110%_
                                         _%$%tl212035212112%_
                                         _%$%e212036212115%_
                                         _%$%hd212037212118%_
                                         _%$%tl212038212120%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl212032212104%_))
                                      (let ((_%$%e212039212123%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl212032212104%_))))
                                        (let ((_%$%tl212041212128%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e212039212123%_)))
                                              (_%$%hd212040212126%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e212039212123%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl212041212128%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl212017212064%_))
                                                  (_%__kont214858214859%_
                                                   _%$%hd212037212118%_
                                                   _%$%hd212028212094%_
                                                   _%$%hd212013212054%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g211922212046%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g211922212046%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g211922212046%_)))))
                               (_%__match214885214886%_
                                (lambda (_%$%e211973212169%_
                                         _%$%hd211974212172%_
                                         _%$%tl211975212174%_
                                         _%__splice214856214857%_
                                         _%$%target211976212177%_
                                         _%$%tl211978212179%_)
                                  (letrec ((_%$%loop211979212182%_
                                            (lambda (_%$%hd211977212185%_
                                                     _%$%arg211983212187%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd211977212185%_))
                                                  (let ((_%$%e211980212189%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd211977212185%_))))
                                                    (let ((_%$%lp-tl211982212194%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e211980212189%_)))
                                                          (_%$%lp-hd211981212192%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e211980212189%_))))
                                                      (_%$%loop211979212182%_
                                                       _%$%lp-tl211982212194%_
                                                       (cons _%$%lp-hd211981212192%_
                                                             _%$%arg211983212187%_))))
                                                  (let ((_%$%arg211984212197%_
                                                         (reverse _%$%arg211983212187%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl211975212174%_))
                                                        (let ((_%$%e211985212199%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl211975212174%_))))
                  (let ((_%$%tl211987212204%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e211985212199%_)))
                        (_%$%hd211986212202%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e211985212199%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd211986212202%_))
                        (let ((_%$%e211988212207%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd211986212202%_))))
                          (let ((_%$%tl211990212212%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e211988212207%_)))
                                (_%$%hd211989212210%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e211988212207%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd211989212210%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq?
                                       '%#call
                                       _%$%hd211989212210%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl211990212212%_))
                                        (let ((_%$%e211991212215%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl211990212212%_))))
                                          (let ((_%$%tl211993212220%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e211991212215%_)))
                                                (_%$%hd211992212218%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e211991212215%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd211992212218%_))
                                                (let ((_%$%e211994212223%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd211992212218%_))))
                                                  (let ((_%$%tl211996212228%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e211994212223%_)))
                                                        (_%$%hd211995212226%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e211994212223%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd211995212226%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%$%hd211995212226%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl211996212228%_))
                        (let ((_%$%e211997212231%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl211996212228%_))))
                          (let ((_%$%tl211999212236%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e211997212231%_)))
                                (_%$%hd211998212234%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e211997212231%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl211999212236%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl211993212220%_))
                                    (let ((_%$%e212000212239%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%tl211993212220%_))))
                                      (let ((_%$%tl212002212244%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e212000212239%_)))
                                            (_%$%hd212001212242%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e212000212239%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%hd212001212242%_))
                                            (let ((_%$%e212003212247%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%hd212001212242%_))))
                                              (let ((_%$%tl212005212252%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e212003212247%_)))
                                                    (_%$%hd212004212250%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e212003212247%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%$%hd212004212250%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%$%hd212004212250%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl212005212252%_))
                                                            (let ((_%$%e212006212255%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl212005212252%_))))
                      (let ((_%$%tl212008212260%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e212006212255%_)))
                            (_%$%hd212007212258%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e212006212255%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl212008212260%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl211987212204%_))
                                (_%__kont214854214855%_
                                 _%$%hd212007212258%_
                                 _%$%hd211998212234%_
                                 _%$%tl211978212179%_
                                 _%$%arg211984212197%_)
                                (_%__match214955214956%_
                                 _%$%e211973212169%_
                                 _%$%hd211974212172%_
                                 _%$%tl211975212174%_
                                 _%$%e211985212199%_
                                 _%$%hd211986212202%_
                                 _%$%tl211987212204%_
                                 _%$%e211988212207%_
                                 _%$%hd211989212210%_
                                 _%$%tl211990212212%_
                                 _%$%e211991212215%_
                                 _%$%hd211992212218%_
                                 _%$%tl211993212220%_
                                 _%$%e211994212223%_
                                 _%$%hd211995212226%_
                                 _%$%tl211996212228%_
                                 _%$%e211997212231%_
                                 _%$%hd211998212234%_
                                 _%$%tl211999212236%_
                                 _%$%e212000212239%_
                                 _%$%hd212001212242%_
                                 _%$%tl212002212244%_
                                 _%$%e212003212247%_
                                 _%$%hd212004212250%_
                                 _%$%tl212005212252%_
                                 _%$%e212006212255%_
                                 _%$%hd212007212258%_
                                 _%$%tl212008212260%_))
                            (let ()
                              (declare (not safe))
                              (_%$%g211922212046%_)))))
                    (let () (declare (not safe)) (_%$%g211922212046%_)))
                (let () (declare (not safe)) (_%$%g211922212046%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g211922212046%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g211922212046%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g211922212046%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g211922212046%_)))))
                        (let () (declare (not safe)) (_%$%g211922212046%_)))
                    (let () (declare (not safe)) (_%$%g211922212046%_)))
                (let () (declare (not safe)) (_%$%g211922212046%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g211922212046%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g211922212046%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g211922212046%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g211922212046%_)))))
                        (let () (declare (not safe)) (_%$%g211922212046%_)))))
                (let () (declare (not safe)) (_%$%g211922212046%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%loop211979212182%_
                                     _%$%target211976212177%_
                                     '()))))
                               (_%__match214873214874%_
                                (lambda (_%$%e211927212303%_
                                         _%$%hd211928212306%_
                                         _%$%tl211929212308%_
                                         _%__splice214850214851%_
                                         _%$%target211930212311%_
                                         _%$%tl211932212313%_)
                                  (letrec ((_%$%loop211933212316%_
                                            (lambda (_%$%hd211931212319%_
                                                     _%$%arg211937212321%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd211931212319%_))
                                                  (let ((_%$%e211934212323%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd211931212319%_))))
                                                    (let ((_%$%lp-tl211936212328%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e211934212323%_)))
                                                          (_%$%lp-hd211935212326%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e211934212323%_))))
                                                      (_%$%loop211933212316%_
                                                       _%$%lp-tl211936212328%_
                                                       (cons _%$%lp-hd211935212326%_
                                                             _%$%arg211937212321%_))))
                                                  (let ((_%$%arg211938212331%_
                                                         (reverse _%$%arg211937212321%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl211929212308%_))
                                                        (let ((_%$%e211939212333%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl211929212308%_))))
                  (let ((_%$%tl211941212338%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e211939212333%_)))
                        (_%$%hd211940212336%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e211939212333%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd211940212336%_))
                        (let ((_%$%e211942212341%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd211940212336%_))))
                          (let ((_%$%tl211944212346%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e211942212341%_)))
                                (_%$%hd211943212344%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e211942212341%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd211943212344%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq?
                                       '%#call
                                       _%$%hd211943212344%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl211944212346%_))
                                        (let ((_%$%e211945212349%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl211944212346%_))))
                                          (let ((_%$%tl211947212354%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e211945212349%_)))
                                                (_%$%hd211946212352%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e211945212349%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd211946212352%_))
                                                (let ((_%$%e211948212357%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd211946212352%_))))
                                                  (let ((_%$%tl211950212362%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e211948212357%_)))
                                                        (_%$%hd211949212360%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e211948212357%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd211949212360%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%$%hd211949212360%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl211950212362%_))
                        (let ((_%$%e211951212365%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl211950212362%_))))
                          (let ((_%$%tl211953212370%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e211951212365%_)))
                                (_%$%hd211952212368%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e211951212365%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl211953212370%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%$%tl211947212354%_))
                                    (let ((_%__splice214852214853%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%$%tl211947212354%_
                                              '0))))
                                      (let ((_%$%tl211956212375%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice214852214853%_
                                                '1)))
                                            (_%$%target211954212373%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice214852214853%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl211956212375%_))
                                            (letrec ((_%$%loop211957212378%_
                                                      (lambda (_%$%hd211955212381%_
                                                               _%$%xarg211961212383%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%hd211955212381%_))
                                                            (let ((_%$%e211958212385%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%hd211955212381%_))))
                      (let ((_%$%lp-tl211960212390%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e211958212385%_)))
                            (_%$%lp-hd211959212388%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e211958212385%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%lp-hd211959212388%_))
                            (let ((_%$%e211963212393%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%lp-hd211959212388%_))))
                              (let ((_%$%tl211965212398%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e211963212393%_)))
                                    (_%$%hd211964212396%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e211963212393%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd211964212396%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%$%hd211964212396%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl211965212398%_))
                                            (let ((_%$%e211966212401%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl211965212398%_))))
                                              (let ((_%$%tl211968212406%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e211966212401%_)))
                                                    (_%$%hd211967212404%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e211966212401%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl211968212406%_))
                                                    (_%$%loop211957212378%_
                                                     _%$%lp-tl211960212390%_
                                                     (cons _%$%hd211967212404%_
                                                           _%$%xarg211961212383%_))
                                                    (_%__match214885214886%_
                                                     _%$%e211927212303%_
                                                     _%$%hd211928212306%_
                                                     _%$%tl211929212308%_
                                                     _%__splice214850214851%_
                                                     _%$%target211930212311%_
                                                     _%$%tl211932212313%_))))
                                            (_%__match214885214886%_
                                             _%$%e211927212303%_
                                             _%$%hd211928212306%_
                                             _%$%tl211929212308%_
                                             _%__splice214850214851%_
                                             _%$%target211930212311%_
                                             _%$%tl211932212313%_))
                                        (_%__match214885214886%_
                                         _%$%e211927212303%_
                                         _%$%hd211928212306%_
                                         _%$%tl211929212308%_
                                         _%__splice214850214851%_
                                         _%$%target211930212311%_
                                         _%$%tl211932212313%_))
                                    (_%__match214885214886%_
                                     _%$%e211927212303%_
                                     _%$%hd211928212306%_
                                     _%$%tl211929212308%_
                                     _%__splice214850214851%_
                                     _%$%target211930212311%_
                                     _%$%tl211932212313%_))))
                            (_%__match214885214886%_
                             _%$%e211927212303%_
                             _%$%hd211928212306%_
                             _%$%tl211929212308%_
                             _%__splice214850214851%_
                             _%$%target211930212311%_
                             _%$%tl211932212313%_))))
                    (let ((_%$%xarg211962212409%_
                           (reverse _%$%xarg211961212383%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl211941212338%_))
                          (_%__kont214848214849%_
                           _%$%xarg211962212409%_
                           _%$%hd211952212368%_
                           _%$%arg211938212331%_)
                          (_%__match214885214886%_
                           _%$%e211927212303%_
                           _%$%hd211928212306%_
                           _%$%tl211929212308%_
                           _%__splice214850214851%_
                           _%$%target211930212311%_
                           _%$%tl211932212313%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop211957212378%_
                                               _%$%target211954212373%_
                                               '()))
                                            (_%__match214885214886%_
                                             _%$%e211927212303%_
                                             _%$%hd211928212306%_
                                             _%$%tl211929212308%_
                                             _%__splice214850214851%_
                                             _%$%target211930212311%_
                                             _%$%tl211932212313%_))))
                                    (_%__match214885214886%_
                                     _%$%e211927212303%_
                                     _%$%hd211928212306%_
                                     _%$%tl211929212308%_
                                     _%__splice214850214851%_
                                     _%$%target211930212311%_
                                     _%$%tl211932212313%_))
                                (_%__match214885214886%_
                                 _%$%e211927212303%_
                                 _%$%hd211928212306%_
                                 _%$%tl211929212308%_
                                 _%__splice214850214851%_
                                 _%$%target211930212311%_
                                 _%$%tl211932212313%_))))
                        (_%__match214885214886%_
                         _%$%e211927212303%_
                         _%$%hd211928212306%_
                         _%$%tl211929212308%_
                         _%__splice214850214851%_
                         _%$%target211930212311%_
                         _%$%tl211932212313%_))
                    (_%__match214885214886%_
                     _%$%e211927212303%_
                     _%$%hd211928212306%_
                     _%$%tl211929212308%_
                     _%__splice214850214851%_
                     _%$%target211930212311%_
                     _%$%tl211932212313%_))
                (_%__match214885214886%_
                 _%$%e211927212303%_
                 _%$%hd211928212306%_
                 _%$%tl211929212308%_
                 _%__splice214850214851%_
                 _%$%target211930212311%_
                 _%$%tl211932212313%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match214885214886%_
                                                 _%$%e211927212303%_
                                                 _%$%hd211928212306%_
                                                 _%$%tl211929212308%_
                                                 _%__splice214850214851%_
                                                 _%$%target211930212311%_
                                                 _%$%tl211932212313%_))))
                                        (_%__match214885214886%_
                                         _%$%e211927212303%_
                                         _%$%hd211928212306%_
                                         _%$%tl211929212308%_
                                         _%__splice214850214851%_
                                         _%$%target211930212311%_
                                         _%$%tl211932212313%_))
                                    (_%__match214885214886%_
                                     _%$%e211927212303%_
                                     _%$%hd211928212306%_
                                     _%$%tl211929212308%_
                                     _%__splice214850214851%_
                                     _%$%target211930212311%_
                                     _%$%tl211932212313%_))
                                (_%__match214885214886%_
                                 _%$%e211927212303%_
                                 _%$%hd211928212306%_
                                 _%$%tl211929212308%_
                                 _%__splice214850214851%_
                                 _%$%target211930212311%_
                                 _%$%tl211932212313%_))))
                        (_%__match214885214886%_
                         _%$%e211927212303%_
                         _%$%hd211928212306%_
                         _%$%tl211929212308%_
                         _%__splice214850214851%_
                         _%$%target211930212311%_
                         _%$%tl211932212313%_))))
                (_%__match214885214886%_
                 _%$%e211927212303%_
                 _%$%hd211928212306%_
                 _%$%tl211929212308%_
                 _%__splice214850214851%_
                 _%$%target211930212311%_
                 _%$%tl211932212313%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%loop211933212316%_
                                     _%$%target211930212311%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx214846214847%_))
                              (let ((_%$%e211927212303%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx214846214847%_))))
                                (let ((_%$%tl211929212308%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e211927212303%_)))
                                      (_%$%hd211928212306%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e211927212303%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd211928212306%_))
                                      (let ((_%__splice214850214851%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%hd211928212306%_
                                                '0))))
                                        (let ((_%$%tl211932212313%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice214850214851%_
                                                  '1)))
                                              (_%$%target211930212311%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice214850214851%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl211932212313%_))
                                              (_%__match214873214874%_
                                               _%$%e211927212303%_
                                               _%$%hd211928212306%_
                                               _%$%tl211929212308%_
                                               _%__splice214850214851%_
                                               _%$%target211930212311%_
                                               _%$%tl211932212313%_)
                                              (_%__match214885214886%_
                                               _%$%e211927212303%_
                                               _%$%hd211928212306%_
                                               _%$%tl211929212308%_
                                               _%__splice214850214851%_
                                               _%$%target211930212311%_
                                               _%$%tl211932212313%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl211929212308%_))
                                          (let ((_%$%e212015212059%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl211929212308%_))))
                                            (let ((_%$%tl212017212064%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e212015212059%_)))
                                                  (_%$%hd212016212062%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e212015212059%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd212016212062%_))
                                                  (let ((_%$%e212018212067%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd212016212062%_))))
                                                    (let ((_%$%tl212020212072%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e212018212067%_)))
                                                          (_%$%hd212019212070%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e212018212067%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd212019212070%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%$%hd212019212070%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl212020212072%_))
                          (let ((_%$%e212021212075%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl212020212072%_))))
                            (let ((_%$%tl212023212080%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e212021212075%_)))
                                  (_%$%hd212022212078%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e212021212075%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd212022212078%_))
                                  (let ((_%$%e212024212083%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd212022212078%_))))
                                    (let ((_%$%tl212026212088%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e212024212083%_)))
                                          (_%$%hd212025212086%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e212024212083%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd212025212086%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd212025212086%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl212026212088%_))
                                                  (let ((_%$%e212027212091%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl212026212088%_))))
                                                    (let ((_%$%tl212029212096%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e212027212091%_)))
                                                          (_%$%hd212028212094%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e212027212091%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl212029212096%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl212023212080%_))
                      (let ((_%$%e212030212099%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl212023212080%_))))
                        (let ((_%$%tl212032212104%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e212030212099%_)))
                              (_%$%hd212031212102%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e212030212099%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd212031212102%_))
                              (let ((_%$%e212033212107%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd212031212102%_))))
                                (let ((_%$%tl212035212112%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e212033212107%_)))
                                      (_%$%hd212034212110%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e212033212107%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd212034212110%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd212034212110%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl212035212112%_))
                                              (let ((_%$%e212036212115%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl212035212112%_))))
                                                (let ((_%$%tl212038212120%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e212036212115%_)))
                                                      (_%$%hd212037212118%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e212036212115%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl212038212120%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl212032212104%_))
                                                          (let ((_%$%e212039212123%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl212032212104%_))))
                    (let ((_%$%tl212041212128%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e212039212123%_)))
                          (_%$%hd212040212126%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e212039212123%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl212041212128%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl212017212064%_))
                              (_%__kont214858214859%_
                               _%$%hd212037212118%_
                               _%$%hd212028212094%_
                               _%$%hd211928212306%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g211922212046%_)))
                          (let ()
                            (declare (not safe))
                            (_%$%g211922212046%_)))))
                  (let () (declare (not safe)) (_%$%g211922212046%_)))
              (let () (declare (not safe)) (_%$%g211922212046%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g211922212046%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g211922212046%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g211922212046%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g211922212046%_)))))
                      (let () (declare (not safe)) (_%$%g211922212046%_)))
                  (let () (declare (not safe)) (_%$%g211922212046%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g211922212046%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g211922212046%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g211922212046%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g211922212046%_)))))
                          (let () (declare (not safe)) (_%$%g211922212046%_)))
                      (let () (declare (not safe)) (_%$%g211922212046%_)))
                  (let () (declare (not safe)) (_%$%g211922212046%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g211922212046%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g211922212046%_))))))
                              (let ()
                                (declare (not safe))
                                (_%$%g211922212046%_))))))))
                 (_%generate1211769%_
                  (lambda (_%args211900%_
                           _%arglen211901%_
                           _%hd211902%_
                           _%body211903%_)
                    (let* ((_%len211905%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd211902%_)))
                           (_%condition211910%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd211902%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen211901%_
                                                (cons _%len211905%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen211901%_ (cons _%len211905%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len211905%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen211901%_
                                                    (cons _%len211905%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen211901%_ (cons _%len211905%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch211912%_
                            (if (_%dispatch-case?211767%_
                                 _%hd211902%_
                                 _%body211903%_)
                                (_%dispatch-case-e211768%_
                                 _%hd211902%_
                                 _%body211903%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self211764%_
                                 _%hd211902%_
                                 _%body211903%_))))
                      (cons _%condition211910%_
                            (cons (cons 'apply
                                        (cons _%dispatch211912%_
                                              (cons _%args211900%_ '())))
                                  '()))))))
          (let* ((_%$%g211771211799%_
                  (lambda (_%$%g211772211796%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g211772211796%_))))
                 (_%$%g211770211897%_
                  (lambda (_%$%g211772211802%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g211772211802%_))
                        (let ((_%$%e211775211804%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g211772211802%_))))
                          (let ((_%$%hd211776211807%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e211775211804%_)))
                                (_%$%tl211777211809%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e211775211804%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%$%tl211777211809%_))
                                (let ((_g216013_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%$%tl211777211809%_
                                          '0))))
                                  (begin
                                    (let ((_g216014_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g216013_)
                                                 (##values-length _g216013_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g216014_ 2)))
                                          (error "Context expects 2 values"
                                                 _g216014_)))
                                    (let ((_%$%target211778211812%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g216013_ 0)))
                                          (_%$%tl211780211814%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g216013_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl211780211814%_))
                                          (letrec ((_%$%loop211781211817%_
                                                    (lambda (_%$%hd211779211820%_
                                                             _%$%body211785211822%_
                                                             _%$%hd211786211823%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%hd211779211820%_))
                                                          (let ((_%$%e211782211825%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%hd211779211820%_))))
                    (let ((_%$%lp-hd211783211828%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e211782211825%_)))
                          (_%$%lp-tl211784211830%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e211782211825%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%lp-hd211783211828%_))
                          (let ((_%$%e211789211833%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%lp-hd211783211828%_))))
                            (let ((_%$%hd211790211836%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e211789211833%_)))
                                  (_%$%tl211791211838%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e211789211833%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl211791211838%_))
                                  (let ((_%$%e211792211841%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl211791211838%_))))
                                    (let ((_%$%hd211793211844%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e211792211841%_)))
                                          (_%$%tl211794211846%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e211792211841%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl211794211846%_))
                                          (_%$%loop211781211817%_
                                           _%$%lp-tl211784211830%_
                                           (cons _%$%hd211793211844%_
                                                 _%$%body211785211822%_)
                                           (cons _%$%hd211790211836%_
                                                 _%$%hd211786211823%_))
                                          (_%$%g211771211799%_
                                           _%$%g211772211802%_))))
                                  (_%$%g211771211799%_ _%$%g211772211802%_))))
                          (_%$%g211771211799%_ _%$%g211772211802%_))))
                  (let ((_%$%body211787211849%_
                         (reverse _%$%body211785211822%_))
                        (_%$%hd211788211850%_ (reverse _%$%hd211786211823%_)))
                    (let ((_%args211872%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__0)))
                          (_%arglen211873%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__0)))
                          (_%name211874%_
                           (let ((_%$e211869%_
                                  (let ((__tmp216015
                                         (let ()
                                           (declare (not safe))
                                           (gxc#current-compile-runtime-names))))
                                    (declare (not safe))
                                    (hash-get __tmp216015 _%stx211765%_))))
                             (if _%$e211869%_
                                 _%$e211869%_
                                 ''case-lambda-dispatch))))
                      (cons 'lambda
                            (cons _%args211872%_
                                  (cons (cons 'let
                                              (cons (cons (cons _%arglen211873%_
                                                                (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '##length (cons _%args211872%_ '()))
                                  (cons 'let
                                        (cons '()
                                              (cons '(declare (not safe))
                                                    (cons (cons '##length
                                                                (cons _%args211872%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '()))
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons 'cond
                                                                (let ((__tmp216017
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (map (lambda (_%$%g211875211878%_
                                             _%$%g211876211880%_)
                                      (_%generate1211769%_
                                       _%args211872%_
                                       _%arglen211873%_
                                       _%$%g211875211878%_
                                       _%$%g211876211880%_))
                                    (let ((__tmp216018
                                           (lambda (_%$%g211882211885%_
                                                    _%$%g211883211887%_)
                                             (cons _%$%g211882211885%_
                                                   _%$%g211883211887%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp216018
                                       '()
                                       _%$%hd211788211850%_))
                                    (let ((__tmp216019
                                           (lambda (_%$%g211889211892%_
                                                    _%$%g211890211894%_)
                                             (cons _%$%g211889211892%_
                                                   _%$%g211890211894%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp216019
                                       '()
                                       _%$%body211787211849%_))))
                              (__tmp216016
                               (cons (cons 'else
                                           (cons (cons '##raise-wrong-number-of-arguments-exception
                                                       (cons _%name211874%_
                                                             (cons _%args211872%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())))
                          (declare (not safe))
                          (##append __tmp216017 __tmp216016)))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%loop211781211817%_
                                             _%$%target211778211812%_
                                             '()
                                             '()))
                                          (_%$%g211771211799%_
                                           _%$%g211772211802%_)))))
                                (_%$%g211771211799%_ _%$%g211772211802%_))))
                        (_%$%g211771211799%_ _%$%g211772211802%_)))))
            (_%$%g211770211897%_ _%stx211765%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self211001%_ _%stx211002%_ _%compiled-body?211003%_)
        (letrec ((_%generate-simple211005%_
                  (lambda (_%hd211749%_ _%body211750%_)
                    (_%coalesce-boolean211006%_
                     (_%simplify-let211007%_
                      (gxc#generate-runtime-simple-let
                       _%self211001%_
                       'let
                       _%hd211749%_
                       _%body211750%_
                       _%compiled-body?211003%_)))))
                 (_%coalesce-boolean211006%_
                  (lambda (_%code211610%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%$%code211611211637%_ _%code211610%_)
                               (_%$%else211613211645%_
                                (lambda () _%code211610%_))
                               (_%$%K211615211682%_
                                (lambda (_%expr2211648%_
                                         _%expr1211649%_
                                         _%id211650%_)
                                  (let* ((_%$%expr2211651211659%_
                                          _%expr2211648%_)
                                         (_%$%else211653211667%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1211649%_
                                                        (cons _%expr2211648%_
                                                              '())))))
                                         (_%$%K211655211672%_
                                          (lambda (_%exprs211670%_)
                                            (cons 'or
                                                  (cons _%expr1211649%_
                                                        _%exprs211670%_)))))
                                    (if (pair? _%$%expr2211651211659%_)
                                        (let ((_%$%hd211656211675%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%expr2211651211659%_)))
                                              (_%$%tl211657211677%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%expr2211651211659%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%$%hd211656211675%_
                                                       'or))
                                              (let ((_%exprs211680%_
                                                     _%$%tl211657211677%_))
                                                (_%$%K211655211672%_
                                                 _%exprs211680%_))
                                              (_%$%else211653211667%_)))
                                        (_%$%else211653211667%_))))))
                          (if (pair? _%$%code211611211637%_)
                              (let ((_%$%hd211616211685%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%code211611211637%_)))
                                    (_%$%tl211617211687%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%code211611211637%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%$%hd211616211685%_ 'let))
                                    (if (pair? _%$%tl211617211687%_)
                                        (let ((_%$%hd211618211690%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%tl211617211687%_)))
                                              (_%$%tl211619211692%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%tl211617211687%_))))
                                          (if (pair? _%$%hd211618211690%_)
                                              (let ((_%$%hd211630211695%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%hd211618211690%_)))
                                                    (_%$%tl211631211697%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%hd211618211690%_))))
                                                (if (pair? _%$%hd211630211695%_)
                                                    (let ((_%$%hd211632211700%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%hd211630211695%_)))
                                                          (_%$%tl211633211702%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%hd211630211695%_))))
                                                      (let ((_%id211705%_
                                                             _%$%hd211632211700%_))
                                                        (if (pair? _%$%tl211633211702%_)
                                                            (let ((_%$%hd211634211707%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%$%tl211633211702%_)))
                          (_%$%tl211635211709%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%tl211633211702%_))))
                      (let ((_%expr1211712%_ _%$%hd211634211707%_))
                        (if (null? _%$%tl211635211709%_)
                            (if (null? _%$%tl211631211697%_)
                                (if (pair? _%$%tl211619211692%_)
                                    (let ((_%$%hd211620211714%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%tl211619211692%_)))
                                          (_%$%tl211621211716%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%tl211619211692%_))))
                                      (if (pair? _%$%hd211620211714%_)
                                          (let ((_%$%hd211622211719%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%hd211620211714%_)))
                                                (_%$%tl211623211721%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%hd211620211714%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%$%hd211622211719%_
                                                         'if))
                                                (if (pair? _%$%tl211623211721%_)
                                                    (let ((_%$%hd211624211724%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%tl211623211721%_)))
                                                          (_%$%tl211625211726%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%tl211623211721%_))))
                                                      (if (eq? _%$%hd211624211724%_
                                                               _%id211705%_)
                                                          (if (pair? _%$%tl211625211726%_)
                                                              (let ((_%$%hd211626211733%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##car _%$%tl211625211726%_)))
                            (_%$%tl211627211735%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%tl211625211726%_))))
                        (if (eq? _%$%hd211626211733%_ _%id211705%_)
                            (if (pair? _%$%tl211627211735%_)
                                (let ((_%$%hd211628211742%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%tl211627211735%_)))
                                      (_%$%tl211629211744%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%tl211627211735%_))))
                                  (let ((_%expr2211747%_ _%$%hd211628211742%_))
                                    (if (null? _%$%tl211629211744%_)
                                        (if (null? _%$%tl211621211716%_)
                                            (_%$%K211615211682%_
                                             _%expr2211747%_
                                             _%expr1211712%_
                                             _%id211705%_)
                                            (_%$%else211613211645%_))
                                        (_%$%else211613211645%_))))
                                (_%$%else211613211645%_))
                            (_%$%else211613211645%_)))
                      (_%$%else211613211645%_))
                  (_%$%else211613211645%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%else211613211645%_))
                                                (_%$%else211613211645%_)))
                                          (_%$%else211613211645%_)))
                                    (_%$%else211613211645%_))
                                (_%$%else211613211645%_))
                            (_%$%else211613211645%_))))
                    (_%$%else211613211645%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%else211613211645%_)))
                                              (_%$%else211613211645%_)))
                                        (_%$%else211613211645%_))
                                    (_%$%else211613211645%_)))
                              (_%$%else211613211645%_)))
                        _%code211610%_)))
                 (_%simplify-let211007%_
                  (lambda (_%code211309%_)
                    (let* ((_%$%code211310211382%_ _%code211309%_)
                           (_%$%else211315211390%_ (lambda () _%code211309%_)))
                      (let ((_%$%K211374211590%_
                             (lambda (_%expr211588%_) _%expr211588%_))
                            (_%$%K211357211536%_
                             (lambda (_%body211532%_
                                      _%expr211533%_
                                      _%id211534%_)
                               (cons 'let
                                     (cons (cons (cons _%id211534%_
                                                       (cons _%expr211533%_
                                                             '()))
                                                 '())
                                           _%body211532%_))))
                            (_%$%K211334211460%_
                             (lambda (_%body211454%_
                                      _%expr2211455%_
                                      _%id2211456%_
                                      _%expr1211457%_
                                      _%id1211458%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1211458%_
                                                       (cons _%expr1211457%_
                                                             '()))
                                                 (cons (cons _%id2211456%_
                                                             (cons _%expr2211455%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body211454%_))))
                            (_%$%K211317211399%_
                             (lambda (_%body211394%_
                                      _%bind211395%_
                                      _%expr1211396%_
                                      _%id1211397%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1211397%_
                                                       (cons _%expr1211396%_
                                                             '()))
                                                 _%bind211395%_)
                                           _%body211394%_)))))
                        (if (pair? _%$%code211310211382%_)
                            (let ((_%$%tl211376211595%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%code211310211382%_)))
                                  (_%$%hd211375211593%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%code211310211382%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%$%hd211375211593%_ 'let))
                                  (if (pair? _%$%tl211376211595%_)
                                      (let ((_%$%tl211378211600%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%tl211376211595%_)))
                                            (_%$%hd211377211598%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%tl211376211595%_))))
                                        (if (null? _%$%hd211377211598%_)
                                            (if (pair? _%$%tl211378211600%_)
                                                (let ((_%$%tl211380211605%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%tl211378211600%_)))
                                                      (_%$%hd211379211603%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%tl211378211600%_))))
                                                  (if (null? _%$%tl211380211605%_)
                                                      (let ((_%expr211608%_
                                                             _%$%hd211379211603%_))
                                                        (_%$%K211374211590%_
                                                         _%expr211608%_))
                                                      (_%$%else211315211390%_)))
                                                (_%$%else211315211390%_))
                                            (if (pair? _%$%hd211377211598%_)
                                                (let ((_%$%tl211369211551%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%hd211377211598%_)))
                                                      (_%$%hd211368211549%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%hd211377211598%_))))
                                                  (if (pair? _%$%hd211368211549%_)
                                                      (let ((_%$%tl211371211556%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%hd211368211549%_)))
                    (_%$%hd211370211554%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%hd211368211549%_))))
                (if (pair? _%$%tl211371211556%_)
                    (let ((_%$%tl211373211563%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%tl211371211556%_)))
                          (_%$%hd211372211561%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%tl211371211556%_))))
                      (if (null? _%$%tl211373211563%_)
                          (if (null? _%$%tl211369211551%_)
                              (if (pair? _%$%tl211378211600%_)
                                  (let ((_%$%tl211363211570%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl211378211600%_)))
                                        (_%$%hd211362211568%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%tl211378211600%_))))
                                    (if (pair? _%$%hd211362211568%_)
                                        (let ((_%$%tl211365211575%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%hd211362211568%_)))
                                              (_%$%hd211364211573%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%hd211362211568%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%$%hd211364211573%_
                                                       'let))
                                              (if (pair? _%$%tl211365211575%_)
                                                  (let ((_%$%tl211367211580%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%tl211365211575%_)))
                                                        (_%$%hd211366211578%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%tl211365211575%_))))
                                                    (if (null? _%$%hd211366211578%_)
                                                        (if (null? _%$%tl211363211570%_)
                                                            (let ((_%id211559%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%hd211370211554%_)
                          (_%expr211566%_ _%$%hd211372211561%_)
                          (_%body211583%_ _%$%tl211367211580%_))
                      (_%$%K211357211536%_
                       _%body211583%_
                       _%expr211566%_
                       _%id211559%_))
                    (_%$%else211315211390%_))
                (if (pair? _%$%hd211366211578%_)
                    (let ((_%$%tl211346211509%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%hd211366211578%_)))
                          (_%$%hd211345211507%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%hd211366211578%_))))
                      (if (pair? _%$%hd211345211507%_)
                          (let ((_%$%tl211348211514%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%hd211345211507%_)))
                                (_%$%hd211347211512%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%hd211345211507%_))))
                            (if (pair? _%$%tl211348211514%_)
                                (let ((_%$%tl211350211521%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%tl211348211514%_)))
                                      (_%$%hd211349211519%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%tl211348211514%_))))
                                  (if (null? _%$%tl211350211521%_)
                                      (if (null? _%$%tl211346211509%_)
                                          (if (null? _%$%tl211363211570%_)
                                              (let ((_%id1211483%_
                                                     _%$%hd211370211554%_)
                                                    (_%expr1211490%_
                                                     _%$%hd211372211561%_)
                                                    (_%id2211517%_
                                                     _%$%hd211347211512%_)
                                                    (_%expr2211524%_
                                                     _%$%hd211349211519%_)
                                                    (_%body211526%_
                                                     _%$%tl211367211580%_))
                                                (_%$%K211334211460%_
                                                 _%body211526%_
                                                 _%expr2211524%_
                                                 _%id2211517%_
                                                 _%expr1211490%_
                                                 _%id1211483%_))
                                              (_%$%else211315211390%_))
                                          (_%$%else211315211390%_))
                                      (_%$%else211315211390%_)))
                                (_%$%else211315211390%_)))
                          (_%$%else211315211390%_)))
                    (_%$%else211315211390%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%else211315211390%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%$%hd211364211573%_
                                                           'let*))
                                                  (if (pair? _%$%tl211365211575%_)
                                                      (let ((_%$%tl211327211443%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%tl211365211575%_)))
                    (_%$%hd211326211441%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%tl211365211575%_))))
                (if (null? _%$%tl211363211570%_)
                    (let ((_%id1211422%_ _%$%hd211370211554%_)
                          (_%expr1211429%_ _%$%hd211372211561%_)
                          (_%bind211446%_ _%$%hd211326211441%_)
                          (_%body211448%_ _%$%tl211327211443%_))
                      (_%$%K211317211399%_
                       _%body211448%_
                       _%bind211446%_
                       _%expr1211429%_
                       _%id1211422%_))
                    (_%$%else211315211390%_)))
              (_%$%else211315211390%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%else211315211390%_))))
                                        (_%$%else211315211390%_)))
                                  (_%$%else211315211390%_))
                              (_%$%else211315211390%_))
                          (_%$%else211315211390%_)))
                    (_%$%else211315211390%_)))
              (_%$%else211315211390%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%else211315211390%_))))
                                      (_%$%else211315211390%_))
                                  (_%$%else211315211390%_)))
                            (_%$%else211315211390%_))))))
                 (_%generate-values211008%_
                  (lambda (_%hd211122%_ _%body211123%_)
                    (let _%lp211125%_ ((_%rest211127%_ _%hd211122%_)
                                       (_%bind211128%_ '())
                                       (_%check211129%_ '())
                                       (_%post211130%_ '()))
                      (let* ((_%__stx215175215176%_ _%rest211127%_)
                             (_%$%g211133211144%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx215175215176%_)))))
                        (let ((_%__kont215177215178%_
                               (lambda (_%$%g211135211171%_
                                        _%$%g211136211172%_)
                                 (let* ((_%__stx215131215132%_
                                         _%$%g211136211172%_)
                                        (_%$%g211187211212%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx215131215132%_)))))
                                   (let ((_%__kont215133215134%_
                                          (lambda (_%$%g211189211285%_
                                                   _%$%g211190211286%_)
                                            (let ((_%eid211300%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%$%g211190211286%_)))
                                                  (_%expr211301%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self211001%_
                                                      _%$%g211189211285%_))))
                                              (_%lp211125%_
                                               _%$%g211135211171%_
                                               (cons (cons _%eid211300%_
                                                           (cons _%expr211301%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind211128%_)
                                               _%check211129%_
                                               _%post211130%_))))
                                         (_%__kont215135215136%_
                                          (lambda (_%$%g211200211233%_
                                                   _%$%g211201211234%_)
                                            (let* ((_%vals211247%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values211249%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals211247%_
                                                     _%$%g211201211234%_
                                                     _%$%g211200211233%_))
                                                   (_%refs211251%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals211247%_
                                                     _%$%g211201211234%_))
                                                   (_%expr211253%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self211001%_
                                                       _%$%g211200211233%_))))
                                              (_%lp211125%_
                                               _%$%g211135211171%_
                                               (cons (cons _%vals211247%_
                                                           (cons _%expr211253%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind211128%_)
                                               (cons _%check-values211249%_
                                                     _%check211129%_)
                                               (cons _%refs211251%_
                                                     _%post211130%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx215131215132%_))
                                         (let ((_%$%e211191211261%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx215131215132%_))))
                                           (let ((_%$%tl211193211266%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e211191211261%_)))
                                                 (_%$%hd211192211264%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e211191211261%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%hd211192211264%_))
                                                 (let ((_%$%e211194211269%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%hd211192211264%_))))
                                                   (let ((_%$%tl211196211274%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e211194211269%_)))
                                                         (_%$%hd211195211272%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e211194211269%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%$%tl211196211274%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%tl211193211266%_))
                     (let ((_%$%e211197211277%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl211193211266%_))))
                       (let ((_%$%tl211199211282%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e211197211277%_)))
                             (_%$%hd211198211280%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e211197211277%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl211199211282%_))
                             (_%__kont215133215134%_
                              _%$%hd211198211280%_
                              _%$%hd211195211272%_)
                             (let ()
                               (declare (not safe))
                               (_%$%g211187211212%_)))))
                     (let () (declare (not safe)) (_%$%g211187211212%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%$%tl211193211266%_))
                     (let ((_%$%e211205211225%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl211193211266%_))))
                       (let ((_%$%tl211207211230%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e211205211225%_)))
                             (_%$%hd211206211228%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e211205211225%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl211207211230%_))
                             (_%__kont215135215136%_
                              _%$%hd211206211228%_
                              _%$%hd211192211264%_)
                             (let ()
                               (declare (not safe))
                               (_%$%g211187211212%_)))))
                     (let () (declare (not safe)) (_%$%g211187211212%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl211193211266%_))
                                                     (let ((_%$%e211205211225%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl211193211266%_))))
                                                       (let ((_%$%tl211207211230%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e211205211225%_)))
                     (_%$%hd211206211228%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%e211205211225%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl211207211230%_))
                     (_%__kont215135215136%_
                      _%$%hd211206211228%_
                      _%$%hd211192211264%_)
                     (let () (declare (not safe)) (_%$%g211187211212%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%$%g211187211212%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%$%g211187211212%_)))))))
                              (_%__kont215179215180%_
                               (lambda ()
                                 (let* ((_%body211151%_
                                         (if _%compiled-body?211003%_
                                             _%body211123%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self211001%_
                                                _%body211123%_))))
                                        (_%body211153%_
                                         (_%generate-values-post211009%_
                                          _%post211130%_
                                          _%body211151%_))
                                        (_%body211155%_
                                         (_%generate-values-check211010%_
                                          _%check211129%_
                                          _%body211153%_)))
                                   (cons 'let
                                         (cons (reverse _%bind211128%_)
                                               (cons _%body211155%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx215175215176%_))
                              (let ((_%$%e211137211163%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx215175215176%_))))
                                (let ((_%$%tl211139211168%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e211137211163%_)))
                                      (_%$%hd211138211166%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e211137211163%_))))
                                  (_%__kont215177215178%_
                                   _%$%tl211139211168%_
                                   _%$%hd211138211166%_)))
                              (_%__kont215179215180%_)))))))
                 (_%generate-values-post211009%_
                  (lambda (_%post211081%_ _%body211082%_)
                    (let _%lp211084%_ ((_%rest211086%_ _%post211081%_)
                                       (_%body211087%_ _%body211082%_))
                      (let* ((_%$%rest211088211096%_ _%rest211086%_)
                             (_%$%else211090211104%_
                              (lambda () _%body211087%_))
                             (_%$%K211092211110%_
                              (lambda (_%rest211107%_ _%bind211108%_)
                                (_%lp211084%_
                                 _%rest211107%_
                                 (cons 'let
                                       (cons _%bind211108%_
                                             (cons _%body211087%_ '())))))))
                        (if (pair? _%$%rest211088211096%_)
                            (let ((_%$%hd211093211113%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest211088211096%_)))
                                  (_%$%tl211094211115%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest211088211096%_))))
                              (let* ((_%bind211118%_ _%$%hd211093211113%_)
                                     (_%rest211120%_ _%$%tl211094211115%_))
                                (_%$%K211092211110%_
                                 _%rest211120%_
                                 _%bind211118%_)))
                            (_%$%else211090211104%_))))))
                 (_%generate-values-check211010%_
                  (lambda (_%check211078%_ _%body211079%_)
                    (cons 'begin
                          (let ((__tmp216021 (reverse _%check211078%_))
                                (__tmp216020 (cons _%body211079%_ '())))
                            (declare (not safe))
                            (##append __tmp216021 __tmp216020))))))
          (let* ((_%$%g211012211029%_
                  (lambda (_%$%g211013211026%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g211013211026%_))))
                 (_%$%g211011211075%_
                  (lambda (_%$%g211013211032%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g211013211032%_))
                        (let ((_%$%e211016211034%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g211013211032%_))))
                          (let ((_%$%hd211017211037%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e211016211034%_)))
                                (_%$%tl211018211039%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e211016211034%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl211018211039%_))
                                (let ((_%$%e211019211042%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl211018211039%_))))
                                  (let ((_%$%hd211020211045%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e211019211042%_)))
                                        (_%$%tl211021211047%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e211019211042%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl211021211047%_))
                                        (let ((_%$%e211022211050%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl211021211047%_))))
                                          (let ((_%$%hd211023211053%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e211022211050%_)))
                                                (_%$%tl211024211055%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e211022211050%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl211024211055%_))
                                                (if (gxc#generate-runtime-simple-let?
                                                     _%$%hd211020211045%_)
                                                    (_%generate-simple211005%_
                                                     _%$%hd211020211045%_
                                                     _%$%hd211023211053%_)
                                                    (_%generate-values211008%_
                                                     _%$%hd211020211045%_
                                                     _%$%hd211023211053%_))
                                                (_%$%g211012211029%_
                                                 _%$%g211013211032%_))))
                                        (_%$%g211012211029%_
                                         _%$%g211013211032%_))))
                                (_%$%g211012211029%_ _%$%g211013211032%_))))
                        (_%$%g211012211029%_ _%$%g211013211032%_)))))
            (_%$%g211011211075%_ _%stx211002%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self211755%_ _%stx211756%_)
        (let ((_%compiled-body?211758%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self211755%_
           _%stx211756%_
           _%compiled-body?211758%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g216022_
        (let ((_g216023_ (let () (declare (not safe)) (##length _g216022_))))
          (cond ((let () (declare (not safe)) (##fx= _g216023_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g216022_))
                ((let () (declare (not safe)) (##fx= _g216023_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g216022_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g216022_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals210895%_ _%hd210896%_)
        (let _%lp210898%_ ((_%rest210900%_ _%hd210896%_)
                           (_%k210901%_ '0)
                           (_%r210902%_ '()))
          (let* ((_%__stx215189215190%_ _%rest210900%_)
                 (_%$%g210907210924%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx215189215190%_)))))
            (let ((_%__kont215191215192%_
                   (lambda (_%$%g210909210987%_)
                     (_%lp210898%_
                      _%$%g210909210987%_
                      (let () (declare (not safe)) (##fx+ _%k210901%_ '1))
                      _%r210902%_)))
                  (_%__kont215193215194%_
                   (lambda (_%$%g210914210960%_ _%$%g210915210961%_)
                     (_%lp210898%_
                      _%$%g210914210960%_
                      (let () (declare (not safe)) (##fx+ _%k210901%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%$%g210915210961%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals210895%_
                                         _%k210901%_
                                         _%$%g210914210960%_)
                                        '()))
                            _%r210902%_))))
                  (_%__kont215195215196%_
                   (lambda (_%$%g210919210936%_)
                     (let ((__tmp216024
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%$%g210919210936%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals210895%_
                                               _%k210901%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (foldl__0 cons __tmp216024 _%r210902%_))))
                  (_%__kont215197215198%_ (lambda () (reverse _%r210902%_))))
              (let ((_%$%g210905210947%_
                     (lambda ()
                       (let ((_%$%g210919210936%_ _%__stx215189215190%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%$%g210919210936%_))
                             (_%__kont215195215196%_ _%$%g210919210936%_)
                             (_%__kont215197215198%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx215189215190%_))
                    (let ((_%$%e210910210976%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx215189215190%_))))
                      (let ((_%$%tl210912210981%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e210910210976%_)))
                            (_%$%hd210911210979%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e210910210976%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%$%hd210911210979%_))
                            (let ((_%$%e210913210984%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd210911210979%_))))
                              (if (equal? _%$%e210913210984%_ '#f)
                                  (_%__kont215191215192%_ _%$%tl210912210981%_)
                                  (_%__kont215193215194%_
                                   _%$%tl210912210981%_
                                   _%$%hd210911210979%_)))
                            (_%__kont215193215194%_
                             _%$%tl210912210981%_
                             _%$%hd210911210979%_))))
                    (let () (declare (not safe)) (_%$%g210905210947%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self210574%_ _%stx210575%_ _%compiled-body?210576%_)
        (letrec ((_%generate-simple210578%_
                  (lambda (_%hd210880%_ _%body210881%_)
                    (gxc#generate-runtime-simple-let
                     _%self210574%_
                     'letrec
                     _%hd210880%_
                     _%body210881%_
                     _%compiled-body?210576%_)))
                 (_%generate-values210579%_
                  (lambda (_%hd210659%_ _%body210660%_)
                    (let _%lp210662%_ ((_%rest210664%_ _%hd210659%_)
                                       (_%bind210665%_ '())
                                       (_%check210666%_ '())
                                       (_%post210667%_ '()))
                      (let* ((_%__stx215263215264%_ _%rest210664%_)
                             (_%$%g210670210681%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx215263215264%_)))))
                        (let ((_%__kont215265215266%_
                               (lambda (_%$%g210672210708%_
                                        _%$%g210673210709%_)
                                 (let* ((_%__stx215219215220%_
                                         _%$%g210673210709%_)
                                        (_%$%g210724210749%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx215219215220%_)))))
                                   (let ((_%__kont215221215222%_
                                          (lambda (_%$%g210726210856%_
                                                   _%$%g210727210857%_)
                                            (let ((_%eid210871%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%$%g210727210857%_)))
                                                  (_%expr210872%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self210574%_
                                                      _%$%g210726210856%_))))
                                              (_%lp210662%_
                                               _%$%g210672210708%_
                                               (cons (cons _%eid210871%_
                                                           (cons _%expr210872%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind210665%_)
                                               _%check210666%_
                                               _%post210667%_))))
                                         (_%__kont215223215224%_
                                          (lambda (_%$%g210737210770%_
                                                   _%$%g210738210771%_)
                                            (let* ((_%vals210784%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values210786%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals210784%_
                                                     _%$%g210738210771%_
                                                     _%$%g210737210770%_))
                                                   (_%refs210788%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals210784%_
                                                     _%$%g210738210771%_))
                                                   (_%expr210790%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self210574%_
                                                       _%$%g210737210770%_))))
                                              (_%lp210662%_
                                               _%$%g210672210708%_
                                               (let ((__tmp216026
                                                      (cons (cons _%vals210784%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr210790%_ '()))
                    _%bind210665%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp216025
                                                      (map (lambda (_%$%e210792210794%_)
                                                             (let* ((_%$%$%e210792210796210805%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%e210792210794%_)
                            (_%$%E210798210809%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%$%$%e210792210796210805%_
                                        '([eid _])))
                               '#!void))
                            (_%$%K210799210814%_
                             (lambda (_%eid210812%_)
                               (cons _%eid210812%_ (cons '#!void '())))))
                       (if (pair? _%$%$%e210792210796210805%_)
                           (let ((_%$%hd210800210817%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$%e210792210796210805%_)))
                                 (_%$%tl210801210819%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$%e210792210796210805%_))))
                             (let ((_%eid210822%_ _%$%hd210800210817%_))
                               (if (pair? _%$%tl210801210819%_)
                                   (let ((_%$%tl210803210824%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%tl210801210819%_))))
                                     (if (null? _%$%tl210803210824%_)
                                         (_%$%K210799210814%_ _%eid210822%_)
                                         (_%$%E210798210809%_)))
                                   (_%$%E210798210809%_))))
                           (_%$%E210798210809%_))))
                   _%refs210788%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  __tmp216026
                                                  __tmp216025))
                                               (cons _%check-values210786%_
                                                     _%check210666%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  _%refs210788%_
                                                  _%post210667%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx215219215220%_))
                                         (let ((_%$%e210728210832%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx215219215220%_))))
                                           (let ((_%$%tl210730210837%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e210728210832%_)))
                                                 (_%$%hd210729210835%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e210728210832%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%hd210729210835%_))
                                                 (let ((_%$%e210731210840%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%hd210729210835%_))))
                                                   (let ((_%$%tl210733210845%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e210731210840%_)))
                                                         (_%$%hd210732210843%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e210731210840%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%$%tl210733210845%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%tl210730210837%_))
                     (let ((_%$%e210734210848%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl210730210837%_))))
                       (let ((_%$%tl210736210853%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e210734210848%_)))
                             (_%$%hd210735210851%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e210734210848%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl210736210853%_))
                             (_%__kont215221215222%_
                              _%$%hd210735210851%_
                              _%$%hd210732210843%_)
                             (let ()
                               (declare (not safe))
                               (_%$%g210724210749%_)))))
                     (let () (declare (not safe)) (_%$%g210724210749%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%$%tl210730210837%_))
                     (let ((_%$%e210742210762%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl210730210837%_))))
                       (let ((_%$%tl210744210767%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e210742210762%_)))
                             (_%$%hd210743210765%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e210742210762%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl210744210767%_))
                             (_%__kont215223215224%_
                              _%$%hd210743210765%_
                              _%$%hd210729210835%_)
                             (let ()
                               (declare (not safe))
                               (_%$%g210724210749%_)))))
                     (let () (declare (not safe)) (_%$%g210724210749%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl210730210837%_))
                                                     (let ((_%$%e210742210762%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl210730210837%_))))
                                                       (let ((_%$%tl210744210767%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e210742210762%_)))
                     (_%$%hd210743210765%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%e210742210762%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl210744210767%_))
                     (_%__kont215223215224%_
                      _%$%hd210743210765%_
                      _%$%hd210729210835%_)
                     (let () (declare (not safe)) (_%$%g210724210749%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%$%g210724210749%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%$%g210724210749%_)))))))
                              (_%__kont215267215268%_
                               (lambda ()
                                 (let* ((_%body210688%_
                                         (if _%compiled-body?210576%_
                                             _%body210660%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self210574%_
                                                _%body210660%_))))
                                        (_%body210690%_
                                         (_%generate-values-post210581%_
                                          _%post210667%_
                                          _%body210688%_))
                                        (_%body210692%_
                                         (_%generate-values-check210580%_
                                          _%check210666%_
                                          _%body210690%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind210665%_)
                                               (cons _%body210692%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx215263215264%_))
                              (let ((_%$%e210674210700%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx215263215264%_))))
                                (let ((_%$%tl210676210705%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e210674210700%_)))
                                      (_%$%hd210675210703%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e210674210700%_))))
                                  (_%__kont215265215266%_
                                   _%$%tl210676210705%_
                                   _%$%hd210675210703%_)))
                              (_%__kont215267215268%_)))))))
                 (_%generate-values-check210580%_
                  (lambda (_%check210656%_ _%body210657%_)
                    (cons 'begin
                          (let ((__tmp216028 (reverse _%check210656%_))
                                (__tmp216027 (cons _%body210657%_ '())))
                            (declare (not safe))
                            (##append __tmp216028 __tmp216027)))))
                 (_%generate-values-post210581%_
                  (lambda (_%post210649%_ _%body210650%_)
                    (cons 'begin
                          (let ((__tmp216030
                                 (let ((__tmp216032
                                        (lambda (_%$%g210651210653%_)
                                          (cons 'set! _%$%g210651210653%_)))
                                       (__tmp216031 (reverse _%post210649%_)))
                                   (declare (not safe))
                                   (##map __tmp216032 __tmp216031)))
                                (__tmp216029 (cons _%body210650%_ '())))
                            (declare (not safe))
                            (##append __tmp216030 __tmp216029))))))
          (let* ((_%$%g210583210600%_
                  (lambda (_%$%g210584210597%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g210584210597%_))))
                 (_%$%g210582210646%_
                  (lambda (_%$%g210584210603%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g210584210603%_))
                        (let ((_%$%e210587210605%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g210584210603%_))))
                          (let ((_%$%hd210588210608%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e210587210605%_)))
                                (_%$%tl210589210610%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e210587210605%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl210589210610%_))
                                (let ((_%$%e210590210613%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl210589210610%_))))
                                  (let ((_%$%hd210591210616%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e210590210613%_)))
                                        (_%$%tl210592210618%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e210590210613%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl210592210618%_))
                                        (let ((_%$%e210593210621%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl210592210618%_))))
                                          (let ((_%$%hd210594210624%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e210593210621%_)))
                                                (_%$%tl210595210626%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e210593210621%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl210595210626%_))
                                                (if (gxc#generate-runtime-simple-let?
                                                     _%$%hd210591210616%_)
                                                    (_%generate-simple210578%_
                                                     _%$%hd210591210616%_
                                                     _%$%hd210594210624%_)
                                                    (_%generate-values210579%_
                                                     _%$%hd210591210616%_
                                                     _%$%hd210594210624%_))
                                                (_%$%g210583210600%_
                                                 _%$%g210584210603%_))))
                                        (_%$%g210583210600%_
                                         _%$%g210584210603%_))))
                                (_%$%g210583210600%_ _%$%g210584210603%_))))
                        (_%$%g210583210600%_ _%$%g210584210603%_)))))
            (_%$%g210582210646%_ _%stx210575%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self210886%_ _%stx210887%_)
        (let ((_%compiled-body?210889%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self210886%_
           _%stx210887%_
           _%compiled-body?210889%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g216033_
        (let ((_g216034_ (let () (declare (not safe)) (##length _g216033_))))
          (cond ((let () (declare (not safe)) (##fx= _g216034_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g216033_))
                ((let () (declare (not safe)) (##fx= _g216034_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g216033_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g216033_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self210155%_ _%stx210156%_)
        (letrec ((_%generate-values210158%_
                  (lambda (_%hd210401%_ _%body210402%_)
                    (let _%lp210404%_ ((_%rest210406%_ _%hd210401%_)
                                       (_%bind210407%_ '()))
                      (let* ((_%$%rest210408210416%_ _%rest210406%_)
                             (_%$%else210410210427%_
                              (lambda ()
                                (let ((_%bind210424%_ (reverse _%bind210407%_))
                                      (_%body210425%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self210155%_
                                          _%body210402%_))))
                                  (cons 'letrec*
                                        (cons _%bind210424%_
                                              (cons _%body210425%_ '()))))))
                             (_%$%K210412210561%_
                              (lambda (_%rest210430%_ _%hd-bind210431%_)
                                (let* ((_%__stx215277215278%_
                                        _%hd-bind210431%_)
                                       (_%$%g210434210459%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx215277215278%_)))))
                                  (let ((_%__kont215279215280%_
                                         (lambda (_%$%g210436210540%_
                                                  _%$%g210437210541%_)
                                           (let ((_%eid210555%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%$%g210437210541%_)))
                                                 (_%expr210556%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self210155%_
                                                     _%$%g210436210540%_))))
                                             (_%lp210404%_
                                              _%rest210430%_
                                              (cons (cons _%eid210555%_
                                                          (cons _%expr210556%_
                                                                '()))
                                                    _%bind210407%_)))))
                                        (_%__kont215281215282%_
                                         (lambda (_%$%g210447210480%_
                                                  _%$%g210448210481%_)
                                           (let* ((_%vals210500%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp210502%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values210504%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp210502%_
                                                    _%$%g210448210481%_
                                                    _%$%g210447210480%_))
                                                  (_%refs210506%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals210500%_
                                                    _%$%g210448210481%_))
                                                  (_%expr210508%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self210155%_
                                                      _%$%g210447210480%_))))
                                             (_%lp210404%_
                                              _%rest210430%_
                                              (let ((__tmp216035
                                                     (cons (cons _%vals210500%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp210502%_
                                                       (cons _%expr210508%_
                                                             '()))
                                                 '())
                                           (cons _%check-values210504%_
                                                 (cons _%tmp210502%_ '()))))
                               '()))
                   _%bind210407%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp216035
                                                 _%refs210506%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx215277215278%_))
                                        (let ((_%$%e210438210516%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx215277215278%_))))
                                          (let ((_%$%tl210440210521%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e210438210516%_)))
                                                (_%$%hd210439210519%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e210438210516%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd210439210519%_))
                                                (let ((_%$%e210441210524%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd210439210519%_))))
                                                  (let ((_%$%tl210443210529%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e210441210524%_)))
                                                        (_%$%hd210442210527%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e210441210524%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl210443210529%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl210440210521%_))
                                                            (let ((_%$%e210444210532%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl210440210521%_))))
                      (let ((_%$%tl210446210537%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e210444210532%_)))
                            (_%$%hd210445210535%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e210444210532%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl210446210537%_))
                            (_%__kont215279215280%_
                             _%$%hd210445210535%_
                             _%$%hd210442210527%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g210434210459%_)))))
                    (let () (declare (not safe)) (_%$%g210434210459%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%$%tl210440210521%_))
                    (let ((_%$%e210452210472%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl210440210521%_))))
                      (let ((_%$%tl210454210477%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e210452210472%_)))
                            (_%$%hd210453210475%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e210452210472%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl210454210477%_))
                            (_%__kont215281215282%_
                             _%$%hd210453210475%_
                             _%$%hd210439210519%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g210434210459%_)))))
                    (let () (declare (not safe)) (_%$%g210434210459%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl210440210521%_))
                                                    (let ((_%$%e210452210472%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl210440210521%_))))
                                                      (let ((_%$%tl210454210477%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e210452210472%_)))
                    (_%$%hd210453210475%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e210452210472%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl210454210477%_))
                    (_%__kont215281215282%_
                     _%$%hd210453210475%_
                     _%$%hd210439210519%_)
                    (let () (declare (not safe)) (_%$%g210434210459%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g210434210459%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g210434210459%_))))))))
                        (if (pair? _%$%rest210408210416%_)
                            (let ((_%$%hd210413210564%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest210408210416%_)))
                                  (_%$%tl210414210566%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest210408210416%_))))
                              (let* ((_%hd-bind210569%_ _%$%hd210413210564%_)
                                     (_%rest210571%_ _%$%tl210414210566%_))
                                (_%$%K210412210561%_
                                 _%rest210571%_
                                 _%hd-bind210569%_)))
                            (_%$%else210410210427%_))))))
                 (_%generate-letrec?210159%_
                  (lambda (_%hd210291%_)
                    (let _%lp210293%_ ((_%rest210295%_ _%hd210291%_))
                      (let* ((_%$%rest210296210304%_ _%rest210295%_)
                             (_%$%else210298210312%_ (lambda () '#t))
                             (_%$%K210300210389%_
                              (lambda (_%rest210315%_ _%hd-bind210316%_)
                                (let* ((_%$%g210318210335%_
                                        (lambda (_%$%g210319210332%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%$%g210319210332%_))))
                                       (_%$%g210317210386%_
                                        (lambda (_%$%g210319210338%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%g210319210338%_))
                                              (let ((_%$%e210322210340%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%g210319210338%_))))
                                                (let ((_%$%hd210323210343%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e210322210340%_)))
                                                      (_%$%tl210324210345%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e210322210340%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%hd210323210343%_))
                                                      (let ((_%$%e210325210348%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%hd210323210343%_))))
                (let ((_%$%hd210326210351%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e210325210348%_)))
                      (_%$%tl210327210353%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e210325210348%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl210327210353%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl210324210345%_))
                          (let ((_%$%e210328210356%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl210324210345%_))))
                            (let ((_%$%hd210329210359%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e210328210356%_)))
                                  (_%$%tl210330210361%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e210328210356%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl210330210361%_))
                                  (if (_%is-lambda-expr?210160%_
                                       _%$%hd210329210359%_)
                                      (_%lp210293%_ _%rest210315%_)
                                      '#f)
                                  (_%$%g210318210335%_ _%$%g210319210338%_))))
                          (_%$%g210318210335%_ _%$%g210319210338%_))
                      (_%$%g210318210335%_ _%$%g210319210338%_))))
              (_%$%g210318210335%_ _%$%g210319210338%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g210318210335%_
                                               _%$%g210319210338%_)))))
                                  (_%$%g210317210386%_ _%hd-bind210316%_)))))
                        (if (pair? _%$%rest210296210304%_)
                            (let ((_%$%hd210301210392%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest210296210304%_)))
                                  (_%$%tl210302210394%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest210296210304%_))))
                              (let* ((_%hd-bind210397%_ _%$%hd210301210392%_)
                                     (_%rest210399%_ _%$%tl210302210394%_))
                                (_%$%K210300210389%_
                                 _%rest210399%_
                                 _%hd-bind210397%_)))
                            (_%$%else210298210312%_))))))
                 (_%is-lambda-expr?210160%_
                  (lambda (_%expr210228%_)
                    (let* ((_%__stx215321215322%_ _%expr210228%_)
                           (_%$%g210231210245%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx215321215322%_)))))
                      (let ((_%__kont215323215324%_
                             (lambda (_%$%g210233210273%_ _%$%g210234210274%_)
                               '#t))
                            (_%__kont215325215326%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx215321215322%_))
                            (let ((_%$%e210235210257%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx215321215322%_))))
                              (let ((_%$%tl210237210262%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e210235210257%_)))
                                    (_%$%hd210236210260%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e210235210257%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd210236210260%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%$%hd210236210260%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl210237210262%_))
                                            (let ((_%$%e210238210265%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl210237210262%_))))
                                              (let ((_%$%tl210240210270%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e210238210265%_)))
                                                    (_%$%hd210239210268%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e210238210265%_))))
                                                (_%__kont215323215324%_
                                                 _%$%tl210240210270%_
                                                 _%$%hd210239210268%_)))
                                            (_%__kont215325215326%_))
                                        (_%__kont215325215326%_))
                                    (_%__kont215325215326%_))))
                            (_%__kont215325215326%_)))))))
          (let* ((_%$%g210162210179%_
                  (lambda (_%$%g210163210176%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g210163210176%_))))
                 (_%$%g210161210225%_
                  (lambda (_%$%g210163210182%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g210163210182%_))
                        (let ((_%$%e210166210184%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g210163210182%_))))
                          (let ((_%$%hd210167210187%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e210166210184%_)))
                                (_%$%tl210168210189%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e210166210184%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl210168210189%_))
                                (let ((_%$%e210169210192%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl210168210189%_))))
                                  (let ((_%$%hd210170210195%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e210169210192%_)))
                                        (_%$%tl210171210197%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e210169210192%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl210171210197%_))
                                        (let ((_%$%e210172210200%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl210171210197%_))))
                                          (let ((_%$%hd210173210203%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e210172210200%_)))
                                                (_%$%tl210174210205%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e210172210200%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl210174210205%_))
                                                (if (gxc#generate-runtime-simple-let?
                                                     _%$%hd210170210195%_)
                                                    (if (_%generate-letrec?210159%_
                                                         _%$%hd210170210195%_)
                                                        (gxc#generate-runtime-simple-let
                                                         _%self210155%_
                                                         'letrec
                                                         _%$%hd210170210195%_
                                                         _%$%hd210173210203%_
                                                         '#f)
                                                        (gxc#generate-runtime-simple-let
                                                         _%self210155%_
                                                         'letrec*
                                                         _%$%hd210170210195%_
                                                         _%$%hd210173210203%_
                                                         '#f))
                                                    (_%generate-values210158%_
                                                     _%$%hd210170210195%_
                                                     _%$%hd210173210203%_))
                                                (_%$%g210162210179%_
                                                 _%$%g210163210182%_))))
                                        (_%$%g210162210179%_
                                         _%$%g210163210182%_))))
                                (_%$%g210162210179%_ _%$%g210163210182%_))))
                        (_%$%g210162210179%_ _%$%g210163210182%_)))))
            (_%$%g210161210225%_ _%stx210156%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd210092%_)
        (let _%lp210094%_ ((_%rest210096%_ _%hd210092%_))
          (let* ((_%$%rest210097210113%_ _%rest210096%_)
                 (_%$%else210100210121%_ (lambda () '#f)))
            (let ((_%$%K210103210134%_
                   (lambda (_%rest210132%_) (_%lp210094%_ _%rest210132%_)))
                  (_%$%K210102210126%_ (lambda () '#t)))
              (let ((_%$%try-match210099210129%_
                     (lambda ()
                       (if (null? _%$%rest210097210113%_)
                           (_%$%K210102210126%_)
                           (_%$%else210100210121%_)))))
                (if (pair? _%$%rest210097210113%_)
                    (let ((_%$%tl210105210139%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest210097210113%_)))
                          (_%$%hd210104210137%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest210097210113%_))))
                      (if (pair? _%$%hd210104210137%_)
                          (let ((_%$%tl210107210144%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%hd210104210137%_)))
                                (_%$%hd210106210142%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%hd210104210137%_))))
                            (if (pair? _%$%hd210106210142%_)
                                (let ((_%$%tl210111210147%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%hd210106210142%_))))
                                  (if (null? _%$%tl210111210147%_)
                                      (if (pair? _%$%tl210107210144%_)
                                          (let ((_%$%tl210109210150%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl210107210144%_))))
                                            (if (null? _%$%tl210109210150%_)
                                                (let ((_%rest210153%_
                                                       _%$%tl210105210139%_))
                                                  (_%lp210094%_
                                                   _%rest210153%_))
                                                (_%$%else210100210121%_)))
                                          (_%$%else210100210121%_))
                                      (_%$%else210100210121%_)))
                                (_%$%else210100210121%_)))
                          (_%$%else210100210121%_)))
                    (_%$%try-match210099210129%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self210004%_
               _%form210005%_
               _%hd210006%_
               _%body210007%_
               _%compiled-body?210008%_)
        (letrec ((_%generate1210010%_
                  (lambda (_%bind210049%_)
                    (let* ((_%$%bind210050210061%_ _%bind210049%_)
                           (_%$%E210052210064%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%$%bind210050210061%_
                                       '([[id] expr])))
                              '#!void))
                           (_%$%K210053210070%_
                            (lambda (_%expr210067%_ _%id210068%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id210068%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self210004%_
                                             _%expr210067%_))
                                          '())))))
                      (if (pair? _%$%bind210050210061%_)
                          (let ((_%$%hd210054210073%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%bind210050210061%_)))
                                (_%$%tl210055210075%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%bind210050210061%_))))
                            (if (pair? _%$%hd210054210073%_)
                                (let ((_%$%hd210058210078%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%hd210054210073%_)))
                                      (_%$%tl210059210080%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%hd210054210073%_))))
                                  (let ((_%id210083%_ _%$%hd210058210078%_))
                                    (if (null? _%$%tl210059210080%_)
                                        (if (pair? _%$%tl210055210075%_)
                                            (let ((_%$%hd210056210085%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%tl210055210075%_)))
                                                  (_%$%tl210057210087%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%tl210055210075%_))))
                                              (let ((_%expr210090%_
                                                     _%$%hd210056210085%_))
                                                (if (null? _%$%tl210057210087%_)
                                                    (_%$%K210053210070%_
                                                     _%expr210090%_
                                                     _%id210083%_)
                                                    (_%$%E210052210064%_))))
                                            (_%$%E210052210064%_))
                                        (_%$%E210052210064%_))))
                                (_%$%E210052210064%_)))
                          (_%$%E210052210064%_))))))
          (let* ((_%bind210012%_ (map _%generate1210010%_ _%hd210006%_))
                 (_%body210014%_
                  (if _%compiled-body?210008%_
                      _%body210007%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self210004%_ _%body210007%_))))
                 (_%body210046%_
                  (let* ((_%$%body210015210023%_ _%body210014%_)
                         (_%$%else210017210031%_
                          (lambda () (cons _%body210014%_ '())))
                         (_%$%K210019210036%_
                          (lambda (_%exprs210034%_) _%exprs210034%_)))
                    (if (pair? _%$%body210015210023%_)
                        (let ((_%$%hd210020210039%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%body210015210023%_)))
                              (_%$%tl210021210041%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%body210015210023%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%$%hd210020210039%_ 'begin))
                              (let ((_%exprs210044%_ _%$%tl210021210041%_))
                                (_%$%K210019210036%_ _%exprs210044%_))
                              (_%$%else210017210031%_)))
                        (_%$%else210017210031%_)))))
            (cons _%form210005%_ (cons _%bind210012%_ _%body210046%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self209904%_ _%stx209905%_)
        (letrec ((_%generate1209907%_
                  (lambda (_%datum209959%_)
                    (if (or (null? _%datum209959%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum209959%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum209959%_))
                            (eof-object? _%datum209959%_))
                        _%datum209959%_
                        (if (uninterned-symbol? _%datum209959%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum209959%_
                               '#t))
                            (if (pair? _%datum209959%_)
                                (cons (_%generate1209907%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum209959%_)))
                                      (_%generate1209907%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum209959%_))))
                                (if (box? _%datum209959%_)
                                    (box (_%generate1209907%_
                                          (unbox _%datum209959%_)))
                                    (if (vector? _%datum209959%_)
                                        (vector-map
                                         _%generate1209907%_
                                         _%datum209959%_)
                                        (if (or (s8vector? _%datum209959%_)
                                                (u8vector? _%datum209959%_)
                                                (s16vector? _%datum209959%_)
                                                (u16vector? _%datum209959%_)
                                                (s32vector? _%datum209959%_)
                                                (u32vector? _%datum209959%_)
                                                (s64vector? _%datum209959%_)
                                                (u64vector? _%datum209959%_)
                                                (f32vector? _%datum209959%_)
                                                (f64vector? _%datum209959%_))
                                            _%datum209959%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx209905%_)))))))))))
          (let* ((_%$%g209909209922%_
                  (lambda (_%$%g209910209919%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g209910209919%_))))
                 (_%$%g209908209956%_
                  (lambda (_%$%g209910209925%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g209910209925%_))
                        (let ((_%$%e209912209927%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g209910209925%_))))
                          (let ((_%$%hd209913209930%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e209912209927%_)))
                                (_%$%tl209914209932%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e209912209927%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl209914209932%_))
                                (let ((_%$%e209915209935%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl209914209932%_))))
                                  (let ((_%$%hd209916209938%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e209915209935%_)))
                                        (_%$%tl209917209940%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e209915209935%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl209917209940%_))
                                        (cons 'quote
                                              (cons (_%generate1209907%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd209916209938%_)))
                                                    '()))
                                        (_%$%g209909209922%_
                                         _%$%g209910209925%_))))
                                (_%$%g209909209922%_ _%$%g209910209925%_))))
                        (_%$%g209909209922%_ _%$%g209910209925%_)))))
            (_%$%g209908209956%_ _%stx209905%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self209351%_ _%stx209352%_)
        (letrec ((_%compile-call209354%_
                  (lambda (_%rator209641%_ _%rands209642%_)
                    (let ((_%rator209648%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self209351%_
                              _%rator209641%_)))
                          (_%rands209649%_
                           (map (lambda (_%$%g209643209645%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self209351%_
                                     _%$%g209643209645%_)))
                                _%rands209642%_)))
                      (let* ((_%__stx215368215369%_ _%rator209648%_)
                             (_%$%g209652209704%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx215368215369%_)))))
                        (let ((_%__kont215370215371%_
                               (lambda (_%$%g209654209824%_
                                        _%$%g209655209825%_
                                        _%$%g209656209826%_
                                        _%$%g209657209827%_)
                                 (if (let ((__tmp216038
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands209649%_)))
                                           (__tmp216036
                                            (length (let ((__tmp216037
                                                           (lambda (_%$%g209863209866%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g209864209868%_)
                     (cons _%$%g209863209866%_ _%$%g209864209868%_))))
              (declare (not safe))
              (foldr__0 __tmp216037 '() _%$%g209656209826%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp216038 __tmp216036))
                                     (let* ((_%id209871%_ _%$%g209657209827%_)
                                            (_%args209880%_
                                             (let ((__tmp216039
                                                    (lambda (_%$%g209872209875%_
                                                             _%$%g209873209877%_)
                                                      (cons _%$%g209872209875%_
                                                            _%$%g209873209877%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp216039
                                                '()
                                                _%$%g209656209826%_)))
                                            (_%body209889%_
                                             (let ((__tmp216040
                                                    (lambda (_%$%g209881209884%_
                                                             _%$%g209882209886%_)
                                                      (cons _%$%g209881209884%_
                                                            _%$%g209882209886%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp216040
                                                '()
                                                _%$%g209655209825%_)))
                                            (_%init209891%_
                                             (map list
                                                  _%args209880%_
                                                  _%rands209649%_)))
                                       (cons 'let
                                             (cons _%id209871%_
                                                   (cons _%init209891%_
                                                         _%body209889%_))))
                                     (let ((__tmp216041
                                            (let ((__tmp216042
                                                   (lambda (_%$%g209893209896%_
                                                            _%$%g209894209898%_)
                                                     (cons _%$%g209893209896%_
                                                           _%$%g209894209898%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp216042
                                               '()
                                               _%$%g209656209826%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx209352%_
                                        __tmp216041
                                        _%rands209649%_)))))
                              (_%__kont215376215377%_
                               (lambda ()
                                 (cons _%rator209648%_ _%rands209649%_))))
                          (let ((_%__match215435215436%_
                                 (lambda (_%$%e209658209716%_
                                          _%$%hd209659209719%_
                                          _%$%tl209660209721%_
                                          _%$%e209661209724%_
                                          _%$%hd209662209727%_
                                          _%$%tl209663209729%_
                                          _%$%e209664209732%_
                                          _%$%hd209665209735%_
                                          _%$%tl209666209737%_
                                          _%$%e209667209740%_
                                          _%$%hd209668209743%_
                                          _%$%tl209669209745%_
                                          _%$%e209670209748%_
                                          _%$%hd209671209751%_
                                          _%$%tl209672209753%_
                                          _%$%e209673209756%_
                                          _%$%hd209674209759%_
                                          _%$%tl209675209761%_
                                          _%$%e209676209764%_
                                          _%$%hd209677209767%_
                                          _%$%tl209678209769%_
                                          _%__splice215372215373%_
                                          _%$%target209679209772%_
                                          _%$%tl209681209774%_)
                                   (letrec ((_%$%loop209682209777%_
                                             (lambda (_%$%hd209680209780%_
                                                      _%$%arg209686209782%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%hd209680209780%_))
                                                   (let ((_%$%e209683209784%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%hd209680209780%_))))
                                                     (let ((_%$%lp-tl209685209789%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e209683209784%_)))
                                                           (_%$%lp-hd209684209787%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e209683209784%_))))
                                                       (_%$%loop209682209777%_
                                                        _%$%lp-tl209685209789%_
                                                        (cons _%$%lp-hd209684209787%_
                                                              _%$%arg209686209782%_))))
                                                   (let ((_%$%arg209687209792%_
                                                          (reverse _%$%arg209686209782%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%$%tl209678209769%_))
                                                         (let ((_%__splice215374215375%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%$%tl209678209769%_
                           '0))))
                   (let ((_%$%tl209690209796%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice215374215375%_ '1)))
                         (_%$%target209688209794%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice215374215375%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl209690209796%_))
                         (letrec ((_%$%loop209691209799%_
                                   (lambda (_%$%hd209689209802%_
                                            _%$%body209695209804%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%hd209689209802%_))
                                         (let ((_%$%e209692209806%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%hd209689209802%_))))
                                           (let ((_%$%lp-tl209694209811%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e209692209806%_)))
                                                 (_%$%lp-hd209693209809%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e209692209806%_))))
                                             (_%$%loop209691209799%_
                                              _%$%lp-tl209694209811%_
                                              (cons _%$%lp-hd209693209809%_
                                                    _%$%body209695209804%_))))
                                         (let ((_%$%body209696209814%_
                                                (reverse _%$%body209695209804%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%$%tl209672209753%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl209666209737%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl209663209729%_))
                                                       (let ((_%$%e209697209816%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl209663209729%_))))
                 (let ((_%$%tl209699209821%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e209697209816%_)))
                       (_%$%hd209698209819%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e209697209816%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl209699209821%_))
                       (let ((_%$%g209654209824%_ _%$%hd209698209819%_)
                             (_%$%g209655209825%_ _%$%body209696209814%_)
                             (_%$%g209656209826%_ _%$%arg209687209792%_)
                             (_%$%g209657209827%_ _%$%hd209668209743%_))
                         (if (eq? _%$%g209657209827%_ _%$%g209654209824%_)
                             (_%__kont215370215371%_
                              _%$%g209654209824%_
                              _%$%g209655209825%_
                              _%$%g209656209826%_
                              _%$%g209657209827%_)
                             (_%__kont215376215377%_)))
                       (_%__kont215376215377%_))))
               (_%__kont215376215377%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont215376215377%_))
                                               (_%__kont215376215377%_)))))))
                           (_%$%loop209691209799%_
                            _%$%target209688209794%_
                            '()))
                         (_%__kont215376215377%_))))
                 (_%__kont215376215377%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%$%loop209682209777%_
                                      _%$%target209679209772%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx215368215369%_))
                                (let ((_%$%e209658209716%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx215368215369%_))))
                                  (let ((_%$%tl209660209721%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e209658209716%_)))
                                        (_%$%hd209659209719%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e209658209716%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd209659209719%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%$%hd209659209719%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl209660209721%_))
                                                (let ((_%$%e209661209724%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl209660209721%_))))
                                                  (let ((_%$%tl209663209729%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e209661209724%_)))
                                                        (_%$%hd209662209727%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e209661209724%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd209662209727%_))
                                                        (let ((_%$%e209664209732%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd209662209727%_))))
                  (let ((_%$%tl209666209737%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e209664209732%_)))
                        (_%$%hd209665209735%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e209664209732%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd209665209735%_))
                        (let ((_%$%e209667209740%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd209665209735%_))))
                          (let ((_%$%tl209669209745%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e209667209740%_)))
                                (_%$%hd209668209743%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e209667209740%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl209669209745%_))
                                (let ((_%$%e209670209748%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl209669209745%_))))
                                  (let ((_%$%tl209672209753%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e209670209748%_)))
                                        (_%$%hd209671209751%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e209670209748%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd209671209751%_))
                                        (let ((_%$%e209673209756%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd209671209751%_))))
                                          (let ((_%$%tl209675209761%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e209673209756%_)))
                                                (_%$%hd209674209759%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e209673209756%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd209674209759%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%$%hd209674209759%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl209675209761%_))
                                                        (let ((_%$%e209676209764%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl209675209761%_))))
                  (let ((_%$%tl209678209769%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e209676209764%_)))
                        (_%$%hd209677209767%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e209676209764%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%$%hd209677209767%_))
                        (let ((_%__splice215372215373%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%$%hd209677209767%_
                                  '0))))
                          (let ((_%$%tl209681209774%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice215372215373%_ '1)))
                                (_%$%target209679209772%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice215372215373%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl209681209774%_))
                                (_%__match215435215436%_
                                 _%$%e209658209716%_
                                 _%$%hd209659209719%_
                                 _%$%tl209660209721%_
                                 _%$%e209661209724%_
                                 _%$%hd209662209727%_
                                 _%$%tl209663209729%_
                                 _%$%e209664209732%_
                                 _%$%hd209665209735%_
                                 _%$%tl209666209737%_
                                 _%$%e209667209740%_
                                 _%$%hd209668209743%_
                                 _%$%tl209669209745%_
                                 _%$%e209670209748%_
                                 _%$%hd209671209751%_
                                 _%$%tl209672209753%_
                                 _%$%e209673209756%_
                                 _%$%hd209674209759%_
                                 _%$%tl209675209761%_
                                 _%$%e209676209764%_
                                 _%$%hd209677209767%_
                                 _%$%tl209678209769%_
                                 _%__splice215372215373%_
                                 _%$%target209679209772%_
                                 _%$%tl209681209774%_)
                                (_%__kont215376215377%_))))
                        (_%__kont215376215377%_))))
                (_%__kont215376215377%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont215376215377%_))
                                                (_%__kont215376215377%_))))
                                        (_%__kont215376215377%_))))
                                (_%__kont215376215377%_))))
                        (_%__kont215376215377%_))))
                (_%__kont215376215377%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont215376215377%_))
                                            (_%__kont215376215377%_))
                                        (_%__kont215376215377%_))))
                                (_%__kont215376215377%_)))))))))
          (let* ((_%$%g209356209379%_
                  (lambda (_%$%g209357209376%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g209357209376%_))))
                 (_%$%g209355209638%_
                  (lambda (_%$%g209357209382%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g209357209382%_))
                        (let ((_%$%e209360209384%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g209357209382%_))))
                          (let ((_%$%hd209361209387%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e209360209384%_)))
                                (_%$%tl209362209389%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e209360209384%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl209362209389%_))
                                (let ((_%$%e209363209392%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl209362209389%_))))
                                  (let ((_%$%hd209364209395%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e209363209392%_)))
                                        (_%$%tl209365209397%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e209363209392%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%tl209365209397%_))
                                        (let ((_g216043_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%$%tl209365209397%_
                                                  '0))))
                                          (begin
                                            (let ((_g216044_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g216043_)
                                                         (##values-length
                                                          _g216043_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g216044_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g216044_)))
                                            (let ((_%$%target209366209400%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g216043_
                                                      0)))
                                                  (_%$%tl209368209402%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g216043_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl209368209402%_))
                                                  (letrec ((_%$%loop209369209405%_
                                                            (lambda (_%$%hd209367209408%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%rand209373209410%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd209367209408%_))
                          (let ((_%$%e209370209412%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd209367209408%_))))
                            (let ((_%$%lp-hd209371209415%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e209370209412%_)))
                                  (_%$%lp-tl209372209417%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e209370209412%_))))
                              (_%$%loop209369209405%_
                               _%$%lp-tl209372209417%_
                               (cons _%$%lp-hd209371209415%_
                                     _%$%rand209373209410%_))))
                          (let ((_%$%rand209374209420%_
                                 (reverse _%$%rand209373209410%_)))
                            (if (gxc#current-compile-decls-unsafe?)
                                (_%compile-call209354%_
                                 _%$%hd209364209395%_
                                 (let ((__tmp216045
                                        (lambda (_%$%g209440209443%_
                                                 _%$%g209441209445%_)
                                          (cons _%$%g209440209443%_
                                                _%$%g209441209445%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp216045
                                    '()
                                    _%$%rand209374209420%_)))
                                (let* ((_%__stx215484215485%_
                                        _%$%hd209364209395%_)
                                       (_%$%g209449209461%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx215484215485%_)))))
                                  (let ((_%__kont215486215487%_
                                         (lambda ()
                                           (let ((_%f209498%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self209351%_
                                                     _%$%hd209364209395%_))))
                                             (if (and (let ((__tmp216046
                                                             (symbol->string
                                                              _%f209498%_)))
                                                        (declare (not safe))
                                                        (##string-prefix?
                                                         '"##"
                                                         __tmp216046))
                                                      (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##memq _%f209498%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let _%lp209500%_ ((_%rest209503%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (reverse (let ((__tmp216048
                                             (lambda (_%$%g209620209623%_
                                                      _%$%g209621209625%_)
                                               (cons _%$%g209620209623%_
                                                     _%$%g209621209625%_))))
                                        (declare (not safe))
                                        (foldr__0
                                         __tmp216048
                                         '()
                                         _%$%rand209374209420%_))))
                            (_%bind209505%_ '())
                            (_%args209506%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%$%rest209507209515%_
                                                           _%rest209503%_)
                                                          (_%$%else209509209523%_
                                                           (lambda ()
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%bind209505%_
                                 (cons '(declare (not safe))
                                       (cons (cons _%f209498%_ _%args209506%_)
                                             '()))))))
                  (_%$%K209511209609%_
                   (lambda (_%rest209526%_ _%e209527%_)
                     (let* ((_%__stx215438215439%_ _%e209527%_)
                            (_%$%g209532209550%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%__stx215438215439%_)))))
                       (let ((_%__kont215440215441%_
                              (lambda ()
                                (_%lp209500%_
                                 _%rest209526%_
                                 _%bind209505%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _%e209527%_))
                                       _%args209506%_))))
                             (_%__kont215442215443%_
                              (lambda ()
                                (_%lp209500%_
                                 _%rest209526%_
                                 _%bind209505%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _%e209527%_))
                                       _%args209506%_))))
                             (_%__kont215444215445%_
                              (lambda ()
                                (let ((_%tmp209557%_
                                       (let ((__tmp216047
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__tmp))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp216047))))
                                  (_%lp209500%_
                                   _%rest209526%_
                                   (cons (cons _%tmp209557%_
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _%e209527%_))
                                                     '()))
                                         _%bind209505%_)
                                   (cons _%tmp209557%_ _%args209506%_))))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%__stx215438215439%_))
                             (let ((_%$%e209534209588%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%__stx215438215439%_))))
                               (let ((_%$%tl209536209593%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e209534209588%_)))
                                     (_%$%hd209535209591%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e209534209588%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#identifier? _%$%hd209535209591%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-eq?
                                            '%#ref
                                            _%$%hd209535209591%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%tl209536209593%_))
                                             (let ((_%$%e209537209596%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%tl209536209593%_))))
                                               (let ((_%$%tl209539209601%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e209537209596%_)))
                                                     (_%$%hd209538209599%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e209537209596%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%$%tl209539209601%_))
                                                     (_%__kont215440215441%_)
                                                     (_%__kont215444215445%_))))
                                             (_%__kont215444215445%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#quote
                                                _%$%hd209535209591%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%tl209536209593%_))
                                                 (let ((_%$%e209543209573%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%tl209536209593%_))))
                                                   (let ((_%$%tl209545209578%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e209543209573%_)))
                                                         (_%$%hd209544209576%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e209543209573%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%$%tl209545209578%_))
                                                         (_%__kont215442215443%_)
                                                         (_%__kont215444215445%_))))
                                                 (_%__kont215444215445%_))
                                             (_%__kont215444215445%_)))
                                     (_%__kont215444215445%_))))
                             (_%__kont215444215445%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (pair? _%$%rest209507209515%_)
                                                         (let ((_%$%hd209512209612%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%rest209507209515%_)))
                       (_%$%tl209513209614%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%rest209507209515%_))))
                   (let* ((_%e209617%_ _%$%hd209512209612%_)
                          (_%rest209619%_ _%$%tl209513209614%_))
                     (_%$%K209511209609%_ _%rest209619%_ _%e209617%_)))
                 (_%$%else209509209523%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%compile-call209354%_
                                                  _%$%hd209364209395%_
                                                  (let ((__tmp216049
                                                         (lambda (_%$%g209627209630%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g209628209632%_)
                   (cons _%$%g209627209630%_ _%$%g209628209632%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp216049
                                                     '()
                                                     _%$%rand209374209420%_)))))))
                                        (_%__kont215488215489%_
                                         (lambda ()
                                           (_%compile-call209354%_
                                            _%$%hd209364209395%_
                                            (let ((__tmp216050
                                                   (lambda (_%$%g209467209470%_
                                                            _%$%g209468209472%_)
                                                     (cons _%$%g209467209470%_
                                                           _%$%g209468209472%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp216050
                                               '()
                                               _%$%rand209374209420%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx215484215485%_))
                                        (let ((_%$%e209451209480%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx215484215485%_))))
                                          (let ((_%$%tl209453209485%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e209451209480%_)))
                                                (_%$%hd209452209483%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e209451209480%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd209452209483%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%$%hd209452209483%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl209453209485%_))
                                                        (let ((_%$%e209454209488%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl209453209485%_))))
                  (let ((_%$%tl209456209493%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e209454209488%_)))
                        (_%$%hd209455209491%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e209454209488%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl209456209493%_))
                        (_%__kont215486215487%_)
                        (_%__kont215488215489%_))))
                (_%__kont215488215489%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont215488215489%_))
                                                (_%__kont215488215489%_))))
                                        (_%__kont215488215489%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%loop209369209405%_
                                                     _%$%target209366209400%_
                                                     '()))
                                                  (_%$%g209356209379%_
                                                   _%$%g209357209382%_)))))
                                        (_%$%g209356209379%_
                                         _%$%g209357209382%_))))
                                (_%$%g209356209379%_ _%$%g209357209382%_))))
                        (_%$%g209356209379%_ _%$%g209357209382%_)))))
            (_%$%g209355209638%_ _%stx209352%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self209096%_ _%stx209097%_)
        (let* ((_%__stx215556215557%_ _%stx209097%_)
               (_%$%g209100209129%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx215556215557%_)))))
          (let ((_%__kont215558215559%_
                 (lambda (_%$%g209102209195%_ _%$%g209103209196%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self209096%_
                        _%stx209097%_)
                       (let ((_%f209218%_
                              (let ((__tmp216051
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%$%g209103209196%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self209096%_
                                 __tmp216051))))
                         (let _%lp209220%_ ((_%rest209223%_
                                             (reverse (let ((__tmp216053
                                                             (lambda (_%$%g209340209343%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g209341209345%_)
                       (cons _%$%g209340209343%_ _%$%g209341209345%_))))
                (declare (not safe))
                (foldr__0 __tmp216053 '() _%$%g209102209195%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind209225%_ '())
                                            (_%args209226%_ '()))
                           (let* ((_%$%rest209227209235%_ _%rest209223%_)
                                  (_%$%else209229209243%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind209225%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f209218%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args209226%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%$%K209231209329%_
                                   (lambda (_%rest209246%_ _%e209247%_)
                                     (let* ((_%__stx215510215511%_ _%e209247%_)
                                            (_%$%g209252209270%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx215510215511%_)))))
                                       (let ((_%__kont215512215513%_
                                              (lambda ()
                                                (_%lp209220%_
                                                 _%rest209246%_
                                                 _%bind209225%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e209247%_))
                                                       _%args209226%_))))
                                             (_%__kont215514215515%_
                                              (lambda ()
                                                (_%lp209220%_
                                                 _%rest209246%_
                                                 _%bind209225%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e209247%_))
                                                       _%args209226%_))))
                                             (_%__kont215516215517%_
                                              (lambda ()
                                                (let ((_%tmp209277%_
                                                       (let ((__tmp216052
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp216052))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp209220%_
                                                   _%rest209246%_
                                                   (cons (cons _%tmp209277%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e209247%_))
                             '()))
                 _%bind209225%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp209277%_
                                                         _%args209226%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx215510215511%_))
                                             (let ((_%$%e209254209308%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx215510215511%_))))
                                               (let ((_%$%tl209256209313%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e209254209308%_)))
                                                     (_%$%hd209255209311%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e209254209308%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%$%hd209255209311%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%$%hd209255209311%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%tl209256209313%_))
                     (let ((_%$%e209257209316%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl209256209313%_))))
                       (let ((_%$%tl209259209321%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e209257209316%_)))
                             (_%$%hd209258209319%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e209257209316%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl209259209321%_))
                             (_%__kont215512215513%_)
                             (_%__kont215516215517%_))))
                     (_%__kont215516215517%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%$%hd209255209311%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%tl209256209313%_))
                         (let ((_%$%e209263209293%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%tl209256209313%_))))
                           (let ((_%$%tl209265209298%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e209263209293%_)))
                                 (_%$%hd209264209296%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e209263209293%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%$%tl209265209298%_))
                                 (_%__kont215514215515%_)
                                 (_%__kont215516215517%_))))
                         (_%__kont215516215517%_))
                     (_%__kont215516215517%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont215516215517%_))))
                                             (_%__kont215516215517%_)))))))
                             (if (pair? _%$%rest209227209235%_)
                                 (let ((_%$%hd209232209332%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%rest209227209235%_)))
                                       (_%$%tl209233209334%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%rest209227209235%_))))
                                   (let* ((_%e209337%_ _%$%hd209232209332%_)
                                          (_%rest209339%_
                                           _%$%tl209233209334%_))
                                     (_%$%K209231209329%_
                                      _%rest209339%_
                                      _%e209337%_)))
                                 (_%$%else209229209243%_))))))))
                (_%__kont215562215563%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self209096%_ _%stx209097%_))))
            (let ((_%__match215601215602%_
                   (lambda (_%$%e209104209141%_
                            _%$%hd209105209144%_
                            _%$%tl209106209146%_
                            _%$%e209107209149%_
                            _%$%hd209108209152%_
                            _%$%tl209109209154%_
                            _%$%e209110209157%_
                            _%$%hd209111209160%_
                            _%$%tl209112209162%_
                            _%$%e209113209165%_
                            _%$%hd209114209168%_
                            _%$%tl209115209170%_
                            _%__splice215560215561%_
                            _%$%target209116209173%_
                            _%$%tl209118209175%_)
                     (letrec ((_%$%loop209119209178%_
                               (lambda (_%$%hd209117209181%_
                                        _%$%rand209123209183%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd209117209181%_))
                                     (let ((_%$%e209120209185%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd209117209181%_))))
                                       (let ((_%$%lp-tl209122209190%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e209120209185%_)))
                                             (_%$%lp-hd209121209188%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e209120209185%_))))
                                         (_%$%loop209119209178%_
                                          _%$%lp-tl209122209190%_
                                          (cons _%$%lp-hd209121209188%_
                                                _%$%rand209123209183%_))))
                                     (let ((_%$%rand209124209193%_
                                            (reverse _%$%rand209123209183%_)))
                                       (_%__kont215558215559%_
                                        _%$%rand209124209193%_
                                        _%$%hd209114209168%_))))))
                       (_%$%loop209119209178%_
                        _%$%target209116209173%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx215556215557%_))
                  (let ((_%$%e209104209141%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx215556215557%_))))
                    (let ((_%$%tl209106209146%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e209104209141%_)))
                          (_%$%hd209105209144%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e209104209141%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl209106209146%_))
                          (let ((_%$%e209107209149%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl209106209146%_))))
                            (let ((_%$%tl209109209154%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e209107209149%_)))
                                  (_%$%hd209108209152%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e209107209149%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd209108209152%_))
                                  (let ((_%$%e209110209157%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd209108209152%_))))
                                    (let ((_%$%tl209112209162%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e209110209157%_)))
                                          (_%$%hd209111209160%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e209110209157%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd209111209160%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd209111209160%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl209112209162%_))
                                                  (let ((_%$%e209113209165%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl209112209162%_))))
                                                    (let ((_%$%tl209115209170%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e209113209165%_)))
                                                          (_%$%hd209114209168%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e209113209165%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl209115209170%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%$%tl209109209154%_))
                      (let ((_%__splice215560215561%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl209109209154%_
                                '0))))
                        (let ((_%$%tl209118209175%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice215560215561%_ '1)))
                              (_%$%target209116209173%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice215560215561%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl209118209175%_))
                              (_%__match215601215602%_
                               _%$%e209104209141%_
                               _%$%hd209105209144%_
                               _%$%tl209106209146%_
                               _%$%e209107209149%_
                               _%$%hd209108209152%_
                               _%$%tl209109209154%_
                               _%$%e209110209157%_
                               _%$%hd209111209160%_
                               _%$%tl209112209162%_
                               _%$%e209113209165%_
                               _%$%hd209114209168%_
                               _%$%tl209115209170%_
                               _%__splice215560215561%_
                               _%$%target209116209173%_
                               _%$%tl209118209175%_)
                              (_%__kont215562215563%_))))
                      (_%__kont215562215563%_))
                  (_%__kont215562215563%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont215562215563%_))
                                              (_%__kont215562215563%_))
                                          (_%__kont215562215563%_))))
                                  (_%__kont215562215563%_))))
                          (_%__kont215562215563%_))))
                  (_%__kont215562215563%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self208908%_ _%stx208909%_)
        (letrec ((_%simplify208911%_
                  (lambda (_%code208996%_)
                    (let* ((_%$%code208997209015%_ _%code208996%_)
                           (_%$%else208999209023%_ (lambda () _%code208996%_))
                           (_%$%K209001209059%_
                            (lambda (_%expr209026%_ _%test209027%_)
                              (let* ((_%$%expr209028209036%_ _%expr209026%_)
                                     (_%$%else209030209044%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test209027%_
                                                    (cons _%expr209026%_
                                                          '())))))
                                     (_%$%K209032209049%_
                                      (lambda (_%exprs209047%_)
                                        (cons 'and
                                              (cons _%test209027%_
                                                    _%exprs209047%_)))))
                                (if (pair? _%$%expr209028209036%_)
                                    (let ((_%$%hd209033209052%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%expr209028209036%_)))
                                          (_%$%tl209034209054%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%expr209028209036%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%$%hd209033209052%_ 'and))
                                          (let ((_%exprs209057%_
                                                 _%$%tl209034209054%_))
                                            (_%$%K209032209049%_
                                             _%exprs209057%_))
                                          (_%$%else209030209044%_)))
                                    (_%$%else209030209044%_))))))
                      (if (pair? _%$%code208997209015%_)
                          (let ((_%$%hd209002209062%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%code208997209015%_)))
                                (_%$%tl209003209064%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%code208997209015%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%$%hd209002209062%_ 'if))
                                (if (pair? _%$%tl209003209064%_)
                                    (let ((_%$%hd209004209067%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%tl209003209064%_)))
                                          (_%$%tl209005209069%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%tl209003209064%_))))
                                      (let ((_%test209072%_
                                             _%$%hd209004209067%_))
                                        (if (pair? _%$%tl209005209069%_)
                                            (let ((_%$%hd209006209074%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%tl209005209069%_)))
                                                  (_%$%tl209007209076%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%tl209005209069%_))))
                                              (let ((_%expr209079%_
                                                     _%$%hd209006209074%_))
                                                (if (pair? _%$%tl209007209076%_)
                                                    (let ((_%$%hd209008209081%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%tl209007209076%_)))
                                                          (_%$%tl209009209083%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%tl209007209076%_))))
                                                      (if (pair? _%$%hd209008209081%_)
                                                          (let ((_%$%hd209010209086%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%hd209008209081%_)))
                        (_%$%tl209011209088%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%hd209008209081%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%$%hd209010209086%_ 'quote))
                        (if (pair? _%$%tl209011209088%_)
                            (let ((_%$%hd209012209091%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%tl209011209088%_)))
                                  (_%$%tl209013209093%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%tl209011209088%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%$%hd209012209091%_ '#f))
                                  (if (null? _%$%tl209013209093%_)
                                      (if (null? _%$%tl209009209083%_)
                                          (_%$%K209001209059%_
                                           _%expr209079%_
                                           _%test209072%_)
                                          (_%$%else208999209023%_))
                                      (_%$%else208999209023%_))
                                  (_%$%else208999209023%_)))
                            (_%$%else208999209023%_))
                        (_%$%else208999209023%_)))
                  (_%$%else208999209023%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%else208999209023%_))))
                                            (_%$%else208999209023%_))))
                                    (_%$%else208999209023%_))
                                (_%$%else208999209023%_)))
                          (_%$%else208999209023%_))))))
          (let* ((_%$%g208913208934%_
                  (lambda (_%$%g208914208931%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g208914208931%_))))
                 (_%$%g208912208993%_
                  (lambda (_%$%g208914208937%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g208914208937%_))
                        (let ((_%$%e208918208939%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g208914208937%_))))
                          (let ((_%$%hd208919208942%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e208918208939%_)))
                                (_%$%tl208920208944%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e208918208939%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl208920208944%_))
                                (let ((_%$%e208921208947%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl208920208944%_))))
                                  (let ((_%$%hd208922208950%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e208921208947%_)))
                                        (_%$%tl208923208952%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e208921208947%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl208923208952%_))
                                        (let ((_%$%e208924208955%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl208923208952%_))))
                                          (let ((_%$%hd208925208958%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e208924208955%_)))
                                                (_%$%tl208926208960%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e208924208955%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl208926208960%_))
                                                (let ((_%$%e208927208963%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl208926208960%_))))
                                                  (let ((_%$%hd208928208966%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e208927208963%_)))
                                                        (_%$%tl208929208968%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e208927208963%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl208929208968%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#current-compile-boolean-context))
                                                            (_%simplify208911%_
                                                             (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self208908%_
                                    _%$%hd208922208950%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self208908%_
                                          _%$%hd208925208958%_))
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self208908%_
                                                _%$%hd208928208966%_))
                                             '())))))
                    (cons 'if
                          (cons (let ((__tmp216054
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self208908%_
                                            _%$%hd208922208950%_)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp216054
                                   gxc#current-compile-boolean-context
                                   '#t))
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self208908%_
                                         _%$%hd208925208958%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self208908%_
                                               _%$%hd208928208966%_))
                                            '())))))
                (_%$%g208913208934%_ _%$%g208914208937%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g208913208934%_
                                                 _%$%g208914208937%_))))
                                        (_%$%g208913208934%_
                                         _%$%g208914208937%_))))
                                (_%$%g208913208934%_ _%$%g208914208937%_))))
                        (_%$%g208913208934%_ _%$%g208914208937%_)))))
            (_%$%g208912208993%_ _%stx208909%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self208856%_ _%stx208857%_)
        (let* ((_%$%g208859208872%_
                (lambda (_%$%g208860208869%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g208860208869%_))))
               (_%$%g208858208905%_
                (lambda (_%$%g208860208875%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g208860208875%_))
                      (let ((_%$%e208862208877%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g208860208875%_))))
                        (let ((_%$%hd208863208880%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e208862208877%_)))
                              (_%$%tl208864208882%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e208862208877%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl208864208882%_))
                              (let ((_%$%e208865208885%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl208864208882%_))))
                                (let ((_%$%hd208866208888%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e208865208885%_)))
                                      (_%$%tl208867208890%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e208865208885%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl208867208890%_))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-binding-id
                                         _%$%hd208866208888%_))
                                      (_%$%g208859208872%_
                                       _%$%g208860208875%_))))
                              (_%$%g208859208872%_ _%$%g208860208875%_))))
                      (_%$%g208859208872%_ _%$%g208860208875%_)))))
          (_%$%g208858208905%_ _%stx208857%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self208788%_ _%stx208789%_)
        (let* ((_%$%g208791208808%_
                (lambda (_%$%g208792208805%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g208792208805%_))))
               (_%$%g208790208853%_
                (lambda (_%$%g208792208811%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g208792208811%_))
                      (let ((_%$%e208795208813%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g208792208811%_))))
                        (let ((_%$%hd208796208816%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e208795208813%_)))
                              (_%$%tl208797208818%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e208795208813%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl208797208818%_))
                              (let ((_%$%e208798208821%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl208797208818%_))))
                                (let ((_%$%hd208799208824%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e208798208821%_)))
                                      (_%$%tl208800208826%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e208798208821%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl208800208826%_))
                                      (let ((_%$%e208801208829%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl208800208826%_))))
                                        (let ((_%$%hd208802208832%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e208801208829%_)))
                                              (_%$%tl208803208834%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e208801208829%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl208803208834%_))
                                              (cons 'set!
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#generate-runtime-binding-id
                                                             _%$%hd208799208824%_))
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self208788%_
                           _%$%hd208802208832%_))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g208791208808%_
                                               _%$%g208792208811%_))))
                                      (_%$%g208791208808%_
                                       _%$%g208792208811%_))))
                              (_%$%g208791208808%_ _%$%g208792208811%_))))
                      (_%$%g208791208808%_ _%$%g208792208811%_)))))
          (_%$%g208790208853%_ _%stx208789%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self208599%_ _%stx208600%_)
        (let* ((_%$%g208602208619%_
                (lambda (_%$%g208603208616%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g208603208616%_))))
               (_%$%g208601208785%_
                (lambda (_%$%g208603208622%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g208603208622%_))
                      (let ((_%$%e208606208624%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g208603208622%_))))
                        (let ((_%$%hd208607208627%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e208606208624%_)))
                              (_%$%tl208608208629%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e208606208624%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl208608208629%_))
                              (let ((_%$%e208609208632%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl208608208629%_))))
                                (let ((_%$%hd208610208635%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e208609208632%_)))
                                      (_%$%tl208611208637%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e208609208632%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl208611208637%_))
                                      (let ((_%$%e208612208640%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl208611208637%_))))
                                        (let ((_%$%hd208613208643%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e208612208640%_)))
                                              (_%$%tl208614208645%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e208612208640%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl208614208645%_))
                                              (if (gxc#current-compile-decls-unsafe?)
                                                  (cons '##structure-instance-of?
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__1 _%self208599%_ _%$%hd208613208643%_))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self208599%_
                               _%$%hd208610208635%_))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let _%lp208664%_ ((_%rest208667%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$%hd208610208635%_
                                    (cons _%$%hd208613208643%_ '())))
                             (_%bind208669%_ '())
                             (_%args208670%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%$%rest208671208679%_
                                                            _%rest208667%_)
                                                           (_%$%else208673208687%_
                                                            (lambda ()
                                                              (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%bind208669%_
                                  (cons '(declare (not safe))
                                        (cons (cons '##structure-instance-of?
                                                    _%args208670%_)
                                              '()))))))
                   (_%$%K208675208773%_
                    (lambda (_%rest208690%_ _%e208691%_)
                      (let* ((_%__stx215604215605%_ _%e208691%_)
                             (_%$%g208696208714%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx215604215605%_)))))
                        (let ((_%__kont215606215607%_
                               (lambda ()
                                 (_%lp208664%_
                                  _%rest208690%_
                                  _%bind208669%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e208691%_))
                                        _%args208670%_))))
                              (_%__kont215608215609%_
                               (lambda ()
                                 (_%lp208664%_
                                  _%rest208690%_
                                  _%bind208669%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e208691%_))
                                        _%args208670%_))))
                              (_%__kont215610215611%_
                               (lambda ()
                                 (let ((_%tmp208721%_
                                        (let ((__tmp216055
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__tmp))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp216055))))
                                   (_%lp208664%_
                                    _%rest208690%_
                                    (cons (cons _%tmp208721%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__0
                                                         _%e208691%_))
                                                      '()))
                                          _%bind208669%_)
                                    (cons _%tmp208721%_ _%args208670%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx215604215605%_))
                              (let ((_%$%e208698208752%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx215604215605%_))))
                                (let ((_%$%tl208700208757%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e208698208752%_)))
                                      (_%$%hd208699208755%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e208698208752%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd208699208755%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd208699208755%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl208700208757%_))
                                              (let ((_%$%e208701208760%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl208700208757%_))))
                                                (let ((_%$%tl208703208765%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e208701208760%_)))
                                                      (_%$%hd208702208763%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e208701208760%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl208703208765%_))
                                                      (_%__kont215606215607%_)
                                                      (_%__kont215610215611%_))))
                                              (_%__kont215610215611%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%$%hd208699208755%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl208700208757%_))
                                                  (let ((_%$%e208707208737%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl208700208757%_))))
                                                    (let ((_%$%tl208709208742%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e208707208737%_)))
                                                          (_%$%hd208708208740%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e208707208737%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl208709208742%_))
                                                          (_%__kont215608215609%_)
                                                          (_%__kont215610215611%_))))
                                                  (_%__kont215610215611%_))
                                              (_%__kont215610215611%_)))
                                      (_%__kont215610215611%_))))
                              (_%__kont215610215611%_)))))))
              (if (pair? _%$%rest208671208679%_)
                  (let ((_%$%hd208676208776%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest208671208679%_)))
                        (_%$%tl208677208778%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest208671208679%_))))
                    (let* ((_%e208781%_ _%$%hd208676208776%_)
                           (_%rest208783%_ _%$%tl208677208778%_))
                      (_%$%K208675208773%_ _%rest208783%_ _%e208781%_)))
                  (_%$%else208673208687%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g208602208619%_
                                               _%$%g208603208622%_))))
                                      (_%$%g208602208619%_
                                       _%$%g208603208622%_))))
                              (_%$%g208602208619%_ _%$%g208603208622%_))))
                      (_%$%g208602208619%_ _%$%g208603208622%_)))))
          (_%$%g208601208785%_ _%stx208600%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self208410%_ _%stx208411%_)
        (let* ((_%$%g208413208430%_
                (lambda (_%$%g208414208427%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g208414208427%_))))
               (_%$%g208412208596%_
                (lambda (_%$%g208414208433%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g208414208433%_))
                      (let ((_%$%e208417208435%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g208414208433%_))))
                        (let ((_%$%hd208418208438%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e208417208435%_)))
                              (_%$%tl208419208440%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e208417208435%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl208419208440%_))
                              (let ((_%$%e208420208443%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl208419208440%_))))
                                (let ((_%$%hd208421208446%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e208420208443%_)))
                                      (_%$%tl208422208448%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e208420208443%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl208422208448%_))
                                      (let ((_%$%e208423208451%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl208422208448%_))))
                                        (let ((_%$%hd208424208454%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e208423208451%_)))
                                              (_%$%tl208425208456%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e208423208451%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl208425208456%_))
                                              (if (gxc#current-compile-decls-unsafe?)
                                                  (cons '##structure-direct-instance-of?
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__1 _%self208410%_ _%$%hd208424208454%_))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self208410%_
                               _%$%hd208421208446%_))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let _%lp208475%_ ((_%rest208478%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$%hd208421208446%_
                                    (cons _%$%hd208424208454%_ '())))
                             (_%bind208480%_ '())
                             (_%args208481%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%$%rest208482208490%_
                                                            _%rest208478%_)
                                                           (_%$%else208484208498%_
                                                            (lambda ()
                                                              (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%bind208480%_
                                  (cons '(declare (not safe))
                                        (cons (cons '##structure-direct-instance-of?
                                                    _%args208481%_)
                                              '()))))))
                   (_%$%K208486208584%_
                    (lambda (_%rest208501%_ _%e208502%_)
                      (let* ((_%__stx215650215651%_ _%e208502%_)
                             (_%$%g208507208525%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx215650215651%_)))))
                        (let ((_%__kont215652215653%_
                               (lambda ()
                                 (_%lp208475%_
                                  _%rest208501%_
                                  _%bind208480%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e208502%_))
                                        _%args208481%_))))
                              (_%__kont215654215655%_
                               (lambda ()
                                 (_%lp208475%_
                                  _%rest208501%_
                                  _%bind208480%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e208502%_))
                                        _%args208481%_))))
                              (_%__kont215656215657%_
                               (lambda ()
                                 (let ((_%tmp208532%_
                                        (let ((__tmp216056
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__tmp))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp216056))))
                                   (_%lp208475%_
                                    _%rest208501%_
                                    (cons (cons _%tmp208532%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__0
                                                         _%e208502%_))
                                                      '()))
                                          _%bind208480%_)
                                    (cons _%tmp208532%_ _%args208481%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx215650215651%_))
                              (let ((_%$%e208509208563%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx215650215651%_))))
                                (let ((_%$%tl208511208568%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e208509208563%_)))
                                      (_%$%hd208510208566%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e208509208563%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd208510208566%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd208510208566%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl208511208568%_))
                                              (let ((_%$%e208512208571%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl208511208568%_))))
                                                (let ((_%$%tl208514208576%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e208512208571%_)))
                                                      (_%$%hd208513208574%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e208512208571%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl208514208576%_))
                                                      (_%__kont215652215653%_)
                                                      (_%__kont215656215657%_))))
                                              (_%__kont215656215657%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%$%hd208510208566%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl208511208568%_))
                                                  (let ((_%$%e208518208548%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl208511208568%_))))
                                                    (let ((_%$%tl208520208553%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e208518208548%_)))
                                                          (_%$%hd208519208551%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e208518208548%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl208520208553%_))
                                                          (_%__kont215654215655%_)
                                                          (_%__kont215656215657%_))))
                                                  (_%__kont215656215657%_))
                                              (_%__kont215656215657%_)))
                                      (_%__kont215656215657%_))))
                              (_%__kont215656215657%_)))))))
              (if (pair? _%$%rest208482208490%_)
                  (let ((_%$%hd208487208587%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest208482208490%_)))
                        (_%$%tl208488208589%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest208482208490%_))))
                    (let* ((_%e208592%_ _%$%hd208487208587%_)
                           (_%rest208594%_ _%$%tl208488208589%_))
                      (_%$%K208486208584%_ _%rest208594%_ _%e208592%_)))
                  (_%$%else208484208498%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g208413208430%_
                                               _%$%g208414208433%_))))
                                      (_%$%g208413208430%_
                                       _%$%g208414208433%_))))
                              (_%$%g208413208430%_ _%$%g208414208433%_))))
                      (_%$%g208413208430%_ _%$%g208414208433%_)))))
          (_%$%g208412208596%_ _%stx208411%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self208326%_ _%stx208327%_)
        (let* ((_%$%g208329208350%_
                (lambda (_%$%g208330208347%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g208330208347%_))))
               (_%$%g208328208407%_
                (lambda (_%$%g208330208353%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g208330208353%_))
                      (let ((_%$%e208334208355%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g208330208353%_))))
                        (let ((_%$%hd208335208358%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e208334208355%_)))
                              (_%$%tl208336208360%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e208334208355%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl208336208360%_))
                              (let ((_%$%e208337208363%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl208336208360%_))))
                                (let ((_%$%hd208338208366%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e208337208363%_)))
                                      (_%$%tl208339208368%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e208337208363%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl208339208368%_))
                                      (let ((_%$%e208340208371%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl208339208368%_))))
                                        (let ((_%$%hd208341208374%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e208340208371%_)))
                                              (_%$%tl208342208376%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e208340208371%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl208342208376%_))
                                              (let ((_%$%e208343208379%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl208342208376%_))))
                                                (let ((_%$%hd208344208382%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e208343208379%_)))
                                                      (_%$%tl208345208384%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e208343208379%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl208345208384%_))
                                                      (cons '##structure-ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#compile-e__1
                             _%self208326%_
                             _%$%hd208344208382%_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _%self208326%_
                                   _%$%hd208341208374%_))
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self208326%_
                                         _%$%hd208338208366%_))
                                      (cons ''#f '())))))
              (_%$%g208329208350%_ _%$%g208330208353%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g208329208350%_
                                               _%$%g208330208353%_))))
                                      (_%$%g208329208350%_
                                       _%$%g208330208353%_))))
                              (_%$%g208329208350%_ _%$%g208330208353%_))))
                      (_%$%g208329208350%_ _%$%g208330208353%_)))))
          (_%$%g208328208407%_ _%stx208327%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self208226%_ _%stx208227%_)
        (let* ((_%$%g208229208254%_
                (lambda (_%$%g208230208251%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g208230208251%_))))
               (_%$%g208228208323%_
                (lambda (_%$%g208230208257%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g208230208257%_))
                      (let ((_%$%e208235208259%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g208230208257%_))))
                        (let ((_%$%hd208236208262%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e208235208259%_)))
                              (_%$%tl208237208264%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e208235208259%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl208237208264%_))
                              (let ((_%$%e208238208267%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl208237208264%_))))
                                (let ((_%$%hd208239208270%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e208238208267%_)))
                                      (_%$%tl208240208272%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e208238208267%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl208240208272%_))
                                      (let ((_%$%e208241208275%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl208240208272%_))))
                                        (let ((_%$%hd208242208278%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e208241208275%_)))
                                              (_%$%tl208243208280%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e208241208275%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl208243208280%_))
                                              (let ((_%$%e208244208283%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl208243208280%_))))
                                                (let ((_%$%hd208245208286%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e208244208283%_)))
                                                      (_%$%tl208246208288%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e208244208283%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl208246208288%_))
                                                      (let ((_%$%e208247208291%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl208246208288%_))))
                (let ((_%$%hd208248208294%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e208247208291%_)))
                      (_%$%tl208249208296%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e208247208291%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl208249208296%_))
                      (cons '##structure-set!
                            (cons (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self208226%_
                                     _%$%hd208245208286%_))
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self208226%_
                                           _%$%hd208248208294%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self208226%_
                                                 _%$%hd208242208278%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self208226%_
                                                       _%$%hd208239208270%_))
                                                    (cons ''#f '()))))))
                      (_%$%g208229208254%_ _%$%g208230208257%_))))
              (_%$%g208229208254%_ _%$%g208230208257%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g208229208254%_
                                               _%$%g208230208257%_))))
                                      (_%$%g208229208254%_
                                       _%$%g208230208257%_))))
                              (_%$%g208229208254%_ _%$%g208230208257%_))))
                      (_%$%g208229208254%_ _%$%g208230208257%_)))))
          (_%$%g208228208323%_ _%stx208227%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self208142%_ _%stx208143%_)
        (let* ((_%$%g208145208166%_
                (lambda (_%$%g208146208163%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g208146208163%_))))
               (_%$%g208144208223%_
                (lambda (_%$%g208146208169%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g208146208169%_))
                      (let ((_%$%e208150208171%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g208146208169%_))))
                        (let ((_%$%hd208151208174%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e208150208171%_)))
                              (_%$%tl208152208176%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e208150208171%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl208152208176%_))
                              (let ((_%$%e208153208179%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl208152208176%_))))
                                (let ((_%$%hd208154208182%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e208153208179%_)))
                                      (_%$%tl208155208184%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e208153208179%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl208155208184%_))
                                      (let ((_%$%e208156208187%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl208155208184%_))))
                                        (let ((_%$%hd208157208190%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e208156208187%_)))
                                              (_%$%tl208158208192%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e208156208187%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl208158208192%_))
                                              (let ((_%$%e208159208195%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl208158208192%_))))
                                                (let ((_%$%hd208160208198%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e208159208195%_)))
                                                      (_%$%tl208161208200%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e208159208195%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl208161208200%_))
                                                      (cons '##direct-structure-ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#compile-e__1
                             _%self208142%_
                             _%$%hd208160208198%_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _%self208142%_
                                   _%$%hd208157208190%_))
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self208142%_
                                         _%$%hd208154208182%_))
                                      (cons ''#f '())))))
              (_%$%g208145208166%_ _%$%g208146208169%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g208145208166%_
                                               _%$%g208146208169%_))))
                                      (_%$%g208145208166%_
                                       _%$%g208146208169%_))))
                              (_%$%g208145208166%_ _%$%g208146208169%_))))
                      (_%$%g208145208166%_ _%$%g208146208169%_)))))
          (_%$%g208144208223%_ _%stx208143%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self208042%_ _%stx208043%_)
        (let* ((_%$%g208045208070%_
                (lambda (_%$%g208046208067%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g208046208067%_))))
               (_%$%g208044208139%_
                (lambda (_%$%g208046208073%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g208046208073%_))
                      (let ((_%$%e208051208075%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g208046208073%_))))
                        (let ((_%$%hd208052208078%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e208051208075%_)))
                              (_%$%tl208053208080%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e208051208075%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl208053208080%_))
                              (let ((_%$%e208054208083%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl208053208080%_))))
                                (let ((_%$%hd208055208086%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e208054208083%_)))
                                      (_%$%tl208056208088%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e208054208083%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl208056208088%_))
                                      (let ((_%$%e208057208091%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl208056208088%_))))
                                        (let ((_%$%hd208058208094%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e208057208091%_)))
                                              (_%$%tl208059208096%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e208057208091%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl208059208096%_))
                                              (let ((_%$%e208060208099%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl208059208096%_))))
                                                (let ((_%$%hd208061208102%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e208060208099%_)))
                                                      (_%$%tl208062208104%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e208060208099%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl208062208104%_))
                                                      (let ((_%$%e208063208107%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl208062208104%_))))
                (let ((_%$%hd208064208110%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e208063208107%_)))
                      (_%$%tl208065208112%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e208063208107%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl208065208112%_))
                      (cons '##direct-structure-set!
                            (cons (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self208042%_
                                     _%$%hd208061208102%_))
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self208042%_
                                           _%$%hd208064208110%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self208042%_
                                                 _%$%hd208058208094%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self208042%_
                                                       _%$%hd208055208086%_))
                                                    (cons ''#f '()))))))
                      (_%$%g208045208070%_ _%$%g208046208073%_))))
              (_%$%g208045208070%_ _%$%g208046208073%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g208045208070%_
                                               _%$%g208046208073%_))))
                                      (_%$%g208045208070%_
                                       _%$%g208046208073%_))))
                              (_%$%g208045208070%_ _%$%g208046208073%_))))
                      (_%$%g208045208070%_ _%$%g208046208073%_)))))
          (_%$%g208044208139%_ _%stx208043%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self207837%_ _%stx207838%_)
        (let* ((_%$%g207840207861%_
                (lambda (_%$%g207841207858%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g207841207858%_))))
               (_%$%g207839208039%_
                (lambda (_%$%g207841207864%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g207841207864%_))
                      (let ((_%$%e207845207866%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g207841207864%_))))
                        (let ((_%$%hd207846207869%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e207845207866%_)))
                              (_%$%tl207847207871%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e207845207866%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl207847207871%_))
                              (let ((_%$%e207848207874%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl207847207871%_))))
                                (let ((_%$%hd207849207877%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e207848207874%_)))
                                      (_%$%tl207850207879%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e207848207874%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl207850207879%_))
                                      (let ((_%$%e207851207882%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl207850207879%_))))
                                        (let ((_%$%hd207852207885%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e207851207882%_)))
                                              (_%$%tl207853207887%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e207851207882%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl207853207887%_))
                                              (let ((_%$%e207854207890%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl207853207887%_))))
                                                (let ((_%$%hd207855207893%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e207854207890%_)))
                                                      (_%$%tl207856207895%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e207854207890%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl207856207895%_))
                                                      (if (gxc#current-compile-decls-unsafe?)
                                                          (cons '##unchecked-structure-ref
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self207837%_
                                 _%$%hd207855207893%_))
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self207837%_
                                       _%$%hd207852207885%_))
                                    (cons ''#f (cons ''#f '())))))
                  (let _%lp207918%_ ((_%rest207921%_
                                      (cons _%$%hd207852207885%_
                                            (cons _%$%hd207855207893%_ '())))
                                     (_%bind207923%_ '())
                                     (_%args207924%_ '()))
                    (let* ((_%$%rest207925207933%_ _%rest207921%_)
                           (_%$%else207927207941%_
                            (lambda ()
                              (cons 'let
                                    (cons _%bind207923%_
                                          (cons '(declare (not safe))
                                                (cons (cons '##unchecked-structure-ref
                                                            (let ((__tmp216057
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons ''#f (cons ''#f '()))))
                      (declare (not safe))
                      (##append _%args207924%_ __tmp216057)))
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (_%$%K207929208027%_
                            (lambda (_%rest207944%_ _%e207945%_)
                              (let* ((_%__stx215696215697%_ _%e207945%_)
                                     (_%$%g207950207968%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx215696215697%_)))))
                                (let ((_%__kont215698215699%_
                                       (lambda ()
                                         (_%lp207918%_
                                          _%rest207944%_
                                          _%bind207923%_
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _%e207945%_))
                                                _%args207924%_))))
                                      (_%__kont215700215701%_
                                       (lambda ()
                                         (_%lp207918%_
                                          _%rest207944%_
                                          _%bind207923%_
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _%e207945%_))
                                                _%args207924%_))))
                                      (_%__kont215702215703%_
                                       (lambda ()
                                         (let ((_%tmp207975%_
                                                (let ((__tmp216058
                                                       (let ()
                                                         (declare (not safe))
                                                         (##gensym '__tmp))))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp216058))))
                                           (_%lp207918%_
                                            _%rest207944%_
                                            (cons (cons _%tmp207975%_
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _%e207945%_))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%bind207923%_)
                                            (cons _%tmp207975%_
                                                  _%args207924%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx215696215697%_))
                                      (let ((_%$%e207952208006%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx215696215697%_))))
                                        (let ((_%$%tl207954208011%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e207952208006%_)))
                                              (_%$%hd207953208009%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e207952208006%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%$%hd207953208009%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#ref
                                                     _%$%hd207953208009%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl207954208011%_))
                                                      (let ((_%$%e207955208014%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl207954208011%_))))
                (let ((_%$%tl207957208019%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e207955208014%_)))
                      (_%$%hd207956208017%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e207955208014%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl207957208019%_))
                      (_%__kont215698215699%_)
                      (_%__kont215702215703%_))))
              (_%__kont215702215703%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#quote
                                                         _%$%hd207953208009%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl207954208011%_))
                                                          (let ((_%$%e207961207991%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl207954208011%_))))
                    (let ((_%$%tl207963207996%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e207961207991%_)))
                          (_%$%hd207962207994%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e207961207991%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl207963207996%_))
                          (_%__kont215700215701%_)
                          (_%__kont215702215703%_))))
                  (_%__kont215702215703%_))
              (_%__kont215702215703%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont215702215703%_))))
                                      (_%__kont215702215703%_)))))))
                      (if (pair? _%$%rest207925207933%_)
                          (let ((_%$%hd207930208030%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%rest207925207933%_)))
                                (_%$%tl207931208032%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%rest207925207933%_))))
                            (let* ((_%e208035%_ _%$%hd207930208030%_)
                                   (_%rest208037%_ _%$%tl207931208032%_))
                              (_%$%K207929208027%_
                               _%rest208037%_
                               _%e208035%_)))
                          (_%$%else207927207941%_)))))
              (_%$%g207840207861%_ _%$%g207841207864%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g207840207861%_
                                               _%$%g207841207864%_))))
                                      (_%$%g207840207861%_
                                       _%$%g207841207864%_))))
                              (_%$%g207840207861%_ _%$%g207841207864%_))))
                      (_%$%g207840207861%_ _%$%g207841207864%_)))))
          (_%$%g207839208039%_ _%stx207838%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self207616%_ _%stx207617%_)
        (let* ((_%$%g207619207644%_
                (lambda (_%$%g207620207641%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g207620207641%_))))
               (_%$%g207618207834%_
                (lambda (_%$%g207620207647%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g207620207647%_))
                      (let ((_%$%e207625207649%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g207620207647%_))))
                        (let ((_%$%hd207626207652%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e207625207649%_)))
                              (_%$%tl207627207654%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e207625207649%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl207627207654%_))
                              (let ((_%$%e207628207657%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl207627207654%_))))
                                (let ((_%$%hd207629207660%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e207628207657%_)))
                                      (_%$%tl207630207662%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e207628207657%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl207630207662%_))
                                      (let ((_%$%e207631207665%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl207630207662%_))))
                                        (let ((_%$%hd207632207668%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e207631207665%_)))
                                              (_%$%tl207633207670%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e207631207665%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl207633207670%_))
                                              (let ((_%$%e207634207673%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl207633207670%_))))
                                                (let ((_%$%hd207635207676%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e207634207673%_)))
                                                      (_%$%tl207636207678%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e207634207673%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl207636207678%_))
                                                      (let ((_%$%e207637207681%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl207636207678%_))))
                (let ((_%$%hd207638207684%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e207637207681%_)))
                      (_%$%tl207639207686%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e207637207681%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl207639207686%_))
                      (if (gxc#current-compile-decls-unsafe?)
                          (cons '##unchecked-structure-set!
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self207616%_
                                         _%$%hd207635207676%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self207616%_
                                               _%$%hd207638207684%_))
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self207616%_
                                                     _%$%hd207632207668%_))
                                                  (cons ''#f
                                                        (cons ''#f '()))))))
                          (let _%lp207713%_ ((_%rest207716%_
                                              (cons _%$%hd207632207668%_
                                                    (cons _%$%hd207638207684%_
                                                          (cons _%$%hd207635207676%_
                                                                '()))))
                                             (_%bind207718%_ '())
                                             (_%args207719%_ '()))
                            (let* ((_%$%rest207720207728%_ _%rest207716%_)
                                   (_%$%else207722207736%_
                                    (lambda ()
                                      (cons 'let
                                            (cons _%bind207718%_
                                                  (cons '(declare (not safe))
                                                        (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp216059 (cons ''#f (cons ''#f '()))))
                              (declare (not safe))
                              (##append _%args207719%_ __tmp216059)))
                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%$%K207724207822%_
                                    (lambda (_%rest207739%_ _%e207740%_)
                                      (let* ((_%__stx215742215743%_
                                              _%e207740%_)
                                             (_%$%g207745207763%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%__stx215742215743%_)))))
                                        (let ((_%__kont215744215745%_
                                               (lambda ()
                                                 (_%lp207713%_
                                                  _%rest207739%_
                                                  _%bind207718%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e207740%_))
                                                        _%args207719%_))))
                                              (_%__kont215746215747%_
                                               (lambda ()
                                                 (_%lp207713%_
                                                  _%rest207739%_
                                                  _%bind207718%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e207740%_))
                                                        _%args207719%_))))
                                              (_%__kont215748215749%_
                                               (lambda ()
                                                 (let ((_%tmp207770%_
                                                        (let ((__tmp216060
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##gensym '__tmp))))
                  (declare (not safe))
                  (make-symbol__0 __tmp216060))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%lp207713%_
                                                    _%rest207739%_
                                                    (cons (cons _%tmp207770%_
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gxc#compile-e__0 _%e207740%_))
                              '()))
                  _%bind207718%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%tmp207770%_
                                                          _%args207719%_))))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%__stx215742215743%_))
                                              (let ((_%$%e207747207801%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%__stx215742215743%_))))
                                                (let ((_%$%tl207749207806%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e207747207801%_)))
                                                      (_%$%hd207748207804%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e207747207801%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%$%hd207748207804%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%$%hd207748207804%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl207749207806%_))
                      (let ((_%$%e207750207809%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl207749207806%_))))
                        (let ((_%$%tl207752207814%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e207750207809%_)))
                              (_%$%hd207751207812%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e207750207809%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl207752207814%_))
                              (_%__kont215744215745%_)
                              (_%__kont215748215749%_))))
                      (_%__kont215748215749%_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-eq? '%#quote _%$%hd207748207804%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl207749207806%_))
                          (let ((_%$%e207756207786%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl207749207806%_))))
                            (let ((_%$%tl207758207791%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e207756207786%_)))
                                  (_%$%hd207757207789%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e207756207786%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl207758207791%_))
                                  (_%__kont215746215747%_)
                                  (_%__kont215748215749%_))))
                          (_%__kont215748215749%_))
                      (_%__kont215748215749%_)))
              (_%__kont215748215749%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont215748215749%_)))))))
                              (if (pair? _%$%rest207720207728%_)
                                  (let ((_%$%hd207725207825%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%rest207720207728%_)))
                                        (_%$%tl207726207827%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%rest207720207728%_))))
                                    (let* ((_%e207830%_ _%$%hd207725207825%_)
                                           (_%rest207832%_
                                            _%$%tl207726207827%_))
                                      (_%$%K207724207822%_
                                       _%rest207832%_
                                       _%e207830%_)))
                                  (_%$%else207722207736%_)))))
                      (_%$%g207619207644%_ _%$%g207620207647%_))))
              (_%$%g207619207644%_ _%$%g207620207647%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g207619207644%_
                                               _%$%g207620207647%_))))
                                      (_%$%g207619207644%_
                                       _%$%g207620207647%_))))
                              (_%$%g207619207644%_ _%$%g207620207647%_))))
                      (_%$%g207619207644%_ _%$%g207620207647%_)))))
          (_%$%g207618207834%_ _%stx207617%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self207455%_ _%stx207456%_)
        (letrec ((_%import-set-template207458%_
                  (lambda (_%in207561%_ _%phi207562%_)
                    (let ((_%iphi207564%_
                           (fx+ _%phi207562%_
                                (##direct-structure-ref
                                 _%in207561%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports207565%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in207561%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp207567%_ ((_%rest207569%_ _%imports207565%_)
                                         (_%r207570%_ '()))
                        (let* ((_%$%rest207571207579%_ _%rest207569%_)
                               (_%$%else207573207587%_ (lambda () _%r207570%_))
                               (_%$%K207575207604%_
                                (lambda (_%rest207590%_ _%in207591%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in207591%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi207564%_))
                                          (_%lp207567%_
                                           _%rest207590%_
                                           (cons _%in207591%_ _%r207570%_))
                                          (_%lp207567%_
                                           _%rest207590%_
                                           _%r207570%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in207591%_
                                             'gx#module-import::t))
                                          (let ((_%iphi207595%_
                                                 (fx+ _%phi207562%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in207591%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi207595%_))
                                                (_%lp207567%_
                                                 _%rest207590%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in207591%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r207570%_))
                                                (_%lp207567%_
                                                 _%rest207590%_
                                                 _%r207570%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in207591%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi207598%_
                                                     (fx+ _%iphi207564%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in207591%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi207598%_))
                                                    (_%lp207567%_
                                                     _%rest207590%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in207591%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r207570%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi207598%_))
                                                        (_%lp207567%_
                                                         _%rest207590%_
                                                         (let ((__tmp216061
                                                                (_%import-set-template207458%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in207591%_
                         _%iphi207564%_)))
                   (declare (not safe))
                   (foldl__0 cons _%r207570%_ __tmp216061)))
                (_%lp207567%_ _%rest207590%_ _%r207570%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp207567%_
                                               _%rest207590%_
                                               _%r207570%_)))))))
                          (if (pair? _%$%rest207571207579%_)
                              (let ((_%$%hd207576207607%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest207571207579%_)))
                                    (_%$%tl207577207609%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest207571207579%_))))
                                (let* ((_%in207612%_ _%$%hd207576207607%_)
                                       (_%rest207614%_ _%$%tl207577207609%_))
                                  (_%$%K207575207604%_
                                   _%rest207614%_
                                   _%in207612%_)))
                              (_%$%else207573207587%_))))))))
          (let* ((_%$%g207460207470%_
                  (lambda (_%$%g207461207467%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g207461207467%_))))
                 (_%$%g207459207558%_
                  (lambda (_%$%g207461207473%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g207461207473%_))
                        (let ((_%$%e207463207475%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g207461207473%_))))
                          (let ((_%$%hd207464207478%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e207463207475%_)))
                                (_%$%tl207465207480%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e207463207475%_))))
                            (let ((_%ht207494%_
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq))))
                              (let _%lp207496%_ ((_%rest207498%_
                                                  _%$%tl207465207480%_)
                                                 (_%loads207499%_ '()))
                                (letrec ((_%K207501%_
                                          (lambda (_%ctx207551%_
                                                   _%rest207552%_)
                                            (let ((_%id207554%_
                                                   (##structure-ref
                                                    _%ctx207551%_
                                                    '1
                                                    gx#expander-context::t
                                                    '#f)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__hash-get
                                                     _%ht207494%_
                                                     _%id207554%_))
                                                  (_%lp207496%_
                                                   _%rest207552%_
                                                   _%loads207499%_)
                                                  (let ((_%rt207556%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#module-id->path-string
                                                            _%id207554%_))))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht207494%_
                                                       _%id207554%_
                                                       _%rt207556%_))
                                                    (_%lp207496%_
                                                     _%rest207552%_
                                                     (cons _%rt207556%_
                                                           _%loads207499%_))))))))
                                  (let* ((_%$%rest207502207510%_
                                          _%rest207498%_)
                                         (_%$%else207504207522%_
                                          (lambda ()
                                            (cons 'begin
                                                  (let ((__tmp216063
                                                         (lambda (_%$%g207517207519%_)
                                                           (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g207517207519%_)))
                (__tmp216062 (reverse _%loads207499%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (##map __tmp216063
                                                           __tmp216062)))))
                                         (_%$%K207506207539%_
                                          (lambda (_%rest207525%_ _%in207526%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-instance-of?
                                                   _%in207526%_
                                                   'gx#module-context::t))
                                                (_%K207501%_
                                                 _%in207526%_
                                                 _%rest207525%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##structure-direct-instance-of?
                                                       _%in207526%_
                                                       'gx#module-import::t))
                                                    (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%in207526%_
                            '3
                            '#f
                            '#f)))
                (_%K207501%_
                 (##direct-structure-ref
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%in207526%_ '1 '#f '#f))
                  '1
                  gx#module-export::t
                  '#f)
                 _%rest207525%_)
                (_%lp207496%_ _%rest207525%_ _%loads207499%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           _%in207526%_
                                                           'gx#import-set::t))
                                                        (let ((_%phi207531%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref _%in207526%_ '2 '#f '#f))))
                  (if (fxzero? _%phi207531%_)
                      (_%K207501%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%in207526%_ '1 '#f '#f))
                       _%rest207525%_)
                      (if (fxpositive? _%phi207531%_)
                          (let ((_%deps207535%_
                                 (_%import-set-template207458%_
                                  _%in207526%_
                                  '0)))
                            (_%lp207496%_
                             (let ()
                               (declare (not safe))
                               (foldl__0 cons _%rest207525%_ _%deps207535%_))
                             _%loads207499%_))
                          (_%lp207496%_ _%rest207525%_ _%loads207499%_))))
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"Unexpected import"
                   _%stx207456%_
                   _%in207526%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%$%rest207502207510%_)
                                        (let ((_%$%hd207507207542%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%rest207502207510%_)))
                                              (_%$%tl207508207544%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%rest207502207510%_))))
                                          (let* ((_%in207547%_
                                                  _%$%hd207507207542%_)
                                                 (_%rest207549%_
                                                  _%$%tl207508207544%_))
                                            (_%$%K207506207539%_
                                             _%rest207549%_
                                             _%in207547%_)))
                                        (_%$%else207504207522%_))))))))
                        (_%$%g207460207470%_ _%$%g207461207473%_)))))
            (_%$%g207459207558%_ _%stx207456%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self207269%_ _%stx207270%_)
        (letrec ((_%add-lift!207272%_
                  (lambda (_%expr207453%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr207453%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote207273%_
                  (lambda (_%id207450%_ _%marks207451%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id207450%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks207451%_
                                                        '()))))))))
                 (_%generate-simple207274%_
                  (lambda (_%stxq207445%_)
                    (let ((_%gid207447%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid207448%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%stxq207445%_))))
                      (_%add-lift!207272%_
                       (cons 'define
                             (cons _%gid207447%_
                                   (cons (_%generate-syntax-quote207273%_
                                          _%qid207448%_
                                          ''())
                                         '()))))
                      (let ((__tmp216064
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp216064 _%stxq207445%_ _%gid207447%_))
                      _%gid207447%_)))
                 (_%generate-serialized207275%_
                  (lambda (_%stxq207435%_ _%marks207436%_)
                    (let* ((_%mark-refs207438%_
                            (map _%generate-mark207276%_ _%marks207436%_))
                           (_%gid207440%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid207442%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier
                               _%stxq207435%_))))
                      (_%add-lift!207272%_
                       (cons 'define
                             (cons _%gid207440%_
                                   (cons (_%generate-syntax-quote207273%_
                                          _%qid207442%_
                                          (cons 'list _%mark-refs207438%_))
                                         '()))))
                      (let ((__tmp216065
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp216065 _%stxq207435%_ _%gid207440%_))
                      _%gid207440%_)))
                 (_%generate-mark207276%_
                  (lambda (_%mark207420%_)
                    (let ((_%$e207422%_
                           (let ((__tmp216066
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp216066 _%mark207420%_))))
                      (if _%$e207422%_
                          _%$e207422%_
                          (let* ((_%gid207426%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr207428%_
                                  (_%serialize-mark207277%_ _%mark207420%_))
                                 (_%ctx207430%_
                                  (let ((__tmp216067
                                         (##structure-ref
                                          _%mark207420%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp216067)))
                                 (_%ctx-ref207432%_
                                  (if (eq? _%ctx207430%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref207278%_
                                                               _%ctx207430%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp216068
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp216068
                               _%mark207420%_
                               _%gid207426%_))
                            (_%add-lift!207272%_
                             (cons 'define
                                   (cons _%gid207426%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr207428%_ '()))
                   (cons _%ctx-ref207432%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid207426%_)))))
                 (_%serialize-mark207277%_
                  (lambda (_%mark207368%_)
                    (letrec ((_%quote-e207370%_
                              (lambda (_%sym207418%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym207418%_))
                                    _%sym207418%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym207418%_))))))
                      (let* ((_%$%mark207371207380%_ _%mark207368%_)
                             (_%$%E207373207383%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%$%mark207371207380%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%$%K207374207395%_
                              (lambda (_%trace207386%_
                                       _%phi207387%_
                                       _%ctx207388%_
                                       _%subst207389%_)
                                (let ((_%subs207391%_
                                       (if _%subst207389%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst207389%_))
                                           '())))
                                  (cons _%phi207387%_
                                        (let ((__tmp216069
                                               (lambda (_%pair207393%_)
                                                 (cons (_%quote-e207370%_
                                                        (car _%pair207393%_))
                                                       (_%quote-e207370%_
                                                        (cdr _%pair207393%_))))))
                                          (declare (not safe))
                                          (##map __tmp216069
                                                 _%subs207391%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%$%mark207371207380%_
                               'gx#expander-mark::t))
                            (let* ((_%$%e207375207398%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%mark207371207380%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst207401%_ _%$%e207375207398%_)
                                   (_%$%e207376207403%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%mark207371207380%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx207406%_ _%$%e207376207403%_)
                                   (_%$%e207377207408%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%mark207371207380%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi207411%_ _%$%e207377207408%_)
                                   (_%$%e207378207413%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%mark207371207380%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace207416%_ _%$%e207378207413%_))
                              (_%$%K207374207395%_
                               _%trace207416%_
                               _%phi207411%_
                               _%ctx207406%_
                               _%subst207401%_))
                            (_%$%E207373207383%_))))))
                 (_%context-ref207278%_
                  (lambda (_%ctx207355%_)
                    (if (let ((__tmp216070
                               (##structure-ref
                                _%ctx207355%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp216070
                           'gx#module-context::t))
                        (let ((_%ctx-ref207357%_
                               (_%context-ref-nested207280%_ _%ctx207355%_))
                              (_%ctx-origin207358%_
                               (_%context-ref-origin207279%_ _%ctx207355%_))
                              (_%origin207359%_
                               (_%context-ref-origin207279%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin207359%_ _%ctx-origin207358%_)
                              (let ((_%ref207361%_
                                     (_%context-ref-nested207280%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp207363%_ ((_%ref207365%_
                                                    (cdr _%ref207361%_))
                                                   (_%ctx-ref207366%_
                                                    (cdr _%ctx-ref207357%_)))
                                  (if (and (pair? _%ref207365%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref207365%_))
                                                (car _%ctx-ref207366%_)))
                                      (_%lp207363%_
                                       (cdr _%ref207365%_)
                                       (cdr _%ctx-ref207366%_))
                                      (cons '#f _%ctx-ref207366%_))))
                              _%ctx-ref207357%_))
                        (let ((__tmp216071
                               (##structure-ref
                                _%ctx207355%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp216071)))))
                 (_%context-ref-origin207279%_
                  (lambda (_%ctx207347%_)
                    (let _%lp207349%_ ((_%ctx207351%_ _%ctx207347%_))
                      (let ((_%super207353%_
                             (##structure-ref
                              _%ctx207351%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super207353%_
                               'gx#module-context::t))
                            (_%lp207349%_ _%super207353%_)
                            _%ctx207351%_)))))
                 (_%context-ref-nested207280%_
                  (lambda (_%ctx207338%_)
                    (let _%lp207340%_ ((_%ctx207342%_ _%ctx207338%_)
                                       (_%r207343%_ '()))
                      (let ((_%super207345%_
                             (##structure-ref
                              _%ctx207342%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super207345%_
                               'gx#module-context::t))
                            (_%lp207340%_
                             _%super207345%_
                             (cons (car (##structure-ref
                                         _%ctx207342%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r207343%_))
                            (cons (let ((__tmp216072
                                         (##structure-ref
                                          _%ctx207342%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp216072))
                                  _%r207343%_)))))))
          (let* ((_%$%g207282207295%_
                  (lambda (_%$%g207283207292%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g207283207292%_))))
                 (_%$%g207281207335%_
                  (lambda (_%$%g207283207298%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g207283207298%_))
                        (let ((_%$%e207285207300%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g207283207298%_))))
                          (let ((_%$%hd207286207303%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e207285207300%_)))
                                (_%$%tl207287207305%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e207285207300%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl207287207305%_))
                                (let ((_%$%e207288207308%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl207287207305%_))))
                                  (let ((_%$%hd207289207311%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e207288207308%_)))
                                        (_%$%tl207290207313%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e207288207308%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl207290207313%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%$%hd207289207311%_))
                                            (let ((_%$e207329%_
                                                   (let ((__tmp216073
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-identifiers))))
                                                     (declare (not safe))
                                                     (hash-get
                                                      __tmp216073
                                                      _%$%hd207289207311%_))))
                                              (if _%$e207329%_
                                                  _%$e207329%_
                                                  (let ((_%marks207333%_
                                                         (##direct-structure-ref
                                                          _%$%hd207289207311%_
                                                          '4
                                                          gx#syntax-quote::t
                                                          '#f)))
                                                    (if (null? _%marks207333%_)
                                                        (_%generate-simple207274%_
                                                         _%$%hd207289207311%_)
                                                        (_%generate-serialized207275%_
                                                         _%$%hd207289207311%_
                                                         _%marks207333%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot quote non-identifier syntax"
                                               _%$%hd207289207311%_)))
                                        (_%$%g207282207295%_
                                         _%$%g207283207298%_))))
                                (_%$%g207282207295%_ _%$%g207283207298%_))))
                        (_%$%g207282207295%_ _%$%g207283207298%_)))))
            (_%$%g207281207335%_ _%stx207270%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self207201%_ _%stx207202%_)
        (let* ((_%$%g207204207221%_
                (lambda (_%$%g207205207218%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g207205207218%_))))
               (_%$%g207203207266%_
                (lambda (_%$%g207205207224%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g207205207224%_))
                      (let ((_%$%e207208207226%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g207205207224%_))))
                        (let ((_%$%hd207209207229%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e207208207226%_)))
                              (_%$%tl207210207231%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e207208207226%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl207210207231%_))
                              (let ((_%$%e207211207234%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl207210207231%_))))
                                (let ((_%$%hd207212207237%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e207211207234%_)))
                                      (_%$%tl207213207239%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e207211207234%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl207213207239%_))
                                      (let ((_%$%e207214207242%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl207213207239%_))))
                                        (let ((_%$%hd207215207245%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e207214207242%_)))
                                              (_%$%tl207216207247%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e207214207242%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl207216207247%_))
                                              (cons 'define
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%hd207212207237%_))
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self207201%_
                           _%$%hd207215207245%_))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g207204207221%_
                                               _%$%g207205207224%_))))
                                      (_%$%g207204207221%_
                                       _%$%g207205207224%_))))
                              (_%$%g207204207221%_ _%$%g207205207224%_))))
                      (_%$%g207204207221%_ _%$%g207205207224%_)))))
          (_%$%g207203207266%_ _%stx207202%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self207150%_ _%stx207151%_)
        (let* ((_%$%g207153207163%_
                (lambda (_%$%g207154207160%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g207154207160%_))))
               (_%$%g207152207198%_
                (lambda (_%$%g207154207166%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g207154207166%_))
                      (let ((_%$%e207156207168%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g207154207166%_))))
                        (let ((_%$%hd207157207171%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e207156207168%_)))
                              (_%$%tl207158207173%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e207156207168%_))))
                          (let* ((_%c-body207190%_
                                  (map (lambda (_%$%g207185207187%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self207150%_
                                            _%$%g207185207187%_)))
                                       _%$%tl207158207173%_))
                                 (_%c-body207195%_
                                  (let ((__tmp216074
                                         (lambda (_%$obj207192%_)
                                           (not (eq? _%$obj207192%_
                                                     '#!void)))))
                                    (declare (not safe))
                                    (##filter __tmp216074 _%c-body207190%_))))
                            (cons '%#begin _%c-body207195%_))))
                      (_%$%g207153207163%_ _%$%g207154207166%_)))))
          (_%$%g207152207198%_ _%stx207151%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self207055%_ _%stx207056%_)
        (let* ((_%$%g207058207068%_
                (lambda (_%$%g207059207065%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g207059207065%_))))
               (_%$%g207057207147%_
                (lambda (_%$%g207059207071%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g207059207071%_))
                      (let ((_%$%e207061207073%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g207059207071%_))))
                        (let ((_%$%hd207062207076%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e207061207073%_)))
                              (_%$%tl207063207078%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e207061207073%_))))
                          (let* ((_%phi207091%_
                                  (let ((__tmp216075
                                         (let ()
                                           (declare (not safe))
                                           (gx#current-expander-phi))))
                                    (declare (not safe))
                                    (##fx+ __tmp216075 '1)))
                                 (_%block207093%_
                                  (gxc#meta-state-begin-phi!
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self207055%_ 'state))
                                   _%phi207091%_))
                                 (_%compiled207096%_
                                  (let ((__tmp216076
                                         (lambda ()
                                           (gxc#apply-generate-meta-phi__%
                                            '#f
                                            (let ()
                                              (declare (not safe))
                                              (slot-ref__0
                                               _%self207055%_
                                               'state))
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     '%#begin))
                                                  _%$%tl207063207078%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp216076
                                     gx#current-expander-phi
                                     _%phi207091%_)))
                                 (_%$%g207099207109%_
                                  (lambda (_%$%g207100207106%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%$%g207100207106%_))))
                                 (_%$%g207098207144%_
                                  (lambda (_%$%g207100207112%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%g207100207112%_))
                                        (let ((_%$%e207102207114%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%g207100207112%_))))
                                          (let ((_%$%hd207103207117%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e207102207114%_)))
                                                (_%$%tl207104207119%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e207102207114%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd207103207117%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#begin
                                                       _%$%hd207103207117%_))
                                                    (let ((_%c-body207139%_
                                                           (filter (lambda (_%$obj207136%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (not (eq? _%$obj207136%_ '#!void)))
                           _%$%tl207104207119%_)))
              (if _%block207093%_
                  (cons '%#begin-syntax
                        (cons (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%block207093%_
                                                            '()))
                                                '())))
                              _%c-body207139%_))
                  (if (null? _%c-body207139%_)
                      '#!void
                      (cons '%#begin-syntax _%c-body207139%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g207099207109%_
                                                     _%$%g207100207112%_))
                                                (_%$%g207099207109%_
                                                 _%$%g207100207112%_))))
                                        (_%$%g207099207109%_
                                         _%$%g207100207112%_)))))
                            (_%$%g207098207144%_ _%compiled207096%_))))
                      (_%$%g207058207068%_ _%$%g207059207071%_)))))
          (_%$%g207057207147%_ _%stx207056%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self206986%_ _%stx206987%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self206986%_ 'state)))
        (let* ((_%$%g206989207003%_
                (lambda (_%$%g206990207000%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g206990207000%_))))
               (_%$%g206988207052%_
                (lambda (_%$%g206990207006%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g206990207006%_))
                      (let ((_%$%e206993207008%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g206990207006%_))))
                        (let ((_%$%hd206994207011%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e206993207008%_)))
                              (_%$%tl206995207013%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e206993207008%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl206995207013%_))
                              (let ((_%$%e206996207016%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl206995207013%_))))
                                (let ((_%$%hd206997207019%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e206996207016%_)))
                                      (_%$%tl206998207021%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e206996207016%_))))
                                  (let ((_%key207038%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-identifier-key
                                            _%$%hd206997207019%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (interned-symbol? _%key207038%_))
                                        '#!void
                                        (let ()
                                          (declare (not safe))
                                          (gxc#raise-compile-error
                                           '"Cannot compile module with uninterned id"
                                           _%stx206987%_
                                           _%$%hd206997207019%_
                                           _%key207038%_)))
                                    (let* ((_%ctx207040%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%$%hd206997207019%_)))
                                           (_%code207043%_
                                            (let ((__tmp216077
                                                   (lambda ()
                                                     (let ((__tmp216078
                                                            (##structure-ref
                                                             _%ctx207040%_
                                                             '11
                                                             gx#module-context::t
                                                             '#f)))
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self206986%_
                                                        __tmp216078)))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp216077
                                               gx#current-expander-context
                                               _%ctx207040%_)))
                                           (_%rt207045%_
                                            (let ((__tmp216079
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#current-compile-runtime-sections))))
                                              (declare (not safe))
                                              (hash-get
                                               __tmp216079
                                               _%ctx207040%_)))
                                           (_%loader207047%_
                                            (if _%rt207045%_
                                                (cons (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'load-module '()))
                          (cons (cons '%#quote (cons _%rt207045%_ '())) '())))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                           (_%modid207049%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd206997207019%_))))
                                      (gxc#meta-state-end-phi!
                                       (let ()
                                         (declare (not safe))
                                         (slot-ref__0 _%self206986%_ 'state)))
                                      (cons '%#module
                                            (cons _%modid207049%_
                                                  (cons _%code207043%_
                                                        _%loader207047%_)))))))
                              (_%$%g206989207003%_ _%$%g206990207006%_))))
                      (_%$%g206989207003%_ _%$%g206990207006%_)))))
          (_%$%g206988207052%_ _%stx206987%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx206973%_ _%context-chain206974%_)
        (let _%lp206976%_ ((_%ctx206978%_ _%ctx206973%_) (_%path206979%_ '()))
          (let ((_%super206981%_
                 (##structure-ref _%ctx206978%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super206981%_ _%context-chain206974%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx206978%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path206979%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super206981%_
                       'gx#module-context::t))
                    (_%lp206976%_
                     _%super206981%_
                     (cons (car (##structure-ref
                                 _%ctx206978%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path206979%_))
                    (cons (let ((__tmp216080
                                 (##structure-ref
                                  _%ctx206978%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp216080))
                          _%path206979%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp206966%_ ((_%ctx206968%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r206969%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx206968%_ 'gx#module-context::t))
              (_%lp206966%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx206968%_ '3 '#f '#f))
               (cons _%ctx206968%_ _%r206969%_))
              _%r206969%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self206731%_ _%stx206732%_)
        (letrec* ((_%context-chain206734%_ (gxc#current-context-chain))
                  (_%make-import-spec206735%_
                   (lambda (_%in206903%_)
                     (let* ((_%$%in206904206916%_ _%in206903%_)
                            (_%$%E206906206919%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%$%in206904206916%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%$%K206907206929%_
                             (lambda (_%phi206922%_
                                      _%name206923%_
                                      _%src-name206924%_
                                      _%src-phi206925%_
                                      _%src-key206926%_
                                      _%src-ctx206927%_)
                               (cons _%phi206922%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%name206923%_))
                                           (cons _%src-phi206925%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-identifier-key
                                                          _%src-name206924%_))
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%$%in206904206916%_
                              'gx#module-import::t))
                           (let ((_%$%e206908206932%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%$%in206904206916%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%$%e206908206932%_
                                    'gx#module-export::t))
                                 (let* ((_%$%e206911206935%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%e206908206932%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx206938%_ _%$%e206911206935%_)
                                        (_%$%e206912206940%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%e206908206932%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key206943%_ _%$%e206912206940%_)
                                        (_%$%e206913206945%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%e206908206932%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi206948%_ _%$%e206913206945%_)
                                        (_%$%e206914206950%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%e206908206932%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name206953%_
                                         _%$%e206914206950%_)
                                        (_%$%e206909206955%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%in206904206916%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name206958%_ _%$%e206909206955%_)
                                        (_%$%e206910206960%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%in206904206916%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi206963%_ _%$%e206910206960%_))
                                   (_%$%K206907206929%_
                                    _%phi206963%_
                                    _%name206958%_
                                    _%src-name206953%_
                                    _%src-phi206948%_
                                    _%src-key206943%_
                                    _%src-ctx206938%_))
                                 (_%$%E206906206919%_)))
                           (_%$%E206906206919%_)))))
                  (_%make-import-path206736%_
                   (lambda (_%ctx206901%_)
                     (gxc#generate-meta-import-path
                      _%ctx206901%_
                      _%context-chain206734%_)))
                  (_%make-import-spec-in206737%_
                   (lambda (_%ctx206898%_ _%in206899%_)
                     (cons 'spec:
                           (cons (_%make-import-path206736%_ _%ctx206898%_)
                                 (reverse _%in206899%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self206731%_ 'state)))
          (let* ((_%$%g206739206749%_
                  (lambda (_%$%g206740206746%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g206740206746%_))))
                 (_%$%g206738206895%_
                  (lambda (_%$%g206740206752%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g206740206752%_))
                        (let ((_%$%e206742206754%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g206740206752%_))))
                          (let ((_%$%hd206743206757%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e206742206754%_)))
                                (_%$%tl206744206759%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e206742206754%_))))
                            (let _%lp206773%_ ((_%rest206775%_
                                                _%$%tl206744206759%_)
                                               (_%current-src206776%_ '#f)
                                               (_%current-in206777%_ '())
                                               (_%r206778%_ '()))
                              (let* ((_%$%rest206779206787%_ _%rest206775%_)
                                     (_%$%else206781206797%_
                                      (lambda ()
                                        (let ((_%r206795%_
                                               (if _%current-src206776%_
                                                   (cons (_%make-import-spec-in206737%_
                                                          _%current-src206776%_
                                                          _%current-in206777%_)
                                                         _%r206778%_)
                                                   _%r206778%_)))
                                          (cons '%#import
                                                (reverse _%r206795%_)))))
                                     (_%$%K206783206883%_
                                      (lambda (_%rest206800%_ _%in206801%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               _%in206801%_
                                               'gx#module-import::t))
                                            (let* ((_%$%in206803206810%_
                                                    _%in206801%_)
                                                   (_%$%E206805206813%_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"No clause matching"
                                                               _%$%in206803206810%_
                                                               '((module-import
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (module-export src-ctx)))))
              '#!void))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%K206806206821%_
                                                    (lambda (_%src-ctx206816%_)
                                                      (if (eq? _%current-src206776%_
                                                               _%src-ctx206816%_)
                                                          (_%lp206773%_
                                                           _%rest206800%_
                                                           _%current-src206776%_
                                                           (cons (_%make-import-spec206735%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in206801%_)
                         _%current-in206777%_)
                   _%r206778%_)
                  (if _%current-src206776%_
                      (_%lp206773%_
                       _%rest206800%_
                       _%src-ctx206816%_
                       (cons (_%make-import-spec206735%_ _%in206801%_) '())
                       (cons (_%make-import-spec-in206737%_
                              _%current-src206776%_
                              _%current-in206777%_)
                             _%r206778%_))
                      (_%lp206773%_
                       _%rest206800%_
                       _%src-ctx206816%_
                       (cons (_%make-import-spec206735%_ _%in206801%_) '())
                       _%r206778%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%e206807206824%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%$%in206803206810%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%$%e206807206824%_
                                                     'gx#module-export::t))
                                                  (let* ((_%$%e206808206827%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%e206807206824%_
                                                             '1
                                                             '#f
                                                             '#f)))
                                                         (_%src-ctx206830%_
                                                          _%$%e206808206827%_))
                                                    (_%$%K206806206821%_
                                                     _%src-ctx206830%_))
                                                  (_%$%E206805206813%_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   _%in206801%_
                                                   'gx#import-set::t))
                                                (let* ((_%phi206833%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in206801%_
                                                           '2
                                                           '#f
                                                           '#f)))
                                                       (_%src206835%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in206801%_
                                                           '1
                                                           '#f
                                                           '#f)))
                                                       (_%src-in206875%_
                                                        (let* ((_%$%g206836206845%_
                                                                (_%make-import-path206736%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%src206835%_))
                       (_%$%E206839206849%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%$%g206836206845%_
                                   '([path])
                                   '(path)))
                          '#!void)))
                  (let ((_%$%K206841206865%_
                         (lambda (_%path206863%_) _%path206863%_))
                        (_%$%K206840206855%_
                         (lambda (_%path206853%_) (cons 'in: _%path206853%_))))
                    (if (pair? _%$%g206836206845%_)
                        (let ((_%$%tl206843206870%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%g206836206845%_)))
                              (_%$%hd206842206868%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%g206836206845%_))))
                          (if (null? _%$%tl206843206870%_)
                              (let ((_%path206873%_ _%$%hd206842206868%_))
                                (_%$%K206841206865%_ _%path206873%_))
                              (let ((_%path206858%_ _%$%g206836206845%_))
                                (_%$%K206840206855%_ _%path206858%_))))
                        (let ((_%path206858%_ _%$%g206836206845%_))
                          (_%$%K206840206855%_ _%path206858%_))))))
               (_%r206877%_
                (if _%current-src206776%_
                    (cons (_%make-import-spec-in206737%_
                           _%current-src206776%_
                           _%current-in206777%_)
                          _%r206778%_)
                    _%r206778%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp206773%_
                                                   _%rest206800%_
                                                   '#f
                                                   '()
                                                   (cons (if (fxzero? _%phi206833%_)
                                                             _%src-in206875%_
                                                             (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi206833%_ (cons _%src-in206875%_ '()))))
                 _%r206877%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##structure-instance-of?
                                                       _%in206801%_
                                                       'gx#module-context::t))
                                                    (let ((_%r206881%_
                                                           (if _%current-src206776%_
                                                               (cons (_%make-import-spec-in206737%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%current-src206776%_
                              _%current-in206777%_)
                             _%r206778%_)
                       _%r206778%_)))
              (_%lp206773%_
               _%rest206800%_
               '#f
               '()
               (cons (cons 'runtime: (_%make-import-path206736%_ _%in206801%_))
                     _%r206881%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#!void))))))
                                (if (pair? _%$%rest206779206787%_)
                                    (let ((_%$%hd206784206886%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%rest206779206787%_)))
                                          (_%$%tl206785206888%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%rest206779206787%_))))
                                      (let* ((_%in206891%_
                                              _%$%hd206784206886%_)
                                             (_%rest206893%_
                                              _%$%tl206785206888%_))
                                        (_%$%K206783206883%_
                                         _%rest206893%_
                                         _%in206891%_)))
                                    (_%$%else206781206797%_))))))
                        (_%$%g206739206749%_ _%$%g206740206752%_)))))
            (_%$%g206738206895%_ _%stx206732%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self206541%_ _%stx206542%_)
        (letrec* ((_%context-chain206544%_ (gxc#current-context-chain))
                  (_%make-import-path206545%_
                   (lambda (_%ctx206729%_)
                     (gxc#generate-meta-import-path
                      _%ctx206729%_
                      _%context-chain206544%_))))
          (let* ((_%$%g206547206557%_
                  (lambda (_%$%g206548206554%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g206548206554%_))))
                 (_%$%g206546206726%_
                  (lambda (_%$%g206548206560%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g206548206560%_))
                        (let ((_%$%e206550206562%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g206548206560%_))))
                          (let ((_%$%hd206551206565%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e206550206562%_)))
                                (_%$%tl206552206567%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e206550206562%_))))
                            (let _%lp206581%_ ((_%rest206583%_
                                                _%$%tl206552206567%_)
                                               (_%r206584%_ '()))
                              (let* ((_%$%rest206585206593%_ _%rest206583%_)
                                     (_%$%else206587206601%_
                                      (lambda ()
                                        (cons '%#export
                                              (reverse _%r206584%_))))
                                     (_%$%K206589206714%_
                                      (lambda (_%rest206604%_ _%out206605%_)
                                        (let* ((_%$%out206606206619%_
                                                _%out206605%_)
                                               (_%$%E206609206623%_
                                                (lambda ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"No clause matching"
                                                           _%$%out206606206619%_
                                                           '((module-export
                                                              _
                                                              key
                                                              phi
                                                              name))
                                                           '((export-set
                                                              src
                                                              phi))))
                                                  '#!void)))
                                          (let ((_%$%K206613206693%_
                                                 (lambda (_%name206689%_
                                                          _%phi206690%_
                                                          _%key206691%_)
                                                   (_%lp206581%_
                                                    _%rest206604%_
                                                    (cons (cons 'spec:
                                                                (cons _%phi206690%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-identifier-key
                                       _%key206691%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-identifier-key
                                             _%name206689%_))
                                          '()))))
                  _%r206584%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%K206610206673%_
                                                 (lambda (_%phi206627%_
                                                          _%src206628%_)
                                                   (let* ((_%out206668%_
                                                           (if _%src206628%_
                                                               (cons 'import:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let* ((_%$%g206629206638%_
                                           (_%make-import-path206545%_
                                            _%src206628%_))
                                          (_%$%E206632206642%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (error '"No clause matching"
                                                      _%$%g206629206638%_
                                                      '([path])
                                                      '(path)))
                                             '#!void)))
                                     (let ((_%$%K206634206658%_
                                            (lambda (_%path206656%_)
                                              _%path206656%_))
                                           (_%$%K206633206648%_
                                            (lambda (_%path206646%_)
                                              (cons 'in: _%path206646%_))))
                                       (if (pair? _%$%g206629206638%_)
                                           (let ((_%$%tl206636206663%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%g206629206638%_)))
                                                 (_%$%hd206635206661%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%g206629206638%_))))
                                             (if (null? _%$%tl206636206663%_)
                                                 (let ((_%path206666%_
                                                        _%$%hd206635206661%_))
                                                   (_%$%K206634206658%_
                                                    _%path206666%_))
                                                 (let ((_%path206651%_
                                                        _%$%g206629206638%_))
                                                   (_%$%K206633206648%_
                                                    _%path206651%_))))
                                           (let ((_%path206651%_
                                                  _%$%g206629206638%_))
                                             (_%$%K206633206648%_
                                              _%path206651%_)))))
                                   '()))
                       '#t))
                  (_%out206670%_
                   (if (fxzero? _%phi206627%_)
                       _%out206668%_
                       (cons 'phi:
                             (cons _%phi206627%_ (cons _%out206668%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp206581%_
                                                      _%rest206604%_
                                                      (cons _%out206670%_
                                                            _%r206584%_))))))
                                            (let ((_%$%try-match206608206686%_
                                                   (lambda ()
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            _%$%out206606206619%_
                                                            'gx#export-set::t))
                                                         (let* ((_%$%e206611206676%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%$%out206606206619%_
                            '1
                            '#f
                            '#f)))
                        (_%$%e206612206681%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%$%out206606206619%_
                            '2
                            '#f
                            '#f))))
                   (let ((_%src206679%_ _%$%e206611206676%_)
                         (_%phi206684%_ _%$%e206612206681%_))
                     (_%$%K206610206673%_ _%phi206684%_ _%src206679%_)))
                 (_%$%E206609206623%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%$%out206606206619%_
                                                     'gx#module-export::t))
                                                  (let* ((_%$%e206614206696%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%out206606206619%_
                                                             '1
                                                             '#f
                                                             '#f)))
                                                         (_%$%e206615206699%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%out206606206619%_
                                                             '2
                                                             '#f
                                                             '#f)))
                                                         (_%$%e206616206704%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%out206606206619%_
                                                             '3
                                                             '#f
                                                             '#f)))
                                                         (_%$%e206617206709%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%out206606206619%_
                                                             '4
                                                             '#f
                                                             '#f))))
                                                    (let ((_%key206702%_
                                                           _%$%e206615206699%_)
                                                          (_%phi206707%_
                                                           _%$%e206616206704%_)
                                                          (_%name206712%_
                                                           _%$%e206617206709%_))
                                                      (_%$%K206613206693%_
                                                       _%name206712%_
                                                       _%phi206707%_
                                                       _%key206702%_)))
                                                  (_%$%try-match206608206686%_))))))))
                                (if (pair? _%$%rest206585206593%_)
                                    (let ((_%$%hd206590206717%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%rest206585206593%_)))
                                          (_%$%tl206591206719%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%rest206585206593%_))))
                                      (let* ((_%out206722%_
                                              _%$%hd206590206717%_)
                                             (_%rest206724%_
                                              _%$%tl206591206719%_))
                                        (_%$%K206589206714%_
                                         _%rest206724%_
                                         _%out206722%_)))
                                    (_%$%else206587206601%_))))))
                        (_%$%g206547206557%_ _%$%g206548206560%_)))))
            (_%$%g206546206726%_ _%stx206542%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self206502%_ _%stx206503%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self206502%_ 'state)))
        (let* ((_%$%g206505206515%_
                (lambda (_%$%g206506206512%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g206506206512%_))))
               (_%$%g206504206538%_
                (lambda (_%$%g206506206518%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g206506206518%_))
                      (let ((_%$%e206508206520%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g206506206518%_))))
                        (let ((_%$%hd206509206523%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e206508206520%_)))
                              (_%$%tl206510206525%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e206508206520%_))))
                          (cons '%#provide
                                (map gxc#generate-runtime-identifier
                                     _%$%tl206510206525%_))))
                      (_%$%g206505206515%_ _%$%g206506206518%_)))))
          (_%$%g206504206538%_ _%stx206503%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self206377%_ _%stx206378%_)
        (letrec ((_%generate1206380%_
                  (lambda (_%id206497%_ _%eid206498%_)
                    (let ((_%eid206500%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid206498%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid206500%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx206378%_
                             _%eid206500%_)))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _%id206497%_))
                            (cons _%eid206500%_ '()))))))
          (let* ((_%$%g206382206410%_
                  (lambda (_%$%g206383206407%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g206383206407%_))))
                 (_%$%g206381206494%_
                  (lambda (_%$%g206383206413%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g206383206413%_))
                        (let ((_%$%e206386206415%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g206383206413%_))))
                          (let ((_%$%hd206387206418%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e206386206415%_)))
                                (_%$%tl206388206420%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e206386206415%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%$%tl206388206420%_))
                                (let ((_g216081_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%$%tl206388206420%_
                                          '0))))
                                  (begin
                                    (let ((_g216082_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g216081_)
                                                 (##values-length _g216081_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g216082_ 2)))
                                          (error "Context expects 2 values"
                                                 _g216082_)))
                                    (let ((_%$%target206389206423%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g216081_ 0)))
                                          (_%$%tl206391206425%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g216081_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl206391206425%_))
                                          (letrec ((_%$%loop206392206428%_
                                                    (lambda (_%$%hd206390206431%_
                                                             _%$%eid206396206433%_
                                                             _%$%id206397206434%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%hd206390206431%_))
                                                          (let ((_%$%e206393206436%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%hd206390206431%_))))
                    (let ((_%$%lp-hd206394206439%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e206393206436%_)))
                          (_%$%lp-tl206395206441%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e206393206436%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%lp-hd206394206439%_))
                          (let ((_%$%e206400206444%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%lp-hd206394206439%_))))
                            (let ((_%$%hd206401206447%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e206400206444%_)))
                                  (_%$%tl206402206449%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e206400206444%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl206402206449%_))
                                  (let ((_%$%e206403206452%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl206402206449%_))))
                                    (let ((_%$%hd206404206455%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e206403206452%_)))
                                          (_%$%tl206405206457%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e206403206452%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl206405206457%_))
                                          (_%$%loop206392206428%_
                                           _%$%lp-tl206395206441%_
                                           (cons _%$%hd206404206455%_
                                                 _%$%eid206396206433%_)
                                           (cons _%$%hd206401206447%_
                                                 _%$%id206397206434%_))
                                          (_%$%g206382206410%_
                                           _%$%g206383206413%_))))
                                  (_%$%g206382206410%_ _%$%g206383206413%_))))
                          (_%$%g206382206410%_ _%$%g206383206413%_))))
                  (let ((_%$%eid206398206460%_ (reverse _%$%eid206396206433%_))
                        (_%$%id206399206461%_ (reverse _%$%id206397206434%_)))
                    (cons '%#extern
                          (map _%generate1206380%_
                               (let ((__tmp216083
                                      (lambda (_%$%g206479206482%_
                                               _%$%g206480206484%_)
                                        (cons _%$%g206479206482%_
                                              _%$%g206480206484%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp216083
                                  '()
                                  _%$%id206399206461%_))
                               (let ((__tmp216084
                                      (lambda (_%$%g206486206489%_
                                               _%$%g206487206491%_)
                                        (cons _%$%g206486206489%_
                                              _%$%g206487206491%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp216084
                                  '()
                                  _%$%eid206398206460%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%loop206392206428%_
                                             _%$%target206389206423%_
                                             '()
                                             '()))
                                          (_%$%g206382206410%_
                                           _%$%g206383206413%_)))))
                                (_%$%g206382206410%_ _%$%g206383206413%_))))
                        (_%$%g206382206410%_ _%$%g206383206413%_)))))
            (_%$%g206381206494%_ _%stx206378%_)))))
    (define gxc#generate-meta-define-runtime%
      (lambda (_%self206305%_ _%stx206306%_)
        (let* ((_%$%g206308206325%_
                (lambda (_%$%g206309206322%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g206309206322%_))))
               (_%$%g206307206374%_
                (lambda (_%$%g206309206328%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g206309206328%_))
                      (let ((_%$%e206312206330%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g206309206328%_))))
                        (let ((_%$%hd206313206333%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e206312206330%_)))
                              (_%$%tl206314206335%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e206312206330%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl206314206335%_))
                              (let ((_%$%e206315206338%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl206314206335%_))))
                                (let ((_%$%hd206316206341%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e206315206338%_)))
                                      (_%$%tl206317206343%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e206315206338%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl206317206343%_))
                                      (let ((_%$%e206318206346%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl206317206343%_))))
                                        (let ((_%$%hd206319206349%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e206318206346%_)))
                                              (_%$%tl206320206351%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e206318206346%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl206320206351%_))
                                              (let ((_%ident206370%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#generate-runtime-identifier
                                                        _%$%hd206316206341%_)))
                                                    (_%eid206371%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd206319206349%_)))
                                                    (_%props206372%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier-properties
                                                        _%$%hd206316206341%_))))
                                                (cons '%#define-runtime
                                                      (cons _%ident206370%_
                                                            (cons _%eid206371%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%props206372%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g206308206325%_
                                               _%$%g206309206328%_))))
                                      (_%$%g206308206325%_
                                       _%$%g206309206328%_))))
                              (_%$%g206308206325%_ _%$%g206309206328%_))))
                      (_%$%g206308206325%_ _%$%g206309206328%_)))))
          (_%$%g206307206374%_ _%stx206306%_))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self206094%_ _%stx206095%_)
        (letrec ((_%generate1206097%_
                  (lambda (_%id206299%_)
                    (let ((_%eid206301%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id206299%_)))
                          (_%ident206302%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%id206299%_)))
                          (_%props206303%_
                           (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier-properties
                              _%id206299%_))))
                      (cons '%#define-runtime
                            (cons _%ident206302%_
                                  (cons _%eid206301%_ _%props206303%_))))))
                 (_%generate*206098%_
                  (lambda (_%all206267%_)
                    (let* ((_%$%all206268206276%_ _%all206267%_)
                           (_%$%else206270206284%_
                            (lambda () (cons '%#begin _%all206267%_)))
                           (_%$%K206272206289%_
                            (lambda (_%one206287%_) _%one206287%_)))
                      (if (pair? _%$%all206268206276%_)
                          (let ((_%$%hd206273206292%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%all206268206276%_)))
                                (_%$%tl206274206294%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%all206268206276%_))))
                            (let ((_%one206297%_ _%$%hd206273206292%_))
                              (if (null? _%$%tl206274206294%_)
                                  (_%$%K206272206289%_ _%one206297%_)
                                  (_%$%else206270206284%_))))
                          (_%$%else206270206284%_))))))
          (let* ((_%$%g206100206117%_
                  (lambda (_%$%g206101206114%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g206101206114%_))))
                 (_%$%g206099206264%_
                  (lambda (_%$%g206101206120%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g206101206120%_))
                        (let ((_%$%e206104206122%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g206101206120%_))))
                          (let ((_%$%hd206105206125%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e206104206122%_)))
                                (_%$%tl206106206127%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e206104206122%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl206106206127%_))
                                (let ((_%$%e206107206130%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl206106206127%_))))
                                  (let ((_%$%hd206108206133%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e206107206130%_)))
                                        (_%$%tl206109206135%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e206107206130%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl206109206135%_))
                                        (let ((_%$%e206110206138%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl206109206135%_))))
                                          (let ((_%$%hd206111206141%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e206110206138%_)))
                                                (_%$%tl206112206143%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e206110206138%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl206112206143%_))
                                                (let _%lp206163%_ ((_%rest206165%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%hd206108206133%_)
                           (_%r206166%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%__stx215821215822%_
                                                          _%rest206165%_)
                                                         (_%$%g206171206188%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%__stx215821215822%_)))))
                                                    (let ((_%__kont215823215824%_
                                                           (lambda (_%$%g206173206251%_)
                                                             (_%lp206163%_
                                                              _%$%g206173206251%_
                                                              _%r206166%_)))
                                                          (_%__kont215825215826%_
                                                           (lambda (_%$%g206178206224%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g206179206225%_)
                     (_%lp206163%_
                      _%$%g206178206224%_
                      (cons (_%generate1206097%_ _%$%g206179206225%_)
                            _%r206166%_))))
                  (_%__kont215827215828%_
                   (lambda (_%$%g206183206200%_)
                     (_%generate*206098%_
                      (let ((__tmp216085
                             (cons (_%generate1206097%_ _%$%g206183206200%_)
                                   '())))
                        (declare (not safe))
                        (foldl__0 cons __tmp216085 _%r206166%_)))))
                  (_%__kont215829215830%_
                   (lambda () (_%generate*206098%_ (reverse! _%r206166%_)))))
              (let ((_%$%g206169206211%_
                     (lambda ()
                       (let ((_%$%g206183206200%_ _%__stx215821215822%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%$%g206183206200%_))
                             (_%__kont215827215828%_ _%$%g206183206200%_)
                             (_%__kont215829215830%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx215821215822%_))
                    (let ((_%$%e206174206240%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx215821215822%_))))
                      (let ((_%$%tl206176206245%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e206174206240%_)))
                            (_%$%hd206175206243%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e206174206240%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%$%hd206175206243%_))
                            (let ((_%$%e206177206248%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd206175206243%_))))
                              (if (equal? _%$%e206177206248%_ '#f)
                                  (_%__kont215823215824%_ _%$%tl206176206245%_)
                                  (_%__kont215825215826%_
                                   _%$%tl206176206245%_
                                   _%$%hd206175206243%_)))
                            (_%__kont215825215826%_
                             _%$%tl206176206245%_
                             _%$%hd206175206243%_))))
                    (_%$%g206169206211%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g206100206117%_
                                                 _%$%g206101206120%_))))
                                        (_%$%g206100206117%_
                                         _%$%g206101206120%_))))
                                (_%$%g206100206117%_ _%$%g206101206120%_))))
                        (_%$%g206100206117%_ _%$%g206101206120%_)))))
            (_%$%g206099206264%_ _%stx206095%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self205991%_ _%stx205992%_)
        (let* ((_%$%g205994206011%_
                (lambda (_%$%g205995206008%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205995206008%_))))
               (_%$%g205993206091%_
                (lambda (_%$%g205995206014%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205995206014%_))
                      (let ((_%$%e205998206016%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205995206014%_))))
                        (let ((_%$%hd205999206019%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205998206016%_)))
                              (_%$%tl206000206021%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205998206016%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl206000206021%_))
                              (let ((_%$%e206001206024%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl206000206021%_))))
                                (let ((_%$%hd206002206027%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e206001206024%_)))
                                      (_%$%tl206003206029%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e206001206024%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl206003206029%_))
                                      (let ((_%$%e206004206032%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl206003206029%_))))
                                        (let ((_%$%hd206005206035%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e206004206032%_)))
                                              (_%$%tl206006206037%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e206004206032%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl206006206037%_))
                                              (let* ((_%eid206056%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#generate-runtime-binding-id
                                                         _%$%hd206002206027%_)))
                                                     (_%phi206058%_
                                                      (let ((__tmp216086
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#current-expander-phi))))
                (declare (not safe))
                (##fx+ __tmp216086 '1)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%block206060%_
                                                      (gxc#meta-state-begin-phi!
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self205991%_
                                                          'state))
                                                       _%phi206058%_)))
                                                (let* ((_%$%g206063206070%_
                                                        (lambda (_%$%g206064206067%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%$%g206064206067%_))))
                                                       (_%$%g206062206088%_
                                                        (lambda (_%$%g206064206073%_)
                                                          (gxc#meta-state-add-phi!
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self205991%_
                                                              'state))
                                                           _%phi206058%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#define-runtime))
                         (cons _%$%g206064206073%_
                               (cons _%$%hd206005206035%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g206062206088%_
                                                   _%eid206056%_))
                                                (if _%block206060%_
                                                    (cons '%#begin
                                                          (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block206060%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        (cons (cons '%#define-syntax
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-identifier
                                             _%$%hd206002206027%_))
                                          (cons _%eid206056%_ '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons '%#define-syntax
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#generate-runtime-identifier
                           _%$%hd206002206027%_))
                        (cons _%eid206056%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g205994206011%_
                                               _%$%g205995206014%_))))
                                      (_%$%g205994206011%_
                                       _%$%g205995206014%_))))
                              (_%$%g205994206011%_ _%$%g205995206014%_))))
                      (_%$%g205994206011%_ _%$%g205995206014%_)))))
          (_%$%g205993206091%_ _%stx205992%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self205923%_ _%stx205924%_)
        (let* ((_%$%g205926205943%_
                (lambda (_%$%g205927205940%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205927205940%_))))
               (_%$%g205925205988%_
                (lambda (_%$%g205927205946%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205927205946%_))
                      (let ((_%$%e205930205948%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205927205946%_))))
                        (let ((_%$%hd205931205951%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205930205948%_)))
                              (_%$%tl205932205953%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205930205948%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl205932205953%_))
                              (let ((_%$%e205933205956%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl205932205953%_))))
                                (let ((_%$%hd205934205959%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e205933205956%_)))
                                      (_%$%tl205935205961%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e205933205956%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl205935205961%_))
                                      (let ((_%$%e205936205964%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl205935205961%_))))
                                        (let ((_%$%hd205937205967%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e205936205964%_)))
                                              (_%$%tl205938205969%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e205936205964%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl205938205969%_))
                                              (cons '%#define-alias
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#generate-runtime-identifier
                                                             _%$%hd205934205959%_))
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#generate-runtime-identifier
                           _%$%hd205937205967%_))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g205926205943%_
                                               _%$%g205927205946%_))))
                                      (_%$%g205926205943%_
                                       _%$%g205927205946%_))))
                              (_%$%g205926205943%_ _%$%g205927205946%_))))
                      (_%$%g205926205943%_ _%$%g205927205946%_)))))
          (_%$%g205925205988%_ _%stx205924%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self205920%_ _%stx205921%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self205920%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx205921%_)
        (gxc#generate-meta-define-values% _%self205920%_ _%stx205921%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self205917%_ _%stx205918%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self205917%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx205918%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp216088 (list)) (__tmp216087 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp216088
         '(src n open blocks)
         __tmp216087
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args205914%_
        (apply make-instance gxc#meta-state::t _%$args205914%_)))
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
      (lambda (_%self205900%_ _%ctx205901%_)
        (let ((_%self205904%_ _%self205900%_))
          (if (let ((__tmp216089
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self205904%_))))
                (declare (not safe))
                (##fx< '4 __tmp216089))
              (begin
                (let ((__tmp216090
                       (let ((__tmp216091
                              (##structure-ref
                               _%ctx205901%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp216091))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self205904%_
                   __tmp216090
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self205904%_ '1 '2 '#f '#f))
                (let ((__tmp216092
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self205904%_
                   __tmp216092
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self205904%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp216093
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self205904%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self205904%_
                       '4
                       __tmp216093))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp216095 (list)) (__tmp216094 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp216095
         '(ctx phi n code)
         __tmp216094
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args205775%_
        (apply make-instance gxc#meta-state-block::t _%$args205775%_)))
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
      (lambda (_%state205735%_ _%phi205736%_)
        (let* ((_%$%state205737205745%_ _%state205735%_)
               (_%$%E205739205748%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%state205737205745%_
                           '((meta-state src n open))))
                  '#!void))
               (_%$%K205740205757%_
                (lambda (_%open205751%_ _%n205752%_ _%src205753%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open205751%_ _%phi205736%_))
                      '#f
                      (let ((_%block-ref205755%_
                             (let ((__tmp216096 (number->string _%n205752%_)))
                               (declare (not safe))
                               (##string-append
                                _%src205753%_
                                '"~"
                                __tmp216096))))
                        (##structure-set!
                         _%state205735%_
                         (let () (declare (not safe)) (##fx+ _%n205752%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp216097
                               (let ((__tmp216098
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp216098
                                  _%phi205736%_
                                  _%n205752%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open205751%_ _%phi205736%_ __tmp216097))
                        _%block-ref205755%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%$%state205737205745%_
                 'gxc#meta-state::t))
              (let* ((_%$%e205741205760%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%$%state205737205745%_
                         '1
                         '#f
                         '#f)))
                     (_%src205763%_ _%$%e205741205760%_)
                     (_%$%e205742205765%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%$%state205737205745%_
                         '2
                         '#f
                         '#f)))
                     (_%n205768%_ _%$%e205742205765%_)
                     (_%$%e205743205770%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%$%state205737205745%_
                         '3
                         '#f
                         '#f)))
                     (_%open205773%_ _%$%e205743205770%_))
                (_%$%K205740205757%_ _%open205773%_ _%n205768%_ _%src205763%_))
              (_%$%E205739205748%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state205729%_ _%phi205730%_ _%stx205731%_)
        (let ((_%block205733%_
               (let ((__tmp216099
                      (##structure-ref
                       _%state205729%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp216099 _%phi205730%_))))
          (##structure-set!
           _%block205733%_
           (cons _%stx205731%_
                 (##structure-ref
                  _%block205733%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state205723%_)
        (##structure-set!
         _%state205723%_
         (let ((__tmp216102
                (lambda (_%_205725%_ _%block205726%_ _%r205727%_)
                  (cons _%block205726%_ _%r205727%_)))
               (__tmp216101
                (##structure-ref _%state205723%_ '4 gxc#meta-state::t '#f))
               (__tmp216100
                (##structure-ref _%state205723%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp216102 __tmp216101 __tmp216100))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state205723%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state205676%_)
        (gxc#meta-state-end-phi! _%state205676%_)
        (let ((__tmp216104
               (lambda (_%block205678%_ _%r205679%_)
                 (let* ((_%$%block205680205689%_ _%block205678%_)
                        (_%$%E205682205692%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%$%block205680205689%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%$%K205683205700%_
                         (lambda (_%code205695%_
                                  _%n205696%_
                                  _%phi205697%_
                                  _%ctx205698%_)
                           (if (null? _%code205695%_)
                               _%r205679%_
                               (cons (cons _%ctx205698%_
                                           (cons _%phi205697%_
                                                 (cons _%n205696%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code205695%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r205679%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%$%block205680205689%_
                          'gxc#meta-state-block::t))
                       (let* ((_%$%e205684205703%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%$%block205680205689%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx205706%_ _%$%e205684205703%_)
                              (_%$%e205685205708%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%$%block205680205689%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi205711%_ _%$%e205685205708%_)
                              (_%$%e205686205713%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%$%block205680205689%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n205716%_ _%$%e205686205713%_)
                              (_%$%e205687205718%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%$%block205680205689%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code205721%_ _%$%e205687205718%_))
                         (_%$%K205683205700%_
                          _%code205721%_
                          _%n205716%_
                          _%phi205711%_
                          _%ctx205706%_))
                       (_%$%E205682205692%_)))))
              (__tmp216103
               (##structure-ref _%state205676%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (foldl__0 __tmp216104 '() __tmp216103))))
    (define gxc#collect-expression-refs
      (lambda (_%stx205672%_)
        (let ((_%ht205674%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht205674%_ _%stx205672%_)
          _%ht205674%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self205615%_ _%stx205616%_)
        (let* ((_%$%g205618205631%_
                (lambda (_%$%g205619205628%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205619205628%_))))
               (_%$%g205617205669%_
                (lambda (_%$%g205619205634%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205619205634%_))
                      (let ((_%$%e205621205636%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205619205634%_))))
                        (let ((_%$%hd205622205639%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205621205636%_)))
                              (_%$%tl205623205641%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205621205636%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl205623205641%_))
                              (let ((_%$%e205624205644%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl205623205641%_))))
                                (let ((_%$%hd205625205647%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e205624205644%_)))
                                      (_%$%tl205626205649%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e205624205644%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl205626205649%_))
                                      (let* ((_%bind205664%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#resolve-identifier__0
                                                 _%$%hd205625205647%_)))
                                             (_%eid205666%_
                                              (if _%bind205664%_
                                                  (##structure-ref
                                                   _%bind205664%_
                                                   '1
                                                   gx#binding::t
                                                   '#f)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%hd205625205647%_))))
                                             (__tmp216105
                                              (let ()
                                                (declare (not safe))
                                                (slot-ref__0
                                                 _%self205615%_
                                                 'table))))
                                        (declare (not safe))
                                        (hash-put!
                                         __tmp216105
                                         _%eid205666%_
                                         _%eid205666%_))
                                      (_%$%g205618205631%_
                                       _%$%g205619205634%_))))
                              (_%$%g205618205631%_ _%$%g205619205634%_))))
                      (_%$%g205618205631%_ _%$%g205619205634%_)))))
          (_%$%g205617205669%_ _%stx205616%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self205542%_ _%stx205543%_)
        (let* ((_%$%g205545205562%_
                (lambda (_%$%g205546205559%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205546205559%_))))
               (_%$%g205544205612%_
                (lambda (_%$%g205546205565%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205546205565%_))
                      (let ((_%$%e205549205567%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205546205565%_))))
                        (let ((_%$%hd205550205570%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205549205567%_)))
                              (_%$%tl205551205572%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205549205567%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl205551205572%_))
                              (let ((_%$%e205552205575%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl205551205572%_))))
                                (let ((_%$%hd205553205578%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e205552205575%_)))
                                      (_%$%tl205554205580%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e205552205575%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl205554205580%_))
                                      (let ((_%$%e205555205583%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl205554205580%_))))
                                        (let ((_%$%hd205556205586%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e205555205583%_)))
                                              (_%$%tl205557205588%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e205555205583%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl205557205588%_))
                                              (let* ((_%bind205607%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#resolve-identifier__0
                                                         _%$%hd205553205578%_)))
                                                     (_%eid205609%_
                                                      (if _%bind205607%_
                                                          (##structure-ref
                                                           _%bind205607%_
                                                           '1
                                                           gx#binding::t
                                                           '#f)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%hd205553205578%_)))))
                                                (let ((__tmp216106
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self205542%_
                                                          'table))))
                                                  (declare (not safe))
                                                  (hash-put!
                                                   __tmp216106
                                                   _%eid205609%_
                                                   _%eid205609%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self205542%_
                                                   _%$%hd205556205586%_)))
                                              (_%$%g205545205562%_
                                               _%$%g205546205565%_))))
                                      (_%$%g205545205562%_
                                       _%$%g205546205565%_))))
                              (_%$%g205545205562%_ _%$%g205546205565%_))))
                      (_%$%g205545205562%_ _%$%g205546205565%_)))))
          (_%$%g205544205612%_ _%stx205543%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self205499%_ _%stx205500%_)
        (let* ((_%$%g205502205512%_
                (lambda (_%$%g205503205509%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205503205509%_))))
               (_%$%g205501205539%_
                (lambda (_%$%g205503205515%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205503205515%_))
                      (let ((_%$%e205505205517%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205503205515%_))))
                        (let ((_%$%hd205506205520%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205505205517%_)))
                              (_%$%tl205507205522%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205505205517%_))))
                          (let ((__tmp216107
                                 (lambda (_%$%g205534205536%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self205499%_
                                      _%$%g205534205536%_)))))
                            (declare (not safe))
                            (ormap__0 __tmp216107 _%$%tl205507205522%_))))
                      (_%$%g205502205512%_ _%$%g205503205515%_)))))
          (_%$%g205501205539%_ _%stx205500%_))))
    (define gxc#count-values-single%
      (lambda (_%self205496%_ _%stx205497%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self205364%_ _%stx205365%_)
        (let* ((_%__stx215851215852%_ _%stx205365%_)
               (_%$%g205368205397%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx215851215852%_)))))
          (let ((_%__kont215853215854%_
                 (lambda (_%$%g205370205463%_ _%$%g205371205464%_)
                   (length (let ((__tmp216108
                                  (lambda (_%$%g205485205488%_
                                           _%$%g205486205490%_)
                                    (cons _%$%g205485205488%_
                                          _%$%g205486205490%_))))
                             (declare (not safe))
                             (foldr__0 __tmp216108 '() _%$%g205370205463%_)))))
                (_%__kont215857215858%_ (lambda () '#f)))
            (let ((_%__match215896215897%_
                   (lambda (_%$%e205372205409%_
                            _%$%hd205373205412%_
                            _%$%tl205374205414%_
                            _%$%e205375205417%_
                            _%$%hd205376205420%_
                            _%$%tl205377205422%_
                            _%$%e205378205425%_
                            _%$%hd205379205428%_
                            _%$%tl205380205430%_
                            _%$%e205381205433%_
                            _%$%hd205382205436%_
                            _%$%tl205383205438%_
                            _%__splice215855215856%_
                            _%$%target205384205441%_
                            _%$%tl205386205443%_)
                     (letrec ((_%$%loop205387205446%_
                               (lambda (_%$%hd205385205449%_
                                        _%$%rand205391205451%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd205385205449%_))
                                     (let ((_%$%e205388205453%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd205385205449%_))))
                                       (let ((_%$%lp-tl205390205458%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e205388205453%_)))
                                             (_%$%lp-hd205389205456%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e205388205453%_))))
                                         (_%$%loop205387205446%_
                                          _%$%lp-tl205390205458%_
                                          (cons _%$%lp-hd205389205456%_
                                                _%$%rand205391205451%_))))
                                     (let ((_%$%rand205392205461%_
                                            (reverse _%$%rand205391205451%_)))
                                       (let ((_%$%g205370205463%_
                                              _%$%rand205392205461%_)
                                             (_%$%g205371205464%_
                                              _%$%hd205382205436%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%$%g205371205464%_
                                                'values))
                                             (_%__kont215853215854%_
                                              _%$%g205370205463%_
                                              _%$%g205371205464%_)
                                             (_%__kont215857215858%_))))))))
                       (_%$%loop205387205446%_
                        _%$%target205384205441%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx215851215852%_))
                  (let ((_%$%e205372205409%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx215851215852%_))))
                    (let ((_%$%tl205374205414%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e205372205409%_)))
                          (_%$%hd205373205412%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e205372205409%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl205374205414%_))
                          (let ((_%$%e205375205417%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl205374205414%_))))
                            (let ((_%$%tl205377205422%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e205375205417%_)))
                                  (_%$%hd205376205420%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e205375205417%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd205376205420%_))
                                  (let ((_%$%e205378205425%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd205376205420%_))))
                                    (let ((_%$%tl205380205430%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e205378205425%_)))
                                          (_%$%hd205379205428%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e205378205425%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd205379205428%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd205379205428%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl205380205430%_))
                                                  (let ((_%$%e205381205433%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl205380205430%_))))
                                                    (let ((_%$%tl205383205438%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e205381205433%_)))
                                                          (_%$%hd205382205436%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e205381205433%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl205383205438%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%$%tl205377205422%_))
                      (let ((_%__splice215855215856%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl205377205422%_
                                '0))))
                        (let ((_%$%tl205386205443%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice215855215856%_ '1)))
                              (_%$%target205384205441%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice215855215856%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl205386205443%_))
                              (_%__match215896215897%_
                               _%$%e205372205409%_
                               _%$%hd205373205412%_
                               _%$%tl205374205414%_
                               _%$%e205375205417%_
                               _%$%hd205376205420%_
                               _%$%tl205377205422%_
                               _%$%e205378205425%_
                               _%$%hd205379205428%_
                               _%$%tl205380205430%_
                               _%$%e205381205433%_
                               _%$%hd205382205436%_
                               _%$%tl205383205438%_
                               _%__splice215855215856%_
                               _%$%target205384205441%_
                               _%$%tl205386205443%_)
                              (_%__kont215857215858%_))))
                      (_%__kont215857215858%_))
                  (_%__kont215857215858%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont215857215858%_))
                                              (_%__kont215857215858%_))
                                          (_%__kont215857215858%_))))
                                  (_%__kont215857215858%_))))
                          (_%__kont215857215858%_))))
                  (_%__kont215857215858%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self205269%_ _%stx205270%_)
        (let* ((_%$%g205272205293%_
                (lambda (_%$%g205273205290%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205273205290%_))))
               (_%$%g205271205361%_
                (lambda (_%$%g205273205296%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205273205296%_))
                      (let ((_%$%e205277205298%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205273205296%_))))
                        (let ((_%$%hd205278205301%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205277205298%_)))
                              (_%$%tl205279205303%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205277205298%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl205279205303%_))
                              (let ((_%$%e205280205306%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl205279205303%_))))
                                (let ((_%$%hd205281205309%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e205280205306%_)))
                                      (_%$%tl205282205311%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e205280205306%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl205282205311%_))
                                      (let ((_%$%e205283205314%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl205282205311%_))))
                                        (let ((_%$%hd205284205317%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e205283205314%_)))
                                              (_%$%tl205285205319%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e205283205314%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl205285205319%_))
                                              (let ((_%$%e205286205322%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl205285205319%_))))
                                                (let ((_%$%hd205287205325%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e205286205322%_)))
                                                      (_%$%tl205288205327%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e205286205322%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl205288205327%_))
                                                      (let ((_%$%c1205349205351%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1
                        _%self205269%_
                        _%$%hd205284205317%_))))
                (if _%$%c1205349205351%_
                    (let* ((_%c1205353%_ _%$%c1205349205351%_)
                           (_%$%c2205354205356%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self205269%_
                               _%$%hd205287205325%_))))
                      (if _%$%c2205354205356%_
                          (let ((_%c2205358%_ _%$%c2205354205356%_))
                            (if (fx= _%c1205353%_ _%c2205358%_)
                                _%c1205353%_
                                '#f))
                          '#f))
                    '#f))
              (_%$%g205272205293%_ _%$%g205273205296%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g205272205293%_
                                               _%$%g205273205296%_))))
                                      (_%$%g205272205293%_
                                       _%$%g205273205296%_))))
                              (_%$%g205272205293%_ _%$%g205273205296%_))))
                      (_%$%g205272205293%_ _%$%g205273205296%_)))))
          (_%$%g205271205361%_ _%stx205270%_))))))
