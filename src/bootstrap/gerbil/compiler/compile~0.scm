(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1784461444)
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
      (let ((__tmp215720 (list gxc#::void::t))
            (__tmp215719 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp215720
         '()
         __tmp215719
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args214334%_
        (apply make-instance gxc#::collect-bindings::t _%$args214334%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp215721
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
        (__make-atomic-promise __tmp215721)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx214326%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self214329%_
                (let ((__obj215695
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj215695))
               (__tmp215722
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self214329%_ _%stx214326%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp215722
           gxc#current-compile-method
           _%self214329%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp215724 (list gxc#::void::t))
            (__tmp215723 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp215724
         '(modules)
         __tmp215723
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args214323%_
        (apply make-instance gxc#::lift-modules::t _%$args214323%_)))
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
      (let ((__tmp215725
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
        (__make-atomic-promise __tmp215725)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords214298%_ _%$%modules214295214299%_ _%stx214300%_)
        (let ((_%modules214303%_
               (if (eq? _%$%modules214295214299%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%$%modules214295214299%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self214305%_
                  (let ((__obj215697
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj215697
                       _%modules214303%_
                       '1
                       '#f
                       '#f))
                    __obj215697))
                 (__tmp215726
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self214305%_ _%stx214300%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp215726
             gxc#current-compile-method
             _%self214305%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords214312%_ . _%args214313%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords214312%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords214312%_
                  'modules:
                  absent-value))
               _%args214313%_)))
    (define gxc#apply-lift-modules
      (lambda _%$%args214296214319%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%$%args214296214319%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp215728 (list)) (__tmp215727 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp215728
         '()
         __tmp215727
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args214291%_
        (apply make-instance gxc#::find-runtime-code::t _%$args214291%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp215729
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
        (__make-atomic-promise __tmp215729)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx214283%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self214286%_
                (let ((__obj215699
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj215699))
               (__tmp215730
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self214286%_ _%stx214283%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp215730
           gxc#current-compile-method
           _%self214286%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp215732 (list gxc#::false::t))
            (__tmp215731 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp215732
         '()
         __tmp215731
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args214280%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args214280%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp215733
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
        (__make-atomic-promise __tmp215733)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx214272%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self214275%_
                (let ((__obj215701
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj215701))
               (__tmp215734
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self214275%_ _%stx214272%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp215734
           gxc#current-compile-method
           _%self214275%_))))
    (define gxc#::count-values::t
      (let ((__tmp215736 (list gxc#::false-expression::t))
            (__tmp215735 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp215736
         '()
         __tmp215735
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args214269%_
        (apply make-instance gxc#::count-values::t _%$args214269%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp215737
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
        (__make-atomic-promise __tmp215737)))
    (define gxc#apply-count-values
      (lambda (_%stx214261%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self214264%_
                (let ((__obj215703
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj215703))
               (__tmp215738
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self214264%_ _%stx214261%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp215738
           gxc#current-compile-method
           _%self214264%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp215739 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp215739
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args214258%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args214258%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp215740
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
        (__make-atomic-promise __tmp215740)))
    (define gxc#::generate-loader::t
      (let ((__tmp215742 (list gxc#::generate-runtime-empty::t))
            (__tmp215741 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp215742
         '()
         __tmp215741
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args214254%_
        (apply make-instance gxc#::generate-loader::t _%$args214254%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp215743
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
        (__make-atomic-promise __tmp215743)))
    (define gxc#apply-generate-loader
      (lambda (_%stx214246%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self214249%_
                (let ((__obj215706
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj215706))
               (__tmp215744
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self214249%_ _%stx214246%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp215744
           gxc#current-compile-method
           _%self214249%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp215745 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp215745
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args214243%_
        (apply make-instance gxc#::generate-runtime::t _%$args214243%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp215746
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
        (__make-atomic-promise __tmp215746)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx214235%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self214238%_
                (let ((__obj215708
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj215708))
               (__tmp215747
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self214238%_ _%stx214235%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp215747
           gxc#current-compile-method
           _%self214238%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp215749 (list gxc#::generate-runtime::t))
            (__tmp215748 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp215749
         '()
         __tmp215748
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args214232%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args214232%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp215750
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
        (__make-atomic-promise __tmp215750)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx214224%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self214227%_
                (let ((__obj215710
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj215710))
               (__tmp215751
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self214227%_ _%stx214224%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp215751
           gxc#current-compile-method
           _%self214227%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp215752 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp215752
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args214221%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args214221%_)))
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
      (let ((__tmp215753
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
        (__make-atomic-promise __tmp215753)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords214196%_ _%$%table214193214197%_ _%stx214198%_)
        (let ((_%table214201%_
               (if (eq? _%$%table214193214197%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%$%table214193214197%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self214203%_
                  (let ((__obj215712
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj215712
                       _%table214201%_
                       '1
                       '#f
                       '#f))
                    __obj215712))
                 (__tmp215754
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self214203%_ _%stx214198%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp215754
             gxc#current-compile-method
             _%self214203%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords214210%_ . _%args214211%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords214210%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords214210%_
                  'table:
                  absent-value))
               _%args214211%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%$%args214194214217%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%$%args214194214217%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp215756 (list gxc#::void-expression::t))
            (__tmp215755 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp215756
         '(state)
         __tmp215755
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args214189%_
        (apply make-instance gxc#::generate-meta::t _%$args214189%_)))
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
      (let ((__tmp215757
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
        (__make-atomic-promise __tmp215757)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords214164%_ _%$%state214161214165%_ _%stx214166%_)
        (let ((_%state214169%_
               (if (eq? _%$%state214161214165%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%$%state214161214165%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self214171%_
                  (let ((__obj215714
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj215714
                       _%state214169%_
                       '1
                       '#f
                       '#f))
                    __obj215714))
                 (__tmp215758
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self214171%_ _%stx214166%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp215758
             gxc#current-compile-method
             _%self214171%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords214178%_ . _%args214179%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords214178%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords214178%_
                  'state:
                  absent-value))
               _%args214179%_)))
    (define gxc#apply-generate-meta
      (lambda _%$%args214162214185%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%$%args214162214185%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp215760 (list)) (__tmp215759 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp215760
         '(state)
         __tmp215759
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args214157%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args214157%_)))
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
      (let ((__tmp215761
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
        (__make-atomic-promise __tmp215761)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords214132%_ _%$%state214129214133%_ _%stx214134%_)
        (let ((_%state214137%_
               (if (eq? _%$%state214129214133%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%$%state214129214133%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self214139%_
                  (let ((__obj215716
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj215716
                       _%state214137%_
                       '1
                       '#f
                       '#f))
                    __obj215716))
                 (__tmp215762
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self214139%_ _%stx214134%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp215762
             gxc#current-compile-method
             _%self214139%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords214146%_ . _%args214147%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords214146%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords214146%_
                  'state:
                  absent-value))
               _%args214147%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%$%args214130214153%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%$%args214130214153%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self214058%_ _%stx214059%_)
        (let* ((_%$%g214061214078%_
                (lambda (_%$%g214062214075%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g214062214075%_))))
               (_%$%g214060214125%_
                (lambda (_%$%g214062214081%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g214062214081%_))
                      (let ((_%$%e214065214083%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g214062214081%_))))
                        (let ((_%$%hd214066214086%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e214065214083%_)))
                              (_%$%tl214067214088%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e214065214083%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl214067214088%_))
                              (let ((_%$%e214068214091%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl214067214088%_))))
                                (let ((_%$%hd214069214094%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e214068214091%_)))
                                      (_%$%tl214070214096%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e214068214091%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl214070214096%_))
                                      (let ((_%$%e214071214099%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl214070214096%_))))
                                        (let ((_%$%hd214072214102%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e214071214099%_)))
                                              (_%$%tl214073214104%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e214071214099%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl214073214104%_))
                                              (let ((__tmp215763
                                                     (lambda (_%bind214123%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#identifier?
                                                              _%bind214123%_))
                                                           (gxc#add-module-binding!
                                                            _%bind214123%_
                                                            '#f)
                                                           '#!void))))
                                                (declare (not safe))
                                                (gx#stx-for-each1
                                                 __tmp215763
                                                 _%$%hd214069214094%_))
                                              (_%$%g214061214078%_
                                               _%$%g214062214081%_))))
                                      (_%$%g214061214078%_
                                       _%$%g214062214081%_))))
                              (_%$%g214061214078%_ _%$%g214062214081%_))))
                      (_%$%g214061214078%_ _%$%g214062214081%_)))))
          (_%$%g214060214125%_ _%stx214059%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self213990%_ _%stx213991%_)
        (let* ((_%$%g213993214010%_
                (lambda (_%$%g213994214007%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g213994214007%_))))
               (_%$%g213992214055%_
                (lambda (_%$%g213994214013%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g213994214013%_))
                      (let ((_%$%e213997214015%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g213994214013%_))))
                        (let ((_%$%hd213998214018%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e213997214015%_)))
                              (_%$%tl213999214020%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e213997214015%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl213999214020%_))
                              (let ((_%$%e214000214023%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl213999214020%_))))
                                (let ((_%$%hd214001214026%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e214000214023%_)))
                                      (_%$%tl214002214028%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e214000214023%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl214002214028%_))
                                      (let ((_%$%e214003214031%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl214002214028%_))))
                                        (let ((_%$%hd214004214034%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e214003214031%_)))
                                              (_%$%tl214005214036%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e214003214031%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl214005214036%_))
                                              (gxc#add-module-binding!
                                               _%$%hd214001214026%_
                                               '#t)
                                              (_%$%g213993214010%_
                                               _%$%g213994214013%_))))
                                      (_%$%g213993214010%_
                                       _%$%g213994214013%_))))
                              (_%$%g213993214010%_ _%$%g213994214013%_))))
                      (_%$%g213993214010%_ _%$%g213994214013%_)))))
          (_%$%g213992214055%_ _%stx213991%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self213932%_ _%stx213933%_)
        (let* ((_%$%g213935213949%_
                (lambda (_%$%g213936213946%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g213936213946%_))))
               (_%$%g213934213987%_
                (lambda (_%$%g213936213952%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g213936213952%_))
                      (let ((_%$%e213939213954%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g213936213952%_))))
                        (let ((_%$%hd213940213957%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e213939213954%_)))
                              (_%$%tl213941213959%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e213939213954%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl213941213959%_))
                              (let ((_%$%e213942213962%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl213941213959%_))))
                                (let ((_%$%hd213943213965%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e213942213962%_)))
                                      (_%$%tl213944213967%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e213942213962%_))))
                                  (let ((_%ctx213984%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-local-e__0
                                            _%$%hd213943213965%_))))
                                    (set-box!
                                     (let ()
                                       (declare (not safe))
                                       (slot-ref__0 _%self213932%_ 'modules))
                                     (cons _%ctx213984%_
                                           (unbox (let ()
                                                    (declare (not safe))
                                                    (slot-ref__0
                                                     _%self213932%_
                                                     'modules)))))
                                    (let ((__tmp215764
                                           (lambda ()
                                             (let ((__tmp215765
                                                    (##structure-ref
                                                     _%ctx213984%_
                                                     '11
                                                     gx#module-context::t
                                                     '#f)))
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self213932%_
                                                __tmp215765)))))
                                      (declare (not safe))
                                      (call-with-parameters__1
                                       __tmp215764
                                       gx#current-expander-context
                                       _%ctx213984%_)))))
                              (_%$%g213935213949%_ _%$%g213936213952%_))))
                      (_%$%g213935213949%_ _%$%g213936213952%_)))))
          (_%$%g213934213987%_ _%stx213933%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%$%decls213886213888%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%$%decls213886213888%_
              (let ((_%decls213890%_ _%$%decls213886213888%_))
                (let _%lp213892%_ ((_%rest213894%_ _%decls213890%_))
                  (let* ((_%$%rest213895213903%_ _%rest213894%_)
                         (_%$%else213897213911%_ (lambda () '#f))
                         (_%$%K213899213920%_
                          (lambda (_%decls213914%_ _%decl213915%_)
                            (if (equal? _%decl213915%_ '(not safe))
                                '#t
                                (if (equal? _%decl213915%_ '(safe))
                                    '#f
                                    (_%lp213892%_ _%decls213914%_))))))
                    (if (pair? _%$%rest213895213903%_)
                        (let ((_%$%hd213900213923%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%rest213895213903%_)))
                              (_%$%tl213901213925%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%rest213895213903%_))))
                          (let* ((_%decl213928%_ _%$%hd213900213923%_)
                                 (_%decls213930%_ _%$%tl213901213925%_))
                            (_%$%K213899213920%_
                             _%decls213930%_
                             _%decl213928%_)))
                        (_%$%else213897213911%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id213880%_ _%syntax?213881%_)
        (let ((_%eid213883%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id213880%_))
                '1
                gx#binding::t
                '#f))
              (_%ht213884%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid213883%_))
              '#!void
              (let ((__tmp215766
                     (let ((__tmp215767
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid213883%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp215767 _%syntax?213881%_))))
                (declare (not safe))
                (hash-put! _%ht213884%_ _%eid213883%_ __tmp215766))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self213877%_ _%stx213878%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self213724%_ _%stx213725%_)
        (letrec ((_%simplify213727%_
                  (lambda (_%body213775%_)
                    (let _%lp213777%_ ((_%rest213779%_ _%body213775%_)
                                       (_%r213780%_ '()))
                      (let* ((_%$%rest213781213789%_ _%rest213779%_)
                             (_%$%else213783213797%_
                              (lambda () (reverse _%r213780%_)))
                             (_%$%K213785213865%_
                              (lambda (_%rest213800%_ _%hd213801%_)
                                (let* ((_%$%hd213802213818%_ _%hd213801%_)
                                       (_%$%else213806213826%_
                                        (lambda ()
                                          (_%lp213777%_
                                           _%rest213800%_
                                           (cons _%hd213801%_ _%r213780%_)))))
                                  (let ((_%$%K213814213855%_
                                         (lambda (_%exprs213853%_)
                                           (_%lp213777%_
                                            (append _%exprs213853%_
                                                    _%rest213800%_)
                                            _%r213780%_)))
                                        (_%$%K213809213839%_
                                         (lambda ()
                                           (if (null? _%rest213800%_)
                                               (_%lp213777%_
                                                _%rest213800%_
                                                (cons _%hd213801%_
                                                      _%r213780%_))
                                               (_%lp213777%_
                                                _%rest213800%_
                                                _%r213780%_))))
                                        (_%$%K213808213831%_
                                         (lambda ()
                                           (if (null? _%rest213800%_)
                                               (_%lp213777%_
                                                _%rest213800%_
                                                (cons _%hd213801%_
                                                      _%r213780%_))
                                               (_%lp213777%_
                                                _%rest213800%_
                                                _%r213780%_)))))
                                    (let ((_%$%try-match213805213834%_
                                           (lambda ()
                                             (if (symbol? _%$%hd213802213818%_)
                                                 (_%$%K213808213831%_)
                                                 (_%$%else213806213826%_)))))
                                      (if (pair? _%$%hd213802213818%_)
                                          (let ((_%$%tl213816213860%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%hd213802213818%_)))
                                                (_%$%hd213815213858%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%hd213802213818%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%$%hd213815213858%_
                                                         'begin))
                                                (let ((_%exprs213863%_
                                                       _%$%tl213816213860%_))
                                                  (_%$%K213814213855%_
                                                   _%exprs213863%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%$%hd213815213858%_
                                                             'quote))
                                                    (if (pair? _%$%tl213816213860%_)
                                                        (let ((_%$%tl213813213847%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%tl213816213860%_))))
                  (if (null? _%$%tl213813213847%_)
                      (_%$%K213809213839%_)
                      (_%$%try-match213805213834%_)))
                (_%$%try-match213805213834%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%try-match213805213834%_))))
                                          (_%$%try-match213805213834%_))))))))
                        (if (pair? _%$%rest213781213789%_)
                            (let ((_%$%hd213786213868%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest213781213789%_)))
                                  (_%$%tl213787213870%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest213781213789%_))))
                              (let* ((_%hd213873%_ _%$%hd213786213868%_)
                                     (_%rest213875%_ _%$%tl213787213870%_))
                                (_%$%K213785213865%_
                                 _%rest213875%_
                                 _%hd213873%_)))
                            (_%$%else213783213797%_)))))))
          (let* ((_%$%g213729213739%_
                  (lambda (_%$%g213730213736%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g213730213736%_))))
                 (_%$%g213728213772%_
                  (lambda (_%$%g213730213742%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g213730213742%_))
                        (let ((_%$%e213732213744%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g213730213742%_))))
                          (let ((_%$%hd213733213747%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e213732213744%_)))
                                (_%$%tl213734213749%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e213732213744%_))))
                            (let* ((_%body213767%_
                                    (map (lambda (_%$%g213762213764%_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self213724%_
                                              _%$%g213762213764%_)))
                                         _%$%tl213734213749%_))
                                   (_%body213769%_
                                    (_%simplify213727%_ _%body213767%_)))
                              (if (let ((__tmp215768 (length _%body213769%_)))
                                    (declare (not safe))
                                    (##fx= __tmp215768 '1))
                                  (car _%body213769%_)
                                  (cons 'begin _%body213769%_)))))
                        (_%$%g213729213739%_ _%$%g213730213742%_)))))
            (_%$%g213728213772%_ _%stx213725%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self213685%_ _%stx213686%_)
        (let* ((_%$%g213688213698%_
                (lambda (_%$%g213689213695%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g213689213695%_))))
               (_%$%g213687213721%_
                (lambda (_%$%g213689213701%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g213689213701%_))
                      (let ((_%$%e213691213703%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g213689213701%_))))
                        (let ((_%$%hd213692213706%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e213691213703%_)))
                              (_%$%tl213693213708%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e213691213703%_))))
                          (cons 'begin
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax->datum _%$%tl213693213708%_)))))
                      (_%$%g213688213698%_ _%$%g213689213701%_)))))
          (_%$%g213687213721%_ _%stx213686%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self213451%_ _%stx213452%_)
        (let* ((_%__stx214358214359%_ _%stx213452%_)
               (_%$%g213456213508%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx214358214359%_)))))
          (let ((_%__kont214360214361%_
                 (lambda (_%$%g213458213667%_ _%$%g213459213668%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self213451%_ _%$%g213458213667%_))))
                (_%__kont214362214363%_
                 (lambda (_%$%g213469213615%_
                          _%$%g213470213616%_
                          _%$%g213471213617%_)
                   (if (let ((__tmp215769
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%g213471213617%_))))
                         (declare (not safe))
                         (##memq __tmp215769 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self213451%_
                          _%$%g213469213615%_)))))
                (_%__kont214366214367%_
                 (lambda (_%$%g213493213537%_ _%$%g213494213538%_)
                   (let ((_%decls213553%_
                          (map gx#syntax->datum _%$%g213494213538%_)))
                     (let ((__tmp215771
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls213553%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self213451%_
                                                   _%$%g213493213537%_))
                                                '())))))
                           (__tmp215770
                            (append _%decls213553%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-decls)))))
                       (declare (not safe))
                       (call-with-parameters__1
                        __tmp215771
                        gxc#current-compile-decls
                        __tmp215770))))))
            (let* ((_%__match214413214414%_
                    (lambda (_%$%e213472213561%_
                             _%$%hd213473213564%_
                             _%$%tl213474213566%_
                             _%$%e213475213569%_
                             _%$%hd213476213572%_
                             _%$%tl213477213574%_
                             _%$%e213478213577%_
                             _%$%hd213479213580%_
                             _%$%tl213480213582%_
                             _%__splice214364214365%_
                             _%$%target213481213585%_
                             _%$%tl213483213587%_)
                      (letrec ((_%$%loop213484213590%_
                                (lambda (_%$%hd213482213593%_
                                         _%$%param213488213595%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd213482213593%_))
                                      (let ((_%$%e213485213597%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd213482213593%_))))
                                        (let ((_%$%lp-tl213487213602%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e213485213597%_)))
                                              (_%$%lp-hd213486213600%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e213485213597%_))))
                                          (_%$%loop213484213590%_
                                           _%$%lp-tl213487213602%_
                                           (cons _%$%lp-hd213486213600%_
                                                 _%$%param213488213595%_))))
                                      (let ((_%$%param213489213605%_
                                             (reverse _%$%param213488213595%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl213477213574%_))
                                            (let ((_%$%e213490213607%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl213477213574%_))))
                                              (let ((_%$%tl213492213612%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e213490213607%_)))
                                                    (_%$%hd213491213610%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e213490213607%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl213492213612%_))
                                                    (let ((_%$%g213469213615%_
                                                           _%$%hd213491213610%_)
                                                          (_%$%g213470213616%_
                                                           _%$%param213489213605%_)
                                                          (_%$%g213471213617%_
                                                           _%$%hd213479213580%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%$%g213471213617%_))
                       (not (let ((__tmp215772
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g213471213617%_))))
                              (declare (not safe))
                              (##memq __tmp215772 gxc#gambit-annotations))))
                  (_%__kont214362214363%_
                   _%$%g213469213615%_
                   _%$%g213470213616%_
                   _%$%g213471213617%_)
                  (_%__kont214366214367%_
                   _%$%hd213491213610%_
                   _%$%hd213476213572%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g213456213508%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g213456213508%_))))))))
                        (_%$%loop213484213590%_
                         _%$%target213481213585%_
                         '()))))
                   (_%__match214387214388%_
                    (lambda (_%$%e213460213643%_
                             _%$%hd213461213646%_
                             _%$%tl213462213648%_
                             _%$%e213463213651%_
                             _%$%hd213464213654%_
                             _%$%tl213465213656%_
                             _%$%e213466213659%_
                             _%$%hd213467213662%_
                             _%$%tl213468213664%_)
                      (let ((_%$%g213458213667%_ _%$%hd213467213662%_)
                            (_%$%g213459213668%_ _%$%hd213464213654%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%$%g213459213668%_))
                            (_%__kont214360214361%_
                             _%$%g213458213667%_
                             _%$%g213459213668%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd213464213654%_))
                                (let ((_%$%e213478213577%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd213464213654%_))))
                                  (let ((_%$%tl213480213582%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e213478213577%_)))
                                        (_%$%hd213479213580%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e213478213577%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%tl213480213582%_))
                                        (let ((_%__splice214364214365%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl213480213582%_
                                                  '0))))
                                          (let ((_%$%tl213483213587%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice214364214365%_
                                                    '1)))
                                                (_%$%target213481213585%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice214364214365%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl213483213587%_))
                                                (_%__match214413214414%_
                                                 _%$%e213460213643%_
                                                 _%$%hd213461213646%_
                                                 _%$%tl213462213648%_
                                                 _%$%e213463213651%_
                                                 _%$%hd213464213654%_
                                                 _%$%tl213465213656%_
                                                 _%$%e213478213577%_
                                                 _%$%hd213479213580%_
                                                 _%$%tl213480213582%_
                                                 _%__splice214364214365%_
                                                 _%$%target213481213585%_
                                                 _%$%tl213483213587%_)
                                                (_%__kont214366214367%_
                                                 _%$%hd213467213662%_
                                                 _%$%hd213464213654%_))))
                                        (_%__kont214366214367%_
                                         _%$%hd213467213662%_
                                         _%$%hd213464213654%_))))
                                (_%__kont214366214367%_
                                 _%$%hd213467213662%_
                                 _%$%hd213464213654%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx214358214359%_))
                  (let ((_%$%e213460213643%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx214358214359%_))))
                    (let ((_%$%tl213462213648%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e213460213643%_)))
                          (_%$%hd213461213646%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e213460213643%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl213462213648%_))
                          (let ((_%$%e213463213651%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl213462213648%_))))
                            (let ((_%$%tl213465213656%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e213463213651%_)))
                                  (_%$%hd213464213654%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e213463213651%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl213465213656%_))
                                  (let ((_%$%e213466213659%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl213465213656%_))))
                                    (let ((_%$%tl213468213664%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e213466213659%_)))
                                          (_%$%hd213467213662%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e213466213659%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl213468213664%_))
                                          (_%__match214387214388%_
                                           _%$%e213460213643%_
                                           _%$%hd213461213646%_
                                           _%$%tl213462213648%_
                                           _%$%e213463213651%_
                                           _%$%hd213464213654%_
                                           _%$%tl213465213656%_
                                           _%$%e213466213659%_
                                           _%$%hd213467213662%_
                                           _%$%tl213468213664%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%hd213464213654%_))
                                              (let ((_%$%e213478213577%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd213464213654%_))))
                                                (let ((_%$%tl213480213582%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e213478213577%_)))
                                                      (_%$%hd213479213580%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e213478213577%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl213480213582%_))
                                                      (let ((_%__splice214364214365%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl213480213582%_
                        '0))))
                (let ((_%$%tl213483213587%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice214364214365%_ '1)))
                      (_%$%target213481213585%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice214364214365%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl213483213587%_))
                      (_%__match214413214414%_
                       _%$%e213460213643%_
                       _%$%hd213461213646%_
                       _%$%tl213462213648%_
                       _%$%e213463213651%_
                       _%$%hd213464213654%_
                       _%$%tl213465213656%_
                       _%$%e213478213577%_
                       _%$%hd213479213580%_
                       _%$%tl213480213582%_
                       _%__splice214364214365%_
                       _%$%target213481213585%_
                       _%$%tl213483213587%_)
                      (let () (declare (not safe)) (_%$%g213456213508%_)))))
              (let () (declare (not safe)) (_%$%g213456213508%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g213456213508%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd213464213654%_))
                                      (let ((_%$%e213478213577%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd213464213654%_))))
                                        (let ((_%$%tl213480213582%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e213478213577%_)))
                                              (_%$%hd213479213580%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e213478213577%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%$%tl213480213582%_))
                                              (let ((_%__splice214364214365%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl213480213582%_
                                                        '0))))
                                                (let ((_%$%tl213483213587%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice214364214365%_
                                                          '1)))
                                                      (_%$%target213481213585%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice214364214365%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl213483213587%_))
                                                      (_%__match214413214414%_
                                                       _%$%e213460213643%_
                                                       _%$%hd213461213646%_
                                                       _%$%tl213462213648%_
                                                       _%$%e213463213651%_
                                                       _%$%hd213464213654%_
                                                       _%$%tl213465213656%_
                                                       _%$%e213478213577%_
                                                       _%$%hd213479213580%_
                                                       _%$%tl213480213582%_
                                                       _%__splice214364214365%_
                                                       _%$%target213481213585%_
                                                       _%$%tl213483213587%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g213456213508%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g213456213508%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g213456213508%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g213456213508%_)))))
                  (let () (declare (not safe)) (_%$%g213456213508%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self213410%_ _%stx213411%_)
        (let* ((_%$%g213413213423%_
                (lambda (_%$%g213414213420%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g213414213420%_))))
               (_%$%g213412213448%_
                (lambda (_%$%g213414213426%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g213414213426%_))
                      (let ((_%$%e213416213428%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g213414213426%_))))
                        (let ((_%$%hd213417213431%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e213416213428%_)))
                              (_%$%tl213418213433%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e213416213428%_))))
                          (let ((_%decls213446%_
                                 (map gx#syntax->datum _%$%tl213418213433%_)))
                            (let ((__tmp215773
                                   (append _%decls213446%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#current-compile-decls)))))
                              (declare (not safe))
                              (gxc#current-compile-decls __tmp215773))
                            (cons 'declare _%decls213446%_))))
                      (_%$%g213413213423%_ _%$%g213414213426%_)))))
          (_%$%g213412213448%_ _%stx213411%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self213157%_ _%stx213158%_)
        (let* ((_%$%g213160213177%_
                (lambda (_%$%g213161213174%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g213161213174%_))))
               (_%$%g213159213407%_
                (lambda (_%$%g213161213180%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g213161213180%_))
                      (let ((_%$%e213164213182%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g213161213180%_))))
                        (let ((_%$%hd213165213185%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e213164213182%_)))
                              (_%$%tl213166213187%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e213164213182%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl213166213187%_))
                              (let ((_%$%e213167213190%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl213166213187%_))))
                                (let ((_%$%hd213168213193%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e213167213190%_)))
                                      (_%$%tl213169213195%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e213167213190%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl213169213195%_))
                                      (let ((_%$%e213170213198%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl213169213195%_))))
                                        (let ((_%$%hd213171213201%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e213170213198%_)))
                                              (_%$%tl213172213203%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e213170213198%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl213172213203%_))
                                              (let* ((_%__stx214466214467%_
                                                      _%$%hd213168213193%_)
                                                     (_%$%g213224213238%_
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%__stx214466214467%_)))))
                                                (let ((_%__kont214468214469%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self213157%_
                                                            _%$%hd213171213201%_))))
                                                      (_%__kont214470214471%_
                                                       (lambda (_%$%g213230213370%_)
                                                         (let ((_%eid213379%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#generate-runtime-binding-id
                           _%$%g213230213370%_))))
                   (let ((_%$%lambda-expr213380213382%_
                          (gxc#apply-find-lambda-expression
                           _%$%hd213171213201%_)))
                     (if _%$%lambda-expr213380213382%_
                         (let* ((_%lambda-expr213384%_
                                 _%$%lambda-expr213380213382%_)
                                (__tmp215774
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-names))))
                           (declare (not safe))
                           (hash-put!
                            __tmp215774
                            _%lambda-expr213384%_
                            _%eid213379%_))
                         '#f))
                   (cons 'define
                         (cons _%eid213379%_
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self213157%_
                                        _%$%hd213171213201%_))
                                     '()))))))
              (_%__kont214472214473%_
               (lambda ()
                 (let* ((_%tmp213245%_
                         (let ()
                           (declare (not safe))
                           (gxc#generate-runtime-temporary__% '#t)))
                        (_%body213354%_
                         (let _%lp213247%_ ((_%rest213249%_
                                             _%$%hd213168213193%_)
                                            (_%k213250%_ '0)
                                            (_%r213251%_ '()))
                           (let* ((_%__stx214436214437%_ _%rest213249%_)
                                  (_%$%g213256213273%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%__stx214436214437%_)))))
                             (let ((_%__kont214438214439%_
                                    (lambda (_%$%g213258213341%_)
                                      (_%lp213247%_
                                       _%$%g213258213341%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k213250%_ '1))
                                       _%r213251%_)))
                                   (_%__kont214440214441%_
                                    (lambda (_%$%g213263213314%_
                                             _%$%g213264213315%_)
                                      (_%lp213247%_
                                       _%$%g213263213314%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k213250%_ '1))
                                       (cons (cons 'define
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%$%g213264213315%_))
                                                         (cons (gxc#generate-runtime-values-ref
                                                                _%tmp213245%_
                                                                _%k213250%_
                                                                _%$%g213263213314%_)
                                                               '())))
                                             _%r213251%_))))
                                   (_%__kont214442214443%_
                                    (lambda (_%$%g213268213285%_)
                                      (let ((__tmp215775
                                             (cons (cons 'define
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#generate-runtime-binding-id _%$%g213268213285%_))
                       (cons (gxc#generate-runtime-values->list
                              _%tmp213245%_
                              _%k213250%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                        (declare (not safe))
                                        (foldl__0
                                         cons
                                         __tmp215775
                                         _%r213251%_))))
                                   (_%__kont214444214445%_
                                    (lambda () (reverse _%r213251%_))))
                               (let ((_%$%g213254213301%_
                                      (lambda ()
                                        (let ((_%$%g213268213285%_
                                               _%__stx214436214437%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%$%g213268213285%_))
                                              (_%__kont214442214443%_
                                               _%$%g213268213285%_)
                                              (_%__kont214444214445%_))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx214436214437%_))
                                     (let ((_%$%e213259213330%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx214436214437%_))))
                                       (let ((_%$%tl213261213335%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e213259213330%_)))
                                             (_%$%hd213260213333%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e213259213330%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-datum?
                                                _%$%hd213260213333%_))
                                             (let ((_%$%e213262213338%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%hd213260213333%_))))
                                               (if (equal? _%$%e213262213338%_
                                                           '#f)
                                                   (_%__kont214438214439%_
                                                    _%$%tl213261213335%_)
                                                   (_%__kont214440214441%_
                                                    _%$%tl213261213335%_
                                                    _%$%hd213260213333%_)))
                                             (_%__kont214440214441%_
                                              _%$%tl213261213335%_
                                              _%$%hd213260213333%_))))
                                     (_%$%g213254213301%_))))))))
                   (cons 'begin
                         (cons (cons 'define
                                     (cons _%tmp213245%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self213157%_
                                                    _%$%hd213171213201%_))
                                                 '())))
                               (cons (gxc#generate-runtime-check-values
                                      _%tmp213245%_
                                      _%$%hd213168213193%_
                                      _%$%hd213171213201%_)
                                     _%body213354%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%__stx214466214467%_))
                                                      (let ((_%$%e213226213391%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%__stx214466214467%_))))
                (let ((_%$%tl213228213396%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e213226213391%_)))
                      (_%$%hd213227213394%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e213226213391%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%$%hd213227213394%_))
                      (let ((_%$%e213229213399%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%hd213227213394%_))))
                        (if (equal? _%$%e213229213399%_ '#f)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl213228213396%_))
                                (_%__kont214468214469%_)
                                (_%__kont214472214473%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl213228213396%_))
                                (_%__kont214470214471%_ _%$%hd213227213394%_)
                                (_%__kont214472214473%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl213228213396%_))
                          (_%__kont214470214471%_ _%$%hd213227213394%_)
                          (_%__kont214472214473%_)))))
              (_%__kont214472214473%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g213160213177%_
                                               _%$%g213161213180%_))))
                                      (_%$%g213160213177%_
                                       _%$%g213161213180%_))))
                              (_%$%g213160213177%_ _%$%g213161213180%_))))
                      (_%$%g213160213177%_ _%$%g213161213180%_)))))
          (_%$%g213159213407%_ _%stx213158%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals213132%_ _%hd213133%_ _%expr213134%_)
        (let ((_%$e213136%_ (gxc#apply-count-values _%expr213134%_)))
          (if _%$e213136%_
              (let ((_%len213141%_
                     (let ()
                       (declare (not safe))
                       (gx#stx-length _%hd213133%_)))
                    (_%cmp213142%_
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-list? _%hd213133%_))
                         fx=
                         fx>=)))
                (if (or (let () (declare (not safe)) (##fx= _%len213141%_ '0))
                        (_%cmp213142%_ _%$e213136%_ _%len213141%_))
                    '#!void
                    (let ()
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Value count mismatch"
                       _%expr213134%_
                       _%hd213133%_))))
              (let* ((_%len213148%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd213133%_)))
                     (_%cmp213150%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd213133%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg213152%_
                      (let ((__tmp215777
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd213133%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp215776 (number->string _%len213148%_)))
                        (declare (not safe))
                        (##string-append __tmp215777 __tmp215776 '" values")))
                     (_%count213154%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd213133%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len213148%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count213154%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals213132%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp213150%_
                                (cons _%count213154%_
                                      (cons _%len213148%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp213150%_
                                                        (cons _%count213154%_
                                                              (cons _%len213148%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg213152%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count213154%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var213127%_)
        (letrec ((_%generate-inline213129%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var213127%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var213127%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline213129%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline213129%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var213120%_ _%i213121%_ _%rest213122%_)
        (letrec ((_%generate-inline213124%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i213121%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest213122%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var213120%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var213120%_
                                                      (cons '0 '())))
                                          (cons _%var213120%_ '()))))
                        (cons '##values-ref
                              (cons _%var213120%_ (cons _%i213121%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline213124%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline213124%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var213114%_ _%i213115%_)
        (if (let () (declare (not safe)) (##fx= _%i213115%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var213114%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var213114%_ '()))
                                  (cons (cons 'list (cons _%var213114%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var213114%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var213114%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var213114%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i213115%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var213114%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var213114%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var213114%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var213114%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var213114%_ '()))
                                (cons _%i213115%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var213114%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i213115%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self213046%_ _%stx213047%_)
        (let* ((_%$%g213049213066%_
                (lambda (_%$%g213050213063%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g213050213063%_))))
               (_%$%g213048213111%_
                (lambda (_%$%g213050213069%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g213050213069%_))
                      (let ((_%$%e213053213071%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g213050213069%_))))
                        (let ((_%$%hd213054213074%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e213053213071%_)))
                              (_%$%tl213055213076%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e213053213071%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl213055213076%_))
                              (let ((_%$%e213056213079%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl213055213076%_))))
                                (let ((_%$%hd213057213082%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e213056213079%_)))
                                      (_%$%tl213058213084%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e213056213079%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl213058213084%_))
                                      (let ((_%$%e213059213087%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl213058213084%_))))
                                        (let ((_%$%hd213060213090%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e213059213087%_)))
                                              (_%$%tl213061213092%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e213059213087%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl213061213092%_))
                                              (gxc#generate-runtime-lambda-form
                                               _%self213046%_
                                               _%$%hd213057213082%_
                                               _%$%hd213060213090%_)
                                              (_%$%g213049213066%_
                                               _%$%g213050213069%_))))
                                      (_%$%g213049213066%_
                                       _%$%g213050213069%_))))
                              (_%$%g213049213066%_ _%$%g213050213069%_))))
                      (_%$%g213049213066%_ _%$%g213050213069%_)))))
          (_%$%g213048213111%_ _%stx213047%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self213005%_ _%hd213006%_ _%body213007%_)
        (let* ((_%hd213009%_ (gxc#generate-runtime-lambda-head _%hd213006%_))
               (_%body213011%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self213005%_ _%body213007%_)))
               (_%body213043%_
                (let* ((_%$%body213012213020%_ _%body213011%_)
                       (_%$%else213014213028%_
                        (lambda () (cons _%body213011%_ '())))
                       (_%$%K213016213033%_
                        (lambda (_%exprs213031%_) _%exprs213031%_)))
                  (if (pair? _%$%body213012213020%_)
                      (let ((_%$%hd213017213036%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%body213012213020%_)))
                            (_%$%tl213018213038%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%body213012213020%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%$%hd213017213036%_ 'begin))
                            (let ((_%exprs213041%_ _%$%tl213018213038%_))
                              (_%$%K213016213033%_ _%exprs213041%_))
                            (_%$%else213014213028%_)))
                      (_%$%else213014213028%_)))))
          (cons 'lambda (cons _%hd213009%_ _%body213043%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd213003%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd213003%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self211560%_ _%stx211561%_)
        (letrec ((_%dispatch-case?211563%_
                  (lambda (_%hd212241%_ _%body212242%_)
                    (let* ((_%form212244%_
                            (cons _%hd212241%_ (cons _%body212242%_ '())))
                           (_%__stx214498214499%_ _%form212244%_)
                           (_%$%g212249212406%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx214498214499%_)))))
                      (let ((_%__kont214500214501%_
                             (lambda (_%$%g212251212923%_
                                      _%$%g212252212924%_
                                      _%$%g212253212925%_)
                               '#t))
                            (_%__kont214506214507%_
                             (lambda (_%$%g212296212715%_
                                      _%$%g212297212716%_
                                      _%$%g212298212717%_
                                      _%$%g212299212718%_
                                      _%$%g212300212719%_
                                      _%$%g212301212720%_)
                               '#t))
                            (_%__kont214512214513%_
                             (lambda (_%$%g212362212514%_
                                      _%$%g212363212515%_
                                      _%$%g212364212516%_
                                      _%$%g212365212517%_)
                               '#t))
                            (_%__kont214514214515%_ (lambda () '#f)))
                        (let* ((_%__match214639214640%_
                                (lambda (_%$%e212366212418%_
                                         _%$%hd212367212421%_
                                         _%$%tl212368212423%_
                                         _%$%e212369212426%_
                                         _%$%hd212370212429%_
                                         _%$%tl212371212431%_
                                         _%$%e212372212434%_
                                         _%$%hd212373212437%_
                                         _%$%tl212374212439%_
                                         _%$%e212375212442%_
                                         _%$%hd212376212445%_
                                         _%$%tl212377212447%_
                                         _%$%e212378212450%_
                                         _%$%hd212379212453%_
                                         _%$%tl212380212455%_
                                         _%$%e212381212458%_
                                         _%$%hd212382212461%_
                                         _%$%tl212383212463%_
                                         _%$%e212384212466%_
                                         _%$%hd212385212469%_
                                         _%$%tl212386212471%_
                                         _%$%e212387212474%_
                                         _%$%hd212388212477%_
                                         _%$%tl212389212479%_
                                         _%$%e212390212482%_
                                         _%$%hd212391212485%_
                                         _%$%tl212392212487%_
                                         _%$%e212393212490%_
                                         _%$%hd212394212493%_
                                         _%$%tl212395212495%_
                                         _%$%e212396212498%_
                                         _%$%hd212397212501%_
                                         _%$%tl212398212503%_
                                         _%$%e212399212506%_
                                         _%$%hd212400212509%_
                                         _%$%tl212401212511%_)
                                  (let ((_%$%g212362212514%_
                                         _%$%hd212400212509%_)
                                        (_%$%g212363212515%_
                                         _%$%hd212391212485%_)
                                        (_%$%g212364212516%_
                                         _%$%hd212382212461%_)
                                        (_%$%g212365212517%_
                                         _%$%hd212367212421%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%$%g212365212517%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%$%g212364212516%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%$%g212365212517%_
                                                _%$%g212362212514%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%$%g212363212515%_
                                                     _%$%g212365212517%_))))
                                        (_%__kont214512214513%_
                                         _%$%g212362212514%_
                                         _%$%g212363212515%_
                                         _%$%g212364212516%_
                                         _%$%g212365212517%_)
                                        (_%__kont214514214515%_)))))
                               (_%__match214611214612%_
                                (lambda (_%$%e212366212418%_
                                         _%$%hd212367212421%_
                                         _%$%tl212368212423%_
                                         _%$%e212369212426%_
                                         _%$%hd212370212429%_
                                         _%$%tl212371212431%_
                                         _%$%e212372212434%_
                                         _%$%hd212373212437%_
                                         _%$%tl212374212439%_
                                         _%$%e212375212442%_
                                         _%$%hd212376212445%_
                                         _%$%tl212377212447%_
                                         _%$%e212378212450%_
                                         _%$%hd212379212453%_
                                         _%$%tl212380212455%_
                                         _%$%e212381212458%_
                                         _%$%hd212382212461%_
                                         _%$%tl212383212463%_
                                         _%$%e212384212466%_
                                         _%$%hd212385212469%_
                                         _%$%tl212386212471%_
                                         _%$%e212387212474%_
                                         _%$%hd212388212477%_
                                         _%$%tl212389212479%_
                                         _%$%e212390212482%_
                                         _%$%hd212391212485%_
                                         _%$%tl212392212487%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl212386212471%_))
                                      (let ((_%$%e212393212490%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl212386212471%_))))
                                        (let ((_%$%tl212395212495%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e212393212490%_)))
                                              (_%$%hd212394212493%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e212393212490%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%hd212394212493%_))
                                              (let ((_%$%e212396212498%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd212394212493%_))))
                                                (let ((_%$%tl212398212503%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e212396212498%_)))
                                                      (_%$%hd212397212501%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e212396212498%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%$%hd212397212501%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%$%hd212397212501%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl212398212503%_))
                      (let ((_%$%e212399212506%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl212398212503%_))))
                        (let ((_%$%tl212401212511%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e212399212506%_)))
                              (_%$%hd212400212509%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e212399212506%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl212401212511%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl212395212495%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl212371212431%_))
                                      (_%__match214639214640%_
                                       _%$%e212366212418%_
                                       _%$%hd212367212421%_
                                       _%$%tl212368212423%_
                                       _%$%e212369212426%_
                                       _%$%hd212370212429%_
                                       _%$%tl212371212431%_
                                       _%$%e212372212434%_
                                       _%$%hd212373212437%_
                                       _%$%tl212374212439%_
                                       _%$%e212375212442%_
                                       _%$%hd212376212445%_
                                       _%$%tl212377212447%_
                                       _%$%e212378212450%_
                                       _%$%hd212379212453%_
                                       _%$%tl212380212455%_
                                       _%$%e212381212458%_
                                       _%$%hd212382212461%_
                                       _%$%tl212383212463%_
                                       _%$%e212384212466%_
                                       _%$%hd212385212469%_
                                       _%$%tl212386212471%_
                                       _%$%e212387212474%_
                                       _%$%hd212388212477%_
                                       _%$%tl212389212479%_
                                       _%$%e212390212482%_
                                       _%$%hd212391212485%_
                                       _%$%tl212392212487%_
                                       _%$%e212393212490%_
                                       _%$%hd212394212493%_
                                       _%$%tl212395212495%_
                                       _%$%e212396212498%_
                                       _%$%hd212397212501%_
                                       _%$%tl212398212503%_
                                       _%$%e212399212506%_
                                       _%$%hd212400212509%_
                                       _%$%tl212401212511%_)
                                      (_%__kont214514214515%_))
                                  (_%__kont214514214515%_))
                              (_%__kont214514214515%_))))
                      (_%__kont214514214515%_))
                  (_%__kont214514214515%_))
              (_%__kont214514214515%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont214514214515%_))))
                                      (_%__kont214514214515%_))))
                               (_%__match214541214542%_
                                (lambda (_%$%e212302212559%_
                                         _%$%hd212303212562%_
                                         _%$%tl212304212564%_
                                         _%__splice214508214509%_
                                         _%$%target212305212567%_
                                         _%$%tl212307212569%_)
                                  (letrec ((_%$%loop212308212572%_
                                            (lambda (_%$%hd212306212575%_
                                                     _%$%arg212312212577%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd212306212575%_))
                                                  (let ((_%$%e212309212579%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd212306212575%_))))
                                                    (let ((_%$%lp-tl212311212584%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e212309212579%_)))
                                                          (_%$%lp-hd212310212582%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e212309212579%_))))
                                                      (_%$%loop212308212572%_
                                                       _%$%lp-tl212311212584%_
                                                       (cons _%$%lp-hd212310212582%_
                                                             _%$%arg212312212577%_))))
                                                  (let ((_%$%arg212313212587%_
                                                         (reverse _%$%arg212312212577%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl212304212564%_))
                                                        (let ((_%$%e212314212589%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl212304212564%_))))
                  (let ((_%$%tl212316212594%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e212314212589%_)))
                        (_%$%hd212315212592%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e212314212589%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd212315212592%_))
                        (let ((_%$%e212317212597%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd212315212592%_))))
                          (let ((_%$%tl212319212602%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e212317212597%_)))
                                (_%$%hd212318212600%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e212317212597%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd212318212600%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq?
                                       '%#call
                                       _%$%hd212318212600%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl212319212602%_))
                                        (let ((_%$%e212320212605%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl212319212602%_))))
                                          (let ((_%$%tl212322212610%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e212320212605%_)))
                                                (_%$%hd212321212608%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e212320212605%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd212321212608%_))
                                                (let ((_%$%e212323212613%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd212321212608%_))))
                                                  (let ((_%$%tl212325212618%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e212323212613%_)))
                                                        (_%$%hd212324212616%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e212323212613%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd212324212616%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%$%hd212324212616%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl212325212618%_))
                        (let ((_%$%e212326212621%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl212325212618%_))))
                          (let ((_%$%tl212328212626%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e212326212621%_)))
                                (_%$%hd212327212624%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e212326212621%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl212328212626%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl212322212610%_))
                                    (let ((_%$%e212329212629%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%tl212322212610%_))))
                                      (let ((_%$%tl212331212634%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e212329212629%_)))
                                            (_%$%hd212330212632%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e212329212629%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%hd212330212632%_))
                                            (let ((_%$%e212332212637%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%hd212330212632%_))))
                                              (let ((_%$%tl212334212642%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e212332212637%_)))
                                                    (_%$%hd212333212640%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e212332212637%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%$%hd212333212640%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%$%hd212333212640%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl212334212642%_))
                                                            (let ((_%$%e212335212645%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl212334212642%_))))
                      (let ((_%$%tl212337212650%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e212335212645%_)))
                            (_%$%hd212336212648%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e212335212645%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl212337212650%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%$%tl212331212634%_))
                                (if (let ((__tmp215778
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%$%tl212331212634%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp215778 '1))
                                    (let ((_%__splice214510214511%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%$%tl212331212634%_
                                              '1))))
                                      (let ((_%$%tl212340212655%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice214510214511%_
                                                '1)))
                                            (_%$%target212338212653%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice214510214511%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl212340212655%_))
                                            (let ((_%$%e212347212658%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl212340212655%_))))
                                              (let ((_%$%tl212349212663%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e212347212658%_)))
                                                    (_%$%hd212348212661%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e212347212658%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%hd212348212661%_))
                                                    (let ((_%$%e212350212666%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd212348212661%_))))
                                                      (let ((_%$%tl212352212671%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e212350212666%_)))
                    (_%$%hd212351212669%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e212350212666%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%$%hd212351212669%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%$%hd212351212669%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl212352212671%_))
                            (let ((_%$%e212353212674%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl212352212671%_))))
                              (let ((_%$%tl212355212679%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e212353212674%_)))
                                    (_%$%hd212354212677%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e212353212674%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl212355212679%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl212349212663%_))
                                        (letrec ((_%$%loop212341212682%_
                                                  (lambda (_%$%hd212339212685%_
                                                           _%$%xarg212345212687%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd212339212685%_))
                                                        (let ((_%$%e212342212689%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd212339212685%_))))
                  (let ((_%$%lp-tl212344212694%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e212342212689%_)))
                        (_%$%lp-hd212343212692%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e212342212689%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd212343212692%_))
                        (let ((_%$%e212356212697%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%lp-hd212343212692%_))))
                          (let ((_%$%tl212358212702%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e212356212697%_)))
                                (_%$%hd212357212700%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e212356212697%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd212357212700%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%$%hd212357212700%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl212358212702%_))
                                        (let ((_%$%e212359212705%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl212358212702%_))))
                                          (let ((_%$%tl212361212710%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e212359212705%_)))
                                                (_%$%hd212360212708%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e212359212705%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl212361212710%_))
                                                (_%$%loop212341212682%_
                                                 _%$%lp-tl212344212694%_
                                                 (cons _%$%hd212360212708%_
                                                       _%$%xarg212345212687%_))
                                                (_%__match214611214612%_
                                                 _%$%e212302212559%_
                                                 _%$%hd212303212562%_
                                                 _%$%tl212304212564%_
                                                 _%$%e212314212589%_
                                                 _%$%hd212315212592%_
                                                 _%$%tl212316212594%_
                                                 _%$%e212317212597%_
                                                 _%$%hd212318212600%_
                                                 _%$%tl212319212602%_
                                                 _%$%e212320212605%_
                                                 _%$%hd212321212608%_
                                                 _%$%tl212322212610%_
                                                 _%$%e212323212613%_
                                                 _%$%hd212324212616%_
                                                 _%$%tl212325212618%_
                                                 _%$%e212326212621%_
                                                 _%$%hd212327212624%_
                                                 _%$%tl212328212626%_
                                                 _%$%e212329212629%_
                                                 _%$%hd212330212632%_
                                                 _%$%tl212331212634%_
                                                 _%$%e212332212637%_
                                                 _%$%hd212333212640%_
                                                 _%$%tl212334212642%_
                                                 _%$%e212335212645%_
                                                 _%$%hd212336212648%_
                                                 _%$%tl212337212650%_))))
                                        (_%__match214611214612%_
                                         _%$%e212302212559%_
                                         _%$%hd212303212562%_
                                         _%$%tl212304212564%_
                                         _%$%e212314212589%_
                                         _%$%hd212315212592%_
                                         _%$%tl212316212594%_
                                         _%$%e212317212597%_
                                         _%$%hd212318212600%_
                                         _%$%tl212319212602%_
                                         _%$%e212320212605%_
                                         _%$%hd212321212608%_
                                         _%$%tl212322212610%_
                                         _%$%e212323212613%_
                                         _%$%hd212324212616%_
                                         _%$%tl212325212618%_
                                         _%$%e212326212621%_
                                         _%$%hd212327212624%_
                                         _%$%tl212328212626%_
                                         _%$%e212329212629%_
                                         _%$%hd212330212632%_
                                         _%$%tl212331212634%_
                                         _%$%e212332212637%_
                                         _%$%hd212333212640%_
                                         _%$%tl212334212642%_
                                         _%$%e212335212645%_
                                         _%$%hd212336212648%_
                                         _%$%tl212337212650%_))
                                    (_%__match214611214612%_
                                     _%$%e212302212559%_
                                     _%$%hd212303212562%_
                                     _%$%tl212304212564%_
                                     _%$%e212314212589%_
                                     _%$%hd212315212592%_
                                     _%$%tl212316212594%_
                                     _%$%e212317212597%_
                                     _%$%hd212318212600%_
                                     _%$%tl212319212602%_
                                     _%$%e212320212605%_
                                     _%$%hd212321212608%_
                                     _%$%tl212322212610%_
                                     _%$%e212323212613%_
                                     _%$%hd212324212616%_
                                     _%$%tl212325212618%_
                                     _%$%e212326212621%_
                                     _%$%hd212327212624%_
                                     _%$%tl212328212626%_
                                     _%$%e212329212629%_
                                     _%$%hd212330212632%_
                                     _%$%tl212331212634%_
                                     _%$%e212332212637%_
                                     _%$%hd212333212640%_
                                     _%$%tl212334212642%_
                                     _%$%e212335212645%_
                                     _%$%hd212336212648%_
                                     _%$%tl212337212650%_))
                                (_%__match214611214612%_
                                 _%$%e212302212559%_
                                 _%$%hd212303212562%_
                                 _%$%tl212304212564%_
                                 _%$%e212314212589%_
                                 _%$%hd212315212592%_
                                 _%$%tl212316212594%_
                                 _%$%e212317212597%_
                                 _%$%hd212318212600%_
                                 _%$%tl212319212602%_
                                 _%$%e212320212605%_
                                 _%$%hd212321212608%_
                                 _%$%tl212322212610%_
                                 _%$%e212323212613%_
                                 _%$%hd212324212616%_
                                 _%$%tl212325212618%_
                                 _%$%e212326212621%_
                                 _%$%hd212327212624%_
                                 _%$%tl212328212626%_
                                 _%$%e212329212629%_
                                 _%$%hd212330212632%_
                                 _%$%tl212331212634%_
                                 _%$%e212332212637%_
                                 _%$%hd212333212640%_
                                 _%$%tl212334212642%_
                                 _%$%e212335212645%_
                                 _%$%hd212336212648%_
                                 _%$%tl212337212650%_))))
                        (_%__match214611214612%_
                         _%$%e212302212559%_
                         _%$%hd212303212562%_
                         _%$%tl212304212564%_
                         _%$%e212314212589%_
                         _%$%hd212315212592%_
                         _%$%tl212316212594%_
                         _%$%e212317212597%_
                         _%$%hd212318212600%_
                         _%$%tl212319212602%_
                         _%$%e212320212605%_
                         _%$%hd212321212608%_
                         _%$%tl212322212610%_
                         _%$%e212323212613%_
                         _%$%hd212324212616%_
                         _%$%tl212325212618%_
                         _%$%e212326212621%_
                         _%$%hd212327212624%_
                         _%$%tl212328212626%_
                         _%$%e212329212629%_
                         _%$%hd212330212632%_
                         _%$%tl212331212634%_
                         _%$%e212332212637%_
                         _%$%hd212333212640%_
                         _%$%tl212334212642%_
                         _%$%e212335212645%_
                         _%$%hd212336212648%_
                         _%$%tl212337212650%_))))
                (let ((_%$%xarg212346212713%_
                       (reverse _%$%xarg212345212687%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl212316212594%_))
                      (let ((_%$%g212296212715%_ _%$%hd212354212677%_)
                            (_%$%g212297212716%_ _%$%xarg212346212713%_)
                            (_%$%g212298212717%_ _%$%hd212336212648%_)
                            (_%$%g212299212718%_ _%$%hd212327212624%_)
                            (_%$%g212300212719%_ _%$%tl212307212569%_)
                            (_%$%g212301212720%_ _%$%arg212313212587%_))
                        (if (and (let ((__tmp215779
                                        (let ((__tmp215780
                                               (lambda (_%$%g212763212766%_
                                                        _%$%g212764212768%_)
                                                 (cons _%$%g212763212766%_
                                                       _%$%g212764212768%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp215780
                                           '()
                                           _%$%g212301212720%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp215779))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%$%g212300212719%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%$%g212299212718%_
                                    'apply))
                                 (let ((__tmp215783
                                        (length (let ((__tmp215784
                                                       (lambda (_%$%g212770212773%_
                                                                _%$%g212771212775%_)
                                                         (cons _%$%g212770212773%_
                                                               _%$%g212771212775%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp215784
                                                   '()
                                                   _%$%g212301212720%_))))
                                       (__tmp215781
                                        (length (let ((__tmp215782
                                                       (lambda (_%$%g212777212780%_
                                                                _%$%g212778212782%_)
                                                         (cons _%$%g212777212780%_
                                                               _%$%g212778212782%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp215782
                                                   '()
                                                   _%$%g212297212716%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp215783 __tmp215781))
                                 (let ((__tmp215787
                                        (let ((__tmp215788
                                               (lambda (_%$%g212784212787%_
                                                        _%$%g212785212789%_)
                                                 (cons _%$%g212784212787%_
                                                       _%$%g212785212789%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp215788
                                           '()
                                           _%$%g212301212720%_)))
                                       (__tmp215785
                                        (let ((__tmp215786
                                               (lambda (_%$%g212791212794%_
                                                        _%$%g212792212796%_)
                                                 (cons _%$%g212791212794%_
                                                       _%$%g212792212796%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp215786
                                           '()
                                           _%$%g212297212716%_))))
                                   (declare (not safe))
                                   (andmap__1
                                    gx#free-identifier=?
                                    __tmp215787
                                    __tmp215785))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g212300212719%_
                                    _%$%g212296212715%_))
                                 (not (let ((__tmp215792
                                             (lambda (_%$%g212798212800%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%$%g212798212800%_
                                                  _%$%g212298212717%_))))
                                            (__tmp215789
                                             (let ((__tmp215791
                                                    (lambda (_%$%g212802212805%_
                                                             _%$%g212803212807%_)
                                                      (cons _%$%g212802212805%_
                                                            _%$%g212803212807%_)))
                                                   (__tmp215790
                                                    (cons _%$%g212300212719%_
                                                          '())))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp215791
                                                __tmp215790
                                                _%$%g212301212720%_))))
                                        (declare (not safe))
                                        (__find __tmp215792 __tmp215789))))
                            (_%__kont214506214507%_
                             _%$%g212296212715%_
                             _%$%g212297212716%_
                             _%$%g212298212717%_
                             _%$%g212299212718%_
                             _%$%g212300212719%_
                             _%$%g212301212720%_)
                            (_%__match214611214612%_
                             _%$%e212302212559%_
                             _%$%hd212303212562%_
                             _%$%tl212304212564%_
                             _%$%e212314212589%_
                             _%$%hd212315212592%_
                             _%$%tl212316212594%_
                             _%$%e212317212597%_
                             _%$%hd212318212600%_
                             _%$%tl212319212602%_
                             _%$%e212320212605%_
                             _%$%hd212321212608%_
                             _%$%tl212322212610%_
                             _%$%e212323212613%_
                             _%$%hd212324212616%_
                             _%$%tl212325212618%_
                             _%$%e212326212621%_
                             _%$%hd212327212624%_
                             _%$%tl212328212626%_
                             _%$%e212329212629%_
                             _%$%hd212330212632%_
                             _%$%tl212331212634%_
                             _%$%e212332212637%_
                             _%$%hd212333212640%_
                             _%$%tl212334212642%_
                             _%$%e212335212645%_
                             _%$%hd212336212648%_
                             _%$%tl212337212650%_)))
                      (_%__match214611214612%_
                       _%$%e212302212559%_
                       _%$%hd212303212562%_
                       _%$%tl212304212564%_
                       _%$%e212314212589%_
                       _%$%hd212315212592%_
                       _%$%tl212316212594%_
                       _%$%e212317212597%_
                       _%$%hd212318212600%_
                       _%$%tl212319212602%_
                       _%$%e212320212605%_
                       _%$%hd212321212608%_
                       _%$%tl212322212610%_
                       _%$%e212323212613%_
                       _%$%hd212324212616%_
                       _%$%tl212325212618%_
                       _%$%e212326212621%_
                       _%$%hd212327212624%_
                       _%$%tl212328212626%_
                       _%$%e212329212629%_
                       _%$%hd212330212632%_
                       _%$%tl212331212634%_
                       _%$%e212332212637%_
                       _%$%hd212333212640%_
                       _%$%tl212334212642%_
                       _%$%e212335212645%_
                       _%$%hd212336212648%_
                       _%$%tl212337212650%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop212341212682%_
                                           _%$%target212338212653%_
                                           '()))
                                        (_%__match214611214612%_
                                         _%$%e212302212559%_
                                         _%$%hd212303212562%_
                                         _%$%tl212304212564%_
                                         _%$%e212314212589%_
                                         _%$%hd212315212592%_
                                         _%$%tl212316212594%_
                                         _%$%e212317212597%_
                                         _%$%hd212318212600%_
                                         _%$%tl212319212602%_
                                         _%$%e212320212605%_
                                         _%$%hd212321212608%_
                                         _%$%tl212322212610%_
                                         _%$%e212323212613%_
                                         _%$%hd212324212616%_
                                         _%$%tl212325212618%_
                                         _%$%e212326212621%_
                                         _%$%hd212327212624%_
                                         _%$%tl212328212626%_
                                         _%$%e212329212629%_
                                         _%$%hd212330212632%_
                                         _%$%tl212331212634%_
                                         _%$%e212332212637%_
                                         _%$%hd212333212640%_
                                         _%$%tl212334212642%_
                                         _%$%e212335212645%_
                                         _%$%hd212336212648%_
                                         _%$%tl212337212650%_))
                                    (_%__match214611214612%_
                                     _%$%e212302212559%_
                                     _%$%hd212303212562%_
                                     _%$%tl212304212564%_
                                     _%$%e212314212589%_
                                     _%$%hd212315212592%_
                                     _%$%tl212316212594%_
                                     _%$%e212317212597%_
                                     _%$%hd212318212600%_
                                     _%$%tl212319212602%_
                                     _%$%e212320212605%_
                                     _%$%hd212321212608%_
                                     _%$%tl212322212610%_
                                     _%$%e212323212613%_
                                     _%$%hd212324212616%_
                                     _%$%tl212325212618%_
                                     _%$%e212326212621%_
                                     _%$%hd212327212624%_
                                     _%$%tl212328212626%_
                                     _%$%e212329212629%_
                                     _%$%hd212330212632%_
                                     _%$%tl212331212634%_
                                     _%$%e212332212637%_
                                     _%$%hd212333212640%_
                                     _%$%tl212334212642%_
                                     _%$%e212335212645%_
                                     _%$%hd212336212648%_
                                     _%$%tl212337212650%_))))
                            (_%__match214611214612%_
                             _%$%e212302212559%_
                             _%$%hd212303212562%_
                             _%$%tl212304212564%_
                             _%$%e212314212589%_
                             _%$%hd212315212592%_
                             _%$%tl212316212594%_
                             _%$%e212317212597%_
                             _%$%hd212318212600%_
                             _%$%tl212319212602%_
                             _%$%e212320212605%_
                             _%$%hd212321212608%_
                             _%$%tl212322212610%_
                             _%$%e212323212613%_
                             _%$%hd212324212616%_
                             _%$%tl212325212618%_
                             _%$%e212326212621%_
                             _%$%hd212327212624%_
                             _%$%tl212328212626%_
                             _%$%e212329212629%_
                             _%$%hd212330212632%_
                             _%$%tl212331212634%_
                             _%$%e212332212637%_
                             _%$%hd212333212640%_
                             _%$%tl212334212642%_
                             _%$%e212335212645%_
                             _%$%hd212336212648%_
                             _%$%tl212337212650%_))
                        (_%__match214611214612%_
                         _%$%e212302212559%_
                         _%$%hd212303212562%_
                         _%$%tl212304212564%_
                         _%$%e212314212589%_
                         _%$%hd212315212592%_
                         _%$%tl212316212594%_
                         _%$%e212317212597%_
                         _%$%hd212318212600%_
                         _%$%tl212319212602%_
                         _%$%e212320212605%_
                         _%$%hd212321212608%_
                         _%$%tl212322212610%_
                         _%$%e212323212613%_
                         _%$%hd212324212616%_
                         _%$%tl212325212618%_
                         _%$%e212326212621%_
                         _%$%hd212327212624%_
                         _%$%tl212328212626%_
                         _%$%e212329212629%_
                         _%$%hd212330212632%_
                         _%$%tl212331212634%_
                         _%$%e212332212637%_
                         _%$%hd212333212640%_
                         _%$%tl212334212642%_
                         _%$%e212335212645%_
                         _%$%hd212336212648%_
                         _%$%tl212337212650%_))
                    (_%__match214611214612%_
                     _%$%e212302212559%_
                     _%$%hd212303212562%_
                     _%$%tl212304212564%_
                     _%$%e212314212589%_
                     _%$%hd212315212592%_
                     _%$%tl212316212594%_
                     _%$%e212317212597%_
                     _%$%hd212318212600%_
                     _%$%tl212319212602%_
                     _%$%e212320212605%_
                     _%$%hd212321212608%_
                     _%$%tl212322212610%_
                     _%$%e212323212613%_
                     _%$%hd212324212616%_
                     _%$%tl212325212618%_
                     _%$%e212326212621%_
                     _%$%hd212327212624%_
                     _%$%tl212328212626%_
                     _%$%e212329212629%_
                     _%$%hd212330212632%_
                     _%$%tl212331212634%_
                     _%$%e212332212637%_
                     _%$%hd212333212640%_
                     _%$%tl212334212642%_
                     _%$%e212335212645%_
                     _%$%hd212336212648%_
                     _%$%tl212337212650%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match214611214612%_
                                                     _%$%e212302212559%_
                                                     _%$%hd212303212562%_
                                                     _%$%tl212304212564%_
                                                     _%$%e212314212589%_
                                                     _%$%hd212315212592%_
                                                     _%$%tl212316212594%_
                                                     _%$%e212317212597%_
                                                     _%$%hd212318212600%_
                                                     _%$%tl212319212602%_
                                                     _%$%e212320212605%_
                                                     _%$%hd212321212608%_
                                                     _%$%tl212322212610%_
                                                     _%$%e212323212613%_
                                                     _%$%hd212324212616%_
                                                     _%$%tl212325212618%_
                                                     _%$%e212326212621%_
                                                     _%$%hd212327212624%_
                                                     _%$%tl212328212626%_
                                                     _%$%e212329212629%_
                                                     _%$%hd212330212632%_
                                                     _%$%tl212331212634%_
                                                     _%$%e212332212637%_
                                                     _%$%hd212333212640%_
                                                     _%$%tl212334212642%_
                                                     _%$%e212335212645%_
                                                     _%$%hd212336212648%_
                                                     _%$%tl212337212650%_))))
                                            (_%__match214611214612%_
                                             _%$%e212302212559%_
                                             _%$%hd212303212562%_
                                             _%$%tl212304212564%_
                                             _%$%e212314212589%_
                                             _%$%hd212315212592%_
                                             _%$%tl212316212594%_
                                             _%$%e212317212597%_
                                             _%$%hd212318212600%_
                                             _%$%tl212319212602%_
                                             _%$%e212320212605%_
                                             _%$%hd212321212608%_
                                             _%$%tl212322212610%_
                                             _%$%e212323212613%_
                                             _%$%hd212324212616%_
                                             _%$%tl212325212618%_
                                             _%$%e212326212621%_
                                             _%$%hd212327212624%_
                                             _%$%tl212328212626%_
                                             _%$%e212329212629%_
                                             _%$%hd212330212632%_
                                             _%$%tl212331212634%_
                                             _%$%e212332212637%_
                                             _%$%hd212333212640%_
                                             _%$%tl212334212642%_
                                             _%$%e212335212645%_
                                             _%$%hd212336212648%_
                                             _%$%tl212337212650%_))))
                                    (_%__match214611214612%_
                                     _%$%e212302212559%_
                                     _%$%hd212303212562%_
                                     _%$%tl212304212564%_
                                     _%$%e212314212589%_
                                     _%$%hd212315212592%_
                                     _%$%tl212316212594%_
                                     _%$%e212317212597%_
                                     _%$%hd212318212600%_
                                     _%$%tl212319212602%_
                                     _%$%e212320212605%_
                                     _%$%hd212321212608%_
                                     _%$%tl212322212610%_
                                     _%$%e212323212613%_
                                     _%$%hd212324212616%_
                                     _%$%tl212325212618%_
                                     _%$%e212326212621%_
                                     _%$%hd212327212624%_
                                     _%$%tl212328212626%_
                                     _%$%e212329212629%_
                                     _%$%hd212330212632%_
                                     _%$%tl212331212634%_
                                     _%$%e212332212637%_
                                     _%$%hd212333212640%_
                                     _%$%tl212334212642%_
                                     _%$%e212335212645%_
                                     _%$%hd212336212648%_
                                     _%$%tl212337212650%_))
                                (_%__match214611214612%_
                                 _%$%e212302212559%_
                                 _%$%hd212303212562%_
                                 _%$%tl212304212564%_
                                 _%$%e212314212589%_
                                 _%$%hd212315212592%_
                                 _%$%tl212316212594%_
                                 _%$%e212317212597%_
                                 _%$%hd212318212600%_
                                 _%$%tl212319212602%_
                                 _%$%e212320212605%_
                                 _%$%hd212321212608%_
                                 _%$%tl212322212610%_
                                 _%$%e212323212613%_
                                 _%$%hd212324212616%_
                                 _%$%tl212325212618%_
                                 _%$%e212326212621%_
                                 _%$%hd212327212624%_
                                 _%$%tl212328212626%_
                                 _%$%e212329212629%_
                                 _%$%hd212330212632%_
                                 _%$%tl212331212634%_
                                 _%$%e212332212637%_
                                 _%$%hd212333212640%_
                                 _%$%tl212334212642%_
                                 _%$%e212335212645%_
                                 _%$%hd212336212648%_
                                 _%$%tl212337212650%_))
                            (_%__kont214514214515%_))))
                    (_%__kont214514214515%_))
                (_%__kont214514214515%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont214514214515%_))))
                                            (_%__kont214514214515%_))))
                                    (_%__kont214514214515%_))
                                (_%__kont214514214515%_))))
                        (_%__kont214514214515%_))
                    (_%__kont214514214515%_))
                (_%__kont214514214515%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont214514214515%_))))
                                        (_%__kont214514214515%_))
                                    (_%__kont214514214515%_))
                                (_%__kont214514214515%_))))
                        (_%__kont214514214515%_))))
                (_%__kont214514214515%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%loop212308212572%_
                                     _%$%target212305212567%_
                                     '()))))
                               (_%__match214529214530%_
                                (lambda (_%$%e212254212815%_
                                         _%$%hd212255212818%_
                                         _%$%tl212256212820%_
                                         _%__splice214502214503%_
                                         _%$%target212257212823%_
                                         _%$%tl212259212825%_)
                                  (letrec ((_%$%loop212260212828%_
                                            (lambda (_%$%hd212258212831%_
                                                     _%$%arg212264212833%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd212258212831%_))
                                                  (let ((_%$%e212261212835%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd212258212831%_))))
                                                    (let ((_%$%lp-tl212263212840%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e212261212835%_)))
                                                          (_%$%lp-hd212262212838%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e212261212835%_))))
                                                      (_%$%loop212260212828%_
                                                       _%$%lp-tl212263212840%_
                                                       (cons _%$%lp-hd212262212838%_
                                                             _%$%arg212264212833%_))))
                                                  (let ((_%$%arg212265212843%_
                                                         (reverse _%$%arg212264212833%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl212256212820%_))
                                                        (let ((_%$%e212266212845%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl212256212820%_))))
                  (let ((_%$%tl212268212850%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e212266212845%_)))
                        (_%$%hd212267212848%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e212266212845%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd212267212848%_))
                        (let ((_%$%e212269212853%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd212267212848%_))))
                          (let ((_%$%tl212271212858%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e212269212853%_)))
                                (_%$%hd212270212856%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e212269212853%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd212270212856%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq?
                                       '%#call
                                       _%$%hd212270212856%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl212271212858%_))
                                        (let ((_%$%e212272212861%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl212271212858%_))))
                                          (let ((_%$%tl212274212866%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e212272212861%_)))
                                                (_%$%hd212273212864%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e212272212861%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd212273212864%_))
                                                (let ((_%$%e212275212869%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd212273212864%_))))
                                                  (let ((_%$%tl212277212874%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e212275212869%_)))
                                                        (_%$%hd212276212872%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e212275212869%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd212276212872%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%$%hd212276212872%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl212277212874%_))
                        (let ((_%$%e212278212877%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl212277212874%_))))
                          (let ((_%$%tl212280212882%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e212278212877%_)))
                                (_%$%hd212279212880%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e212278212877%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl212280212882%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%$%tl212274212866%_))
                                    (let ((_%__splice214504214505%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%$%tl212274212866%_
                                              '0))))
                                      (let ((_%$%tl212283212887%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice214504214505%_
                                                '1)))
                                            (_%$%target212281212885%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice214504214505%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl212283212887%_))
                                            (letrec ((_%$%loop212284212890%_
                                                      (lambda (_%$%hd212282212893%_
                                                               _%$%xarg212288212895%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%hd212282212893%_))
                                                            (let ((_%$%e212285212897%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%hd212282212893%_))))
                      (let ((_%$%lp-tl212287212902%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e212285212897%_)))
                            (_%$%lp-hd212286212900%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e212285212897%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%lp-hd212286212900%_))
                            (let ((_%$%e212290212905%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%lp-hd212286212900%_))))
                              (let ((_%$%tl212292212910%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e212290212905%_)))
                                    (_%$%hd212291212908%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e212290212905%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd212291212908%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%$%hd212291212908%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl212292212910%_))
                                            (let ((_%$%e212293212913%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl212292212910%_))))
                                              (let ((_%$%tl212295212918%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e212293212913%_)))
                                                    (_%$%hd212294212916%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e212293212913%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl212295212918%_))
                                                    (_%$%loop212284212890%_
                                                     _%$%lp-tl212287212902%_
                                                     (cons _%$%hd212294212916%_
                                                           _%$%xarg212288212895%_))
                                                    (_%__match214541214542%_
                                                     _%$%e212254212815%_
                                                     _%$%hd212255212818%_
                                                     _%$%tl212256212820%_
                                                     _%__splice214502214503%_
                                                     _%$%target212257212823%_
                                                     _%$%tl212259212825%_))))
                                            (_%__match214541214542%_
                                             _%$%e212254212815%_
                                             _%$%hd212255212818%_
                                             _%$%tl212256212820%_
                                             _%__splice214502214503%_
                                             _%$%target212257212823%_
                                             _%$%tl212259212825%_))
                                        (_%__match214541214542%_
                                         _%$%e212254212815%_
                                         _%$%hd212255212818%_
                                         _%$%tl212256212820%_
                                         _%__splice214502214503%_
                                         _%$%target212257212823%_
                                         _%$%tl212259212825%_))
                                    (_%__match214541214542%_
                                     _%$%e212254212815%_
                                     _%$%hd212255212818%_
                                     _%$%tl212256212820%_
                                     _%__splice214502214503%_
                                     _%$%target212257212823%_
                                     _%$%tl212259212825%_))))
                            (_%__match214541214542%_
                             _%$%e212254212815%_
                             _%$%hd212255212818%_
                             _%$%tl212256212820%_
                             _%__splice214502214503%_
                             _%$%target212257212823%_
                             _%$%tl212259212825%_))))
                    (let ((_%$%xarg212289212921%_
                           (reverse _%$%xarg212288212895%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl212268212850%_))
                          (let ((_%$%g212251212923%_ _%$%xarg212289212921%_)
                                (_%$%g212252212924%_ _%$%hd212279212880%_)
                                (_%$%g212253212925%_ _%$%arg212265212843%_))
                            (if (and (let ((__tmp215793
                                            (let ((__tmp215794
                                                   (lambda (_%$%g212953212956%_
                                                            _%$%g212954212958%_)
                                                     (cons _%$%g212953212956%_
                                                           _%$%g212954212958%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp215794
                                               '()
                                               _%$%g212253212925%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp215793))
                                     (let ((__tmp215797
                                            (length (let ((__tmp215798
                                                           (lambda (_%$%g212960212963%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g212961212965%_)
                     (cons _%$%g212960212963%_ _%$%g212961212965%_))))
              (declare (not safe))
              (foldr__0 __tmp215798 '() _%$%g212253212925%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp215795
                                            (length (let ((__tmp215796
                                                           (lambda (_%$%g212967212970%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g212968212972%_)
                     (cons _%$%g212967212970%_ _%$%g212968212972%_))))
              (declare (not safe))
              (foldr__0 __tmp215796 '() _%$%g212251212923%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp215797 __tmp215795))
                                     (let ((__tmp215801
                                            (let ((__tmp215802
                                                   (lambda (_%$%g212974212977%_
                                                            _%$%g212975212979%_)
                                                     (cons _%$%g212974212977%_
                                                           _%$%g212975212979%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp215802
                                               '()
                                               _%$%g212253212925%_)))
                                           (__tmp215799
                                            (let ((__tmp215800
                                                   (lambda (_%$%g212981212984%_
                                                            _%$%g212982212986%_)
                                                     (cons _%$%g212981212984%_
                                                           _%$%g212982212986%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp215800
                                               '()
                                               _%$%g212251212923%_))))
                                       (declare (not safe))
                                       (andmap__1
                                        gx#free-identifier=?
                                        __tmp215801
                                        __tmp215799))
                                     (not (let ((__tmp215805
                                                 (lambda (_%$%g212988212990%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%$%g212988212990%_
                                                      _%$%g212252212924%_))))
                                                (__tmp215803
                                                 (let ((__tmp215804
                                                        (lambda (_%$%g212992212995%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g212993212997%_)
                  (cons _%$%g212992212995%_ _%$%g212993212997%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp215804
                                                    '()
                                                    _%$%g212253212925%_))))
                                            (declare (not safe))
                                            (__find __tmp215805 __tmp215803))))
                                (_%__kont214500214501%_
                                 _%$%g212251212923%_
                                 _%$%g212252212924%_
                                 _%$%g212253212925%_)
                                (_%__match214541214542%_
                                 _%$%e212254212815%_
                                 _%$%hd212255212818%_
                                 _%$%tl212256212820%_
                                 _%__splice214502214503%_
                                 _%$%target212257212823%_
                                 _%$%tl212259212825%_)))
                          (_%__match214541214542%_
                           _%$%e212254212815%_
                           _%$%hd212255212818%_
                           _%$%tl212256212820%_
                           _%__splice214502214503%_
                           _%$%target212257212823%_
                           _%$%tl212259212825%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop212284212890%_
                                               _%$%target212281212885%_
                                               '()))
                                            (_%__match214541214542%_
                                             _%$%e212254212815%_
                                             _%$%hd212255212818%_
                                             _%$%tl212256212820%_
                                             _%__splice214502214503%_
                                             _%$%target212257212823%_
                                             _%$%tl212259212825%_))))
                                    (_%__match214541214542%_
                                     _%$%e212254212815%_
                                     _%$%hd212255212818%_
                                     _%$%tl212256212820%_
                                     _%__splice214502214503%_
                                     _%$%target212257212823%_
                                     _%$%tl212259212825%_))
                                (_%__match214541214542%_
                                 _%$%e212254212815%_
                                 _%$%hd212255212818%_
                                 _%$%tl212256212820%_
                                 _%__splice214502214503%_
                                 _%$%target212257212823%_
                                 _%$%tl212259212825%_))))
                        (_%__match214541214542%_
                         _%$%e212254212815%_
                         _%$%hd212255212818%_
                         _%$%tl212256212820%_
                         _%__splice214502214503%_
                         _%$%target212257212823%_
                         _%$%tl212259212825%_))
                    (_%__match214541214542%_
                     _%$%e212254212815%_
                     _%$%hd212255212818%_
                     _%$%tl212256212820%_
                     _%__splice214502214503%_
                     _%$%target212257212823%_
                     _%$%tl212259212825%_))
                (_%__match214541214542%_
                 _%$%e212254212815%_
                 _%$%hd212255212818%_
                 _%$%tl212256212820%_
                 _%__splice214502214503%_
                 _%$%target212257212823%_
                 _%$%tl212259212825%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match214541214542%_
                                                 _%$%e212254212815%_
                                                 _%$%hd212255212818%_
                                                 _%$%tl212256212820%_
                                                 _%__splice214502214503%_
                                                 _%$%target212257212823%_
                                                 _%$%tl212259212825%_))))
                                        (_%__match214541214542%_
                                         _%$%e212254212815%_
                                         _%$%hd212255212818%_
                                         _%$%tl212256212820%_
                                         _%__splice214502214503%_
                                         _%$%target212257212823%_
                                         _%$%tl212259212825%_))
                                    (_%__match214541214542%_
                                     _%$%e212254212815%_
                                     _%$%hd212255212818%_
                                     _%$%tl212256212820%_
                                     _%__splice214502214503%_
                                     _%$%target212257212823%_
                                     _%$%tl212259212825%_))
                                (_%__match214541214542%_
                                 _%$%e212254212815%_
                                 _%$%hd212255212818%_
                                 _%$%tl212256212820%_
                                 _%__splice214502214503%_
                                 _%$%target212257212823%_
                                 _%$%tl212259212825%_))))
                        (_%__match214541214542%_
                         _%$%e212254212815%_
                         _%$%hd212255212818%_
                         _%$%tl212256212820%_
                         _%__splice214502214503%_
                         _%$%target212257212823%_
                         _%$%tl212259212825%_))))
                (_%__match214541214542%_
                 _%$%e212254212815%_
                 _%$%hd212255212818%_
                 _%$%tl212256212820%_
                 _%__splice214502214503%_
                 _%$%target212257212823%_
                 _%$%tl212259212825%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%loop212260212828%_
                                     _%$%target212257212823%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx214498214499%_))
                              (let ((_%$%e212254212815%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx214498214499%_))))
                                (let ((_%$%tl212256212820%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e212254212815%_)))
                                      (_%$%hd212255212818%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e212254212815%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd212255212818%_))
                                      (let ((_%__splice214502214503%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%hd212255212818%_
                                                '0))))
                                        (let ((_%$%tl212259212825%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice214502214503%_
                                                  '1)))
                                              (_%$%target212257212823%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice214502214503%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl212259212825%_))
                                              (_%__match214529214530%_
                                               _%$%e212254212815%_
                                               _%$%hd212255212818%_
                                               _%$%tl212256212820%_
                                               _%__splice214502214503%_
                                               _%$%target212257212823%_
                                               _%$%tl212259212825%_)
                                              (_%__match214541214542%_
                                               _%$%e212254212815%_
                                               _%$%hd212255212818%_
                                               _%$%tl212256212820%_
                                               _%__splice214502214503%_
                                               _%$%target212257212823%_
                                               _%$%tl212259212825%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl212256212820%_))
                                          (let ((_%$%e212369212426%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl212256212820%_))))
                                            (let ((_%$%tl212371212431%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e212369212426%_)))
                                                  (_%$%hd212370212429%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e212369212426%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd212370212429%_))
                                                  (let ((_%$%e212372212434%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd212370212429%_))))
                                                    (let ((_%$%tl212374212439%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e212372212434%_)))
                                                          (_%$%hd212373212437%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e212372212434%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd212373212437%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%$%hd212373212437%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl212374212439%_))
                          (let ((_%$%e212375212442%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl212374212439%_))))
                            (let ((_%$%tl212377212447%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e212375212442%_)))
                                  (_%$%hd212376212445%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e212375212442%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd212376212445%_))
                                  (let ((_%$%e212378212450%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd212376212445%_))))
                                    (let ((_%$%tl212380212455%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e212378212450%_)))
                                          (_%$%hd212379212453%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e212378212450%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd212379212453%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd212379212453%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl212380212455%_))
                                                  (let ((_%$%e212381212458%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl212380212455%_))))
                                                    (let ((_%$%tl212383212463%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e212381212458%_)))
                                                          (_%$%hd212382212461%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e212381212458%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl212383212463%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl212377212447%_))
                      (let ((_%$%e212384212466%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl212377212447%_))))
                        (let ((_%$%tl212386212471%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e212384212466%_)))
                              (_%$%hd212385212469%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e212384212466%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd212385212469%_))
                              (let ((_%$%e212387212474%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd212385212469%_))))
                                (let ((_%$%tl212389212479%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e212387212474%_)))
                                      (_%$%hd212388212477%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e212387212474%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd212388212477%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd212388212477%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl212389212479%_))
                                              (let ((_%$%e212390212482%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl212389212479%_))))
                                                (let ((_%$%tl212392212487%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e212390212482%_)))
                                                      (_%$%hd212391212485%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e212390212482%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl212392212487%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl212386212471%_))
                                                          (let ((_%$%e212393212490%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl212386212471%_))))
                    (let ((_%$%tl212395212495%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e212393212490%_)))
                          (_%$%hd212394212493%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e212393212490%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd212394212493%_))
                          (let ((_%$%e212396212498%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd212394212493%_))))
                            (let ((_%$%tl212398212503%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e212396212498%_)))
                                  (_%$%hd212397212501%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e212396212498%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%$%hd212397212501%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#ref
                                         _%$%hd212397212501%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl212398212503%_))
                                          (let ((_%$%e212399212506%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl212398212503%_))))
                                            (let ((_%$%tl212401212511%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e212399212506%_)))
                                                  (_%$%hd212400212509%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e212399212506%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl212401212511%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl212395212495%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl212371212431%_))
                                                          (_%__match214639214640%_
                                                           _%$%e212254212815%_
                                                           _%$%hd212255212818%_
                                                           _%$%tl212256212820%_
                                                           _%$%e212369212426%_
                                                           _%$%hd212370212429%_
                                                           _%$%tl212371212431%_
                                                           _%$%e212372212434%_
                                                           _%$%hd212373212437%_
                                                           _%$%tl212374212439%_
                                                           _%$%e212375212442%_
                                                           _%$%hd212376212445%_
                                                           _%$%tl212377212447%_
                                                           _%$%e212378212450%_
                                                           _%$%hd212379212453%_
                                                           _%$%tl212380212455%_
                                                           _%$%e212381212458%_
                                                           _%$%hd212382212461%_
                                                           _%$%tl212383212463%_
                                                           _%$%e212384212466%_
                                                           _%$%hd212385212469%_
                                                           _%$%tl212386212471%_
                                                           _%$%e212387212474%_
                                                           _%$%hd212388212477%_
                                                           _%$%tl212389212479%_
                                                           _%$%e212390212482%_
                                                           _%$%hd212391212485%_
                                                           _%$%tl212392212487%_
                                                           _%$%e212393212490%_
                                                           _%$%hd212394212493%_
                                                           _%$%tl212395212495%_
                                                           _%$%e212396212498%_
                                                           _%$%hd212397212501%_
                                                           _%$%tl212398212503%_
                                                           _%$%e212399212506%_
                                                           _%$%hd212400212509%_
                                                           _%$%tl212401212511%_)
                                                          (_%__kont214514214515%_))
                                                      (_%__kont214514214515%_))
                                                  (_%__kont214514214515%_))))
                                          (_%__kont214514214515%_))
                                      (_%__kont214514214515%_))
                                  (_%__kont214514214515%_))))
                          (_%__kont214514214515%_))))
                  (_%__kont214514214515%_))
              (_%__kont214514214515%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont214514214515%_))
                                          (_%__kont214514214515%_))
                                      (_%__kont214514214515%_))))
                              (_%__kont214514214515%_))))
                      (_%__kont214514214515%_))
                  (_%__kont214514214515%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont214514214515%_))
                                              (_%__kont214514214515%_))
                                          (_%__kont214514214515%_))))
                                  (_%__kont214514214515%_))))
                          (_%__kont214514214515%_))
                      (_%__kont214514214515%_))
                  (_%__kont214514214515%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont214514214515%_))))
                                          (_%__kont214514214515%_)))))
                              (_%__kont214514214515%_)))))))
                 (_%dispatch-case-e211564%_
                  (lambda (_%hd211711%_ _%body211712%_)
                    (let* ((_%form211714%_
                            (cons _%hd211711%_ (cons _%body211712%_ '())))
                           (_%__stx214642214643%_ _%form211714%_)
                           (_%$%g211718211842%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx214642214643%_)))))
                      (let ((_%__kont214644214645%_
                             (lambda (_%$%g211720212207%_
                                      _%$%g211721212208%_
                                      _%$%g211722212209%_)
                               (let ((__tmp215806
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%$%g211721212208%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self211560%_
                                  __tmp215806))))
                            (_%__kont214650214651%_
                             (lambda (_%$%g211765212059%_
                                      _%$%g211766212060%_
                                      _%$%g211767212061%_
                                      _%$%g211768212062%_)
                               (let ((__tmp215807
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%$%g211765212059%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self211560%_
                                  __tmp215807))))
                            (_%__kont214654214655%_
                             (lambda (_%$%g211805211927%_
                                      _%$%g211806211928%_
                                      _%$%g211807211929%_)
                               (let ((__tmp215808
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%$%g211805211927%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self211560%_
                                  __tmp215808)))))
                        (let* ((_%__match214751214752%_
                                (lambda (_%$%e211808211847%_
                                         _%$%hd211809211850%_
                                         _%$%tl211810211852%_
                                         _%$%e211811211855%_
                                         _%$%hd211812211858%_
                                         _%$%tl211813211860%_
                                         _%$%e211814211863%_
                                         _%$%hd211815211866%_
                                         _%$%tl211816211868%_
                                         _%$%e211817211871%_
                                         _%$%hd211818211874%_
                                         _%$%tl211819211876%_
                                         _%$%e211820211879%_
                                         _%$%hd211821211882%_
                                         _%$%tl211822211884%_
                                         _%$%e211823211887%_
                                         _%$%hd211824211890%_
                                         _%$%tl211825211892%_
                                         _%$%e211826211895%_
                                         _%$%hd211827211898%_
                                         _%$%tl211828211900%_
                                         _%$%e211829211903%_
                                         _%$%hd211830211906%_
                                         _%$%tl211831211908%_
                                         _%$%e211832211911%_
                                         _%$%hd211833211914%_
                                         _%$%tl211834211916%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl211828211900%_))
                                      (let ((_%$%e211835211919%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl211828211900%_))))
                                        (let ((_%$%tl211837211924%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e211835211919%_)))
                                              (_%$%hd211836211922%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e211835211919%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl211837211924%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl211813211860%_))
                                                  (_%__kont214654214655%_
                                                   _%$%hd211833211914%_
                                                   _%$%hd211824211890%_
                                                   _%$%hd211809211850%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g211718211842%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g211718211842%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g211718211842%_)))))
                               (_%__match214681214682%_
                                (lambda (_%$%e211769211965%_
                                         _%$%hd211770211968%_
                                         _%$%tl211771211970%_
                                         _%__splice214652214653%_
                                         _%$%target211772211973%_
                                         _%$%tl211774211975%_)
                                  (letrec ((_%$%loop211775211978%_
                                            (lambda (_%$%hd211773211981%_
                                                     _%$%arg211779211983%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd211773211981%_))
                                                  (let ((_%$%e211776211985%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd211773211981%_))))
                                                    (let ((_%$%lp-tl211778211990%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e211776211985%_)))
                                                          (_%$%lp-hd211777211988%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e211776211985%_))))
                                                      (_%$%loop211775211978%_
                                                       _%$%lp-tl211778211990%_
                                                       (cons _%$%lp-hd211777211988%_
                                                             _%$%arg211779211983%_))))
                                                  (let ((_%$%arg211780211993%_
                                                         (reverse _%$%arg211779211983%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl211771211970%_))
                                                        (let ((_%$%e211781211995%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl211771211970%_))))
                  (let ((_%$%tl211783212000%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e211781211995%_)))
                        (_%$%hd211782211998%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e211781211995%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd211782211998%_))
                        (let ((_%$%e211784212003%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd211782211998%_))))
                          (let ((_%$%tl211786212008%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e211784212003%_)))
                                (_%$%hd211785212006%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e211784212003%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd211785212006%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq?
                                       '%#call
                                       _%$%hd211785212006%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl211786212008%_))
                                        (let ((_%$%e211787212011%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl211786212008%_))))
                                          (let ((_%$%tl211789212016%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e211787212011%_)))
                                                (_%$%hd211788212014%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e211787212011%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd211788212014%_))
                                                (let ((_%$%e211790212019%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd211788212014%_))))
                                                  (let ((_%$%tl211792212024%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e211790212019%_)))
                                                        (_%$%hd211791212022%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e211790212019%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd211791212022%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%$%hd211791212022%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl211792212024%_))
                        (let ((_%$%e211793212027%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl211792212024%_))))
                          (let ((_%$%tl211795212032%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e211793212027%_)))
                                (_%$%hd211794212030%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e211793212027%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl211795212032%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl211789212016%_))
                                    (let ((_%$%e211796212035%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%tl211789212016%_))))
                                      (let ((_%$%tl211798212040%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e211796212035%_)))
                                            (_%$%hd211797212038%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e211796212035%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%hd211797212038%_))
                                            (let ((_%$%e211799212043%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%hd211797212038%_))))
                                              (let ((_%$%tl211801212048%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e211799212043%_)))
                                                    (_%$%hd211800212046%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e211799212043%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%$%hd211800212046%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%$%hd211800212046%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl211801212048%_))
                                                            (let ((_%$%e211802212051%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl211801212048%_))))
                      (let ((_%$%tl211804212056%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e211802212051%_)))
                            (_%$%hd211803212054%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e211802212051%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl211804212056%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl211783212000%_))
                                (_%__kont214650214651%_
                                 _%$%hd211803212054%_
                                 _%$%hd211794212030%_
                                 _%$%tl211774211975%_
                                 _%$%arg211780211993%_)
                                (_%__match214751214752%_
                                 _%$%e211769211965%_
                                 _%$%hd211770211968%_
                                 _%$%tl211771211970%_
                                 _%$%e211781211995%_
                                 _%$%hd211782211998%_
                                 _%$%tl211783212000%_
                                 _%$%e211784212003%_
                                 _%$%hd211785212006%_
                                 _%$%tl211786212008%_
                                 _%$%e211787212011%_
                                 _%$%hd211788212014%_
                                 _%$%tl211789212016%_
                                 _%$%e211790212019%_
                                 _%$%hd211791212022%_
                                 _%$%tl211792212024%_
                                 _%$%e211793212027%_
                                 _%$%hd211794212030%_
                                 _%$%tl211795212032%_
                                 _%$%e211796212035%_
                                 _%$%hd211797212038%_
                                 _%$%tl211798212040%_
                                 _%$%e211799212043%_
                                 _%$%hd211800212046%_
                                 _%$%tl211801212048%_
                                 _%$%e211802212051%_
                                 _%$%hd211803212054%_
                                 _%$%tl211804212056%_))
                            (let ()
                              (declare (not safe))
                              (_%$%g211718211842%_)))))
                    (let () (declare (not safe)) (_%$%g211718211842%_)))
                (let () (declare (not safe)) (_%$%g211718211842%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g211718211842%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g211718211842%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g211718211842%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g211718211842%_)))))
                        (let () (declare (not safe)) (_%$%g211718211842%_)))
                    (let () (declare (not safe)) (_%$%g211718211842%_)))
                (let () (declare (not safe)) (_%$%g211718211842%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g211718211842%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g211718211842%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g211718211842%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g211718211842%_)))))
                        (let () (declare (not safe)) (_%$%g211718211842%_)))))
                (let () (declare (not safe)) (_%$%g211718211842%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%loop211775211978%_
                                     _%$%target211772211973%_
                                     '()))))
                               (_%__match214669214670%_
                                (lambda (_%$%e211723212099%_
                                         _%$%hd211724212102%_
                                         _%$%tl211725212104%_
                                         _%__splice214646214647%_
                                         _%$%target211726212107%_
                                         _%$%tl211728212109%_)
                                  (letrec ((_%$%loop211729212112%_
                                            (lambda (_%$%hd211727212115%_
                                                     _%$%arg211733212117%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd211727212115%_))
                                                  (let ((_%$%e211730212119%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd211727212115%_))))
                                                    (let ((_%$%lp-tl211732212124%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e211730212119%_)))
                                                          (_%$%lp-hd211731212122%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e211730212119%_))))
                                                      (_%$%loop211729212112%_
                                                       _%$%lp-tl211732212124%_
                                                       (cons _%$%lp-hd211731212122%_
                                                             _%$%arg211733212117%_))))
                                                  (let ((_%$%arg211734212127%_
                                                         (reverse _%$%arg211733212117%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl211725212104%_))
                                                        (let ((_%$%e211735212129%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl211725212104%_))))
                  (let ((_%$%tl211737212134%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e211735212129%_)))
                        (_%$%hd211736212132%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e211735212129%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd211736212132%_))
                        (let ((_%$%e211738212137%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd211736212132%_))))
                          (let ((_%$%tl211740212142%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e211738212137%_)))
                                (_%$%hd211739212140%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e211738212137%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd211739212140%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq?
                                       '%#call
                                       _%$%hd211739212140%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl211740212142%_))
                                        (let ((_%$%e211741212145%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl211740212142%_))))
                                          (let ((_%$%tl211743212150%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e211741212145%_)))
                                                (_%$%hd211742212148%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e211741212145%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd211742212148%_))
                                                (let ((_%$%e211744212153%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd211742212148%_))))
                                                  (let ((_%$%tl211746212158%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e211744212153%_)))
                                                        (_%$%hd211745212156%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e211744212153%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd211745212156%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%$%hd211745212156%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl211746212158%_))
                        (let ((_%$%e211747212161%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl211746212158%_))))
                          (let ((_%$%tl211749212166%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e211747212161%_)))
                                (_%$%hd211748212164%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e211747212161%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl211749212166%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%$%tl211743212150%_))
                                    (let ((_%__splice214648214649%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%$%tl211743212150%_
                                              '0))))
                                      (let ((_%$%tl211752212171%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice214648214649%_
                                                '1)))
                                            (_%$%target211750212169%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice214648214649%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl211752212171%_))
                                            (letrec ((_%$%loop211753212174%_
                                                      (lambda (_%$%hd211751212177%_
                                                               _%$%xarg211757212179%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%hd211751212177%_))
                                                            (let ((_%$%e211754212181%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%hd211751212177%_))))
                      (let ((_%$%lp-tl211756212186%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e211754212181%_)))
                            (_%$%lp-hd211755212184%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e211754212181%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%lp-hd211755212184%_))
                            (let ((_%$%e211759212189%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%lp-hd211755212184%_))))
                              (let ((_%$%tl211761212194%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e211759212189%_)))
                                    (_%$%hd211760212192%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e211759212189%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd211760212192%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%$%hd211760212192%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl211761212194%_))
                                            (let ((_%$%e211762212197%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl211761212194%_))))
                                              (let ((_%$%tl211764212202%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e211762212197%_)))
                                                    (_%$%hd211763212200%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e211762212197%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl211764212202%_))
                                                    (_%$%loop211753212174%_
                                                     _%$%lp-tl211756212186%_
                                                     (cons _%$%hd211763212200%_
                                                           _%$%xarg211757212179%_))
                                                    (_%__match214681214682%_
                                                     _%$%e211723212099%_
                                                     _%$%hd211724212102%_
                                                     _%$%tl211725212104%_
                                                     _%__splice214646214647%_
                                                     _%$%target211726212107%_
                                                     _%$%tl211728212109%_))))
                                            (_%__match214681214682%_
                                             _%$%e211723212099%_
                                             _%$%hd211724212102%_
                                             _%$%tl211725212104%_
                                             _%__splice214646214647%_
                                             _%$%target211726212107%_
                                             _%$%tl211728212109%_))
                                        (_%__match214681214682%_
                                         _%$%e211723212099%_
                                         _%$%hd211724212102%_
                                         _%$%tl211725212104%_
                                         _%__splice214646214647%_
                                         _%$%target211726212107%_
                                         _%$%tl211728212109%_))
                                    (_%__match214681214682%_
                                     _%$%e211723212099%_
                                     _%$%hd211724212102%_
                                     _%$%tl211725212104%_
                                     _%__splice214646214647%_
                                     _%$%target211726212107%_
                                     _%$%tl211728212109%_))))
                            (_%__match214681214682%_
                             _%$%e211723212099%_
                             _%$%hd211724212102%_
                             _%$%tl211725212104%_
                             _%__splice214646214647%_
                             _%$%target211726212107%_
                             _%$%tl211728212109%_))))
                    (let ((_%$%xarg211758212205%_
                           (reverse _%$%xarg211757212179%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl211737212134%_))
                          (_%__kont214644214645%_
                           _%$%xarg211758212205%_
                           _%$%hd211748212164%_
                           _%$%arg211734212127%_)
                          (_%__match214681214682%_
                           _%$%e211723212099%_
                           _%$%hd211724212102%_
                           _%$%tl211725212104%_
                           _%__splice214646214647%_
                           _%$%target211726212107%_
                           _%$%tl211728212109%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop211753212174%_
                                               _%$%target211750212169%_
                                               '()))
                                            (_%__match214681214682%_
                                             _%$%e211723212099%_
                                             _%$%hd211724212102%_
                                             _%$%tl211725212104%_
                                             _%__splice214646214647%_
                                             _%$%target211726212107%_
                                             _%$%tl211728212109%_))))
                                    (_%__match214681214682%_
                                     _%$%e211723212099%_
                                     _%$%hd211724212102%_
                                     _%$%tl211725212104%_
                                     _%__splice214646214647%_
                                     _%$%target211726212107%_
                                     _%$%tl211728212109%_))
                                (_%__match214681214682%_
                                 _%$%e211723212099%_
                                 _%$%hd211724212102%_
                                 _%$%tl211725212104%_
                                 _%__splice214646214647%_
                                 _%$%target211726212107%_
                                 _%$%tl211728212109%_))))
                        (_%__match214681214682%_
                         _%$%e211723212099%_
                         _%$%hd211724212102%_
                         _%$%tl211725212104%_
                         _%__splice214646214647%_
                         _%$%target211726212107%_
                         _%$%tl211728212109%_))
                    (_%__match214681214682%_
                     _%$%e211723212099%_
                     _%$%hd211724212102%_
                     _%$%tl211725212104%_
                     _%__splice214646214647%_
                     _%$%target211726212107%_
                     _%$%tl211728212109%_))
                (_%__match214681214682%_
                 _%$%e211723212099%_
                 _%$%hd211724212102%_
                 _%$%tl211725212104%_
                 _%__splice214646214647%_
                 _%$%target211726212107%_
                 _%$%tl211728212109%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match214681214682%_
                                                 _%$%e211723212099%_
                                                 _%$%hd211724212102%_
                                                 _%$%tl211725212104%_
                                                 _%__splice214646214647%_
                                                 _%$%target211726212107%_
                                                 _%$%tl211728212109%_))))
                                        (_%__match214681214682%_
                                         _%$%e211723212099%_
                                         _%$%hd211724212102%_
                                         _%$%tl211725212104%_
                                         _%__splice214646214647%_
                                         _%$%target211726212107%_
                                         _%$%tl211728212109%_))
                                    (_%__match214681214682%_
                                     _%$%e211723212099%_
                                     _%$%hd211724212102%_
                                     _%$%tl211725212104%_
                                     _%__splice214646214647%_
                                     _%$%target211726212107%_
                                     _%$%tl211728212109%_))
                                (_%__match214681214682%_
                                 _%$%e211723212099%_
                                 _%$%hd211724212102%_
                                 _%$%tl211725212104%_
                                 _%__splice214646214647%_
                                 _%$%target211726212107%_
                                 _%$%tl211728212109%_))))
                        (_%__match214681214682%_
                         _%$%e211723212099%_
                         _%$%hd211724212102%_
                         _%$%tl211725212104%_
                         _%__splice214646214647%_
                         _%$%target211726212107%_
                         _%$%tl211728212109%_))))
                (_%__match214681214682%_
                 _%$%e211723212099%_
                 _%$%hd211724212102%_
                 _%$%tl211725212104%_
                 _%__splice214646214647%_
                 _%$%target211726212107%_
                 _%$%tl211728212109%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%loop211729212112%_
                                     _%$%target211726212107%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx214642214643%_))
                              (let ((_%$%e211723212099%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx214642214643%_))))
                                (let ((_%$%tl211725212104%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e211723212099%_)))
                                      (_%$%hd211724212102%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e211723212099%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd211724212102%_))
                                      (let ((_%__splice214646214647%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%hd211724212102%_
                                                '0))))
                                        (let ((_%$%tl211728212109%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice214646214647%_
                                                  '1)))
                                              (_%$%target211726212107%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice214646214647%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl211728212109%_))
                                              (_%__match214669214670%_
                                               _%$%e211723212099%_
                                               _%$%hd211724212102%_
                                               _%$%tl211725212104%_
                                               _%__splice214646214647%_
                                               _%$%target211726212107%_
                                               _%$%tl211728212109%_)
                                              (_%__match214681214682%_
                                               _%$%e211723212099%_
                                               _%$%hd211724212102%_
                                               _%$%tl211725212104%_
                                               _%__splice214646214647%_
                                               _%$%target211726212107%_
                                               _%$%tl211728212109%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl211725212104%_))
                                          (let ((_%$%e211811211855%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl211725212104%_))))
                                            (let ((_%$%tl211813211860%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e211811211855%_)))
                                                  (_%$%hd211812211858%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e211811211855%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd211812211858%_))
                                                  (let ((_%$%e211814211863%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd211812211858%_))))
                                                    (let ((_%$%tl211816211868%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e211814211863%_)))
                                                          (_%$%hd211815211866%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e211814211863%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd211815211866%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%$%hd211815211866%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl211816211868%_))
                          (let ((_%$%e211817211871%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl211816211868%_))))
                            (let ((_%$%tl211819211876%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e211817211871%_)))
                                  (_%$%hd211818211874%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e211817211871%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd211818211874%_))
                                  (let ((_%$%e211820211879%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd211818211874%_))))
                                    (let ((_%$%tl211822211884%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e211820211879%_)))
                                          (_%$%hd211821211882%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e211820211879%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd211821211882%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd211821211882%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl211822211884%_))
                                                  (let ((_%$%e211823211887%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl211822211884%_))))
                                                    (let ((_%$%tl211825211892%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e211823211887%_)))
                                                          (_%$%hd211824211890%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e211823211887%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl211825211892%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl211819211876%_))
                      (let ((_%$%e211826211895%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl211819211876%_))))
                        (let ((_%$%tl211828211900%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e211826211895%_)))
                              (_%$%hd211827211898%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e211826211895%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd211827211898%_))
                              (let ((_%$%e211829211903%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd211827211898%_))))
                                (let ((_%$%tl211831211908%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e211829211903%_)))
                                      (_%$%hd211830211906%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e211829211903%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd211830211906%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd211830211906%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl211831211908%_))
                                              (let ((_%$%e211832211911%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl211831211908%_))))
                                                (let ((_%$%tl211834211916%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e211832211911%_)))
                                                      (_%$%hd211833211914%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e211832211911%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl211834211916%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl211828211900%_))
                                                          (let ((_%$%e211835211919%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl211828211900%_))))
                    (let ((_%$%tl211837211924%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e211835211919%_)))
                          (_%$%hd211836211922%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e211835211919%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl211837211924%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl211813211860%_))
                              (_%__kont214654214655%_
                               _%$%hd211833211914%_
                               _%$%hd211824211890%_
                               _%$%hd211724212102%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g211718211842%_)))
                          (let ()
                            (declare (not safe))
                            (_%$%g211718211842%_)))))
                  (let () (declare (not safe)) (_%$%g211718211842%_)))
              (let () (declare (not safe)) (_%$%g211718211842%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g211718211842%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g211718211842%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g211718211842%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g211718211842%_)))))
                      (let () (declare (not safe)) (_%$%g211718211842%_)))
                  (let () (declare (not safe)) (_%$%g211718211842%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g211718211842%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g211718211842%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g211718211842%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g211718211842%_)))))
                          (let () (declare (not safe)) (_%$%g211718211842%_)))
                      (let () (declare (not safe)) (_%$%g211718211842%_)))
                  (let () (declare (not safe)) (_%$%g211718211842%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g211718211842%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g211718211842%_))))))
                              (let ()
                                (declare (not safe))
                                (_%$%g211718211842%_))))))))
                 (_%generate1211565%_
                  (lambda (_%args211696%_
                           _%arglen211697%_
                           _%hd211698%_
                           _%body211699%_)
                    (let* ((_%len211701%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd211698%_)))
                           (_%condition211706%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd211698%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen211697%_
                                                (cons _%len211701%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen211697%_ (cons _%len211701%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len211701%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen211697%_
                                                    (cons _%len211701%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen211697%_ (cons _%len211701%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch211708%_
                            (if (_%dispatch-case?211563%_
                                 _%hd211698%_
                                 _%body211699%_)
                                (_%dispatch-case-e211564%_
                                 _%hd211698%_
                                 _%body211699%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self211560%_
                                 _%hd211698%_
                                 _%body211699%_))))
                      (cons _%condition211706%_
                            (cons (cons 'apply
                                        (cons _%dispatch211708%_
                                              (cons _%args211696%_ '())))
                                  '()))))))
          (let* ((_%$%g211567211595%_
                  (lambda (_%$%g211568211592%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g211568211592%_))))
                 (_%$%g211566211693%_
                  (lambda (_%$%g211568211598%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g211568211598%_))
                        (let ((_%$%e211571211600%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g211568211598%_))))
                          (let ((_%$%hd211572211603%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e211571211600%_)))
                                (_%$%tl211573211605%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e211571211600%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%$%tl211573211605%_))
                                (let ((_g215809_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%$%tl211573211605%_
                                          '0))))
                                  (begin
                                    (let ((_g215810_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g215809_)
                                                 (##values-length _g215809_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g215810_ 2)))
                                          (error "Context expects 2 values"
                                                 _g215810_)))
                                    (let ((_%$%target211574211608%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g215809_ 0)))
                                          (_%$%tl211576211610%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g215809_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl211576211610%_))
                                          (letrec ((_%$%loop211577211613%_
                                                    (lambda (_%$%hd211575211616%_
                                                             _%$%body211581211618%_
                                                             _%$%hd211582211619%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%hd211575211616%_))
                                                          (let ((_%$%e211578211621%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%hd211575211616%_))))
                    (let ((_%$%lp-hd211579211624%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e211578211621%_)))
                          (_%$%lp-tl211580211626%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e211578211621%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%lp-hd211579211624%_))
                          (let ((_%$%e211585211629%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%lp-hd211579211624%_))))
                            (let ((_%$%hd211586211632%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e211585211629%_)))
                                  (_%$%tl211587211634%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e211585211629%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl211587211634%_))
                                  (let ((_%$%e211588211637%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl211587211634%_))))
                                    (let ((_%$%hd211589211640%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e211588211637%_)))
                                          (_%$%tl211590211642%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e211588211637%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl211590211642%_))
                                          (_%$%loop211577211613%_
                                           _%$%lp-tl211580211626%_
                                           (cons _%$%hd211589211640%_
                                                 _%$%body211581211618%_)
                                           (cons _%$%hd211586211632%_
                                                 _%$%hd211582211619%_))
                                          (_%$%g211567211595%_
                                           _%$%g211568211598%_))))
                                  (_%$%g211567211595%_ _%$%g211568211598%_))))
                          (_%$%g211567211595%_ _%$%g211568211598%_))))
                  (let ((_%$%body211583211645%_
                         (reverse _%$%body211581211618%_))
                        (_%$%hd211584211646%_ (reverse _%$%hd211582211619%_)))
                    (let ((_%args211668%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__0)))
                          (_%arglen211669%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__0)))
                          (_%name211670%_
                           (let ((_%$e211665%_
                                  (let ((__tmp215811
                                         (let ()
                                           (declare (not safe))
                                           (gxc#current-compile-runtime-names))))
                                    (declare (not safe))
                                    (hash-get __tmp215811 _%stx211561%_))))
                             (if _%$e211665%_
                                 _%$e211665%_
                                 ''case-lambda-dispatch))))
                      (cons 'lambda
                            (cons _%args211668%_
                                  (cons (cons 'let
                                              (cons (cons (cons _%arglen211669%_
                                                                (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '##length (cons _%args211668%_ '()))
                                  (cons 'let
                                        (cons '()
                                              (cons '(declare (not safe))
                                                    (cons (cons '##length
                                                                (cons _%args211668%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '()))
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons 'cond
                                                                (let ((__tmp215813
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (map (lambda (_%$%g211671211674%_
                                             _%$%g211672211676%_)
                                      (_%generate1211565%_
                                       _%args211668%_
                                       _%arglen211669%_
                                       _%$%g211671211674%_
                                       _%$%g211672211676%_))
                                    (let ((__tmp215814
                                           (lambda (_%$%g211678211681%_
                                                    _%$%g211679211683%_)
                                             (cons _%$%g211678211681%_
                                                   _%$%g211679211683%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp215814
                                       '()
                                       _%$%hd211584211646%_))
                                    (let ((__tmp215815
                                           (lambda (_%$%g211685211688%_
                                                    _%$%g211686211690%_)
                                             (cons _%$%g211685211688%_
                                                   _%$%g211686211690%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp215815
                                       '()
                                       _%$%body211583211645%_))))
                              (__tmp215812
                               (cons (cons 'else
                                           (cons (cons '##raise-wrong-number-of-arguments-exception
                                                       (cons _%name211670%_
                                                             (cons _%args211668%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())))
                          (declare (not safe))
                          (##append __tmp215813 __tmp215812)))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%loop211577211613%_
                                             _%$%target211574211608%_
                                             '()
                                             '()))
                                          (_%$%g211567211595%_
                                           _%$%g211568211598%_)))))
                                (_%$%g211567211595%_ _%$%g211568211598%_))))
                        (_%$%g211567211595%_ _%$%g211568211598%_)))))
            (_%$%g211566211693%_ _%stx211561%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self210797%_ _%stx210798%_ _%compiled-body?210799%_)
        (letrec ((_%generate-simple210801%_
                  (lambda (_%hd211545%_ _%body211546%_)
                    (_%coalesce-boolean210802%_
                     (_%simplify-let210803%_
                      (gxc#generate-runtime-simple-let
                       _%self210797%_
                       'let
                       _%hd211545%_
                       _%body211546%_
                       _%compiled-body?210799%_)))))
                 (_%coalesce-boolean210802%_
                  (lambda (_%code211406%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%$%code211407211433%_ _%code211406%_)
                               (_%$%else211409211441%_
                                (lambda () _%code211406%_))
                               (_%$%K211411211478%_
                                (lambda (_%expr2211444%_
                                         _%expr1211445%_
                                         _%id211446%_)
                                  (let* ((_%$%expr2211447211455%_
                                          _%expr2211444%_)
                                         (_%$%else211449211463%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1211445%_
                                                        (cons _%expr2211444%_
                                                              '())))))
                                         (_%$%K211451211468%_
                                          (lambda (_%exprs211466%_)
                                            (cons 'or
                                                  (cons _%expr1211445%_
                                                        _%exprs211466%_)))))
                                    (if (pair? _%$%expr2211447211455%_)
                                        (let ((_%$%hd211452211471%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%expr2211447211455%_)))
                                              (_%$%tl211453211473%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%expr2211447211455%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%$%hd211452211471%_
                                                       'or))
                                              (let ((_%exprs211476%_
                                                     _%$%tl211453211473%_))
                                                (_%$%K211451211468%_
                                                 _%exprs211476%_))
                                              (_%$%else211449211463%_)))
                                        (_%$%else211449211463%_))))))
                          (if (pair? _%$%code211407211433%_)
                              (let ((_%$%hd211412211481%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%code211407211433%_)))
                                    (_%$%tl211413211483%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%code211407211433%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%$%hd211412211481%_ 'let))
                                    (if (pair? _%$%tl211413211483%_)
                                        (let ((_%$%hd211414211486%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%tl211413211483%_)))
                                              (_%$%tl211415211488%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%tl211413211483%_))))
                                          (if (pair? _%$%hd211414211486%_)
                                              (let ((_%$%hd211426211491%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%hd211414211486%_)))
                                                    (_%$%tl211427211493%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%hd211414211486%_))))
                                                (if (pair? _%$%hd211426211491%_)
                                                    (let ((_%$%hd211428211496%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%hd211426211491%_)))
                                                          (_%$%tl211429211498%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%hd211426211491%_))))
                                                      (let ((_%id211501%_
                                                             _%$%hd211428211496%_))
                                                        (if (pair? _%$%tl211429211498%_)
                                                            (let ((_%$%hd211430211503%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%$%tl211429211498%_)))
                          (_%$%tl211431211505%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%tl211429211498%_))))
                      (let ((_%expr1211508%_ _%$%hd211430211503%_))
                        (if (null? _%$%tl211431211505%_)
                            (if (null? _%$%tl211427211493%_)
                                (if (pair? _%$%tl211415211488%_)
                                    (let ((_%$%hd211416211510%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%tl211415211488%_)))
                                          (_%$%tl211417211512%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%tl211415211488%_))))
                                      (if (pair? _%$%hd211416211510%_)
                                          (let ((_%$%hd211418211515%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%hd211416211510%_)))
                                                (_%$%tl211419211517%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%hd211416211510%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%$%hd211418211515%_
                                                         'if))
                                                (if (pair? _%$%tl211419211517%_)
                                                    (let ((_%$%hd211420211520%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%tl211419211517%_)))
                                                          (_%$%tl211421211522%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%tl211419211517%_))))
                                                      (if (eq? _%$%hd211420211520%_
                                                               _%id211501%_)
                                                          (if (pair? _%$%tl211421211522%_)
                                                              (let ((_%$%hd211422211529%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##car _%$%tl211421211522%_)))
                            (_%$%tl211423211531%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%tl211421211522%_))))
                        (if (eq? _%$%hd211422211529%_ _%id211501%_)
                            (if (pair? _%$%tl211423211531%_)
                                (let ((_%$%hd211424211538%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%tl211423211531%_)))
                                      (_%$%tl211425211540%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%tl211423211531%_))))
                                  (let ((_%expr2211543%_ _%$%hd211424211538%_))
                                    (if (null? _%$%tl211425211540%_)
                                        (if (null? _%$%tl211417211512%_)
                                            (_%$%K211411211478%_
                                             _%expr2211543%_
                                             _%expr1211508%_
                                             _%id211501%_)
                                            (_%$%else211409211441%_))
                                        (_%$%else211409211441%_))))
                                (_%$%else211409211441%_))
                            (_%$%else211409211441%_)))
                      (_%$%else211409211441%_))
                  (_%$%else211409211441%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%else211409211441%_))
                                                (_%$%else211409211441%_)))
                                          (_%$%else211409211441%_)))
                                    (_%$%else211409211441%_))
                                (_%$%else211409211441%_))
                            (_%$%else211409211441%_))))
                    (_%$%else211409211441%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%else211409211441%_)))
                                              (_%$%else211409211441%_)))
                                        (_%$%else211409211441%_))
                                    (_%$%else211409211441%_)))
                              (_%$%else211409211441%_)))
                        _%code211406%_)))
                 (_%simplify-let210803%_
                  (lambda (_%code211105%_)
                    (let* ((_%$%code211106211178%_ _%code211105%_)
                           (_%$%else211111211186%_ (lambda () _%code211105%_)))
                      (let ((_%$%K211170211386%_
                             (lambda (_%expr211384%_) _%expr211384%_))
                            (_%$%K211153211332%_
                             (lambda (_%body211328%_
                                      _%expr211329%_
                                      _%id211330%_)
                               (cons 'let
                                     (cons (cons (cons _%id211330%_
                                                       (cons _%expr211329%_
                                                             '()))
                                                 '())
                                           _%body211328%_))))
                            (_%$%K211130211256%_
                             (lambda (_%body211250%_
                                      _%expr2211251%_
                                      _%id2211252%_
                                      _%expr1211253%_
                                      _%id1211254%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1211254%_
                                                       (cons _%expr1211253%_
                                                             '()))
                                                 (cons (cons _%id2211252%_
                                                             (cons _%expr2211251%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body211250%_))))
                            (_%$%K211113211195%_
                             (lambda (_%body211190%_
                                      _%bind211191%_
                                      _%expr1211192%_
                                      _%id1211193%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1211193%_
                                                       (cons _%expr1211192%_
                                                             '()))
                                                 _%bind211191%_)
                                           _%body211190%_)))))
                        (if (pair? _%$%code211106211178%_)
                            (let ((_%$%tl211172211391%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%code211106211178%_)))
                                  (_%$%hd211171211389%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%code211106211178%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%$%hd211171211389%_ 'let))
                                  (if (pair? _%$%tl211172211391%_)
                                      (let ((_%$%tl211174211396%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%tl211172211391%_)))
                                            (_%$%hd211173211394%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%tl211172211391%_))))
                                        (if (null? _%$%hd211173211394%_)
                                            (if (pair? _%$%tl211174211396%_)
                                                (let ((_%$%tl211176211401%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%tl211174211396%_)))
                                                      (_%$%hd211175211399%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%tl211174211396%_))))
                                                  (if (null? _%$%tl211176211401%_)
                                                      (let ((_%expr211404%_
                                                             _%$%hd211175211399%_))
                                                        (_%$%K211170211386%_
                                                         _%expr211404%_))
                                                      (_%$%else211111211186%_)))
                                                (_%$%else211111211186%_))
                                            (if (pair? _%$%hd211173211394%_)
                                                (let ((_%$%tl211165211347%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%hd211173211394%_)))
                                                      (_%$%hd211164211345%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%hd211173211394%_))))
                                                  (if (pair? _%$%hd211164211345%_)
                                                      (let ((_%$%tl211167211352%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%hd211164211345%_)))
                    (_%$%hd211166211350%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%hd211164211345%_))))
                (if (pair? _%$%tl211167211352%_)
                    (let ((_%$%tl211169211359%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%tl211167211352%_)))
                          (_%$%hd211168211357%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%tl211167211352%_))))
                      (if (null? _%$%tl211169211359%_)
                          (if (null? _%$%tl211165211347%_)
                              (if (pair? _%$%tl211174211396%_)
                                  (let ((_%$%tl211159211366%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl211174211396%_)))
                                        (_%$%hd211158211364%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%tl211174211396%_))))
                                    (if (pair? _%$%hd211158211364%_)
                                        (let ((_%$%tl211161211371%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%hd211158211364%_)))
                                              (_%$%hd211160211369%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%hd211158211364%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%$%hd211160211369%_
                                                       'let))
                                              (if (pair? _%$%tl211161211371%_)
                                                  (let ((_%$%tl211163211376%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%tl211161211371%_)))
                                                        (_%$%hd211162211374%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%tl211161211371%_))))
                                                    (if (null? _%$%hd211162211374%_)
                                                        (if (null? _%$%tl211159211366%_)
                                                            (let ((_%id211355%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%hd211166211350%_)
                          (_%expr211362%_ _%$%hd211168211357%_)
                          (_%body211379%_ _%$%tl211163211376%_))
                      (_%$%K211153211332%_
                       _%body211379%_
                       _%expr211362%_
                       _%id211355%_))
                    (_%$%else211111211186%_))
                (if (pair? _%$%hd211162211374%_)
                    (let ((_%$%tl211142211305%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%hd211162211374%_)))
                          (_%$%hd211141211303%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%hd211162211374%_))))
                      (if (pair? _%$%hd211141211303%_)
                          (let ((_%$%tl211144211310%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%hd211141211303%_)))
                                (_%$%hd211143211308%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%hd211141211303%_))))
                            (if (pair? _%$%tl211144211310%_)
                                (let ((_%$%tl211146211317%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%tl211144211310%_)))
                                      (_%$%hd211145211315%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%tl211144211310%_))))
                                  (if (null? _%$%tl211146211317%_)
                                      (if (null? _%$%tl211142211305%_)
                                          (if (null? _%$%tl211159211366%_)
                                              (let ((_%id1211279%_
                                                     _%$%hd211166211350%_)
                                                    (_%expr1211286%_
                                                     _%$%hd211168211357%_)
                                                    (_%id2211313%_
                                                     _%$%hd211143211308%_)
                                                    (_%expr2211320%_
                                                     _%$%hd211145211315%_)
                                                    (_%body211322%_
                                                     _%$%tl211163211376%_))
                                                (_%$%K211130211256%_
                                                 _%body211322%_
                                                 _%expr2211320%_
                                                 _%id2211313%_
                                                 _%expr1211286%_
                                                 _%id1211279%_))
                                              (_%$%else211111211186%_))
                                          (_%$%else211111211186%_))
                                      (_%$%else211111211186%_)))
                                (_%$%else211111211186%_)))
                          (_%$%else211111211186%_)))
                    (_%$%else211111211186%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%else211111211186%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%$%hd211160211369%_
                                                           'let*))
                                                  (if (pair? _%$%tl211161211371%_)
                                                      (let ((_%$%tl211123211239%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%tl211161211371%_)))
                    (_%$%hd211122211237%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%tl211161211371%_))))
                (if (null? _%$%tl211159211366%_)
                    (let ((_%id1211218%_ _%$%hd211166211350%_)
                          (_%expr1211225%_ _%$%hd211168211357%_)
                          (_%bind211242%_ _%$%hd211122211237%_)
                          (_%body211244%_ _%$%tl211123211239%_))
                      (_%$%K211113211195%_
                       _%body211244%_
                       _%bind211242%_
                       _%expr1211225%_
                       _%id1211218%_))
                    (_%$%else211111211186%_)))
              (_%$%else211111211186%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%else211111211186%_))))
                                        (_%$%else211111211186%_)))
                                  (_%$%else211111211186%_))
                              (_%$%else211111211186%_))
                          (_%$%else211111211186%_)))
                    (_%$%else211111211186%_)))
              (_%$%else211111211186%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%else211111211186%_))))
                                      (_%$%else211111211186%_))
                                  (_%$%else211111211186%_)))
                            (_%$%else211111211186%_))))))
                 (_%generate-values210804%_
                  (lambda (_%hd210918%_ _%body210919%_)
                    (let _%lp210921%_ ((_%rest210923%_ _%hd210918%_)
                                       (_%bind210924%_ '())
                                       (_%check210925%_ '())
                                       (_%post210926%_ '()))
                      (let* ((_%__stx214971214972%_ _%rest210923%_)
                             (_%$%g210929210940%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx214971214972%_)))))
                        (let ((_%__kont214973214974%_
                               (lambda (_%$%g210931210967%_
                                        _%$%g210932210968%_)
                                 (let* ((_%__stx214927214928%_
                                         _%$%g210932210968%_)
                                        (_%$%g210983211008%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx214927214928%_)))))
                                   (let ((_%__kont214929214930%_
                                          (lambda (_%$%g210985211081%_
                                                   _%$%g210986211082%_)
                                            (let ((_%eid211096%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%$%g210986211082%_)))
                                                  (_%expr211097%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self210797%_
                                                      _%$%g210985211081%_))))
                                              (_%lp210921%_
                                               _%$%g210931210967%_
                                               (cons (cons _%eid211096%_
                                                           (cons _%expr211097%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind210924%_)
                                               _%check210925%_
                                               _%post210926%_))))
                                         (_%__kont214931214932%_
                                          (lambda (_%$%g210996211029%_
                                                   _%$%g210997211030%_)
                                            (let* ((_%vals211043%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values211045%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals211043%_
                                                     _%$%g210997211030%_
                                                     _%$%g210996211029%_))
                                                   (_%refs211047%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals211043%_
                                                     _%$%g210997211030%_))
                                                   (_%expr211049%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self210797%_
                                                       _%$%g210996211029%_))))
                                              (_%lp210921%_
                                               _%$%g210931210967%_
                                               (cons (cons _%vals211043%_
                                                           (cons _%expr211049%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind210924%_)
                                               (cons _%check-values211045%_
                                                     _%check210925%_)
                                               (cons _%refs211047%_
                                                     _%post210926%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx214927214928%_))
                                         (let ((_%$%e210987211057%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx214927214928%_))))
                                           (let ((_%$%tl210989211062%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e210987211057%_)))
                                                 (_%$%hd210988211060%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e210987211057%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%hd210988211060%_))
                                                 (let ((_%$%e210990211065%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%hd210988211060%_))))
                                                   (let ((_%$%tl210992211070%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e210990211065%_)))
                                                         (_%$%hd210991211068%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e210990211065%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%$%tl210992211070%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%tl210989211062%_))
                     (let ((_%$%e210993211073%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl210989211062%_))))
                       (let ((_%$%tl210995211078%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e210993211073%_)))
                             (_%$%hd210994211076%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e210993211073%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl210995211078%_))
                             (_%__kont214929214930%_
                              _%$%hd210994211076%_
                              _%$%hd210991211068%_)
                             (let ()
                               (declare (not safe))
                               (_%$%g210983211008%_)))))
                     (let () (declare (not safe)) (_%$%g210983211008%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%$%tl210989211062%_))
                     (let ((_%$%e211001211021%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl210989211062%_))))
                       (let ((_%$%tl211003211026%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e211001211021%_)))
                             (_%$%hd211002211024%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e211001211021%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl211003211026%_))
                             (_%__kont214931214932%_
                              _%$%hd211002211024%_
                              _%$%hd210988211060%_)
                             (let ()
                               (declare (not safe))
                               (_%$%g210983211008%_)))))
                     (let () (declare (not safe)) (_%$%g210983211008%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl210989211062%_))
                                                     (let ((_%$%e211001211021%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl210989211062%_))))
                                                       (let ((_%$%tl211003211026%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e211001211021%_)))
                     (_%$%hd211002211024%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%e211001211021%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl211003211026%_))
                     (_%__kont214931214932%_
                      _%$%hd211002211024%_
                      _%$%hd210988211060%_)
                     (let () (declare (not safe)) (_%$%g210983211008%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%$%g210983211008%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%$%g210983211008%_)))))))
                              (_%__kont214975214976%_
                               (lambda ()
                                 (let* ((_%body210947%_
                                         (if _%compiled-body?210799%_
                                             _%body210919%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self210797%_
                                                _%body210919%_))))
                                        (_%body210949%_
                                         (_%generate-values-post210805%_
                                          _%post210926%_
                                          _%body210947%_))
                                        (_%body210951%_
                                         (_%generate-values-check210806%_
                                          _%check210925%_
                                          _%body210949%_)))
                                   (cons 'let
                                         (cons (reverse _%bind210924%_)
                                               (cons _%body210951%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx214971214972%_))
                              (let ((_%$%e210933210959%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx214971214972%_))))
                                (let ((_%$%tl210935210964%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e210933210959%_)))
                                      (_%$%hd210934210962%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e210933210959%_))))
                                  (_%__kont214973214974%_
                                   _%$%tl210935210964%_
                                   _%$%hd210934210962%_)))
                              (_%__kont214975214976%_)))))))
                 (_%generate-values-post210805%_
                  (lambda (_%post210877%_ _%body210878%_)
                    (let _%lp210880%_ ((_%rest210882%_ _%post210877%_)
                                       (_%body210883%_ _%body210878%_))
                      (let* ((_%$%rest210884210892%_ _%rest210882%_)
                             (_%$%else210886210900%_
                              (lambda () _%body210883%_))
                             (_%$%K210888210906%_
                              (lambda (_%rest210903%_ _%bind210904%_)
                                (_%lp210880%_
                                 _%rest210903%_
                                 (cons 'let
                                       (cons _%bind210904%_
                                             (cons _%body210883%_ '())))))))
                        (if (pair? _%$%rest210884210892%_)
                            (let ((_%$%hd210889210909%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest210884210892%_)))
                                  (_%$%tl210890210911%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest210884210892%_))))
                              (let* ((_%bind210914%_ _%$%hd210889210909%_)
                                     (_%rest210916%_ _%$%tl210890210911%_))
                                (_%$%K210888210906%_
                                 _%rest210916%_
                                 _%bind210914%_)))
                            (_%$%else210886210900%_))))))
                 (_%generate-values-check210806%_
                  (lambda (_%check210874%_ _%body210875%_)
                    (cons 'begin
                          (let ((__tmp215817 (reverse _%check210874%_))
                                (__tmp215816 (cons _%body210875%_ '())))
                            (declare (not safe))
                            (##append __tmp215817 __tmp215816))))))
          (let* ((_%$%g210808210825%_
                  (lambda (_%$%g210809210822%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g210809210822%_))))
                 (_%$%g210807210871%_
                  (lambda (_%$%g210809210828%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g210809210828%_))
                        (let ((_%$%e210812210830%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g210809210828%_))))
                          (let ((_%$%hd210813210833%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e210812210830%_)))
                                (_%$%tl210814210835%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e210812210830%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl210814210835%_))
                                (let ((_%$%e210815210838%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl210814210835%_))))
                                  (let ((_%$%hd210816210841%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e210815210838%_)))
                                        (_%$%tl210817210843%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e210815210838%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl210817210843%_))
                                        (let ((_%$%e210818210846%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl210817210843%_))))
                                          (let ((_%$%hd210819210849%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e210818210846%_)))
                                                (_%$%tl210820210851%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e210818210846%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl210820210851%_))
                                                (if (gxc#generate-runtime-simple-let?
                                                     _%$%hd210816210841%_)
                                                    (_%generate-simple210801%_
                                                     _%$%hd210816210841%_
                                                     _%$%hd210819210849%_)
                                                    (_%generate-values210804%_
                                                     _%$%hd210816210841%_
                                                     _%$%hd210819210849%_))
                                                (_%$%g210808210825%_
                                                 _%$%g210809210828%_))))
                                        (_%$%g210808210825%_
                                         _%$%g210809210828%_))))
                                (_%$%g210808210825%_ _%$%g210809210828%_))))
                        (_%$%g210808210825%_ _%$%g210809210828%_)))))
            (_%$%g210807210871%_ _%stx210798%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self211551%_ _%stx211552%_)
        (let ((_%compiled-body?211554%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self211551%_
           _%stx211552%_
           _%compiled-body?211554%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g215818_
        (let ((_g215819_ (let () (declare (not safe)) (##length _g215818_))))
          (cond ((let () (declare (not safe)) (##fx= _g215819_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g215818_))
                ((let () (declare (not safe)) (##fx= _g215819_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g215818_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g215818_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals210691%_ _%hd210692%_)
        (let _%lp210694%_ ((_%rest210696%_ _%hd210692%_)
                           (_%k210697%_ '0)
                           (_%r210698%_ '()))
          (let* ((_%__stx214985214986%_ _%rest210696%_)
                 (_%$%g210703210720%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx214985214986%_)))))
            (let ((_%__kont214987214988%_
                   (lambda (_%$%g210705210783%_)
                     (_%lp210694%_
                      _%$%g210705210783%_
                      (let () (declare (not safe)) (##fx+ _%k210697%_ '1))
                      _%r210698%_)))
                  (_%__kont214989214990%_
                   (lambda (_%$%g210710210756%_ _%$%g210711210757%_)
                     (_%lp210694%_
                      _%$%g210710210756%_
                      (let () (declare (not safe)) (##fx+ _%k210697%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%$%g210711210757%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals210691%_
                                         _%k210697%_
                                         _%$%g210710210756%_)
                                        '()))
                            _%r210698%_))))
                  (_%__kont214991214992%_
                   (lambda (_%$%g210715210732%_)
                     (let ((__tmp215820
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%$%g210715210732%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals210691%_
                                               _%k210697%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (foldl__0 cons __tmp215820 _%r210698%_))))
                  (_%__kont214993214994%_ (lambda () (reverse _%r210698%_))))
              (let ((_%$%g210701210743%_
                     (lambda ()
                       (let ((_%$%g210715210732%_ _%__stx214985214986%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%$%g210715210732%_))
                             (_%__kont214991214992%_ _%$%g210715210732%_)
                             (_%__kont214993214994%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx214985214986%_))
                    (let ((_%$%e210706210772%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx214985214986%_))))
                      (let ((_%$%tl210708210777%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e210706210772%_)))
                            (_%$%hd210707210775%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e210706210772%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%$%hd210707210775%_))
                            (let ((_%$%e210709210780%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd210707210775%_))))
                              (if (equal? _%$%e210709210780%_ '#f)
                                  (_%__kont214987214988%_ _%$%tl210708210777%_)
                                  (_%__kont214989214990%_
                                   _%$%tl210708210777%_
                                   _%$%hd210707210775%_)))
                            (_%__kont214989214990%_
                             _%$%tl210708210777%_
                             _%$%hd210707210775%_))))
                    (let () (declare (not safe)) (_%$%g210701210743%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self210370%_ _%stx210371%_ _%compiled-body?210372%_)
        (letrec ((_%generate-simple210374%_
                  (lambda (_%hd210676%_ _%body210677%_)
                    (gxc#generate-runtime-simple-let
                     _%self210370%_
                     'letrec
                     _%hd210676%_
                     _%body210677%_
                     _%compiled-body?210372%_)))
                 (_%generate-values210375%_
                  (lambda (_%hd210455%_ _%body210456%_)
                    (let _%lp210458%_ ((_%rest210460%_ _%hd210455%_)
                                       (_%bind210461%_ '())
                                       (_%check210462%_ '())
                                       (_%post210463%_ '()))
                      (let* ((_%__stx215059215060%_ _%rest210460%_)
                             (_%$%g210466210477%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx215059215060%_)))))
                        (let ((_%__kont215061215062%_
                               (lambda (_%$%g210468210504%_
                                        _%$%g210469210505%_)
                                 (let* ((_%__stx215015215016%_
                                         _%$%g210469210505%_)
                                        (_%$%g210520210545%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx215015215016%_)))))
                                   (let ((_%__kont215017215018%_
                                          (lambda (_%$%g210522210652%_
                                                   _%$%g210523210653%_)
                                            (let ((_%eid210667%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%$%g210523210653%_)))
                                                  (_%expr210668%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self210370%_
                                                      _%$%g210522210652%_))))
                                              (_%lp210458%_
                                               _%$%g210468210504%_
                                               (cons (cons _%eid210667%_
                                                           (cons _%expr210668%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind210461%_)
                                               _%check210462%_
                                               _%post210463%_))))
                                         (_%__kont215019215020%_
                                          (lambda (_%$%g210533210566%_
                                                   _%$%g210534210567%_)
                                            (let* ((_%vals210580%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values210582%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals210580%_
                                                     _%$%g210534210567%_
                                                     _%$%g210533210566%_))
                                                   (_%refs210584%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals210580%_
                                                     _%$%g210534210567%_))
                                                   (_%expr210586%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self210370%_
                                                       _%$%g210533210566%_))))
                                              (_%lp210458%_
                                               _%$%g210468210504%_
                                               (let ((__tmp215822
                                                      (cons (cons _%vals210580%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr210586%_ '()))
                    _%bind210461%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp215821
                                                      (map (lambda (_%$%e210588210590%_)
                                                             (let* ((_%$%$%e210588210592210601%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%e210588210590%_)
                            (_%$%E210594210605%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%$%$%e210588210592210601%_
                                        '([eid _])))
                               '#!void))
                            (_%$%K210595210610%_
                             (lambda (_%eid210608%_)
                               (cons _%eid210608%_ (cons '#!void '())))))
                       (if (pair? _%$%$%e210588210592210601%_)
                           (let ((_%$%hd210596210613%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$%e210588210592210601%_)))
                                 (_%$%tl210597210615%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$%e210588210592210601%_))))
                             (let ((_%eid210618%_ _%$%hd210596210613%_))
                               (if (pair? _%$%tl210597210615%_)
                                   (let ((_%$%tl210599210620%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%tl210597210615%_))))
                                     (if (null? _%$%tl210599210620%_)
                                         (_%$%K210595210610%_ _%eid210618%_)
                                         (_%$%E210594210605%_)))
                                   (_%$%E210594210605%_))))
                           (_%$%E210594210605%_))))
                   _%refs210584%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  __tmp215822
                                                  __tmp215821))
                                               (cons _%check-values210582%_
                                                     _%check210462%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  _%refs210584%_
                                                  _%post210463%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx215015215016%_))
                                         (let ((_%$%e210524210628%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx215015215016%_))))
                                           (let ((_%$%tl210526210633%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e210524210628%_)))
                                                 (_%$%hd210525210631%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e210524210628%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%hd210525210631%_))
                                                 (let ((_%$%e210527210636%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%hd210525210631%_))))
                                                   (let ((_%$%tl210529210641%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e210527210636%_)))
                                                         (_%$%hd210528210639%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e210527210636%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%$%tl210529210641%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%tl210526210633%_))
                     (let ((_%$%e210530210644%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl210526210633%_))))
                       (let ((_%$%tl210532210649%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e210530210644%_)))
                             (_%$%hd210531210647%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e210530210644%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl210532210649%_))
                             (_%__kont215017215018%_
                              _%$%hd210531210647%_
                              _%$%hd210528210639%_)
                             (let ()
                               (declare (not safe))
                               (_%$%g210520210545%_)))))
                     (let () (declare (not safe)) (_%$%g210520210545%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%$%tl210526210633%_))
                     (let ((_%$%e210538210558%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl210526210633%_))))
                       (let ((_%$%tl210540210563%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e210538210558%_)))
                             (_%$%hd210539210561%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e210538210558%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl210540210563%_))
                             (_%__kont215019215020%_
                              _%$%hd210539210561%_
                              _%$%hd210525210631%_)
                             (let ()
                               (declare (not safe))
                               (_%$%g210520210545%_)))))
                     (let () (declare (not safe)) (_%$%g210520210545%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl210526210633%_))
                                                     (let ((_%$%e210538210558%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl210526210633%_))))
                                                       (let ((_%$%tl210540210563%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e210538210558%_)))
                     (_%$%hd210539210561%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%e210538210558%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl210540210563%_))
                     (_%__kont215019215020%_
                      _%$%hd210539210561%_
                      _%$%hd210525210631%_)
                     (let () (declare (not safe)) (_%$%g210520210545%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%$%g210520210545%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%$%g210520210545%_)))))))
                              (_%__kont215063215064%_
                               (lambda ()
                                 (let* ((_%body210484%_
                                         (if _%compiled-body?210372%_
                                             _%body210456%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self210370%_
                                                _%body210456%_))))
                                        (_%body210486%_
                                         (_%generate-values-post210377%_
                                          _%post210463%_
                                          _%body210484%_))
                                        (_%body210488%_
                                         (_%generate-values-check210376%_
                                          _%check210462%_
                                          _%body210486%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind210461%_)
                                               (cons _%body210488%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx215059215060%_))
                              (let ((_%$%e210470210496%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx215059215060%_))))
                                (let ((_%$%tl210472210501%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e210470210496%_)))
                                      (_%$%hd210471210499%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e210470210496%_))))
                                  (_%__kont215061215062%_
                                   _%$%tl210472210501%_
                                   _%$%hd210471210499%_)))
                              (_%__kont215063215064%_)))))))
                 (_%generate-values-check210376%_
                  (lambda (_%check210452%_ _%body210453%_)
                    (cons 'begin
                          (let ((__tmp215824 (reverse _%check210452%_))
                                (__tmp215823 (cons _%body210453%_ '())))
                            (declare (not safe))
                            (##append __tmp215824 __tmp215823)))))
                 (_%generate-values-post210377%_
                  (lambda (_%post210445%_ _%body210446%_)
                    (cons 'begin
                          (let ((__tmp215826
                                 (let ((__tmp215828
                                        (lambda (_%$%g210447210449%_)
                                          (cons 'set! _%$%g210447210449%_)))
                                       (__tmp215827 (reverse _%post210445%_)))
                                   (declare (not safe))
                                   (##map __tmp215828 __tmp215827)))
                                (__tmp215825 (cons _%body210446%_ '())))
                            (declare (not safe))
                            (##append __tmp215826 __tmp215825))))))
          (let* ((_%$%g210379210396%_
                  (lambda (_%$%g210380210393%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g210380210393%_))))
                 (_%$%g210378210442%_
                  (lambda (_%$%g210380210399%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g210380210399%_))
                        (let ((_%$%e210383210401%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g210380210399%_))))
                          (let ((_%$%hd210384210404%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e210383210401%_)))
                                (_%$%tl210385210406%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e210383210401%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl210385210406%_))
                                (let ((_%$%e210386210409%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl210385210406%_))))
                                  (let ((_%$%hd210387210412%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e210386210409%_)))
                                        (_%$%tl210388210414%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e210386210409%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl210388210414%_))
                                        (let ((_%$%e210389210417%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl210388210414%_))))
                                          (let ((_%$%hd210390210420%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e210389210417%_)))
                                                (_%$%tl210391210422%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e210389210417%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl210391210422%_))
                                                (if (gxc#generate-runtime-simple-let?
                                                     _%$%hd210387210412%_)
                                                    (_%generate-simple210374%_
                                                     _%$%hd210387210412%_
                                                     _%$%hd210390210420%_)
                                                    (_%generate-values210375%_
                                                     _%$%hd210387210412%_
                                                     _%$%hd210390210420%_))
                                                (_%$%g210379210396%_
                                                 _%$%g210380210399%_))))
                                        (_%$%g210379210396%_
                                         _%$%g210380210399%_))))
                                (_%$%g210379210396%_ _%$%g210380210399%_))))
                        (_%$%g210379210396%_ _%$%g210380210399%_)))))
            (_%$%g210378210442%_ _%stx210371%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self210682%_ _%stx210683%_)
        (let ((_%compiled-body?210685%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self210682%_
           _%stx210683%_
           _%compiled-body?210685%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g215829_
        (let ((_g215830_ (let () (declare (not safe)) (##length _g215829_))))
          (cond ((let () (declare (not safe)) (##fx= _g215830_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g215829_))
                ((let () (declare (not safe)) (##fx= _g215830_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g215829_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g215829_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self209951%_ _%stx209952%_)
        (letrec ((_%generate-values209954%_
                  (lambda (_%hd210197%_ _%body210198%_)
                    (let _%lp210200%_ ((_%rest210202%_ _%hd210197%_)
                                       (_%bind210203%_ '()))
                      (let* ((_%$%rest210204210212%_ _%rest210202%_)
                             (_%$%else210206210223%_
                              (lambda ()
                                (let ((_%bind210220%_ (reverse _%bind210203%_))
                                      (_%body210221%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self209951%_
                                          _%body210198%_))))
                                  (cons 'letrec*
                                        (cons _%bind210220%_
                                              (cons _%body210221%_ '()))))))
                             (_%$%K210208210357%_
                              (lambda (_%rest210226%_ _%hd-bind210227%_)
                                (let* ((_%__stx215073215074%_
                                        _%hd-bind210227%_)
                                       (_%$%g210230210255%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx215073215074%_)))))
                                  (let ((_%__kont215075215076%_
                                         (lambda (_%$%g210232210336%_
                                                  _%$%g210233210337%_)
                                           (let ((_%eid210351%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%$%g210233210337%_)))
                                                 (_%expr210352%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self209951%_
                                                     _%$%g210232210336%_))))
                                             (_%lp210200%_
                                              _%rest210226%_
                                              (cons (cons _%eid210351%_
                                                          (cons _%expr210352%_
                                                                '()))
                                                    _%bind210203%_)))))
                                        (_%__kont215077215078%_
                                         (lambda (_%$%g210243210276%_
                                                  _%$%g210244210277%_)
                                           (let* ((_%vals210296%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp210298%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values210300%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp210298%_
                                                    _%$%g210244210277%_
                                                    _%$%g210243210276%_))
                                                  (_%refs210302%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals210296%_
                                                    _%$%g210244210277%_))
                                                  (_%expr210304%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self209951%_
                                                      _%$%g210243210276%_))))
                                             (_%lp210200%_
                                              _%rest210226%_
                                              (let ((__tmp215831
                                                     (cons (cons _%vals210296%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp210298%_
                                                       (cons _%expr210304%_
                                                             '()))
                                                 '())
                                           (cons _%check-values210300%_
                                                 (cons _%tmp210298%_ '()))))
                               '()))
                   _%bind210203%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp215831
                                                 _%refs210302%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx215073215074%_))
                                        (let ((_%$%e210234210312%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx215073215074%_))))
                                          (let ((_%$%tl210236210317%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e210234210312%_)))
                                                (_%$%hd210235210315%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e210234210312%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd210235210315%_))
                                                (let ((_%$%e210237210320%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd210235210315%_))))
                                                  (let ((_%$%tl210239210325%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e210237210320%_)))
                                                        (_%$%hd210238210323%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e210237210320%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl210239210325%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl210236210317%_))
                                                            (let ((_%$%e210240210328%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl210236210317%_))))
                      (let ((_%$%tl210242210333%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e210240210328%_)))
                            (_%$%hd210241210331%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e210240210328%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl210242210333%_))
                            (_%__kont215075215076%_
                             _%$%hd210241210331%_
                             _%$%hd210238210323%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g210230210255%_)))))
                    (let () (declare (not safe)) (_%$%g210230210255%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%$%tl210236210317%_))
                    (let ((_%$%e210248210268%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl210236210317%_))))
                      (let ((_%$%tl210250210273%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e210248210268%_)))
                            (_%$%hd210249210271%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e210248210268%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl210250210273%_))
                            (_%__kont215077215078%_
                             _%$%hd210249210271%_
                             _%$%hd210235210315%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g210230210255%_)))))
                    (let () (declare (not safe)) (_%$%g210230210255%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl210236210317%_))
                                                    (let ((_%$%e210248210268%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl210236210317%_))))
                                                      (let ((_%$%tl210250210273%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e210248210268%_)))
                    (_%$%hd210249210271%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e210248210268%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl210250210273%_))
                    (_%__kont215077215078%_
                     _%$%hd210249210271%_
                     _%$%hd210235210315%_)
                    (let () (declare (not safe)) (_%$%g210230210255%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g210230210255%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g210230210255%_))))))))
                        (if (pair? _%$%rest210204210212%_)
                            (let ((_%$%hd210209210360%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest210204210212%_)))
                                  (_%$%tl210210210362%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest210204210212%_))))
                              (let* ((_%hd-bind210365%_ _%$%hd210209210360%_)
                                     (_%rest210367%_ _%$%tl210210210362%_))
                                (_%$%K210208210357%_
                                 _%rest210367%_
                                 _%hd-bind210365%_)))
                            (_%$%else210206210223%_))))))
                 (_%generate-letrec?209955%_
                  (lambda (_%hd210087%_)
                    (let _%lp210089%_ ((_%rest210091%_ _%hd210087%_))
                      (let* ((_%$%rest210092210100%_ _%rest210091%_)
                             (_%$%else210094210108%_ (lambda () '#t))
                             (_%$%K210096210185%_
                              (lambda (_%rest210111%_ _%hd-bind210112%_)
                                (let* ((_%$%g210114210131%_
                                        (lambda (_%$%g210115210128%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%$%g210115210128%_))))
                                       (_%$%g210113210182%_
                                        (lambda (_%$%g210115210134%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%g210115210134%_))
                                              (let ((_%$%e210118210136%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%g210115210134%_))))
                                                (let ((_%$%hd210119210139%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e210118210136%_)))
                                                      (_%$%tl210120210141%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e210118210136%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%hd210119210139%_))
                                                      (let ((_%$%e210121210144%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%hd210119210139%_))))
                (let ((_%$%hd210122210147%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e210121210144%_)))
                      (_%$%tl210123210149%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e210121210144%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl210123210149%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl210120210141%_))
                          (let ((_%$%e210124210152%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl210120210141%_))))
                            (let ((_%$%hd210125210155%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e210124210152%_)))
                                  (_%$%tl210126210157%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e210124210152%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl210126210157%_))
                                  (if (_%is-lambda-expr?209956%_
                                       _%$%hd210125210155%_)
                                      (_%lp210089%_ _%rest210111%_)
                                      '#f)
                                  (_%$%g210114210131%_ _%$%g210115210134%_))))
                          (_%$%g210114210131%_ _%$%g210115210134%_))
                      (_%$%g210114210131%_ _%$%g210115210134%_))))
              (_%$%g210114210131%_ _%$%g210115210134%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g210114210131%_
                                               _%$%g210115210134%_)))))
                                  (_%$%g210113210182%_ _%hd-bind210112%_)))))
                        (if (pair? _%$%rest210092210100%_)
                            (let ((_%$%hd210097210188%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest210092210100%_)))
                                  (_%$%tl210098210190%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest210092210100%_))))
                              (let* ((_%hd-bind210193%_ _%$%hd210097210188%_)
                                     (_%rest210195%_ _%$%tl210098210190%_))
                                (_%$%K210096210185%_
                                 _%rest210195%_
                                 _%hd-bind210193%_)))
                            (_%$%else210094210108%_))))))
                 (_%is-lambda-expr?209956%_
                  (lambda (_%expr210024%_)
                    (let* ((_%__stx215117215118%_ _%expr210024%_)
                           (_%$%g210027210041%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx215117215118%_)))))
                      (let ((_%__kont215119215120%_
                             (lambda (_%$%g210029210069%_ _%$%g210030210070%_)
                               '#t))
                            (_%__kont215121215122%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx215117215118%_))
                            (let ((_%$%e210031210053%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx215117215118%_))))
                              (let ((_%$%tl210033210058%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e210031210053%_)))
                                    (_%$%hd210032210056%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e210031210053%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd210032210056%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%$%hd210032210056%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl210033210058%_))
                                            (let ((_%$%e210034210061%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl210033210058%_))))
                                              (let ((_%$%tl210036210066%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e210034210061%_)))
                                                    (_%$%hd210035210064%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e210034210061%_))))
                                                (_%__kont215119215120%_
                                                 _%$%tl210036210066%_
                                                 _%$%hd210035210064%_)))
                                            (_%__kont215121215122%_))
                                        (_%__kont215121215122%_))
                                    (_%__kont215121215122%_))))
                            (_%__kont215121215122%_)))))))
          (let* ((_%$%g209958209975%_
                  (lambda (_%$%g209959209972%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g209959209972%_))))
                 (_%$%g209957210021%_
                  (lambda (_%$%g209959209978%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g209959209978%_))
                        (let ((_%$%e209962209980%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g209959209978%_))))
                          (let ((_%$%hd209963209983%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e209962209980%_)))
                                (_%$%tl209964209985%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e209962209980%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl209964209985%_))
                                (let ((_%$%e209965209988%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl209964209985%_))))
                                  (let ((_%$%hd209966209991%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e209965209988%_)))
                                        (_%$%tl209967209993%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e209965209988%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl209967209993%_))
                                        (let ((_%$%e209968209996%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl209967209993%_))))
                                          (let ((_%$%hd209969209999%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e209968209996%_)))
                                                (_%$%tl209970210001%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e209968209996%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl209970210001%_))
                                                (if (gxc#generate-runtime-simple-let?
                                                     _%$%hd209966209991%_)
                                                    (if (_%generate-letrec?209955%_
                                                         _%$%hd209966209991%_)
                                                        (gxc#generate-runtime-simple-let
                                                         _%self209951%_
                                                         'letrec
                                                         _%$%hd209966209991%_
                                                         _%$%hd209969209999%_
                                                         '#f)
                                                        (gxc#generate-runtime-simple-let
                                                         _%self209951%_
                                                         'letrec*
                                                         _%$%hd209966209991%_
                                                         _%$%hd209969209999%_
                                                         '#f))
                                                    (_%generate-values209954%_
                                                     _%$%hd209966209991%_
                                                     _%$%hd209969209999%_))
                                                (_%$%g209958209975%_
                                                 _%$%g209959209978%_))))
                                        (_%$%g209958209975%_
                                         _%$%g209959209978%_))))
                                (_%$%g209958209975%_ _%$%g209959209978%_))))
                        (_%$%g209958209975%_ _%$%g209959209978%_)))))
            (_%$%g209957210021%_ _%stx209952%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd209888%_)
        (let _%lp209890%_ ((_%rest209892%_ _%hd209888%_))
          (let* ((_%$%rest209893209909%_ _%rest209892%_)
                 (_%$%else209896209917%_ (lambda () '#f)))
            (let ((_%$%K209899209930%_
                   (lambda (_%rest209928%_) (_%lp209890%_ _%rest209928%_)))
                  (_%$%K209898209922%_ (lambda () '#t)))
              (let ((_%$%try-match209895209925%_
                     (lambda ()
                       (if (null? _%$%rest209893209909%_)
                           (_%$%K209898209922%_)
                           (_%$%else209896209917%_)))))
                (if (pair? _%$%rest209893209909%_)
                    (let ((_%$%tl209901209935%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest209893209909%_)))
                          (_%$%hd209900209933%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest209893209909%_))))
                      (if (pair? _%$%hd209900209933%_)
                          (let ((_%$%tl209903209940%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%hd209900209933%_)))
                                (_%$%hd209902209938%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%hd209900209933%_))))
                            (if (pair? _%$%hd209902209938%_)
                                (let ((_%$%tl209907209943%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%hd209902209938%_))))
                                  (if (null? _%$%tl209907209943%_)
                                      (if (pair? _%$%tl209903209940%_)
                                          (let ((_%$%tl209905209946%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl209903209940%_))))
                                            (if (null? _%$%tl209905209946%_)
                                                (let ((_%rest209949%_
                                                       _%$%tl209901209935%_))
                                                  (_%lp209890%_
                                                   _%rest209949%_))
                                                (_%$%else209896209917%_)))
                                          (_%$%else209896209917%_))
                                      (_%$%else209896209917%_)))
                                (_%$%else209896209917%_)))
                          (_%$%else209896209917%_)))
                    (_%$%try-match209895209925%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self209800%_
               _%form209801%_
               _%hd209802%_
               _%body209803%_
               _%compiled-body?209804%_)
        (letrec ((_%generate1209806%_
                  (lambda (_%bind209845%_)
                    (let* ((_%$%bind209846209857%_ _%bind209845%_)
                           (_%$%E209848209860%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%$%bind209846209857%_
                                       '([[id] expr])))
                              '#!void))
                           (_%$%K209849209866%_
                            (lambda (_%expr209863%_ _%id209864%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id209864%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self209800%_
                                             _%expr209863%_))
                                          '())))))
                      (if (pair? _%$%bind209846209857%_)
                          (let ((_%$%hd209850209869%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%bind209846209857%_)))
                                (_%$%tl209851209871%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%bind209846209857%_))))
                            (if (pair? _%$%hd209850209869%_)
                                (let ((_%$%hd209854209874%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%hd209850209869%_)))
                                      (_%$%tl209855209876%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%hd209850209869%_))))
                                  (let ((_%id209879%_ _%$%hd209854209874%_))
                                    (if (null? _%$%tl209855209876%_)
                                        (if (pair? _%$%tl209851209871%_)
                                            (let ((_%$%hd209852209881%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%tl209851209871%_)))
                                                  (_%$%tl209853209883%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%tl209851209871%_))))
                                              (let ((_%expr209886%_
                                                     _%$%hd209852209881%_))
                                                (if (null? _%$%tl209853209883%_)
                                                    (_%$%K209849209866%_
                                                     _%expr209886%_
                                                     _%id209879%_)
                                                    (_%$%E209848209860%_))))
                                            (_%$%E209848209860%_))
                                        (_%$%E209848209860%_))))
                                (_%$%E209848209860%_)))
                          (_%$%E209848209860%_))))))
          (let* ((_%bind209808%_ (map _%generate1209806%_ _%hd209802%_))
                 (_%body209810%_
                  (if _%compiled-body?209804%_
                      _%body209803%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self209800%_ _%body209803%_))))
                 (_%body209842%_
                  (let* ((_%$%body209811209819%_ _%body209810%_)
                         (_%$%else209813209827%_
                          (lambda () (cons _%body209810%_ '())))
                         (_%$%K209815209832%_
                          (lambda (_%exprs209830%_) _%exprs209830%_)))
                    (if (pair? _%$%body209811209819%_)
                        (let ((_%$%hd209816209835%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%body209811209819%_)))
                              (_%$%tl209817209837%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%body209811209819%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%$%hd209816209835%_ 'begin))
                              (let ((_%exprs209840%_ _%$%tl209817209837%_))
                                (_%$%K209815209832%_ _%exprs209840%_))
                              (_%$%else209813209827%_)))
                        (_%$%else209813209827%_)))))
            (cons _%form209801%_ (cons _%bind209808%_ _%body209842%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self209700%_ _%stx209701%_)
        (letrec ((_%generate1209703%_
                  (lambda (_%datum209755%_)
                    (if (or (null? _%datum209755%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum209755%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum209755%_))
                            (eof-object? _%datum209755%_))
                        _%datum209755%_
                        (if (uninterned-symbol? _%datum209755%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum209755%_
                               '#t))
                            (if (pair? _%datum209755%_)
                                (cons (_%generate1209703%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum209755%_)))
                                      (_%generate1209703%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum209755%_))))
                                (if (box? _%datum209755%_)
                                    (box (_%generate1209703%_
                                          (unbox _%datum209755%_)))
                                    (if (vector? _%datum209755%_)
                                        (vector-map
                                         _%generate1209703%_
                                         _%datum209755%_)
                                        (if (or (s8vector? _%datum209755%_)
                                                (u8vector? _%datum209755%_)
                                                (s16vector? _%datum209755%_)
                                                (u16vector? _%datum209755%_)
                                                (s32vector? _%datum209755%_)
                                                (u32vector? _%datum209755%_)
                                                (s64vector? _%datum209755%_)
                                                (u64vector? _%datum209755%_)
                                                (f32vector? _%datum209755%_)
                                                (f64vector? _%datum209755%_))
                                            _%datum209755%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx209701%_)))))))))))
          (let* ((_%$%g209705209718%_
                  (lambda (_%$%g209706209715%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g209706209715%_))))
                 (_%$%g209704209752%_
                  (lambda (_%$%g209706209721%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g209706209721%_))
                        (let ((_%$%e209708209723%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g209706209721%_))))
                          (let ((_%$%hd209709209726%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e209708209723%_)))
                                (_%$%tl209710209728%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e209708209723%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl209710209728%_))
                                (let ((_%$%e209711209731%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl209710209728%_))))
                                  (let ((_%$%hd209712209734%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e209711209731%_)))
                                        (_%$%tl209713209736%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e209711209731%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl209713209736%_))
                                        (cons 'quote
                                              (cons (_%generate1209703%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd209712209734%_)))
                                                    '()))
                                        (_%$%g209705209718%_
                                         _%$%g209706209721%_))))
                                (_%$%g209705209718%_ _%$%g209706209721%_))))
                        (_%$%g209705209718%_ _%$%g209706209721%_)))))
            (_%$%g209704209752%_ _%stx209701%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self209147%_ _%stx209148%_)
        (letrec ((_%compile-call209150%_
                  (lambda (_%rator209437%_ _%rands209438%_)
                    (let ((_%rator209444%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self209147%_
                              _%rator209437%_)))
                          (_%rands209445%_
                           (map (lambda (_%$%g209439209441%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self209147%_
                                     _%$%g209439209441%_)))
                                _%rands209438%_)))
                      (let* ((_%__stx215164215165%_ _%rator209444%_)
                             (_%$%g209448209500%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx215164215165%_)))))
                        (let ((_%__kont215166215167%_
                               (lambda (_%$%g209450209620%_
                                        _%$%g209451209621%_
                                        _%$%g209452209622%_
                                        _%$%g209453209623%_)
                                 (if (let ((__tmp215834
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands209445%_)))
                                           (__tmp215832
                                            (length (let ((__tmp215833
                                                           (lambda (_%$%g209659209662%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g209660209664%_)
                     (cons _%$%g209659209662%_ _%$%g209660209664%_))))
              (declare (not safe))
              (foldr__0 __tmp215833 '() _%$%g209452209622%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp215834 __tmp215832))
                                     (let* ((_%id209667%_ _%$%g209453209623%_)
                                            (_%args209676%_
                                             (let ((__tmp215835
                                                    (lambda (_%$%g209668209671%_
                                                             _%$%g209669209673%_)
                                                      (cons _%$%g209668209671%_
                                                            _%$%g209669209673%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp215835
                                                '()
                                                _%$%g209452209622%_)))
                                            (_%body209685%_
                                             (let ((__tmp215836
                                                    (lambda (_%$%g209677209680%_
                                                             _%$%g209678209682%_)
                                                      (cons _%$%g209677209680%_
                                                            _%$%g209678209682%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp215836
                                                '()
                                                _%$%g209451209621%_)))
                                            (_%init209687%_
                                             (map list
                                                  _%args209676%_
                                                  _%rands209445%_)))
                                       (cons 'let
                                             (cons _%id209667%_
                                                   (cons _%init209687%_
                                                         _%body209685%_))))
                                     (let ((__tmp215837
                                            (let ((__tmp215838
                                                   (lambda (_%$%g209689209692%_
                                                            _%$%g209690209694%_)
                                                     (cons _%$%g209689209692%_
                                                           _%$%g209690209694%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp215838
                                               '()
                                               _%$%g209452209622%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx209148%_
                                        __tmp215837
                                        _%rands209445%_)))))
                              (_%__kont215172215173%_
                               (lambda ()
                                 (cons _%rator209444%_ _%rands209445%_))))
                          (let ((_%__match215231215232%_
                                 (lambda (_%$%e209454209512%_
                                          _%$%hd209455209515%_
                                          _%$%tl209456209517%_
                                          _%$%e209457209520%_
                                          _%$%hd209458209523%_
                                          _%$%tl209459209525%_
                                          _%$%e209460209528%_
                                          _%$%hd209461209531%_
                                          _%$%tl209462209533%_
                                          _%$%e209463209536%_
                                          _%$%hd209464209539%_
                                          _%$%tl209465209541%_
                                          _%$%e209466209544%_
                                          _%$%hd209467209547%_
                                          _%$%tl209468209549%_
                                          _%$%e209469209552%_
                                          _%$%hd209470209555%_
                                          _%$%tl209471209557%_
                                          _%$%e209472209560%_
                                          _%$%hd209473209563%_
                                          _%$%tl209474209565%_
                                          _%__splice215168215169%_
                                          _%$%target209475209568%_
                                          _%$%tl209477209570%_)
                                   (letrec ((_%$%loop209478209573%_
                                             (lambda (_%$%hd209476209576%_
                                                      _%$%arg209482209578%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%hd209476209576%_))
                                                   (let ((_%$%e209479209580%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%hd209476209576%_))))
                                                     (let ((_%$%lp-tl209481209585%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e209479209580%_)))
                                                           (_%$%lp-hd209480209583%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e209479209580%_))))
                                                       (_%$%loop209478209573%_
                                                        _%$%lp-tl209481209585%_
                                                        (cons _%$%lp-hd209480209583%_
                                                              _%$%arg209482209578%_))))
                                                   (let ((_%$%arg209483209588%_
                                                          (reverse _%$%arg209482209578%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%$%tl209474209565%_))
                                                         (let ((_%__splice215170215171%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%$%tl209474209565%_
                           '0))))
                   (let ((_%$%tl209486209592%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice215170215171%_ '1)))
                         (_%$%target209484209590%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice215170215171%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl209486209592%_))
                         (letrec ((_%$%loop209487209595%_
                                   (lambda (_%$%hd209485209598%_
                                            _%$%body209491209600%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%hd209485209598%_))
                                         (let ((_%$%e209488209602%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%hd209485209598%_))))
                                           (let ((_%$%lp-tl209490209607%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e209488209602%_)))
                                                 (_%$%lp-hd209489209605%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e209488209602%_))))
                                             (_%$%loop209487209595%_
                                              _%$%lp-tl209490209607%_
                                              (cons _%$%lp-hd209489209605%_
                                                    _%$%body209491209600%_))))
                                         (let ((_%$%body209492209610%_
                                                (reverse _%$%body209491209600%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%$%tl209468209549%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl209462209533%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl209459209525%_))
                                                       (let ((_%$%e209493209612%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl209459209525%_))))
                 (let ((_%$%tl209495209617%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e209493209612%_)))
                       (_%$%hd209494209615%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e209493209612%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl209495209617%_))
                       (let ((_%$%g209450209620%_ _%$%hd209494209615%_)
                             (_%$%g209451209621%_ _%$%body209492209610%_)
                             (_%$%g209452209622%_ _%$%arg209483209588%_)
                             (_%$%g209453209623%_ _%$%hd209464209539%_))
                         (if (eq? _%$%g209453209623%_ _%$%g209450209620%_)
                             (_%__kont215166215167%_
                              _%$%g209450209620%_
                              _%$%g209451209621%_
                              _%$%g209452209622%_
                              _%$%g209453209623%_)
                             (_%__kont215172215173%_)))
                       (_%__kont215172215173%_))))
               (_%__kont215172215173%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont215172215173%_))
                                               (_%__kont215172215173%_)))))))
                           (_%$%loop209487209595%_
                            _%$%target209484209590%_
                            '()))
                         (_%__kont215172215173%_))))
                 (_%__kont215172215173%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%$%loop209478209573%_
                                      _%$%target209475209568%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx215164215165%_))
                                (let ((_%$%e209454209512%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx215164215165%_))))
                                  (let ((_%$%tl209456209517%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e209454209512%_)))
                                        (_%$%hd209455209515%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e209454209512%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd209455209515%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%$%hd209455209515%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl209456209517%_))
                                                (let ((_%$%e209457209520%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl209456209517%_))))
                                                  (let ((_%$%tl209459209525%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e209457209520%_)))
                                                        (_%$%hd209458209523%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e209457209520%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd209458209523%_))
                                                        (let ((_%$%e209460209528%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd209458209523%_))))
                  (let ((_%$%tl209462209533%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e209460209528%_)))
                        (_%$%hd209461209531%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e209460209528%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd209461209531%_))
                        (let ((_%$%e209463209536%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd209461209531%_))))
                          (let ((_%$%tl209465209541%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e209463209536%_)))
                                (_%$%hd209464209539%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e209463209536%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl209465209541%_))
                                (let ((_%$%e209466209544%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl209465209541%_))))
                                  (let ((_%$%tl209468209549%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e209466209544%_)))
                                        (_%$%hd209467209547%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e209466209544%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd209467209547%_))
                                        (let ((_%$%e209469209552%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd209467209547%_))))
                                          (let ((_%$%tl209471209557%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e209469209552%_)))
                                                (_%$%hd209470209555%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e209469209552%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd209470209555%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%$%hd209470209555%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl209471209557%_))
                                                        (let ((_%$%e209472209560%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl209471209557%_))))
                  (let ((_%$%tl209474209565%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e209472209560%_)))
                        (_%$%hd209473209563%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e209472209560%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%$%hd209473209563%_))
                        (let ((_%__splice215168215169%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%$%hd209473209563%_
                                  '0))))
                          (let ((_%$%tl209477209570%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice215168215169%_ '1)))
                                (_%$%target209475209568%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice215168215169%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl209477209570%_))
                                (_%__match215231215232%_
                                 _%$%e209454209512%_
                                 _%$%hd209455209515%_
                                 _%$%tl209456209517%_
                                 _%$%e209457209520%_
                                 _%$%hd209458209523%_
                                 _%$%tl209459209525%_
                                 _%$%e209460209528%_
                                 _%$%hd209461209531%_
                                 _%$%tl209462209533%_
                                 _%$%e209463209536%_
                                 _%$%hd209464209539%_
                                 _%$%tl209465209541%_
                                 _%$%e209466209544%_
                                 _%$%hd209467209547%_
                                 _%$%tl209468209549%_
                                 _%$%e209469209552%_
                                 _%$%hd209470209555%_
                                 _%$%tl209471209557%_
                                 _%$%e209472209560%_
                                 _%$%hd209473209563%_
                                 _%$%tl209474209565%_
                                 _%__splice215168215169%_
                                 _%$%target209475209568%_
                                 _%$%tl209477209570%_)
                                (_%__kont215172215173%_))))
                        (_%__kont215172215173%_))))
                (_%__kont215172215173%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont215172215173%_))
                                                (_%__kont215172215173%_))))
                                        (_%__kont215172215173%_))))
                                (_%__kont215172215173%_))))
                        (_%__kont215172215173%_))))
                (_%__kont215172215173%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont215172215173%_))
                                            (_%__kont215172215173%_))
                                        (_%__kont215172215173%_))))
                                (_%__kont215172215173%_)))))))))
          (let* ((_%$%g209152209175%_
                  (lambda (_%$%g209153209172%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g209153209172%_))))
                 (_%$%g209151209434%_
                  (lambda (_%$%g209153209178%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g209153209178%_))
                        (let ((_%$%e209156209180%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g209153209178%_))))
                          (let ((_%$%hd209157209183%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e209156209180%_)))
                                (_%$%tl209158209185%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e209156209180%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl209158209185%_))
                                (let ((_%$%e209159209188%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl209158209185%_))))
                                  (let ((_%$%hd209160209191%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e209159209188%_)))
                                        (_%$%tl209161209193%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e209159209188%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%tl209161209193%_))
                                        (let ((_g215839_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%$%tl209161209193%_
                                                  '0))))
                                          (begin
                                            (let ((_g215840_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g215839_)
                                                         (##values-length
                                                          _g215839_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g215840_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g215840_)))
                                            (let ((_%$%target209162209196%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g215839_
                                                      0)))
                                                  (_%$%tl209164209198%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g215839_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl209164209198%_))
                                                  (letrec ((_%$%loop209165209201%_
                                                            (lambda (_%$%hd209163209204%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%rand209169209206%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd209163209204%_))
                          (let ((_%$%e209166209208%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd209163209204%_))))
                            (let ((_%$%lp-hd209167209211%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e209166209208%_)))
                                  (_%$%lp-tl209168209213%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e209166209208%_))))
                              (_%$%loop209165209201%_
                               _%$%lp-tl209168209213%_
                               (cons _%$%lp-hd209167209211%_
                                     _%$%rand209169209206%_))))
                          (let ((_%$%rand209170209216%_
                                 (reverse _%$%rand209169209206%_)))
                            (if (gxc#current-compile-decls-unsafe?)
                                (_%compile-call209150%_
                                 _%$%hd209160209191%_
                                 (let ((__tmp215841
                                        (lambda (_%$%g209236209239%_
                                                 _%$%g209237209241%_)
                                          (cons _%$%g209236209239%_
                                                _%$%g209237209241%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp215841
                                    '()
                                    _%$%rand209170209216%_)))
                                (let* ((_%__stx215280215281%_
                                        _%$%hd209160209191%_)
                                       (_%$%g209245209257%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx215280215281%_)))))
                                  (let ((_%__kont215282215283%_
                                         (lambda ()
                                           (let ((_%f209294%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self209147%_
                                                     _%$%hd209160209191%_))))
                                             (if (and (let ((__tmp215842
                                                             (symbol->string
                                                              _%f209294%_)))
                                                        (declare (not safe))
                                                        (##string-prefix?
                                                         '"##"
                                                         __tmp215842))
                                                      (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##memq _%f209294%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let _%lp209296%_ ((_%rest209299%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (reverse (let ((__tmp215844
                                             (lambda (_%$%g209416209419%_
                                                      _%$%g209417209421%_)
                                               (cons _%$%g209416209419%_
                                                     _%$%g209417209421%_))))
                                        (declare (not safe))
                                        (foldr__0
                                         __tmp215844
                                         '()
                                         _%$%rand209170209216%_))))
                            (_%bind209301%_ '())
                            (_%args209302%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%$%rest209303209311%_
                                                           _%rest209299%_)
                                                          (_%$%else209305209319%_
                                                           (lambda ()
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%bind209301%_
                                 (cons '(declare (not safe))
                                       (cons (cons _%f209294%_ _%args209302%_)
                                             '()))))))
                  (_%$%K209307209405%_
                   (lambda (_%rest209322%_ _%e209323%_)
                     (let* ((_%__stx215234215235%_ _%e209323%_)
                            (_%$%g209328209346%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%__stx215234215235%_)))))
                       (let ((_%__kont215236215237%_
                              (lambda ()
                                (_%lp209296%_
                                 _%rest209322%_
                                 _%bind209301%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _%e209323%_))
                                       _%args209302%_))))
                             (_%__kont215238215239%_
                              (lambda ()
                                (_%lp209296%_
                                 _%rest209322%_
                                 _%bind209301%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _%e209323%_))
                                       _%args209302%_))))
                             (_%__kont215240215241%_
                              (lambda ()
                                (let ((_%tmp209353%_
                                       (let ((__tmp215843
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__tmp))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp215843))))
                                  (_%lp209296%_
                                   _%rest209322%_
                                   (cons (cons _%tmp209353%_
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _%e209323%_))
                                                     '()))
                                         _%bind209301%_)
                                   (cons _%tmp209353%_ _%args209302%_))))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%__stx215234215235%_))
                             (let ((_%$%e209330209384%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%__stx215234215235%_))))
                               (let ((_%$%tl209332209389%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e209330209384%_)))
                                     (_%$%hd209331209387%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e209330209384%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#identifier? _%$%hd209331209387%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-eq?
                                            '%#ref
                                            _%$%hd209331209387%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%tl209332209389%_))
                                             (let ((_%$%e209333209392%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%tl209332209389%_))))
                                               (let ((_%$%tl209335209397%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e209333209392%_)))
                                                     (_%$%hd209334209395%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e209333209392%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%$%tl209335209397%_))
                                                     (_%__kont215236215237%_)
                                                     (_%__kont215240215241%_))))
                                             (_%__kont215240215241%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#quote
                                                _%$%hd209331209387%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%tl209332209389%_))
                                                 (let ((_%$%e209339209369%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%tl209332209389%_))))
                                                   (let ((_%$%tl209341209374%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e209339209369%_)))
                                                         (_%$%hd209340209372%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e209339209369%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%$%tl209341209374%_))
                                                         (_%__kont215238215239%_)
                                                         (_%__kont215240215241%_))))
                                                 (_%__kont215240215241%_))
                                             (_%__kont215240215241%_)))
                                     (_%__kont215240215241%_))))
                             (_%__kont215240215241%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (pair? _%$%rest209303209311%_)
                                                         (let ((_%$%hd209308209408%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%rest209303209311%_)))
                       (_%$%tl209309209410%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%rest209303209311%_))))
                   (let* ((_%e209413%_ _%$%hd209308209408%_)
                          (_%rest209415%_ _%$%tl209309209410%_))
                     (_%$%K209307209405%_ _%rest209415%_ _%e209413%_)))
                 (_%$%else209305209319%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%compile-call209150%_
                                                  _%$%hd209160209191%_
                                                  (let ((__tmp215845
                                                         (lambda (_%$%g209423209426%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g209424209428%_)
                   (cons _%$%g209423209426%_ _%$%g209424209428%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp215845
                                                     '()
                                                     _%$%rand209170209216%_)))))))
                                        (_%__kont215284215285%_
                                         (lambda ()
                                           (_%compile-call209150%_
                                            _%$%hd209160209191%_
                                            (let ((__tmp215846
                                                   (lambda (_%$%g209263209266%_
                                                            _%$%g209264209268%_)
                                                     (cons _%$%g209263209266%_
                                                           _%$%g209264209268%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp215846
                                               '()
                                               _%$%rand209170209216%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx215280215281%_))
                                        (let ((_%$%e209247209276%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx215280215281%_))))
                                          (let ((_%$%tl209249209281%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e209247209276%_)))
                                                (_%$%hd209248209279%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e209247209276%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd209248209279%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%$%hd209248209279%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl209249209281%_))
                                                        (let ((_%$%e209250209284%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl209249209281%_))))
                  (let ((_%$%tl209252209289%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e209250209284%_)))
                        (_%$%hd209251209287%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e209250209284%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl209252209289%_))
                        (_%__kont215282215283%_)
                        (_%__kont215284215285%_))))
                (_%__kont215284215285%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont215284215285%_))
                                                (_%__kont215284215285%_))))
                                        (_%__kont215284215285%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%loop209165209201%_
                                                     _%$%target209162209196%_
                                                     '()))
                                                  (_%$%g209152209175%_
                                                   _%$%g209153209178%_)))))
                                        (_%$%g209152209175%_
                                         _%$%g209153209178%_))))
                                (_%$%g209152209175%_ _%$%g209153209178%_))))
                        (_%$%g209152209175%_ _%$%g209153209178%_)))))
            (_%$%g209151209434%_ _%stx209148%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self208892%_ _%stx208893%_)
        (let* ((_%__stx215352215353%_ _%stx208893%_)
               (_%$%g208896208925%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx215352215353%_)))))
          (let ((_%__kont215354215355%_
                 (lambda (_%$%g208898208991%_ _%$%g208899208992%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self208892%_
                        _%stx208893%_)
                       (let ((_%f209014%_
                              (let ((__tmp215847
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%$%g208899208992%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self208892%_
                                 __tmp215847))))
                         (let _%lp209016%_ ((_%rest209019%_
                                             (reverse (let ((__tmp215849
                                                             (lambda (_%$%g209136209139%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g209137209141%_)
                       (cons _%$%g209136209139%_ _%$%g209137209141%_))))
                (declare (not safe))
                (foldr__0 __tmp215849 '() _%$%g208898208991%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind209021%_ '())
                                            (_%args209022%_ '()))
                           (let* ((_%$%rest209023209031%_ _%rest209019%_)
                                  (_%$%else209025209039%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind209021%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f209014%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args209022%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%$%K209027209125%_
                                   (lambda (_%rest209042%_ _%e209043%_)
                                     (let* ((_%__stx215306215307%_ _%e209043%_)
                                            (_%$%g209048209066%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx215306215307%_)))))
                                       (let ((_%__kont215308215309%_
                                              (lambda ()
                                                (_%lp209016%_
                                                 _%rest209042%_
                                                 _%bind209021%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e209043%_))
                                                       _%args209022%_))))
                                             (_%__kont215310215311%_
                                              (lambda ()
                                                (_%lp209016%_
                                                 _%rest209042%_
                                                 _%bind209021%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e209043%_))
                                                       _%args209022%_))))
                                             (_%__kont215312215313%_
                                              (lambda ()
                                                (let ((_%tmp209073%_
                                                       (let ((__tmp215848
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp215848))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp209016%_
                                                   _%rest209042%_
                                                   (cons (cons _%tmp209073%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e209043%_))
                             '()))
                 _%bind209021%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp209073%_
                                                         _%args209022%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx215306215307%_))
                                             (let ((_%$%e209050209104%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx215306215307%_))))
                                               (let ((_%$%tl209052209109%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e209050209104%_)))
                                                     (_%$%hd209051209107%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e209050209104%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%$%hd209051209107%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%$%hd209051209107%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%tl209052209109%_))
                     (let ((_%$%e209053209112%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl209052209109%_))))
                       (let ((_%$%tl209055209117%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e209053209112%_)))
                             (_%$%hd209054209115%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e209053209112%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl209055209117%_))
                             (_%__kont215308215309%_)
                             (_%__kont215312215313%_))))
                     (_%__kont215312215313%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%$%hd209051209107%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%tl209052209109%_))
                         (let ((_%$%e209059209089%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%tl209052209109%_))))
                           (let ((_%$%tl209061209094%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e209059209089%_)))
                                 (_%$%hd209060209092%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e209059209089%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%$%tl209061209094%_))
                                 (_%__kont215310215311%_)
                                 (_%__kont215312215313%_))))
                         (_%__kont215312215313%_))
                     (_%__kont215312215313%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont215312215313%_))))
                                             (_%__kont215312215313%_)))))))
                             (if (pair? _%$%rest209023209031%_)
                                 (let ((_%$%hd209028209128%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%rest209023209031%_)))
                                       (_%$%tl209029209130%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%rest209023209031%_))))
                                   (let* ((_%e209133%_ _%$%hd209028209128%_)
                                          (_%rest209135%_
                                           _%$%tl209029209130%_))
                                     (_%$%K209027209125%_
                                      _%rest209135%_
                                      _%e209133%_)))
                                 (_%$%else209025209039%_))))))))
                (_%__kont215358215359%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self208892%_ _%stx208893%_))))
            (let ((_%__match215397215398%_
                   (lambda (_%$%e208900208937%_
                            _%$%hd208901208940%_
                            _%$%tl208902208942%_
                            _%$%e208903208945%_
                            _%$%hd208904208948%_
                            _%$%tl208905208950%_
                            _%$%e208906208953%_
                            _%$%hd208907208956%_
                            _%$%tl208908208958%_
                            _%$%e208909208961%_
                            _%$%hd208910208964%_
                            _%$%tl208911208966%_
                            _%__splice215356215357%_
                            _%$%target208912208969%_
                            _%$%tl208914208971%_)
                     (letrec ((_%$%loop208915208974%_
                               (lambda (_%$%hd208913208977%_
                                        _%$%rand208919208979%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd208913208977%_))
                                     (let ((_%$%e208916208981%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd208913208977%_))))
                                       (let ((_%$%lp-tl208918208986%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e208916208981%_)))
                                             (_%$%lp-hd208917208984%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e208916208981%_))))
                                         (_%$%loop208915208974%_
                                          _%$%lp-tl208918208986%_
                                          (cons _%$%lp-hd208917208984%_
                                                _%$%rand208919208979%_))))
                                     (let ((_%$%rand208920208989%_
                                            (reverse _%$%rand208919208979%_)))
                                       (_%__kont215354215355%_
                                        _%$%rand208920208989%_
                                        _%$%hd208910208964%_))))))
                       (_%$%loop208915208974%_
                        _%$%target208912208969%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx215352215353%_))
                  (let ((_%$%e208900208937%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx215352215353%_))))
                    (let ((_%$%tl208902208942%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e208900208937%_)))
                          (_%$%hd208901208940%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e208900208937%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl208902208942%_))
                          (let ((_%$%e208903208945%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl208902208942%_))))
                            (let ((_%$%tl208905208950%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e208903208945%_)))
                                  (_%$%hd208904208948%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e208903208945%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd208904208948%_))
                                  (let ((_%$%e208906208953%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd208904208948%_))))
                                    (let ((_%$%tl208908208958%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e208906208953%_)))
                                          (_%$%hd208907208956%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e208906208953%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd208907208956%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd208907208956%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl208908208958%_))
                                                  (let ((_%$%e208909208961%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl208908208958%_))))
                                                    (let ((_%$%tl208911208966%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e208909208961%_)))
                                                          (_%$%hd208910208964%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e208909208961%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl208911208966%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%$%tl208905208950%_))
                      (let ((_%__splice215356215357%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl208905208950%_
                                '0))))
                        (let ((_%$%tl208914208971%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice215356215357%_ '1)))
                              (_%$%target208912208969%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice215356215357%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl208914208971%_))
                              (_%__match215397215398%_
                               _%$%e208900208937%_
                               _%$%hd208901208940%_
                               _%$%tl208902208942%_
                               _%$%e208903208945%_
                               _%$%hd208904208948%_
                               _%$%tl208905208950%_
                               _%$%e208906208953%_
                               _%$%hd208907208956%_
                               _%$%tl208908208958%_
                               _%$%e208909208961%_
                               _%$%hd208910208964%_
                               _%$%tl208911208966%_
                               _%__splice215356215357%_
                               _%$%target208912208969%_
                               _%$%tl208914208971%_)
                              (_%__kont215358215359%_))))
                      (_%__kont215358215359%_))
                  (_%__kont215358215359%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont215358215359%_))
                                              (_%__kont215358215359%_))
                                          (_%__kont215358215359%_))))
                                  (_%__kont215358215359%_))))
                          (_%__kont215358215359%_))))
                  (_%__kont215358215359%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self208704%_ _%stx208705%_)
        (letrec ((_%simplify208707%_
                  (lambda (_%code208792%_)
                    (let* ((_%$%code208793208811%_ _%code208792%_)
                           (_%$%else208795208819%_ (lambda () _%code208792%_))
                           (_%$%K208797208855%_
                            (lambda (_%expr208822%_ _%test208823%_)
                              (let* ((_%$%expr208824208832%_ _%expr208822%_)
                                     (_%$%else208826208840%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test208823%_
                                                    (cons _%expr208822%_
                                                          '())))))
                                     (_%$%K208828208845%_
                                      (lambda (_%exprs208843%_)
                                        (cons 'and
                                              (cons _%test208823%_
                                                    _%exprs208843%_)))))
                                (if (pair? _%$%expr208824208832%_)
                                    (let ((_%$%hd208829208848%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%expr208824208832%_)))
                                          (_%$%tl208830208850%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%expr208824208832%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%$%hd208829208848%_ 'and))
                                          (let ((_%exprs208853%_
                                                 _%$%tl208830208850%_))
                                            (_%$%K208828208845%_
                                             _%exprs208853%_))
                                          (_%$%else208826208840%_)))
                                    (_%$%else208826208840%_))))))
                      (if (pair? _%$%code208793208811%_)
                          (let ((_%$%hd208798208858%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%code208793208811%_)))
                                (_%$%tl208799208860%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%code208793208811%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%$%hd208798208858%_ 'if))
                                (if (pair? _%$%tl208799208860%_)
                                    (let ((_%$%hd208800208863%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%tl208799208860%_)))
                                          (_%$%tl208801208865%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%tl208799208860%_))))
                                      (let ((_%test208868%_
                                             _%$%hd208800208863%_))
                                        (if (pair? _%$%tl208801208865%_)
                                            (let ((_%$%hd208802208870%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%tl208801208865%_)))
                                                  (_%$%tl208803208872%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%tl208801208865%_))))
                                              (let ((_%expr208875%_
                                                     _%$%hd208802208870%_))
                                                (if (pair? _%$%tl208803208872%_)
                                                    (let ((_%$%hd208804208877%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%tl208803208872%_)))
                                                          (_%$%tl208805208879%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%tl208803208872%_))))
                                                      (if (pair? _%$%hd208804208877%_)
                                                          (let ((_%$%hd208806208882%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%hd208804208877%_)))
                        (_%$%tl208807208884%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%hd208804208877%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%$%hd208806208882%_ 'quote))
                        (if (pair? _%$%tl208807208884%_)
                            (let ((_%$%hd208808208887%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%tl208807208884%_)))
                                  (_%$%tl208809208889%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%tl208807208884%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%$%hd208808208887%_ '#f))
                                  (if (null? _%$%tl208809208889%_)
                                      (if (null? _%$%tl208805208879%_)
                                          (_%$%K208797208855%_
                                           _%expr208875%_
                                           _%test208868%_)
                                          (_%$%else208795208819%_))
                                      (_%$%else208795208819%_))
                                  (_%$%else208795208819%_)))
                            (_%$%else208795208819%_))
                        (_%$%else208795208819%_)))
                  (_%$%else208795208819%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%else208795208819%_))))
                                            (_%$%else208795208819%_))))
                                    (_%$%else208795208819%_))
                                (_%$%else208795208819%_)))
                          (_%$%else208795208819%_))))))
          (let* ((_%$%g208709208730%_
                  (lambda (_%$%g208710208727%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g208710208727%_))))
                 (_%$%g208708208789%_
                  (lambda (_%$%g208710208733%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g208710208733%_))
                        (let ((_%$%e208714208735%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g208710208733%_))))
                          (let ((_%$%hd208715208738%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e208714208735%_)))
                                (_%$%tl208716208740%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e208714208735%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl208716208740%_))
                                (let ((_%$%e208717208743%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl208716208740%_))))
                                  (let ((_%$%hd208718208746%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e208717208743%_)))
                                        (_%$%tl208719208748%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e208717208743%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl208719208748%_))
                                        (let ((_%$%e208720208751%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl208719208748%_))))
                                          (let ((_%$%hd208721208754%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e208720208751%_)))
                                                (_%$%tl208722208756%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e208720208751%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl208722208756%_))
                                                (let ((_%$%e208723208759%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl208722208756%_))))
                                                  (let ((_%$%hd208724208762%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e208723208759%_)))
                                                        (_%$%tl208725208764%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e208723208759%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl208725208764%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#current-compile-boolean-context))
                                                            (_%simplify208707%_
                                                             (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self208704%_
                                    _%$%hd208718208746%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self208704%_
                                          _%$%hd208721208754%_))
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self208704%_
                                                _%$%hd208724208762%_))
                                             '())))))
                    (cons 'if
                          (cons (let ((__tmp215850
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self208704%_
                                            _%$%hd208718208746%_)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp215850
                                   gxc#current-compile-boolean-context
                                   '#t))
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self208704%_
                                         _%$%hd208721208754%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self208704%_
                                               _%$%hd208724208762%_))
                                            '())))))
                (_%$%g208709208730%_ _%$%g208710208733%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g208709208730%_
                                                 _%$%g208710208733%_))))
                                        (_%$%g208709208730%_
                                         _%$%g208710208733%_))))
                                (_%$%g208709208730%_ _%$%g208710208733%_))))
                        (_%$%g208709208730%_ _%$%g208710208733%_)))))
            (_%$%g208708208789%_ _%stx208705%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self208652%_ _%stx208653%_)
        (let* ((_%$%g208655208668%_
                (lambda (_%$%g208656208665%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g208656208665%_))))
               (_%$%g208654208701%_
                (lambda (_%$%g208656208671%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g208656208671%_))
                      (let ((_%$%e208658208673%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g208656208671%_))))
                        (let ((_%$%hd208659208676%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e208658208673%_)))
                              (_%$%tl208660208678%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e208658208673%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl208660208678%_))
                              (let ((_%$%e208661208681%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl208660208678%_))))
                                (let ((_%$%hd208662208684%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e208661208681%_)))
                                      (_%$%tl208663208686%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e208661208681%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl208663208686%_))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-binding-id
                                         _%$%hd208662208684%_))
                                      (_%$%g208655208668%_
                                       _%$%g208656208671%_))))
                              (_%$%g208655208668%_ _%$%g208656208671%_))))
                      (_%$%g208655208668%_ _%$%g208656208671%_)))))
          (_%$%g208654208701%_ _%stx208653%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self208584%_ _%stx208585%_)
        (let* ((_%$%g208587208604%_
                (lambda (_%$%g208588208601%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g208588208601%_))))
               (_%$%g208586208649%_
                (lambda (_%$%g208588208607%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g208588208607%_))
                      (let ((_%$%e208591208609%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g208588208607%_))))
                        (let ((_%$%hd208592208612%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e208591208609%_)))
                              (_%$%tl208593208614%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e208591208609%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl208593208614%_))
                              (let ((_%$%e208594208617%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl208593208614%_))))
                                (let ((_%$%hd208595208620%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e208594208617%_)))
                                      (_%$%tl208596208622%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e208594208617%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl208596208622%_))
                                      (let ((_%$%e208597208625%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl208596208622%_))))
                                        (let ((_%$%hd208598208628%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e208597208625%_)))
                                              (_%$%tl208599208630%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e208597208625%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl208599208630%_))
                                              (cons 'set!
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#generate-runtime-binding-id
                                                             _%$%hd208595208620%_))
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self208584%_
                           _%$%hd208598208628%_))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g208587208604%_
                                               _%$%g208588208607%_))))
                                      (_%$%g208587208604%_
                                       _%$%g208588208607%_))))
                              (_%$%g208587208604%_ _%$%g208588208607%_))))
                      (_%$%g208587208604%_ _%$%g208588208607%_)))))
          (_%$%g208586208649%_ _%stx208585%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self208395%_ _%stx208396%_)
        (let* ((_%$%g208398208415%_
                (lambda (_%$%g208399208412%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g208399208412%_))))
               (_%$%g208397208581%_
                (lambda (_%$%g208399208418%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g208399208418%_))
                      (let ((_%$%e208402208420%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g208399208418%_))))
                        (let ((_%$%hd208403208423%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e208402208420%_)))
                              (_%$%tl208404208425%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e208402208420%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl208404208425%_))
                              (let ((_%$%e208405208428%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl208404208425%_))))
                                (let ((_%$%hd208406208431%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e208405208428%_)))
                                      (_%$%tl208407208433%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e208405208428%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl208407208433%_))
                                      (let ((_%$%e208408208436%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl208407208433%_))))
                                        (let ((_%$%hd208409208439%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e208408208436%_)))
                                              (_%$%tl208410208441%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e208408208436%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl208410208441%_))
                                              (if (gxc#current-compile-decls-unsafe?)
                                                  (cons '##structure-instance-of?
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__1 _%self208395%_ _%$%hd208409208439%_))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self208395%_
                               _%$%hd208406208431%_))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let _%lp208460%_ ((_%rest208463%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$%hd208406208431%_
                                    (cons _%$%hd208409208439%_ '())))
                             (_%bind208465%_ '())
                             (_%args208466%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%$%rest208467208475%_
                                                            _%rest208463%_)
                                                           (_%$%else208469208483%_
                                                            (lambda ()
                                                              (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%bind208465%_
                                  (cons '(declare (not safe))
                                        (cons (cons '##structure-instance-of?
                                                    _%args208466%_)
                                              '()))))))
                   (_%$%K208471208569%_
                    (lambda (_%rest208486%_ _%e208487%_)
                      (let* ((_%__stx215400215401%_ _%e208487%_)
                             (_%$%g208492208510%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx215400215401%_)))))
                        (let ((_%__kont215402215403%_
                               (lambda ()
                                 (_%lp208460%_
                                  _%rest208486%_
                                  _%bind208465%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e208487%_))
                                        _%args208466%_))))
                              (_%__kont215404215405%_
                               (lambda ()
                                 (_%lp208460%_
                                  _%rest208486%_
                                  _%bind208465%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e208487%_))
                                        _%args208466%_))))
                              (_%__kont215406215407%_
                               (lambda ()
                                 (let ((_%tmp208517%_
                                        (let ((__tmp215851
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__tmp))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp215851))))
                                   (_%lp208460%_
                                    _%rest208486%_
                                    (cons (cons _%tmp208517%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__0
                                                         _%e208487%_))
                                                      '()))
                                          _%bind208465%_)
                                    (cons _%tmp208517%_ _%args208466%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx215400215401%_))
                              (let ((_%$%e208494208548%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx215400215401%_))))
                                (let ((_%$%tl208496208553%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e208494208548%_)))
                                      (_%$%hd208495208551%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e208494208548%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd208495208551%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd208495208551%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl208496208553%_))
                                              (let ((_%$%e208497208556%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl208496208553%_))))
                                                (let ((_%$%tl208499208561%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e208497208556%_)))
                                                      (_%$%hd208498208559%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e208497208556%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl208499208561%_))
                                                      (_%__kont215402215403%_)
                                                      (_%__kont215406215407%_))))
                                              (_%__kont215406215407%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%$%hd208495208551%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl208496208553%_))
                                                  (let ((_%$%e208503208533%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl208496208553%_))))
                                                    (let ((_%$%tl208505208538%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e208503208533%_)))
                                                          (_%$%hd208504208536%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e208503208533%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl208505208538%_))
                                                          (_%__kont215404215405%_)
                                                          (_%__kont215406215407%_))))
                                                  (_%__kont215406215407%_))
                                              (_%__kont215406215407%_)))
                                      (_%__kont215406215407%_))))
                              (_%__kont215406215407%_)))))))
              (if (pair? _%$%rest208467208475%_)
                  (let ((_%$%hd208472208572%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest208467208475%_)))
                        (_%$%tl208473208574%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest208467208475%_))))
                    (let* ((_%e208577%_ _%$%hd208472208572%_)
                           (_%rest208579%_ _%$%tl208473208574%_))
                      (_%$%K208471208569%_ _%rest208579%_ _%e208577%_)))
                  (_%$%else208469208483%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g208398208415%_
                                               _%$%g208399208418%_))))
                                      (_%$%g208398208415%_
                                       _%$%g208399208418%_))))
                              (_%$%g208398208415%_ _%$%g208399208418%_))))
                      (_%$%g208398208415%_ _%$%g208399208418%_)))))
          (_%$%g208397208581%_ _%stx208396%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self208206%_ _%stx208207%_)
        (let* ((_%$%g208209208226%_
                (lambda (_%$%g208210208223%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g208210208223%_))))
               (_%$%g208208208392%_
                (lambda (_%$%g208210208229%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g208210208229%_))
                      (let ((_%$%e208213208231%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g208210208229%_))))
                        (let ((_%$%hd208214208234%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e208213208231%_)))
                              (_%$%tl208215208236%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e208213208231%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl208215208236%_))
                              (let ((_%$%e208216208239%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl208215208236%_))))
                                (let ((_%$%hd208217208242%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e208216208239%_)))
                                      (_%$%tl208218208244%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e208216208239%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl208218208244%_))
                                      (let ((_%$%e208219208247%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl208218208244%_))))
                                        (let ((_%$%hd208220208250%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e208219208247%_)))
                                              (_%$%tl208221208252%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e208219208247%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl208221208252%_))
                                              (if (gxc#current-compile-decls-unsafe?)
                                                  (cons '##structure-direct-instance-of?
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__1 _%self208206%_ _%$%hd208220208250%_))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self208206%_
                               _%$%hd208217208242%_))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let _%lp208271%_ ((_%rest208274%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$%hd208217208242%_
                                    (cons _%$%hd208220208250%_ '())))
                             (_%bind208276%_ '())
                             (_%args208277%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%$%rest208278208286%_
                                                            _%rest208274%_)
                                                           (_%$%else208280208294%_
                                                            (lambda ()
                                                              (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%bind208276%_
                                  (cons '(declare (not safe))
                                        (cons (cons '##structure-direct-instance-of?
                                                    _%args208277%_)
                                              '()))))))
                   (_%$%K208282208380%_
                    (lambda (_%rest208297%_ _%e208298%_)
                      (let* ((_%__stx215446215447%_ _%e208298%_)
                             (_%$%g208303208321%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx215446215447%_)))))
                        (let ((_%__kont215448215449%_
                               (lambda ()
                                 (_%lp208271%_
                                  _%rest208297%_
                                  _%bind208276%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e208298%_))
                                        _%args208277%_))))
                              (_%__kont215450215451%_
                               (lambda ()
                                 (_%lp208271%_
                                  _%rest208297%_
                                  _%bind208276%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e208298%_))
                                        _%args208277%_))))
                              (_%__kont215452215453%_
                               (lambda ()
                                 (let ((_%tmp208328%_
                                        (let ((__tmp215852
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__tmp))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp215852))))
                                   (_%lp208271%_
                                    _%rest208297%_
                                    (cons (cons _%tmp208328%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__0
                                                         _%e208298%_))
                                                      '()))
                                          _%bind208276%_)
                                    (cons _%tmp208328%_ _%args208277%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx215446215447%_))
                              (let ((_%$%e208305208359%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx215446215447%_))))
                                (let ((_%$%tl208307208364%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e208305208359%_)))
                                      (_%$%hd208306208362%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e208305208359%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd208306208362%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd208306208362%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl208307208364%_))
                                              (let ((_%$%e208308208367%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl208307208364%_))))
                                                (let ((_%$%tl208310208372%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e208308208367%_)))
                                                      (_%$%hd208309208370%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e208308208367%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl208310208372%_))
                                                      (_%__kont215448215449%_)
                                                      (_%__kont215452215453%_))))
                                              (_%__kont215452215453%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%$%hd208306208362%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl208307208364%_))
                                                  (let ((_%$%e208314208344%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl208307208364%_))))
                                                    (let ((_%$%tl208316208349%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e208314208344%_)))
                                                          (_%$%hd208315208347%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e208314208344%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl208316208349%_))
                                                          (_%__kont215450215451%_)
                                                          (_%__kont215452215453%_))))
                                                  (_%__kont215452215453%_))
                                              (_%__kont215452215453%_)))
                                      (_%__kont215452215453%_))))
                              (_%__kont215452215453%_)))))))
              (if (pair? _%$%rest208278208286%_)
                  (let ((_%$%hd208283208383%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest208278208286%_)))
                        (_%$%tl208284208385%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest208278208286%_))))
                    (let* ((_%e208388%_ _%$%hd208283208383%_)
                           (_%rest208390%_ _%$%tl208284208385%_))
                      (_%$%K208282208380%_ _%rest208390%_ _%e208388%_)))
                  (_%$%else208280208294%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g208209208226%_
                                               _%$%g208210208229%_))))
                                      (_%$%g208209208226%_
                                       _%$%g208210208229%_))))
                              (_%$%g208209208226%_ _%$%g208210208229%_))))
                      (_%$%g208209208226%_ _%$%g208210208229%_)))))
          (_%$%g208208208392%_ _%stx208207%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self208122%_ _%stx208123%_)
        (let* ((_%$%g208125208146%_
                (lambda (_%$%g208126208143%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g208126208143%_))))
               (_%$%g208124208203%_
                (lambda (_%$%g208126208149%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g208126208149%_))
                      (let ((_%$%e208130208151%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g208126208149%_))))
                        (let ((_%$%hd208131208154%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e208130208151%_)))
                              (_%$%tl208132208156%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e208130208151%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl208132208156%_))
                              (let ((_%$%e208133208159%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl208132208156%_))))
                                (let ((_%$%hd208134208162%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e208133208159%_)))
                                      (_%$%tl208135208164%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e208133208159%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl208135208164%_))
                                      (let ((_%$%e208136208167%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl208135208164%_))))
                                        (let ((_%$%hd208137208170%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e208136208167%_)))
                                              (_%$%tl208138208172%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e208136208167%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl208138208172%_))
                                              (let ((_%$%e208139208175%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl208138208172%_))))
                                                (let ((_%$%hd208140208178%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e208139208175%_)))
                                                      (_%$%tl208141208180%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e208139208175%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl208141208180%_))
                                                      (cons '##structure-ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#compile-e__1
                             _%self208122%_
                             _%$%hd208140208178%_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _%self208122%_
                                   _%$%hd208137208170%_))
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self208122%_
                                         _%$%hd208134208162%_))
                                      (cons ''#f '())))))
              (_%$%g208125208146%_ _%$%g208126208149%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g208125208146%_
                                               _%$%g208126208149%_))))
                                      (_%$%g208125208146%_
                                       _%$%g208126208149%_))))
                              (_%$%g208125208146%_ _%$%g208126208149%_))))
                      (_%$%g208125208146%_ _%$%g208126208149%_)))))
          (_%$%g208124208203%_ _%stx208123%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self208022%_ _%stx208023%_)
        (let* ((_%$%g208025208050%_
                (lambda (_%$%g208026208047%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g208026208047%_))))
               (_%$%g208024208119%_
                (lambda (_%$%g208026208053%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g208026208053%_))
                      (let ((_%$%e208031208055%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g208026208053%_))))
                        (let ((_%$%hd208032208058%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e208031208055%_)))
                              (_%$%tl208033208060%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e208031208055%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl208033208060%_))
                              (let ((_%$%e208034208063%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl208033208060%_))))
                                (let ((_%$%hd208035208066%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e208034208063%_)))
                                      (_%$%tl208036208068%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e208034208063%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl208036208068%_))
                                      (let ((_%$%e208037208071%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl208036208068%_))))
                                        (let ((_%$%hd208038208074%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e208037208071%_)))
                                              (_%$%tl208039208076%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e208037208071%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl208039208076%_))
                                              (let ((_%$%e208040208079%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl208039208076%_))))
                                                (let ((_%$%hd208041208082%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e208040208079%_)))
                                                      (_%$%tl208042208084%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e208040208079%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl208042208084%_))
                                                      (let ((_%$%e208043208087%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl208042208084%_))))
                (let ((_%$%hd208044208090%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e208043208087%_)))
                      (_%$%tl208045208092%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e208043208087%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl208045208092%_))
                      (cons '##structure-set!
                            (cons (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self208022%_
                                     _%$%hd208041208082%_))
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self208022%_
                                           _%$%hd208044208090%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self208022%_
                                                 _%$%hd208038208074%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self208022%_
                                                       _%$%hd208035208066%_))
                                                    (cons ''#f '()))))))
                      (_%$%g208025208050%_ _%$%g208026208053%_))))
              (_%$%g208025208050%_ _%$%g208026208053%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g208025208050%_
                                               _%$%g208026208053%_))))
                                      (_%$%g208025208050%_
                                       _%$%g208026208053%_))))
                              (_%$%g208025208050%_ _%$%g208026208053%_))))
                      (_%$%g208025208050%_ _%$%g208026208053%_)))))
          (_%$%g208024208119%_ _%stx208023%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self207938%_ _%stx207939%_)
        (let* ((_%$%g207941207962%_
                (lambda (_%$%g207942207959%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g207942207959%_))))
               (_%$%g207940208019%_
                (lambda (_%$%g207942207965%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g207942207965%_))
                      (let ((_%$%e207946207967%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g207942207965%_))))
                        (let ((_%$%hd207947207970%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e207946207967%_)))
                              (_%$%tl207948207972%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e207946207967%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl207948207972%_))
                              (let ((_%$%e207949207975%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl207948207972%_))))
                                (let ((_%$%hd207950207978%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e207949207975%_)))
                                      (_%$%tl207951207980%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e207949207975%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl207951207980%_))
                                      (let ((_%$%e207952207983%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl207951207980%_))))
                                        (let ((_%$%hd207953207986%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e207952207983%_)))
                                              (_%$%tl207954207988%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e207952207983%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl207954207988%_))
                                              (let ((_%$%e207955207991%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl207954207988%_))))
                                                (let ((_%$%hd207956207994%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e207955207991%_)))
                                                      (_%$%tl207957207996%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e207955207991%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl207957207996%_))
                                                      (cons '##direct-structure-ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#compile-e__1
                             _%self207938%_
                             _%$%hd207956207994%_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _%self207938%_
                                   _%$%hd207953207986%_))
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self207938%_
                                         _%$%hd207950207978%_))
                                      (cons ''#f '())))))
              (_%$%g207941207962%_ _%$%g207942207965%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g207941207962%_
                                               _%$%g207942207965%_))))
                                      (_%$%g207941207962%_
                                       _%$%g207942207965%_))))
                              (_%$%g207941207962%_ _%$%g207942207965%_))))
                      (_%$%g207941207962%_ _%$%g207942207965%_)))))
          (_%$%g207940208019%_ _%stx207939%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self207838%_ _%stx207839%_)
        (let* ((_%$%g207841207866%_
                (lambda (_%$%g207842207863%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g207842207863%_))))
               (_%$%g207840207935%_
                (lambda (_%$%g207842207869%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g207842207869%_))
                      (let ((_%$%e207847207871%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g207842207869%_))))
                        (let ((_%$%hd207848207874%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e207847207871%_)))
                              (_%$%tl207849207876%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e207847207871%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl207849207876%_))
                              (let ((_%$%e207850207879%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl207849207876%_))))
                                (let ((_%$%hd207851207882%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e207850207879%_)))
                                      (_%$%tl207852207884%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e207850207879%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl207852207884%_))
                                      (let ((_%$%e207853207887%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl207852207884%_))))
                                        (let ((_%$%hd207854207890%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e207853207887%_)))
                                              (_%$%tl207855207892%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e207853207887%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl207855207892%_))
                                              (let ((_%$%e207856207895%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl207855207892%_))))
                                                (let ((_%$%hd207857207898%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e207856207895%_)))
                                                      (_%$%tl207858207900%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e207856207895%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl207858207900%_))
                                                      (let ((_%$%e207859207903%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl207858207900%_))))
                (let ((_%$%hd207860207906%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e207859207903%_)))
                      (_%$%tl207861207908%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e207859207903%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl207861207908%_))
                      (cons '##direct-structure-set!
                            (cons (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self207838%_
                                     _%$%hd207857207898%_))
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self207838%_
                                           _%$%hd207860207906%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self207838%_
                                                 _%$%hd207854207890%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self207838%_
                                                       _%$%hd207851207882%_))
                                                    (cons ''#f '()))))))
                      (_%$%g207841207866%_ _%$%g207842207869%_))))
              (_%$%g207841207866%_ _%$%g207842207869%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g207841207866%_
                                               _%$%g207842207869%_))))
                                      (_%$%g207841207866%_
                                       _%$%g207842207869%_))))
                              (_%$%g207841207866%_ _%$%g207842207869%_))))
                      (_%$%g207841207866%_ _%$%g207842207869%_)))))
          (_%$%g207840207935%_ _%stx207839%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self207633%_ _%stx207634%_)
        (let* ((_%$%g207636207657%_
                (lambda (_%$%g207637207654%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g207637207654%_))))
               (_%$%g207635207835%_
                (lambda (_%$%g207637207660%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g207637207660%_))
                      (let ((_%$%e207641207662%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g207637207660%_))))
                        (let ((_%$%hd207642207665%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e207641207662%_)))
                              (_%$%tl207643207667%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e207641207662%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl207643207667%_))
                              (let ((_%$%e207644207670%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl207643207667%_))))
                                (let ((_%$%hd207645207673%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e207644207670%_)))
                                      (_%$%tl207646207675%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e207644207670%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl207646207675%_))
                                      (let ((_%$%e207647207678%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl207646207675%_))))
                                        (let ((_%$%hd207648207681%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e207647207678%_)))
                                              (_%$%tl207649207683%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e207647207678%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl207649207683%_))
                                              (let ((_%$%e207650207686%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl207649207683%_))))
                                                (let ((_%$%hd207651207689%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e207650207686%_)))
                                                      (_%$%tl207652207691%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e207650207686%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl207652207691%_))
                                                      (if (gxc#current-compile-decls-unsafe?)
                                                          (cons '##unchecked-structure-ref
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self207633%_
                                 _%$%hd207651207689%_))
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self207633%_
                                       _%$%hd207648207681%_))
                                    (cons ''#f (cons ''#f '())))))
                  (let _%lp207714%_ ((_%rest207717%_
                                      (cons _%$%hd207648207681%_
                                            (cons _%$%hd207651207689%_ '())))
                                     (_%bind207719%_ '())
                                     (_%args207720%_ '()))
                    (let* ((_%$%rest207721207729%_ _%rest207717%_)
                           (_%$%else207723207737%_
                            (lambda ()
                              (cons 'let
                                    (cons _%bind207719%_
                                          (cons '(declare (not safe))
                                                (cons (cons '##unchecked-structure-ref
                                                            (let ((__tmp215853
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons ''#f (cons ''#f '()))))
                      (declare (not safe))
                      (##append _%args207720%_ __tmp215853)))
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (_%$%K207725207823%_
                            (lambda (_%rest207740%_ _%e207741%_)
                              (let* ((_%__stx215492215493%_ _%e207741%_)
                                     (_%$%g207746207764%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx215492215493%_)))))
                                (let ((_%__kont215494215495%_
                                       (lambda ()
                                         (_%lp207714%_
                                          _%rest207740%_
                                          _%bind207719%_
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _%e207741%_))
                                                _%args207720%_))))
                                      (_%__kont215496215497%_
                                       (lambda ()
                                         (_%lp207714%_
                                          _%rest207740%_
                                          _%bind207719%_
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _%e207741%_))
                                                _%args207720%_))))
                                      (_%__kont215498215499%_
                                       (lambda ()
                                         (let ((_%tmp207771%_
                                                (let ((__tmp215854
                                                       (let ()
                                                         (declare (not safe))
                                                         (##gensym '__tmp))))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp215854))))
                                           (_%lp207714%_
                                            _%rest207740%_
                                            (cons (cons _%tmp207771%_
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _%e207741%_))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%bind207719%_)
                                            (cons _%tmp207771%_
                                                  _%args207720%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx215492215493%_))
                                      (let ((_%$%e207748207802%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx215492215493%_))))
                                        (let ((_%$%tl207750207807%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e207748207802%_)))
                                              (_%$%hd207749207805%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e207748207802%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%$%hd207749207805%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#ref
                                                     _%$%hd207749207805%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl207750207807%_))
                                                      (let ((_%$%e207751207810%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl207750207807%_))))
                (let ((_%$%tl207753207815%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e207751207810%_)))
                      (_%$%hd207752207813%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e207751207810%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl207753207815%_))
                      (_%__kont215494215495%_)
                      (_%__kont215498215499%_))))
              (_%__kont215498215499%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#quote
                                                         _%$%hd207749207805%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl207750207807%_))
                                                          (let ((_%$%e207757207787%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl207750207807%_))))
                    (let ((_%$%tl207759207792%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e207757207787%_)))
                          (_%$%hd207758207790%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e207757207787%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl207759207792%_))
                          (_%__kont215496215497%_)
                          (_%__kont215498215499%_))))
                  (_%__kont215498215499%_))
              (_%__kont215498215499%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont215498215499%_))))
                                      (_%__kont215498215499%_)))))))
                      (if (pair? _%$%rest207721207729%_)
                          (let ((_%$%hd207726207826%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%rest207721207729%_)))
                                (_%$%tl207727207828%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%rest207721207729%_))))
                            (let* ((_%e207831%_ _%$%hd207726207826%_)
                                   (_%rest207833%_ _%$%tl207727207828%_))
                              (_%$%K207725207823%_
                               _%rest207833%_
                               _%e207831%_)))
                          (_%$%else207723207737%_)))))
              (_%$%g207636207657%_ _%$%g207637207660%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g207636207657%_
                                               _%$%g207637207660%_))))
                                      (_%$%g207636207657%_
                                       _%$%g207637207660%_))))
                              (_%$%g207636207657%_ _%$%g207637207660%_))))
                      (_%$%g207636207657%_ _%$%g207637207660%_)))))
          (_%$%g207635207835%_ _%stx207634%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self207412%_ _%stx207413%_)
        (let* ((_%$%g207415207440%_
                (lambda (_%$%g207416207437%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g207416207437%_))))
               (_%$%g207414207630%_
                (lambda (_%$%g207416207443%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g207416207443%_))
                      (let ((_%$%e207421207445%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g207416207443%_))))
                        (let ((_%$%hd207422207448%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e207421207445%_)))
                              (_%$%tl207423207450%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e207421207445%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl207423207450%_))
                              (let ((_%$%e207424207453%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl207423207450%_))))
                                (let ((_%$%hd207425207456%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e207424207453%_)))
                                      (_%$%tl207426207458%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e207424207453%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl207426207458%_))
                                      (let ((_%$%e207427207461%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl207426207458%_))))
                                        (let ((_%$%hd207428207464%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e207427207461%_)))
                                              (_%$%tl207429207466%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e207427207461%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl207429207466%_))
                                              (let ((_%$%e207430207469%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl207429207466%_))))
                                                (let ((_%$%hd207431207472%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e207430207469%_)))
                                                      (_%$%tl207432207474%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e207430207469%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl207432207474%_))
                                                      (let ((_%$%e207433207477%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl207432207474%_))))
                (let ((_%$%hd207434207480%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e207433207477%_)))
                      (_%$%tl207435207482%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e207433207477%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl207435207482%_))
                      (if (gxc#current-compile-decls-unsafe?)
                          (cons '##unchecked-structure-set!
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self207412%_
                                         _%$%hd207431207472%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self207412%_
                                               _%$%hd207434207480%_))
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self207412%_
                                                     _%$%hd207428207464%_))
                                                  (cons ''#f
                                                        (cons ''#f '()))))))
                          (let _%lp207509%_ ((_%rest207512%_
                                              (cons _%$%hd207428207464%_
                                                    (cons _%$%hd207434207480%_
                                                          (cons _%$%hd207431207472%_
                                                                '()))))
                                             (_%bind207514%_ '())
                                             (_%args207515%_ '()))
                            (let* ((_%$%rest207516207524%_ _%rest207512%_)
                                   (_%$%else207518207532%_
                                    (lambda ()
                                      (cons 'let
                                            (cons _%bind207514%_
                                                  (cons '(declare (not safe))
                                                        (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp215855 (cons ''#f (cons ''#f '()))))
                              (declare (not safe))
                              (##append _%args207515%_ __tmp215855)))
                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%$%K207520207618%_
                                    (lambda (_%rest207535%_ _%e207536%_)
                                      (let* ((_%__stx215538215539%_
                                              _%e207536%_)
                                             (_%$%g207541207559%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%__stx215538215539%_)))))
                                        (let ((_%__kont215540215541%_
                                               (lambda ()
                                                 (_%lp207509%_
                                                  _%rest207535%_
                                                  _%bind207514%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e207536%_))
                                                        _%args207515%_))))
                                              (_%__kont215542215543%_
                                               (lambda ()
                                                 (_%lp207509%_
                                                  _%rest207535%_
                                                  _%bind207514%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e207536%_))
                                                        _%args207515%_))))
                                              (_%__kont215544215545%_
                                               (lambda ()
                                                 (let ((_%tmp207566%_
                                                        (let ((__tmp215856
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##gensym '__tmp))))
                  (declare (not safe))
                  (make-symbol__0 __tmp215856))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%lp207509%_
                                                    _%rest207535%_
                                                    (cons (cons _%tmp207566%_
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gxc#compile-e__0 _%e207536%_))
                              '()))
                  _%bind207514%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%tmp207566%_
                                                          _%args207515%_))))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%__stx215538215539%_))
                                              (let ((_%$%e207543207597%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%__stx215538215539%_))))
                                                (let ((_%$%tl207545207602%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e207543207597%_)))
                                                      (_%$%hd207544207600%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e207543207597%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%$%hd207544207600%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%$%hd207544207600%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl207545207602%_))
                      (let ((_%$%e207546207605%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl207545207602%_))))
                        (let ((_%$%tl207548207610%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e207546207605%_)))
                              (_%$%hd207547207608%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e207546207605%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl207548207610%_))
                              (_%__kont215540215541%_)
                              (_%__kont215544215545%_))))
                      (_%__kont215544215545%_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-eq? '%#quote _%$%hd207544207600%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl207545207602%_))
                          (let ((_%$%e207552207582%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl207545207602%_))))
                            (let ((_%$%tl207554207587%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e207552207582%_)))
                                  (_%$%hd207553207585%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e207552207582%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl207554207587%_))
                                  (_%__kont215542215543%_)
                                  (_%__kont215544215545%_))))
                          (_%__kont215544215545%_))
                      (_%__kont215544215545%_)))
              (_%__kont215544215545%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont215544215545%_)))))))
                              (if (pair? _%$%rest207516207524%_)
                                  (let ((_%$%hd207521207621%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%rest207516207524%_)))
                                        (_%$%tl207522207623%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%rest207516207524%_))))
                                    (let* ((_%e207626%_ _%$%hd207521207621%_)
                                           (_%rest207628%_
                                            _%$%tl207522207623%_))
                                      (_%$%K207520207618%_
                                       _%rest207628%_
                                       _%e207626%_)))
                                  (_%$%else207518207532%_)))))
                      (_%$%g207415207440%_ _%$%g207416207443%_))))
              (_%$%g207415207440%_ _%$%g207416207443%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g207415207440%_
                                               _%$%g207416207443%_))))
                                      (_%$%g207415207440%_
                                       _%$%g207416207443%_))))
                              (_%$%g207415207440%_ _%$%g207416207443%_))))
                      (_%$%g207415207440%_ _%$%g207416207443%_)))))
          (_%$%g207414207630%_ _%stx207413%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self207251%_ _%stx207252%_)
        (letrec ((_%import-set-template207254%_
                  (lambda (_%in207357%_ _%phi207358%_)
                    (let ((_%iphi207360%_
                           (fx+ _%phi207358%_
                                (##direct-structure-ref
                                 _%in207357%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports207361%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in207357%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp207363%_ ((_%rest207365%_ _%imports207361%_)
                                         (_%r207366%_ '()))
                        (let* ((_%$%rest207367207375%_ _%rest207365%_)
                               (_%$%else207369207383%_ (lambda () _%r207366%_))
                               (_%$%K207371207400%_
                                (lambda (_%rest207386%_ _%in207387%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in207387%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi207360%_))
                                          (_%lp207363%_
                                           _%rest207386%_
                                           (cons _%in207387%_ _%r207366%_))
                                          (_%lp207363%_
                                           _%rest207386%_
                                           _%r207366%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in207387%_
                                             'gx#module-import::t))
                                          (let ((_%iphi207391%_
                                                 (fx+ _%phi207358%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in207387%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi207391%_))
                                                (_%lp207363%_
                                                 _%rest207386%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in207387%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r207366%_))
                                                (_%lp207363%_
                                                 _%rest207386%_
                                                 _%r207366%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in207387%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi207394%_
                                                     (fx+ _%iphi207360%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in207387%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi207394%_))
                                                    (_%lp207363%_
                                                     _%rest207386%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in207387%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r207366%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi207394%_))
                                                        (_%lp207363%_
                                                         _%rest207386%_
                                                         (let ((__tmp215857
                                                                (_%import-set-template207254%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in207387%_
                         _%iphi207360%_)))
                   (declare (not safe))
                   (foldl__0 cons _%r207366%_ __tmp215857)))
                (_%lp207363%_ _%rest207386%_ _%r207366%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp207363%_
                                               _%rest207386%_
                                               _%r207366%_)))))))
                          (if (pair? _%$%rest207367207375%_)
                              (let ((_%$%hd207372207403%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest207367207375%_)))
                                    (_%$%tl207373207405%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest207367207375%_))))
                                (let* ((_%in207408%_ _%$%hd207372207403%_)
                                       (_%rest207410%_ _%$%tl207373207405%_))
                                  (_%$%K207371207400%_
                                   _%rest207410%_
                                   _%in207408%_)))
                              (_%$%else207369207383%_))))))))
          (let* ((_%$%g207256207266%_
                  (lambda (_%$%g207257207263%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g207257207263%_))))
                 (_%$%g207255207354%_
                  (lambda (_%$%g207257207269%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g207257207269%_))
                        (let ((_%$%e207259207271%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g207257207269%_))))
                          (let ((_%$%hd207260207274%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e207259207271%_)))
                                (_%$%tl207261207276%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e207259207271%_))))
                            (let ((_%ht207290%_
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq))))
                              (let _%lp207292%_ ((_%rest207294%_
                                                  _%$%tl207261207276%_)
                                                 (_%loads207295%_ '()))
                                (letrec ((_%K207297%_
                                          (lambda (_%ctx207347%_
                                                   _%rest207348%_)
                                            (let ((_%id207350%_
                                                   (##structure-ref
                                                    _%ctx207347%_
                                                    '1
                                                    gx#expander-context::t
                                                    '#f)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__hash-get
                                                     _%ht207290%_
                                                     _%id207350%_))
                                                  (_%lp207292%_
                                                   _%rest207348%_
                                                   _%loads207295%_)
                                                  (let ((_%rt207352%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#module-id->path-string
                                                            _%id207350%_))))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht207290%_
                                                       _%id207350%_
                                                       _%rt207352%_))
                                                    (_%lp207292%_
                                                     _%rest207348%_
                                                     (cons _%rt207352%_
                                                           _%loads207295%_))))))))
                                  (let* ((_%$%rest207298207306%_
                                          _%rest207294%_)
                                         (_%$%else207300207318%_
                                          (lambda ()
                                            (cons 'begin
                                                  (let ((__tmp215859
                                                         (lambda (_%$%g207313207315%_)
                                                           (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g207313207315%_)))
                (__tmp215858 (reverse _%loads207295%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (##map __tmp215859
                                                           __tmp215858)))))
                                         (_%$%K207302207335%_
                                          (lambda (_%rest207321%_ _%in207322%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-instance-of?
                                                   _%in207322%_
                                                   'gx#module-context::t))
                                                (_%K207297%_
                                                 _%in207322%_
                                                 _%rest207321%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##structure-direct-instance-of?
                                                       _%in207322%_
                                                       'gx#module-import::t))
                                                    (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%in207322%_
                            '3
                            '#f
                            '#f)))
                (_%K207297%_
                 (##direct-structure-ref
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%in207322%_ '1 '#f '#f))
                  '1
                  gx#module-export::t
                  '#f)
                 _%rest207321%_)
                (_%lp207292%_ _%rest207321%_ _%loads207295%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           _%in207322%_
                                                           'gx#import-set::t))
                                                        (let ((_%phi207327%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref _%in207322%_ '2 '#f '#f))))
                  (if (fxzero? _%phi207327%_)
                      (_%K207297%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%in207322%_ '1 '#f '#f))
                       _%rest207321%_)
                      (if (fxpositive? _%phi207327%_)
                          (let ((_%deps207331%_
                                 (_%import-set-template207254%_
                                  _%in207322%_
                                  '0)))
                            (_%lp207292%_
                             (let ()
                               (declare (not safe))
                               (foldl__0 cons _%rest207321%_ _%deps207331%_))
                             _%loads207295%_))
                          (_%lp207292%_ _%rest207321%_ _%loads207295%_))))
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"Unexpected import"
                   _%stx207252%_
                   _%in207322%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%$%rest207298207306%_)
                                        (let ((_%$%hd207303207338%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%rest207298207306%_)))
                                              (_%$%tl207304207340%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%rest207298207306%_))))
                                          (let* ((_%in207343%_
                                                  _%$%hd207303207338%_)
                                                 (_%rest207345%_
                                                  _%$%tl207304207340%_))
                                            (_%$%K207302207335%_
                                             _%rest207345%_
                                             _%in207343%_)))
                                        (_%$%else207300207318%_))))))))
                        (_%$%g207256207266%_ _%$%g207257207269%_)))))
            (_%$%g207255207354%_ _%stx207252%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self207065%_ _%stx207066%_)
        (letrec ((_%add-lift!207068%_
                  (lambda (_%expr207249%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr207249%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote207069%_
                  (lambda (_%id207246%_ _%marks207247%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id207246%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks207247%_
                                                        '()))))))))
                 (_%generate-simple207070%_
                  (lambda (_%stxq207241%_)
                    (let ((_%gid207243%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid207244%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%stxq207241%_))))
                      (_%add-lift!207068%_
                       (cons 'define
                             (cons _%gid207243%_
                                   (cons (_%generate-syntax-quote207069%_
                                          _%qid207244%_
                                          ''())
                                         '()))))
                      (let ((__tmp215860
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp215860 _%stxq207241%_ _%gid207243%_))
                      _%gid207243%_)))
                 (_%generate-serialized207071%_
                  (lambda (_%stxq207231%_ _%marks207232%_)
                    (let* ((_%mark-refs207234%_
                            (map _%generate-mark207072%_ _%marks207232%_))
                           (_%gid207236%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid207238%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier
                               _%stxq207231%_))))
                      (_%add-lift!207068%_
                       (cons 'define
                             (cons _%gid207236%_
                                   (cons (_%generate-syntax-quote207069%_
                                          _%qid207238%_
                                          (cons 'list _%mark-refs207234%_))
                                         '()))))
                      (let ((__tmp215861
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp215861 _%stxq207231%_ _%gid207236%_))
                      _%gid207236%_)))
                 (_%generate-mark207072%_
                  (lambda (_%mark207216%_)
                    (let ((_%$e207218%_
                           (let ((__tmp215862
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp215862 _%mark207216%_))))
                      (if _%$e207218%_
                          _%$e207218%_
                          (let* ((_%gid207222%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr207224%_
                                  (_%serialize-mark207073%_ _%mark207216%_))
                                 (_%ctx207226%_
                                  (let ((__tmp215863
                                         (##structure-ref
                                          _%mark207216%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp215863)))
                                 (_%ctx-ref207228%_
                                  (if (eq? _%ctx207226%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref207074%_
                                                               _%ctx207226%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp215864
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp215864
                               _%mark207216%_
                               _%gid207222%_))
                            (_%add-lift!207068%_
                             (cons 'define
                                   (cons _%gid207222%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr207224%_ '()))
                   (cons _%ctx-ref207228%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid207222%_)))))
                 (_%serialize-mark207073%_
                  (lambda (_%mark207164%_)
                    (letrec ((_%quote-e207166%_
                              (lambda (_%sym207214%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym207214%_))
                                    _%sym207214%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym207214%_))))))
                      (let* ((_%$%mark207167207176%_ _%mark207164%_)
                             (_%$%E207169207179%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%$%mark207167207176%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%$%K207170207191%_
                              (lambda (_%trace207182%_
                                       _%phi207183%_
                                       _%ctx207184%_
                                       _%subst207185%_)
                                (let ((_%subs207187%_
                                       (if _%subst207185%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst207185%_))
                                           '())))
                                  (cons _%phi207183%_
                                        (let ((__tmp215865
                                               (lambda (_%pair207189%_)
                                                 (cons (_%quote-e207166%_
                                                        (car _%pair207189%_))
                                                       (_%quote-e207166%_
                                                        (cdr _%pair207189%_))))))
                                          (declare (not safe))
                                          (##map __tmp215865
                                                 _%subs207187%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%$%mark207167207176%_
                               'gx#expander-mark::t))
                            (let* ((_%$%e207171207194%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%mark207167207176%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst207197%_ _%$%e207171207194%_)
                                   (_%$%e207172207199%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%mark207167207176%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx207202%_ _%$%e207172207199%_)
                                   (_%$%e207173207204%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%mark207167207176%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi207207%_ _%$%e207173207204%_)
                                   (_%$%e207174207209%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%mark207167207176%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace207212%_ _%$%e207174207209%_))
                              (_%$%K207170207191%_
                               _%trace207212%_
                               _%phi207207%_
                               _%ctx207202%_
                               _%subst207197%_))
                            (_%$%E207169207179%_))))))
                 (_%context-ref207074%_
                  (lambda (_%ctx207151%_)
                    (if (let ((__tmp215866
                               (##structure-ref
                                _%ctx207151%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp215866
                           'gx#module-context::t))
                        (let ((_%ctx-ref207153%_
                               (_%context-ref-nested207076%_ _%ctx207151%_))
                              (_%ctx-origin207154%_
                               (_%context-ref-origin207075%_ _%ctx207151%_))
                              (_%origin207155%_
                               (_%context-ref-origin207075%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin207155%_ _%ctx-origin207154%_)
                              (let ((_%ref207157%_
                                     (_%context-ref-nested207076%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp207159%_ ((_%ref207161%_
                                                    (cdr _%ref207157%_))
                                                   (_%ctx-ref207162%_
                                                    (cdr _%ctx-ref207153%_)))
                                  (if (and (pair? _%ref207161%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref207161%_))
                                                (car _%ctx-ref207162%_)))
                                      (_%lp207159%_
                                       (cdr _%ref207161%_)
                                       (cdr _%ctx-ref207162%_))
                                      (cons '#f _%ctx-ref207162%_))))
                              _%ctx-ref207153%_))
                        (let ((__tmp215867
                               (##structure-ref
                                _%ctx207151%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp215867)))))
                 (_%context-ref-origin207075%_
                  (lambda (_%ctx207143%_)
                    (let _%lp207145%_ ((_%ctx207147%_ _%ctx207143%_))
                      (let ((_%super207149%_
                             (##structure-ref
                              _%ctx207147%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super207149%_
                               'gx#module-context::t))
                            (_%lp207145%_ _%super207149%_)
                            _%ctx207147%_)))))
                 (_%context-ref-nested207076%_
                  (lambda (_%ctx207134%_)
                    (let _%lp207136%_ ((_%ctx207138%_ _%ctx207134%_)
                                       (_%r207139%_ '()))
                      (let ((_%super207141%_
                             (##structure-ref
                              _%ctx207138%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super207141%_
                               'gx#module-context::t))
                            (_%lp207136%_
                             _%super207141%_
                             (cons (car (##structure-ref
                                         _%ctx207138%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r207139%_))
                            (cons (let ((__tmp215868
                                         (##structure-ref
                                          _%ctx207138%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp215868))
                                  _%r207139%_)))))))
          (let* ((_%$%g207078207091%_
                  (lambda (_%$%g207079207088%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g207079207088%_))))
                 (_%$%g207077207131%_
                  (lambda (_%$%g207079207094%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g207079207094%_))
                        (let ((_%$%e207081207096%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g207079207094%_))))
                          (let ((_%$%hd207082207099%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e207081207096%_)))
                                (_%$%tl207083207101%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e207081207096%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl207083207101%_))
                                (let ((_%$%e207084207104%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl207083207101%_))))
                                  (let ((_%$%hd207085207107%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e207084207104%_)))
                                        (_%$%tl207086207109%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e207084207104%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl207086207109%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%$%hd207085207107%_))
                                            (let ((_%$e207125%_
                                                   (let ((__tmp215869
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-identifiers))))
                                                     (declare (not safe))
                                                     (hash-get
                                                      __tmp215869
                                                      _%$%hd207085207107%_))))
                                              (if _%$e207125%_
                                                  _%$e207125%_
                                                  (let ((_%marks207129%_
                                                         (##direct-structure-ref
                                                          _%$%hd207085207107%_
                                                          '4
                                                          gx#syntax-quote::t
                                                          '#f)))
                                                    (if (null? _%marks207129%_)
                                                        (_%generate-simple207070%_
                                                         _%$%hd207085207107%_)
                                                        (_%generate-serialized207071%_
                                                         _%$%hd207085207107%_
                                                         _%marks207129%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot quote non-identifier syntax"
                                               _%$%hd207085207107%_)))
                                        (_%$%g207078207091%_
                                         _%$%g207079207094%_))))
                                (_%$%g207078207091%_ _%$%g207079207094%_))))
                        (_%$%g207078207091%_ _%$%g207079207094%_)))))
            (_%$%g207077207131%_ _%stx207066%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self206997%_ _%stx206998%_)
        (let* ((_%$%g207000207017%_
                (lambda (_%$%g207001207014%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g207001207014%_))))
               (_%$%g206999207062%_
                (lambda (_%$%g207001207020%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g207001207020%_))
                      (let ((_%$%e207004207022%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g207001207020%_))))
                        (let ((_%$%hd207005207025%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e207004207022%_)))
                              (_%$%tl207006207027%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e207004207022%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl207006207027%_))
                              (let ((_%$%e207007207030%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl207006207027%_))))
                                (let ((_%$%hd207008207033%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e207007207030%_)))
                                      (_%$%tl207009207035%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e207007207030%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl207009207035%_))
                                      (let ((_%$%e207010207038%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl207009207035%_))))
                                        (let ((_%$%hd207011207041%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e207010207038%_)))
                                              (_%$%tl207012207043%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e207010207038%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl207012207043%_))
                                              (cons 'define
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%hd207008207033%_))
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self206997%_
                           _%$%hd207011207041%_))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g207000207017%_
                                               _%$%g207001207020%_))))
                                      (_%$%g207000207017%_
                                       _%$%g207001207020%_))))
                              (_%$%g207000207017%_ _%$%g207001207020%_))))
                      (_%$%g207000207017%_ _%$%g207001207020%_)))))
          (_%$%g206999207062%_ _%stx206998%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self206946%_ _%stx206947%_)
        (let* ((_%$%g206949206959%_
                (lambda (_%$%g206950206956%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g206950206956%_))))
               (_%$%g206948206994%_
                (lambda (_%$%g206950206962%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g206950206962%_))
                      (let ((_%$%e206952206964%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g206950206962%_))))
                        (let ((_%$%hd206953206967%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e206952206964%_)))
                              (_%$%tl206954206969%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e206952206964%_))))
                          (let* ((_%c-body206986%_
                                  (map (lambda (_%$%g206981206983%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self206946%_
                                            _%$%g206981206983%_)))
                                       _%$%tl206954206969%_))
                                 (_%c-body206991%_
                                  (let ((__tmp215870
                                         (lambda (_%$obj206988%_)
                                           (not (eq? _%$obj206988%_
                                                     '#!void)))))
                                    (declare (not safe))
                                    (##filter __tmp215870 _%c-body206986%_))))
                            (cons '%#begin _%c-body206991%_))))
                      (_%$%g206949206959%_ _%$%g206950206962%_)))))
          (_%$%g206948206994%_ _%stx206947%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self206851%_ _%stx206852%_)
        (let* ((_%$%g206854206864%_
                (lambda (_%$%g206855206861%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g206855206861%_))))
               (_%$%g206853206943%_
                (lambda (_%$%g206855206867%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g206855206867%_))
                      (let ((_%$%e206857206869%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g206855206867%_))))
                        (let ((_%$%hd206858206872%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e206857206869%_)))
                              (_%$%tl206859206874%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e206857206869%_))))
                          (let* ((_%phi206887%_
                                  (let ((__tmp215871
                                         (let ()
                                           (declare (not safe))
                                           (gx#current-expander-phi))))
                                    (declare (not safe))
                                    (##fx+ __tmp215871 '1)))
                                 (_%block206889%_
                                  (gxc#meta-state-begin-phi!
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self206851%_ 'state))
                                   _%phi206887%_))
                                 (_%compiled206892%_
                                  (let ((__tmp215872
                                         (lambda ()
                                           (gxc#apply-generate-meta-phi__%
                                            '#f
                                            (let ()
                                              (declare (not safe))
                                              (slot-ref__0
                                               _%self206851%_
                                               'state))
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     '%#begin))
                                                  _%$%tl206859206874%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp215872
                                     gx#current-expander-phi
                                     _%phi206887%_)))
                                 (_%$%g206895206905%_
                                  (lambda (_%$%g206896206902%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%$%g206896206902%_))))
                                 (_%$%g206894206940%_
                                  (lambda (_%$%g206896206908%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%g206896206908%_))
                                        (let ((_%$%e206898206910%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%g206896206908%_))))
                                          (let ((_%$%hd206899206913%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e206898206910%_)))
                                                (_%$%tl206900206915%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e206898206910%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd206899206913%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#begin
                                                       _%$%hd206899206913%_))
                                                    (let ((_%c-body206935%_
                                                           (filter (lambda (_%$obj206932%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (not (eq? _%$obj206932%_ '#!void)))
                           _%$%tl206900206915%_)))
              (if _%block206889%_
                  (cons '%#begin-syntax
                        (cons (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%block206889%_
                                                            '()))
                                                '())))
                              _%c-body206935%_))
                  (if (null? _%c-body206935%_)
                      '#!void
                      (cons '%#begin-syntax _%c-body206935%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g206895206905%_
                                                     _%$%g206896206908%_))
                                                (_%$%g206895206905%_
                                                 _%$%g206896206908%_))))
                                        (_%$%g206895206905%_
                                         _%$%g206896206908%_)))))
                            (_%$%g206894206940%_ _%compiled206892%_))))
                      (_%$%g206854206864%_ _%$%g206855206867%_)))))
          (_%$%g206853206943%_ _%stx206852%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self206782%_ _%stx206783%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self206782%_ 'state)))
        (let* ((_%$%g206785206799%_
                (lambda (_%$%g206786206796%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g206786206796%_))))
               (_%$%g206784206848%_
                (lambda (_%$%g206786206802%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g206786206802%_))
                      (let ((_%$%e206789206804%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g206786206802%_))))
                        (let ((_%$%hd206790206807%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e206789206804%_)))
                              (_%$%tl206791206809%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e206789206804%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl206791206809%_))
                              (let ((_%$%e206792206812%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl206791206809%_))))
                                (let ((_%$%hd206793206815%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e206792206812%_)))
                                      (_%$%tl206794206817%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e206792206812%_))))
                                  (let ((_%key206834%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-identifier-key
                                            _%$%hd206793206815%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (interned-symbol? _%key206834%_))
                                        '#!void
                                        (let ()
                                          (declare (not safe))
                                          (gxc#raise-compile-error
                                           '"Cannot compile module with uninterned id"
                                           _%stx206783%_
                                           _%$%hd206793206815%_
                                           _%key206834%_)))
                                    (let* ((_%ctx206836%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%$%hd206793206815%_)))
                                           (_%code206839%_
                                            (let ((__tmp215873
                                                   (lambda ()
                                                     (let ((__tmp215874
                                                            (##structure-ref
                                                             _%ctx206836%_
                                                             '11
                                                             gx#module-context::t
                                                             '#f)))
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self206782%_
                                                        __tmp215874)))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp215873
                                               gx#current-expander-context
                                               _%ctx206836%_)))
                                           (_%rt206841%_
                                            (let ((__tmp215875
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#current-compile-runtime-sections))))
                                              (declare (not safe))
                                              (hash-get
                                               __tmp215875
                                               _%ctx206836%_)))
                                           (_%loader206843%_
                                            (if _%rt206841%_
                                                (cons (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'load-module '()))
                          (cons (cons '%#quote (cons _%rt206841%_ '())) '())))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                           (_%modid206845%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd206793206815%_))))
                                      (gxc#meta-state-end-phi!
                                       (let ()
                                         (declare (not safe))
                                         (slot-ref__0 _%self206782%_ 'state)))
                                      (cons '%#module
                                            (cons _%modid206845%_
                                                  (cons _%code206839%_
                                                        _%loader206843%_)))))))
                              (_%$%g206785206799%_ _%$%g206786206802%_))))
                      (_%$%g206785206799%_ _%$%g206786206802%_)))))
          (_%$%g206784206848%_ _%stx206783%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx206769%_ _%context-chain206770%_)
        (let _%lp206772%_ ((_%ctx206774%_ _%ctx206769%_) (_%path206775%_ '()))
          (let ((_%super206777%_
                 (##structure-ref _%ctx206774%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super206777%_ _%context-chain206770%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx206774%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path206775%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super206777%_
                       'gx#module-context::t))
                    (_%lp206772%_
                     _%super206777%_
                     (cons (car (##structure-ref
                                 _%ctx206774%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path206775%_))
                    (cons (let ((__tmp215876
                                 (##structure-ref
                                  _%ctx206774%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp215876))
                          _%path206775%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp206762%_ ((_%ctx206764%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r206765%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx206764%_ 'gx#module-context::t))
              (_%lp206762%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx206764%_ '3 '#f '#f))
               (cons _%ctx206764%_ _%r206765%_))
              _%r206765%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self206527%_ _%stx206528%_)
        (letrec* ((_%context-chain206530%_ (gxc#current-context-chain))
                  (_%make-import-spec206531%_
                   (lambda (_%in206699%_)
                     (let* ((_%$%in206700206712%_ _%in206699%_)
                            (_%$%E206702206715%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%$%in206700206712%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%$%K206703206725%_
                             (lambda (_%phi206718%_
                                      _%name206719%_
                                      _%src-name206720%_
                                      _%src-phi206721%_
                                      _%src-key206722%_
                                      _%src-ctx206723%_)
                               (cons _%phi206718%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%name206719%_))
                                           (cons _%src-phi206721%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-identifier-key
                                                          _%src-name206720%_))
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%$%in206700206712%_
                              'gx#module-import::t))
                           (let ((_%$%e206704206728%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%$%in206700206712%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%$%e206704206728%_
                                    'gx#module-export::t))
                                 (let* ((_%$%e206707206731%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%e206704206728%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx206734%_ _%$%e206707206731%_)
                                        (_%$%e206708206736%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%e206704206728%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key206739%_ _%$%e206708206736%_)
                                        (_%$%e206709206741%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%e206704206728%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi206744%_ _%$%e206709206741%_)
                                        (_%$%e206710206746%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%e206704206728%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name206749%_
                                         _%$%e206710206746%_)
                                        (_%$%e206705206751%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%in206700206712%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name206754%_ _%$%e206705206751%_)
                                        (_%$%e206706206756%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%in206700206712%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi206759%_ _%$%e206706206756%_))
                                   (_%$%K206703206725%_
                                    _%phi206759%_
                                    _%name206754%_
                                    _%src-name206749%_
                                    _%src-phi206744%_
                                    _%src-key206739%_
                                    _%src-ctx206734%_))
                                 (_%$%E206702206715%_)))
                           (_%$%E206702206715%_)))))
                  (_%make-import-path206532%_
                   (lambda (_%ctx206697%_)
                     (gxc#generate-meta-import-path
                      _%ctx206697%_
                      _%context-chain206530%_)))
                  (_%make-import-spec-in206533%_
                   (lambda (_%ctx206694%_ _%in206695%_)
                     (cons 'spec:
                           (cons (_%make-import-path206532%_ _%ctx206694%_)
                                 (reverse _%in206695%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self206527%_ 'state)))
          (let* ((_%$%g206535206545%_
                  (lambda (_%$%g206536206542%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g206536206542%_))))
                 (_%$%g206534206691%_
                  (lambda (_%$%g206536206548%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g206536206548%_))
                        (let ((_%$%e206538206550%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g206536206548%_))))
                          (let ((_%$%hd206539206553%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e206538206550%_)))
                                (_%$%tl206540206555%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e206538206550%_))))
                            (let _%lp206569%_ ((_%rest206571%_
                                                _%$%tl206540206555%_)
                                               (_%current-src206572%_ '#f)
                                               (_%current-in206573%_ '())
                                               (_%r206574%_ '()))
                              (let* ((_%$%rest206575206583%_ _%rest206571%_)
                                     (_%$%else206577206593%_
                                      (lambda ()
                                        (let ((_%r206591%_
                                               (if _%current-src206572%_
                                                   (cons (_%make-import-spec-in206533%_
                                                          _%current-src206572%_
                                                          _%current-in206573%_)
                                                         _%r206574%_)
                                                   _%r206574%_)))
                                          (cons '%#import
                                                (reverse _%r206591%_)))))
                                     (_%$%K206579206679%_
                                      (lambda (_%rest206596%_ _%in206597%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               _%in206597%_
                                               'gx#module-import::t))
                                            (let* ((_%$%in206599206606%_
                                                    _%in206597%_)
                                                   (_%$%E206601206609%_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"No clause matching"
                                                               _%$%in206599206606%_
                                                               '((module-import
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (module-export src-ctx)))))
              '#!void))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%K206602206617%_
                                                    (lambda (_%src-ctx206612%_)
                                                      (if (eq? _%current-src206572%_
                                                               _%src-ctx206612%_)
                                                          (_%lp206569%_
                                                           _%rest206596%_
                                                           _%current-src206572%_
                                                           (cons (_%make-import-spec206531%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in206597%_)
                         _%current-in206573%_)
                   _%r206574%_)
                  (if _%current-src206572%_
                      (_%lp206569%_
                       _%rest206596%_
                       _%src-ctx206612%_
                       (cons (_%make-import-spec206531%_ _%in206597%_) '())
                       (cons (_%make-import-spec-in206533%_
                              _%current-src206572%_
                              _%current-in206573%_)
                             _%r206574%_))
                      (_%lp206569%_
                       _%rest206596%_
                       _%src-ctx206612%_
                       (cons (_%make-import-spec206531%_ _%in206597%_) '())
                       _%r206574%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%e206603206620%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%$%in206599206606%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%$%e206603206620%_
                                                     'gx#module-export::t))
                                                  (let* ((_%$%e206604206623%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%e206603206620%_
                                                             '1
                                                             '#f
                                                             '#f)))
                                                         (_%src-ctx206626%_
                                                          _%$%e206604206623%_))
                                                    (_%$%K206602206617%_
                                                     _%src-ctx206626%_))
                                                  (_%$%E206601206609%_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   _%in206597%_
                                                   'gx#import-set::t))
                                                (let* ((_%phi206629%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in206597%_
                                                           '2
                                                           '#f
                                                           '#f)))
                                                       (_%src206631%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in206597%_
                                                           '1
                                                           '#f
                                                           '#f)))
                                                       (_%src-in206671%_
                                                        (let* ((_%$%g206632206641%_
                                                                (_%make-import-path206532%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%src206631%_))
                       (_%$%E206635206645%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%$%g206632206641%_
                                   '([path])
                                   '(path)))
                          '#!void)))
                  (let ((_%$%K206637206661%_
                         (lambda (_%path206659%_) _%path206659%_))
                        (_%$%K206636206651%_
                         (lambda (_%path206649%_) (cons 'in: _%path206649%_))))
                    (if (pair? _%$%g206632206641%_)
                        (let ((_%$%tl206639206666%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%g206632206641%_)))
                              (_%$%hd206638206664%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%g206632206641%_))))
                          (if (null? _%$%tl206639206666%_)
                              (let ((_%path206669%_ _%$%hd206638206664%_))
                                (_%$%K206637206661%_ _%path206669%_))
                              (let ((_%path206654%_ _%$%g206632206641%_))
                                (_%$%K206636206651%_ _%path206654%_))))
                        (let ((_%path206654%_ _%$%g206632206641%_))
                          (_%$%K206636206651%_ _%path206654%_))))))
               (_%r206673%_
                (if _%current-src206572%_
                    (cons (_%make-import-spec-in206533%_
                           _%current-src206572%_
                           _%current-in206573%_)
                          _%r206574%_)
                    _%r206574%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp206569%_
                                                   _%rest206596%_
                                                   '#f
                                                   '()
                                                   (cons (if (fxzero? _%phi206629%_)
                                                             _%src-in206671%_
                                                             (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi206629%_ (cons _%src-in206671%_ '()))))
                 _%r206673%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##structure-instance-of?
                                                       _%in206597%_
                                                       'gx#module-context::t))
                                                    (let ((_%r206677%_
                                                           (if _%current-src206572%_
                                                               (cons (_%make-import-spec-in206533%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%current-src206572%_
                              _%current-in206573%_)
                             _%r206574%_)
                       _%r206574%_)))
              (_%lp206569%_
               _%rest206596%_
               '#f
               '()
               (cons (cons 'runtime: (_%make-import-path206532%_ _%in206597%_))
                     _%r206677%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#!void))))))
                                (if (pair? _%$%rest206575206583%_)
                                    (let ((_%$%hd206580206682%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%rest206575206583%_)))
                                          (_%$%tl206581206684%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%rest206575206583%_))))
                                      (let* ((_%in206687%_
                                              _%$%hd206580206682%_)
                                             (_%rest206689%_
                                              _%$%tl206581206684%_))
                                        (_%$%K206579206679%_
                                         _%rest206689%_
                                         _%in206687%_)))
                                    (_%$%else206577206593%_))))))
                        (_%$%g206535206545%_ _%$%g206536206548%_)))))
            (_%$%g206534206691%_ _%stx206528%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self206337%_ _%stx206338%_)
        (letrec* ((_%context-chain206340%_ (gxc#current-context-chain))
                  (_%make-import-path206341%_
                   (lambda (_%ctx206525%_)
                     (gxc#generate-meta-import-path
                      _%ctx206525%_
                      _%context-chain206340%_))))
          (let* ((_%$%g206343206353%_
                  (lambda (_%$%g206344206350%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g206344206350%_))))
                 (_%$%g206342206522%_
                  (lambda (_%$%g206344206356%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g206344206356%_))
                        (let ((_%$%e206346206358%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g206344206356%_))))
                          (let ((_%$%hd206347206361%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e206346206358%_)))
                                (_%$%tl206348206363%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e206346206358%_))))
                            (let _%lp206377%_ ((_%rest206379%_
                                                _%$%tl206348206363%_)
                                               (_%r206380%_ '()))
                              (let* ((_%$%rest206381206389%_ _%rest206379%_)
                                     (_%$%else206383206397%_
                                      (lambda ()
                                        (cons '%#export
                                              (reverse _%r206380%_))))
                                     (_%$%K206385206510%_
                                      (lambda (_%rest206400%_ _%out206401%_)
                                        (let* ((_%$%out206402206415%_
                                                _%out206401%_)
                                               (_%$%E206405206419%_
                                                (lambda ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"No clause matching"
                                                           _%$%out206402206415%_
                                                           '((module-export
                                                              _
                                                              key
                                                              phi
                                                              name))
                                                           '((export-set
                                                              src
                                                              phi))))
                                                  '#!void)))
                                          (let ((_%$%K206409206489%_
                                                 (lambda (_%name206485%_
                                                          _%phi206486%_
                                                          _%key206487%_)
                                                   (_%lp206377%_
                                                    _%rest206400%_
                                                    (cons (cons 'spec:
                                                                (cons _%phi206486%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-identifier-key
                                       _%key206487%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-identifier-key
                                             _%name206485%_))
                                          '()))))
                  _%r206380%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%K206406206469%_
                                                 (lambda (_%phi206423%_
                                                          _%src206424%_)
                                                   (let* ((_%out206464%_
                                                           (if _%src206424%_
                                                               (cons 'import:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let* ((_%$%g206425206434%_
                                           (_%make-import-path206341%_
                                            _%src206424%_))
                                          (_%$%E206428206438%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (error '"No clause matching"
                                                      _%$%g206425206434%_
                                                      '([path])
                                                      '(path)))
                                             '#!void)))
                                     (let ((_%$%K206430206454%_
                                            (lambda (_%path206452%_)
                                              _%path206452%_))
                                           (_%$%K206429206444%_
                                            (lambda (_%path206442%_)
                                              (cons 'in: _%path206442%_))))
                                       (if (pair? _%$%g206425206434%_)
                                           (let ((_%$%tl206432206459%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%g206425206434%_)))
                                                 (_%$%hd206431206457%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%g206425206434%_))))
                                             (if (null? _%$%tl206432206459%_)
                                                 (let ((_%path206462%_
                                                        _%$%hd206431206457%_))
                                                   (_%$%K206430206454%_
                                                    _%path206462%_))
                                                 (let ((_%path206447%_
                                                        _%$%g206425206434%_))
                                                   (_%$%K206429206444%_
                                                    _%path206447%_))))
                                           (let ((_%path206447%_
                                                  _%$%g206425206434%_))
                                             (_%$%K206429206444%_
                                              _%path206447%_)))))
                                   '()))
                       '#t))
                  (_%out206466%_
                   (if (fxzero? _%phi206423%_)
                       _%out206464%_
                       (cons 'phi:
                             (cons _%phi206423%_ (cons _%out206464%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp206377%_
                                                      _%rest206400%_
                                                      (cons _%out206466%_
                                                            _%r206380%_))))))
                                            (let ((_%$%try-match206404206482%_
                                                   (lambda ()
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            _%$%out206402206415%_
                                                            'gx#export-set::t))
                                                         (let* ((_%$%e206407206472%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%$%out206402206415%_
                            '1
                            '#f
                            '#f)))
                        (_%$%e206408206477%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%$%out206402206415%_
                            '2
                            '#f
                            '#f))))
                   (let ((_%src206475%_ _%$%e206407206472%_)
                         (_%phi206480%_ _%$%e206408206477%_))
                     (_%$%K206406206469%_ _%phi206480%_ _%src206475%_)))
                 (_%$%E206405206419%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%$%out206402206415%_
                                                     'gx#module-export::t))
                                                  (let* ((_%$%e206410206492%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%out206402206415%_
                                                             '1
                                                             '#f
                                                             '#f)))
                                                         (_%$%e206411206495%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%out206402206415%_
                                                             '2
                                                             '#f
                                                             '#f)))
                                                         (_%$%e206412206500%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%out206402206415%_
                                                             '3
                                                             '#f
                                                             '#f)))
                                                         (_%$%e206413206505%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%out206402206415%_
                                                             '4
                                                             '#f
                                                             '#f))))
                                                    (let ((_%key206498%_
                                                           _%$%e206411206495%_)
                                                          (_%phi206503%_
                                                           _%$%e206412206500%_)
                                                          (_%name206508%_
                                                           _%$%e206413206505%_))
                                                      (_%$%K206409206489%_
                                                       _%name206508%_
                                                       _%phi206503%_
                                                       _%key206498%_)))
                                                  (_%$%try-match206404206482%_))))))))
                                (if (pair? _%$%rest206381206389%_)
                                    (let ((_%$%hd206386206513%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%rest206381206389%_)))
                                          (_%$%tl206387206515%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%rest206381206389%_))))
                                      (let* ((_%out206518%_
                                              _%$%hd206386206513%_)
                                             (_%rest206520%_
                                              _%$%tl206387206515%_))
                                        (_%$%K206385206510%_
                                         _%rest206520%_
                                         _%out206518%_)))
                                    (_%$%else206383206397%_))))))
                        (_%$%g206343206353%_ _%$%g206344206356%_)))))
            (_%$%g206342206522%_ _%stx206338%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self206298%_ _%stx206299%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self206298%_ 'state)))
        (let* ((_%$%g206301206311%_
                (lambda (_%$%g206302206308%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g206302206308%_))))
               (_%$%g206300206334%_
                (lambda (_%$%g206302206314%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g206302206314%_))
                      (let ((_%$%e206304206316%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g206302206314%_))))
                        (let ((_%$%hd206305206319%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e206304206316%_)))
                              (_%$%tl206306206321%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e206304206316%_))))
                          (cons '%#provide
                                (map gxc#generate-runtime-identifier
                                     _%$%tl206306206321%_))))
                      (_%$%g206301206311%_ _%$%g206302206314%_)))))
          (_%$%g206300206334%_ _%stx206299%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self206173%_ _%stx206174%_)
        (letrec ((_%generate1206176%_
                  (lambda (_%id206293%_ _%eid206294%_)
                    (let ((_%eid206296%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid206294%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid206296%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx206174%_
                             _%eid206296%_)))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _%id206293%_))
                            (cons _%eid206296%_ '()))))))
          (let* ((_%$%g206178206206%_
                  (lambda (_%$%g206179206203%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g206179206203%_))))
                 (_%$%g206177206290%_
                  (lambda (_%$%g206179206209%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g206179206209%_))
                        (let ((_%$%e206182206211%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g206179206209%_))))
                          (let ((_%$%hd206183206214%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e206182206211%_)))
                                (_%$%tl206184206216%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e206182206211%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%$%tl206184206216%_))
                                (let ((_g215877_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%$%tl206184206216%_
                                          '0))))
                                  (begin
                                    (let ((_g215878_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g215877_)
                                                 (##values-length _g215877_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g215878_ 2)))
                                          (error "Context expects 2 values"
                                                 _g215878_)))
                                    (let ((_%$%target206185206219%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g215877_ 0)))
                                          (_%$%tl206187206221%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g215877_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl206187206221%_))
                                          (letrec ((_%$%loop206188206224%_
                                                    (lambda (_%$%hd206186206227%_
                                                             _%$%eid206192206229%_
                                                             _%$%id206193206230%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%hd206186206227%_))
                                                          (let ((_%$%e206189206232%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%hd206186206227%_))))
                    (let ((_%$%lp-hd206190206235%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e206189206232%_)))
                          (_%$%lp-tl206191206237%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e206189206232%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%lp-hd206190206235%_))
                          (let ((_%$%e206196206240%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%lp-hd206190206235%_))))
                            (let ((_%$%hd206197206243%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e206196206240%_)))
                                  (_%$%tl206198206245%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e206196206240%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl206198206245%_))
                                  (let ((_%$%e206199206248%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl206198206245%_))))
                                    (let ((_%$%hd206200206251%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e206199206248%_)))
                                          (_%$%tl206201206253%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e206199206248%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl206201206253%_))
                                          (_%$%loop206188206224%_
                                           _%$%lp-tl206191206237%_
                                           (cons _%$%hd206200206251%_
                                                 _%$%eid206192206229%_)
                                           (cons _%$%hd206197206243%_
                                                 _%$%id206193206230%_))
                                          (_%$%g206178206206%_
                                           _%$%g206179206209%_))))
                                  (_%$%g206178206206%_ _%$%g206179206209%_))))
                          (_%$%g206178206206%_ _%$%g206179206209%_))))
                  (let ((_%$%eid206194206256%_ (reverse _%$%eid206192206229%_))
                        (_%$%id206195206257%_ (reverse _%$%id206193206230%_)))
                    (cons '%#extern
                          (map _%generate1206176%_
                               (let ((__tmp215879
                                      (lambda (_%$%g206275206278%_
                                               _%$%g206276206280%_)
                                        (cons _%$%g206275206278%_
                                              _%$%g206276206280%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp215879
                                  '()
                                  _%$%id206195206257%_))
                               (let ((__tmp215880
                                      (lambda (_%$%g206282206285%_
                                               _%$%g206283206287%_)
                                        (cons _%$%g206282206285%_
                                              _%$%g206283206287%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp215880
                                  '()
                                  _%$%eid206194206256%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%loop206188206224%_
                                             _%$%target206185206219%_
                                             '()
                                             '()))
                                          (_%$%g206178206206%_
                                           _%$%g206179206209%_)))))
                                (_%$%g206178206206%_ _%$%g206179206209%_))))
                        (_%$%g206178206206%_ _%$%g206179206209%_)))))
            (_%$%g206177206290%_ _%stx206174%_)))))
    (define gxc#generate-meta-define-runtime%
      (lambda (_%self206101%_ _%stx206102%_)
        (let* ((_%$%g206104206121%_
                (lambda (_%$%g206105206118%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g206105206118%_))))
               (_%$%g206103206170%_
                (lambda (_%$%g206105206124%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g206105206124%_))
                      (let ((_%$%e206108206126%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g206105206124%_))))
                        (let ((_%$%hd206109206129%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e206108206126%_)))
                              (_%$%tl206110206131%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e206108206126%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl206110206131%_))
                              (let ((_%$%e206111206134%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl206110206131%_))))
                                (let ((_%$%hd206112206137%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e206111206134%_)))
                                      (_%$%tl206113206139%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e206111206134%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl206113206139%_))
                                      (let ((_%$%e206114206142%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl206113206139%_))))
                                        (let ((_%$%hd206115206145%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e206114206142%_)))
                                              (_%$%tl206116206147%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e206114206142%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl206116206147%_))
                                              (let ((_%ident206166%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#generate-runtime-identifier
                                                        _%$%hd206112206137%_)))
                                                    (_%eid206167%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd206115206145%_)))
                                                    (_%props206168%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier-properties
                                                        _%$%hd206112206137%_))))
                                                (cons '%#define-runtime
                                                      (cons _%ident206166%_
                                                            (cons _%eid206167%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%props206168%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g206104206121%_
                                               _%$%g206105206124%_))))
                                      (_%$%g206104206121%_
                                       _%$%g206105206124%_))))
                              (_%$%g206104206121%_ _%$%g206105206124%_))))
                      (_%$%g206104206121%_ _%$%g206105206124%_)))))
          (_%$%g206103206170%_ _%stx206102%_))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self205890%_ _%stx205891%_)
        (letrec ((_%generate1205893%_
                  (lambda (_%id206095%_)
                    (let ((_%eid206097%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id206095%_)))
                          (_%ident206098%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%id206095%_)))
                          (_%props206099%_
                           (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier-properties
                              _%id206095%_))))
                      (cons '%#define-runtime
                            (cons _%ident206098%_
                                  (cons _%eid206097%_ _%props206099%_))))))
                 (_%generate*205894%_
                  (lambda (_%all206063%_)
                    (let* ((_%$%all206064206072%_ _%all206063%_)
                           (_%$%else206066206080%_
                            (lambda () (cons '%#begin _%all206063%_)))
                           (_%$%K206068206085%_
                            (lambda (_%one206083%_) _%one206083%_)))
                      (if (pair? _%$%all206064206072%_)
                          (let ((_%$%hd206069206088%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%all206064206072%_)))
                                (_%$%tl206070206090%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%all206064206072%_))))
                            (let ((_%one206093%_ _%$%hd206069206088%_))
                              (if (null? _%$%tl206070206090%_)
                                  (_%$%K206068206085%_ _%one206093%_)
                                  (_%$%else206066206080%_))))
                          (_%$%else206066206080%_))))))
          (let* ((_%$%g205896205913%_
                  (lambda (_%$%g205897205910%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g205897205910%_))))
                 (_%$%g205895206060%_
                  (lambda (_%$%g205897205916%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g205897205916%_))
                        (let ((_%$%e205900205918%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g205897205916%_))))
                          (let ((_%$%hd205901205921%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e205900205918%_)))
                                (_%$%tl205902205923%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e205900205918%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl205902205923%_))
                                (let ((_%$%e205903205926%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl205902205923%_))))
                                  (let ((_%$%hd205904205929%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e205903205926%_)))
                                        (_%$%tl205905205931%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e205903205926%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl205905205931%_))
                                        (let ((_%$%e205906205934%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl205905205931%_))))
                                          (let ((_%$%hd205907205937%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e205906205934%_)))
                                                (_%$%tl205908205939%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e205906205934%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl205908205939%_))
                                                (let _%lp205959%_ ((_%rest205961%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%hd205904205929%_)
                           (_%r205962%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%__stx215617215618%_
                                                          _%rest205961%_)
                                                         (_%$%g205967205984%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%__stx215617215618%_)))))
                                                    (let ((_%__kont215619215620%_
                                                           (lambda (_%$%g205969206047%_)
                                                             (_%lp205959%_
                                                              _%$%g205969206047%_
                                                              _%r205962%_)))
                                                          (_%__kont215621215622%_
                                                           (lambda (_%$%g205974206020%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g205975206021%_)
                     (_%lp205959%_
                      _%$%g205974206020%_
                      (cons (_%generate1205893%_ _%$%g205975206021%_)
                            _%r205962%_))))
                  (_%__kont215623215624%_
                   (lambda (_%$%g205979205996%_)
                     (_%generate*205894%_
                      (let ((__tmp215881
                             (cons (_%generate1205893%_ _%$%g205979205996%_)
                                   '())))
                        (declare (not safe))
                        (foldl__0 cons __tmp215881 _%r205962%_)))))
                  (_%__kont215625215626%_
                   (lambda () (_%generate*205894%_ (reverse! _%r205962%_)))))
              (let ((_%$%g205965206007%_
                     (lambda ()
                       (let ((_%$%g205979205996%_ _%__stx215617215618%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%$%g205979205996%_))
                             (_%__kont215623215624%_ _%$%g205979205996%_)
                             (_%__kont215625215626%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx215617215618%_))
                    (let ((_%$%e205970206036%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx215617215618%_))))
                      (let ((_%$%tl205972206041%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e205970206036%_)))
                            (_%$%hd205971206039%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e205970206036%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%$%hd205971206039%_))
                            (let ((_%$%e205973206044%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd205971206039%_))))
                              (if (equal? _%$%e205973206044%_ '#f)
                                  (_%__kont215619215620%_ _%$%tl205972206041%_)
                                  (_%__kont215621215622%_
                                   _%$%tl205972206041%_
                                   _%$%hd205971206039%_)))
                            (_%__kont215621215622%_
                             _%$%tl205972206041%_
                             _%$%hd205971206039%_))))
                    (_%$%g205965206007%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g205896205913%_
                                                 _%$%g205897205916%_))))
                                        (_%$%g205896205913%_
                                         _%$%g205897205916%_))))
                                (_%$%g205896205913%_ _%$%g205897205916%_))))
                        (_%$%g205896205913%_ _%$%g205897205916%_)))))
            (_%$%g205895206060%_ _%stx205891%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self205787%_ _%stx205788%_)
        (let* ((_%$%g205790205807%_
                (lambda (_%$%g205791205804%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205791205804%_))))
               (_%$%g205789205887%_
                (lambda (_%$%g205791205810%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205791205810%_))
                      (let ((_%$%e205794205812%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205791205810%_))))
                        (let ((_%$%hd205795205815%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205794205812%_)))
                              (_%$%tl205796205817%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205794205812%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl205796205817%_))
                              (let ((_%$%e205797205820%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl205796205817%_))))
                                (let ((_%$%hd205798205823%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e205797205820%_)))
                                      (_%$%tl205799205825%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e205797205820%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl205799205825%_))
                                      (let ((_%$%e205800205828%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl205799205825%_))))
                                        (let ((_%$%hd205801205831%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e205800205828%_)))
                                              (_%$%tl205802205833%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e205800205828%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl205802205833%_))
                                              (let* ((_%eid205852%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#generate-runtime-binding-id
                                                         _%$%hd205798205823%_)))
                                                     (_%phi205854%_
                                                      (let ((__tmp215882
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#current-expander-phi))))
                (declare (not safe))
                (##fx+ __tmp215882 '1)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%block205856%_
                                                      (gxc#meta-state-begin-phi!
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self205787%_
                                                          'state))
                                                       _%phi205854%_)))
                                                (let* ((_%$%g205859205866%_
                                                        (lambda (_%$%g205860205863%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%$%g205860205863%_))))
                                                       (_%$%g205858205884%_
                                                        (lambda (_%$%g205860205869%_)
                                                          (gxc#meta-state-add-phi!
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self205787%_
                                                              'state))
                                                           _%phi205854%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#define-runtime))
                         (cons _%$%g205860205869%_
                               (cons _%$%hd205801205831%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g205858205884%_
                                                   _%eid205852%_))
                                                (if _%block205856%_
                                                    (cons '%#begin
                                                          (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block205856%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        (cons (cons '%#define-syntax
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-identifier
                                             _%$%hd205798205823%_))
                                          (cons _%eid205852%_ '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons '%#define-syntax
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#generate-runtime-identifier
                           _%$%hd205798205823%_))
                        (cons _%eid205852%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g205790205807%_
                                               _%$%g205791205810%_))))
                                      (_%$%g205790205807%_
                                       _%$%g205791205810%_))))
                              (_%$%g205790205807%_ _%$%g205791205810%_))))
                      (_%$%g205790205807%_ _%$%g205791205810%_)))))
          (_%$%g205789205887%_ _%stx205788%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self205719%_ _%stx205720%_)
        (let* ((_%$%g205722205739%_
                (lambda (_%$%g205723205736%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205723205736%_))))
               (_%$%g205721205784%_
                (lambda (_%$%g205723205742%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205723205742%_))
                      (let ((_%$%e205726205744%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205723205742%_))))
                        (let ((_%$%hd205727205747%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205726205744%_)))
                              (_%$%tl205728205749%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205726205744%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl205728205749%_))
                              (let ((_%$%e205729205752%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl205728205749%_))))
                                (let ((_%$%hd205730205755%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e205729205752%_)))
                                      (_%$%tl205731205757%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e205729205752%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl205731205757%_))
                                      (let ((_%$%e205732205760%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl205731205757%_))))
                                        (let ((_%$%hd205733205763%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e205732205760%_)))
                                              (_%$%tl205734205765%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e205732205760%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl205734205765%_))
                                              (cons '%#define-alias
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#generate-runtime-identifier
                                                             _%$%hd205730205755%_))
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#generate-runtime-identifier
                           _%$%hd205733205763%_))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g205722205739%_
                                               _%$%g205723205742%_))))
                                      (_%$%g205722205739%_
                                       _%$%g205723205742%_))))
                              (_%$%g205722205739%_ _%$%g205723205742%_))))
                      (_%$%g205722205739%_ _%$%g205723205742%_)))))
          (_%$%g205721205784%_ _%stx205720%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self205716%_ _%stx205717%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self205716%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx205717%_)
        (gxc#generate-meta-define-values% _%self205716%_ _%stx205717%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self205713%_ _%stx205714%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self205713%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx205714%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp215884 (list)) (__tmp215883 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp215884
         '(src n open blocks)
         __tmp215883
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args205710%_
        (apply make-instance gxc#meta-state::t _%$args205710%_)))
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
      (lambda (_%self205696%_ _%ctx205697%_)
        (let ((_%self205700%_ _%self205696%_))
          (if (let ((__tmp215885
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self205700%_))))
                (declare (not safe))
                (##fx< '4 __tmp215885))
              (begin
                (let ((__tmp215886
                       (let ((__tmp215887
                              (##structure-ref
                               _%ctx205697%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp215887))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self205700%_
                   __tmp215886
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self205700%_ '1 '2 '#f '#f))
                (let ((__tmp215888
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self205700%_
                   __tmp215888
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self205700%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp215889
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self205700%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self205700%_
                       '4
                       __tmp215889))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp215891 (list)) (__tmp215890 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp215891
         '(ctx phi n code)
         __tmp215890
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args205571%_
        (apply make-instance gxc#meta-state-block::t _%$args205571%_)))
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
      (lambda (_%state205531%_ _%phi205532%_)
        (let* ((_%$%state205533205541%_ _%state205531%_)
               (_%$%E205535205544%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%state205533205541%_
                           '((meta-state src n open))))
                  '#!void))
               (_%$%K205536205553%_
                (lambda (_%open205547%_ _%n205548%_ _%src205549%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open205547%_ _%phi205532%_))
                      '#f
                      (let ((_%block-ref205551%_
                             (let ((__tmp215892 (number->string _%n205548%_)))
                               (declare (not safe))
                               (##string-append
                                _%src205549%_
                                '"~"
                                __tmp215892))))
                        (##structure-set!
                         _%state205531%_
                         (let () (declare (not safe)) (##fx+ _%n205548%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp215893
                               (let ((__tmp215894
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp215894
                                  _%phi205532%_
                                  _%n205548%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open205547%_ _%phi205532%_ __tmp215893))
                        _%block-ref205551%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%$%state205533205541%_
                 'gxc#meta-state::t))
              (let* ((_%$%e205537205556%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%$%state205533205541%_
                         '1
                         '#f
                         '#f)))
                     (_%src205559%_ _%$%e205537205556%_)
                     (_%$%e205538205561%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%$%state205533205541%_
                         '2
                         '#f
                         '#f)))
                     (_%n205564%_ _%$%e205538205561%_)
                     (_%$%e205539205566%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%$%state205533205541%_
                         '3
                         '#f
                         '#f)))
                     (_%open205569%_ _%$%e205539205566%_))
                (_%$%K205536205553%_ _%open205569%_ _%n205564%_ _%src205559%_))
              (_%$%E205535205544%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state205525%_ _%phi205526%_ _%stx205527%_)
        (let ((_%block205529%_
               (let ((__tmp215895
                      (##structure-ref
                       _%state205525%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp215895 _%phi205526%_))))
          (##structure-set!
           _%block205529%_
           (cons _%stx205527%_
                 (##structure-ref
                  _%block205529%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state205519%_)
        (##structure-set!
         _%state205519%_
         (let ((__tmp215898
                (lambda (_%_205521%_ _%block205522%_ _%r205523%_)
                  (cons _%block205522%_ _%r205523%_)))
               (__tmp215897
                (##structure-ref _%state205519%_ '4 gxc#meta-state::t '#f))
               (__tmp215896
                (##structure-ref _%state205519%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp215898 __tmp215897 __tmp215896))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state205519%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state205472%_)
        (gxc#meta-state-end-phi! _%state205472%_)
        (let ((__tmp215900
               (lambda (_%block205474%_ _%r205475%_)
                 (let* ((_%$%block205476205485%_ _%block205474%_)
                        (_%$%E205478205488%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%$%block205476205485%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%$%K205479205496%_
                         (lambda (_%code205491%_
                                  _%n205492%_
                                  _%phi205493%_
                                  _%ctx205494%_)
                           (if (null? _%code205491%_)
                               _%r205475%_
                               (cons (cons _%ctx205494%_
                                           (cons _%phi205493%_
                                                 (cons _%n205492%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code205491%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r205475%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%$%block205476205485%_
                          'gxc#meta-state-block::t))
                       (let* ((_%$%e205480205499%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%$%block205476205485%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx205502%_ _%$%e205480205499%_)
                              (_%$%e205481205504%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%$%block205476205485%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi205507%_ _%$%e205481205504%_)
                              (_%$%e205482205509%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%$%block205476205485%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n205512%_ _%$%e205482205509%_)
                              (_%$%e205483205514%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%$%block205476205485%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code205517%_ _%$%e205483205514%_))
                         (_%$%K205479205496%_
                          _%code205517%_
                          _%n205512%_
                          _%phi205507%_
                          _%ctx205502%_))
                       (_%$%E205478205488%_)))))
              (__tmp215899
               (##structure-ref _%state205472%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (foldl__0 __tmp215900 '() __tmp215899))))
    (define gxc#collect-expression-refs
      (lambda (_%stx205468%_)
        (let ((_%ht205470%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht205470%_ _%stx205468%_)
          _%ht205470%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self205411%_ _%stx205412%_)
        (let* ((_%$%g205414205427%_
                (lambda (_%$%g205415205424%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205415205424%_))))
               (_%$%g205413205465%_
                (lambda (_%$%g205415205430%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205415205430%_))
                      (let ((_%$%e205417205432%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205415205430%_))))
                        (let ((_%$%hd205418205435%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205417205432%_)))
                              (_%$%tl205419205437%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205417205432%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl205419205437%_))
                              (let ((_%$%e205420205440%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl205419205437%_))))
                                (let ((_%$%hd205421205443%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e205420205440%_)))
                                      (_%$%tl205422205445%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e205420205440%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl205422205445%_))
                                      (let* ((_%bind205460%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#resolve-identifier__0
                                                 _%$%hd205421205443%_)))
                                             (_%eid205462%_
                                              (if _%bind205460%_
                                                  (##structure-ref
                                                   _%bind205460%_
                                                   '1
                                                   gx#binding::t
                                                   '#f)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%hd205421205443%_))))
                                             (__tmp215901
                                              (let ()
                                                (declare (not safe))
                                                (slot-ref__0
                                                 _%self205411%_
                                                 'table))))
                                        (declare (not safe))
                                        (hash-put!
                                         __tmp215901
                                         _%eid205462%_
                                         _%eid205462%_))
                                      (_%$%g205414205427%_
                                       _%$%g205415205430%_))))
                              (_%$%g205414205427%_ _%$%g205415205430%_))))
                      (_%$%g205414205427%_ _%$%g205415205430%_)))))
          (_%$%g205413205465%_ _%stx205412%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self205338%_ _%stx205339%_)
        (let* ((_%$%g205341205358%_
                (lambda (_%$%g205342205355%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205342205355%_))))
               (_%$%g205340205408%_
                (lambda (_%$%g205342205361%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205342205361%_))
                      (let ((_%$%e205345205363%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205342205361%_))))
                        (let ((_%$%hd205346205366%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205345205363%_)))
                              (_%$%tl205347205368%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205345205363%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl205347205368%_))
                              (let ((_%$%e205348205371%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl205347205368%_))))
                                (let ((_%$%hd205349205374%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e205348205371%_)))
                                      (_%$%tl205350205376%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e205348205371%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl205350205376%_))
                                      (let ((_%$%e205351205379%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl205350205376%_))))
                                        (let ((_%$%hd205352205382%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e205351205379%_)))
                                              (_%$%tl205353205384%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e205351205379%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl205353205384%_))
                                              (let* ((_%bind205403%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#resolve-identifier__0
                                                         _%$%hd205349205374%_)))
                                                     (_%eid205405%_
                                                      (if _%bind205403%_
                                                          (##structure-ref
                                                           _%bind205403%_
                                                           '1
                                                           gx#binding::t
                                                           '#f)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%hd205349205374%_)))))
                                                (let ((__tmp215902
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self205338%_
                                                          'table))))
                                                  (declare (not safe))
                                                  (hash-put!
                                                   __tmp215902
                                                   _%eid205405%_
                                                   _%eid205405%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self205338%_
                                                   _%$%hd205352205382%_)))
                                              (_%$%g205341205358%_
                                               _%$%g205342205361%_))))
                                      (_%$%g205341205358%_
                                       _%$%g205342205361%_))))
                              (_%$%g205341205358%_ _%$%g205342205361%_))))
                      (_%$%g205341205358%_ _%$%g205342205361%_)))))
          (_%$%g205340205408%_ _%stx205339%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self205295%_ _%stx205296%_)
        (let* ((_%$%g205298205308%_
                (lambda (_%$%g205299205305%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205299205305%_))))
               (_%$%g205297205335%_
                (lambda (_%$%g205299205311%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205299205311%_))
                      (let ((_%$%e205301205313%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205299205311%_))))
                        (let ((_%$%hd205302205316%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205301205313%_)))
                              (_%$%tl205303205318%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205301205313%_))))
                          (let ((__tmp215903
                                 (lambda (_%$%g205330205332%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self205295%_
                                      _%$%g205330205332%_)))))
                            (declare (not safe))
                            (ormap__0 __tmp215903 _%$%tl205303205318%_))))
                      (_%$%g205298205308%_ _%$%g205299205311%_)))))
          (_%$%g205297205335%_ _%stx205296%_))))
    (define gxc#count-values-single%
      (lambda (_%self205292%_ _%stx205293%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self205160%_ _%stx205161%_)
        (let* ((_%__stx215647215648%_ _%stx205161%_)
               (_%$%g205164205193%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx215647215648%_)))))
          (let ((_%__kont215649215650%_
                 (lambda (_%$%g205166205259%_ _%$%g205167205260%_)
                   (length (let ((__tmp215904
                                  (lambda (_%$%g205281205284%_
                                           _%$%g205282205286%_)
                                    (cons _%$%g205281205284%_
                                          _%$%g205282205286%_))))
                             (declare (not safe))
                             (foldr__0 __tmp215904 '() _%$%g205166205259%_)))))
                (_%__kont215653215654%_ (lambda () '#f)))
            (let ((_%__match215692215693%_
                   (lambda (_%$%e205168205205%_
                            _%$%hd205169205208%_
                            _%$%tl205170205210%_
                            _%$%e205171205213%_
                            _%$%hd205172205216%_
                            _%$%tl205173205218%_
                            _%$%e205174205221%_
                            _%$%hd205175205224%_
                            _%$%tl205176205226%_
                            _%$%e205177205229%_
                            _%$%hd205178205232%_
                            _%$%tl205179205234%_
                            _%__splice215651215652%_
                            _%$%target205180205237%_
                            _%$%tl205182205239%_)
                     (letrec ((_%$%loop205183205242%_
                               (lambda (_%$%hd205181205245%_
                                        _%$%rand205187205247%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd205181205245%_))
                                     (let ((_%$%e205184205249%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd205181205245%_))))
                                       (let ((_%$%lp-tl205186205254%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e205184205249%_)))
                                             (_%$%lp-hd205185205252%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e205184205249%_))))
                                         (_%$%loop205183205242%_
                                          _%$%lp-tl205186205254%_
                                          (cons _%$%lp-hd205185205252%_
                                                _%$%rand205187205247%_))))
                                     (let ((_%$%rand205188205257%_
                                            (reverse _%$%rand205187205247%_)))
                                       (let ((_%$%g205166205259%_
                                              _%$%rand205188205257%_)
                                             (_%$%g205167205260%_
                                              _%$%hd205178205232%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%$%g205167205260%_
                                                'values))
                                             (_%__kont215649215650%_
                                              _%$%g205166205259%_
                                              _%$%g205167205260%_)
                                             (_%__kont215653215654%_))))))))
                       (_%$%loop205183205242%_
                        _%$%target205180205237%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx215647215648%_))
                  (let ((_%$%e205168205205%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx215647215648%_))))
                    (let ((_%$%tl205170205210%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e205168205205%_)))
                          (_%$%hd205169205208%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e205168205205%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl205170205210%_))
                          (let ((_%$%e205171205213%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl205170205210%_))))
                            (let ((_%$%tl205173205218%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e205171205213%_)))
                                  (_%$%hd205172205216%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e205171205213%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd205172205216%_))
                                  (let ((_%$%e205174205221%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd205172205216%_))))
                                    (let ((_%$%tl205176205226%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e205174205221%_)))
                                          (_%$%hd205175205224%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e205174205221%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd205175205224%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd205175205224%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl205176205226%_))
                                                  (let ((_%$%e205177205229%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl205176205226%_))))
                                                    (let ((_%$%tl205179205234%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e205177205229%_)))
                                                          (_%$%hd205178205232%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e205177205229%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl205179205234%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%$%tl205173205218%_))
                      (let ((_%__splice215651215652%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl205173205218%_
                                '0))))
                        (let ((_%$%tl205182205239%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice215651215652%_ '1)))
                              (_%$%target205180205237%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice215651215652%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl205182205239%_))
                              (_%__match215692215693%_
                               _%$%e205168205205%_
                               _%$%hd205169205208%_
                               _%$%tl205170205210%_
                               _%$%e205171205213%_
                               _%$%hd205172205216%_
                               _%$%tl205173205218%_
                               _%$%e205174205221%_
                               _%$%hd205175205224%_
                               _%$%tl205176205226%_
                               _%$%e205177205229%_
                               _%$%hd205178205232%_
                               _%$%tl205179205234%_
                               _%__splice215651215652%_
                               _%$%target205180205237%_
                               _%$%tl205182205239%_)
                              (_%__kont215653215654%_))))
                      (_%__kont215653215654%_))
                  (_%__kont215653215654%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont215653215654%_))
                                              (_%__kont215653215654%_))
                                          (_%__kont215653215654%_))))
                                  (_%__kont215653215654%_))))
                          (_%__kont215653215654%_))))
                  (_%__kont215653215654%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self205065%_ _%stx205066%_)
        (let* ((_%$%g205068205089%_
                (lambda (_%$%g205069205086%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205069205086%_))))
               (_%$%g205067205157%_
                (lambda (_%$%g205069205092%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205069205092%_))
                      (let ((_%$%e205073205094%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205069205092%_))))
                        (let ((_%$%hd205074205097%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205073205094%_)))
                              (_%$%tl205075205099%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205073205094%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl205075205099%_))
                              (let ((_%$%e205076205102%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl205075205099%_))))
                                (let ((_%$%hd205077205105%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e205076205102%_)))
                                      (_%$%tl205078205107%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e205076205102%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl205078205107%_))
                                      (let ((_%$%e205079205110%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl205078205107%_))))
                                        (let ((_%$%hd205080205113%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e205079205110%_)))
                                              (_%$%tl205081205115%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e205079205110%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl205081205115%_))
                                              (let ((_%$%e205082205118%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl205081205115%_))))
                                                (let ((_%$%hd205083205121%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e205082205118%_)))
                                                      (_%$%tl205084205123%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e205082205118%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl205084205123%_))
                                                      (let ((_%$%c1205145205147%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1
                        _%self205065%_
                        _%$%hd205080205113%_))))
                (if _%$%c1205145205147%_
                    (let* ((_%c1205149%_ _%$%c1205145205147%_)
                           (_%$%c2205150205152%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self205065%_
                               _%$%hd205083205121%_))))
                      (if _%$%c2205150205152%_
                          (let ((_%c2205154%_ _%$%c2205150205152%_))
                            (if (fx= _%c1205149%_ _%c2205154%_)
                                _%c1205149%_
                                '#f))
                          '#f))
                    '#f))
              (_%$%g205068205089%_ _%$%g205069205092%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g205068205089%_
                                               _%$%g205069205092%_))))
                                      (_%$%g205068205089%_
                                       _%$%g205069205092%_))))
                              (_%$%g205068205089%_ _%$%g205069205092%_))))
                      (_%$%g205068205089%_ _%$%g205069205092%_)))))
          (_%$%g205067205157%_ _%stx205066%_))))))
