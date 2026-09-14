(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1789371532)
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
      (let ((__tmp217954 (list gxc#::void::t))
            (__tmp217953 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp217954
         '()
         __tmp217953
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args216568%_
        (apply make-instance gxc#::collect-bindings::t _%$args216568%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp217955
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
        (__make-atomic-promise __tmp217955)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx216560%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self216563%_
                (let ((__obj217929
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj217929))
               (__tmp217956
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self216563%_ _%stx216560%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp217956
           gxc#current-compile-method
           _%self216563%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp217958 (list gxc#::void::t))
            (__tmp217957 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp217958
         '(modules)
         __tmp217957
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args216557%_
        (apply make-instance gxc#::lift-modules::t _%$args216557%_)))
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
      (let ((__tmp217959
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
        (__make-atomic-promise __tmp217959)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords216532%_ _%$%modules216529216533%_ _%stx216534%_)
        (let ((_%modules216537%_
               (if (eq? _%$%modules216529216533%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%$%modules216529216533%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self216539%_
                  (let ((__obj217931
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj217931
                       _%modules216537%_
                       '1
                       '#f
                       '#f))
                    __obj217931))
                 (__tmp217960
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self216539%_ _%stx216534%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp217960
             gxc#current-compile-method
             _%self216539%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords216546%_ . _%args216547%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords216546%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords216546%_
                  'modules:
                  absent-value))
               _%args216547%_)))
    (define gxc#apply-lift-modules
      (lambda _%$%args216530216553%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%$%args216530216553%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp217962 (list)) (__tmp217961 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp217962
         '()
         __tmp217961
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args216525%_
        (apply make-instance gxc#::find-runtime-code::t _%$args216525%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp217963
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
        (__make-atomic-promise __tmp217963)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx216517%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self216520%_
                (let ((__obj217933
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj217933))
               (__tmp217964
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self216520%_ _%stx216517%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp217964
           gxc#current-compile-method
           _%self216520%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp217966 (list gxc#::false::t))
            (__tmp217965 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp217966
         '()
         __tmp217965
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args216514%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args216514%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp217967
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
        (__make-atomic-promise __tmp217967)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx216506%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self216509%_
                (let ((__obj217935
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj217935))
               (__tmp217968
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self216509%_ _%stx216506%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp217968
           gxc#current-compile-method
           _%self216509%_))))
    (define gxc#::count-values::t
      (let ((__tmp217970 (list gxc#::false-expression::t))
            (__tmp217969 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp217970
         '()
         __tmp217969
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args216503%_
        (apply make-instance gxc#::count-values::t _%$args216503%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp217971
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
        (__make-atomic-promise __tmp217971)))
    (define gxc#apply-count-values
      (lambda (_%stx216495%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self216498%_
                (let ((__obj217937
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj217937))
               (__tmp217972
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self216498%_ _%stx216495%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp217972
           gxc#current-compile-method
           _%self216498%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp217973 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp217973
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args216492%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args216492%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp217974
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
        (__make-atomic-promise __tmp217974)))
    (define gxc#::generate-loader::t
      (let ((__tmp217976 (list gxc#::generate-runtime-empty::t))
            (__tmp217975 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp217976
         '()
         __tmp217975
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args216488%_
        (apply make-instance gxc#::generate-loader::t _%$args216488%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp217977
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
        (__make-atomic-promise __tmp217977)))
    (define gxc#apply-generate-loader
      (lambda (_%stx216480%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self216483%_
                (let ((__obj217940
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj217940))
               (__tmp217978
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self216483%_ _%stx216480%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp217978
           gxc#current-compile-method
           _%self216483%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp217979 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp217979
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args216477%_
        (apply make-instance gxc#::generate-runtime::t _%$args216477%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp217980
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
        (__make-atomic-promise __tmp217980)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx216469%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self216472%_
                (let ((__obj217942
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj217942))
               (__tmp217981
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self216472%_ _%stx216469%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp217981
           gxc#current-compile-method
           _%self216472%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp217983 (list gxc#::generate-runtime::t))
            (__tmp217982 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp217983
         '()
         __tmp217982
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args216466%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args216466%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp217984
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
        (__make-atomic-promise __tmp217984)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx216458%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self216461%_
                (let ((__obj217944
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj217944))
               (__tmp217985
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self216461%_ _%stx216458%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp217985
           gxc#current-compile-method
           _%self216461%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp217986 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp217986
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args216455%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args216455%_)))
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
      (let ((__tmp217987
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
        (__make-atomic-promise __tmp217987)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords216430%_ _%$%table216427216431%_ _%stx216432%_)
        (let ((_%table216435%_
               (if (eq? _%$%table216427216431%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%$%table216427216431%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self216437%_
                  (let ((__obj217946
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj217946
                       _%table216435%_
                       '1
                       '#f
                       '#f))
                    __obj217946))
                 (__tmp217988
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self216437%_ _%stx216432%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp217988
             gxc#current-compile-method
             _%self216437%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords216444%_ . _%args216445%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords216444%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords216444%_
                  'table:
                  absent-value))
               _%args216445%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%$%args216428216451%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%$%args216428216451%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp217990 (list gxc#::void-expression::t))
            (__tmp217989 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp217990
         '(state)
         __tmp217989
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args216423%_
        (apply make-instance gxc#::generate-meta::t _%$args216423%_)))
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
      (let ((__tmp217991
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
        (__make-atomic-promise __tmp217991)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords216398%_ _%$%state216395216399%_ _%stx216400%_)
        (let ((_%state216403%_
               (if (eq? _%$%state216395216399%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%$%state216395216399%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self216405%_
                  (let ((__obj217948
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj217948
                       _%state216403%_
                       '1
                       '#f
                       '#f))
                    __obj217948))
                 (__tmp217992
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self216405%_ _%stx216400%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp217992
             gxc#current-compile-method
             _%self216405%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords216412%_ . _%args216413%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords216412%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords216412%_
                  'state:
                  absent-value))
               _%args216413%_)))
    (define gxc#apply-generate-meta
      (lambda _%$%args216396216419%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%$%args216396216419%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp217994 (list)) (__tmp217993 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp217994
         '(state)
         __tmp217993
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args216391%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args216391%_)))
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
      (let ((__tmp217995
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
        (__make-atomic-promise __tmp217995)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords216366%_ _%$%state216363216367%_ _%stx216368%_)
        (let ((_%state216371%_
               (if (eq? _%$%state216363216367%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%$%state216363216367%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self216373%_
                  (let ((__obj217950
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj217950
                       _%state216371%_
                       '1
                       '#f
                       '#f))
                    __obj217950))
                 (__tmp217996
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self216373%_ _%stx216368%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp217996
             gxc#current-compile-method
             _%self216373%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords216380%_ . _%args216381%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords216380%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords216380%_
                  'state:
                  absent-value))
               _%args216381%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%$%args216364216387%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%$%args216364216387%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self216292%_ _%stx216293%_)
        (let* ((_%$%g216295216312%_
                (lambda (_%$%g216296216309%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g216296216309%_))))
               (_%$%g216294216359%_
                (lambda (_%$%g216296216315%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g216296216315%_))
                      (let ((_%$%e216299216317%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g216296216315%_))))
                        (let ((_%$%hd216300216320%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e216299216317%_)))
                              (_%$%tl216301216322%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e216299216317%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl216301216322%_))
                              (let ((_%$%e216302216325%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl216301216322%_))))
                                (let ((_%$%hd216303216328%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e216302216325%_)))
                                      (_%$%tl216304216330%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e216302216325%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl216304216330%_))
                                      (let ((_%$%e216305216333%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl216304216330%_))))
                                        (let ((_%$%hd216306216336%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e216305216333%_)))
                                              (_%$%tl216307216338%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e216305216333%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl216307216338%_))
                                              (let ((__tmp217997
                                                     (lambda (_%bind216357%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#identifier?
                                                              _%bind216357%_))
                                                           (gxc#add-module-binding!
                                                            _%bind216357%_
                                                            '#f)
                                                           '#!void))))
                                                (declare (not safe))
                                                (gx#stx-for-each1
                                                 __tmp217997
                                                 _%$%hd216303216328%_))
                                              (_%$%g216295216312%_
                                               _%$%g216296216315%_))))
                                      (_%$%g216295216312%_
                                       _%$%g216296216315%_))))
                              (_%$%g216295216312%_ _%$%g216296216315%_))))
                      (_%$%g216295216312%_ _%$%g216296216315%_)))))
          (_%$%g216294216359%_ _%stx216293%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self216224%_ _%stx216225%_)
        (let* ((_%$%g216227216244%_
                (lambda (_%$%g216228216241%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g216228216241%_))))
               (_%$%g216226216289%_
                (lambda (_%$%g216228216247%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g216228216247%_))
                      (let ((_%$%e216231216249%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g216228216247%_))))
                        (let ((_%$%hd216232216252%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e216231216249%_)))
                              (_%$%tl216233216254%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e216231216249%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl216233216254%_))
                              (let ((_%$%e216234216257%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl216233216254%_))))
                                (let ((_%$%hd216235216260%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e216234216257%_)))
                                      (_%$%tl216236216262%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e216234216257%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl216236216262%_))
                                      (let ((_%$%e216237216265%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl216236216262%_))))
                                        (let ((_%$%hd216238216268%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e216237216265%_)))
                                              (_%$%tl216239216270%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e216237216265%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl216239216270%_))
                                              (gxc#add-module-binding!
                                               _%$%hd216235216260%_
                                               '#t)
                                              (_%$%g216227216244%_
                                               _%$%g216228216247%_))))
                                      (_%$%g216227216244%_
                                       _%$%g216228216247%_))))
                              (_%$%g216227216244%_ _%$%g216228216247%_))))
                      (_%$%g216227216244%_ _%$%g216228216247%_)))))
          (_%$%g216226216289%_ _%stx216225%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self216166%_ _%stx216167%_)
        (let* ((_%$%g216169216183%_
                (lambda (_%$%g216170216180%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g216170216180%_))))
               (_%$%g216168216221%_
                (lambda (_%$%g216170216186%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g216170216186%_))
                      (let ((_%$%e216173216188%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g216170216186%_))))
                        (let ((_%$%hd216174216191%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e216173216188%_)))
                              (_%$%tl216175216193%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e216173216188%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl216175216193%_))
                              (let ((_%$%e216176216196%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl216175216193%_))))
                                (let ((_%$%hd216177216199%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e216176216196%_)))
                                      (_%$%tl216178216201%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e216176216196%_))))
                                  (let ((_%ctx216218%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-local-e__0
                                            _%$%hd216177216199%_))))
                                    (set-box!
                                     (let ()
                                       (declare (not safe))
                                       (slot-ref__0 _%self216166%_ 'modules))
                                     (cons _%ctx216218%_
                                           (unbox (let ()
                                                    (declare (not safe))
                                                    (slot-ref__0
                                                     _%self216166%_
                                                     'modules)))))
                                    (let ((__tmp217998
                                           (lambda ()
                                             (let ((__tmp217999
                                                    (##structure-ref
                                                     _%ctx216218%_
                                                     '11
                                                     gx#module-context::t
                                                     '#f)))
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self216166%_
                                                __tmp217999)))))
                                      (declare (not safe))
                                      (call-with-parameters__1
                                       __tmp217998
                                       gx#current-expander-context
                                       _%ctx216218%_)))))
                              (_%$%g216169216183%_ _%$%g216170216186%_))))
                      (_%$%g216169216183%_ _%$%g216170216186%_)))))
          (_%$%g216168216221%_ _%stx216167%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%$%decls216120216122%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%$%decls216120216122%_
              (let ((_%decls216124%_ _%$%decls216120216122%_))
                (let _%lp216126%_ ((_%rest216128%_ _%decls216124%_))
                  (let* ((_%$%rest216129216137%_ _%rest216128%_)
                         (_%$%else216131216145%_ (lambda () '#f))
                         (_%$%K216133216154%_
                          (lambda (_%decls216148%_ _%decl216149%_)
                            (if (equal? _%decl216149%_ '(not safe))
                                '#t
                                (if (equal? _%decl216149%_ '(safe))
                                    '#f
                                    (_%lp216126%_ _%decls216148%_))))))
                    (if (pair? _%$%rest216129216137%_)
                        (let ((_%$%hd216134216157%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%rest216129216137%_)))
                              (_%$%tl216135216159%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%rest216129216137%_))))
                          (let* ((_%decl216162%_ _%$%hd216134216157%_)
                                 (_%decls216164%_ _%$%tl216135216159%_))
                            (_%$%K216133216154%_
                             _%decls216164%_
                             _%decl216162%_)))
                        (_%$%else216131216145%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id216114%_ _%syntax?216115%_)
        (let ((_%eid216117%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id216114%_))
                '1
                gx#binding::t
                '#f))
              (_%ht216118%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid216117%_))
              '#!void
              (let ((__tmp218000
                     (let ((__tmp218001
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid216117%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp218001 _%syntax?216115%_))))
                (declare (not safe))
                (hash-put! _%ht216118%_ _%eid216117%_ __tmp218000))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self216111%_ _%stx216112%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self215958%_ _%stx215959%_)
        (letrec ((_%simplify215961%_
                  (lambda (_%body216009%_)
                    (let _%lp216011%_ ((_%rest216013%_ _%body216009%_)
                                       (_%r216014%_ '()))
                      (let* ((_%$%rest216015216023%_ _%rest216013%_)
                             (_%$%else216017216031%_
                              (lambda () (reverse _%r216014%_)))
                             (_%$%K216019216099%_
                              (lambda (_%rest216034%_ _%hd216035%_)
                                (let* ((_%$%hd216036216052%_ _%hd216035%_)
                                       (_%$%else216040216060%_
                                        (lambda ()
                                          (_%lp216011%_
                                           _%rest216034%_
                                           (cons _%hd216035%_ _%r216014%_)))))
                                  (let ((_%$%K216048216089%_
                                         (lambda (_%exprs216087%_)
                                           (_%lp216011%_
                                            (append _%exprs216087%_
                                                    _%rest216034%_)
                                            _%r216014%_)))
                                        (_%$%K216043216073%_
                                         (lambda ()
                                           (if (null? _%rest216034%_)
                                               (_%lp216011%_
                                                _%rest216034%_
                                                (cons _%hd216035%_
                                                      _%r216014%_))
                                               (_%lp216011%_
                                                _%rest216034%_
                                                _%r216014%_))))
                                        (_%$%K216042216065%_
                                         (lambda ()
                                           (if (null? _%rest216034%_)
                                               (_%lp216011%_
                                                _%rest216034%_
                                                (cons _%hd216035%_
                                                      _%r216014%_))
                                               (_%lp216011%_
                                                _%rest216034%_
                                                _%r216014%_)))))
                                    (let ((_%$%try-match216039216068%_
                                           (lambda ()
                                             (if (symbol? _%$%hd216036216052%_)
                                                 (_%$%K216042216065%_)
                                                 (_%$%else216040216060%_)))))
                                      (if (pair? _%$%hd216036216052%_)
                                          (let ((_%$%tl216050216094%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%hd216036216052%_)))
                                                (_%$%hd216049216092%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%hd216036216052%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%$%hd216049216092%_
                                                         'begin))
                                                (let ((_%exprs216097%_
                                                       _%$%tl216050216094%_))
                                                  (_%$%K216048216089%_
                                                   _%exprs216097%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%$%hd216049216092%_
                                                             'quote))
                                                    (if (pair? _%$%tl216050216094%_)
                                                        (let ((_%$%tl216047216081%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%tl216050216094%_))))
                  (if (null? _%$%tl216047216081%_)
                      (_%$%K216043216073%_)
                      (_%$%try-match216039216068%_)))
                (_%$%try-match216039216068%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%try-match216039216068%_))))
                                          (_%$%try-match216039216068%_))))))))
                        (if (pair? _%$%rest216015216023%_)
                            (let ((_%$%hd216020216102%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest216015216023%_)))
                                  (_%$%tl216021216104%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest216015216023%_))))
                              (let* ((_%hd216107%_ _%$%hd216020216102%_)
                                     (_%rest216109%_ _%$%tl216021216104%_))
                                (_%$%K216019216099%_
                                 _%rest216109%_
                                 _%hd216107%_)))
                            (_%$%else216017216031%_)))))))
          (let* ((_%$%g215963215973%_
                  (lambda (_%$%g215964215970%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g215964215970%_))))
                 (_%$%g215962216006%_
                  (lambda (_%$%g215964215976%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g215964215976%_))
                        (let ((_%$%e215966215978%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g215964215976%_))))
                          (let ((_%$%hd215967215981%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e215966215978%_)))
                                (_%$%tl215968215983%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e215966215978%_))))
                            (let* ((_%body216001%_
                                    (map (lambda (_%$%g215996215998%_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self215958%_
                                              _%$%g215996215998%_)))
                                         _%$%tl215968215983%_))
                                   (_%body216003%_
                                    (_%simplify215961%_ _%body216001%_)))
                              (if (let ((__tmp218002 (length _%body216003%_)))
                                    (declare (not safe))
                                    (##fx= __tmp218002 '1))
                                  (car _%body216003%_)
                                  (cons 'begin _%body216003%_)))))
                        (_%$%g215963215973%_ _%$%g215964215976%_)))))
            (_%$%g215962216006%_ _%stx215959%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self215919%_ _%stx215920%_)
        (let* ((_%$%g215922215932%_
                (lambda (_%$%g215923215929%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g215923215929%_))))
               (_%$%g215921215955%_
                (lambda (_%$%g215923215935%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g215923215935%_))
                      (let ((_%$%e215925215937%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g215923215935%_))))
                        (let ((_%$%hd215926215940%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e215925215937%_)))
                              (_%$%tl215927215942%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e215925215937%_))))
                          (cons 'begin
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax->datum _%$%tl215927215942%_)))))
                      (_%$%g215922215932%_ _%$%g215923215935%_)))))
          (_%$%g215921215955%_ _%stx215920%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self215685%_ _%stx215686%_)
        (let* ((_%__stx216592216593%_ _%stx215686%_)
               (_%$%g215690215742%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx216592216593%_)))))
          (let ((_%__kont216594216595%_
                 (lambda (_%$%g215692215901%_ _%$%g215693215902%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self215685%_ _%$%g215692215901%_))))
                (_%__kont216596216597%_
                 (lambda (_%$%g215703215849%_
                          _%$%g215704215850%_
                          _%$%g215705215851%_)
                   (if (let ((__tmp218003
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%g215705215851%_))))
                         (declare (not safe))
                         (##memq __tmp218003 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self215685%_
                          _%$%g215703215849%_)))))
                (_%__kont216600216601%_
                 (lambda (_%$%g215727215771%_ _%$%g215728215772%_)
                   (let ((_%decls215787%_
                          (map gx#syntax->datum _%$%g215728215772%_)))
                     (let ((__tmp218005
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls215787%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self215685%_
                                                   _%$%g215727215771%_))
                                                '())))))
                           (__tmp218004
                            (append _%decls215787%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-decls)))))
                       (declare (not safe))
                       (call-with-parameters__1
                        __tmp218005
                        gxc#current-compile-decls
                        __tmp218004))))))
            (let* ((_%__match216647216648%_
                    (lambda (_%$%e215706215795%_
                             _%$%hd215707215798%_
                             _%$%tl215708215800%_
                             _%$%e215709215803%_
                             _%$%hd215710215806%_
                             _%$%tl215711215808%_
                             _%$%e215712215811%_
                             _%$%hd215713215814%_
                             _%$%tl215714215816%_
                             _%__splice216598216599%_
                             _%$%target215715215819%_
                             _%$%tl215717215821%_)
                      (letrec ((_%$%loop215718215824%_
                                (lambda (_%$%hd215716215827%_
                                         _%$%param215722215829%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd215716215827%_))
                                      (let ((_%$%e215719215831%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd215716215827%_))))
                                        (let ((_%$%lp-tl215721215836%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e215719215831%_)))
                                              (_%$%lp-hd215720215834%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e215719215831%_))))
                                          (_%$%loop215718215824%_
                                           _%$%lp-tl215721215836%_
                                           (cons _%$%lp-hd215720215834%_
                                                 _%$%param215722215829%_))))
                                      (let ((_%$%param215723215839%_
                                             (reverse _%$%param215722215829%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl215711215808%_))
                                            (let ((_%$%e215724215841%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl215711215808%_))))
                                              (let ((_%$%tl215726215846%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e215724215841%_)))
                                                    (_%$%hd215725215844%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e215724215841%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl215726215846%_))
                                                    (let ((_%$%g215703215849%_
                                                           _%$%hd215725215844%_)
                                                          (_%$%g215704215850%_
                                                           _%$%param215723215839%_)
                                                          (_%$%g215705215851%_
                                                           _%$%hd215713215814%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%$%g215705215851%_))
                       (not (let ((__tmp218006
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g215705215851%_))))
                              (declare (not safe))
                              (##memq __tmp218006 gxc#gambit-annotations))))
                  (_%__kont216596216597%_
                   _%$%g215703215849%_
                   _%$%g215704215850%_
                   _%$%g215705215851%_)
                  (_%__kont216600216601%_
                   _%$%hd215725215844%_
                   _%$%hd215710215806%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g215690215742%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g215690215742%_))))))))
                        (_%$%loop215718215824%_
                         _%$%target215715215819%_
                         '()))))
                   (_%__match216621216622%_
                    (lambda (_%$%e215694215877%_
                             _%$%hd215695215880%_
                             _%$%tl215696215882%_
                             _%$%e215697215885%_
                             _%$%hd215698215888%_
                             _%$%tl215699215890%_
                             _%$%e215700215893%_
                             _%$%hd215701215896%_
                             _%$%tl215702215898%_)
                      (let ((_%$%g215692215901%_ _%$%hd215701215896%_)
                            (_%$%g215693215902%_ _%$%hd215698215888%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%$%g215693215902%_))
                            (_%__kont216594216595%_
                             _%$%g215692215901%_
                             _%$%g215693215902%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd215698215888%_))
                                (let ((_%$%e215712215811%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd215698215888%_))))
                                  (let ((_%$%tl215714215816%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e215712215811%_)))
                                        (_%$%hd215713215814%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e215712215811%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%tl215714215816%_))
                                        (let ((_%__splice216598216599%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl215714215816%_
                                                  '0))))
                                          (let ((_%$%tl215717215821%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice216598216599%_
                                                    '1)))
                                                (_%$%target215715215819%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice216598216599%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl215717215821%_))
                                                (_%__match216647216648%_
                                                 _%$%e215694215877%_
                                                 _%$%hd215695215880%_
                                                 _%$%tl215696215882%_
                                                 _%$%e215697215885%_
                                                 _%$%hd215698215888%_
                                                 _%$%tl215699215890%_
                                                 _%$%e215712215811%_
                                                 _%$%hd215713215814%_
                                                 _%$%tl215714215816%_
                                                 _%__splice216598216599%_
                                                 _%$%target215715215819%_
                                                 _%$%tl215717215821%_)
                                                (_%__kont216600216601%_
                                                 _%$%hd215701215896%_
                                                 _%$%hd215698215888%_))))
                                        (_%__kont216600216601%_
                                         _%$%hd215701215896%_
                                         _%$%hd215698215888%_))))
                                (_%__kont216600216601%_
                                 _%$%hd215701215896%_
                                 _%$%hd215698215888%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx216592216593%_))
                  (let ((_%$%e215694215877%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx216592216593%_))))
                    (let ((_%$%tl215696215882%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e215694215877%_)))
                          (_%$%hd215695215880%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e215694215877%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl215696215882%_))
                          (let ((_%$%e215697215885%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl215696215882%_))))
                            (let ((_%$%tl215699215890%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e215697215885%_)))
                                  (_%$%hd215698215888%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e215697215885%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl215699215890%_))
                                  (let ((_%$%e215700215893%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl215699215890%_))))
                                    (let ((_%$%tl215702215898%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e215700215893%_)))
                                          (_%$%hd215701215896%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e215700215893%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl215702215898%_))
                                          (_%__match216621216622%_
                                           _%$%e215694215877%_
                                           _%$%hd215695215880%_
                                           _%$%tl215696215882%_
                                           _%$%e215697215885%_
                                           _%$%hd215698215888%_
                                           _%$%tl215699215890%_
                                           _%$%e215700215893%_
                                           _%$%hd215701215896%_
                                           _%$%tl215702215898%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%hd215698215888%_))
                                              (let ((_%$%e215712215811%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd215698215888%_))))
                                                (let ((_%$%tl215714215816%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e215712215811%_)))
                                                      (_%$%hd215713215814%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e215712215811%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl215714215816%_))
                                                      (let ((_%__splice216598216599%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl215714215816%_
                        '0))))
                (let ((_%$%tl215717215821%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice216598216599%_ '1)))
                      (_%$%target215715215819%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice216598216599%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl215717215821%_))
                      (_%__match216647216648%_
                       _%$%e215694215877%_
                       _%$%hd215695215880%_
                       _%$%tl215696215882%_
                       _%$%e215697215885%_
                       _%$%hd215698215888%_
                       _%$%tl215699215890%_
                       _%$%e215712215811%_
                       _%$%hd215713215814%_
                       _%$%tl215714215816%_
                       _%__splice216598216599%_
                       _%$%target215715215819%_
                       _%$%tl215717215821%_)
                      (let () (declare (not safe)) (_%$%g215690215742%_)))))
              (let () (declare (not safe)) (_%$%g215690215742%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g215690215742%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd215698215888%_))
                                      (let ((_%$%e215712215811%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd215698215888%_))))
                                        (let ((_%$%tl215714215816%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e215712215811%_)))
                                              (_%$%hd215713215814%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e215712215811%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%$%tl215714215816%_))
                                              (let ((_%__splice216598216599%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl215714215816%_
                                                        '0))))
                                                (let ((_%$%tl215717215821%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice216598216599%_
                                                          '1)))
                                                      (_%$%target215715215819%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice216598216599%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl215717215821%_))
                                                      (_%__match216647216648%_
                                                       _%$%e215694215877%_
                                                       _%$%hd215695215880%_
                                                       _%$%tl215696215882%_
                                                       _%$%e215697215885%_
                                                       _%$%hd215698215888%_
                                                       _%$%tl215699215890%_
                                                       _%$%e215712215811%_
                                                       _%$%hd215713215814%_
                                                       _%$%tl215714215816%_
                                                       _%__splice216598216599%_
                                                       _%$%target215715215819%_
                                                       _%$%tl215717215821%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g215690215742%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g215690215742%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g215690215742%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g215690215742%_)))))
                  (let () (declare (not safe)) (_%$%g215690215742%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self215644%_ _%stx215645%_)
        (let* ((_%$%g215647215657%_
                (lambda (_%$%g215648215654%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g215648215654%_))))
               (_%$%g215646215682%_
                (lambda (_%$%g215648215660%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g215648215660%_))
                      (let ((_%$%e215650215662%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g215648215660%_))))
                        (let ((_%$%hd215651215665%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e215650215662%_)))
                              (_%$%tl215652215667%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e215650215662%_))))
                          (let ((_%decls215680%_
                                 (map gx#syntax->datum _%$%tl215652215667%_)))
                            (let ((__tmp218007
                                   (append _%decls215680%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#current-compile-decls)))))
                              (declare (not safe))
                              (gxc#current-compile-decls __tmp218007))
                            (cons 'declare _%decls215680%_))))
                      (_%$%g215647215657%_ _%$%g215648215660%_)))))
          (_%$%g215646215682%_ _%stx215645%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self215391%_ _%stx215392%_)
        (let* ((_%$%g215394215411%_
                (lambda (_%$%g215395215408%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g215395215408%_))))
               (_%$%g215393215641%_
                (lambda (_%$%g215395215414%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g215395215414%_))
                      (let ((_%$%e215398215416%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g215395215414%_))))
                        (let ((_%$%hd215399215419%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e215398215416%_)))
                              (_%$%tl215400215421%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e215398215416%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl215400215421%_))
                              (let ((_%$%e215401215424%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl215400215421%_))))
                                (let ((_%$%hd215402215427%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e215401215424%_)))
                                      (_%$%tl215403215429%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e215401215424%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl215403215429%_))
                                      (let ((_%$%e215404215432%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl215403215429%_))))
                                        (let ((_%$%hd215405215435%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e215404215432%_)))
                                              (_%$%tl215406215437%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e215404215432%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl215406215437%_))
                                              (let* ((_%__stx216700216701%_
                                                      _%$%hd215402215427%_)
                                                     (_%$%g215458215472%_
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%__stx216700216701%_)))))
                                                (let ((_%__kont216702216703%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self215391%_
                                                            _%$%hd215405215435%_))))
                                                      (_%__kont216704216705%_
                                                       (lambda (_%$%g215464215604%_)
                                                         (let ((_%eid215613%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#generate-runtime-binding-id
                           _%$%g215464215604%_))))
                   (let ((_%$%lambda-expr215614215616%_
                          (gxc#apply-find-lambda-expression
                           _%$%hd215405215435%_)))
                     (if _%$%lambda-expr215614215616%_
                         (let* ((_%lambda-expr215618%_
                                 _%$%lambda-expr215614215616%_)
                                (__tmp218008
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-names))))
                           (declare (not safe))
                           (hash-put!
                            __tmp218008
                            _%lambda-expr215618%_
                            _%eid215613%_))
                         '#f))
                   (cons 'define
                         (cons _%eid215613%_
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self215391%_
                                        _%$%hd215405215435%_))
                                     '()))))))
              (_%__kont216706216707%_
               (lambda ()
                 (let* ((_%tmp215479%_
                         (let ()
                           (declare (not safe))
                           (gxc#generate-runtime-temporary__% '#t)))
                        (_%body215588%_
                         (let _%lp215481%_ ((_%rest215483%_
                                             _%$%hd215402215427%_)
                                            (_%k215484%_ '0)
                                            (_%r215485%_ '()))
                           (let* ((_%__stx216670216671%_ _%rest215483%_)
                                  (_%$%g215490215507%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%__stx216670216671%_)))))
                             (let ((_%__kont216672216673%_
                                    (lambda (_%$%g215492215575%_)
                                      (_%lp215481%_
                                       _%$%g215492215575%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k215484%_ '1))
                                       _%r215485%_)))
                                   (_%__kont216674216675%_
                                    (lambda (_%$%g215497215548%_
                                             _%$%g215498215549%_)
                                      (_%lp215481%_
                                       _%$%g215497215548%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k215484%_ '1))
                                       (cons (cons 'define
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%$%g215498215549%_))
                                                         (cons (gxc#generate-runtime-values-ref
                                                                _%tmp215479%_
                                                                _%k215484%_
                                                                _%$%g215497215548%_)
                                                               '())))
                                             _%r215485%_))))
                                   (_%__kont216676216677%_
                                    (lambda (_%$%g215502215519%_)
                                      (let ((__tmp218009
                                             (cons (cons 'define
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#generate-runtime-binding-id _%$%g215502215519%_))
                       (cons (gxc#generate-runtime-values->list
                              _%tmp215479%_
                              _%k215484%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                        (declare (not safe))
                                        (foldl__0
                                         cons
                                         __tmp218009
                                         _%r215485%_))))
                                   (_%__kont216678216679%_
                                    (lambda () (reverse _%r215485%_))))
                               (let ((_%$%g215488215535%_
                                      (lambda ()
                                        (let ((_%$%g215502215519%_
                                               _%__stx216670216671%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%$%g215502215519%_))
                                              (_%__kont216676216677%_
                                               _%$%g215502215519%_)
                                              (_%__kont216678216679%_))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx216670216671%_))
                                     (let ((_%$%e215493215564%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx216670216671%_))))
                                       (let ((_%$%tl215495215569%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e215493215564%_)))
                                             (_%$%hd215494215567%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e215493215564%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-datum?
                                                _%$%hd215494215567%_))
                                             (let ((_%$%e215496215572%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%hd215494215567%_))))
                                               (if (equal? _%$%e215496215572%_
                                                           '#f)
                                                   (_%__kont216672216673%_
                                                    _%$%tl215495215569%_)
                                                   (_%__kont216674216675%_
                                                    _%$%tl215495215569%_
                                                    _%$%hd215494215567%_)))
                                             (_%__kont216674216675%_
                                              _%$%tl215495215569%_
                                              _%$%hd215494215567%_))))
                                     (_%$%g215488215535%_))))))))
                   (cons 'begin
                         (cons (cons 'define
                                     (cons _%tmp215479%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self215391%_
                                                    _%$%hd215405215435%_))
                                                 '())))
                               (cons (gxc#generate-runtime-check-values
                                      _%tmp215479%_
                                      _%$%hd215402215427%_
                                      _%$%hd215405215435%_)
                                     _%body215588%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%__stx216700216701%_))
                                                      (let ((_%$%e215460215625%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%__stx216700216701%_))))
                (let ((_%$%tl215462215630%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e215460215625%_)))
                      (_%$%hd215461215628%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e215460215625%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%$%hd215461215628%_))
                      (let ((_%$%e215463215633%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%hd215461215628%_))))
                        (if (equal? _%$%e215463215633%_ '#f)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl215462215630%_))
                                (_%__kont216702216703%_)
                                (_%__kont216706216707%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl215462215630%_))
                                (_%__kont216704216705%_ _%$%hd215461215628%_)
                                (_%__kont216706216707%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl215462215630%_))
                          (_%__kont216704216705%_ _%$%hd215461215628%_)
                          (_%__kont216706216707%_)))))
              (_%__kont216706216707%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g215394215411%_
                                               _%$%g215395215414%_))))
                                      (_%$%g215394215411%_
                                       _%$%g215395215414%_))))
                              (_%$%g215394215411%_ _%$%g215395215414%_))))
                      (_%$%g215394215411%_ _%$%g215395215414%_)))))
          (_%$%g215393215641%_ _%stx215392%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals215366%_ _%hd215367%_ _%expr215368%_)
        (let ((_%$e215370%_ (gxc#apply-count-values _%expr215368%_)))
          (if _%$e215370%_
              (let ((_%len215375%_
                     (let ()
                       (declare (not safe))
                       (gx#stx-length _%hd215367%_)))
                    (_%cmp215376%_
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-list? _%hd215367%_))
                         fx=
                         fx>=)))
                (if (or (let () (declare (not safe)) (##fx= _%len215375%_ '0))
                        (_%cmp215376%_ _%$e215370%_ _%len215375%_))
                    '#!void
                    (let ()
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Value count mismatch"
                       _%expr215368%_
                       _%hd215367%_))))
              (let* ((_%len215382%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd215367%_)))
                     (_%cmp215384%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd215367%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg215386%_
                      (let ((__tmp218011
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd215367%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp218010 (number->string _%len215382%_)))
                        (declare (not safe))
                        (##string-append __tmp218011 __tmp218010 '" values")))
                     (_%count215388%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd215367%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len215382%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count215388%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals215366%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp215384%_
                                (cons _%count215388%_
                                      (cons _%len215382%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp215384%_
                                                        (cons _%count215388%_
                                                              (cons _%len215382%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg215386%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count215388%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var215361%_)
        (letrec ((_%generate-inline215363%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var215361%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var215361%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline215363%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline215363%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var215354%_ _%i215355%_ _%rest215356%_)
        (letrec ((_%generate-inline215358%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i215355%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest215356%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var215354%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var215354%_
                                                      (cons '0 '())))
                                          (cons _%var215354%_ '()))))
                        (cons '##values-ref
                              (cons _%var215354%_ (cons _%i215355%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline215358%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline215358%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var215348%_ _%i215349%_)
        (if (let () (declare (not safe)) (##fx= _%i215349%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var215348%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var215348%_ '()))
                                  (cons (cons 'list (cons _%var215348%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var215348%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var215348%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var215348%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i215349%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var215348%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var215348%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var215348%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var215348%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var215348%_ '()))
                                (cons _%i215349%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var215348%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i215349%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self215280%_ _%stx215281%_)
        (let* ((_%$%g215283215300%_
                (lambda (_%$%g215284215297%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g215284215297%_))))
               (_%$%g215282215345%_
                (lambda (_%$%g215284215303%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g215284215303%_))
                      (let ((_%$%e215287215305%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g215284215303%_))))
                        (let ((_%$%hd215288215308%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e215287215305%_)))
                              (_%$%tl215289215310%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e215287215305%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl215289215310%_))
                              (let ((_%$%e215290215313%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl215289215310%_))))
                                (let ((_%$%hd215291215316%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e215290215313%_)))
                                      (_%$%tl215292215318%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e215290215313%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl215292215318%_))
                                      (let ((_%$%e215293215321%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl215292215318%_))))
                                        (let ((_%$%hd215294215324%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e215293215321%_)))
                                              (_%$%tl215295215326%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e215293215321%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl215295215326%_))
                                              (gxc#generate-runtime-lambda-form
                                               _%self215280%_
                                               _%$%hd215291215316%_
                                               _%$%hd215294215324%_)
                                              (_%$%g215283215300%_
                                               _%$%g215284215303%_))))
                                      (_%$%g215283215300%_
                                       _%$%g215284215303%_))))
                              (_%$%g215283215300%_ _%$%g215284215303%_))))
                      (_%$%g215283215300%_ _%$%g215284215303%_)))))
          (_%$%g215282215345%_ _%stx215281%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self215239%_ _%hd215240%_ _%body215241%_)
        (let* ((_%hd215243%_ (gxc#generate-runtime-lambda-head _%hd215240%_))
               (_%body215245%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self215239%_ _%body215241%_)))
               (_%body215277%_
                (let* ((_%$%body215246215254%_ _%body215245%_)
                       (_%$%else215248215262%_
                        (lambda () (cons _%body215245%_ '())))
                       (_%$%K215250215267%_
                        (lambda (_%exprs215265%_) _%exprs215265%_)))
                  (if (pair? _%$%body215246215254%_)
                      (let ((_%$%hd215251215270%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%body215246215254%_)))
                            (_%$%tl215252215272%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%body215246215254%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%$%hd215251215270%_ 'begin))
                            (let ((_%exprs215275%_ _%$%tl215252215272%_))
                              (_%$%K215250215267%_ _%exprs215275%_))
                            (_%$%else215248215262%_)))
                      (_%$%else215248215262%_)))))
          (cons 'lambda (cons _%hd215243%_ _%body215277%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd215237%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd215237%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self213794%_ _%stx213795%_)
        (letrec ((_%dispatch-case?213797%_
                  (lambda (_%hd214475%_ _%body214476%_)
                    (let* ((_%form214478%_
                            (cons _%hd214475%_ (cons _%body214476%_ '())))
                           (_%__stx216732216733%_ _%form214478%_)
                           (_%$%g214483214640%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx216732216733%_)))))
                      (let ((_%__kont216734216735%_
                             (lambda (_%$%g214485215157%_
                                      _%$%g214486215158%_
                                      _%$%g214487215159%_)
                               '#t))
                            (_%__kont216740216741%_
                             (lambda (_%$%g214530214949%_
                                      _%$%g214531214950%_
                                      _%$%g214532214951%_
                                      _%$%g214533214952%_
                                      _%$%g214534214953%_
                                      _%$%g214535214954%_)
                               '#t))
                            (_%__kont216746216747%_
                             (lambda (_%$%g214596214748%_
                                      _%$%g214597214749%_
                                      _%$%g214598214750%_
                                      _%$%g214599214751%_)
                               '#t))
                            (_%__kont216748216749%_ (lambda () '#f)))
                        (let* ((_%__match216873216874%_
                                (lambda (_%$%e214600214652%_
                                         _%$%hd214601214655%_
                                         _%$%tl214602214657%_
                                         _%$%e214603214660%_
                                         _%$%hd214604214663%_
                                         _%$%tl214605214665%_
                                         _%$%e214606214668%_
                                         _%$%hd214607214671%_
                                         _%$%tl214608214673%_
                                         _%$%e214609214676%_
                                         _%$%hd214610214679%_
                                         _%$%tl214611214681%_
                                         _%$%e214612214684%_
                                         _%$%hd214613214687%_
                                         _%$%tl214614214689%_
                                         _%$%e214615214692%_
                                         _%$%hd214616214695%_
                                         _%$%tl214617214697%_
                                         _%$%e214618214700%_
                                         _%$%hd214619214703%_
                                         _%$%tl214620214705%_
                                         _%$%e214621214708%_
                                         _%$%hd214622214711%_
                                         _%$%tl214623214713%_
                                         _%$%e214624214716%_
                                         _%$%hd214625214719%_
                                         _%$%tl214626214721%_
                                         _%$%e214627214724%_
                                         _%$%hd214628214727%_
                                         _%$%tl214629214729%_
                                         _%$%e214630214732%_
                                         _%$%hd214631214735%_
                                         _%$%tl214632214737%_
                                         _%$%e214633214740%_
                                         _%$%hd214634214743%_
                                         _%$%tl214635214745%_)
                                  (let ((_%$%g214596214748%_
                                         _%$%hd214634214743%_)
                                        (_%$%g214597214749%_
                                         _%$%hd214625214719%_)
                                        (_%$%g214598214750%_
                                         _%$%hd214616214695%_)
                                        (_%$%g214599214751%_
                                         _%$%hd214601214655%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%$%g214599214751%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%$%g214598214750%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%$%g214599214751%_
                                                _%$%g214596214748%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%$%g214597214749%_
                                                     _%$%g214599214751%_))))
                                        (_%__kont216746216747%_
                                         _%$%g214596214748%_
                                         _%$%g214597214749%_
                                         _%$%g214598214750%_
                                         _%$%g214599214751%_)
                                        (_%__kont216748216749%_)))))
                               (_%__match216845216846%_
                                (lambda (_%$%e214600214652%_
                                         _%$%hd214601214655%_
                                         _%$%tl214602214657%_
                                         _%$%e214603214660%_
                                         _%$%hd214604214663%_
                                         _%$%tl214605214665%_
                                         _%$%e214606214668%_
                                         _%$%hd214607214671%_
                                         _%$%tl214608214673%_
                                         _%$%e214609214676%_
                                         _%$%hd214610214679%_
                                         _%$%tl214611214681%_
                                         _%$%e214612214684%_
                                         _%$%hd214613214687%_
                                         _%$%tl214614214689%_
                                         _%$%e214615214692%_
                                         _%$%hd214616214695%_
                                         _%$%tl214617214697%_
                                         _%$%e214618214700%_
                                         _%$%hd214619214703%_
                                         _%$%tl214620214705%_
                                         _%$%e214621214708%_
                                         _%$%hd214622214711%_
                                         _%$%tl214623214713%_
                                         _%$%e214624214716%_
                                         _%$%hd214625214719%_
                                         _%$%tl214626214721%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl214620214705%_))
                                      (let ((_%$%e214627214724%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl214620214705%_))))
                                        (let ((_%$%tl214629214729%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e214627214724%_)))
                                              (_%$%hd214628214727%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e214627214724%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%hd214628214727%_))
                                              (let ((_%$%e214630214732%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd214628214727%_))))
                                                (let ((_%$%tl214632214737%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e214630214732%_)))
                                                      (_%$%hd214631214735%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e214630214732%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%$%hd214631214735%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%$%hd214631214735%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl214632214737%_))
                      (let ((_%$%e214633214740%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl214632214737%_))))
                        (let ((_%$%tl214635214745%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e214633214740%_)))
                              (_%$%hd214634214743%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e214633214740%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl214635214745%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl214629214729%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl214605214665%_))
                                      (_%__match216873216874%_
                                       _%$%e214600214652%_
                                       _%$%hd214601214655%_
                                       _%$%tl214602214657%_
                                       _%$%e214603214660%_
                                       _%$%hd214604214663%_
                                       _%$%tl214605214665%_
                                       _%$%e214606214668%_
                                       _%$%hd214607214671%_
                                       _%$%tl214608214673%_
                                       _%$%e214609214676%_
                                       _%$%hd214610214679%_
                                       _%$%tl214611214681%_
                                       _%$%e214612214684%_
                                       _%$%hd214613214687%_
                                       _%$%tl214614214689%_
                                       _%$%e214615214692%_
                                       _%$%hd214616214695%_
                                       _%$%tl214617214697%_
                                       _%$%e214618214700%_
                                       _%$%hd214619214703%_
                                       _%$%tl214620214705%_
                                       _%$%e214621214708%_
                                       _%$%hd214622214711%_
                                       _%$%tl214623214713%_
                                       _%$%e214624214716%_
                                       _%$%hd214625214719%_
                                       _%$%tl214626214721%_
                                       _%$%e214627214724%_
                                       _%$%hd214628214727%_
                                       _%$%tl214629214729%_
                                       _%$%e214630214732%_
                                       _%$%hd214631214735%_
                                       _%$%tl214632214737%_
                                       _%$%e214633214740%_
                                       _%$%hd214634214743%_
                                       _%$%tl214635214745%_)
                                      (_%__kont216748216749%_))
                                  (_%__kont216748216749%_))
                              (_%__kont216748216749%_))))
                      (_%__kont216748216749%_))
                  (_%__kont216748216749%_))
              (_%__kont216748216749%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont216748216749%_))))
                                      (_%__kont216748216749%_))))
                               (_%__match216775216776%_
                                (lambda (_%$%e214536214793%_
                                         _%$%hd214537214796%_
                                         _%$%tl214538214798%_
                                         _%__splice216742216743%_
                                         _%$%target214539214801%_
                                         _%$%tl214541214803%_)
                                  (letrec ((_%$%loop214542214806%_
                                            (lambda (_%$%hd214540214809%_
                                                     _%$%arg214546214811%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd214540214809%_))
                                                  (let ((_%$%e214543214813%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd214540214809%_))))
                                                    (let ((_%$%lp-tl214545214818%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e214543214813%_)))
                                                          (_%$%lp-hd214544214816%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e214543214813%_))))
                                                      (_%$%loop214542214806%_
                                                       _%$%lp-tl214545214818%_
                                                       (cons _%$%lp-hd214544214816%_
                                                             _%$%arg214546214811%_))))
                                                  (let ((_%$%arg214547214821%_
                                                         (reverse _%$%arg214546214811%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl214538214798%_))
                                                        (let ((_%$%e214548214823%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl214538214798%_))))
                  (let ((_%$%tl214550214828%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e214548214823%_)))
                        (_%$%hd214549214826%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e214548214823%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd214549214826%_))
                        (let ((_%$%e214551214831%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd214549214826%_))))
                          (let ((_%$%tl214553214836%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e214551214831%_)))
                                (_%$%hd214552214834%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e214551214831%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd214552214834%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq?
                                       '%#call
                                       _%$%hd214552214834%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl214553214836%_))
                                        (let ((_%$%e214554214839%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl214553214836%_))))
                                          (let ((_%$%tl214556214844%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e214554214839%_)))
                                                (_%$%hd214555214842%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e214554214839%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd214555214842%_))
                                                (let ((_%$%e214557214847%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd214555214842%_))))
                                                  (let ((_%$%tl214559214852%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e214557214847%_)))
                                                        (_%$%hd214558214850%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e214557214847%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd214558214850%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%$%hd214558214850%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl214559214852%_))
                        (let ((_%$%e214560214855%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl214559214852%_))))
                          (let ((_%$%tl214562214860%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e214560214855%_)))
                                (_%$%hd214561214858%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e214560214855%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl214562214860%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl214556214844%_))
                                    (let ((_%$%e214563214863%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%tl214556214844%_))))
                                      (let ((_%$%tl214565214868%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e214563214863%_)))
                                            (_%$%hd214564214866%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e214563214863%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%hd214564214866%_))
                                            (let ((_%$%e214566214871%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%hd214564214866%_))))
                                              (let ((_%$%tl214568214876%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e214566214871%_)))
                                                    (_%$%hd214567214874%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e214566214871%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%$%hd214567214874%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%$%hd214567214874%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl214568214876%_))
                                                            (let ((_%$%e214569214879%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl214568214876%_))))
                      (let ((_%$%tl214571214884%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e214569214879%_)))
                            (_%$%hd214570214882%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e214569214879%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl214571214884%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%$%tl214565214868%_))
                                (if (let ((__tmp218012
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%$%tl214565214868%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp218012 '1))
                                    (let ((_%__splice216744216745%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%$%tl214565214868%_
                                              '1))))
                                      (let ((_%$%tl214574214889%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice216744216745%_
                                                '1)))
                                            (_%$%target214572214887%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice216744216745%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl214574214889%_))
                                            (let ((_%$%e214581214892%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl214574214889%_))))
                                              (let ((_%$%tl214583214897%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e214581214892%_)))
                                                    (_%$%hd214582214895%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e214581214892%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%hd214582214895%_))
                                                    (let ((_%$%e214584214900%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd214582214895%_))))
                                                      (let ((_%$%tl214586214905%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e214584214900%_)))
                    (_%$%hd214585214903%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e214584214900%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%$%hd214585214903%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%$%hd214585214903%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl214586214905%_))
                            (let ((_%$%e214587214908%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl214586214905%_))))
                              (let ((_%$%tl214589214913%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e214587214908%_)))
                                    (_%$%hd214588214911%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e214587214908%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl214589214913%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl214583214897%_))
                                        (letrec ((_%$%loop214575214916%_
                                                  (lambda (_%$%hd214573214919%_
                                                           _%$%xarg214579214921%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd214573214919%_))
                                                        (let ((_%$%e214576214923%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd214573214919%_))))
                  (let ((_%$%lp-tl214578214928%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e214576214923%_)))
                        (_%$%lp-hd214577214926%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e214576214923%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd214577214926%_))
                        (let ((_%$%e214590214931%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%lp-hd214577214926%_))))
                          (let ((_%$%tl214592214936%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e214590214931%_)))
                                (_%$%hd214591214934%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e214590214931%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd214591214934%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%$%hd214591214934%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl214592214936%_))
                                        (let ((_%$%e214593214939%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl214592214936%_))))
                                          (let ((_%$%tl214595214944%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e214593214939%_)))
                                                (_%$%hd214594214942%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e214593214939%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl214595214944%_))
                                                (_%$%loop214575214916%_
                                                 _%$%lp-tl214578214928%_
                                                 (cons _%$%hd214594214942%_
                                                       _%$%xarg214579214921%_))
                                                (_%__match216845216846%_
                                                 _%$%e214536214793%_
                                                 _%$%hd214537214796%_
                                                 _%$%tl214538214798%_
                                                 _%$%e214548214823%_
                                                 _%$%hd214549214826%_
                                                 _%$%tl214550214828%_
                                                 _%$%e214551214831%_
                                                 _%$%hd214552214834%_
                                                 _%$%tl214553214836%_
                                                 _%$%e214554214839%_
                                                 _%$%hd214555214842%_
                                                 _%$%tl214556214844%_
                                                 _%$%e214557214847%_
                                                 _%$%hd214558214850%_
                                                 _%$%tl214559214852%_
                                                 _%$%e214560214855%_
                                                 _%$%hd214561214858%_
                                                 _%$%tl214562214860%_
                                                 _%$%e214563214863%_
                                                 _%$%hd214564214866%_
                                                 _%$%tl214565214868%_
                                                 _%$%e214566214871%_
                                                 _%$%hd214567214874%_
                                                 _%$%tl214568214876%_
                                                 _%$%e214569214879%_
                                                 _%$%hd214570214882%_
                                                 _%$%tl214571214884%_))))
                                        (_%__match216845216846%_
                                         _%$%e214536214793%_
                                         _%$%hd214537214796%_
                                         _%$%tl214538214798%_
                                         _%$%e214548214823%_
                                         _%$%hd214549214826%_
                                         _%$%tl214550214828%_
                                         _%$%e214551214831%_
                                         _%$%hd214552214834%_
                                         _%$%tl214553214836%_
                                         _%$%e214554214839%_
                                         _%$%hd214555214842%_
                                         _%$%tl214556214844%_
                                         _%$%e214557214847%_
                                         _%$%hd214558214850%_
                                         _%$%tl214559214852%_
                                         _%$%e214560214855%_
                                         _%$%hd214561214858%_
                                         _%$%tl214562214860%_
                                         _%$%e214563214863%_
                                         _%$%hd214564214866%_
                                         _%$%tl214565214868%_
                                         _%$%e214566214871%_
                                         _%$%hd214567214874%_
                                         _%$%tl214568214876%_
                                         _%$%e214569214879%_
                                         _%$%hd214570214882%_
                                         _%$%tl214571214884%_))
                                    (_%__match216845216846%_
                                     _%$%e214536214793%_
                                     _%$%hd214537214796%_
                                     _%$%tl214538214798%_
                                     _%$%e214548214823%_
                                     _%$%hd214549214826%_
                                     _%$%tl214550214828%_
                                     _%$%e214551214831%_
                                     _%$%hd214552214834%_
                                     _%$%tl214553214836%_
                                     _%$%e214554214839%_
                                     _%$%hd214555214842%_
                                     _%$%tl214556214844%_
                                     _%$%e214557214847%_
                                     _%$%hd214558214850%_
                                     _%$%tl214559214852%_
                                     _%$%e214560214855%_
                                     _%$%hd214561214858%_
                                     _%$%tl214562214860%_
                                     _%$%e214563214863%_
                                     _%$%hd214564214866%_
                                     _%$%tl214565214868%_
                                     _%$%e214566214871%_
                                     _%$%hd214567214874%_
                                     _%$%tl214568214876%_
                                     _%$%e214569214879%_
                                     _%$%hd214570214882%_
                                     _%$%tl214571214884%_))
                                (_%__match216845216846%_
                                 _%$%e214536214793%_
                                 _%$%hd214537214796%_
                                 _%$%tl214538214798%_
                                 _%$%e214548214823%_
                                 _%$%hd214549214826%_
                                 _%$%tl214550214828%_
                                 _%$%e214551214831%_
                                 _%$%hd214552214834%_
                                 _%$%tl214553214836%_
                                 _%$%e214554214839%_
                                 _%$%hd214555214842%_
                                 _%$%tl214556214844%_
                                 _%$%e214557214847%_
                                 _%$%hd214558214850%_
                                 _%$%tl214559214852%_
                                 _%$%e214560214855%_
                                 _%$%hd214561214858%_
                                 _%$%tl214562214860%_
                                 _%$%e214563214863%_
                                 _%$%hd214564214866%_
                                 _%$%tl214565214868%_
                                 _%$%e214566214871%_
                                 _%$%hd214567214874%_
                                 _%$%tl214568214876%_
                                 _%$%e214569214879%_
                                 _%$%hd214570214882%_
                                 _%$%tl214571214884%_))))
                        (_%__match216845216846%_
                         _%$%e214536214793%_
                         _%$%hd214537214796%_
                         _%$%tl214538214798%_
                         _%$%e214548214823%_
                         _%$%hd214549214826%_
                         _%$%tl214550214828%_
                         _%$%e214551214831%_
                         _%$%hd214552214834%_
                         _%$%tl214553214836%_
                         _%$%e214554214839%_
                         _%$%hd214555214842%_
                         _%$%tl214556214844%_
                         _%$%e214557214847%_
                         _%$%hd214558214850%_
                         _%$%tl214559214852%_
                         _%$%e214560214855%_
                         _%$%hd214561214858%_
                         _%$%tl214562214860%_
                         _%$%e214563214863%_
                         _%$%hd214564214866%_
                         _%$%tl214565214868%_
                         _%$%e214566214871%_
                         _%$%hd214567214874%_
                         _%$%tl214568214876%_
                         _%$%e214569214879%_
                         _%$%hd214570214882%_
                         _%$%tl214571214884%_))))
                (let ((_%$%xarg214580214947%_
                       (reverse _%$%xarg214579214921%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl214550214828%_))
                      (let ((_%$%g214530214949%_ _%$%hd214588214911%_)
                            (_%$%g214531214950%_ _%$%xarg214580214947%_)
                            (_%$%g214532214951%_ _%$%hd214570214882%_)
                            (_%$%g214533214952%_ _%$%hd214561214858%_)
                            (_%$%g214534214953%_ _%$%tl214541214803%_)
                            (_%$%g214535214954%_ _%$%arg214547214821%_))
                        (if (and (let ((__tmp218013
                                        (let ((__tmp218014
                                               (lambda (_%$%g214997215000%_
                                                        _%$%g214998215002%_)
                                                 (cons _%$%g214997215000%_
                                                       _%$%g214998215002%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp218014
                                           '()
                                           _%$%g214535214954%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp218013))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%$%g214534214953%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%$%g214533214952%_
                                    'apply))
                                 (let ((__tmp218017
                                        (length (let ((__tmp218018
                                                       (lambda (_%$%g215004215007%_
                                                                _%$%g215005215009%_)
                                                         (cons _%$%g215004215007%_
                                                               _%$%g215005215009%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp218018
                                                   '()
                                                   _%$%g214535214954%_))))
                                       (__tmp218015
                                        (length (let ((__tmp218016
                                                       (lambda (_%$%g215011215014%_
                                                                _%$%g215012215016%_)
                                                         (cons _%$%g215011215014%_
                                                               _%$%g215012215016%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp218016
                                                   '()
                                                   _%$%g214531214950%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp218017 __tmp218015))
                                 (let ((__tmp218021
                                        (let ((__tmp218022
                                               (lambda (_%$%g215018215021%_
                                                        _%$%g215019215023%_)
                                                 (cons _%$%g215018215021%_
                                                       _%$%g215019215023%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp218022
                                           '()
                                           _%$%g214535214954%_)))
                                       (__tmp218019
                                        (let ((__tmp218020
                                               (lambda (_%$%g215025215028%_
                                                        _%$%g215026215030%_)
                                                 (cons _%$%g215025215028%_
                                                       _%$%g215026215030%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp218020
                                           '()
                                           _%$%g214531214950%_))))
                                   (declare (not safe))
                                   (andmap__1
                                    gx#free-identifier=?
                                    __tmp218021
                                    __tmp218019))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g214534214953%_
                                    _%$%g214530214949%_))
                                 (not (let ((__tmp218026
                                             (lambda (_%$%g215032215034%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%$%g215032215034%_
                                                  _%$%g214532214951%_))))
                                            (__tmp218023
                                             (let ((__tmp218025
                                                    (lambda (_%$%g215036215039%_
                                                             _%$%g215037215041%_)
                                                      (cons _%$%g215036215039%_
                                                            _%$%g215037215041%_)))
                                                   (__tmp218024
                                                    (cons _%$%g214534214953%_
                                                          '())))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp218025
                                                __tmp218024
                                                _%$%g214535214954%_))))
                                        (declare (not safe))
                                        (__find __tmp218026 __tmp218023))))
                            (_%__kont216740216741%_
                             _%$%g214530214949%_
                             _%$%g214531214950%_
                             _%$%g214532214951%_
                             _%$%g214533214952%_
                             _%$%g214534214953%_
                             _%$%g214535214954%_)
                            (_%__match216845216846%_
                             _%$%e214536214793%_
                             _%$%hd214537214796%_
                             _%$%tl214538214798%_
                             _%$%e214548214823%_
                             _%$%hd214549214826%_
                             _%$%tl214550214828%_
                             _%$%e214551214831%_
                             _%$%hd214552214834%_
                             _%$%tl214553214836%_
                             _%$%e214554214839%_
                             _%$%hd214555214842%_
                             _%$%tl214556214844%_
                             _%$%e214557214847%_
                             _%$%hd214558214850%_
                             _%$%tl214559214852%_
                             _%$%e214560214855%_
                             _%$%hd214561214858%_
                             _%$%tl214562214860%_
                             _%$%e214563214863%_
                             _%$%hd214564214866%_
                             _%$%tl214565214868%_
                             _%$%e214566214871%_
                             _%$%hd214567214874%_
                             _%$%tl214568214876%_
                             _%$%e214569214879%_
                             _%$%hd214570214882%_
                             _%$%tl214571214884%_)))
                      (_%__match216845216846%_
                       _%$%e214536214793%_
                       _%$%hd214537214796%_
                       _%$%tl214538214798%_
                       _%$%e214548214823%_
                       _%$%hd214549214826%_
                       _%$%tl214550214828%_
                       _%$%e214551214831%_
                       _%$%hd214552214834%_
                       _%$%tl214553214836%_
                       _%$%e214554214839%_
                       _%$%hd214555214842%_
                       _%$%tl214556214844%_
                       _%$%e214557214847%_
                       _%$%hd214558214850%_
                       _%$%tl214559214852%_
                       _%$%e214560214855%_
                       _%$%hd214561214858%_
                       _%$%tl214562214860%_
                       _%$%e214563214863%_
                       _%$%hd214564214866%_
                       _%$%tl214565214868%_
                       _%$%e214566214871%_
                       _%$%hd214567214874%_
                       _%$%tl214568214876%_
                       _%$%e214569214879%_
                       _%$%hd214570214882%_
                       _%$%tl214571214884%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop214575214916%_
                                           _%$%target214572214887%_
                                           '()))
                                        (_%__match216845216846%_
                                         _%$%e214536214793%_
                                         _%$%hd214537214796%_
                                         _%$%tl214538214798%_
                                         _%$%e214548214823%_
                                         _%$%hd214549214826%_
                                         _%$%tl214550214828%_
                                         _%$%e214551214831%_
                                         _%$%hd214552214834%_
                                         _%$%tl214553214836%_
                                         _%$%e214554214839%_
                                         _%$%hd214555214842%_
                                         _%$%tl214556214844%_
                                         _%$%e214557214847%_
                                         _%$%hd214558214850%_
                                         _%$%tl214559214852%_
                                         _%$%e214560214855%_
                                         _%$%hd214561214858%_
                                         _%$%tl214562214860%_
                                         _%$%e214563214863%_
                                         _%$%hd214564214866%_
                                         _%$%tl214565214868%_
                                         _%$%e214566214871%_
                                         _%$%hd214567214874%_
                                         _%$%tl214568214876%_
                                         _%$%e214569214879%_
                                         _%$%hd214570214882%_
                                         _%$%tl214571214884%_))
                                    (_%__match216845216846%_
                                     _%$%e214536214793%_
                                     _%$%hd214537214796%_
                                     _%$%tl214538214798%_
                                     _%$%e214548214823%_
                                     _%$%hd214549214826%_
                                     _%$%tl214550214828%_
                                     _%$%e214551214831%_
                                     _%$%hd214552214834%_
                                     _%$%tl214553214836%_
                                     _%$%e214554214839%_
                                     _%$%hd214555214842%_
                                     _%$%tl214556214844%_
                                     _%$%e214557214847%_
                                     _%$%hd214558214850%_
                                     _%$%tl214559214852%_
                                     _%$%e214560214855%_
                                     _%$%hd214561214858%_
                                     _%$%tl214562214860%_
                                     _%$%e214563214863%_
                                     _%$%hd214564214866%_
                                     _%$%tl214565214868%_
                                     _%$%e214566214871%_
                                     _%$%hd214567214874%_
                                     _%$%tl214568214876%_
                                     _%$%e214569214879%_
                                     _%$%hd214570214882%_
                                     _%$%tl214571214884%_))))
                            (_%__match216845216846%_
                             _%$%e214536214793%_
                             _%$%hd214537214796%_
                             _%$%tl214538214798%_
                             _%$%e214548214823%_
                             _%$%hd214549214826%_
                             _%$%tl214550214828%_
                             _%$%e214551214831%_
                             _%$%hd214552214834%_
                             _%$%tl214553214836%_
                             _%$%e214554214839%_
                             _%$%hd214555214842%_
                             _%$%tl214556214844%_
                             _%$%e214557214847%_
                             _%$%hd214558214850%_
                             _%$%tl214559214852%_
                             _%$%e214560214855%_
                             _%$%hd214561214858%_
                             _%$%tl214562214860%_
                             _%$%e214563214863%_
                             _%$%hd214564214866%_
                             _%$%tl214565214868%_
                             _%$%e214566214871%_
                             _%$%hd214567214874%_
                             _%$%tl214568214876%_
                             _%$%e214569214879%_
                             _%$%hd214570214882%_
                             _%$%tl214571214884%_))
                        (_%__match216845216846%_
                         _%$%e214536214793%_
                         _%$%hd214537214796%_
                         _%$%tl214538214798%_
                         _%$%e214548214823%_
                         _%$%hd214549214826%_
                         _%$%tl214550214828%_
                         _%$%e214551214831%_
                         _%$%hd214552214834%_
                         _%$%tl214553214836%_
                         _%$%e214554214839%_
                         _%$%hd214555214842%_
                         _%$%tl214556214844%_
                         _%$%e214557214847%_
                         _%$%hd214558214850%_
                         _%$%tl214559214852%_
                         _%$%e214560214855%_
                         _%$%hd214561214858%_
                         _%$%tl214562214860%_
                         _%$%e214563214863%_
                         _%$%hd214564214866%_
                         _%$%tl214565214868%_
                         _%$%e214566214871%_
                         _%$%hd214567214874%_
                         _%$%tl214568214876%_
                         _%$%e214569214879%_
                         _%$%hd214570214882%_
                         _%$%tl214571214884%_))
                    (_%__match216845216846%_
                     _%$%e214536214793%_
                     _%$%hd214537214796%_
                     _%$%tl214538214798%_
                     _%$%e214548214823%_
                     _%$%hd214549214826%_
                     _%$%tl214550214828%_
                     _%$%e214551214831%_
                     _%$%hd214552214834%_
                     _%$%tl214553214836%_
                     _%$%e214554214839%_
                     _%$%hd214555214842%_
                     _%$%tl214556214844%_
                     _%$%e214557214847%_
                     _%$%hd214558214850%_
                     _%$%tl214559214852%_
                     _%$%e214560214855%_
                     _%$%hd214561214858%_
                     _%$%tl214562214860%_
                     _%$%e214563214863%_
                     _%$%hd214564214866%_
                     _%$%tl214565214868%_
                     _%$%e214566214871%_
                     _%$%hd214567214874%_
                     _%$%tl214568214876%_
                     _%$%e214569214879%_
                     _%$%hd214570214882%_
                     _%$%tl214571214884%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match216845216846%_
                                                     _%$%e214536214793%_
                                                     _%$%hd214537214796%_
                                                     _%$%tl214538214798%_
                                                     _%$%e214548214823%_
                                                     _%$%hd214549214826%_
                                                     _%$%tl214550214828%_
                                                     _%$%e214551214831%_
                                                     _%$%hd214552214834%_
                                                     _%$%tl214553214836%_
                                                     _%$%e214554214839%_
                                                     _%$%hd214555214842%_
                                                     _%$%tl214556214844%_
                                                     _%$%e214557214847%_
                                                     _%$%hd214558214850%_
                                                     _%$%tl214559214852%_
                                                     _%$%e214560214855%_
                                                     _%$%hd214561214858%_
                                                     _%$%tl214562214860%_
                                                     _%$%e214563214863%_
                                                     _%$%hd214564214866%_
                                                     _%$%tl214565214868%_
                                                     _%$%e214566214871%_
                                                     _%$%hd214567214874%_
                                                     _%$%tl214568214876%_
                                                     _%$%e214569214879%_
                                                     _%$%hd214570214882%_
                                                     _%$%tl214571214884%_))))
                                            (_%__match216845216846%_
                                             _%$%e214536214793%_
                                             _%$%hd214537214796%_
                                             _%$%tl214538214798%_
                                             _%$%e214548214823%_
                                             _%$%hd214549214826%_
                                             _%$%tl214550214828%_
                                             _%$%e214551214831%_
                                             _%$%hd214552214834%_
                                             _%$%tl214553214836%_
                                             _%$%e214554214839%_
                                             _%$%hd214555214842%_
                                             _%$%tl214556214844%_
                                             _%$%e214557214847%_
                                             _%$%hd214558214850%_
                                             _%$%tl214559214852%_
                                             _%$%e214560214855%_
                                             _%$%hd214561214858%_
                                             _%$%tl214562214860%_
                                             _%$%e214563214863%_
                                             _%$%hd214564214866%_
                                             _%$%tl214565214868%_
                                             _%$%e214566214871%_
                                             _%$%hd214567214874%_
                                             _%$%tl214568214876%_
                                             _%$%e214569214879%_
                                             _%$%hd214570214882%_
                                             _%$%tl214571214884%_))))
                                    (_%__match216845216846%_
                                     _%$%e214536214793%_
                                     _%$%hd214537214796%_
                                     _%$%tl214538214798%_
                                     _%$%e214548214823%_
                                     _%$%hd214549214826%_
                                     _%$%tl214550214828%_
                                     _%$%e214551214831%_
                                     _%$%hd214552214834%_
                                     _%$%tl214553214836%_
                                     _%$%e214554214839%_
                                     _%$%hd214555214842%_
                                     _%$%tl214556214844%_
                                     _%$%e214557214847%_
                                     _%$%hd214558214850%_
                                     _%$%tl214559214852%_
                                     _%$%e214560214855%_
                                     _%$%hd214561214858%_
                                     _%$%tl214562214860%_
                                     _%$%e214563214863%_
                                     _%$%hd214564214866%_
                                     _%$%tl214565214868%_
                                     _%$%e214566214871%_
                                     _%$%hd214567214874%_
                                     _%$%tl214568214876%_
                                     _%$%e214569214879%_
                                     _%$%hd214570214882%_
                                     _%$%tl214571214884%_))
                                (_%__match216845216846%_
                                 _%$%e214536214793%_
                                 _%$%hd214537214796%_
                                 _%$%tl214538214798%_
                                 _%$%e214548214823%_
                                 _%$%hd214549214826%_
                                 _%$%tl214550214828%_
                                 _%$%e214551214831%_
                                 _%$%hd214552214834%_
                                 _%$%tl214553214836%_
                                 _%$%e214554214839%_
                                 _%$%hd214555214842%_
                                 _%$%tl214556214844%_
                                 _%$%e214557214847%_
                                 _%$%hd214558214850%_
                                 _%$%tl214559214852%_
                                 _%$%e214560214855%_
                                 _%$%hd214561214858%_
                                 _%$%tl214562214860%_
                                 _%$%e214563214863%_
                                 _%$%hd214564214866%_
                                 _%$%tl214565214868%_
                                 _%$%e214566214871%_
                                 _%$%hd214567214874%_
                                 _%$%tl214568214876%_
                                 _%$%e214569214879%_
                                 _%$%hd214570214882%_
                                 _%$%tl214571214884%_))
                            (_%__kont216748216749%_))))
                    (_%__kont216748216749%_))
                (_%__kont216748216749%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont216748216749%_))))
                                            (_%__kont216748216749%_))))
                                    (_%__kont216748216749%_))
                                (_%__kont216748216749%_))))
                        (_%__kont216748216749%_))
                    (_%__kont216748216749%_))
                (_%__kont216748216749%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont216748216749%_))))
                                        (_%__kont216748216749%_))
                                    (_%__kont216748216749%_))
                                (_%__kont216748216749%_))))
                        (_%__kont216748216749%_))))
                (_%__kont216748216749%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%loop214542214806%_
                                     _%$%target214539214801%_
                                     '()))))
                               (_%__match216763216764%_
                                (lambda (_%$%e214488215049%_
                                         _%$%hd214489215052%_
                                         _%$%tl214490215054%_
                                         _%__splice216736216737%_
                                         _%$%target214491215057%_
                                         _%$%tl214493215059%_)
                                  (letrec ((_%$%loop214494215062%_
                                            (lambda (_%$%hd214492215065%_
                                                     _%$%arg214498215067%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd214492215065%_))
                                                  (let ((_%$%e214495215069%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd214492215065%_))))
                                                    (let ((_%$%lp-tl214497215074%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e214495215069%_)))
                                                          (_%$%lp-hd214496215072%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e214495215069%_))))
                                                      (_%$%loop214494215062%_
                                                       _%$%lp-tl214497215074%_
                                                       (cons _%$%lp-hd214496215072%_
                                                             _%$%arg214498215067%_))))
                                                  (let ((_%$%arg214499215077%_
                                                         (reverse _%$%arg214498215067%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl214490215054%_))
                                                        (let ((_%$%e214500215079%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl214490215054%_))))
                  (let ((_%$%tl214502215084%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e214500215079%_)))
                        (_%$%hd214501215082%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e214500215079%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd214501215082%_))
                        (let ((_%$%e214503215087%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd214501215082%_))))
                          (let ((_%$%tl214505215092%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e214503215087%_)))
                                (_%$%hd214504215090%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e214503215087%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd214504215090%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq?
                                       '%#call
                                       _%$%hd214504215090%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl214505215092%_))
                                        (let ((_%$%e214506215095%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl214505215092%_))))
                                          (let ((_%$%tl214508215100%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e214506215095%_)))
                                                (_%$%hd214507215098%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e214506215095%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd214507215098%_))
                                                (let ((_%$%e214509215103%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd214507215098%_))))
                                                  (let ((_%$%tl214511215108%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e214509215103%_)))
                                                        (_%$%hd214510215106%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e214509215103%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd214510215106%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%$%hd214510215106%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl214511215108%_))
                        (let ((_%$%e214512215111%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl214511215108%_))))
                          (let ((_%$%tl214514215116%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e214512215111%_)))
                                (_%$%hd214513215114%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e214512215111%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl214514215116%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%$%tl214508215100%_))
                                    (let ((_%__splice216738216739%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%$%tl214508215100%_
                                              '0))))
                                      (let ((_%$%tl214517215121%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice216738216739%_
                                                '1)))
                                            (_%$%target214515215119%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice216738216739%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl214517215121%_))
                                            (letrec ((_%$%loop214518215124%_
                                                      (lambda (_%$%hd214516215127%_
                                                               _%$%xarg214522215129%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%hd214516215127%_))
                                                            (let ((_%$%e214519215131%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%hd214516215127%_))))
                      (let ((_%$%lp-tl214521215136%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e214519215131%_)))
                            (_%$%lp-hd214520215134%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e214519215131%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%lp-hd214520215134%_))
                            (let ((_%$%e214524215139%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%lp-hd214520215134%_))))
                              (let ((_%$%tl214526215144%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e214524215139%_)))
                                    (_%$%hd214525215142%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e214524215139%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd214525215142%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%$%hd214525215142%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl214526215144%_))
                                            (let ((_%$%e214527215147%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl214526215144%_))))
                                              (let ((_%$%tl214529215152%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e214527215147%_)))
                                                    (_%$%hd214528215150%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e214527215147%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl214529215152%_))
                                                    (_%$%loop214518215124%_
                                                     _%$%lp-tl214521215136%_
                                                     (cons _%$%hd214528215150%_
                                                           _%$%xarg214522215129%_))
                                                    (_%__match216775216776%_
                                                     _%$%e214488215049%_
                                                     _%$%hd214489215052%_
                                                     _%$%tl214490215054%_
                                                     _%__splice216736216737%_
                                                     _%$%target214491215057%_
                                                     _%$%tl214493215059%_))))
                                            (_%__match216775216776%_
                                             _%$%e214488215049%_
                                             _%$%hd214489215052%_
                                             _%$%tl214490215054%_
                                             _%__splice216736216737%_
                                             _%$%target214491215057%_
                                             _%$%tl214493215059%_))
                                        (_%__match216775216776%_
                                         _%$%e214488215049%_
                                         _%$%hd214489215052%_
                                         _%$%tl214490215054%_
                                         _%__splice216736216737%_
                                         _%$%target214491215057%_
                                         _%$%tl214493215059%_))
                                    (_%__match216775216776%_
                                     _%$%e214488215049%_
                                     _%$%hd214489215052%_
                                     _%$%tl214490215054%_
                                     _%__splice216736216737%_
                                     _%$%target214491215057%_
                                     _%$%tl214493215059%_))))
                            (_%__match216775216776%_
                             _%$%e214488215049%_
                             _%$%hd214489215052%_
                             _%$%tl214490215054%_
                             _%__splice216736216737%_
                             _%$%target214491215057%_
                             _%$%tl214493215059%_))))
                    (let ((_%$%xarg214523215155%_
                           (reverse _%$%xarg214522215129%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl214502215084%_))
                          (let ((_%$%g214485215157%_ _%$%xarg214523215155%_)
                                (_%$%g214486215158%_ _%$%hd214513215114%_)
                                (_%$%g214487215159%_ _%$%arg214499215077%_))
                            (if (and (let ((__tmp218027
                                            (let ((__tmp218028
                                                   (lambda (_%$%g215187215190%_
                                                            _%$%g215188215192%_)
                                                     (cons _%$%g215187215190%_
                                                           _%$%g215188215192%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp218028
                                               '()
                                               _%$%g214487215159%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp218027))
                                     (let ((__tmp218031
                                            (length (let ((__tmp218032
                                                           (lambda (_%$%g215194215197%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g215195215199%_)
                     (cons _%$%g215194215197%_ _%$%g215195215199%_))))
              (declare (not safe))
              (foldr__0 __tmp218032 '() _%$%g214487215159%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp218029
                                            (length (let ((__tmp218030
                                                           (lambda (_%$%g215201215204%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g215202215206%_)
                     (cons _%$%g215201215204%_ _%$%g215202215206%_))))
              (declare (not safe))
              (foldr__0 __tmp218030 '() _%$%g214485215157%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp218031 __tmp218029))
                                     (let ((__tmp218035
                                            (let ((__tmp218036
                                                   (lambda (_%$%g215208215211%_
                                                            _%$%g215209215213%_)
                                                     (cons _%$%g215208215211%_
                                                           _%$%g215209215213%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp218036
                                               '()
                                               _%$%g214487215159%_)))
                                           (__tmp218033
                                            (let ((__tmp218034
                                                   (lambda (_%$%g215215215218%_
                                                            _%$%g215216215220%_)
                                                     (cons _%$%g215215215218%_
                                                           _%$%g215216215220%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp218034
                                               '()
                                               _%$%g214485215157%_))))
                                       (declare (not safe))
                                       (andmap__1
                                        gx#free-identifier=?
                                        __tmp218035
                                        __tmp218033))
                                     (not (let ((__tmp218039
                                                 (lambda (_%$%g215222215224%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%$%g215222215224%_
                                                      _%$%g214486215158%_))))
                                                (__tmp218037
                                                 (let ((__tmp218038
                                                        (lambda (_%$%g215226215229%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g215227215231%_)
                  (cons _%$%g215226215229%_ _%$%g215227215231%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp218038
                                                    '()
                                                    _%$%g214487215159%_))))
                                            (declare (not safe))
                                            (__find __tmp218039 __tmp218037))))
                                (_%__kont216734216735%_
                                 _%$%g214485215157%_
                                 _%$%g214486215158%_
                                 _%$%g214487215159%_)
                                (_%__match216775216776%_
                                 _%$%e214488215049%_
                                 _%$%hd214489215052%_
                                 _%$%tl214490215054%_
                                 _%__splice216736216737%_
                                 _%$%target214491215057%_
                                 _%$%tl214493215059%_)))
                          (_%__match216775216776%_
                           _%$%e214488215049%_
                           _%$%hd214489215052%_
                           _%$%tl214490215054%_
                           _%__splice216736216737%_
                           _%$%target214491215057%_
                           _%$%tl214493215059%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop214518215124%_
                                               _%$%target214515215119%_
                                               '()))
                                            (_%__match216775216776%_
                                             _%$%e214488215049%_
                                             _%$%hd214489215052%_
                                             _%$%tl214490215054%_
                                             _%__splice216736216737%_
                                             _%$%target214491215057%_
                                             _%$%tl214493215059%_))))
                                    (_%__match216775216776%_
                                     _%$%e214488215049%_
                                     _%$%hd214489215052%_
                                     _%$%tl214490215054%_
                                     _%__splice216736216737%_
                                     _%$%target214491215057%_
                                     _%$%tl214493215059%_))
                                (_%__match216775216776%_
                                 _%$%e214488215049%_
                                 _%$%hd214489215052%_
                                 _%$%tl214490215054%_
                                 _%__splice216736216737%_
                                 _%$%target214491215057%_
                                 _%$%tl214493215059%_))))
                        (_%__match216775216776%_
                         _%$%e214488215049%_
                         _%$%hd214489215052%_
                         _%$%tl214490215054%_
                         _%__splice216736216737%_
                         _%$%target214491215057%_
                         _%$%tl214493215059%_))
                    (_%__match216775216776%_
                     _%$%e214488215049%_
                     _%$%hd214489215052%_
                     _%$%tl214490215054%_
                     _%__splice216736216737%_
                     _%$%target214491215057%_
                     _%$%tl214493215059%_))
                (_%__match216775216776%_
                 _%$%e214488215049%_
                 _%$%hd214489215052%_
                 _%$%tl214490215054%_
                 _%__splice216736216737%_
                 _%$%target214491215057%_
                 _%$%tl214493215059%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match216775216776%_
                                                 _%$%e214488215049%_
                                                 _%$%hd214489215052%_
                                                 _%$%tl214490215054%_
                                                 _%__splice216736216737%_
                                                 _%$%target214491215057%_
                                                 _%$%tl214493215059%_))))
                                        (_%__match216775216776%_
                                         _%$%e214488215049%_
                                         _%$%hd214489215052%_
                                         _%$%tl214490215054%_
                                         _%__splice216736216737%_
                                         _%$%target214491215057%_
                                         _%$%tl214493215059%_))
                                    (_%__match216775216776%_
                                     _%$%e214488215049%_
                                     _%$%hd214489215052%_
                                     _%$%tl214490215054%_
                                     _%__splice216736216737%_
                                     _%$%target214491215057%_
                                     _%$%tl214493215059%_))
                                (_%__match216775216776%_
                                 _%$%e214488215049%_
                                 _%$%hd214489215052%_
                                 _%$%tl214490215054%_
                                 _%__splice216736216737%_
                                 _%$%target214491215057%_
                                 _%$%tl214493215059%_))))
                        (_%__match216775216776%_
                         _%$%e214488215049%_
                         _%$%hd214489215052%_
                         _%$%tl214490215054%_
                         _%__splice216736216737%_
                         _%$%target214491215057%_
                         _%$%tl214493215059%_))))
                (_%__match216775216776%_
                 _%$%e214488215049%_
                 _%$%hd214489215052%_
                 _%$%tl214490215054%_
                 _%__splice216736216737%_
                 _%$%target214491215057%_
                 _%$%tl214493215059%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%loop214494215062%_
                                     _%$%target214491215057%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx216732216733%_))
                              (let ((_%$%e214488215049%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx216732216733%_))))
                                (let ((_%$%tl214490215054%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e214488215049%_)))
                                      (_%$%hd214489215052%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e214488215049%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd214489215052%_))
                                      (let ((_%__splice216736216737%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%hd214489215052%_
                                                '0))))
                                        (let ((_%$%tl214493215059%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice216736216737%_
                                                  '1)))
                                              (_%$%target214491215057%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice216736216737%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl214493215059%_))
                                              (_%__match216763216764%_
                                               _%$%e214488215049%_
                                               _%$%hd214489215052%_
                                               _%$%tl214490215054%_
                                               _%__splice216736216737%_
                                               _%$%target214491215057%_
                                               _%$%tl214493215059%_)
                                              (_%__match216775216776%_
                                               _%$%e214488215049%_
                                               _%$%hd214489215052%_
                                               _%$%tl214490215054%_
                                               _%__splice216736216737%_
                                               _%$%target214491215057%_
                                               _%$%tl214493215059%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl214490215054%_))
                                          (let ((_%$%e214603214660%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl214490215054%_))))
                                            (let ((_%$%tl214605214665%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e214603214660%_)))
                                                  (_%$%hd214604214663%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e214603214660%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd214604214663%_))
                                                  (let ((_%$%e214606214668%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd214604214663%_))))
                                                    (let ((_%$%tl214608214673%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e214606214668%_)))
                                                          (_%$%hd214607214671%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e214606214668%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd214607214671%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%$%hd214607214671%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl214608214673%_))
                          (let ((_%$%e214609214676%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl214608214673%_))))
                            (let ((_%$%tl214611214681%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e214609214676%_)))
                                  (_%$%hd214610214679%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e214609214676%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd214610214679%_))
                                  (let ((_%$%e214612214684%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd214610214679%_))))
                                    (let ((_%$%tl214614214689%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e214612214684%_)))
                                          (_%$%hd214613214687%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e214612214684%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd214613214687%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd214613214687%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl214614214689%_))
                                                  (let ((_%$%e214615214692%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl214614214689%_))))
                                                    (let ((_%$%tl214617214697%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e214615214692%_)))
                                                          (_%$%hd214616214695%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e214615214692%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl214617214697%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl214611214681%_))
                      (let ((_%$%e214618214700%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl214611214681%_))))
                        (let ((_%$%tl214620214705%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e214618214700%_)))
                              (_%$%hd214619214703%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e214618214700%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd214619214703%_))
                              (let ((_%$%e214621214708%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd214619214703%_))))
                                (let ((_%$%tl214623214713%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e214621214708%_)))
                                      (_%$%hd214622214711%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e214621214708%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd214622214711%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd214622214711%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl214623214713%_))
                                              (let ((_%$%e214624214716%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl214623214713%_))))
                                                (let ((_%$%tl214626214721%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e214624214716%_)))
                                                      (_%$%hd214625214719%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e214624214716%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl214626214721%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl214620214705%_))
                                                          (let ((_%$%e214627214724%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl214620214705%_))))
                    (let ((_%$%tl214629214729%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e214627214724%_)))
                          (_%$%hd214628214727%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e214627214724%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd214628214727%_))
                          (let ((_%$%e214630214732%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd214628214727%_))))
                            (let ((_%$%tl214632214737%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e214630214732%_)))
                                  (_%$%hd214631214735%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e214630214732%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%$%hd214631214735%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#ref
                                         _%$%hd214631214735%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl214632214737%_))
                                          (let ((_%$%e214633214740%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl214632214737%_))))
                                            (let ((_%$%tl214635214745%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e214633214740%_)))
                                                  (_%$%hd214634214743%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e214633214740%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl214635214745%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl214629214729%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl214605214665%_))
                                                          (_%__match216873216874%_
                                                           _%$%e214488215049%_
                                                           _%$%hd214489215052%_
                                                           _%$%tl214490215054%_
                                                           _%$%e214603214660%_
                                                           _%$%hd214604214663%_
                                                           _%$%tl214605214665%_
                                                           _%$%e214606214668%_
                                                           _%$%hd214607214671%_
                                                           _%$%tl214608214673%_
                                                           _%$%e214609214676%_
                                                           _%$%hd214610214679%_
                                                           _%$%tl214611214681%_
                                                           _%$%e214612214684%_
                                                           _%$%hd214613214687%_
                                                           _%$%tl214614214689%_
                                                           _%$%e214615214692%_
                                                           _%$%hd214616214695%_
                                                           _%$%tl214617214697%_
                                                           _%$%e214618214700%_
                                                           _%$%hd214619214703%_
                                                           _%$%tl214620214705%_
                                                           _%$%e214621214708%_
                                                           _%$%hd214622214711%_
                                                           _%$%tl214623214713%_
                                                           _%$%e214624214716%_
                                                           _%$%hd214625214719%_
                                                           _%$%tl214626214721%_
                                                           _%$%e214627214724%_
                                                           _%$%hd214628214727%_
                                                           _%$%tl214629214729%_
                                                           _%$%e214630214732%_
                                                           _%$%hd214631214735%_
                                                           _%$%tl214632214737%_
                                                           _%$%e214633214740%_
                                                           _%$%hd214634214743%_
                                                           _%$%tl214635214745%_)
                                                          (_%__kont216748216749%_))
                                                      (_%__kont216748216749%_))
                                                  (_%__kont216748216749%_))))
                                          (_%__kont216748216749%_))
                                      (_%__kont216748216749%_))
                                  (_%__kont216748216749%_))))
                          (_%__kont216748216749%_))))
                  (_%__kont216748216749%_))
              (_%__kont216748216749%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont216748216749%_))
                                          (_%__kont216748216749%_))
                                      (_%__kont216748216749%_))))
                              (_%__kont216748216749%_))))
                      (_%__kont216748216749%_))
                  (_%__kont216748216749%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont216748216749%_))
                                              (_%__kont216748216749%_))
                                          (_%__kont216748216749%_))))
                                  (_%__kont216748216749%_))))
                          (_%__kont216748216749%_))
                      (_%__kont216748216749%_))
                  (_%__kont216748216749%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont216748216749%_))))
                                          (_%__kont216748216749%_)))))
                              (_%__kont216748216749%_)))))))
                 (_%dispatch-case-e213798%_
                  (lambda (_%hd213945%_ _%body213946%_)
                    (let* ((_%form213948%_
                            (cons _%hd213945%_ (cons _%body213946%_ '())))
                           (_%__stx216876216877%_ _%form213948%_)
                           (_%$%g213952214076%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx216876216877%_)))))
                      (let ((_%__kont216878216879%_
                             (lambda (_%$%g213954214441%_
                                      _%$%g213955214442%_
                                      _%$%g213956214443%_)
                               (let ((__tmp218040
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%$%g213955214442%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self213794%_
                                  __tmp218040))))
                            (_%__kont216884216885%_
                             (lambda (_%$%g213999214293%_
                                      _%$%g214000214294%_
                                      _%$%g214001214295%_
                                      _%$%g214002214296%_)
                               (let ((__tmp218041
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%$%g213999214293%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self213794%_
                                  __tmp218041))))
                            (_%__kont216888216889%_
                             (lambda (_%$%g214039214161%_
                                      _%$%g214040214162%_
                                      _%$%g214041214163%_)
                               (let ((__tmp218042
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%$%g214039214161%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self213794%_
                                  __tmp218042)))))
                        (let* ((_%__match216985216986%_
                                (lambda (_%$%e214042214081%_
                                         _%$%hd214043214084%_
                                         _%$%tl214044214086%_
                                         _%$%e214045214089%_
                                         _%$%hd214046214092%_
                                         _%$%tl214047214094%_
                                         _%$%e214048214097%_
                                         _%$%hd214049214100%_
                                         _%$%tl214050214102%_
                                         _%$%e214051214105%_
                                         _%$%hd214052214108%_
                                         _%$%tl214053214110%_
                                         _%$%e214054214113%_
                                         _%$%hd214055214116%_
                                         _%$%tl214056214118%_
                                         _%$%e214057214121%_
                                         _%$%hd214058214124%_
                                         _%$%tl214059214126%_
                                         _%$%e214060214129%_
                                         _%$%hd214061214132%_
                                         _%$%tl214062214134%_
                                         _%$%e214063214137%_
                                         _%$%hd214064214140%_
                                         _%$%tl214065214142%_
                                         _%$%e214066214145%_
                                         _%$%hd214067214148%_
                                         _%$%tl214068214150%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl214062214134%_))
                                      (let ((_%$%e214069214153%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl214062214134%_))))
                                        (let ((_%$%tl214071214158%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e214069214153%_)))
                                              (_%$%hd214070214156%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e214069214153%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl214071214158%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl214047214094%_))
                                                  (_%__kont216888216889%_
                                                   _%$%hd214067214148%_
                                                   _%$%hd214058214124%_
                                                   _%$%hd214043214084%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g213952214076%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g213952214076%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g213952214076%_)))))
                               (_%__match216915216916%_
                                (lambda (_%$%e214003214199%_
                                         _%$%hd214004214202%_
                                         _%$%tl214005214204%_
                                         _%__splice216886216887%_
                                         _%$%target214006214207%_
                                         _%$%tl214008214209%_)
                                  (letrec ((_%$%loop214009214212%_
                                            (lambda (_%$%hd214007214215%_
                                                     _%$%arg214013214217%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd214007214215%_))
                                                  (let ((_%$%e214010214219%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd214007214215%_))))
                                                    (let ((_%$%lp-tl214012214224%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e214010214219%_)))
                                                          (_%$%lp-hd214011214222%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e214010214219%_))))
                                                      (_%$%loop214009214212%_
                                                       _%$%lp-tl214012214224%_
                                                       (cons _%$%lp-hd214011214222%_
                                                             _%$%arg214013214217%_))))
                                                  (let ((_%$%arg214014214227%_
                                                         (reverse _%$%arg214013214217%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl214005214204%_))
                                                        (let ((_%$%e214015214229%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl214005214204%_))))
                  (let ((_%$%tl214017214234%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e214015214229%_)))
                        (_%$%hd214016214232%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e214015214229%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd214016214232%_))
                        (let ((_%$%e214018214237%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd214016214232%_))))
                          (let ((_%$%tl214020214242%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e214018214237%_)))
                                (_%$%hd214019214240%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e214018214237%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd214019214240%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq?
                                       '%#call
                                       _%$%hd214019214240%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl214020214242%_))
                                        (let ((_%$%e214021214245%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl214020214242%_))))
                                          (let ((_%$%tl214023214250%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e214021214245%_)))
                                                (_%$%hd214022214248%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e214021214245%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd214022214248%_))
                                                (let ((_%$%e214024214253%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd214022214248%_))))
                                                  (let ((_%$%tl214026214258%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e214024214253%_)))
                                                        (_%$%hd214025214256%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e214024214253%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd214025214256%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%$%hd214025214256%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl214026214258%_))
                        (let ((_%$%e214027214261%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl214026214258%_))))
                          (let ((_%$%tl214029214266%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e214027214261%_)))
                                (_%$%hd214028214264%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e214027214261%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl214029214266%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl214023214250%_))
                                    (let ((_%$%e214030214269%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%tl214023214250%_))))
                                      (let ((_%$%tl214032214274%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e214030214269%_)))
                                            (_%$%hd214031214272%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e214030214269%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%hd214031214272%_))
                                            (let ((_%$%e214033214277%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%hd214031214272%_))))
                                              (let ((_%$%tl214035214282%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e214033214277%_)))
                                                    (_%$%hd214034214280%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e214033214277%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%$%hd214034214280%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%$%hd214034214280%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl214035214282%_))
                                                            (let ((_%$%e214036214285%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl214035214282%_))))
                      (let ((_%$%tl214038214290%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e214036214285%_)))
                            (_%$%hd214037214288%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e214036214285%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl214038214290%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl214017214234%_))
                                (_%__kont216884216885%_
                                 _%$%hd214037214288%_
                                 _%$%hd214028214264%_
                                 _%$%tl214008214209%_
                                 _%$%arg214014214227%_)
                                (_%__match216985216986%_
                                 _%$%e214003214199%_
                                 _%$%hd214004214202%_
                                 _%$%tl214005214204%_
                                 _%$%e214015214229%_
                                 _%$%hd214016214232%_
                                 _%$%tl214017214234%_
                                 _%$%e214018214237%_
                                 _%$%hd214019214240%_
                                 _%$%tl214020214242%_
                                 _%$%e214021214245%_
                                 _%$%hd214022214248%_
                                 _%$%tl214023214250%_
                                 _%$%e214024214253%_
                                 _%$%hd214025214256%_
                                 _%$%tl214026214258%_
                                 _%$%e214027214261%_
                                 _%$%hd214028214264%_
                                 _%$%tl214029214266%_
                                 _%$%e214030214269%_
                                 _%$%hd214031214272%_
                                 _%$%tl214032214274%_
                                 _%$%e214033214277%_
                                 _%$%hd214034214280%_
                                 _%$%tl214035214282%_
                                 _%$%e214036214285%_
                                 _%$%hd214037214288%_
                                 _%$%tl214038214290%_))
                            (let ()
                              (declare (not safe))
                              (_%$%g213952214076%_)))))
                    (let () (declare (not safe)) (_%$%g213952214076%_)))
                (let () (declare (not safe)) (_%$%g213952214076%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g213952214076%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g213952214076%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g213952214076%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g213952214076%_)))))
                        (let () (declare (not safe)) (_%$%g213952214076%_)))
                    (let () (declare (not safe)) (_%$%g213952214076%_)))
                (let () (declare (not safe)) (_%$%g213952214076%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g213952214076%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g213952214076%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g213952214076%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g213952214076%_)))))
                        (let () (declare (not safe)) (_%$%g213952214076%_)))))
                (let () (declare (not safe)) (_%$%g213952214076%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%loop214009214212%_
                                     _%$%target214006214207%_
                                     '()))))
                               (_%__match216903216904%_
                                (lambda (_%$%e213957214333%_
                                         _%$%hd213958214336%_
                                         _%$%tl213959214338%_
                                         _%__splice216880216881%_
                                         _%$%target213960214341%_
                                         _%$%tl213962214343%_)
                                  (letrec ((_%$%loop213963214346%_
                                            (lambda (_%$%hd213961214349%_
                                                     _%$%arg213967214351%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd213961214349%_))
                                                  (let ((_%$%e213964214353%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd213961214349%_))))
                                                    (let ((_%$%lp-tl213966214358%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e213964214353%_)))
                                                          (_%$%lp-hd213965214356%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e213964214353%_))))
                                                      (_%$%loop213963214346%_
                                                       _%$%lp-tl213966214358%_
                                                       (cons _%$%lp-hd213965214356%_
                                                             _%$%arg213967214351%_))))
                                                  (let ((_%$%arg213968214361%_
                                                         (reverse _%$%arg213967214351%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl213959214338%_))
                                                        (let ((_%$%e213969214363%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl213959214338%_))))
                  (let ((_%$%tl213971214368%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e213969214363%_)))
                        (_%$%hd213970214366%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e213969214363%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd213970214366%_))
                        (let ((_%$%e213972214371%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd213970214366%_))))
                          (let ((_%$%tl213974214376%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e213972214371%_)))
                                (_%$%hd213973214374%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e213972214371%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd213973214374%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq?
                                       '%#call
                                       _%$%hd213973214374%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl213974214376%_))
                                        (let ((_%$%e213975214379%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl213974214376%_))))
                                          (let ((_%$%tl213977214384%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e213975214379%_)))
                                                (_%$%hd213976214382%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e213975214379%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd213976214382%_))
                                                (let ((_%$%e213978214387%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd213976214382%_))))
                                                  (let ((_%$%tl213980214392%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e213978214387%_)))
                                                        (_%$%hd213979214390%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e213978214387%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd213979214390%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%$%hd213979214390%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl213980214392%_))
                        (let ((_%$%e213981214395%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl213980214392%_))))
                          (let ((_%$%tl213983214400%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e213981214395%_)))
                                (_%$%hd213982214398%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e213981214395%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl213983214400%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%$%tl213977214384%_))
                                    (let ((_%__splice216882216883%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%$%tl213977214384%_
                                              '0))))
                                      (let ((_%$%tl213986214405%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice216882216883%_
                                                '1)))
                                            (_%$%target213984214403%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice216882216883%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl213986214405%_))
                                            (letrec ((_%$%loop213987214408%_
                                                      (lambda (_%$%hd213985214411%_
                                                               _%$%xarg213991214413%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%hd213985214411%_))
                                                            (let ((_%$%e213988214415%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%hd213985214411%_))))
                      (let ((_%$%lp-tl213990214420%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e213988214415%_)))
                            (_%$%lp-hd213989214418%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e213988214415%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%lp-hd213989214418%_))
                            (let ((_%$%e213993214423%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%lp-hd213989214418%_))))
                              (let ((_%$%tl213995214428%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e213993214423%_)))
                                    (_%$%hd213994214426%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e213993214423%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd213994214426%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%$%hd213994214426%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl213995214428%_))
                                            (let ((_%$%e213996214431%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl213995214428%_))))
                                              (let ((_%$%tl213998214436%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e213996214431%_)))
                                                    (_%$%hd213997214434%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e213996214431%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl213998214436%_))
                                                    (_%$%loop213987214408%_
                                                     _%$%lp-tl213990214420%_
                                                     (cons _%$%hd213997214434%_
                                                           _%$%xarg213991214413%_))
                                                    (_%__match216915216916%_
                                                     _%$%e213957214333%_
                                                     _%$%hd213958214336%_
                                                     _%$%tl213959214338%_
                                                     _%__splice216880216881%_
                                                     _%$%target213960214341%_
                                                     _%$%tl213962214343%_))))
                                            (_%__match216915216916%_
                                             _%$%e213957214333%_
                                             _%$%hd213958214336%_
                                             _%$%tl213959214338%_
                                             _%__splice216880216881%_
                                             _%$%target213960214341%_
                                             _%$%tl213962214343%_))
                                        (_%__match216915216916%_
                                         _%$%e213957214333%_
                                         _%$%hd213958214336%_
                                         _%$%tl213959214338%_
                                         _%__splice216880216881%_
                                         _%$%target213960214341%_
                                         _%$%tl213962214343%_))
                                    (_%__match216915216916%_
                                     _%$%e213957214333%_
                                     _%$%hd213958214336%_
                                     _%$%tl213959214338%_
                                     _%__splice216880216881%_
                                     _%$%target213960214341%_
                                     _%$%tl213962214343%_))))
                            (_%__match216915216916%_
                             _%$%e213957214333%_
                             _%$%hd213958214336%_
                             _%$%tl213959214338%_
                             _%__splice216880216881%_
                             _%$%target213960214341%_
                             _%$%tl213962214343%_))))
                    (let ((_%$%xarg213992214439%_
                           (reverse _%$%xarg213991214413%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl213971214368%_))
                          (_%__kont216878216879%_
                           _%$%xarg213992214439%_
                           _%$%hd213982214398%_
                           _%$%arg213968214361%_)
                          (_%__match216915216916%_
                           _%$%e213957214333%_
                           _%$%hd213958214336%_
                           _%$%tl213959214338%_
                           _%__splice216880216881%_
                           _%$%target213960214341%_
                           _%$%tl213962214343%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop213987214408%_
                                               _%$%target213984214403%_
                                               '()))
                                            (_%__match216915216916%_
                                             _%$%e213957214333%_
                                             _%$%hd213958214336%_
                                             _%$%tl213959214338%_
                                             _%__splice216880216881%_
                                             _%$%target213960214341%_
                                             _%$%tl213962214343%_))))
                                    (_%__match216915216916%_
                                     _%$%e213957214333%_
                                     _%$%hd213958214336%_
                                     _%$%tl213959214338%_
                                     _%__splice216880216881%_
                                     _%$%target213960214341%_
                                     _%$%tl213962214343%_))
                                (_%__match216915216916%_
                                 _%$%e213957214333%_
                                 _%$%hd213958214336%_
                                 _%$%tl213959214338%_
                                 _%__splice216880216881%_
                                 _%$%target213960214341%_
                                 _%$%tl213962214343%_))))
                        (_%__match216915216916%_
                         _%$%e213957214333%_
                         _%$%hd213958214336%_
                         _%$%tl213959214338%_
                         _%__splice216880216881%_
                         _%$%target213960214341%_
                         _%$%tl213962214343%_))
                    (_%__match216915216916%_
                     _%$%e213957214333%_
                     _%$%hd213958214336%_
                     _%$%tl213959214338%_
                     _%__splice216880216881%_
                     _%$%target213960214341%_
                     _%$%tl213962214343%_))
                (_%__match216915216916%_
                 _%$%e213957214333%_
                 _%$%hd213958214336%_
                 _%$%tl213959214338%_
                 _%__splice216880216881%_
                 _%$%target213960214341%_
                 _%$%tl213962214343%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match216915216916%_
                                                 _%$%e213957214333%_
                                                 _%$%hd213958214336%_
                                                 _%$%tl213959214338%_
                                                 _%__splice216880216881%_
                                                 _%$%target213960214341%_
                                                 _%$%tl213962214343%_))))
                                        (_%__match216915216916%_
                                         _%$%e213957214333%_
                                         _%$%hd213958214336%_
                                         _%$%tl213959214338%_
                                         _%__splice216880216881%_
                                         _%$%target213960214341%_
                                         _%$%tl213962214343%_))
                                    (_%__match216915216916%_
                                     _%$%e213957214333%_
                                     _%$%hd213958214336%_
                                     _%$%tl213959214338%_
                                     _%__splice216880216881%_
                                     _%$%target213960214341%_
                                     _%$%tl213962214343%_))
                                (_%__match216915216916%_
                                 _%$%e213957214333%_
                                 _%$%hd213958214336%_
                                 _%$%tl213959214338%_
                                 _%__splice216880216881%_
                                 _%$%target213960214341%_
                                 _%$%tl213962214343%_))))
                        (_%__match216915216916%_
                         _%$%e213957214333%_
                         _%$%hd213958214336%_
                         _%$%tl213959214338%_
                         _%__splice216880216881%_
                         _%$%target213960214341%_
                         _%$%tl213962214343%_))))
                (_%__match216915216916%_
                 _%$%e213957214333%_
                 _%$%hd213958214336%_
                 _%$%tl213959214338%_
                 _%__splice216880216881%_
                 _%$%target213960214341%_
                 _%$%tl213962214343%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%loop213963214346%_
                                     _%$%target213960214341%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx216876216877%_))
                              (let ((_%$%e213957214333%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx216876216877%_))))
                                (let ((_%$%tl213959214338%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e213957214333%_)))
                                      (_%$%hd213958214336%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e213957214333%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd213958214336%_))
                                      (let ((_%__splice216880216881%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%hd213958214336%_
                                                '0))))
                                        (let ((_%$%tl213962214343%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice216880216881%_
                                                  '1)))
                                              (_%$%target213960214341%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice216880216881%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl213962214343%_))
                                              (_%__match216903216904%_
                                               _%$%e213957214333%_
                                               _%$%hd213958214336%_
                                               _%$%tl213959214338%_
                                               _%__splice216880216881%_
                                               _%$%target213960214341%_
                                               _%$%tl213962214343%_)
                                              (_%__match216915216916%_
                                               _%$%e213957214333%_
                                               _%$%hd213958214336%_
                                               _%$%tl213959214338%_
                                               _%__splice216880216881%_
                                               _%$%target213960214341%_
                                               _%$%tl213962214343%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl213959214338%_))
                                          (let ((_%$%e214045214089%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl213959214338%_))))
                                            (let ((_%$%tl214047214094%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e214045214089%_)))
                                                  (_%$%hd214046214092%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e214045214089%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd214046214092%_))
                                                  (let ((_%$%e214048214097%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd214046214092%_))))
                                                    (let ((_%$%tl214050214102%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e214048214097%_)))
                                                          (_%$%hd214049214100%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e214048214097%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd214049214100%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%$%hd214049214100%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl214050214102%_))
                          (let ((_%$%e214051214105%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl214050214102%_))))
                            (let ((_%$%tl214053214110%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e214051214105%_)))
                                  (_%$%hd214052214108%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e214051214105%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd214052214108%_))
                                  (let ((_%$%e214054214113%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd214052214108%_))))
                                    (let ((_%$%tl214056214118%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e214054214113%_)))
                                          (_%$%hd214055214116%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e214054214113%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd214055214116%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd214055214116%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl214056214118%_))
                                                  (let ((_%$%e214057214121%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl214056214118%_))))
                                                    (let ((_%$%tl214059214126%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e214057214121%_)))
                                                          (_%$%hd214058214124%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e214057214121%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl214059214126%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl214053214110%_))
                      (let ((_%$%e214060214129%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl214053214110%_))))
                        (let ((_%$%tl214062214134%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e214060214129%_)))
                              (_%$%hd214061214132%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e214060214129%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd214061214132%_))
                              (let ((_%$%e214063214137%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd214061214132%_))))
                                (let ((_%$%tl214065214142%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e214063214137%_)))
                                      (_%$%hd214064214140%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e214063214137%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd214064214140%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd214064214140%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl214065214142%_))
                                              (let ((_%$%e214066214145%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl214065214142%_))))
                                                (let ((_%$%tl214068214150%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e214066214145%_)))
                                                      (_%$%hd214067214148%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e214066214145%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl214068214150%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl214062214134%_))
                                                          (let ((_%$%e214069214153%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl214062214134%_))))
                    (let ((_%$%tl214071214158%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e214069214153%_)))
                          (_%$%hd214070214156%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e214069214153%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl214071214158%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl214047214094%_))
                              (_%__kont216888216889%_
                               _%$%hd214067214148%_
                               _%$%hd214058214124%_
                               _%$%hd213958214336%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g213952214076%_)))
                          (let ()
                            (declare (not safe))
                            (_%$%g213952214076%_)))))
                  (let () (declare (not safe)) (_%$%g213952214076%_)))
              (let () (declare (not safe)) (_%$%g213952214076%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g213952214076%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g213952214076%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g213952214076%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g213952214076%_)))))
                      (let () (declare (not safe)) (_%$%g213952214076%_)))
                  (let () (declare (not safe)) (_%$%g213952214076%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g213952214076%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g213952214076%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g213952214076%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g213952214076%_)))))
                          (let () (declare (not safe)) (_%$%g213952214076%_)))
                      (let () (declare (not safe)) (_%$%g213952214076%_)))
                  (let () (declare (not safe)) (_%$%g213952214076%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g213952214076%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g213952214076%_))))))
                              (let ()
                                (declare (not safe))
                                (_%$%g213952214076%_))))))))
                 (_%generate1213799%_
                  (lambda (_%args213930%_
                           _%arglen213931%_
                           _%hd213932%_
                           _%body213933%_)
                    (let* ((_%len213935%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd213932%_)))
                           (_%condition213940%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd213932%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen213931%_
                                                (cons _%len213935%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen213931%_ (cons _%len213935%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len213935%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen213931%_
                                                    (cons _%len213935%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen213931%_ (cons _%len213935%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch213942%_
                            (if (_%dispatch-case?213797%_
                                 _%hd213932%_
                                 _%body213933%_)
                                (_%dispatch-case-e213798%_
                                 _%hd213932%_
                                 _%body213933%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self213794%_
                                 _%hd213932%_
                                 _%body213933%_))))
                      (cons _%condition213940%_
                            (cons (cons 'apply
                                        (cons _%dispatch213942%_
                                              (cons _%args213930%_ '())))
                                  '()))))))
          (let* ((_%$%g213801213829%_
                  (lambda (_%$%g213802213826%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g213802213826%_))))
                 (_%$%g213800213927%_
                  (lambda (_%$%g213802213832%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g213802213832%_))
                        (let ((_%$%e213805213834%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g213802213832%_))))
                          (let ((_%$%hd213806213837%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e213805213834%_)))
                                (_%$%tl213807213839%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e213805213834%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%$%tl213807213839%_))
                                (let ((_g218043_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%$%tl213807213839%_
                                          '0))))
                                  (begin
                                    (let ((_g218044_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g218043_)
                                                 (##values-length _g218043_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g218044_ 2)))
                                          (error "Context expects 2 values"
                                                 _g218044_)))
                                    (let ((_%$%target213808213842%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g218043_ 0)))
                                          (_%$%tl213810213844%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g218043_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl213810213844%_))
                                          (letrec ((_%$%loop213811213847%_
                                                    (lambda (_%$%hd213809213850%_
                                                             _%$%body213815213852%_
                                                             _%$%hd213816213853%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%hd213809213850%_))
                                                          (let ((_%$%e213812213855%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%hd213809213850%_))))
                    (let ((_%$%lp-hd213813213858%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e213812213855%_)))
                          (_%$%lp-tl213814213860%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e213812213855%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%lp-hd213813213858%_))
                          (let ((_%$%e213819213863%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%lp-hd213813213858%_))))
                            (let ((_%$%hd213820213866%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e213819213863%_)))
                                  (_%$%tl213821213868%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e213819213863%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl213821213868%_))
                                  (let ((_%$%e213822213871%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl213821213868%_))))
                                    (let ((_%$%hd213823213874%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e213822213871%_)))
                                          (_%$%tl213824213876%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e213822213871%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl213824213876%_))
                                          (_%$%loop213811213847%_
                                           _%$%lp-tl213814213860%_
                                           (cons _%$%hd213823213874%_
                                                 _%$%body213815213852%_)
                                           (cons _%$%hd213820213866%_
                                                 _%$%hd213816213853%_))
                                          (_%$%g213801213829%_
                                           _%$%g213802213832%_))))
                                  (_%$%g213801213829%_ _%$%g213802213832%_))))
                          (_%$%g213801213829%_ _%$%g213802213832%_))))
                  (let ((_%$%body213817213879%_
                         (reverse _%$%body213815213852%_))
                        (_%$%hd213818213880%_ (reverse _%$%hd213816213853%_)))
                    (let ((_%args213902%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__0)))
                          (_%arglen213903%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__0)))
                          (_%name213904%_
                           (let ((_%$e213899%_
                                  (let ((__tmp218045
                                         (let ()
                                           (declare (not safe))
                                           (gxc#current-compile-runtime-names))))
                                    (declare (not safe))
                                    (hash-get __tmp218045 _%stx213795%_))))
                             (if _%$e213899%_
                                 _%$e213899%_
                                 ''case-lambda-dispatch))))
                      (cons 'lambda
                            (cons _%args213902%_
                                  (cons (cons 'let
                                              (cons (cons (cons _%arglen213903%_
                                                                (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '##length (cons _%args213902%_ '()))
                                  (cons 'let
                                        (cons '()
                                              (cons '(declare (not safe))
                                                    (cons (cons '##length
                                                                (cons _%args213902%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '()))
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons 'cond
                                                                (let ((__tmp218047
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (map (lambda (_%$%g213905213908%_
                                             _%$%g213906213910%_)
                                      (_%generate1213799%_
                                       _%args213902%_
                                       _%arglen213903%_
                                       _%$%g213905213908%_
                                       _%$%g213906213910%_))
                                    (let ((__tmp218048
                                           (lambda (_%$%g213912213915%_
                                                    _%$%g213913213917%_)
                                             (cons _%$%g213912213915%_
                                                   _%$%g213913213917%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp218048
                                       '()
                                       _%$%hd213818213880%_))
                                    (let ((__tmp218049
                                           (lambda (_%$%g213919213922%_
                                                    _%$%g213920213924%_)
                                             (cons _%$%g213919213922%_
                                                   _%$%g213920213924%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp218049
                                       '()
                                       _%$%body213817213879%_))))
                              (__tmp218046
                               (cons (cons 'else
                                           (cons (cons '##raise-wrong-number-of-arguments-exception
                                                       (cons _%name213904%_
                                                             (cons _%args213902%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())))
                          (declare (not safe))
                          (##append __tmp218047 __tmp218046)))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%loop213811213847%_
                                             _%$%target213808213842%_
                                             '()
                                             '()))
                                          (_%$%g213801213829%_
                                           _%$%g213802213832%_)))))
                                (_%$%g213801213829%_ _%$%g213802213832%_))))
                        (_%$%g213801213829%_ _%$%g213802213832%_)))))
            (_%$%g213800213927%_ _%stx213795%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self213031%_ _%stx213032%_ _%compiled-body?213033%_)
        (letrec ((_%generate-simple213035%_
                  (lambda (_%hd213779%_ _%body213780%_)
                    (_%coalesce-boolean213036%_
                     (_%simplify-let213037%_
                      (gxc#generate-runtime-simple-let
                       _%self213031%_
                       'let
                       _%hd213779%_
                       _%body213780%_
                       _%compiled-body?213033%_)))))
                 (_%coalesce-boolean213036%_
                  (lambda (_%code213640%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%$%code213641213667%_ _%code213640%_)
                               (_%$%else213643213675%_
                                (lambda () _%code213640%_))
                               (_%$%K213645213712%_
                                (lambda (_%expr2213678%_
                                         _%expr1213679%_
                                         _%id213680%_)
                                  (let* ((_%$%expr2213681213689%_
                                          _%expr2213678%_)
                                         (_%$%else213683213697%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1213679%_
                                                        (cons _%expr2213678%_
                                                              '())))))
                                         (_%$%K213685213702%_
                                          (lambda (_%exprs213700%_)
                                            (cons 'or
                                                  (cons _%expr1213679%_
                                                        _%exprs213700%_)))))
                                    (if (pair? _%$%expr2213681213689%_)
                                        (let ((_%$%hd213686213705%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%expr2213681213689%_)))
                                              (_%$%tl213687213707%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%expr2213681213689%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%$%hd213686213705%_
                                                       'or))
                                              (let ((_%exprs213710%_
                                                     _%$%tl213687213707%_))
                                                (_%$%K213685213702%_
                                                 _%exprs213710%_))
                                              (_%$%else213683213697%_)))
                                        (_%$%else213683213697%_))))))
                          (if (pair? _%$%code213641213667%_)
                              (let ((_%$%hd213646213715%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%code213641213667%_)))
                                    (_%$%tl213647213717%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%code213641213667%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%$%hd213646213715%_ 'let))
                                    (if (pair? _%$%tl213647213717%_)
                                        (let ((_%$%hd213648213720%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%tl213647213717%_)))
                                              (_%$%tl213649213722%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%tl213647213717%_))))
                                          (if (pair? _%$%hd213648213720%_)
                                              (let ((_%$%hd213660213725%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%hd213648213720%_)))
                                                    (_%$%tl213661213727%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%hd213648213720%_))))
                                                (if (pair? _%$%hd213660213725%_)
                                                    (let ((_%$%hd213662213730%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%hd213660213725%_)))
                                                          (_%$%tl213663213732%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%hd213660213725%_))))
                                                      (let ((_%id213735%_
                                                             _%$%hd213662213730%_))
                                                        (if (pair? _%$%tl213663213732%_)
                                                            (let ((_%$%hd213664213737%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%$%tl213663213732%_)))
                          (_%$%tl213665213739%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%tl213663213732%_))))
                      (let ((_%expr1213742%_ _%$%hd213664213737%_))
                        (if (null? _%$%tl213665213739%_)
                            (if (null? _%$%tl213661213727%_)
                                (if (pair? _%$%tl213649213722%_)
                                    (let ((_%$%hd213650213744%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%tl213649213722%_)))
                                          (_%$%tl213651213746%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%tl213649213722%_))))
                                      (if (pair? _%$%hd213650213744%_)
                                          (let ((_%$%hd213652213749%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%hd213650213744%_)))
                                                (_%$%tl213653213751%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%hd213650213744%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%$%hd213652213749%_
                                                         'if))
                                                (if (pair? _%$%tl213653213751%_)
                                                    (let ((_%$%hd213654213754%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%tl213653213751%_)))
                                                          (_%$%tl213655213756%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%tl213653213751%_))))
                                                      (if (eq? _%$%hd213654213754%_
                                                               _%id213735%_)
                                                          (if (pair? _%$%tl213655213756%_)
                                                              (let ((_%$%hd213656213763%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##car _%$%tl213655213756%_)))
                            (_%$%tl213657213765%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%tl213655213756%_))))
                        (if (eq? _%$%hd213656213763%_ _%id213735%_)
                            (if (pair? _%$%tl213657213765%_)
                                (let ((_%$%hd213658213772%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%tl213657213765%_)))
                                      (_%$%tl213659213774%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%tl213657213765%_))))
                                  (let ((_%expr2213777%_ _%$%hd213658213772%_))
                                    (if (null? _%$%tl213659213774%_)
                                        (if (null? _%$%tl213651213746%_)
                                            (_%$%K213645213712%_
                                             _%expr2213777%_
                                             _%expr1213742%_
                                             _%id213735%_)
                                            (_%$%else213643213675%_))
                                        (_%$%else213643213675%_))))
                                (_%$%else213643213675%_))
                            (_%$%else213643213675%_)))
                      (_%$%else213643213675%_))
                  (_%$%else213643213675%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%else213643213675%_))
                                                (_%$%else213643213675%_)))
                                          (_%$%else213643213675%_)))
                                    (_%$%else213643213675%_))
                                (_%$%else213643213675%_))
                            (_%$%else213643213675%_))))
                    (_%$%else213643213675%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%else213643213675%_)))
                                              (_%$%else213643213675%_)))
                                        (_%$%else213643213675%_))
                                    (_%$%else213643213675%_)))
                              (_%$%else213643213675%_)))
                        _%code213640%_)))
                 (_%simplify-let213037%_
                  (lambda (_%code213339%_)
                    (let* ((_%$%code213340213412%_ _%code213339%_)
                           (_%$%else213345213420%_ (lambda () _%code213339%_)))
                      (let ((_%$%K213404213620%_
                             (lambda (_%expr213618%_) _%expr213618%_))
                            (_%$%K213387213566%_
                             (lambda (_%body213562%_
                                      _%expr213563%_
                                      _%id213564%_)
                               (cons 'let
                                     (cons (cons (cons _%id213564%_
                                                       (cons _%expr213563%_
                                                             '()))
                                                 '())
                                           _%body213562%_))))
                            (_%$%K213364213490%_
                             (lambda (_%body213484%_
                                      _%expr2213485%_
                                      _%id2213486%_
                                      _%expr1213487%_
                                      _%id1213488%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1213488%_
                                                       (cons _%expr1213487%_
                                                             '()))
                                                 (cons (cons _%id2213486%_
                                                             (cons _%expr2213485%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body213484%_))))
                            (_%$%K213347213429%_
                             (lambda (_%body213424%_
                                      _%bind213425%_
                                      _%expr1213426%_
                                      _%id1213427%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1213427%_
                                                       (cons _%expr1213426%_
                                                             '()))
                                                 _%bind213425%_)
                                           _%body213424%_)))))
                        (if (pair? _%$%code213340213412%_)
                            (let ((_%$%tl213406213625%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%code213340213412%_)))
                                  (_%$%hd213405213623%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%code213340213412%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%$%hd213405213623%_ 'let))
                                  (if (pair? _%$%tl213406213625%_)
                                      (let ((_%$%tl213408213630%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%tl213406213625%_)))
                                            (_%$%hd213407213628%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%tl213406213625%_))))
                                        (if (null? _%$%hd213407213628%_)
                                            (if (pair? _%$%tl213408213630%_)
                                                (let ((_%$%tl213410213635%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%tl213408213630%_)))
                                                      (_%$%hd213409213633%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%tl213408213630%_))))
                                                  (if (null? _%$%tl213410213635%_)
                                                      (let ((_%expr213638%_
                                                             _%$%hd213409213633%_))
                                                        (_%$%K213404213620%_
                                                         _%expr213638%_))
                                                      (_%$%else213345213420%_)))
                                                (_%$%else213345213420%_))
                                            (if (pair? _%$%hd213407213628%_)
                                                (let ((_%$%tl213399213581%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%hd213407213628%_)))
                                                      (_%$%hd213398213579%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%hd213407213628%_))))
                                                  (if (pair? _%$%hd213398213579%_)
                                                      (let ((_%$%tl213401213586%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%hd213398213579%_)))
                    (_%$%hd213400213584%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%hd213398213579%_))))
                (if (pair? _%$%tl213401213586%_)
                    (let ((_%$%tl213403213593%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%tl213401213586%_)))
                          (_%$%hd213402213591%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%tl213401213586%_))))
                      (if (null? _%$%tl213403213593%_)
                          (if (null? _%$%tl213399213581%_)
                              (if (pair? _%$%tl213408213630%_)
                                  (let ((_%$%tl213393213600%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl213408213630%_)))
                                        (_%$%hd213392213598%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%tl213408213630%_))))
                                    (if (pair? _%$%hd213392213598%_)
                                        (let ((_%$%tl213395213605%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%hd213392213598%_)))
                                              (_%$%hd213394213603%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%hd213392213598%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%$%hd213394213603%_
                                                       'let))
                                              (if (pair? _%$%tl213395213605%_)
                                                  (let ((_%$%tl213397213610%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%tl213395213605%_)))
                                                        (_%$%hd213396213608%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%tl213395213605%_))))
                                                    (if (null? _%$%hd213396213608%_)
                                                        (if (null? _%$%tl213393213600%_)
                                                            (let ((_%id213589%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%hd213400213584%_)
                          (_%expr213596%_ _%$%hd213402213591%_)
                          (_%body213613%_ _%$%tl213397213610%_))
                      (_%$%K213387213566%_
                       _%body213613%_
                       _%expr213596%_
                       _%id213589%_))
                    (_%$%else213345213420%_))
                (if (pair? _%$%hd213396213608%_)
                    (let ((_%$%tl213376213539%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%hd213396213608%_)))
                          (_%$%hd213375213537%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%hd213396213608%_))))
                      (if (pair? _%$%hd213375213537%_)
                          (let ((_%$%tl213378213544%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%hd213375213537%_)))
                                (_%$%hd213377213542%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%hd213375213537%_))))
                            (if (pair? _%$%tl213378213544%_)
                                (let ((_%$%tl213380213551%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%tl213378213544%_)))
                                      (_%$%hd213379213549%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%tl213378213544%_))))
                                  (if (null? _%$%tl213380213551%_)
                                      (if (null? _%$%tl213376213539%_)
                                          (if (null? _%$%tl213393213600%_)
                                              (let ((_%id1213513%_
                                                     _%$%hd213400213584%_)
                                                    (_%expr1213520%_
                                                     _%$%hd213402213591%_)
                                                    (_%id2213547%_
                                                     _%$%hd213377213542%_)
                                                    (_%expr2213554%_
                                                     _%$%hd213379213549%_)
                                                    (_%body213556%_
                                                     _%$%tl213397213610%_))
                                                (_%$%K213364213490%_
                                                 _%body213556%_
                                                 _%expr2213554%_
                                                 _%id2213547%_
                                                 _%expr1213520%_
                                                 _%id1213513%_))
                                              (_%$%else213345213420%_))
                                          (_%$%else213345213420%_))
                                      (_%$%else213345213420%_)))
                                (_%$%else213345213420%_)))
                          (_%$%else213345213420%_)))
                    (_%$%else213345213420%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%else213345213420%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%$%hd213394213603%_
                                                           'let*))
                                                  (if (pair? _%$%tl213395213605%_)
                                                      (let ((_%$%tl213357213473%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%tl213395213605%_)))
                    (_%$%hd213356213471%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%tl213395213605%_))))
                (if (null? _%$%tl213393213600%_)
                    (let ((_%id1213452%_ _%$%hd213400213584%_)
                          (_%expr1213459%_ _%$%hd213402213591%_)
                          (_%bind213476%_ _%$%hd213356213471%_)
                          (_%body213478%_ _%$%tl213357213473%_))
                      (_%$%K213347213429%_
                       _%body213478%_
                       _%bind213476%_
                       _%expr1213459%_
                       _%id1213452%_))
                    (_%$%else213345213420%_)))
              (_%$%else213345213420%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%else213345213420%_))))
                                        (_%$%else213345213420%_)))
                                  (_%$%else213345213420%_))
                              (_%$%else213345213420%_))
                          (_%$%else213345213420%_)))
                    (_%$%else213345213420%_)))
              (_%$%else213345213420%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%else213345213420%_))))
                                      (_%$%else213345213420%_))
                                  (_%$%else213345213420%_)))
                            (_%$%else213345213420%_))))))
                 (_%generate-values213038%_
                  (lambda (_%hd213152%_ _%body213153%_)
                    (let _%lp213155%_ ((_%rest213157%_ _%hd213152%_)
                                       (_%bind213158%_ '())
                                       (_%check213159%_ '())
                                       (_%post213160%_ '()))
                      (let* ((_%__stx217205217206%_ _%rest213157%_)
                             (_%$%g213163213174%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx217205217206%_)))))
                        (let ((_%__kont217207217208%_
                               (lambda (_%$%g213165213201%_
                                        _%$%g213166213202%_)
                                 (let* ((_%__stx217161217162%_
                                         _%$%g213166213202%_)
                                        (_%$%g213217213242%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx217161217162%_)))))
                                   (let ((_%__kont217163217164%_
                                          (lambda (_%$%g213219213315%_
                                                   _%$%g213220213316%_)
                                            (let ((_%eid213330%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%$%g213220213316%_)))
                                                  (_%expr213331%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self213031%_
                                                      _%$%g213219213315%_))))
                                              (_%lp213155%_
                                               _%$%g213165213201%_
                                               (cons (cons _%eid213330%_
                                                           (cons _%expr213331%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind213158%_)
                                               _%check213159%_
                                               _%post213160%_))))
                                         (_%__kont217165217166%_
                                          (lambda (_%$%g213230213263%_
                                                   _%$%g213231213264%_)
                                            (let* ((_%vals213277%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values213279%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals213277%_
                                                     _%$%g213231213264%_
                                                     _%$%g213230213263%_))
                                                   (_%refs213281%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals213277%_
                                                     _%$%g213231213264%_))
                                                   (_%expr213283%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self213031%_
                                                       _%$%g213230213263%_))))
                                              (_%lp213155%_
                                               _%$%g213165213201%_
                                               (cons (cons _%vals213277%_
                                                           (cons _%expr213283%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind213158%_)
                                               (cons _%check-values213279%_
                                                     _%check213159%_)
                                               (cons _%refs213281%_
                                                     _%post213160%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx217161217162%_))
                                         (let ((_%$%e213221213291%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx217161217162%_))))
                                           (let ((_%$%tl213223213296%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e213221213291%_)))
                                                 (_%$%hd213222213294%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e213221213291%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%hd213222213294%_))
                                                 (let ((_%$%e213224213299%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%hd213222213294%_))))
                                                   (let ((_%$%tl213226213304%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e213224213299%_)))
                                                         (_%$%hd213225213302%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e213224213299%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%$%tl213226213304%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%tl213223213296%_))
                     (let ((_%$%e213227213307%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl213223213296%_))))
                       (let ((_%$%tl213229213312%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e213227213307%_)))
                             (_%$%hd213228213310%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e213227213307%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl213229213312%_))
                             (_%__kont217163217164%_
                              _%$%hd213228213310%_
                              _%$%hd213225213302%_)
                             (let ()
                               (declare (not safe))
                               (_%$%g213217213242%_)))))
                     (let () (declare (not safe)) (_%$%g213217213242%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%$%tl213223213296%_))
                     (let ((_%$%e213235213255%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl213223213296%_))))
                       (let ((_%$%tl213237213260%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e213235213255%_)))
                             (_%$%hd213236213258%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e213235213255%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl213237213260%_))
                             (_%__kont217165217166%_
                              _%$%hd213236213258%_
                              _%$%hd213222213294%_)
                             (let ()
                               (declare (not safe))
                               (_%$%g213217213242%_)))))
                     (let () (declare (not safe)) (_%$%g213217213242%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl213223213296%_))
                                                     (let ((_%$%e213235213255%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl213223213296%_))))
                                                       (let ((_%$%tl213237213260%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e213235213255%_)))
                     (_%$%hd213236213258%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%e213235213255%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl213237213260%_))
                     (_%__kont217165217166%_
                      _%$%hd213236213258%_
                      _%$%hd213222213294%_)
                     (let () (declare (not safe)) (_%$%g213217213242%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%$%g213217213242%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%$%g213217213242%_)))))))
                              (_%__kont217209217210%_
                               (lambda ()
                                 (let* ((_%body213181%_
                                         (if _%compiled-body?213033%_
                                             _%body213153%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self213031%_
                                                _%body213153%_))))
                                        (_%body213183%_
                                         (_%generate-values-post213039%_
                                          _%post213160%_
                                          _%body213181%_))
                                        (_%body213185%_
                                         (_%generate-values-check213040%_
                                          _%check213159%_
                                          _%body213183%_)))
                                   (cons 'let
                                         (cons (reverse _%bind213158%_)
                                               (cons _%body213185%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx217205217206%_))
                              (let ((_%$%e213167213193%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx217205217206%_))))
                                (let ((_%$%tl213169213198%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e213167213193%_)))
                                      (_%$%hd213168213196%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e213167213193%_))))
                                  (_%__kont217207217208%_
                                   _%$%tl213169213198%_
                                   _%$%hd213168213196%_)))
                              (_%__kont217209217210%_)))))))
                 (_%generate-values-post213039%_
                  (lambda (_%post213111%_ _%body213112%_)
                    (let _%lp213114%_ ((_%rest213116%_ _%post213111%_)
                                       (_%body213117%_ _%body213112%_))
                      (let* ((_%$%rest213118213126%_ _%rest213116%_)
                             (_%$%else213120213134%_
                              (lambda () _%body213117%_))
                             (_%$%K213122213140%_
                              (lambda (_%rest213137%_ _%bind213138%_)
                                (_%lp213114%_
                                 _%rest213137%_
                                 (cons 'let
                                       (cons _%bind213138%_
                                             (cons _%body213117%_ '())))))))
                        (if (pair? _%$%rest213118213126%_)
                            (let ((_%$%hd213123213143%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest213118213126%_)))
                                  (_%$%tl213124213145%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest213118213126%_))))
                              (let* ((_%bind213148%_ _%$%hd213123213143%_)
                                     (_%rest213150%_ _%$%tl213124213145%_))
                                (_%$%K213122213140%_
                                 _%rest213150%_
                                 _%bind213148%_)))
                            (_%$%else213120213134%_))))))
                 (_%generate-values-check213040%_
                  (lambda (_%check213108%_ _%body213109%_)
                    (cons 'begin
                          (let ((__tmp218051 (reverse _%check213108%_))
                                (__tmp218050 (cons _%body213109%_ '())))
                            (declare (not safe))
                            (##append __tmp218051 __tmp218050))))))
          (let* ((_%$%g213042213059%_
                  (lambda (_%$%g213043213056%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g213043213056%_))))
                 (_%$%g213041213105%_
                  (lambda (_%$%g213043213062%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g213043213062%_))
                        (let ((_%$%e213046213064%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g213043213062%_))))
                          (let ((_%$%hd213047213067%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e213046213064%_)))
                                (_%$%tl213048213069%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e213046213064%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl213048213069%_))
                                (let ((_%$%e213049213072%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl213048213069%_))))
                                  (let ((_%$%hd213050213075%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e213049213072%_)))
                                        (_%$%tl213051213077%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e213049213072%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl213051213077%_))
                                        (let ((_%$%e213052213080%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl213051213077%_))))
                                          (let ((_%$%hd213053213083%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e213052213080%_)))
                                                (_%$%tl213054213085%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e213052213080%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl213054213085%_))
                                                (if (gxc#generate-runtime-simple-let?
                                                     _%$%hd213050213075%_)
                                                    (_%generate-simple213035%_
                                                     _%$%hd213050213075%_
                                                     _%$%hd213053213083%_)
                                                    (_%generate-values213038%_
                                                     _%$%hd213050213075%_
                                                     _%$%hd213053213083%_))
                                                (_%$%g213042213059%_
                                                 _%$%g213043213062%_))))
                                        (_%$%g213042213059%_
                                         _%$%g213043213062%_))))
                                (_%$%g213042213059%_ _%$%g213043213062%_))))
                        (_%$%g213042213059%_ _%$%g213043213062%_)))))
            (_%$%g213041213105%_ _%stx213032%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self213785%_ _%stx213786%_)
        (let ((_%compiled-body?213788%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self213785%_
           _%stx213786%_
           _%compiled-body?213788%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g218052_
        (let ((_g218053_ (let () (declare (not safe)) (##length _g218052_))))
          (cond ((let () (declare (not safe)) (##fx= _g218053_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g218052_))
                ((let () (declare (not safe)) (##fx= _g218053_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g218052_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g218052_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals212925%_ _%hd212926%_)
        (let _%lp212928%_ ((_%rest212930%_ _%hd212926%_)
                           (_%k212931%_ '0)
                           (_%r212932%_ '()))
          (let* ((_%__stx217219217220%_ _%rest212930%_)
                 (_%$%g212937212954%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx217219217220%_)))))
            (let ((_%__kont217221217222%_
                   (lambda (_%$%g212939213017%_)
                     (_%lp212928%_
                      _%$%g212939213017%_
                      (let () (declare (not safe)) (##fx+ _%k212931%_ '1))
                      _%r212932%_)))
                  (_%__kont217223217224%_
                   (lambda (_%$%g212944212990%_ _%$%g212945212991%_)
                     (_%lp212928%_
                      _%$%g212944212990%_
                      (let () (declare (not safe)) (##fx+ _%k212931%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%$%g212945212991%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals212925%_
                                         _%k212931%_
                                         _%$%g212944212990%_)
                                        '()))
                            _%r212932%_))))
                  (_%__kont217225217226%_
                   (lambda (_%$%g212949212966%_)
                     (let ((__tmp218054
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%$%g212949212966%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals212925%_
                                               _%k212931%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (foldl__0 cons __tmp218054 _%r212932%_))))
                  (_%__kont217227217228%_ (lambda () (reverse _%r212932%_))))
              (let ((_%$%g212935212977%_
                     (lambda ()
                       (let ((_%$%g212949212966%_ _%__stx217219217220%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%$%g212949212966%_))
                             (_%__kont217225217226%_ _%$%g212949212966%_)
                             (_%__kont217227217228%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx217219217220%_))
                    (let ((_%$%e212940213006%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx217219217220%_))))
                      (let ((_%$%tl212942213011%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e212940213006%_)))
                            (_%$%hd212941213009%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e212940213006%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%$%hd212941213009%_))
                            (let ((_%$%e212943213014%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd212941213009%_))))
                              (if (equal? _%$%e212943213014%_ '#f)
                                  (_%__kont217221217222%_ _%$%tl212942213011%_)
                                  (_%__kont217223217224%_
                                   _%$%tl212942213011%_
                                   _%$%hd212941213009%_)))
                            (_%__kont217223217224%_
                             _%$%tl212942213011%_
                             _%$%hd212941213009%_))))
                    (let () (declare (not safe)) (_%$%g212935212977%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self212604%_ _%stx212605%_ _%compiled-body?212606%_)
        (letrec ((_%generate-simple212608%_
                  (lambda (_%hd212910%_ _%body212911%_)
                    (gxc#generate-runtime-simple-let
                     _%self212604%_
                     'letrec
                     _%hd212910%_
                     _%body212911%_
                     _%compiled-body?212606%_)))
                 (_%generate-values212609%_
                  (lambda (_%hd212689%_ _%body212690%_)
                    (let _%lp212692%_ ((_%rest212694%_ _%hd212689%_)
                                       (_%bind212695%_ '())
                                       (_%check212696%_ '())
                                       (_%post212697%_ '()))
                      (let* ((_%__stx217293217294%_ _%rest212694%_)
                             (_%$%g212700212711%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx217293217294%_)))))
                        (let ((_%__kont217295217296%_
                               (lambda (_%$%g212702212738%_
                                        _%$%g212703212739%_)
                                 (let* ((_%__stx217249217250%_
                                         _%$%g212703212739%_)
                                        (_%$%g212754212779%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx217249217250%_)))))
                                   (let ((_%__kont217251217252%_
                                          (lambda (_%$%g212756212886%_
                                                   _%$%g212757212887%_)
                                            (let ((_%eid212901%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%$%g212757212887%_)))
                                                  (_%expr212902%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self212604%_
                                                      _%$%g212756212886%_))))
                                              (_%lp212692%_
                                               _%$%g212702212738%_
                                               (cons (cons _%eid212901%_
                                                           (cons _%expr212902%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind212695%_)
                                               _%check212696%_
                                               _%post212697%_))))
                                         (_%__kont217253217254%_
                                          (lambda (_%$%g212767212800%_
                                                   _%$%g212768212801%_)
                                            (let* ((_%vals212814%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values212816%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals212814%_
                                                     _%$%g212768212801%_
                                                     _%$%g212767212800%_))
                                                   (_%refs212818%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals212814%_
                                                     _%$%g212768212801%_))
                                                   (_%expr212820%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self212604%_
                                                       _%$%g212767212800%_))))
                                              (_%lp212692%_
                                               _%$%g212702212738%_
                                               (let ((__tmp218056
                                                      (cons (cons _%vals212814%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr212820%_ '()))
                    _%bind212695%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp218055
                                                      (map (lambda (_%$%e212822212824%_)
                                                             (let* ((_%$%$%e212822212826212835%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%e212822212824%_)
                            (_%$%E212828212839%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%$%$%e212822212826212835%_
                                        '([eid _])))
                               '#!void))
                            (_%$%K212829212844%_
                             (lambda (_%eid212842%_)
                               (cons _%eid212842%_ (cons '#!void '())))))
                       (if (pair? _%$%$%e212822212826212835%_)
                           (let ((_%$%hd212830212847%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$%e212822212826212835%_)))
                                 (_%$%tl212831212849%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$%e212822212826212835%_))))
                             (let ((_%eid212852%_ _%$%hd212830212847%_))
                               (if (pair? _%$%tl212831212849%_)
                                   (let ((_%$%tl212833212854%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%tl212831212849%_))))
                                     (if (null? _%$%tl212833212854%_)
                                         (_%$%K212829212844%_ _%eid212852%_)
                                         (_%$%E212828212839%_)))
                                   (_%$%E212828212839%_))))
                           (_%$%E212828212839%_))))
                   _%refs212818%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  __tmp218056
                                                  __tmp218055))
                                               (cons _%check-values212816%_
                                                     _%check212696%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  _%refs212818%_
                                                  _%post212697%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx217249217250%_))
                                         (let ((_%$%e212758212862%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx217249217250%_))))
                                           (let ((_%$%tl212760212867%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e212758212862%_)))
                                                 (_%$%hd212759212865%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e212758212862%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%hd212759212865%_))
                                                 (let ((_%$%e212761212870%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%hd212759212865%_))))
                                                   (let ((_%$%tl212763212875%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e212761212870%_)))
                                                         (_%$%hd212762212873%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e212761212870%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%$%tl212763212875%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%tl212760212867%_))
                     (let ((_%$%e212764212878%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl212760212867%_))))
                       (let ((_%$%tl212766212883%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e212764212878%_)))
                             (_%$%hd212765212881%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e212764212878%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl212766212883%_))
                             (_%__kont217251217252%_
                              _%$%hd212765212881%_
                              _%$%hd212762212873%_)
                             (let ()
                               (declare (not safe))
                               (_%$%g212754212779%_)))))
                     (let () (declare (not safe)) (_%$%g212754212779%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%$%tl212760212867%_))
                     (let ((_%$%e212772212792%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl212760212867%_))))
                       (let ((_%$%tl212774212797%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e212772212792%_)))
                             (_%$%hd212773212795%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e212772212792%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl212774212797%_))
                             (_%__kont217253217254%_
                              _%$%hd212773212795%_
                              _%$%hd212759212865%_)
                             (let ()
                               (declare (not safe))
                               (_%$%g212754212779%_)))))
                     (let () (declare (not safe)) (_%$%g212754212779%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl212760212867%_))
                                                     (let ((_%$%e212772212792%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl212760212867%_))))
                                                       (let ((_%$%tl212774212797%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e212772212792%_)))
                     (_%$%hd212773212795%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%e212772212792%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl212774212797%_))
                     (_%__kont217253217254%_
                      _%$%hd212773212795%_
                      _%$%hd212759212865%_)
                     (let () (declare (not safe)) (_%$%g212754212779%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%$%g212754212779%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%$%g212754212779%_)))))))
                              (_%__kont217297217298%_
                               (lambda ()
                                 (let* ((_%body212718%_
                                         (if _%compiled-body?212606%_
                                             _%body212690%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self212604%_
                                                _%body212690%_))))
                                        (_%body212720%_
                                         (_%generate-values-post212611%_
                                          _%post212697%_
                                          _%body212718%_))
                                        (_%body212722%_
                                         (_%generate-values-check212610%_
                                          _%check212696%_
                                          _%body212720%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind212695%_)
                                               (cons _%body212722%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx217293217294%_))
                              (let ((_%$%e212704212730%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx217293217294%_))))
                                (let ((_%$%tl212706212735%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e212704212730%_)))
                                      (_%$%hd212705212733%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e212704212730%_))))
                                  (_%__kont217295217296%_
                                   _%$%tl212706212735%_
                                   _%$%hd212705212733%_)))
                              (_%__kont217297217298%_)))))))
                 (_%generate-values-check212610%_
                  (lambda (_%check212686%_ _%body212687%_)
                    (cons 'begin
                          (let ((__tmp218058 (reverse _%check212686%_))
                                (__tmp218057 (cons _%body212687%_ '())))
                            (declare (not safe))
                            (##append __tmp218058 __tmp218057)))))
                 (_%generate-values-post212611%_
                  (lambda (_%post212679%_ _%body212680%_)
                    (cons 'begin
                          (let ((__tmp218060
                                 (let ((__tmp218062
                                        (lambda (_%$%g212681212683%_)
                                          (cons 'set! _%$%g212681212683%_)))
                                       (__tmp218061 (reverse _%post212679%_)))
                                   (declare (not safe))
                                   (##map __tmp218062 __tmp218061)))
                                (__tmp218059 (cons _%body212680%_ '())))
                            (declare (not safe))
                            (##append __tmp218060 __tmp218059))))))
          (let* ((_%$%g212613212630%_
                  (lambda (_%$%g212614212627%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g212614212627%_))))
                 (_%$%g212612212676%_
                  (lambda (_%$%g212614212633%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g212614212633%_))
                        (let ((_%$%e212617212635%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g212614212633%_))))
                          (let ((_%$%hd212618212638%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e212617212635%_)))
                                (_%$%tl212619212640%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e212617212635%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl212619212640%_))
                                (let ((_%$%e212620212643%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl212619212640%_))))
                                  (let ((_%$%hd212621212646%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e212620212643%_)))
                                        (_%$%tl212622212648%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e212620212643%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl212622212648%_))
                                        (let ((_%$%e212623212651%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl212622212648%_))))
                                          (let ((_%$%hd212624212654%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e212623212651%_)))
                                                (_%$%tl212625212656%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e212623212651%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl212625212656%_))
                                                (if (gxc#generate-runtime-simple-let?
                                                     _%$%hd212621212646%_)
                                                    (_%generate-simple212608%_
                                                     _%$%hd212621212646%_
                                                     _%$%hd212624212654%_)
                                                    (_%generate-values212609%_
                                                     _%$%hd212621212646%_
                                                     _%$%hd212624212654%_))
                                                (_%$%g212613212630%_
                                                 _%$%g212614212633%_))))
                                        (_%$%g212613212630%_
                                         _%$%g212614212633%_))))
                                (_%$%g212613212630%_ _%$%g212614212633%_))))
                        (_%$%g212613212630%_ _%$%g212614212633%_)))))
            (_%$%g212612212676%_ _%stx212605%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self212916%_ _%stx212917%_)
        (let ((_%compiled-body?212919%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self212916%_
           _%stx212917%_
           _%compiled-body?212919%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g218063_
        (let ((_g218064_ (let () (declare (not safe)) (##length _g218063_))))
          (cond ((let () (declare (not safe)) (##fx= _g218064_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g218063_))
                ((let () (declare (not safe)) (##fx= _g218064_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g218063_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g218063_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self212185%_ _%stx212186%_)
        (letrec ((_%generate-values212188%_
                  (lambda (_%hd212431%_ _%body212432%_)
                    (let _%lp212434%_ ((_%rest212436%_ _%hd212431%_)
                                       (_%bind212437%_ '()))
                      (let* ((_%$%rest212438212446%_ _%rest212436%_)
                             (_%$%else212440212457%_
                              (lambda ()
                                (let ((_%bind212454%_ (reverse _%bind212437%_))
                                      (_%body212455%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self212185%_
                                          _%body212432%_))))
                                  (cons 'letrec*
                                        (cons _%bind212454%_
                                              (cons _%body212455%_ '()))))))
                             (_%$%K212442212591%_
                              (lambda (_%rest212460%_ _%hd-bind212461%_)
                                (let* ((_%__stx217307217308%_
                                        _%hd-bind212461%_)
                                       (_%$%g212464212489%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx217307217308%_)))))
                                  (let ((_%__kont217309217310%_
                                         (lambda (_%$%g212466212570%_
                                                  _%$%g212467212571%_)
                                           (let ((_%eid212585%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%$%g212467212571%_)))
                                                 (_%expr212586%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self212185%_
                                                     _%$%g212466212570%_))))
                                             (_%lp212434%_
                                              _%rest212460%_
                                              (cons (cons _%eid212585%_
                                                          (cons _%expr212586%_
                                                                '()))
                                                    _%bind212437%_)))))
                                        (_%__kont217311217312%_
                                         (lambda (_%$%g212477212510%_
                                                  _%$%g212478212511%_)
                                           (let* ((_%vals212530%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp212532%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values212534%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp212532%_
                                                    _%$%g212478212511%_
                                                    _%$%g212477212510%_))
                                                  (_%refs212536%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals212530%_
                                                    _%$%g212478212511%_))
                                                  (_%expr212538%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self212185%_
                                                      _%$%g212477212510%_))))
                                             (_%lp212434%_
                                              _%rest212460%_
                                              (let ((__tmp218065
                                                     (cons (cons _%vals212530%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp212532%_
                                                       (cons _%expr212538%_
                                                             '()))
                                                 '())
                                           (cons _%check-values212534%_
                                                 (cons _%tmp212532%_ '()))))
                               '()))
                   _%bind212437%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp218065
                                                 _%refs212536%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx217307217308%_))
                                        (let ((_%$%e212468212546%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx217307217308%_))))
                                          (let ((_%$%tl212470212551%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e212468212546%_)))
                                                (_%$%hd212469212549%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e212468212546%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd212469212549%_))
                                                (let ((_%$%e212471212554%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd212469212549%_))))
                                                  (let ((_%$%tl212473212559%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e212471212554%_)))
                                                        (_%$%hd212472212557%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e212471212554%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl212473212559%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl212470212551%_))
                                                            (let ((_%$%e212474212562%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl212470212551%_))))
                      (let ((_%$%tl212476212567%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e212474212562%_)))
                            (_%$%hd212475212565%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e212474212562%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl212476212567%_))
                            (_%__kont217309217310%_
                             _%$%hd212475212565%_
                             _%$%hd212472212557%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g212464212489%_)))))
                    (let () (declare (not safe)) (_%$%g212464212489%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%$%tl212470212551%_))
                    (let ((_%$%e212482212502%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl212470212551%_))))
                      (let ((_%$%tl212484212507%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e212482212502%_)))
                            (_%$%hd212483212505%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e212482212502%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl212484212507%_))
                            (_%__kont217311217312%_
                             _%$%hd212483212505%_
                             _%$%hd212469212549%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g212464212489%_)))))
                    (let () (declare (not safe)) (_%$%g212464212489%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl212470212551%_))
                                                    (let ((_%$%e212482212502%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl212470212551%_))))
                                                      (let ((_%$%tl212484212507%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e212482212502%_)))
                    (_%$%hd212483212505%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e212482212502%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl212484212507%_))
                    (_%__kont217311217312%_
                     _%$%hd212483212505%_
                     _%$%hd212469212549%_)
                    (let () (declare (not safe)) (_%$%g212464212489%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g212464212489%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g212464212489%_))))))))
                        (if (pair? _%$%rest212438212446%_)
                            (let ((_%$%hd212443212594%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest212438212446%_)))
                                  (_%$%tl212444212596%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest212438212446%_))))
                              (let* ((_%hd-bind212599%_ _%$%hd212443212594%_)
                                     (_%rest212601%_ _%$%tl212444212596%_))
                                (_%$%K212442212591%_
                                 _%rest212601%_
                                 _%hd-bind212599%_)))
                            (_%$%else212440212457%_))))))
                 (_%generate-letrec?212189%_
                  (lambda (_%hd212321%_)
                    (let _%lp212323%_ ((_%rest212325%_ _%hd212321%_))
                      (let* ((_%$%rest212326212334%_ _%rest212325%_)
                             (_%$%else212328212342%_ (lambda () '#t))
                             (_%$%K212330212419%_
                              (lambda (_%rest212345%_ _%hd-bind212346%_)
                                (let* ((_%$%g212348212365%_
                                        (lambda (_%$%g212349212362%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%$%g212349212362%_))))
                                       (_%$%g212347212416%_
                                        (lambda (_%$%g212349212368%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%g212349212368%_))
                                              (let ((_%$%e212352212370%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%g212349212368%_))))
                                                (let ((_%$%hd212353212373%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e212352212370%_)))
                                                      (_%$%tl212354212375%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e212352212370%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%hd212353212373%_))
                                                      (let ((_%$%e212355212378%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%hd212353212373%_))))
                (let ((_%$%hd212356212381%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e212355212378%_)))
                      (_%$%tl212357212383%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e212355212378%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl212357212383%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl212354212375%_))
                          (let ((_%$%e212358212386%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl212354212375%_))))
                            (let ((_%$%hd212359212389%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e212358212386%_)))
                                  (_%$%tl212360212391%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e212358212386%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl212360212391%_))
                                  (if (_%is-lambda-expr?212190%_
                                       _%$%hd212359212389%_)
                                      (_%lp212323%_ _%rest212345%_)
                                      '#f)
                                  (_%$%g212348212365%_ _%$%g212349212368%_))))
                          (_%$%g212348212365%_ _%$%g212349212368%_))
                      (_%$%g212348212365%_ _%$%g212349212368%_))))
              (_%$%g212348212365%_ _%$%g212349212368%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g212348212365%_
                                               _%$%g212349212368%_)))))
                                  (_%$%g212347212416%_ _%hd-bind212346%_)))))
                        (if (pair? _%$%rest212326212334%_)
                            (let ((_%$%hd212331212422%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest212326212334%_)))
                                  (_%$%tl212332212424%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest212326212334%_))))
                              (let* ((_%hd-bind212427%_ _%$%hd212331212422%_)
                                     (_%rest212429%_ _%$%tl212332212424%_))
                                (_%$%K212330212419%_
                                 _%rest212429%_
                                 _%hd-bind212427%_)))
                            (_%$%else212328212342%_))))))
                 (_%is-lambda-expr?212190%_
                  (lambda (_%expr212258%_)
                    (let* ((_%__stx217351217352%_ _%expr212258%_)
                           (_%$%g212261212275%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx217351217352%_)))))
                      (let ((_%__kont217353217354%_
                             (lambda (_%$%g212263212303%_ _%$%g212264212304%_)
                               '#t))
                            (_%__kont217355217356%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx217351217352%_))
                            (let ((_%$%e212265212287%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx217351217352%_))))
                              (let ((_%$%tl212267212292%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e212265212287%_)))
                                    (_%$%hd212266212290%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e212265212287%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd212266212290%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%$%hd212266212290%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl212267212292%_))
                                            (let ((_%$%e212268212295%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl212267212292%_))))
                                              (let ((_%$%tl212270212300%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e212268212295%_)))
                                                    (_%$%hd212269212298%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e212268212295%_))))
                                                (_%__kont217353217354%_
                                                 _%$%tl212270212300%_
                                                 _%$%hd212269212298%_)))
                                            (_%__kont217355217356%_))
                                        (_%__kont217355217356%_))
                                    (_%__kont217355217356%_))))
                            (_%__kont217355217356%_)))))))
          (let* ((_%$%g212192212209%_
                  (lambda (_%$%g212193212206%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g212193212206%_))))
                 (_%$%g212191212255%_
                  (lambda (_%$%g212193212212%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g212193212212%_))
                        (let ((_%$%e212196212214%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g212193212212%_))))
                          (let ((_%$%hd212197212217%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e212196212214%_)))
                                (_%$%tl212198212219%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e212196212214%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl212198212219%_))
                                (let ((_%$%e212199212222%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl212198212219%_))))
                                  (let ((_%$%hd212200212225%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e212199212222%_)))
                                        (_%$%tl212201212227%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e212199212222%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl212201212227%_))
                                        (let ((_%$%e212202212230%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl212201212227%_))))
                                          (let ((_%$%hd212203212233%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e212202212230%_)))
                                                (_%$%tl212204212235%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e212202212230%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl212204212235%_))
                                                (if (gxc#generate-runtime-simple-let?
                                                     _%$%hd212200212225%_)
                                                    (if (_%generate-letrec?212189%_
                                                         _%$%hd212200212225%_)
                                                        (gxc#generate-runtime-simple-let
                                                         _%self212185%_
                                                         'letrec
                                                         _%$%hd212200212225%_
                                                         _%$%hd212203212233%_
                                                         '#f)
                                                        (gxc#generate-runtime-simple-let
                                                         _%self212185%_
                                                         'letrec*
                                                         _%$%hd212200212225%_
                                                         _%$%hd212203212233%_
                                                         '#f))
                                                    (_%generate-values212188%_
                                                     _%$%hd212200212225%_
                                                     _%$%hd212203212233%_))
                                                (_%$%g212192212209%_
                                                 _%$%g212193212212%_))))
                                        (_%$%g212192212209%_
                                         _%$%g212193212212%_))))
                                (_%$%g212192212209%_ _%$%g212193212212%_))))
                        (_%$%g212192212209%_ _%$%g212193212212%_)))))
            (_%$%g212191212255%_ _%stx212186%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd212122%_)
        (let _%lp212124%_ ((_%rest212126%_ _%hd212122%_))
          (let* ((_%$%rest212127212143%_ _%rest212126%_)
                 (_%$%else212130212151%_ (lambda () '#f)))
            (let ((_%$%K212133212164%_
                   (lambda (_%rest212162%_) (_%lp212124%_ _%rest212162%_)))
                  (_%$%K212132212156%_ (lambda () '#t)))
              (let ((_%$%try-match212129212159%_
                     (lambda ()
                       (if (null? _%$%rest212127212143%_)
                           (_%$%K212132212156%_)
                           (_%$%else212130212151%_)))))
                (if (pair? _%$%rest212127212143%_)
                    (let ((_%$%tl212135212169%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest212127212143%_)))
                          (_%$%hd212134212167%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest212127212143%_))))
                      (if (pair? _%$%hd212134212167%_)
                          (let ((_%$%tl212137212174%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%hd212134212167%_)))
                                (_%$%hd212136212172%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%hd212134212167%_))))
                            (if (pair? _%$%hd212136212172%_)
                                (let ((_%$%tl212141212177%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%hd212136212172%_))))
                                  (if (null? _%$%tl212141212177%_)
                                      (if (pair? _%$%tl212137212174%_)
                                          (let ((_%$%tl212139212180%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl212137212174%_))))
                                            (if (null? _%$%tl212139212180%_)
                                                (let ((_%rest212183%_
                                                       _%$%tl212135212169%_))
                                                  (_%lp212124%_
                                                   _%rest212183%_))
                                                (_%$%else212130212151%_)))
                                          (_%$%else212130212151%_))
                                      (_%$%else212130212151%_)))
                                (_%$%else212130212151%_)))
                          (_%$%else212130212151%_)))
                    (_%$%try-match212129212159%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self212034%_
               _%form212035%_
               _%hd212036%_
               _%body212037%_
               _%compiled-body?212038%_)
        (letrec ((_%generate1212040%_
                  (lambda (_%bind212079%_)
                    (let* ((_%$%bind212080212091%_ _%bind212079%_)
                           (_%$%E212082212094%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%$%bind212080212091%_
                                       '([[id] expr])))
                              '#!void))
                           (_%$%K212083212100%_
                            (lambda (_%expr212097%_ _%id212098%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id212098%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self212034%_
                                             _%expr212097%_))
                                          '())))))
                      (if (pair? _%$%bind212080212091%_)
                          (let ((_%$%hd212084212103%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%bind212080212091%_)))
                                (_%$%tl212085212105%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%bind212080212091%_))))
                            (if (pair? _%$%hd212084212103%_)
                                (let ((_%$%hd212088212108%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%hd212084212103%_)))
                                      (_%$%tl212089212110%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%hd212084212103%_))))
                                  (let ((_%id212113%_ _%$%hd212088212108%_))
                                    (if (null? _%$%tl212089212110%_)
                                        (if (pair? _%$%tl212085212105%_)
                                            (let ((_%$%hd212086212115%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%tl212085212105%_)))
                                                  (_%$%tl212087212117%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%tl212085212105%_))))
                                              (let ((_%expr212120%_
                                                     _%$%hd212086212115%_))
                                                (if (null? _%$%tl212087212117%_)
                                                    (_%$%K212083212100%_
                                                     _%expr212120%_
                                                     _%id212113%_)
                                                    (_%$%E212082212094%_))))
                                            (_%$%E212082212094%_))
                                        (_%$%E212082212094%_))))
                                (_%$%E212082212094%_)))
                          (_%$%E212082212094%_))))))
          (let* ((_%bind212042%_ (map _%generate1212040%_ _%hd212036%_))
                 (_%body212044%_
                  (if _%compiled-body?212038%_
                      _%body212037%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self212034%_ _%body212037%_))))
                 (_%body212076%_
                  (let* ((_%$%body212045212053%_ _%body212044%_)
                         (_%$%else212047212061%_
                          (lambda () (cons _%body212044%_ '())))
                         (_%$%K212049212066%_
                          (lambda (_%exprs212064%_) _%exprs212064%_)))
                    (if (pair? _%$%body212045212053%_)
                        (let ((_%$%hd212050212069%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%body212045212053%_)))
                              (_%$%tl212051212071%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%body212045212053%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%$%hd212050212069%_ 'begin))
                              (let ((_%exprs212074%_ _%$%tl212051212071%_))
                                (_%$%K212049212066%_ _%exprs212074%_))
                              (_%$%else212047212061%_)))
                        (_%$%else212047212061%_)))))
            (cons _%form212035%_ (cons _%bind212042%_ _%body212076%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self211934%_ _%stx211935%_)
        (letrec ((_%generate1211937%_
                  (lambda (_%datum211989%_)
                    (if (or (null? _%datum211989%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum211989%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum211989%_))
                            (eof-object? _%datum211989%_))
                        _%datum211989%_
                        (if (uninterned-symbol? _%datum211989%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum211989%_
                               '#t))
                            (if (pair? _%datum211989%_)
                                (cons (_%generate1211937%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum211989%_)))
                                      (_%generate1211937%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum211989%_))))
                                (if (box? _%datum211989%_)
                                    (box (_%generate1211937%_
                                          (unbox _%datum211989%_)))
                                    (if (vector? _%datum211989%_)
                                        (vector-map
                                         _%generate1211937%_
                                         _%datum211989%_)
                                        (if (or (s8vector? _%datum211989%_)
                                                (u8vector? _%datum211989%_)
                                                (s16vector? _%datum211989%_)
                                                (u16vector? _%datum211989%_)
                                                (s32vector? _%datum211989%_)
                                                (u32vector? _%datum211989%_)
                                                (s64vector? _%datum211989%_)
                                                (u64vector? _%datum211989%_)
                                                (f32vector? _%datum211989%_)
                                                (f64vector? _%datum211989%_))
                                            _%datum211989%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx211935%_)))))))))))
          (let* ((_%$%g211939211952%_
                  (lambda (_%$%g211940211949%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g211940211949%_))))
                 (_%$%g211938211986%_
                  (lambda (_%$%g211940211955%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g211940211955%_))
                        (let ((_%$%e211942211957%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g211940211955%_))))
                          (let ((_%$%hd211943211960%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e211942211957%_)))
                                (_%$%tl211944211962%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e211942211957%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl211944211962%_))
                                (let ((_%$%e211945211965%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl211944211962%_))))
                                  (let ((_%$%hd211946211968%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e211945211965%_)))
                                        (_%$%tl211947211970%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e211945211965%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl211947211970%_))
                                        (cons 'quote
                                              (cons (_%generate1211937%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd211946211968%_)))
                                                    '()))
                                        (_%$%g211939211952%_
                                         _%$%g211940211955%_))))
                                (_%$%g211939211952%_ _%$%g211940211955%_))))
                        (_%$%g211939211952%_ _%$%g211940211955%_)))))
            (_%$%g211938211986%_ _%stx211935%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self211381%_ _%stx211382%_)
        (letrec ((_%compile-call211384%_
                  (lambda (_%rator211671%_ _%rands211672%_)
                    (let ((_%rator211678%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self211381%_
                              _%rator211671%_)))
                          (_%rands211679%_
                           (map (lambda (_%$%g211673211675%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self211381%_
                                     _%$%g211673211675%_)))
                                _%rands211672%_)))
                      (let* ((_%__stx217398217399%_ _%rator211678%_)
                             (_%$%g211682211734%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx217398217399%_)))))
                        (let ((_%__kont217400217401%_
                               (lambda (_%$%g211684211854%_
                                        _%$%g211685211855%_
                                        _%$%g211686211856%_
                                        _%$%g211687211857%_)
                                 (if (let ((__tmp218068
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands211679%_)))
                                           (__tmp218066
                                            (length (let ((__tmp218067
                                                           (lambda (_%$%g211893211896%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g211894211898%_)
                     (cons _%$%g211893211896%_ _%$%g211894211898%_))))
              (declare (not safe))
              (foldr__0 __tmp218067 '() _%$%g211686211856%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp218068 __tmp218066))
                                     (let* ((_%id211901%_ _%$%g211687211857%_)
                                            (_%args211910%_
                                             (let ((__tmp218069
                                                    (lambda (_%$%g211902211905%_
                                                             _%$%g211903211907%_)
                                                      (cons _%$%g211902211905%_
                                                            _%$%g211903211907%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp218069
                                                '()
                                                _%$%g211686211856%_)))
                                            (_%body211919%_
                                             (let ((__tmp218070
                                                    (lambda (_%$%g211911211914%_
                                                             _%$%g211912211916%_)
                                                      (cons _%$%g211911211914%_
                                                            _%$%g211912211916%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp218070
                                                '()
                                                _%$%g211685211855%_)))
                                            (_%init211921%_
                                             (map list
                                                  _%args211910%_
                                                  _%rands211679%_)))
                                       (cons 'let
                                             (cons _%id211901%_
                                                   (cons _%init211921%_
                                                         _%body211919%_))))
                                     (let ((__tmp218071
                                            (let ((__tmp218072
                                                   (lambda (_%$%g211923211926%_
                                                            _%$%g211924211928%_)
                                                     (cons _%$%g211923211926%_
                                                           _%$%g211924211928%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp218072
                                               '()
                                               _%$%g211686211856%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx211382%_
                                        __tmp218071
                                        _%rands211679%_)))))
                              (_%__kont217406217407%_
                               (lambda ()
                                 (cons _%rator211678%_ _%rands211679%_))))
                          (let ((_%__match217465217466%_
                                 (lambda (_%$%e211688211746%_
                                          _%$%hd211689211749%_
                                          _%$%tl211690211751%_
                                          _%$%e211691211754%_
                                          _%$%hd211692211757%_
                                          _%$%tl211693211759%_
                                          _%$%e211694211762%_
                                          _%$%hd211695211765%_
                                          _%$%tl211696211767%_
                                          _%$%e211697211770%_
                                          _%$%hd211698211773%_
                                          _%$%tl211699211775%_
                                          _%$%e211700211778%_
                                          _%$%hd211701211781%_
                                          _%$%tl211702211783%_
                                          _%$%e211703211786%_
                                          _%$%hd211704211789%_
                                          _%$%tl211705211791%_
                                          _%$%e211706211794%_
                                          _%$%hd211707211797%_
                                          _%$%tl211708211799%_
                                          _%__splice217402217403%_
                                          _%$%target211709211802%_
                                          _%$%tl211711211804%_)
                                   (letrec ((_%$%loop211712211807%_
                                             (lambda (_%$%hd211710211810%_
                                                      _%$%arg211716211812%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%hd211710211810%_))
                                                   (let ((_%$%e211713211814%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%hd211710211810%_))))
                                                     (let ((_%$%lp-tl211715211819%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e211713211814%_)))
                                                           (_%$%lp-hd211714211817%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e211713211814%_))))
                                                       (_%$%loop211712211807%_
                                                        _%$%lp-tl211715211819%_
                                                        (cons _%$%lp-hd211714211817%_
                                                              _%$%arg211716211812%_))))
                                                   (let ((_%$%arg211717211822%_
                                                          (reverse _%$%arg211716211812%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%$%tl211708211799%_))
                                                         (let ((_%__splice217404217405%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%$%tl211708211799%_
                           '0))))
                   (let ((_%$%tl211720211826%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice217404217405%_ '1)))
                         (_%$%target211718211824%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice217404217405%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl211720211826%_))
                         (letrec ((_%$%loop211721211829%_
                                   (lambda (_%$%hd211719211832%_
                                            _%$%body211725211834%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%hd211719211832%_))
                                         (let ((_%$%e211722211836%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%hd211719211832%_))))
                                           (let ((_%$%lp-tl211724211841%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e211722211836%_)))
                                                 (_%$%lp-hd211723211839%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e211722211836%_))))
                                             (_%$%loop211721211829%_
                                              _%$%lp-tl211724211841%_
                                              (cons _%$%lp-hd211723211839%_
                                                    _%$%body211725211834%_))))
                                         (let ((_%$%body211726211844%_
                                                (reverse _%$%body211725211834%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%$%tl211702211783%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl211696211767%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl211693211759%_))
                                                       (let ((_%$%e211727211846%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl211693211759%_))))
                 (let ((_%$%tl211729211851%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e211727211846%_)))
                       (_%$%hd211728211849%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e211727211846%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl211729211851%_))
                       (let ((_%$%g211684211854%_ _%$%hd211728211849%_)
                             (_%$%g211685211855%_ _%$%body211726211844%_)
                             (_%$%g211686211856%_ _%$%arg211717211822%_)
                             (_%$%g211687211857%_ _%$%hd211698211773%_))
                         (if (eq? _%$%g211687211857%_ _%$%g211684211854%_)
                             (_%__kont217400217401%_
                              _%$%g211684211854%_
                              _%$%g211685211855%_
                              _%$%g211686211856%_
                              _%$%g211687211857%_)
                             (_%__kont217406217407%_)))
                       (_%__kont217406217407%_))))
               (_%__kont217406217407%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont217406217407%_))
                                               (_%__kont217406217407%_)))))))
                           (_%$%loop211721211829%_
                            _%$%target211718211824%_
                            '()))
                         (_%__kont217406217407%_))))
                 (_%__kont217406217407%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%$%loop211712211807%_
                                      _%$%target211709211802%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx217398217399%_))
                                (let ((_%$%e211688211746%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx217398217399%_))))
                                  (let ((_%$%tl211690211751%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e211688211746%_)))
                                        (_%$%hd211689211749%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e211688211746%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd211689211749%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%$%hd211689211749%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl211690211751%_))
                                                (let ((_%$%e211691211754%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl211690211751%_))))
                                                  (let ((_%$%tl211693211759%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e211691211754%_)))
                                                        (_%$%hd211692211757%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e211691211754%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd211692211757%_))
                                                        (let ((_%$%e211694211762%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd211692211757%_))))
                  (let ((_%$%tl211696211767%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e211694211762%_)))
                        (_%$%hd211695211765%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e211694211762%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd211695211765%_))
                        (let ((_%$%e211697211770%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd211695211765%_))))
                          (let ((_%$%tl211699211775%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e211697211770%_)))
                                (_%$%hd211698211773%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e211697211770%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl211699211775%_))
                                (let ((_%$%e211700211778%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl211699211775%_))))
                                  (let ((_%$%tl211702211783%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e211700211778%_)))
                                        (_%$%hd211701211781%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e211700211778%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd211701211781%_))
                                        (let ((_%$%e211703211786%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd211701211781%_))))
                                          (let ((_%$%tl211705211791%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e211703211786%_)))
                                                (_%$%hd211704211789%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e211703211786%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd211704211789%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%$%hd211704211789%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl211705211791%_))
                                                        (let ((_%$%e211706211794%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl211705211791%_))))
                  (let ((_%$%tl211708211799%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e211706211794%_)))
                        (_%$%hd211707211797%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e211706211794%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%$%hd211707211797%_))
                        (let ((_%__splice217402217403%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%$%hd211707211797%_
                                  '0))))
                          (let ((_%$%tl211711211804%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice217402217403%_ '1)))
                                (_%$%target211709211802%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice217402217403%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl211711211804%_))
                                (_%__match217465217466%_
                                 _%$%e211688211746%_
                                 _%$%hd211689211749%_
                                 _%$%tl211690211751%_
                                 _%$%e211691211754%_
                                 _%$%hd211692211757%_
                                 _%$%tl211693211759%_
                                 _%$%e211694211762%_
                                 _%$%hd211695211765%_
                                 _%$%tl211696211767%_
                                 _%$%e211697211770%_
                                 _%$%hd211698211773%_
                                 _%$%tl211699211775%_
                                 _%$%e211700211778%_
                                 _%$%hd211701211781%_
                                 _%$%tl211702211783%_
                                 _%$%e211703211786%_
                                 _%$%hd211704211789%_
                                 _%$%tl211705211791%_
                                 _%$%e211706211794%_
                                 _%$%hd211707211797%_
                                 _%$%tl211708211799%_
                                 _%__splice217402217403%_
                                 _%$%target211709211802%_
                                 _%$%tl211711211804%_)
                                (_%__kont217406217407%_))))
                        (_%__kont217406217407%_))))
                (_%__kont217406217407%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont217406217407%_))
                                                (_%__kont217406217407%_))))
                                        (_%__kont217406217407%_))))
                                (_%__kont217406217407%_))))
                        (_%__kont217406217407%_))))
                (_%__kont217406217407%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont217406217407%_))
                                            (_%__kont217406217407%_))
                                        (_%__kont217406217407%_))))
                                (_%__kont217406217407%_)))))))))
          (let* ((_%$%g211386211409%_
                  (lambda (_%$%g211387211406%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g211387211406%_))))
                 (_%$%g211385211668%_
                  (lambda (_%$%g211387211412%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g211387211412%_))
                        (let ((_%$%e211390211414%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g211387211412%_))))
                          (let ((_%$%hd211391211417%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e211390211414%_)))
                                (_%$%tl211392211419%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e211390211414%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl211392211419%_))
                                (let ((_%$%e211393211422%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl211392211419%_))))
                                  (let ((_%$%hd211394211425%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e211393211422%_)))
                                        (_%$%tl211395211427%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e211393211422%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%tl211395211427%_))
                                        (let ((_g218073_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%$%tl211395211427%_
                                                  '0))))
                                          (begin
                                            (let ((_g218074_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g218073_)
                                                         (##values-length
                                                          _g218073_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g218074_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g218074_)))
                                            (let ((_%$%target211396211430%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g218073_
                                                      0)))
                                                  (_%$%tl211398211432%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g218073_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl211398211432%_))
                                                  (letrec ((_%$%loop211399211435%_
                                                            (lambda (_%$%hd211397211438%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%rand211403211440%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd211397211438%_))
                          (let ((_%$%e211400211442%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd211397211438%_))))
                            (let ((_%$%lp-hd211401211445%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e211400211442%_)))
                                  (_%$%lp-tl211402211447%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e211400211442%_))))
                              (_%$%loop211399211435%_
                               _%$%lp-tl211402211447%_
                               (cons _%$%lp-hd211401211445%_
                                     _%$%rand211403211440%_))))
                          (let ((_%$%rand211404211450%_
                                 (reverse _%$%rand211403211440%_)))
                            (if (gxc#current-compile-decls-unsafe?)
                                (_%compile-call211384%_
                                 _%$%hd211394211425%_
                                 (let ((__tmp218075
                                        (lambda (_%$%g211470211473%_
                                                 _%$%g211471211475%_)
                                          (cons _%$%g211470211473%_
                                                _%$%g211471211475%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp218075
                                    '()
                                    _%$%rand211404211450%_)))
                                (let* ((_%__stx217514217515%_
                                        _%$%hd211394211425%_)
                                       (_%$%g211479211491%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx217514217515%_)))))
                                  (let ((_%__kont217516217517%_
                                         (lambda ()
                                           (let ((_%f211528%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self211381%_
                                                     _%$%hd211394211425%_))))
                                             (if (and (let ((__tmp218076
                                                             (symbol->string
                                                              _%f211528%_)))
                                                        (declare (not safe))
                                                        (##string-prefix?
                                                         '"##"
                                                         __tmp218076))
                                                      (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##memq _%f211528%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let _%lp211530%_ ((_%rest211533%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (reverse (let ((__tmp218078
                                             (lambda (_%$%g211650211653%_
                                                      _%$%g211651211655%_)
                                               (cons _%$%g211650211653%_
                                                     _%$%g211651211655%_))))
                                        (declare (not safe))
                                        (foldr__0
                                         __tmp218078
                                         '()
                                         _%$%rand211404211450%_))))
                            (_%bind211535%_ '())
                            (_%args211536%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%$%rest211537211545%_
                                                           _%rest211533%_)
                                                          (_%$%else211539211553%_
                                                           (lambda ()
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%bind211535%_
                                 (cons '(declare (not safe))
                                       (cons (cons _%f211528%_ _%args211536%_)
                                             '()))))))
                  (_%$%K211541211639%_
                   (lambda (_%rest211556%_ _%e211557%_)
                     (let* ((_%__stx217468217469%_ _%e211557%_)
                            (_%$%g211562211580%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%__stx217468217469%_)))))
                       (let ((_%__kont217470217471%_
                              (lambda ()
                                (_%lp211530%_
                                 _%rest211556%_
                                 _%bind211535%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _%e211557%_))
                                       _%args211536%_))))
                             (_%__kont217472217473%_
                              (lambda ()
                                (_%lp211530%_
                                 _%rest211556%_
                                 _%bind211535%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _%e211557%_))
                                       _%args211536%_))))
                             (_%__kont217474217475%_
                              (lambda ()
                                (let ((_%tmp211587%_
                                       (let ((__tmp218077
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__tmp))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp218077))))
                                  (_%lp211530%_
                                   _%rest211556%_
                                   (cons (cons _%tmp211587%_
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _%e211557%_))
                                                     '()))
                                         _%bind211535%_)
                                   (cons _%tmp211587%_ _%args211536%_))))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%__stx217468217469%_))
                             (let ((_%$%e211564211618%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%__stx217468217469%_))))
                               (let ((_%$%tl211566211623%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e211564211618%_)))
                                     (_%$%hd211565211621%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e211564211618%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#identifier? _%$%hd211565211621%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-eq?
                                            '%#ref
                                            _%$%hd211565211621%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%tl211566211623%_))
                                             (let ((_%$%e211567211626%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%tl211566211623%_))))
                                               (let ((_%$%tl211569211631%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e211567211626%_)))
                                                     (_%$%hd211568211629%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e211567211626%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%$%tl211569211631%_))
                                                     (_%__kont217470217471%_)
                                                     (_%__kont217474217475%_))))
                                             (_%__kont217474217475%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#quote
                                                _%$%hd211565211621%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%tl211566211623%_))
                                                 (let ((_%$%e211573211603%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%tl211566211623%_))))
                                                   (let ((_%$%tl211575211608%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e211573211603%_)))
                                                         (_%$%hd211574211606%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e211573211603%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%$%tl211575211608%_))
                                                         (_%__kont217472217473%_)
                                                         (_%__kont217474217475%_))))
                                                 (_%__kont217474217475%_))
                                             (_%__kont217474217475%_)))
                                     (_%__kont217474217475%_))))
                             (_%__kont217474217475%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (pair? _%$%rest211537211545%_)
                                                         (let ((_%$%hd211542211642%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%rest211537211545%_)))
                       (_%$%tl211543211644%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%rest211537211545%_))))
                   (let* ((_%e211647%_ _%$%hd211542211642%_)
                          (_%rest211649%_ _%$%tl211543211644%_))
                     (_%$%K211541211639%_ _%rest211649%_ _%e211647%_)))
                 (_%$%else211539211553%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%compile-call211384%_
                                                  _%$%hd211394211425%_
                                                  (let ((__tmp218079
                                                         (lambda (_%$%g211657211660%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g211658211662%_)
                   (cons _%$%g211657211660%_ _%$%g211658211662%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp218079
                                                     '()
                                                     _%$%rand211404211450%_)))))))
                                        (_%__kont217518217519%_
                                         (lambda ()
                                           (_%compile-call211384%_
                                            _%$%hd211394211425%_
                                            (let ((__tmp218080
                                                   (lambda (_%$%g211497211500%_
                                                            _%$%g211498211502%_)
                                                     (cons _%$%g211497211500%_
                                                           _%$%g211498211502%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp218080
                                               '()
                                               _%$%rand211404211450%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx217514217515%_))
                                        (let ((_%$%e211481211510%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx217514217515%_))))
                                          (let ((_%$%tl211483211515%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e211481211510%_)))
                                                (_%$%hd211482211513%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e211481211510%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd211482211513%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%$%hd211482211513%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl211483211515%_))
                                                        (let ((_%$%e211484211518%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl211483211515%_))))
                  (let ((_%$%tl211486211523%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e211484211518%_)))
                        (_%$%hd211485211521%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e211484211518%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl211486211523%_))
                        (_%__kont217516217517%_)
                        (_%__kont217518217519%_))))
                (_%__kont217518217519%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont217518217519%_))
                                                (_%__kont217518217519%_))))
                                        (_%__kont217518217519%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%loop211399211435%_
                                                     _%$%target211396211430%_
                                                     '()))
                                                  (_%$%g211386211409%_
                                                   _%$%g211387211412%_)))))
                                        (_%$%g211386211409%_
                                         _%$%g211387211412%_))))
                                (_%$%g211386211409%_ _%$%g211387211412%_))))
                        (_%$%g211386211409%_ _%$%g211387211412%_)))))
            (_%$%g211385211668%_ _%stx211382%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self211126%_ _%stx211127%_)
        (let* ((_%__stx217586217587%_ _%stx211127%_)
               (_%$%g211130211159%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx217586217587%_)))))
          (let ((_%__kont217588217589%_
                 (lambda (_%$%g211132211225%_ _%$%g211133211226%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self211126%_
                        _%stx211127%_)
                       (let ((_%f211248%_
                              (let ((__tmp218081
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%$%g211133211226%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self211126%_
                                 __tmp218081))))
                         (let _%lp211250%_ ((_%rest211253%_
                                             (reverse (let ((__tmp218083
                                                             (lambda (_%$%g211370211373%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g211371211375%_)
                       (cons _%$%g211370211373%_ _%$%g211371211375%_))))
                (declare (not safe))
                (foldr__0 __tmp218083 '() _%$%g211132211225%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind211255%_ '())
                                            (_%args211256%_ '()))
                           (let* ((_%$%rest211257211265%_ _%rest211253%_)
                                  (_%$%else211259211273%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind211255%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f211248%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args211256%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%$%K211261211359%_
                                   (lambda (_%rest211276%_ _%e211277%_)
                                     (let* ((_%__stx217540217541%_ _%e211277%_)
                                            (_%$%g211282211300%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx217540217541%_)))))
                                       (let ((_%__kont217542217543%_
                                              (lambda ()
                                                (_%lp211250%_
                                                 _%rest211276%_
                                                 _%bind211255%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e211277%_))
                                                       _%args211256%_))))
                                             (_%__kont217544217545%_
                                              (lambda ()
                                                (_%lp211250%_
                                                 _%rest211276%_
                                                 _%bind211255%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e211277%_))
                                                       _%args211256%_))))
                                             (_%__kont217546217547%_
                                              (lambda ()
                                                (let ((_%tmp211307%_
                                                       (let ((__tmp218082
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp218082))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp211250%_
                                                   _%rest211276%_
                                                   (cons (cons _%tmp211307%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e211277%_))
                             '()))
                 _%bind211255%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp211307%_
                                                         _%args211256%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx217540217541%_))
                                             (let ((_%$%e211284211338%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx217540217541%_))))
                                               (let ((_%$%tl211286211343%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e211284211338%_)))
                                                     (_%$%hd211285211341%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e211284211338%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%$%hd211285211341%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%$%hd211285211341%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%tl211286211343%_))
                     (let ((_%$%e211287211346%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl211286211343%_))))
                       (let ((_%$%tl211289211351%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e211287211346%_)))
                             (_%$%hd211288211349%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e211287211346%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl211289211351%_))
                             (_%__kont217542217543%_)
                             (_%__kont217546217547%_))))
                     (_%__kont217546217547%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%$%hd211285211341%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%tl211286211343%_))
                         (let ((_%$%e211293211323%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%tl211286211343%_))))
                           (let ((_%$%tl211295211328%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e211293211323%_)))
                                 (_%$%hd211294211326%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e211293211323%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%$%tl211295211328%_))
                                 (_%__kont217544217545%_)
                                 (_%__kont217546217547%_))))
                         (_%__kont217546217547%_))
                     (_%__kont217546217547%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont217546217547%_))))
                                             (_%__kont217546217547%_)))))))
                             (if (pair? _%$%rest211257211265%_)
                                 (let ((_%$%hd211262211362%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%rest211257211265%_)))
                                       (_%$%tl211263211364%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%rest211257211265%_))))
                                   (let* ((_%e211367%_ _%$%hd211262211362%_)
                                          (_%rest211369%_
                                           _%$%tl211263211364%_))
                                     (_%$%K211261211359%_
                                      _%rest211369%_
                                      _%e211367%_)))
                                 (_%$%else211259211273%_))))))))
                (_%__kont217592217593%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self211126%_ _%stx211127%_))))
            (let ((_%__match217631217632%_
                   (lambda (_%$%e211134211171%_
                            _%$%hd211135211174%_
                            _%$%tl211136211176%_
                            _%$%e211137211179%_
                            _%$%hd211138211182%_
                            _%$%tl211139211184%_
                            _%$%e211140211187%_
                            _%$%hd211141211190%_
                            _%$%tl211142211192%_
                            _%$%e211143211195%_
                            _%$%hd211144211198%_
                            _%$%tl211145211200%_
                            _%__splice217590217591%_
                            _%$%target211146211203%_
                            _%$%tl211148211205%_)
                     (letrec ((_%$%loop211149211208%_
                               (lambda (_%$%hd211147211211%_
                                        _%$%rand211153211213%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd211147211211%_))
                                     (let ((_%$%e211150211215%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd211147211211%_))))
                                       (let ((_%$%lp-tl211152211220%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e211150211215%_)))
                                             (_%$%lp-hd211151211218%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e211150211215%_))))
                                         (_%$%loop211149211208%_
                                          _%$%lp-tl211152211220%_
                                          (cons _%$%lp-hd211151211218%_
                                                _%$%rand211153211213%_))))
                                     (let ((_%$%rand211154211223%_
                                            (reverse _%$%rand211153211213%_)))
                                       (_%__kont217588217589%_
                                        _%$%rand211154211223%_
                                        _%$%hd211144211198%_))))))
                       (_%$%loop211149211208%_
                        _%$%target211146211203%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx217586217587%_))
                  (let ((_%$%e211134211171%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx217586217587%_))))
                    (let ((_%$%tl211136211176%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e211134211171%_)))
                          (_%$%hd211135211174%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e211134211171%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl211136211176%_))
                          (let ((_%$%e211137211179%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl211136211176%_))))
                            (let ((_%$%tl211139211184%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e211137211179%_)))
                                  (_%$%hd211138211182%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e211137211179%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd211138211182%_))
                                  (let ((_%$%e211140211187%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd211138211182%_))))
                                    (let ((_%$%tl211142211192%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e211140211187%_)))
                                          (_%$%hd211141211190%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e211140211187%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd211141211190%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd211141211190%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl211142211192%_))
                                                  (let ((_%$%e211143211195%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl211142211192%_))))
                                                    (let ((_%$%tl211145211200%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e211143211195%_)))
                                                          (_%$%hd211144211198%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e211143211195%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl211145211200%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%$%tl211139211184%_))
                      (let ((_%__splice217590217591%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl211139211184%_
                                '0))))
                        (let ((_%$%tl211148211205%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice217590217591%_ '1)))
                              (_%$%target211146211203%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice217590217591%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl211148211205%_))
                              (_%__match217631217632%_
                               _%$%e211134211171%_
                               _%$%hd211135211174%_
                               _%$%tl211136211176%_
                               _%$%e211137211179%_
                               _%$%hd211138211182%_
                               _%$%tl211139211184%_
                               _%$%e211140211187%_
                               _%$%hd211141211190%_
                               _%$%tl211142211192%_
                               _%$%e211143211195%_
                               _%$%hd211144211198%_
                               _%$%tl211145211200%_
                               _%__splice217590217591%_
                               _%$%target211146211203%_
                               _%$%tl211148211205%_)
                              (_%__kont217592217593%_))))
                      (_%__kont217592217593%_))
                  (_%__kont217592217593%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont217592217593%_))
                                              (_%__kont217592217593%_))
                                          (_%__kont217592217593%_))))
                                  (_%__kont217592217593%_))))
                          (_%__kont217592217593%_))))
                  (_%__kont217592217593%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self210938%_ _%stx210939%_)
        (letrec ((_%simplify210941%_
                  (lambda (_%code211026%_)
                    (let* ((_%$%code211027211045%_ _%code211026%_)
                           (_%$%else211029211053%_ (lambda () _%code211026%_))
                           (_%$%K211031211089%_
                            (lambda (_%expr211056%_ _%test211057%_)
                              (let* ((_%$%expr211058211066%_ _%expr211056%_)
                                     (_%$%else211060211074%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test211057%_
                                                    (cons _%expr211056%_
                                                          '())))))
                                     (_%$%K211062211079%_
                                      (lambda (_%exprs211077%_)
                                        (cons 'and
                                              (cons _%test211057%_
                                                    _%exprs211077%_)))))
                                (if (pair? _%$%expr211058211066%_)
                                    (let ((_%$%hd211063211082%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%expr211058211066%_)))
                                          (_%$%tl211064211084%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%expr211058211066%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%$%hd211063211082%_ 'and))
                                          (let ((_%exprs211087%_
                                                 _%$%tl211064211084%_))
                                            (_%$%K211062211079%_
                                             _%exprs211087%_))
                                          (_%$%else211060211074%_)))
                                    (_%$%else211060211074%_))))))
                      (if (pair? _%$%code211027211045%_)
                          (let ((_%$%hd211032211092%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%code211027211045%_)))
                                (_%$%tl211033211094%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%code211027211045%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%$%hd211032211092%_ 'if))
                                (if (pair? _%$%tl211033211094%_)
                                    (let ((_%$%hd211034211097%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%tl211033211094%_)))
                                          (_%$%tl211035211099%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%tl211033211094%_))))
                                      (let ((_%test211102%_
                                             _%$%hd211034211097%_))
                                        (if (pair? _%$%tl211035211099%_)
                                            (let ((_%$%hd211036211104%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%tl211035211099%_)))
                                                  (_%$%tl211037211106%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%tl211035211099%_))))
                                              (let ((_%expr211109%_
                                                     _%$%hd211036211104%_))
                                                (if (pair? _%$%tl211037211106%_)
                                                    (let ((_%$%hd211038211111%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%tl211037211106%_)))
                                                          (_%$%tl211039211113%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%tl211037211106%_))))
                                                      (if (pair? _%$%hd211038211111%_)
                                                          (let ((_%$%hd211040211116%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%hd211038211111%_)))
                        (_%$%tl211041211118%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%hd211038211111%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%$%hd211040211116%_ 'quote))
                        (if (pair? _%$%tl211041211118%_)
                            (let ((_%$%hd211042211121%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%tl211041211118%_)))
                                  (_%$%tl211043211123%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%tl211041211118%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%$%hd211042211121%_ '#f))
                                  (if (null? _%$%tl211043211123%_)
                                      (if (null? _%$%tl211039211113%_)
                                          (_%$%K211031211089%_
                                           _%expr211109%_
                                           _%test211102%_)
                                          (_%$%else211029211053%_))
                                      (_%$%else211029211053%_))
                                  (_%$%else211029211053%_)))
                            (_%$%else211029211053%_))
                        (_%$%else211029211053%_)))
                  (_%$%else211029211053%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%else211029211053%_))))
                                            (_%$%else211029211053%_))))
                                    (_%$%else211029211053%_))
                                (_%$%else211029211053%_)))
                          (_%$%else211029211053%_))))))
          (let* ((_%$%g210943210964%_
                  (lambda (_%$%g210944210961%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g210944210961%_))))
                 (_%$%g210942211023%_
                  (lambda (_%$%g210944210967%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g210944210967%_))
                        (let ((_%$%e210948210969%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g210944210967%_))))
                          (let ((_%$%hd210949210972%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e210948210969%_)))
                                (_%$%tl210950210974%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e210948210969%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl210950210974%_))
                                (let ((_%$%e210951210977%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl210950210974%_))))
                                  (let ((_%$%hd210952210980%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e210951210977%_)))
                                        (_%$%tl210953210982%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e210951210977%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl210953210982%_))
                                        (let ((_%$%e210954210985%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl210953210982%_))))
                                          (let ((_%$%hd210955210988%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e210954210985%_)))
                                                (_%$%tl210956210990%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e210954210985%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl210956210990%_))
                                                (let ((_%$%e210957210993%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl210956210990%_))))
                                                  (let ((_%$%hd210958210996%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e210957210993%_)))
                                                        (_%$%tl210959210998%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e210957210993%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl210959210998%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#current-compile-boolean-context))
                                                            (_%simplify210941%_
                                                             (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self210938%_
                                    _%$%hd210952210980%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self210938%_
                                          _%$%hd210955210988%_))
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self210938%_
                                                _%$%hd210958210996%_))
                                             '())))))
                    (cons 'if
                          (cons (let ((__tmp218084
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self210938%_
                                            _%$%hd210952210980%_)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp218084
                                   gxc#current-compile-boolean-context
                                   '#t))
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self210938%_
                                         _%$%hd210955210988%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self210938%_
                                               _%$%hd210958210996%_))
                                            '())))))
                (_%$%g210943210964%_ _%$%g210944210967%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g210943210964%_
                                                 _%$%g210944210967%_))))
                                        (_%$%g210943210964%_
                                         _%$%g210944210967%_))))
                                (_%$%g210943210964%_ _%$%g210944210967%_))))
                        (_%$%g210943210964%_ _%$%g210944210967%_)))))
            (_%$%g210942211023%_ _%stx210939%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self210886%_ _%stx210887%_)
        (let* ((_%$%g210889210902%_
                (lambda (_%$%g210890210899%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g210890210899%_))))
               (_%$%g210888210935%_
                (lambda (_%$%g210890210905%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g210890210905%_))
                      (let ((_%$%e210892210907%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g210890210905%_))))
                        (let ((_%$%hd210893210910%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e210892210907%_)))
                              (_%$%tl210894210912%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e210892210907%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl210894210912%_))
                              (let ((_%$%e210895210915%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl210894210912%_))))
                                (let ((_%$%hd210896210918%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e210895210915%_)))
                                      (_%$%tl210897210920%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e210895210915%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl210897210920%_))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-binding-id
                                         _%$%hd210896210918%_))
                                      (_%$%g210889210902%_
                                       _%$%g210890210905%_))))
                              (_%$%g210889210902%_ _%$%g210890210905%_))))
                      (_%$%g210889210902%_ _%$%g210890210905%_)))))
          (_%$%g210888210935%_ _%stx210887%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self210818%_ _%stx210819%_)
        (let* ((_%$%g210821210838%_
                (lambda (_%$%g210822210835%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g210822210835%_))))
               (_%$%g210820210883%_
                (lambda (_%$%g210822210841%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g210822210841%_))
                      (let ((_%$%e210825210843%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g210822210841%_))))
                        (let ((_%$%hd210826210846%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e210825210843%_)))
                              (_%$%tl210827210848%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e210825210843%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl210827210848%_))
                              (let ((_%$%e210828210851%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl210827210848%_))))
                                (let ((_%$%hd210829210854%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e210828210851%_)))
                                      (_%$%tl210830210856%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e210828210851%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl210830210856%_))
                                      (let ((_%$%e210831210859%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl210830210856%_))))
                                        (let ((_%$%hd210832210862%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e210831210859%_)))
                                              (_%$%tl210833210864%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e210831210859%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl210833210864%_))
                                              (cons 'set!
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#generate-runtime-binding-id
                                                             _%$%hd210829210854%_))
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self210818%_
                           _%$%hd210832210862%_))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g210821210838%_
                                               _%$%g210822210841%_))))
                                      (_%$%g210821210838%_
                                       _%$%g210822210841%_))))
                              (_%$%g210821210838%_ _%$%g210822210841%_))))
                      (_%$%g210821210838%_ _%$%g210822210841%_)))))
          (_%$%g210820210883%_ _%stx210819%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self210629%_ _%stx210630%_)
        (let* ((_%$%g210632210649%_
                (lambda (_%$%g210633210646%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g210633210646%_))))
               (_%$%g210631210815%_
                (lambda (_%$%g210633210652%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g210633210652%_))
                      (let ((_%$%e210636210654%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g210633210652%_))))
                        (let ((_%$%hd210637210657%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e210636210654%_)))
                              (_%$%tl210638210659%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e210636210654%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl210638210659%_))
                              (let ((_%$%e210639210662%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl210638210659%_))))
                                (let ((_%$%hd210640210665%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e210639210662%_)))
                                      (_%$%tl210641210667%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e210639210662%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl210641210667%_))
                                      (let ((_%$%e210642210670%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl210641210667%_))))
                                        (let ((_%$%hd210643210673%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e210642210670%_)))
                                              (_%$%tl210644210675%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e210642210670%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl210644210675%_))
                                              (if (gxc#current-compile-decls-unsafe?)
                                                  (cons '##structure-instance-of?
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__1 _%self210629%_ _%$%hd210643210673%_))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self210629%_
                               _%$%hd210640210665%_))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let _%lp210694%_ ((_%rest210697%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$%hd210640210665%_
                                    (cons _%$%hd210643210673%_ '())))
                             (_%bind210699%_ '())
                             (_%args210700%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%$%rest210701210709%_
                                                            _%rest210697%_)
                                                           (_%$%else210703210717%_
                                                            (lambda ()
                                                              (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%bind210699%_
                                  (cons '(declare (not safe))
                                        (cons (cons '##structure-instance-of?
                                                    _%args210700%_)
                                              '()))))))
                   (_%$%K210705210803%_
                    (lambda (_%rest210720%_ _%e210721%_)
                      (let* ((_%__stx217634217635%_ _%e210721%_)
                             (_%$%g210726210744%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx217634217635%_)))))
                        (let ((_%__kont217636217637%_
                               (lambda ()
                                 (_%lp210694%_
                                  _%rest210720%_
                                  _%bind210699%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e210721%_))
                                        _%args210700%_))))
                              (_%__kont217638217639%_
                               (lambda ()
                                 (_%lp210694%_
                                  _%rest210720%_
                                  _%bind210699%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e210721%_))
                                        _%args210700%_))))
                              (_%__kont217640217641%_
                               (lambda ()
                                 (let ((_%tmp210751%_
                                        (let ((__tmp218085
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__tmp))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp218085))))
                                   (_%lp210694%_
                                    _%rest210720%_
                                    (cons (cons _%tmp210751%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__0
                                                         _%e210721%_))
                                                      '()))
                                          _%bind210699%_)
                                    (cons _%tmp210751%_ _%args210700%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx217634217635%_))
                              (let ((_%$%e210728210782%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx217634217635%_))))
                                (let ((_%$%tl210730210787%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e210728210782%_)))
                                      (_%$%hd210729210785%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e210728210782%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd210729210785%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd210729210785%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl210730210787%_))
                                              (let ((_%$%e210731210790%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl210730210787%_))))
                                                (let ((_%$%tl210733210795%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e210731210790%_)))
                                                      (_%$%hd210732210793%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e210731210790%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl210733210795%_))
                                                      (_%__kont217636217637%_)
                                                      (_%__kont217640217641%_))))
                                              (_%__kont217640217641%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%$%hd210729210785%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl210730210787%_))
                                                  (let ((_%$%e210737210767%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl210730210787%_))))
                                                    (let ((_%$%tl210739210772%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e210737210767%_)))
                                                          (_%$%hd210738210770%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e210737210767%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl210739210772%_))
                                                          (_%__kont217638217639%_)
                                                          (_%__kont217640217641%_))))
                                                  (_%__kont217640217641%_))
                                              (_%__kont217640217641%_)))
                                      (_%__kont217640217641%_))))
                              (_%__kont217640217641%_)))))))
              (if (pair? _%$%rest210701210709%_)
                  (let ((_%$%hd210706210806%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest210701210709%_)))
                        (_%$%tl210707210808%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest210701210709%_))))
                    (let* ((_%e210811%_ _%$%hd210706210806%_)
                           (_%rest210813%_ _%$%tl210707210808%_))
                      (_%$%K210705210803%_ _%rest210813%_ _%e210811%_)))
                  (_%$%else210703210717%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g210632210649%_
                                               _%$%g210633210652%_))))
                                      (_%$%g210632210649%_
                                       _%$%g210633210652%_))))
                              (_%$%g210632210649%_ _%$%g210633210652%_))))
                      (_%$%g210632210649%_ _%$%g210633210652%_)))))
          (_%$%g210631210815%_ _%stx210630%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self210440%_ _%stx210441%_)
        (let* ((_%$%g210443210460%_
                (lambda (_%$%g210444210457%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g210444210457%_))))
               (_%$%g210442210626%_
                (lambda (_%$%g210444210463%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g210444210463%_))
                      (let ((_%$%e210447210465%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g210444210463%_))))
                        (let ((_%$%hd210448210468%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e210447210465%_)))
                              (_%$%tl210449210470%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e210447210465%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl210449210470%_))
                              (let ((_%$%e210450210473%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl210449210470%_))))
                                (let ((_%$%hd210451210476%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e210450210473%_)))
                                      (_%$%tl210452210478%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e210450210473%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl210452210478%_))
                                      (let ((_%$%e210453210481%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl210452210478%_))))
                                        (let ((_%$%hd210454210484%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e210453210481%_)))
                                              (_%$%tl210455210486%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e210453210481%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl210455210486%_))
                                              (if (gxc#current-compile-decls-unsafe?)
                                                  (cons '##structure-direct-instance-of?
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__1 _%self210440%_ _%$%hd210454210484%_))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self210440%_
                               _%$%hd210451210476%_))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let _%lp210505%_ ((_%rest210508%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$%hd210451210476%_
                                    (cons _%$%hd210454210484%_ '())))
                             (_%bind210510%_ '())
                             (_%args210511%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%$%rest210512210520%_
                                                            _%rest210508%_)
                                                           (_%$%else210514210528%_
                                                            (lambda ()
                                                              (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%bind210510%_
                                  (cons '(declare (not safe))
                                        (cons (cons '##structure-direct-instance-of?
                                                    _%args210511%_)
                                              '()))))))
                   (_%$%K210516210614%_
                    (lambda (_%rest210531%_ _%e210532%_)
                      (let* ((_%__stx217680217681%_ _%e210532%_)
                             (_%$%g210537210555%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx217680217681%_)))))
                        (let ((_%__kont217682217683%_
                               (lambda ()
                                 (_%lp210505%_
                                  _%rest210531%_
                                  _%bind210510%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e210532%_))
                                        _%args210511%_))))
                              (_%__kont217684217685%_
                               (lambda ()
                                 (_%lp210505%_
                                  _%rest210531%_
                                  _%bind210510%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e210532%_))
                                        _%args210511%_))))
                              (_%__kont217686217687%_
                               (lambda ()
                                 (let ((_%tmp210562%_
                                        (let ((__tmp218086
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__tmp))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp218086))))
                                   (_%lp210505%_
                                    _%rest210531%_
                                    (cons (cons _%tmp210562%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__0
                                                         _%e210532%_))
                                                      '()))
                                          _%bind210510%_)
                                    (cons _%tmp210562%_ _%args210511%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx217680217681%_))
                              (let ((_%$%e210539210593%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx217680217681%_))))
                                (let ((_%$%tl210541210598%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e210539210593%_)))
                                      (_%$%hd210540210596%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e210539210593%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd210540210596%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd210540210596%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl210541210598%_))
                                              (let ((_%$%e210542210601%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl210541210598%_))))
                                                (let ((_%$%tl210544210606%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e210542210601%_)))
                                                      (_%$%hd210543210604%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e210542210601%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl210544210606%_))
                                                      (_%__kont217682217683%_)
                                                      (_%__kont217686217687%_))))
                                              (_%__kont217686217687%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%$%hd210540210596%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl210541210598%_))
                                                  (let ((_%$%e210548210578%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl210541210598%_))))
                                                    (let ((_%$%tl210550210583%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e210548210578%_)))
                                                          (_%$%hd210549210581%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e210548210578%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl210550210583%_))
                                                          (_%__kont217684217685%_)
                                                          (_%__kont217686217687%_))))
                                                  (_%__kont217686217687%_))
                                              (_%__kont217686217687%_)))
                                      (_%__kont217686217687%_))))
                              (_%__kont217686217687%_)))))))
              (if (pair? _%$%rest210512210520%_)
                  (let ((_%$%hd210517210617%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest210512210520%_)))
                        (_%$%tl210518210619%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest210512210520%_))))
                    (let* ((_%e210622%_ _%$%hd210517210617%_)
                           (_%rest210624%_ _%$%tl210518210619%_))
                      (_%$%K210516210614%_ _%rest210624%_ _%e210622%_)))
                  (_%$%else210514210528%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g210443210460%_
                                               _%$%g210444210463%_))))
                                      (_%$%g210443210460%_
                                       _%$%g210444210463%_))))
                              (_%$%g210443210460%_ _%$%g210444210463%_))))
                      (_%$%g210443210460%_ _%$%g210444210463%_)))))
          (_%$%g210442210626%_ _%stx210441%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self210356%_ _%stx210357%_)
        (let* ((_%$%g210359210380%_
                (lambda (_%$%g210360210377%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g210360210377%_))))
               (_%$%g210358210437%_
                (lambda (_%$%g210360210383%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g210360210383%_))
                      (let ((_%$%e210364210385%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g210360210383%_))))
                        (let ((_%$%hd210365210388%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e210364210385%_)))
                              (_%$%tl210366210390%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e210364210385%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl210366210390%_))
                              (let ((_%$%e210367210393%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl210366210390%_))))
                                (let ((_%$%hd210368210396%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e210367210393%_)))
                                      (_%$%tl210369210398%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e210367210393%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl210369210398%_))
                                      (let ((_%$%e210370210401%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl210369210398%_))))
                                        (let ((_%$%hd210371210404%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e210370210401%_)))
                                              (_%$%tl210372210406%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e210370210401%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl210372210406%_))
                                              (let ((_%$%e210373210409%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl210372210406%_))))
                                                (let ((_%$%hd210374210412%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e210373210409%_)))
                                                      (_%$%tl210375210414%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e210373210409%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl210375210414%_))
                                                      (cons '##structure-ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#compile-e__1
                             _%self210356%_
                             _%$%hd210374210412%_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _%self210356%_
                                   _%$%hd210371210404%_))
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self210356%_
                                         _%$%hd210368210396%_))
                                      (cons ''#f '())))))
              (_%$%g210359210380%_ _%$%g210360210383%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g210359210380%_
                                               _%$%g210360210383%_))))
                                      (_%$%g210359210380%_
                                       _%$%g210360210383%_))))
                              (_%$%g210359210380%_ _%$%g210360210383%_))))
                      (_%$%g210359210380%_ _%$%g210360210383%_)))))
          (_%$%g210358210437%_ _%stx210357%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self210256%_ _%stx210257%_)
        (let* ((_%$%g210259210284%_
                (lambda (_%$%g210260210281%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g210260210281%_))))
               (_%$%g210258210353%_
                (lambda (_%$%g210260210287%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g210260210287%_))
                      (let ((_%$%e210265210289%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g210260210287%_))))
                        (let ((_%$%hd210266210292%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e210265210289%_)))
                              (_%$%tl210267210294%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e210265210289%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl210267210294%_))
                              (let ((_%$%e210268210297%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl210267210294%_))))
                                (let ((_%$%hd210269210300%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e210268210297%_)))
                                      (_%$%tl210270210302%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e210268210297%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl210270210302%_))
                                      (let ((_%$%e210271210305%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl210270210302%_))))
                                        (let ((_%$%hd210272210308%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e210271210305%_)))
                                              (_%$%tl210273210310%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e210271210305%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl210273210310%_))
                                              (let ((_%$%e210274210313%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl210273210310%_))))
                                                (let ((_%$%hd210275210316%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e210274210313%_)))
                                                      (_%$%tl210276210318%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e210274210313%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl210276210318%_))
                                                      (let ((_%$%e210277210321%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl210276210318%_))))
                (let ((_%$%hd210278210324%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e210277210321%_)))
                      (_%$%tl210279210326%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e210277210321%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl210279210326%_))
                      (cons '##structure-set!
                            (cons (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self210256%_
                                     _%$%hd210275210316%_))
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self210256%_
                                           _%$%hd210278210324%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self210256%_
                                                 _%$%hd210272210308%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self210256%_
                                                       _%$%hd210269210300%_))
                                                    (cons ''#f '()))))))
                      (_%$%g210259210284%_ _%$%g210260210287%_))))
              (_%$%g210259210284%_ _%$%g210260210287%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g210259210284%_
                                               _%$%g210260210287%_))))
                                      (_%$%g210259210284%_
                                       _%$%g210260210287%_))))
                              (_%$%g210259210284%_ _%$%g210260210287%_))))
                      (_%$%g210259210284%_ _%$%g210260210287%_)))))
          (_%$%g210258210353%_ _%stx210257%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self210172%_ _%stx210173%_)
        (let* ((_%$%g210175210196%_
                (lambda (_%$%g210176210193%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g210176210193%_))))
               (_%$%g210174210253%_
                (lambda (_%$%g210176210199%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g210176210199%_))
                      (let ((_%$%e210180210201%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g210176210199%_))))
                        (let ((_%$%hd210181210204%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e210180210201%_)))
                              (_%$%tl210182210206%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e210180210201%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl210182210206%_))
                              (let ((_%$%e210183210209%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl210182210206%_))))
                                (let ((_%$%hd210184210212%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e210183210209%_)))
                                      (_%$%tl210185210214%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e210183210209%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl210185210214%_))
                                      (let ((_%$%e210186210217%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl210185210214%_))))
                                        (let ((_%$%hd210187210220%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e210186210217%_)))
                                              (_%$%tl210188210222%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e210186210217%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl210188210222%_))
                                              (let ((_%$%e210189210225%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl210188210222%_))))
                                                (let ((_%$%hd210190210228%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e210189210225%_)))
                                                      (_%$%tl210191210230%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e210189210225%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl210191210230%_))
                                                      (cons '##direct-structure-ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#compile-e__1
                             _%self210172%_
                             _%$%hd210190210228%_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _%self210172%_
                                   _%$%hd210187210220%_))
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self210172%_
                                         _%$%hd210184210212%_))
                                      (cons ''#f '())))))
              (_%$%g210175210196%_ _%$%g210176210199%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g210175210196%_
                                               _%$%g210176210199%_))))
                                      (_%$%g210175210196%_
                                       _%$%g210176210199%_))))
                              (_%$%g210175210196%_ _%$%g210176210199%_))))
                      (_%$%g210175210196%_ _%$%g210176210199%_)))))
          (_%$%g210174210253%_ _%stx210173%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self210072%_ _%stx210073%_)
        (let* ((_%$%g210075210100%_
                (lambda (_%$%g210076210097%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g210076210097%_))))
               (_%$%g210074210169%_
                (lambda (_%$%g210076210103%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g210076210103%_))
                      (let ((_%$%e210081210105%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g210076210103%_))))
                        (let ((_%$%hd210082210108%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e210081210105%_)))
                              (_%$%tl210083210110%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e210081210105%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl210083210110%_))
                              (let ((_%$%e210084210113%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl210083210110%_))))
                                (let ((_%$%hd210085210116%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e210084210113%_)))
                                      (_%$%tl210086210118%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e210084210113%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl210086210118%_))
                                      (let ((_%$%e210087210121%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl210086210118%_))))
                                        (let ((_%$%hd210088210124%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e210087210121%_)))
                                              (_%$%tl210089210126%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e210087210121%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl210089210126%_))
                                              (let ((_%$%e210090210129%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl210089210126%_))))
                                                (let ((_%$%hd210091210132%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e210090210129%_)))
                                                      (_%$%tl210092210134%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e210090210129%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl210092210134%_))
                                                      (let ((_%$%e210093210137%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl210092210134%_))))
                (let ((_%$%hd210094210140%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e210093210137%_)))
                      (_%$%tl210095210142%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e210093210137%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl210095210142%_))
                      (cons '##direct-structure-set!
                            (cons (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self210072%_
                                     _%$%hd210091210132%_))
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self210072%_
                                           _%$%hd210094210140%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self210072%_
                                                 _%$%hd210088210124%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self210072%_
                                                       _%$%hd210085210116%_))
                                                    (cons ''#f '()))))))
                      (_%$%g210075210100%_ _%$%g210076210103%_))))
              (_%$%g210075210100%_ _%$%g210076210103%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g210075210100%_
                                               _%$%g210076210103%_))))
                                      (_%$%g210075210100%_
                                       _%$%g210076210103%_))))
                              (_%$%g210075210100%_ _%$%g210076210103%_))))
                      (_%$%g210075210100%_ _%$%g210076210103%_)))))
          (_%$%g210074210169%_ _%stx210073%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self209867%_ _%stx209868%_)
        (let* ((_%$%g209870209891%_
                (lambda (_%$%g209871209888%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g209871209888%_))))
               (_%$%g209869210069%_
                (lambda (_%$%g209871209894%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g209871209894%_))
                      (let ((_%$%e209875209896%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g209871209894%_))))
                        (let ((_%$%hd209876209899%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e209875209896%_)))
                              (_%$%tl209877209901%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e209875209896%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl209877209901%_))
                              (let ((_%$%e209878209904%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl209877209901%_))))
                                (let ((_%$%hd209879209907%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e209878209904%_)))
                                      (_%$%tl209880209909%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e209878209904%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl209880209909%_))
                                      (let ((_%$%e209881209912%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl209880209909%_))))
                                        (let ((_%$%hd209882209915%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e209881209912%_)))
                                              (_%$%tl209883209917%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e209881209912%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl209883209917%_))
                                              (let ((_%$%e209884209920%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl209883209917%_))))
                                                (let ((_%$%hd209885209923%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e209884209920%_)))
                                                      (_%$%tl209886209925%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e209884209920%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl209886209925%_))
                                                      (if (gxc#current-compile-decls-unsafe?)
                                                          (cons '##unchecked-structure-ref
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self209867%_
                                 _%$%hd209885209923%_))
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self209867%_
                                       _%$%hd209882209915%_))
                                    (cons ''#f (cons ''#f '())))))
                  (let _%lp209948%_ ((_%rest209951%_
                                      (cons _%$%hd209882209915%_
                                            (cons _%$%hd209885209923%_ '())))
                                     (_%bind209953%_ '())
                                     (_%args209954%_ '()))
                    (let* ((_%$%rest209955209963%_ _%rest209951%_)
                           (_%$%else209957209971%_
                            (lambda ()
                              (cons 'let
                                    (cons _%bind209953%_
                                          (cons '(declare (not safe))
                                                (cons (cons '##unchecked-structure-ref
                                                            (let ((__tmp218087
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons ''#f (cons ''#f '()))))
                      (declare (not safe))
                      (##append _%args209954%_ __tmp218087)))
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (_%$%K209959210057%_
                            (lambda (_%rest209974%_ _%e209975%_)
                              (let* ((_%__stx217726217727%_ _%e209975%_)
                                     (_%$%g209980209998%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx217726217727%_)))))
                                (let ((_%__kont217728217729%_
                                       (lambda ()
                                         (_%lp209948%_
                                          _%rest209974%_
                                          _%bind209953%_
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _%e209975%_))
                                                _%args209954%_))))
                                      (_%__kont217730217731%_
                                       (lambda ()
                                         (_%lp209948%_
                                          _%rest209974%_
                                          _%bind209953%_
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _%e209975%_))
                                                _%args209954%_))))
                                      (_%__kont217732217733%_
                                       (lambda ()
                                         (let ((_%tmp210005%_
                                                (let ((__tmp218088
                                                       (let ()
                                                         (declare (not safe))
                                                         (##gensym '__tmp))))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp218088))))
                                           (_%lp209948%_
                                            _%rest209974%_
                                            (cons (cons _%tmp210005%_
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _%e209975%_))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%bind209953%_)
                                            (cons _%tmp210005%_
                                                  _%args209954%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx217726217727%_))
                                      (let ((_%$%e209982210036%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx217726217727%_))))
                                        (let ((_%$%tl209984210041%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e209982210036%_)))
                                              (_%$%hd209983210039%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e209982210036%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%$%hd209983210039%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#ref
                                                     _%$%hd209983210039%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl209984210041%_))
                                                      (let ((_%$%e209985210044%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl209984210041%_))))
                (let ((_%$%tl209987210049%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e209985210044%_)))
                      (_%$%hd209986210047%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e209985210044%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl209987210049%_))
                      (_%__kont217728217729%_)
                      (_%__kont217732217733%_))))
              (_%__kont217732217733%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#quote
                                                         _%$%hd209983210039%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl209984210041%_))
                                                          (let ((_%$%e209991210021%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl209984210041%_))))
                    (let ((_%$%tl209993210026%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e209991210021%_)))
                          (_%$%hd209992210024%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e209991210021%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl209993210026%_))
                          (_%__kont217730217731%_)
                          (_%__kont217732217733%_))))
                  (_%__kont217732217733%_))
              (_%__kont217732217733%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont217732217733%_))))
                                      (_%__kont217732217733%_)))))))
                      (if (pair? _%$%rest209955209963%_)
                          (let ((_%$%hd209960210060%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%rest209955209963%_)))
                                (_%$%tl209961210062%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%rest209955209963%_))))
                            (let* ((_%e210065%_ _%$%hd209960210060%_)
                                   (_%rest210067%_ _%$%tl209961210062%_))
                              (_%$%K209959210057%_
                               _%rest210067%_
                               _%e210065%_)))
                          (_%$%else209957209971%_)))))
              (_%$%g209870209891%_ _%$%g209871209894%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g209870209891%_
                                               _%$%g209871209894%_))))
                                      (_%$%g209870209891%_
                                       _%$%g209871209894%_))))
                              (_%$%g209870209891%_ _%$%g209871209894%_))))
                      (_%$%g209870209891%_ _%$%g209871209894%_)))))
          (_%$%g209869210069%_ _%stx209868%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self209646%_ _%stx209647%_)
        (let* ((_%$%g209649209674%_
                (lambda (_%$%g209650209671%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g209650209671%_))))
               (_%$%g209648209864%_
                (lambda (_%$%g209650209677%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g209650209677%_))
                      (let ((_%$%e209655209679%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g209650209677%_))))
                        (let ((_%$%hd209656209682%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e209655209679%_)))
                              (_%$%tl209657209684%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e209655209679%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl209657209684%_))
                              (let ((_%$%e209658209687%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl209657209684%_))))
                                (let ((_%$%hd209659209690%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e209658209687%_)))
                                      (_%$%tl209660209692%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e209658209687%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl209660209692%_))
                                      (let ((_%$%e209661209695%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl209660209692%_))))
                                        (let ((_%$%hd209662209698%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e209661209695%_)))
                                              (_%$%tl209663209700%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e209661209695%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl209663209700%_))
                                              (let ((_%$%e209664209703%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl209663209700%_))))
                                                (let ((_%$%hd209665209706%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e209664209703%_)))
                                                      (_%$%tl209666209708%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e209664209703%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl209666209708%_))
                                                      (let ((_%$%e209667209711%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl209666209708%_))))
                (let ((_%$%hd209668209714%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e209667209711%_)))
                      (_%$%tl209669209716%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e209667209711%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl209669209716%_))
                      (if (gxc#current-compile-decls-unsafe?)
                          (cons '##unchecked-structure-set!
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self209646%_
                                         _%$%hd209665209706%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self209646%_
                                               _%$%hd209668209714%_))
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self209646%_
                                                     _%$%hd209662209698%_))
                                                  (cons ''#f
                                                        (cons ''#f '()))))))
                          (let _%lp209743%_ ((_%rest209746%_
                                              (cons _%$%hd209662209698%_
                                                    (cons _%$%hd209668209714%_
                                                          (cons _%$%hd209665209706%_
                                                                '()))))
                                             (_%bind209748%_ '())
                                             (_%args209749%_ '()))
                            (let* ((_%$%rest209750209758%_ _%rest209746%_)
                                   (_%$%else209752209766%_
                                    (lambda ()
                                      (cons 'let
                                            (cons _%bind209748%_
                                                  (cons '(declare (not safe))
                                                        (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp218089 (cons ''#f (cons ''#f '()))))
                              (declare (not safe))
                              (##append _%args209749%_ __tmp218089)))
                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%$%K209754209852%_
                                    (lambda (_%rest209769%_ _%e209770%_)
                                      (let* ((_%__stx217772217773%_
                                              _%e209770%_)
                                             (_%$%g209775209793%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%__stx217772217773%_)))))
                                        (let ((_%__kont217774217775%_
                                               (lambda ()
                                                 (_%lp209743%_
                                                  _%rest209769%_
                                                  _%bind209748%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e209770%_))
                                                        _%args209749%_))))
                                              (_%__kont217776217777%_
                                               (lambda ()
                                                 (_%lp209743%_
                                                  _%rest209769%_
                                                  _%bind209748%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e209770%_))
                                                        _%args209749%_))))
                                              (_%__kont217778217779%_
                                               (lambda ()
                                                 (let ((_%tmp209800%_
                                                        (let ((__tmp218090
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##gensym '__tmp))))
                  (declare (not safe))
                  (make-symbol__0 __tmp218090))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%lp209743%_
                                                    _%rest209769%_
                                                    (cons (cons _%tmp209800%_
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gxc#compile-e__0 _%e209770%_))
                              '()))
                  _%bind209748%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%tmp209800%_
                                                          _%args209749%_))))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%__stx217772217773%_))
                                              (let ((_%$%e209777209831%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%__stx217772217773%_))))
                                                (let ((_%$%tl209779209836%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e209777209831%_)))
                                                      (_%$%hd209778209834%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e209777209831%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%$%hd209778209834%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%$%hd209778209834%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl209779209836%_))
                      (let ((_%$%e209780209839%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl209779209836%_))))
                        (let ((_%$%tl209782209844%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e209780209839%_)))
                              (_%$%hd209781209842%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e209780209839%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl209782209844%_))
                              (_%__kont217774217775%_)
                              (_%__kont217778217779%_))))
                      (_%__kont217778217779%_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-eq? '%#quote _%$%hd209778209834%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl209779209836%_))
                          (let ((_%$%e209786209816%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl209779209836%_))))
                            (let ((_%$%tl209788209821%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e209786209816%_)))
                                  (_%$%hd209787209819%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e209786209816%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl209788209821%_))
                                  (_%__kont217776217777%_)
                                  (_%__kont217778217779%_))))
                          (_%__kont217778217779%_))
                      (_%__kont217778217779%_)))
              (_%__kont217778217779%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont217778217779%_)))))))
                              (if (pair? _%$%rest209750209758%_)
                                  (let ((_%$%hd209755209855%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%rest209750209758%_)))
                                        (_%$%tl209756209857%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%rest209750209758%_))))
                                    (let* ((_%e209860%_ _%$%hd209755209855%_)
                                           (_%rest209862%_
                                            _%$%tl209756209857%_))
                                      (_%$%K209754209852%_
                                       _%rest209862%_
                                       _%e209860%_)))
                                  (_%$%else209752209766%_)))))
                      (_%$%g209649209674%_ _%$%g209650209677%_))))
              (_%$%g209649209674%_ _%$%g209650209677%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g209649209674%_
                                               _%$%g209650209677%_))))
                                      (_%$%g209649209674%_
                                       _%$%g209650209677%_))))
                              (_%$%g209649209674%_ _%$%g209650209677%_))))
                      (_%$%g209649209674%_ _%$%g209650209677%_)))))
          (_%$%g209648209864%_ _%stx209647%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self209485%_ _%stx209486%_)
        (letrec ((_%import-set-template209488%_
                  (lambda (_%in209591%_ _%phi209592%_)
                    (let ((_%iphi209594%_
                           (fx+ _%phi209592%_
                                (##direct-structure-ref
                                 _%in209591%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports209595%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in209591%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp209597%_ ((_%rest209599%_ _%imports209595%_)
                                         (_%r209600%_ '()))
                        (let* ((_%$%rest209601209609%_ _%rest209599%_)
                               (_%$%else209603209617%_ (lambda () _%r209600%_))
                               (_%$%K209605209634%_
                                (lambda (_%rest209620%_ _%in209621%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in209621%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi209594%_))
                                          (_%lp209597%_
                                           _%rest209620%_
                                           (cons _%in209621%_ _%r209600%_))
                                          (_%lp209597%_
                                           _%rest209620%_
                                           _%r209600%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in209621%_
                                             'gx#module-import::t))
                                          (let ((_%iphi209625%_
                                                 (fx+ _%phi209592%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in209621%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi209625%_))
                                                (_%lp209597%_
                                                 _%rest209620%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in209621%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r209600%_))
                                                (_%lp209597%_
                                                 _%rest209620%_
                                                 _%r209600%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in209621%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi209628%_
                                                     (fx+ _%iphi209594%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in209621%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi209628%_))
                                                    (_%lp209597%_
                                                     _%rest209620%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in209621%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r209600%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi209628%_))
                                                        (_%lp209597%_
                                                         _%rest209620%_
                                                         (let ((__tmp218091
                                                                (_%import-set-template209488%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in209621%_
                         _%iphi209594%_)))
                   (declare (not safe))
                   (foldl__0 cons _%r209600%_ __tmp218091)))
                (_%lp209597%_ _%rest209620%_ _%r209600%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp209597%_
                                               _%rest209620%_
                                               _%r209600%_)))))))
                          (if (pair? _%$%rest209601209609%_)
                              (let ((_%$%hd209606209637%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest209601209609%_)))
                                    (_%$%tl209607209639%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest209601209609%_))))
                                (let* ((_%in209642%_ _%$%hd209606209637%_)
                                       (_%rest209644%_ _%$%tl209607209639%_))
                                  (_%$%K209605209634%_
                                   _%rest209644%_
                                   _%in209642%_)))
                              (_%$%else209603209617%_))))))))
          (let* ((_%$%g209490209500%_
                  (lambda (_%$%g209491209497%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g209491209497%_))))
                 (_%$%g209489209588%_
                  (lambda (_%$%g209491209503%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g209491209503%_))
                        (let ((_%$%e209493209505%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g209491209503%_))))
                          (let ((_%$%hd209494209508%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e209493209505%_)))
                                (_%$%tl209495209510%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e209493209505%_))))
                            (let ((_%ht209524%_
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq))))
                              (let _%lp209526%_ ((_%rest209528%_
                                                  _%$%tl209495209510%_)
                                                 (_%loads209529%_ '()))
                                (letrec ((_%K209531%_
                                          (lambda (_%ctx209581%_
                                                   _%rest209582%_)
                                            (let ((_%id209584%_
                                                   (##structure-ref
                                                    _%ctx209581%_
                                                    '1
                                                    gx#expander-context::t
                                                    '#f)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__hash-get
                                                     _%ht209524%_
                                                     _%id209584%_))
                                                  (_%lp209526%_
                                                   _%rest209582%_
                                                   _%loads209529%_)
                                                  (let ((_%rt209586%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#module-id->path-string
                                                            _%id209584%_))))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht209524%_
                                                       _%id209584%_
                                                       _%rt209586%_))
                                                    (_%lp209526%_
                                                     _%rest209582%_
                                                     (cons _%rt209586%_
                                                           _%loads209529%_))))))))
                                  (let* ((_%$%rest209532209540%_
                                          _%rest209528%_)
                                         (_%$%else209534209552%_
                                          (lambda ()
                                            (cons 'begin
                                                  (let ((__tmp218093
                                                         (lambda (_%$%g209547209549%_)
                                                           (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g209547209549%_)))
                (__tmp218092 (reverse _%loads209529%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (##map __tmp218093
                                                           __tmp218092)))))
                                         (_%$%K209536209569%_
                                          (lambda (_%rest209555%_ _%in209556%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-instance-of?
                                                   _%in209556%_
                                                   'gx#module-context::t))
                                                (_%K209531%_
                                                 _%in209556%_
                                                 _%rest209555%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##structure-direct-instance-of?
                                                       _%in209556%_
                                                       'gx#module-import::t))
                                                    (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%in209556%_
                            '3
                            '#f
                            '#f)))
                (_%K209531%_
                 (##direct-structure-ref
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%in209556%_ '1 '#f '#f))
                  '1
                  gx#module-export::t
                  '#f)
                 _%rest209555%_)
                (_%lp209526%_ _%rest209555%_ _%loads209529%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           _%in209556%_
                                                           'gx#import-set::t))
                                                        (let ((_%phi209561%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref _%in209556%_ '2 '#f '#f))))
                  (if (fxzero? _%phi209561%_)
                      (_%K209531%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%in209556%_ '1 '#f '#f))
                       _%rest209555%_)
                      (if (fxpositive? _%phi209561%_)
                          (let ((_%deps209565%_
                                 (_%import-set-template209488%_
                                  _%in209556%_
                                  '0)))
                            (_%lp209526%_
                             (let ()
                               (declare (not safe))
                               (foldl__0 cons _%rest209555%_ _%deps209565%_))
                             _%loads209529%_))
                          (_%lp209526%_ _%rest209555%_ _%loads209529%_))))
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"Unexpected import"
                   _%stx209486%_
                   _%in209556%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%$%rest209532209540%_)
                                        (let ((_%$%hd209537209572%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%rest209532209540%_)))
                                              (_%$%tl209538209574%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%rest209532209540%_))))
                                          (let* ((_%in209577%_
                                                  _%$%hd209537209572%_)
                                                 (_%rest209579%_
                                                  _%$%tl209538209574%_))
                                            (_%$%K209536209569%_
                                             _%rest209579%_
                                             _%in209577%_)))
                                        (_%$%else209534209552%_))))))))
                        (_%$%g209490209500%_ _%$%g209491209503%_)))))
            (_%$%g209489209588%_ _%stx209486%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self209299%_ _%stx209300%_)
        (letrec ((_%add-lift!209302%_
                  (lambda (_%expr209483%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr209483%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote209303%_
                  (lambda (_%id209480%_ _%marks209481%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id209480%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks209481%_
                                                        '()))))))))
                 (_%generate-simple209304%_
                  (lambda (_%stxq209475%_)
                    (let ((_%gid209477%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid209478%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%stxq209475%_))))
                      (_%add-lift!209302%_
                       (cons 'define
                             (cons _%gid209477%_
                                   (cons (_%generate-syntax-quote209303%_
                                          _%qid209478%_
                                          ''())
                                         '()))))
                      (let ((__tmp218094
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp218094 _%stxq209475%_ _%gid209477%_))
                      _%gid209477%_)))
                 (_%generate-serialized209305%_
                  (lambda (_%stxq209465%_ _%marks209466%_)
                    (let* ((_%mark-refs209468%_
                            (map _%generate-mark209306%_ _%marks209466%_))
                           (_%gid209470%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid209472%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier
                               _%stxq209465%_))))
                      (_%add-lift!209302%_
                       (cons 'define
                             (cons _%gid209470%_
                                   (cons (_%generate-syntax-quote209303%_
                                          _%qid209472%_
                                          (cons 'list _%mark-refs209468%_))
                                         '()))))
                      (let ((__tmp218095
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp218095 _%stxq209465%_ _%gid209470%_))
                      _%gid209470%_)))
                 (_%generate-mark209306%_
                  (lambda (_%mark209450%_)
                    (let ((_%$e209452%_
                           (let ((__tmp218096
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp218096 _%mark209450%_))))
                      (if _%$e209452%_
                          _%$e209452%_
                          (let* ((_%gid209456%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr209458%_
                                  (_%serialize-mark209307%_ _%mark209450%_))
                                 (_%ctx209460%_
                                  (let ((__tmp218097
                                         (##structure-ref
                                          _%mark209450%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp218097)))
                                 (_%ctx-ref209462%_
                                  (if (eq? _%ctx209460%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref209308%_
                                                               _%ctx209460%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp218098
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp218098
                               _%mark209450%_
                               _%gid209456%_))
                            (_%add-lift!209302%_
                             (cons 'define
                                   (cons _%gid209456%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr209458%_ '()))
                   (cons _%ctx-ref209462%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid209456%_)))))
                 (_%serialize-mark209307%_
                  (lambda (_%mark209398%_)
                    (letrec ((_%quote-e209400%_
                              (lambda (_%sym209448%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym209448%_))
                                    _%sym209448%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym209448%_))))))
                      (let* ((_%$%mark209401209410%_ _%mark209398%_)
                             (_%$%E209403209413%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%$%mark209401209410%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%$%K209404209425%_
                              (lambda (_%trace209416%_
                                       _%phi209417%_
                                       _%ctx209418%_
                                       _%subst209419%_)
                                (let ((_%subs209421%_
                                       (if _%subst209419%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst209419%_))
                                           '())))
                                  (cons _%phi209417%_
                                        (let ((__tmp218099
                                               (lambda (_%pair209423%_)
                                                 (cons (_%quote-e209400%_
                                                        (car _%pair209423%_))
                                                       (_%quote-e209400%_
                                                        (cdr _%pair209423%_))))))
                                          (declare (not safe))
                                          (##map __tmp218099
                                                 _%subs209421%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%$%mark209401209410%_
                               'gx#expander-mark::t))
                            (let* ((_%$%e209405209428%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%mark209401209410%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst209431%_ _%$%e209405209428%_)
                                   (_%$%e209406209433%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%mark209401209410%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx209436%_ _%$%e209406209433%_)
                                   (_%$%e209407209438%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%mark209401209410%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi209441%_ _%$%e209407209438%_)
                                   (_%$%e209408209443%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%mark209401209410%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace209446%_ _%$%e209408209443%_))
                              (_%$%K209404209425%_
                               _%trace209446%_
                               _%phi209441%_
                               _%ctx209436%_
                               _%subst209431%_))
                            (_%$%E209403209413%_))))))
                 (_%context-ref209308%_
                  (lambda (_%ctx209385%_)
                    (if (let ((__tmp218100
                               (##structure-ref
                                _%ctx209385%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp218100
                           'gx#module-context::t))
                        (let ((_%ctx-ref209387%_
                               (_%context-ref-nested209310%_ _%ctx209385%_))
                              (_%ctx-origin209388%_
                               (_%context-ref-origin209309%_ _%ctx209385%_))
                              (_%origin209389%_
                               (_%context-ref-origin209309%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin209389%_ _%ctx-origin209388%_)
                              (let ((_%ref209391%_
                                     (_%context-ref-nested209310%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp209393%_ ((_%ref209395%_
                                                    (cdr _%ref209391%_))
                                                   (_%ctx-ref209396%_
                                                    (cdr _%ctx-ref209387%_)))
                                  (if (and (pair? _%ref209395%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref209395%_))
                                                (car _%ctx-ref209396%_)))
                                      (_%lp209393%_
                                       (cdr _%ref209395%_)
                                       (cdr _%ctx-ref209396%_))
                                      (cons '#f _%ctx-ref209396%_))))
                              _%ctx-ref209387%_))
                        (let ((__tmp218101
                               (##structure-ref
                                _%ctx209385%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp218101)))))
                 (_%context-ref-origin209309%_
                  (lambda (_%ctx209377%_)
                    (let _%lp209379%_ ((_%ctx209381%_ _%ctx209377%_))
                      (let ((_%super209383%_
                             (##structure-ref
                              _%ctx209381%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super209383%_
                               'gx#module-context::t))
                            (_%lp209379%_ _%super209383%_)
                            _%ctx209381%_)))))
                 (_%context-ref-nested209310%_
                  (lambda (_%ctx209368%_)
                    (let _%lp209370%_ ((_%ctx209372%_ _%ctx209368%_)
                                       (_%r209373%_ '()))
                      (let ((_%super209375%_
                             (##structure-ref
                              _%ctx209372%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super209375%_
                               'gx#module-context::t))
                            (_%lp209370%_
                             _%super209375%_
                             (cons (car (##structure-ref
                                         _%ctx209372%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r209373%_))
                            (cons (let ((__tmp218102
                                         (##structure-ref
                                          _%ctx209372%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp218102))
                                  _%r209373%_)))))))
          (let* ((_%$%g209312209325%_
                  (lambda (_%$%g209313209322%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g209313209322%_))))
                 (_%$%g209311209365%_
                  (lambda (_%$%g209313209328%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g209313209328%_))
                        (let ((_%$%e209315209330%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g209313209328%_))))
                          (let ((_%$%hd209316209333%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e209315209330%_)))
                                (_%$%tl209317209335%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e209315209330%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl209317209335%_))
                                (let ((_%$%e209318209338%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl209317209335%_))))
                                  (let ((_%$%hd209319209341%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e209318209338%_)))
                                        (_%$%tl209320209343%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e209318209338%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl209320209343%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%$%hd209319209341%_))
                                            (let ((_%$e209359%_
                                                   (let ((__tmp218103
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-identifiers))))
                                                     (declare (not safe))
                                                     (hash-get
                                                      __tmp218103
                                                      _%$%hd209319209341%_))))
                                              (if _%$e209359%_
                                                  _%$e209359%_
                                                  (let ((_%marks209363%_
                                                         (##direct-structure-ref
                                                          _%$%hd209319209341%_
                                                          '4
                                                          gx#syntax-quote::t
                                                          '#f)))
                                                    (if (null? _%marks209363%_)
                                                        (_%generate-simple209304%_
                                                         _%$%hd209319209341%_)
                                                        (_%generate-serialized209305%_
                                                         _%$%hd209319209341%_
                                                         _%marks209363%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot quote non-identifier syntax"
                                               _%$%hd209319209341%_)))
                                        (_%$%g209312209325%_
                                         _%$%g209313209328%_))))
                                (_%$%g209312209325%_ _%$%g209313209328%_))))
                        (_%$%g209312209325%_ _%$%g209313209328%_)))))
            (_%$%g209311209365%_ _%stx209300%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self209231%_ _%stx209232%_)
        (let* ((_%$%g209234209251%_
                (lambda (_%$%g209235209248%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g209235209248%_))))
               (_%$%g209233209296%_
                (lambda (_%$%g209235209254%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g209235209254%_))
                      (let ((_%$%e209238209256%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g209235209254%_))))
                        (let ((_%$%hd209239209259%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e209238209256%_)))
                              (_%$%tl209240209261%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e209238209256%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl209240209261%_))
                              (let ((_%$%e209241209264%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl209240209261%_))))
                                (let ((_%$%hd209242209267%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e209241209264%_)))
                                      (_%$%tl209243209269%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e209241209264%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl209243209269%_))
                                      (let ((_%$%e209244209272%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl209243209269%_))))
                                        (let ((_%$%hd209245209275%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e209244209272%_)))
                                              (_%$%tl209246209277%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e209244209272%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl209246209277%_))
                                              (cons 'define
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%hd209242209267%_))
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self209231%_
                           _%$%hd209245209275%_))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g209234209251%_
                                               _%$%g209235209254%_))))
                                      (_%$%g209234209251%_
                                       _%$%g209235209254%_))))
                              (_%$%g209234209251%_ _%$%g209235209254%_))))
                      (_%$%g209234209251%_ _%$%g209235209254%_)))))
          (_%$%g209233209296%_ _%stx209232%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self209180%_ _%stx209181%_)
        (let* ((_%$%g209183209193%_
                (lambda (_%$%g209184209190%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g209184209190%_))))
               (_%$%g209182209228%_
                (lambda (_%$%g209184209196%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g209184209196%_))
                      (let ((_%$%e209186209198%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g209184209196%_))))
                        (let ((_%$%hd209187209201%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e209186209198%_)))
                              (_%$%tl209188209203%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e209186209198%_))))
                          (let* ((_%c-body209220%_
                                  (map (lambda (_%$%g209215209217%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self209180%_
                                            _%$%g209215209217%_)))
                                       _%$%tl209188209203%_))
                                 (_%c-body209225%_
                                  (let ((__tmp218104
                                         (lambda (_%$obj209222%_)
                                           (not (eq? _%$obj209222%_
                                                     '#!void)))))
                                    (declare (not safe))
                                    (##filter __tmp218104 _%c-body209220%_))))
                            (cons '%#begin _%c-body209225%_))))
                      (_%$%g209183209193%_ _%$%g209184209196%_)))))
          (_%$%g209182209228%_ _%stx209181%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self209085%_ _%stx209086%_)
        (let* ((_%$%g209088209098%_
                (lambda (_%$%g209089209095%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g209089209095%_))))
               (_%$%g209087209177%_
                (lambda (_%$%g209089209101%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g209089209101%_))
                      (let ((_%$%e209091209103%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g209089209101%_))))
                        (let ((_%$%hd209092209106%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e209091209103%_)))
                              (_%$%tl209093209108%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e209091209103%_))))
                          (let* ((_%phi209121%_
                                  (let ((__tmp218105
                                         (let ()
                                           (declare (not safe))
                                           (gx#current-expander-phi))))
                                    (declare (not safe))
                                    (##fx+ __tmp218105 '1)))
                                 (_%block209123%_
                                  (gxc#meta-state-begin-phi!
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self209085%_ 'state))
                                   _%phi209121%_))
                                 (_%compiled209126%_
                                  (let ((__tmp218106
                                         (lambda ()
                                           (gxc#apply-generate-meta-phi__%
                                            '#f
                                            (let ()
                                              (declare (not safe))
                                              (slot-ref__0
                                               _%self209085%_
                                               'state))
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     '%#begin))
                                                  _%$%tl209093209108%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp218106
                                     gx#current-expander-phi
                                     _%phi209121%_)))
                                 (_%$%g209129209139%_
                                  (lambda (_%$%g209130209136%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%$%g209130209136%_))))
                                 (_%$%g209128209174%_
                                  (lambda (_%$%g209130209142%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%g209130209142%_))
                                        (let ((_%$%e209132209144%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%g209130209142%_))))
                                          (let ((_%$%hd209133209147%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e209132209144%_)))
                                                (_%$%tl209134209149%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e209132209144%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd209133209147%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#begin
                                                       _%$%hd209133209147%_))
                                                    (let ((_%c-body209169%_
                                                           (filter (lambda (_%$obj209166%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (not (eq? _%$obj209166%_ '#!void)))
                           _%$%tl209134209149%_)))
              (if _%block209123%_
                  (cons '%#begin-syntax
                        (cons (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%block209123%_
                                                            '()))
                                                '())))
                              _%c-body209169%_))
                  (if (null? _%c-body209169%_)
                      '#!void
                      (cons '%#begin-syntax _%c-body209169%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g209129209139%_
                                                     _%$%g209130209142%_))
                                                (_%$%g209129209139%_
                                                 _%$%g209130209142%_))))
                                        (_%$%g209129209139%_
                                         _%$%g209130209142%_)))))
                            (_%$%g209128209174%_ _%compiled209126%_))))
                      (_%$%g209088209098%_ _%$%g209089209101%_)))))
          (_%$%g209087209177%_ _%stx209086%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self209016%_ _%stx209017%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self209016%_ 'state)))
        (let* ((_%$%g209019209033%_
                (lambda (_%$%g209020209030%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g209020209030%_))))
               (_%$%g209018209082%_
                (lambda (_%$%g209020209036%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g209020209036%_))
                      (let ((_%$%e209023209038%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g209020209036%_))))
                        (let ((_%$%hd209024209041%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e209023209038%_)))
                              (_%$%tl209025209043%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e209023209038%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl209025209043%_))
                              (let ((_%$%e209026209046%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl209025209043%_))))
                                (let ((_%$%hd209027209049%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e209026209046%_)))
                                      (_%$%tl209028209051%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e209026209046%_))))
                                  (let ((_%key209068%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-identifier-key
                                            _%$%hd209027209049%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (interned-symbol? _%key209068%_))
                                        '#!void
                                        (let ()
                                          (declare (not safe))
                                          (gxc#raise-compile-error
                                           '"Cannot compile module with uninterned id"
                                           _%stx209017%_
                                           _%$%hd209027209049%_
                                           _%key209068%_)))
                                    (let* ((_%ctx209070%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%$%hd209027209049%_)))
                                           (_%code209073%_
                                            (let ((__tmp218107
                                                   (lambda ()
                                                     (let ((__tmp218108
                                                            (##structure-ref
                                                             _%ctx209070%_
                                                             '11
                                                             gx#module-context::t
                                                             '#f)))
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self209016%_
                                                        __tmp218108)))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp218107
                                               gx#current-expander-context
                                               _%ctx209070%_)))
                                           (_%rt209075%_
                                            (let ((__tmp218109
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#current-compile-runtime-sections))))
                                              (declare (not safe))
                                              (hash-get
                                               __tmp218109
                                               _%ctx209070%_)))
                                           (_%loader209077%_
                                            (if _%rt209075%_
                                                (cons (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'load-module '()))
                          (cons (cons '%#quote (cons _%rt209075%_ '())) '())))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                           (_%modid209079%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd209027209049%_))))
                                      (gxc#meta-state-end-phi!
                                       (let ()
                                         (declare (not safe))
                                         (slot-ref__0 _%self209016%_ 'state)))
                                      (cons '%#module
                                            (cons _%modid209079%_
                                                  (cons _%code209073%_
                                                        _%loader209077%_)))))))
                              (_%$%g209019209033%_ _%$%g209020209036%_))))
                      (_%$%g209019209033%_ _%$%g209020209036%_)))))
          (_%$%g209018209082%_ _%stx209017%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx209003%_ _%context-chain209004%_)
        (let _%lp209006%_ ((_%ctx209008%_ _%ctx209003%_) (_%path209009%_ '()))
          (let ((_%super209011%_
                 (##structure-ref _%ctx209008%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super209011%_ _%context-chain209004%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx209008%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path209009%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super209011%_
                       'gx#module-context::t))
                    (_%lp209006%_
                     _%super209011%_
                     (cons (car (##structure-ref
                                 _%ctx209008%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path209009%_))
                    (cons (let ((__tmp218110
                                 (##structure-ref
                                  _%ctx209008%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp218110))
                          _%path209009%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp208996%_ ((_%ctx208998%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r208999%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx208998%_ 'gx#module-context::t))
              (_%lp208996%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx208998%_ '3 '#f '#f))
               (cons _%ctx208998%_ _%r208999%_))
              _%r208999%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self208761%_ _%stx208762%_)
        (letrec* ((_%context-chain208764%_ (gxc#current-context-chain))
                  (_%make-import-spec208765%_
                   (lambda (_%in208933%_)
                     (let* ((_%$%in208934208946%_ _%in208933%_)
                            (_%$%E208936208949%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%$%in208934208946%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%$%K208937208959%_
                             (lambda (_%phi208952%_
                                      _%name208953%_
                                      _%src-name208954%_
                                      _%src-phi208955%_
                                      _%src-key208956%_
                                      _%src-ctx208957%_)
                               (cons _%phi208952%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%name208953%_))
                                           (cons _%src-phi208955%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-identifier-key
                                                          _%src-name208954%_))
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%$%in208934208946%_
                              'gx#module-import::t))
                           (let ((_%$%e208938208962%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%$%in208934208946%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%$%e208938208962%_
                                    'gx#module-export::t))
                                 (let* ((_%$%e208941208965%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%e208938208962%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx208968%_ _%$%e208941208965%_)
                                        (_%$%e208942208970%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%e208938208962%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key208973%_ _%$%e208942208970%_)
                                        (_%$%e208943208975%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%e208938208962%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi208978%_ _%$%e208943208975%_)
                                        (_%$%e208944208980%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%e208938208962%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name208983%_
                                         _%$%e208944208980%_)
                                        (_%$%e208939208985%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%in208934208946%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name208988%_ _%$%e208939208985%_)
                                        (_%$%e208940208990%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%in208934208946%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi208993%_ _%$%e208940208990%_))
                                   (_%$%K208937208959%_
                                    _%phi208993%_
                                    _%name208988%_
                                    _%src-name208983%_
                                    _%src-phi208978%_
                                    _%src-key208973%_
                                    _%src-ctx208968%_))
                                 (_%$%E208936208949%_)))
                           (_%$%E208936208949%_)))))
                  (_%make-import-path208766%_
                   (lambda (_%ctx208931%_)
                     (gxc#generate-meta-import-path
                      _%ctx208931%_
                      _%context-chain208764%_)))
                  (_%make-import-spec-in208767%_
                   (lambda (_%ctx208928%_ _%in208929%_)
                     (cons 'spec:
                           (cons (_%make-import-path208766%_ _%ctx208928%_)
                                 (reverse _%in208929%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self208761%_ 'state)))
          (let* ((_%$%g208769208779%_
                  (lambda (_%$%g208770208776%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g208770208776%_))))
                 (_%$%g208768208925%_
                  (lambda (_%$%g208770208782%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g208770208782%_))
                        (let ((_%$%e208772208784%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g208770208782%_))))
                          (let ((_%$%hd208773208787%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e208772208784%_)))
                                (_%$%tl208774208789%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e208772208784%_))))
                            (let _%lp208803%_ ((_%rest208805%_
                                                _%$%tl208774208789%_)
                                               (_%current-src208806%_ '#f)
                                               (_%current-in208807%_ '())
                                               (_%r208808%_ '()))
                              (let* ((_%$%rest208809208817%_ _%rest208805%_)
                                     (_%$%else208811208827%_
                                      (lambda ()
                                        (let ((_%r208825%_
                                               (if _%current-src208806%_
                                                   (cons (_%make-import-spec-in208767%_
                                                          _%current-src208806%_
                                                          _%current-in208807%_)
                                                         _%r208808%_)
                                                   _%r208808%_)))
                                          (cons '%#import
                                                (reverse _%r208825%_)))))
                                     (_%$%K208813208913%_
                                      (lambda (_%rest208830%_ _%in208831%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               _%in208831%_
                                               'gx#module-import::t))
                                            (let* ((_%$%in208833208840%_
                                                    _%in208831%_)
                                                   (_%$%E208835208843%_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"No clause matching"
                                                               _%$%in208833208840%_
                                                               '((module-import
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (module-export src-ctx)))))
              '#!void))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%K208836208851%_
                                                    (lambda (_%src-ctx208846%_)
                                                      (if (eq? _%current-src208806%_
                                                               _%src-ctx208846%_)
                                                          (_%lp208803%_
                                                           _%rest208830%_
                                                           _%current-src208806%_
                                                           (cons (_%make-import-spec208765%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in208831%_)
                         _%current-in208807%_)
                   _%r208808%_)
                  (if _%current-src208806%_
                      (_%lp208803%_
                       _%rest208830%_
                       _%src-ctx208846%_
                       (cons (_%make-import-spec208765%_ _%in208831%_) '())
                       (cons (_%make-import-spec-in208767%_
                              _%current-src208806%_
                              _%current-in208807%_)
                             _%r208808%_))
                      (_%lp208803%_
                       _%rest208830%_
                       _%src-ctx208846%_
                       (cons (_%make-import-spec208765%_ _%in208831%_) '())
                       _%r208808%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%e208837208854%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%$%in208833208840%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%$%e208837208854%_
                                                     'gx#module-export::t))
                                                  (let* ((_%$%e208838208857%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%e208837208854%_
                                                             '1
                                                             '#f
                                                             '#f)))
                                                         (_%src-ctx208860%_
                                                          _%$%e208838208857%_))
                                                    (_%$%K208836208851%_
                                                     _%src-ctx208860%_))
                                                  (_%$%E208835208843%_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   _%in208831%_
                                                   'gx#import-set::t))
                                                (let* ((_%phi208863%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in208831%_
                                                           '2
                                                           '#f
                                                           '#f)))
                                                       (_%src208865%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in208831%_
                                                           '1
                                                           '#f
                                                           '#f)))
                                                       (_%src-in208905%_
                                                        (let* ((_%$%g208866208875%_
                                                                (_%make-import-path208766%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%src208865%_))
                       (_%$%E208869208879%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%$%g208866208875%_
                                   '([path])
                                   '(path)))
                          '#!void)))
                  (let ((_%$%K208871208895%_
                         (lambda (_%path208893%_) _%path208893%_))
                        (_%$%K208870208885%_
                         (lambda (_%path208883%_) (cons 'in: _%path208883%_))))
                    (if (pair? _%$%g208866208875%_)
                        (let ((_%$%tl208873208900%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%g208866208875%_)))
                              (_%$%hd208872208898%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%g208866208875%_))))
                          (if (null? _%$%tl208873208900%_)
                              (let ((_%path208903%_ _%$%hd208872208898%_))
                                (_%$%K208871208895%_ _%path208903%_))
                              (let ((_%path208888%_ _%$%g208866208875%_))
                                (_%$%K208870208885%_ _%path208888%_))))
                        (let ((_%path208888%_ _%$%g208866208875%_))
                          (_%$%K208870208885%_ _%path208888%_))))))
               (_%r208907%_
                (if _%current-src208806%_
                    (cons (_%make-import-spec-in208767%_
                           _%current-src208806%_
                           _%current-in208807%_)
                          _%r208808%_)
                    _%r208808%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp208803%_
                                                   _%rest208830%_
                                                   '#f
                                                   '()
                                                   (cons (if (fxzero? _%phi208863%_)
                                                             _%src-in208905%_
                                                             (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi208863%_ (cons _%src-in208905%_ '()))))
                 _%r208907%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##structure-instance-of?
                                                       _%in208831%_
                                                       'gx#module-context::t))
                                                    (let ((_%r208911%_
                                                           (if _%current-src208806%_
                                                               (cons (_%make-import-spec-in208767%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%current-src208806%_
                              _%current-in208807%_)
                             _%r208808%_)
                       _%r208808%_)))
              (_%lp208803%_
               _%rest208830%_
               '#f
               '()
               (cons (cons 'runtime: (_%make-import-path208766%_ _%in208831%_))
                     _%r208911%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#!void))))))
                                (if (pair? _%$%rest208809208817%_)
                                    (let ((_%$%hd208814208916%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%rest208809208817%_)))
                                          (_%$%tl208815208918%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%rest208809208817%_))))
                                      (let* ((_%in208921%_
                                              _%$%hd208814208916%_)
                                             (_%rest208923%_
                                              _%$%tl208815208918%_))
                                        (_%$%K208813208913%_
                                         _%rest208923%_
                                         _%in208921%_)))
                                    (_%$%else208811208827%_))))))
                        (_%$%g208769208779%_ _%$%g208770208782%_)))))
            (_%$%g208768208925%_ _%stx208762%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self208571%_ _%stx208572%_)
        (letrec* ((_%context-chain208574%_ (gxc#current-context-chain))
                  (_%make-import-path208575%_
                   (lambda (_%ctx208759%_)
                     (gxc#generate-meta-import-path
                      _%ctx208759%_
                      _%context-chain208574%_))))
          (let* ((_%$%g208577208587%_
                  (lambda (_%$%g208578208584%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g208578208584%_))))
                 (_%$%g208576208756%_
                  (lambda (_%$%g208578208590%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g208578208590%_))
                        (let ((_%$%e208580208592%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g208578208590%_))))
                          (let ((_%$%hd208581208595%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e208580208592%_)))
                                (_%$%tl208582208597%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e208580208592%_))))
                            (let _%lp208611%_ ((_%rest208613%_
                                                _%$%tl208582208597%_)
                                               (_%r208614%_ '()))
                              (let* ((_%$%rest208615208623%_ _%rest208613%_)
                                     (_%$%else208617208631%_
                                      (lambda ()
                                        (cons '%#export
                                              (reverse _%r208614%_))))
                                     (_%$%K208619208744%_
                                      (lambda (_%rest208634%_ _%out208635%_)
                                        (let* ((_%$%out208636208649%_
                                                _%out208635%_)
                                               (_%$%E208639208653%_
                                                (lambda ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"No clause matching"
                                                           _%$%out208636208649%_
                                                           '((module-export
                                                              _
                                                              key
                                                              phi
                                                              name))
                                                           '((export-set
                                                              src
                                                              phi))))
                                                  '#!void)))
                                          (let ((_%$%K208643208723%_
                                                 (lambda (_%name208719%_
                                                          _%phi208720%_
                                                          _%key208721%_)
                                                   (_%lp208611%_
                                                    _%rest208634%_
                                                    (cons (cons 'spec:
                                                                (cons _%phi208720%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-identifier-key
                                       _%key208721%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-identifier-key
                                             _%name208719%_))
                                          '()))))
                  _%r208614%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%K208640208703%_
                                                 (lambda (_%phi208657%_
                                                          _%src208658%_)
                                                   (let* ((_%out208698%_
                                                           (if _%src208658%_
                                                               (cons 'import:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let* ((_%$%g208659208668%_
                                           (_%make-import-path208575%_
                                            _%src208658%_))
                                          (_%$%E208662208672%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (error '"No clause matching"
                                                      _%$%g208659208668%_
                                                      '([path])
                                                      '(path)))
                                             '#!void)))
                                     (let ((_%$%K208664208688%_
                                            (lambda (_%path208686%_)
                                              _%path208686%_))
                                           (_%$%K208663208678%_
                                            (lambda (_%path208676%_)
                                              (cons 'in: _%path208676%_))))
                                       (if (pair? _%$%g208659208668%_)
                                           (let ((_%$%tl208666208693%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%g208659208668%_)))
                                                 (_%$%hd208665208691%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%g208659208668%_))))
                                             (if (null? _%$%tl208666208693%_)
                                                 (let ((_%path208696%_
                                                        _%$%hd208665208691%_))
                                                   (_%$%K208664208688%_
                                                    _%path208696%_))
                                                 (let ((_%path208681%_
                                                        _%$%g208659208668%_))
                                                   (_%$%K208663208678%_
                                                    _%path208681%_))))
                                           (let ((_%path208681%_
                                                  _%$%g208659208668%_))
                                             (_%$%K208663208678%_
                                              _%path208681%_)))))
                                   '()))
                       '#t))
                  (_%out208700%_
                   (if (fxzero? _%phi208657%_)
                       _%out208698%_
                       (cons 'phi:
                             (cons _%phi208657%_ (cons _%out208698%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp208611%_
                                                      _%rest208634%_
                                                      (cons _%out208700%_
                                                            _%r208614%_))))))
                                            (let ((_%$%try-match208638208716%_
                                                   (lambda ()
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            _%$%out208636208649%_
                                                            'gx#export-set::t))
                                                         (let* ((_%$%e208641208706%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%$%out208636208649%_
                            '1
                            '#f
                            '#f)))
                        (_%$%e208642208711%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%$%out208636208649%_
                            '2
                            '#f
                            '#f))))
                   (let ((_%src208709%_ _%$%e208641208706%_)
                         (_%phi208714%_ _%$%e208642208711%_))
                     (_%$%K208640208703%_ _%phi208714%_ _%src208709%_)))
                 (_%$%E208639208653%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%$%out208636208649%_
                                                     'gx#module-export::t))
                                                  (let* ((_%$%e208644208726%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%out208636208649%_
                                                             '1
                                                             '#f
                                                             '#f)))
                                                         (_%$%e208645208729%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%out208636208649%_
                                                             '2
                                                             '#f
                                                             '#f)))
                                                         (_%$%e208646208734%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%out208636208649%_
                                                             '3
                                                             '#f
                                                             '#f)))
                                                         (_%$%e208647208739%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%out208636208649%_
                                                             '4
                                                             '#f
                                                             '#f))))
                                                    (let ((_%key208732%_
                                                           _%$%e208645208729%_)
                                                          (_%phi208737%_
                                                           _%$%e208646208734%_)
                                                          (_%name208742%_
                                                           _%$%e208647208739%_))
                                                      (_%$%K208643208723%_
                                                       _%name208742%_
                                                       _%phi208737%_
                                                       _%key208732%_)))
                                                  (_%$%try-match208638208716%_))))))))
                                (if (pair? _%$%rest208615208623%_)
                                    (let ((_%$%hd208620208747%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%rest208615208623%_)))
                                          (_%$%tl208621208749%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%rest208615208623%_))))
                                      (let* ((_%out208752%_
                                              _%$%hd208620208747%_)
                                             (_%rest208754%_
                                              _%$%tl208621208749%_))
                                        (_%$%K208619208744%_
                                         _%rest208754%_
                                         _%out208752%_)))
                                    (_%$%else208617208631%_))))))
                        (_%$%g208577208587%_ _%$%g208578208590%_)))))
            (_%$%g208576208756%_ _%stx208572%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self208532%_ _%stx208533%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self208532%_ 'state)))
        (let* ((_%$%g208535208545%_
                (lambda (_%$%g208536208542%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g208536208542%_))))
               (_%$%g208534208568%_
                (lambda (_%$%g208536208548%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g208536208548%_))
                      (let ((_%$%e208538208550%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g208536208548%_))))
                        (let ((_%$%hd208539208553%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e208538208550%_)))
                              (_%$%tl208540208555%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e208538208550%_))))
                          (cons '%#provide
                                (map gxc#generate-runtime-identifier
                                     _%$%tl208540208555%_))))
                      (_%$%g208535208545%_ _%$%g208536208548%_)))))
          (_%$%g208534208568%_ _%stx208533%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self208407%_ _%stx208408%_)
        (letrec ((_%generate1208410%_
                  (lambda (_%id208527%_ _%eid208528%_)
                    (let ((_%eid208530%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid208528%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid208530%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx208408%_
                             _%eid208530%_)))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _%id208527%_))
                            (cons _%eid208530%_ '()))))))
          (let* ((_%$%g208412208440%_
                  (lambda (_%$%g208413208437%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g208413208437%_))))
                 (_%$%g208411208524%_
                  (lambda (_%$%g208413208443%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g208413208443%_))
                        (let ((_%$%e208416208445%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g208413208443%_))))
                          (let ((_%$%hd208417208448%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e208416208445%_)))
                                (_%$%tl208418208450%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e208416208445%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%$%tl208418208450%_))
                                (let ((_g218111_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%$%tl208418208450%_
                                          '0))))
                                  (begin
                                    (let ((_g218112_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g218111_)
                                                 (##values-length _g218111_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g218112_ 2)))
                                          (error "Context expects 2 values"
                                                 _g218112_)))
                                    (let ((_%$%target208419208453%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g218111_ 0)))
                                          (_%$%tl208421208455%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g218111_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl208421208455%_))
                                          (letrec ((_%$%loop208422208458%_
                                                    (lambda (_%$%hd208420208461%_
                                                             _%$%eid208426208463%_
                                                             _%$%id208427208464%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%hd208420208461%_))
                                                          (let ((_%$%e208423208466%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%hd208420208461%_))))
                    (let ((_%$%lp-hd208424208469%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e208423208466%_)))
                          (_%$%lp-tl208425208471%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e208423208466%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%lp-hd208424208469%_))
                          (let ((_%$%e208430208474%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%lp-hd208424208469%_))))
                            (let ((_%$%hd208431208477%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e208430208474%_)))
                                  (_%$%tl208432208479%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e208430208474%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl208432208479%_))
                                  (let ((_%$%e208433208482%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl208432208479%_))))
                                    (let ((_%$%hd208434208485%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e208433208482%_)))
                                          (_%$%tl208435208487%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e208433208482%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl208435208487%_))
                                          (_%$%loop208422208458%_
                                           _%$%lp-tl208425208471%_
                                           (cons _%$%hd208434208485%_
                                                 _%$%eid208426208463%_)
                                           (cons _%$%hd208431208477%_
                                                 _%$%id208427208464%_))
                                          (_%$%g208412208440%_
                                           _%$%g208413208443%_))))
                                  (_%$%g208412208440%_ _%$%g208413208443%_))))
                          (_%$%g208412208440%_ _%$%g208413208443%_))))
                  (let ((_%$%eid208428208490%_ (reverse _%$%eid208426208463%_))
                        (_%$%id208429208491%_ (reverse _%$%id208427208464%_)))
                    (cons '%#extern
                          (map _%generate1208410%_
                               (let ((__tmp218113
                                      (lambda (_%$%g208509208512%_
                                               _%$%g208510208514%_)
                                        (cons _%$%g208509208512%_
                                              _%$%g208510208514%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp218113
                                  '()
                                  _%$%id208429208491%_))
                               (let ((__tmp218114
                                      (lambda (_%$%g208516208519%_
                                               _%$%g208517208521%_)
                                        (cons _%$%g208516208519%_
                                              _%$%g208517208521%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp218114
                                  '()
                                  _%$%eid208428208490%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%loop208422208458%_
                                             _%$%target208419208453%_
                                             '()
                                             '()))
                                          (_%$%g208412208440%_
                                           _%$%g208413208443%_)))))
                                (_%$%g208412208440%_ _%$%g208413208443%_))))
                        (_%$%g208412208440%_ _%$%g208413208443%_)))))
            (_%$%g208411208524%_ _%stx208408%_)))))
    (define gxc#generate-meta-define-runtime%
      (lambda (_%self208335%_ _%stx208336%_)
        (let* ((_%$%g208338208355%_
                (lambda (_%$%g208339208352%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g208339208352%_))))
               (_%$%g208337208404%_
                (lambda (_%$%g208339208358%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g208339208358%_))
                      (let ((_%$%e208342208360%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g208339208358%_))))
                        (let ((_%$%hd208343208363%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e208342208360%_)))
                              (_%$%tl208344208365%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e208342208360%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl208344208365%_))
                              (let ((_%$%e208345208368%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl208344208365%_))))
                                (let ((_%$%hd208346208371%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e208345208368%_)))
                                      (_%$%tl208347208373%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e208345208368%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl208347208373%_))
                                      (let ((_%$%e208348208376%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl208347208373%_))))
                                        (let ((_%$%hd208349208379%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e208348208376%_)))
                                              (_%$%tl208350208381%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e208348208376%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl208350208381%_))
                                              (let ((_%ident208400%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#generate-runtime-identifier
                                                        _%$%hd208346208371%_)))
                                                    (_%eid208401%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd208349208379%_)))
                                                    (_%props208402%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier-properties
                                                        _%$%hd208346208371%_))))
                                                (cons '%#define-runtime
                                                      (cons _%ident208400%_
                                                            (cons _%eid208401%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%props208402%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g208338208355%_
                                               _%$%g208339208358%_))))
                                      (_%$%g208338208355%_
                                       _%$%g208339208358%_))))
                              (_%$%g208338208355%_ _%$%g208339208358%_))))
                      (_%$%g208338208355%_ _%$%g208339208358%_)))))
          (_%$%g208337208404%_ _%stx208336%_))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self208124%_ _%stx208125%_)
        (letrec ((_%generate1208127%_
                  (lambda (_%id208329%_)
                    (let ((_%eid208331%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id208329%_)))
                          (_%ident208332%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%id208329%_)))
                          (_%props208333%_
                           (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier-properties
                              _%id208329%_))))
                      (cons '%#define-runtime
                            (cons _%ident208332%_
                                  (cons _%eid208331%_ _%props208333%_))))))
                 (_%generate*208128%_
                  (lambda (_%all208297%_)
                    (let* ((_%$%all208298208306%_ _%all208297%_)
                           (_%$%else208300208314%_
                            (lambda () (cons '%#begin _%all208297%_)))
                           (_%$%K208302208319%_
                            (lambda (_%one208317%_) _%one208317%_)))
                      (if (pair? _%$%all208298208306%_)
                          (let ((_%$%hd208303208322%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%all208298208306%_)))
                                (_%$%tl208304208324%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%all208298208306%_))))
                            (let ((_%one208327%_ _%$%hd208303208322%_))
                              (if (null? _%$%tl208304208324%_)
                                  (_%$%K208302208319%_ _%one208327%_)
                                  (_%$%else208300208314%_))))
                          (_%$%else208300208314%_))))))
          (let* ((_%$%g208130208147%_
                  (lambda (_%$%g208131208144%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g208131208144%_))))
                 (_%$%g208129208294%_
                  (lambda (_%$%g208131208150%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g208131208150%_))
                        (let ((_%$%e208134208152%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g208131208150%_))))
                          (let ((_%$%hd208135208155%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e208134208152%_)))
                                (_%$%tl208136208157%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e208134208152%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl208136208157%_))
                                (let ((_%$%e208137208160%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl208136208157%_))))
                                  (let ((_%$%hd208138208163%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e208137208160%_)))
                                        (_%$%tl208139208165%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e208137208160%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl208139208165%_))
                                        (let ((_%$%e208140208168%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl208139208165%_))))
                                          (let ((_%$%hd208141208171%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e208140208168%_)))
                                                (_%$%tl208142208173%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e208140208168%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl208142208173%_))
                                                (let _%lp208193%_ ((_%rest208195%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%hd208138208163%_)
                           (_%r208196%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%__stx217851217852%_
                                                          _%rest208195%_)
                                                         (_%$%g208201208218%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%__stx217851217852%_)))))
                                                    (let ((_%__kont217853217854%_
                                                           (lambda (_%$%g208203208281%_)
                                                             (_%lp208193%_
                                                              _%$%g208203208281%_
                                                              _%r208196%_)))
                                                          (_%__kont217855217856%_
                                                           (lambda (_%$%g208208208254%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g208209208255%_)
                     (_%lp208193%_
                      _%$%g208208208254%_
                      (cons (_%generate1208127%_ _%$%g208209208255%_)
                            _%r208196%_))))
                  (_%__kont217857217858%_
                   (lambda (_%$%g208213208230%_)
                     (_%generate*208128%_
                      (let ((__tmp218115
                             (cons (_%generate1208127%_ _%$%g208213208230%_)
                                   '())))
                        (declare (not safe))
                        (foldl__0 cons __tmp218115 _%r208196%_)))))
                  (_%__kont217859217860%_
                   (lambda () (_%generate*208128%_ (reverse! _%r208196%_)))))
              (let ((_%$%g208199208241%_
                     (lambda ()
                       (let ((_%$%g208213208230%_ _%__stx217851217852%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%$%g208213208230%_))
                             (_%__kont217857217858%_ _%$%g208213208230%_)
                             (_%__kont217859217860%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx217851217852%_))
                    (let ((_%$%e208204208270%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx217851217852%_))))
                      (let ((_%$%tl208206208275%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e208204208270%_)))
                            (_%$%hd208205208273%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e208204208270%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%$%hd208205208273%_))
                            (let ((_%$%e208207208278%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd208205208273%_))))
                              (if (equal? _%$%e208207208278%_ '#f)
                                  (_%__kont217853217854%_ _%$%tl208206208275%_)
                                  (_%__kont217855217856%_
                                   _%$%tl208206208275%_
                                   _%$%hd208205208273%_)))
                            (_%__kont217855217856%_
                             _%$%tl208206208275%_
                             _%$%hd208205208273%_))))
                    (_%$%g208199208241%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g208130208147%_
                                                 _%$%g208131208150%_))))
                                        (_%$%g208130208147%_
                                         _%$%g208131208150%_))))
                                (_%$%g208130208147%_ _%$%g208131208150%_))))
                        (_%$%g208130208147%_ _%$%g208131208150%_)))))
            (_%$%g208129208294%_ _%stx208125%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self208021%_ _%stx208022%_)
        (let* ((_%$%g208024208041%_
                (lambda (_%$%g208025208038%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g208025208038%_))))
               (_%$%g208023208121%_
                (lambda (_%$%g208025208044%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g208025208044%_))
                      (let ((_%$%e208028208046%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g208025208044%_))))
                        (let ((_%$%hd208029208049%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e208028208046%_)))
                              (_%$%tl208030208051%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e208028208046%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl208030208051%_))
                              (let ((_%$%e208031208054%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl208030208051%_))))
                                (let ((_%$%hd208032208057%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e208031208054%_)))
                                      (_%$%tl208033208059%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e208031208054%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl208033208059%_))
                                      (let ((_%$%e208034208062%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl208033208059%_))))
                                        (let ((_%$%hd208035208065%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e208034208062%_)))
                                              (_%$%tl208036208067%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e208034208062%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl208036208067%_))
                                              (let* ((_%eid208086%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#generate-runtime-binding-id
                                                         _%$%hd208032208057%_)))
                                                     (_%phi208088%_
                                                      (let ((__tmp218116
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#current-expander-phi))))
                (declare (not safe))
                (##fx+ __tmp218116 '1)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%block208090%_
                                                      (gxc#meta-state-begin-phi!
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self208021%_
                                                          'state))
                                                       _%phi208088%_)))
                                                (let* ((_%$%g208093208100%_
                                                        (lambda (_%$%g208094208097%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%$%g208094208097%_))))
                                                       (_%$%g208092208118%_
                                                        (lambda (_%$%g208094208103%_)
                                                          (gxc#meta-state-add-phi!
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self208021%_
                                                              'state))
                                                           _%phi208088%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#define-runtime))
                         (cons _%$%g208094208103%_
                               (cons _%$%hd208035208065%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g208092208118%_
                                                   _%eid208086%_))
                                                (if _%block208090%_
                                                    (cons '%#begin
                                                          (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block208090%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        (cons (cons '%#define-syntax
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-identifier
                                             _%$%hd208032208057%_))
                                          (cons _%eid208086%_ '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons '%#define-syntax
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#generate-runtime-identifier
                           _%$%hd208032208057%_))
                        (cons _%eid208086%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g208024208041%_
                                               _%$%g208025208044%_))))
                                      (_%$%g208024208041%_
                                       _%$%g208025208044%_))))
                              (_%$%g208024208041%_ _%$%g208025208044%_))))
                      (_%$%g208024208041%_ _%$%g208025208044%_)))))
          (_%$%g208023208121%_ _%stx208022%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self207953%_ _%stx207954%_)
        (let* ((_%$%g207956207973%_
                (lambda (_%$%g207957207970%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g207957207970%_))))
               (_%$%g207955208018%_
                (lambda (_%$%g207957207976%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g207957207976%_))
                      (let ((_%$%e207960207978%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g207957207976%_))))
                        (let ((_%$%hd207961207981%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e207960207978%_)))
                              (_%$%tl207962207983%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e207960207978%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl207962207983%_))
                              (let ((_%$%e207963207986%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl207962207983%_))))
                                (let ((_%$%hd207964207989%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e207963207986%_)))
                                      (_%$%tl207965207991%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e207963207986%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl207965207991%_))
                                      (let ((_%$%e207966207994%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl207965207991%_))))
                                        (let ((_%$%hd207967207997%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e207966207994%_)))
                                              (_%$%tl207968207999%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e207966207994%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl207968207999%_))
                                              (cons '%#define-alias
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#generate-runtime-identifier
                                                             _%$%hd207964207989%_))
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#generate-runtime-identifier
                           _%$%hd207967207997%_))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g207956207973%_
                                               _%$%g207957207976%_))))
                                      (_%$%g207956207973%_
                                       _%$%g207957207976%_))))
                              (_%$%g207956207973%_ _%$%g207957207976%_))))
                      (_%$%g207956207973%_ _%$%g207957207976%_)))))
          (_%$%g207955208018%_ _%stx207954%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self207950%_ _%stx207951%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self207950%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx207951%_)
        (gxc#generate-meta-define-values% _%self207950%_ _%stx207951%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self207947%_ _%stx207948%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self207947%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx207948%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp218118 (list)) (__tmp218117 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp218118
         '(src n open blocks)
         __tmp218117
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args207944%_
        (apply make-instance gxc#meta-state::t _%$args207944%_)))
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
      (lambda (_%self207930%_ _%ctx207931%_)
        (let ((_%self207934%_ _%self207930%_))
          (if (let ((__tmp218119
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self207934%_))))
                (declare (not safe))
                (##fx< '4 __tmp218119))
              (begin
                (let ((__tmp218120
                       (let ((__tmp218121
                              (##structure-ref
                               _%ctx207931%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp218121))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self207934%_
                   __tmp218120
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self207934%_ '1 '2 '#f '#f))
                (let ((__tmp218122
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self207934%_
                   __tmp218122
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self207934%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp218123
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self207934%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self207934%_
                       '4
                       __tmp218123))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp218125 (list)) (__tmp218124 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp218125
         '(ctx phi n code)
         __tmp218124
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args207805%_
        (apply make-instance gxc#meta-state-block::t _%$args207805%_)))
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
      (lambda (_%state207765%_ _%phi207766%_)
        (let* ((_%$%state207767207775%_ _%state207765%_)
               (_%$%E207769207778%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%state207767207775%_
                           '((meta-state src n open))))
                  '#!void))
               (_%$%K207770207787%_
                (lambda (_%open207781%_ _%n207782%_ _%src207783%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open207781%_ _%phi207766%_))
                      '#f
                      (let ((_%block-ref207785%_
                             (let ((__tmp218126 (number->string _%n207782%_)))
                               (declare (not safe))
                               (##string-append
                                _%src207783%_
                                '"~"
                                __tmp218126))))
                        (##structure-set!
                         _%state207765%_
                         (let () (declare (not safe)) (##fx+ _%n207782%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp218127
                               (let ((__tmp218128
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp218128
                                  _%phi207766%_
                                  _%n207782%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open207781%_ _%phi207766%_ __tmp218127))
                        _%block-ref207785%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%$%state207767207775%_
                 'gxc#meta-state::t))
              (let* ((_%$%e207771207790%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%$%state207767207775%_
                         '1
                         '#f
                         '#f)))
                     (_%src207793%_ _%$%e207771207790%_)
                     (_%$%e207772207795%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%$%state207767207775%_
                         '2
                         '#f
                         '#f)))
                     (_%n207798%_ _%$%e207772207795%_)
                     (_%$%e207773207800%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%$%state207767207775%_
                         '3
                         '#f
                         '#f)))
                     (_%open207803%_ _%$%e207773207800%_))
                (_%$%K207770207787%_ _%open207803%_ _%n207798%_ _%src207793%_))
              (_%$%E207769207778%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state207759%_ _%phi207760%_ _%stx207761%_)
        (let ((_%block207763%_
               (let ((__tmp218129
                      (##structure-ref
                       _%state207759%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp218129 _%phi207760%_))))
          (##structure-set!
           _%block207763%_
           (cons _%stx207761%_
                 (##structure-ref
                  _%block207763%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state207753%_)
        (##structure-set!
         _%state207753%_
         (let ((__tmp218132
                (lambda (_%_207755%_ _%block207756%_ _%r207757%_)
                  (cons _%block207756%_ _%r207757%_)))
               (__tmp218131
                (##structure-ref _%state207753%_ '4 gxc#meta-state::t '#f))
               (__tmp218130
                (##structure-ref _%state207753%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp218132 __tmp218131 __tmp218130))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state207753%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state207706%_)
        (gxc#meta-state-end-phi! _%state207706%_)
        (let ((__tmp218134
               (lambda (_%block207708%_ _%r207709%_)
                 (let* ((_%$%block207710207719%_ _%block207708%_)
                        (_%$%E207712207722%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%$%block207710207719%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%$%K207713207730%_
                         (lambda (_%code207725%_
                                  _%n207726%_
                                  _%phi207727%_
                                  _%ctx207728%_)
                           (if (null? _%code207725%_)
                               _%r207709%_
                               (cons (cons _%ctx207728%_
                                           (cons _%phi207727%_
                                                 (cons _%n207726%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code207725%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r207709%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%$%block207710207719%_
                          'gxc#meta-state-block::t))
                       (let* ((_%$%e207714207733%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%$%block207710207719%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx207736%_ _%$%e207714207733%_)
                              (_%$%e207715207738%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%$%block207710207719%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi207741%_ _%$%e207715207738%_)
                              (_%$%e207716207743%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%$%block207710207719%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n207746%_ _%$%e207716207743%_)
                              (_%$%e207717207748%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%$%block207710207719%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code207751%_ _%$%e207717207748%_))
                         (_%$%K207713207730%_
                          _%code207751%_
                          _%n207746%_
                          _%phi207741%_
                          _%ctx207736%_))
                       (_%$%E207712207722%_)))))
              (__tmp218133
               (##structure-ref _%state207706%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (foldl__0 __tmp218134 '() __tmp218133))))
    (define gxc#collect-expression-refs
      (lambda (_%stx207702%_)
        (let ((_%ht207704%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht207704%_ _%stx207702%_)
          _%ht207704%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self207645%_ _%stx207646%_)
        (let* ((_%$%g207648207661%_
                (lambda (_%$%g207649207658%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g207649207658%_))))
               (_%$%g207647207699%_
                (lambda (_%$%g207649207664%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g207649207664%_))
                      (let ((_%$%e207651207666%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g207649207664%_))))
                        (let ((_%$%hd207652207669%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e207651207666%_)))
                              (_%$%tl207653207671%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e207651207666%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl207653207671%_))
                              (let ((_%$%e207654207674%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl207653207671%_))))
                                (let ((_%$%hd207655207677%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e207654207674%_)))
                                      (_%$%tl207656207679%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e207654207674%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl207656207679%_))
                                      (let* ((_%bind207694%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#resolve-identifier__0
                                                 _%$%hd207655207677%_)))
                                             (_%eid207696%_
                                              (if _%bind207694%_
                                                  (##structure-ref
                                                   _%bind207694%_
                                                   '1
                                                   gx#binding::t
                                                   '#f)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%hd207655207677%_))))
                                             (__tmp218135
                                              (let ()
                                                (declare (not safe))
                                                (slot-ref__0
                                                 _%self207645%_
                                                 'table))))
                                        (declare (not safe))
                                        (hash-put!
                                         __tmp218135
                                         _%eid207696%_
                                         _%eid207696%_))
                                      (_%$%g207648207661%_
                                       _%$%g207649207664%_))))
                              (_%$%g207648207661%_ _%$%g207649207664%_))))
                      (_%$%g207648207661%_ _%$%g207649207664%_)))))
          (_%$%g207647207699%_ _%stx207646%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self207572%_ _%stx207573%_)
        (let* ((_%$%g207575207592%_
                (lambda (_%$%g207576207589%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g207576207589%_))))
               (_%$%g207574207642%_
                (lambda (_%$%g207576207595%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g207576207595%_))
                      (let ((_%$%e207579207597%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g207576207595%_))))
                        (let ((_%$%hd207580207600%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e207579207597%_)))
                              (_%$%tl207581207602%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e207579207597%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl207581207602%_))
                              (let ((_%$%e207582207605%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl207581207602%_))))
                                (let ((_%$%hd207583207608%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e207582207605%_)))
                                      (_%$%tl207584207610%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e207582207605%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl207584207610%_))
                                      (let ((_%$%e207585207613%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl207584207610%_))))
                                        (let ((_%$%hd207586207616%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e207585207613%_)))
                                              (_%$%tl207587207618%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e207585207613%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl207587207618%_))
                                              (let* ((_%bind207637%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#resolve-identifier__0
                                                         _%$%hd207583207608%_)))
                                                     (_%eid207639%_
                                                      (if _%bind207637%_
                                                          (##structure-ref
                                                           _%bind207637%_
                                                           '1
                                                           gx#binding::t
                                                           '#f)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%hd207583207608%_)))))
                                                (let ((__tmp218136
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self207572%_
                                                          'table))))
                                                  (declare (not safe))
                                                  (hash-put!
                                                   __tmp218136
                                                   _%eid207639%_
                                                   _%eid207639%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self207572%_
                                                   _%$%hd207586207616%_)))
                                              (_%$%g207575207592%_
                                               _%$%g207576207595%_))))
                                      (_%$%g207575207592%_
                                       _%$%g207576207595%_))))
                              (_%$%g207575207592%_ _%$%g207576207595%_))))
                      (_%$%g207575207592%_ _%$%g207576207595%_)))))
          (_%$%g207574207642%_ _%stx207573%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self207529%_ _%stx207530%_)
        (let* ((_%$%g207532207542%_
                (lambda (_%$%g207533207539%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g207533207539%_))))
               (_%$%g207531207569%_
                (lambda (_%$%g207533207545%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g207533207545%_))
                      (let ((_%$%e207535207547%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g207533207545%_))))
                        (let ((_%$%hd207536207550%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e207535207547%_)))
                              (_%$%tl207537207552%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e207535207547%_))))
                          (let ((__tmp218137
                                 (lambda (_%$%g207564207566%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self207529%_
                                      _%$%g207564207566%_)))))
                            (declare (not safe))
                            (ormap__0 __tmp218137 _%$%tl207537207552%_))))
                      (_%$%g207532207542%_ _%$%g207533207545%_)))))
          (_%$%g207531207569%_ _%stx207530%_))))
    (define gxc#count-values-single%
      (lambda (_%self207526%_ _%stx207527%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self207394%_ _%stx207395%_)
        (let* ((_%__stx217881217882%_ _%stx207395%_)
               (_%$%g207398207427%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx217881217882%_)))))
          (let ((_%__kont217883217884%_
                 (lambda (_%$%g207400207493%_ _%$%g207401207494%_)
                   (length (let ((__tmp218138
                                  (lambda (_%$%g207515207518%_
                                           _%$%g207516207520%_)
                                    (cons _%$%g207515207518%_
                                          _%$%g207516207520%_))))
                             (declare (not safe))
                             (foldr__0 __tmp218138 '() _%$%g207400207493%_)))))
                (_%__kont217887217888%_ (lambda () '#f)))
            (let ((_%__match217926217927%_
                   (lambda (_%$%e207402207439%_
                            _%$%hd207403207442%_
                            _%$%tl207404207444%_
                            _%$%e207405207447%_
                            _%$%hd207406207450%_
                            _%$%tl207407207452%_
                            _%$%e207408207455%_
                            _%$%hd207409207458%_
                            _%$%tl207410207460%_
                            _%$%e207411207463%_
                            _%$%hd207412207466%_
                            _%$%tl207413207468%_
                            _%__splice217885217886%_
                            _%$%target207414207471%_
                            _%$%tl207416207473%_)
                     (letrec ((_%$%loop207417207476%_
                               (lambda (_%$%hd207415207479%_
                                        _%$%rand207421207481%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd207415207479%_))
                                     (let ((_%$%e207418207483%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd207415207479%_))))
                                       (let ((_%$%lp-tl207420207488%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e207418207483%_)))
                                             (_%$%lp-hd207419207486%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e207418207483%_))))
                                         (_%$%loop207417207476%_
                                          _%$%lp-tl207420207488%_
                                          (cons _%$%lp-hd207419207486%_
                                                _%$%rand207421207481%_))))
                                     (let ((_%$%rand207422207491%_
                                            (reverse _%$%rand207421207481%_)))
                                       (let ((_%$%g207400207493%_
                                              _%$%rand207422207491%_)
                                             (_%$%g207401207494%_
                                              _%$%hd207412207466%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%$%g207401207494%_
                                                'values))
                                             (_%__kont217883217884%_
                                              _%$%g207400207493%_
                                              _%$%g207401207494%_)
                                             (_%__kont217887217888%_))))))))
                       (_%$%loop207417207476%_
                        _%$%target207414207471%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx217881217882%_))
                  (let ((_%$%e207402207439%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx217881217882%_))))
                    (let ((_%$%tl207404207444%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e207402207439%_)))
                          (_%$%hd207403207442%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e207402207439%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl207404207444%_))
                          (let ((_%$%e207405207447%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl207404207444%_))))
                            (let ((_%$%tl207407207452%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e207405207447%_)))
                                  (_%$%hd207406207450%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e207405207447%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd207406207450%_))
                                  (let ((_%$%e207408207455%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd207406207450%_))))
                                    (let ((_%$%tl207410207460%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e207408207455%_)))
                                          (_%$%hd207409207458%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e207408207455%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd207409207458%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd207409207458%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl207410207460%_))
                                                  (let ((_%$%e207411207463%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl207410207460%_))))
                                                    (let ((_%$%tl207413207468%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e207411207463%_)))
                                                          (_%$%hd207412207466%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e207411207463%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl207413207468%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%$%tl207407207452%_))
                      (let ((_%__splice217885217886%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl207407207452%_
                                '0))))
                        (let ((_%$%tl207416207473%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice217885217886%_ '1)))
                              (_%$%target207414207471%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice217885217886%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl207416207473%_))
                              (_%__match217926217927%_
                               _%$%e207402207439%_
                               _%$%hd207403207442%_
                               _%$%tl207404207444%_
                               _%$%e207405207447%_
                               _%$%hd207406207450%_
                               _%$%tl207407207452%_
                               _%$%e207408207455%_
                               _%$%hd207409207458%_
                               _%$%tl207410207460%_
                               _%$%e207411207463%_
                               _%$%hd207412207466%_
                               _%$%tl207413207468%_
                               _%__splice217885217886%_
                               _%$%target207414207471%_
                               _%$%tl207416207473%_)
                              (_%__kont217887217888%_))))
                      (_%__kont217887217888%_))
                  (_%__kont217887217888%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont217887217888%_))
                                              (_%__kont217887217888%_))
                                          (_%__kont217887217888%_))))
                                  (_%__kont217887217888%_))))
                          (_%__kont217887217888%_))))
                  (_%__kont217887217888%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self207299%_ _%stx207300%_)
        (let* ((_%$%g207302207323%_
                (lambda (_%$%g207303207320%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g207303207320%_))))
               (_%$%g207301207391%_
                (lambda (_%$%g207303207326%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g207303207326%_))
                      (let ((_%$%e207307207328%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g207303207326%_))))
                        (let ((_%$%hd207308207331%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e207307207328%_)))
                              (_%$%tl207309207333%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e207307207328%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl207309207333%_))
                              (let ((_%$%e207310207336%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl207309207333%_))))
                                (let ((_%$%hd207311207339%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e207310207336%_)))
                                      (_%$%tl207312207341%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e207310207336%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl207312207341%_))
                                      (let ((_%$%e207313207344%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl207312207341%_))))
                                        (let ((_%$%hd207314207347%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e207313207344%_)))
                                              (_%$%tl207315207349%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e207313207344%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl207315207349%_))
                                              (let ((_%$%e207316207352%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl207315207349%_))))
                                                (let ((_%$%hd207317207355%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e207316207352%_)))
                                                      (_%$%tl207318207357%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e207316207352%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl207318207357%_))
                                                      (let ((_%$%c1207379207381%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1
                        _%self207299%_
                        _%$%hd207314207347%_))))
                (if _%$%c1207379207381%_
                    (let* ((_%c1207383%_ _%$%c1207379207381%_)
                           (_%$%c2207384207386%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self207299%_
                               _%$%hd207317207355%_))))
                      (if _%$%c2207384207386%_
                          (let ((_%c2207388%_ _%$%c2207384207386%_))
                            (if (fx= _%c1207383%_ _%c2207388%_)
                                _%c1207383%_
                                '#f))
                          '#f))
                    '#f))
              (_%$%g207302207323%_ _%$%g207303207326%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g207302207323%_
                                               _%$%g207303207326%_))))
                                      (_%$%g207302207323%_
                                       _%$%g207303207326%_))))
                              (_%$%g207302207323%_ _%$%g207303207326%_))))
                      (_%$%g207302207323%_ _%$%g207303207326%_)))))
          (_%$%g207301207391%_ _%stx207300%_))))))
