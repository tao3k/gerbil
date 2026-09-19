(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1789839227)
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
      (let ((__tmp218116 (list gxc#::void::t))
            (__tmp218115 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp218116
         '()
         __tmp218115
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args216730%_
        (apply make-instance gxc#::collect-bindings::t _%$args216730%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp218117
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
        (__make-atomic-promise __tmp218117)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx216722%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self216725%_
                (let ((__obj218091
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj218091))
               (__tmp218118
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self216725%_ _%stx216722%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp218118
           gxc#current-compile-method
           _%self216725%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp218120 (list gxc#::void::t))
            (__tmp218119 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp218120
         '(modules)
         __tmp218119
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args216719%_
        (apply make-instance gxc#::lift-modules::t _%$args216719%_)))
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
      (let ((__tmp218121
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
        (__make-atomic-promise __tmp218121)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords216694%_ _%$%modules216691216695%_ _%stx216696%_)
        (let ((_%modules216699%_
               (if (eq? _%$%modules216691216695%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%$%modules216691216695%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self216701%_
                  (let ((__obj218093
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj218093
                       _%modules216699%_
                       '1
                       '#f
                       '#f))
                    __obj218093))
                 (__tmp218122
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self216701%_ _%stx216696%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp218122
             gxc#current-compile-method
             _%self216701%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords216708%_ . _%args216709%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords216708%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords216708%_
                  'modules:
                  absent-value))
               _%args216709%_)))
    (define gxc#apply-lift-modules
      (lambda _%$%args216692216715%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%$%args216692216715%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp218124 (list)) (__tmp218123 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp218124
         '()
         __tmp218123
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args216687%_
        (apply make-instance gxc#::find-runtime-code::t _%$args216687%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp218125
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
        (__make-atomic-promise __tmp218125)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx216679%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self216682%_
                (let ((__obj218095
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj218095))
               (__tmp218126
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self216682%_ _%stx216679%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp218126
           gxc#current-compile-method
           _%self216682%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp218128 (list gxc#::false::t))
            (__tmp218127 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp218128
         '()
         __tmp218127
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args216676%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args216676%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp218129
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
        (__make-atomic-promise __tmp218129)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx216668%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self216671%_
                (let ((__obj218097
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj218097))
               (__tmp218130
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self216671%_ _%stx216668%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp218130
           gxc#current-compile-method
           _%self216671%_))))
    (define gxc#::count-values::t
      (let ((__tmp218132 (list gxc#::false-expression::t))
            (__tmp218131 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp218132
         '()
         __tmp218131
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args216665%_
        (apply make-instance gxc#::count-values::t _%$args216665%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp218133
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
        (__make-atomic-promise __tmp218133)))
    (define gxc#apply-count-values
      (lambda (_%stx216657%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self216660%_
                (let ((__obj218099
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj218099))
               (__tmp218134
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self216660%_ _%stx216657%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp218134
           gxc#current-compile-method
           _%self216660%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp218135 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp218135
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args216654%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args216654%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp218136
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
        (__make-atomic-promise __tmp218136)))
    (define gxc#::generate-loader::t
      (let ((__tmp218138 (list gxc#::generate-runtime-empty::t))
            (__tmp218137 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp218138
         '()
         __tmp218137
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args216650%_
        (apply make-instance gxc#::generate-loader::t _%$args216650%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp218139
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
        (__make-atomic-promise __tmp218139)))
    (define gxc#apply-generate-loader
      (lambda (_%stx216642%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self216645%_
                (let ((__obj218102
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj218102))
               (__tmp218140
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self216645%_ _%stx216642%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp218140
           gxc#current-compile-method
           _%self216645%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp218141 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp218141
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args216639%_
        (apply make-instance gxc#::generate-runtime::t _%$args216639%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp218142
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
        (__make-atomic-promise __tmp218142)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx216631%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self216634%_
                (let ((__obj218104
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj218104))
               (__tmp218143
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self216634%_ _%stx216631%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp218143
           gxc#current-compile-method
           _%self216634%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp218145 (list gxc#::generate-runtime::t))
            (__tmp218144 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp218145
         '()
         __tmp218144
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args216628%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args216628%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp218146
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
        (__make-atomic-promise __tmp218146)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx216620%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self216623%_
                (let ((__obj218106
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj218106))
               (__tmp218147
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self216623%_ _%stx216620%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp218147
           gxc#current-compile-method
           _%self216623%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp218148 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp218148
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args216617%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args216617%_)))
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
      (let ((__tmp218149
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
        (__make-atomic-promise __tmp218149)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords216592%_ _%$%table216589216593%_ _%stx216594%_)
        (let ((_%table216597%_
               (if (eq? _%$%table216589216593%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%$%table216589216593%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self216599%_
                  (let ((__obj218108
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj218108
                       _%table216597%_
                       '1
                       '#f
                       '#f))
                    __obj218108))
                 (__tmp218150
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self216599%_ _%stx216594%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp218150
             gxc#current-compile-method
             _%self216599%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords216606%_ . _%args216607%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords216606%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords216606%_
                  'table:
                  absent-value))
               _%args216607%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%$%args216590216613%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%$%args216590216613%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp218152 (list gxc#::void-expression::t))
            (__tmp218151 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp218152
         '(state)
         __tmp218151
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args216585%_
        (apply make-instance gxc#::generate-meta::t _%$args216585%_)))
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
      (let ((__tmp218153
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
        (__make-atomic-promise __tmp218153)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords216560%_ _%$%state216557216561%_ _%stx216562%_)
        (let ((_%state216565%_
               (if (eq? _%$%state216557216561%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%$%state216557216561%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self216567%_
                  (let ((__obj218110
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj218110
                       _%state216565%_
                       '1
                       '#f
                       '#f))
                    __obj218110))
                 (__tmp218154
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self216567%_ _%stx216562%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp218154
             gxc#current-compile-method
             _%self216567%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords216574%_ . _%args216575%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords216574%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords216574%_
                  'state:
                  absent-value))
               _%args216575%_)))
    (define gxc#apply-generate-meta
      (lambda _%$%args216558216581%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%$%args216558216581%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp218156 (list)) (__tmp218155 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp218156
         '(state)
         __tmp218155
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args216553%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args216553%_)))
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
      (let ((__tmp218157
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
        (__make-atomic-promise __tmp218157)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords216528%_ _%$%state216525216529%_ _%stx216530%_)
        (let ((_%state216533%_
               (if (eq? _%$%state216525216529%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%$%state216525216529%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self216535%_
                  (let ((__obj218112
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj218112
                       _%state216533%_
                       '1
                       '#f
                       '#f))
                    __obj218112))
                 (__tmp218158
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self216535%_ _%stx216530%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp218158
             gxc#current-compile-method
             _%self216535%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords216542%_ . _%args216543%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords216542%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords216542%_
                  'state:
                  absent-value))
               _%args216543%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%$%args216526216549%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%$%args216526216549%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self216454%_ _%stx216455%_)
        (let* ((_%$%g216457216474%_
                (lambda (_%$%g216458216471%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g216458216471%_))))
               (_%$%g216456216521%_
                (lambda (_%$%g216458216477%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g216458216477%_))
                      (let ((_%$%e216461216479%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g216458216477%_))))
                        (let ((_%$%hd216462216482%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e216461216479%_)))
                              (_%$%tl216463216484%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e216461216479%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl216463216484%_))
                              (let ((_%$%e216464216487%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl216463216484%_))))
                                (let ((_%$%hd216465216490%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e216464216487%_)))
                                      (_%$%tl216466216492%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e216464216487%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl216466216492%_))
                                      (let ((_%$%e216467216495%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl216466216492%_))))
                                        (let ((_%$%hd216468216498%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e216467216495%_)))
                                              (_%$%tl216469216500%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e216467216495%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl216469216500%_))
                                              (let ((__tmp218159
                                                     (lambda (_%bind216519%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#identifier?
                                                              _%bind216519%_))
                                                           (gxc#add-module-binding!
                                                            _%bind216519%_
                                                            '#f)
                                                           '#!void))))
                                                (declare (not safe))
                                                (gx#stx-for-each1
                                                 __tmp218159
                                                 _%$%hd216465216490%_))
                                              (_%$%g216457216474%_
                                               _%$%g216458216477%_))))
                                      (_%$%g216457216474%_
                                       _%$%g216458216477%_))))
                              (_%$%g216457216474%_ _%$%g216458216477%_))))
                      (_%$%g216457216474%_ _%$%g216458216477%_)))))
          (_%$%g216456216521%_ _%stx216455%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self216386%_ _%stx216387%_)
        (let* ((_%$%g216389216406%_
                (lambda (_%$%g216390216403%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g216390216403%_))))
               (_%$%g216388216451%_
                (lambda (_%$%g216390216409%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g216390216409%_))
                      (let ((_%$%e216393216411%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g216390216409%_))))
                        (let ((_%$%hd216394216414%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e216393216411%_)))
                              (_%$%tl216395216416%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e216393216411%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl216395216416%_))
                              (let ((_%$%e216396216419%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl216395216416%_))))
                                (let ((_%$%hd216397216422%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e216396216419%_)))
                                      (_%$%tl216398216424%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e216396216419%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl216398216424%_))
                                      (let ((_%$%e216399216427%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl216398216424%_))))
                                        (let ((_%$%hd216400216430%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e216399216427%_)))
                                              (_%$%tl216401216432%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e216399216427%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl216401216432%_))
                                              (gxc#add-module-binding!
                                               _%$%hd216397216422%_
                                               '#t)
                                              (_%$%g216389216406%_
                                               _%$%g216390216409%_))))
                                      (_%$%g216389216406%_
                                       _%$%g216390216409%_))))
                              (_%$%g216389216406%_ _%$%g216390216409%_))))
                      (_%$%g216389216406%_ _%$%g216390216409%_)))))
          (_%$%g216388216451%_ _%stx216387%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self216328%_ _%stx216329%_)
        (let* ((_%$%g216331216345%_
                (lambda (_%$%g216332216342%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g216332216342%_))))
               (_%$%g216330216383%_
                (lambda (_%$%g216332216348%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g216332216348%_))
                      (let ((_%$%e216335216350%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g216332216348%_))))
                        (let ((_%$%hd216336216353%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e216335216350%_)))
                              (_%$%tl216337216355%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e216335216350%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl216337216355%_))
                              (let ((_%$%e216338216358%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl216337216355%_))))
                                (let ((_%$%hd216339216361%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e216338216358%_)))
                                      (_%$%tl216340216363%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e216338216358%_))))
                                  (let ((_%ctx216380%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-local-e__0
                                            _%$%hd216339216361%_))))
                                    (set-box!
                                     (let ()
                                       (declare (not safe))
                                       (slot-ref__0 _%self216328%_ 'modules))
                                     (cons _%ctx216380%_
                                           (unbox (let ()
                                                    (declare (not safe))
                                                    (slot-ref__0
                                                     _%self216328%_
                                                     'modules)))))
                                    (let ((__tmp218160
                                           (lambda ()
                                             (let ((__tmp218161
                                                    (##structure-ref
                                                     _%ctx216380%_
                                                     '11
                                                     gx#module-context::t
                                                     '#f)))
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self216328%_
                                                __tmp218161)))))
                                      (declare (not safe))
                                      (call-with-parameters__1
                                       __tmp218160
                                       gx#current-expander-context
                                       _%ctx216380%_)))))
                              (_%$%g216331216345%_ _%$%g216332216348%_))))
                      (_%$%g216331216345%_ _%$%g216332216348%_)))))
          (_%$%g216330216383%_ _%stx216329%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%$%decls216282216284%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%$%decls216282216284%_
              (let ((_%decls216286%_ _%$%decls216282216284%_))
                (let _%lp216288%_ ((_%rest216290%_ _%decls216286%_))
                  (let* ((_%$%rest216291216299%_ _%rest216290%_)
                         (_%$%else216293216307%_ (lambda () '#f))
                         (_%$%K216295216316%_
                          (lambda (_%decls216310%_ _%decl216311%_)
                            (if (equal? _%decl216311%_ '(not safe))
                                '#t
                                (if (equal? _%decl216311%_ '(safe))
                                    '#f
                                    (_%lp216288%_ _%decls216310%_))))))
                    (if (pair? _%$%rest216291216299%_)
                        (let ((_%$%hd216296216319%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%rest216291216299%_)))
                              (_%$%tl216297216321%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%rest216291216299%_))))
                          (let* ((_%decl216324%_ _%$%hd216296216319%_)
                                 (_%decls216326%_ _%$%tl216297216321%_))
                            (_%$%K216295216316%_
                             _%decls216326%_
                             _%decl216324%_)))
                        (_%$%else216293216307%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id216276%_ _%syntax?216277%_)
        (let ((_%eid216279%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id216276%_))
                '1
                gx#binding::t
                '#f))
              (_%ht216280%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid216279%_))
              '#!void
              (let ((__tmp218162
                     (let ((__tmp218163
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid216279%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp218163 _%syntax?216277%_))))
                (declare (not safe))
                (hash-put! _%ht216280%_ _%eid216279%_ __tmp218162))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self216273%_ _%stx216274%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self216120%_ _%stx216121%_)
        (letrec ((_%simplify216123%_
                  (lambda (_%body216171%_)
                    (let _%lp216173%_ ((_%rest216175%_ _%body216171%_)
                                       (_%r216176%_ '()))
                      (let* ((_%$%rest216177216185%_ _%rest216175%_)
                             (_%$%else216179216193%_
                              (lambda () (reverse _%r216176%_)))
                             (_%$%K216181216261%_
                              (lambda (_%rest216196%_ _%hd216197%_)
                                (let* ((_%$%hd216198216214%_ _%hd216197%_)
                                       (_%$%else216202216222%_
                                        (lambda ()
                                          (_%lp216173%_
                                           _%rest216196%_
                                           (cons _%hd216197%_ _%r216176%_)))))
                                  (let ((_%$%K216210216251%_
                                         (lambda (_%exprs216249%_)
                                           (_%lp216173%_
                                            (append _%exprs216249%_
                                                    _%rest216196%_)
                                            _%r216176%_)))
                                        (_%$%K216205216235%_
                                         (lambda ()
                                           (if (null? _%rest216196%_)
                                               (_%lp216173%_
                                                _%rest216196%_
                                                (cons _%hd216197%_
                                                      _%r216176%_))
                                               (_%lp216173%_
                                                _%rest216196%_
                                                _%r216176%_))))
                                        (_%$%K216204216227%_
                                         (lambda ()
                                           (if (null? _%rest216196%_)
                                               (_%lp216173%_
                                                _%rest216196%_
                                                (cons _%hd216197%_
                                                      _%r216176%_))
                                               (_%lp216173%_
                                                _%rest216196%_
                                                _%r216176%_)))))
                                    (let ((_%$%try-match216201216230%_
                                           (lambda ()
                                             (if (symbol? _%$%hd216198216214%_)
                                                 (_%$%K216204216227%_)
                                                 (_%$%else216202216222%_)))))
                                      (if (pair? _%$%hd216198216214%_)
                                          (let ((_%$%tl216212216256%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%hd216198216214%_)))
                                                (_%$%hd216211216254%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%hd216198216214%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%$%hd216211216254%_
                                                         'begin))
                                                (let ((_%exprs216259%_
                                                       _%$%tl216212216256%_))
                                                  (_%$%K216210216251%_
                                                   _%exprs216259%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%$%hd216211216254%_
                                                             'quote))
                                                    (if (pair? _%$%tl216212216256%_)
                                                        (let ((_%$%tl216209216243%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%tl216212216256%_))))
                  (if (null? _%$%tl216209216243%_)
                      (_%$%K216205216235%_)
                      (_%$%try-match216201216230%_)))
                (_%$%try-match216201216230%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%try-match216201216230%_))))
                                          (_%$%try-match216201216230%_))))))))
                        (if (pair? _%$%rest216177216185%_)
                            (let ((_%$%hd216182216264%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest216177216185%_)))
                                  (_%$%tl216183216266%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest216177216185%_))))
                              (let* ((_%hd216269%_ _%$%hd216182216264%_)
                                     (_%rest216271%_ _%$%tl216183216266%_))
                                (_%$%K216181216261%_
                                 _%rest216271%_
                                 _%hd216269%_)))
                            (_%$%else216179216193%_)))))))
          (let* ((_%$%g216125216135%_
                  (lambda (_%$%g216126216132%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g216126216132%_))))
                 (_%$%g216124216168%_
                  (lambda (_%$%g216126216138%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g216126216138%_))
                        (let ((_%$%e216128216140%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g216126216138%_))))
                          (let ((_%$%hd216129216143%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e216128216140%_)))
                                (_%$%tl216130216145%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e216128216140%_))))
                            (let* ((_%body216163%_
                                    (map (lambda (_%$%g216158216160%_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self216120%_
                                              _%$%g216158216160%_)))
                                         _%$%tl216130216145%_))
                                   (_%body216165%_
                                    (_%simplify216123%_ _%body216163%_)))
                              (if (let ((__tmp218164 (length _%body216165%_)))
                                    (declare (not safe))
                                    (##fx= __tmp218164 '1))
                                  (car _%body216165%_)
                                  (cons 'begin _%body216165%_)))))
                        (_%$%g216125216135%_ _%$%g216126216138%_)))))
            (_%$%g216124216168%_ _%stx216121%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self216081%_ _%stx216082%_)
        (let* ((_%$%g216084216094%_
                (lambda (_%$%g216085216091%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g216085216091%_))))
               (_%$%g216083216117%_
                (lambda (_%$%g216085216097%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g216085216097%_))
                      (let ((_%$%e216087216099%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g216085216097%_))))
                        (let ((_%$%hd216088216102%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e216087216099%_)))
                              (_%$%tl216089216104%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e216087216099%_))))
                          (cons 'begin
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax->datum _%$%tl216089216104%_)))))
                      (_%$%g216084216094%_ _%$%g216085216097%_)))))
          (_%$%g216083216117%_ _%stx216082%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self215847%_ _%stx215848%_)
        (let* ((_%__stx216754216755%_ _%stx215848%_)
               (_%$%g215852215904%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx216754216755%_)))))
          (let ((_%__kont216756216757%_
                 (lambda (_%$%g215854216063%_ _%$%g215855216064%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self215847%_ _%$%g215854216063%_))))
                (_%__kont216758216759%_
                 (lambda (_%$%g215865216011%_
                          _%$%g215866216012%_
                          _%$%g215867216013%_)
                   (if (let ((__tmp218165
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%g215867216013%_))))
                         (declare (not safe))
                         (##memq __tmp218165 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self215847%_
                          _%$%g215865216011%_)))))
                (_%__kont216762216763%_
                 (lambda (_%$%g215889215933%_ _%$%g215890215934%_)
                   (let ((_%decls215949%_
                          (map gx#syntax->datum _%$%g215890215934%_)))
                     (let ((__tmp218167
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls215949%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self215847%_
                                                   _%$%g215889215933%_))
                                                '())))))
                           (__tmp218166
                            (append _%decls215949%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-decls)))))
                       (declare (not safe))
                       (call-with-parameters__1
                        __tmp218167
                        gxc#current-compile-decls
                        __tmp218166))))))
            (let* ((_%__match216809216810%_
                    (lambda (_%$%e215868215957%_
                             _%$%hd215869215960%_
                             _%$%tl215870215962%_
                             _%$%e215871215965%_
                             _%$%hd215872215968%_
                             _%$%tl215873215970%_
                             _%$%e215874215973%_
                             _%$%hd215875215976%_
                             _%$%tl215876215978%_
                             _%__splice216760216761%_
                             _%$%target215877215981%_
                             _%$%tl215879215983%_)
                      (letrec ((_%$%loop215880215986%_
                                (lambda (_%$%hd215878215989%_
                                         _%$%param215884215991%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd215878215989%_))
                                      (let ((_%$%e215881215993%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd215878215989%_))))
                                        (let ((_%$%lp-tl215883215998%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e215881215993%_)))
                                              (_%$%lp-hd215882215996%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e215881215993%_))))
                                          (_%$%loop215880215986%_
                                           _%$%lp-tl215883215998%_
                                           (cons _%$%lp-hd215882215996%_
                                                 _%$%param215884215991%_))))
                                      (let ((_%$%param215885216001%_
                                             (reverse _%$%param215884215991%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl215873215970%_))
                                            (let ((_%$%e215886216003%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl215873215970%_))))
                                              (let ((_%$%tl215888216008%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e215886216003%_)))
                                                    (_%$%hd215887216006%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e215886216003%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl215888216008%_))
                                                    (let ((_%$%g215865216011%_
                                                           _%$%hd215887216006%_)
                                                          (_%$%g215866216012%_
                                                           _%$%param215885216001%_)
                                                          (_%$%g215867216013%_
                                                           _%$%hd215875215976%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%$%g215867216013%_))
                       (not (let ((__tmp218168
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g215867216013%_))))
                              (declare (not safe))
                              (##memq __tmp218168 gxc#gambit-annotations))))
                  (_%__kont216758216759%_
                   _%$%g215865216011%_
                   _%$%g215866216012%_
                   _%$%g215867216013%_)
                  (_%__kont216762216763%_
                   _%$%hd215887216006%_
                   _%$%hd215872215968%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g215852215904%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g215852215904%_))))))))
                        (_%$%loop215880215986%_
                         _%$%target215877215981%_
                         '()))))
                   (_%__match216783216784%_
                    (lambda (_%$%e215856216039%_
                             _%$%hd215857216042%_
                             _%$%tl215858216044%_
                             _%$%e215859216047%_
                             _%$%hd215860216050%_
                             _%$%tl215861216052%_
                             _%$%e215862216055%_
                             _%$%hd215863216058%_
                             _%$%tl215864216060%_)
                      (let ((_%$%g215854216063%_ _%$%hd215863216058%_)
                            (_%$%g215855216064%_ _%$%hd215860216050%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%$%g215855216064%_))
                            (_%__kont216756216757%_
                             _%$%g215854216063%_
                             _%$%g215855216064%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd215860216050%_))
                                (let ((_%$%e215874215973%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd215860216050%_))))
                                  (let ((_%$%tl215876215978%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e215874215973%_)))
                                        (_%$%hd215875215976%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e215874215973%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%tl215876215978%_))
                                        (let ((_%__splice216760216761%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl215876215978%_
                                                  '0))))
                                          (let ((_%$%tl215879215983%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice216760216761%_
                                                    '1)))
                                                (_%$%target215877215981%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice216760216761%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl215879215983%_))
                                                (_%__match216809216810%_
                                                 _%$%e215856216039%_
                                                 _%$%hd215857216042%_
                                                 _%$%tl215858216044%_
                                                 _%$%e215859216047%_
                                                 _%$%hd215860216050%_
                                                 _%$%tl215861216052%_
                                                 _%$%e215874215973%_
                                                 _%$%hd215875215976%_
                                                 _%$%tl215876215978%_
                                                 _%__splice216760216761%_
                                                 _%$%target215877215981%_
                                                 _%$%tl215879215983%_)
                                                (_%__kont216762216763%_
                                                 _%$%hd215863216058%_
                                                 _%$%hd215860216050%_))))
                                        (_%__kont216762216763%_
                                         _%$%hd215863216058%_
                                         _%$%hd215860216050%_))))
                                (_%__kont216762216763%_
                                 _%$%hd215863216058%_
                                 _%$%hd215860216050%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx216754216755%_))
                  (let ((_%$%e215856216039%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx216754216755%_))))
                    (let ((_%$%tl215858216044%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e215856216039%_)))
                          (_%$%hd215857216042%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e215856216039%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl215858216044%_))
                          (let ((_%$%e215859216047%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl215858216044%_))))
                            (let ((_%$%tl215861216052%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e215859216047%_)))
                                  (_%$%hd215860216050%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e215859216047%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl215861216052%_))
                                  (let ((_%$%e215862216055%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl215861216052%_))))
                                    (let ((_%$%tl215864216060%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e215862216055%_)))
                                          (_%$%hd215863216058%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e215862216055%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl215864216060%_))
                                          (_%__match216783216784%_
                                           _%$%e215856216039%_
                                           _%$%hd215857216042%_
                                           _%$%tl215858216044%_
                                           _%$%e215859216047%_
                                           _%$%hd215860216050%_
                                           _%$%tl215861216052%_
                                           _%$%e215862216055%_
                                           _%$%hd215863216058%_
                                           _%$%tl215864216060%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%hd215860216050%_))
                                              (let ((_%$%e215874215973%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd215860216050%_))))
                                                (let ((_%$%tl215876215978%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e215874215973%_)))
                                                      (_%$%hd215875215976%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e215874215973%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl215876215978%_))
                                                      (let ((_%__splice216760216761%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl215876215978%_
                        '0))))
                (let ((_%$%tl215879215983%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice216760216761%_ '1)))
                      (_%$%target215877215981%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice216760216761%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl215879215983%_))
                      (_%__match216809216810%_
                       _%$%e215856216039%_
                       _%$%hd215857216042%_
                       _%$%tl215858216044%_
                       _%$%e215859216047%_
                       _%$%hd215860216050%_
                       _%$%tl215861216052%_
                       _%$%e215874215973%_
                       _%$%hd215875215976%_
                       _%$%tl215876215978%_
                       _%__splice216760216761%_
                       _%$%target215877215981%_
                       _%$%tl215879215983%_)
                      (let () (declare (not safe)) (_%$%g215852215904%_)))))
              (let () (declare (not safe)) (_%$%g215852215904%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g215852215904%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd215860216050%_))
                                      (let ((_%$%e215874215973%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd215860216050%_))))
                                        (let ((_%$%tl215876215978%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e215874215973%_)))
                                              (_%$%hd215875215976%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e215874215973%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%$%tl215876215978%_))
                                              (let ((_%__splice216760216761%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl215876215978%_
                                                        '0))))
                                                (let ((_%$%tl215879215983%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice216760216761%_
                                                          '1)))
                                                      (_%$%target215877215981%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice216760216761%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl215879215983%_))
                                                      (_%__match216809216810%_
                                                       _%$%e215856216039%_
                                                       _%$%hd215857216042%_
                                                       _%$%tl215858216044%_
                                                       _%$%e215859216047%_
                                                       _%$%hd215860216050%_
                                                       _%$%tl215861216052%_
                                                       _%$%e215874215973%_
                                                       _%$%hd215875215976%_
                                                       _%$%tl215876215978%_
                                                       _%__splice216760216761%_
                                                       _%$%target215877215981%_
                                                       _%$%tl215879215983%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g215852215904%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g215852215904%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g215852215904%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g215852215904%_)))))
                  (let () (declare (not safe)) (_%$%g215852215904%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self215806%_ _%stx215807%_)
        (let* ((_%$%g215809215819%_
                (lambda (_%$%g215810215816%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g215810215816%_))))
               (_%$%g215808215844%_
                (lambda (_%$%g215810215822%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g215810215822%_))
                      (let ((_%$%e215812215824%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g215810215822%_))))
                        (let ((_%$%hd215813215827%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e215812215824%_)))
                              (_%$%tl215814215829%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e215812215824%_))))
                          (let ((_%decls215842%_
                                 (map gx#syntax->datum _%$%tl215814215829%_)))
                            (let ((__tmp218169
                                   (append _%decls215842%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#current-compile-decls)))))
                              (declare (not safe))
                              (gxc#current-compile-decls __tmp218169))
                            (cons 'declare _%decls215842%_))))
                      (_%$%g215809215819%_ _%$%g215810215822%_)))))
          (_%$%g215808215844%_ _%stx215807%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self215553%_ _%stx215554%_)
        (let* ((_%$%g215556215573%_
                (lambda (_%$%g215557215570%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g215557215570%_))))
               (_%$%g215555215803%_
                (lambda (_%$%g215557215576%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g215557215576%_))
                      (let ((_%$%e215560215578%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g215557215576%_))))
                        (let ((_%$%hd215561215581%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e215560215578%_)))
                              (_%$%tl215562215583%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e215560215578%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl215562215583%_))
                              (let ((_%$%e215563215586%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl215562215583%_))))
                                (let ((_%$%hd215564215589%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e215563215586%_)))
                                      (_%$%tl215565215591%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e215563215586%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl215565215591%_))
                                      (let ((_%$%e215566215594%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl215565215591%_))))
                                        (let ((_%$%hd215567215597%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e215566215594%_)))
                                              (_%$%tl215568215599%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e215566215594%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl215568215599%_))
                                              (let* ((_%__stx216862216863%_
                                                      _%$%hd215564215589%_)
                                                     (_%$%g215620215634%_
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%__stx216862216863%_)))))
                                                (let ((_%__kont216864216865%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self215553%_
                                                            _%$%hd215567215597%_))))
                                                      (_%__kont216866216867%_
                                                       (lambda (_%$%g215626215766%_)
                                                         (let ((_%eid215775%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#generate-runtime-binding-id
                           _%$%g215626215766%_))))
                   (let ((_%$%lambda-expr215776215778%_
                          (gxc#apply-find-lambda-expression
                           _%$%hd215567215597%_)))
                     (if _%$%lambda-expr215776215778%_
                         (let* ((_%lambda-expr215780%_
                                 _%$%lambda-expr215776215778%_)
                                (__tmp218170
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-names))))
                           (declare (not safe))
                           (hash-put!
                            __tmp218170
                            _%lambda-expr215780%_
                            _%eid215775%_))
                         '#f))
                   (cons 'define
                         (cons _%eid215775%_
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self215553%_
                                        _%$%hd215567215597%_))
                                     '()))))))
              (_%__kont216868216869%_
               (lambda ()
                 (let* ((_%tmp215641%_
                         (let ()
                           (declare (not safe))
                           (gxc#generate-runtime-temporary__% '#t)))
                        (_%body215750%_
                         (let _%lp215643%_ ((_%rest215645%_
                                             _%$%hd215564215589%_)
                                            (_%k215646%_ '0)
                                            (_%r215647%_ '()))
                           (let* ((_%__stx216832216833%_ _%rest215645%_)
                                  (_%$%g215652215669%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%__stx216832216833%_)))))
                             (let ((_%__kont216834216835%_
                                    (lambda (_%$%g215654215737%_)
                                      (_%lp215643%_
                                       _%$%g215654215737%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k215646%_ '1))
                                       _%r215647%_)))
                                   (_%__kont216836216837%_
                                    (lambda (_%$%g215659215710%_
                                             _%$%g215660215711%_)
                                      (_%lp215643%_
                                       _%$%g215659215710%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k215646%_ '1))
                                       (cons (cons 'define
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%$%g215660215711%_))
                                                         (cons (gxc#generate-runtime-values-ref
                                                                _%tmp215641%_
                                                                _%k215646%_
                                                                _%$%g215659215710%_)
                                                               '())))
                                             _%r215647%_))))
                                   (_%__kont216838216839%_
                                    (lambda (_%$%g215664215681%_)
                                      (let ((__tmp218171
                                             (cons (cons 'define
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#generate-runtime-binding-id _%$%g215664215681%_))
                       (cons (gxc#generate-runtime-values->list
                              _%tmp215641%_
                              _%k215646%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                        (declare (not safe))
                                        (foldl__0
                                         cons
                                         __tmp218171
                                         _%r215647%_))))
                                   (_%__kont216840216841%_
                                    (lambda () (reverse _%r215647%_))))
                               (let ((_%$%g215650215697%_
                                      (lambda ()
                                        (let ((_%$%g215664215681%_
                                               _%__stx216832216833%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%$%g215664215681%_))
                                              (_%__kont216838216839%_
                                               _%$%g215664215681%_)
                                              (_%__kont216840216841%_))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx216832216833%_))
                                     (let ((_%$%e215655215726%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx216832216833%_))))
                                       (let ((_%$%tl215657215731%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e215655215726%_)))
                                             (_%$%hd215656215729%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e215655215726%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-datum?
                                                _%$%hd215656215729%_))
                                             (let ((_%$%e215658215734%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%hd215656215729%_))))
                                               (if (equal? _%$%e215658215734%_
                                                           '#f)
                                                   (_%__kont216834216835%_
                                                    _%$%tl215657215731%_)
                                                   (_%__kont216836216837%_
                                                    _%$%tl215657215731%_
                                                    _%$%hd215656215729%_)))
                                             (_%__kont216836216837%_
                                              _%$%tl215657215731%_
                                              _%$%hd215656215729%_))))
                                     (_%$%g215650215697%_))))))))
                   (cons 'begin
                         (cons (cons 'define
                                     (cons _%tmp215641%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self215553%_
                                                    _%$%hd215567215597%_))
                                                 '())))
                               (cons (gxc#generate-runtime-check-values
                                      _%tmp215641%_
                                      _%$%hd215564215589%_
                                      _%$%hd215567215597%_)
                                     _%body215750%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%__stx216862216863%_))
                                                      (let ((_%$%e215622215787%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%__stx216862216863%_))))
                (let ((_%$%tl215624215792%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e215622215787%_)))
                      (_%$%hd215623215790%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e215622215787%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%$%hd215623215790%_))
                      (let ((_%$%e215625215795%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%hd215623215790%_))))
                        (if (equal? _%$%e215625215795%_ '#f)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl215624215792%_))
                                (_%__kont216864216865%_)
                                (_%__kont216868216869%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl215624215792%_))
                                (_%__kont216866216867%_ _%$%hd215623215790%_)
                                (_%__kont216868216869%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl215624215792%_))
                          (_%__kont216866216867%_ _%$%hd215623215790%_)
                          (_%__kont216868216869%_)))))
              (_%__kont216868216869%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g215556215573%_
                                               _%$%g215557215576%_))))
                                      (_%$%g215556215573%_
                                       _%$%g215557215576%_))))
                              (_%$%g215556215573%_ _%$%g215557215576%_))))
                      (_%$%g215556215573%_ _%$%g215557215576%_)))))
          (_%$%g215555215803%_ _%stx215554%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals215528%_ _%hd215529%_ _%expr215530%_)
        (let ((_%$e215532%_ (gxc#apply-count-values _%expr215530%_)))
          (if _%$e215532%_
              (let ((_%len215537%_
                     (let ()
                       (declare (not safe))
                       (gx#stx-length _%hd215529%_)))
                    (_%cmp215538%_
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-list? _%hd215529%_))
                         fx=
                         fx>=)))
                (if (or (let () (declare (not safe)) (##fx= _%len215537%_ '0))
                        (_%cmp215538%_ _%$e215532%_ _%len215537%_))
                    '#!void
                    (let ()
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Value count mismatch"
                       _%expr215530%_
                       _%hd215529%_))))
              (let* ((_%len215544%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd215529%_)))
                     (_%cmp215546%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd215529%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg215548%_
                      (let ((__tmp218173
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd215529%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp218172 (number->string _%len215544%_)))
                        (declare (not safe))
                        (##string-append __tmp218173 __tmp218172 '" values")))
                     (_%count215550%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd215529%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len215544%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count215550%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals215528%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp215546%_
                                (cons _%count215550%_
                                      (cons _%len215544%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp215546%_
                                                        (cons _%count215550%_
                                                              (cons _%len215544%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg215548%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count215550%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var215523%_)
        (letrec ((_%generate-inline215525%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var215523%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var215523%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline215525%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline215525%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var215516%_ _%i215517%_ _%rest215518%_)
        (letrec ((_%generate-inline215520%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i215517%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest215518%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var215516%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var215516%_
                                                      (cons '0 '())))
                                          (cons _%var215516%_ '()))))
                        (cons '##values-ref
                              (cons _%var215516%_ (cons _%i215517%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline215520%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline215520%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var215510%_ _%i215511%_)
        (if (let () (declare (not safe)) (##fx= _%i215511%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var215510%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var215510%_ '()))
                                  (cons (cons 'list (cons _%var215510%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var215510%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var215510%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var215510%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i215511%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var215510%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var215510%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var215510%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var215510%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var215510%_ '()))
                                (cons _%i215511%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var215510%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i215511%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self215442%_ _%stx215443%_)
        (let* ((_%$%g215445215462%_
                (lambda (_%$%g215446215459%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g215446215459%_))))
               (_%$%g215444215507%_
                (lambda (_%$%g215446215465%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g215446215465%_))
                      (let ((_%$%e215449215467%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g215446215465%_))))
                        (let ((_%$%hd215450215470%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e215449215467%_)))
                              (_%$%tl215451215472%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e215449215467%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl215451215472%_))
                              (let ((_%$%e215452215475%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl215451215472%_))))
                                (let ((_%$%hd215453215478%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e215452215475%_)))
                                      (_%$%tl215454215480%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e215452215475%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl215454215480%_))
                                      (let ((_%$%e215455215483%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl215454215480%_))))
                                        (let ((_%$%hd215456215486%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e215455215483%_)))
                                              (_%$%tl215457215488%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e215455215483%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl215457215488%_))
                                              (gxc#generate-runtime-lambda-form
                                               _%self215442%_
                                               _%$%hd215453215478%_
                                               _%$%hd215456215486%_)
                                              (_%$%g215445215462%_
                                               _%$%g215446215465%_))))
                                      (_%$%g215445215462%_
                                       _%$%g215446215465%_))))
                              (_%$%g215445215462%_ _%$%g215446215465%_))))
                      (_%$%g215445215462%_ _%$%g215446215465%_)))))
          (_%$%g215444215507%_ _%stx215443%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self215401%_ _%hd215402%_ _%body215403%_)
        (let* ((_%hd215405%_ (gxc#generate-runtime-lambda-head _%hd215402%_))
               (_%body215407%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self215401%_ _%body215403%_)))
               (_%body215439%_
                (let* ((_%$%body215408215416%_ _%body215407%_)
                       (_%$%else215410215424%_
                        (lambda () (cons _%body215407%_ '())))
                       (_%$%K215412215429%_
                        (lambda (_%exprs215427%_) _%exprs215427%_)))
                  (if (pair? _%$%body215408215416%_)
                      (let ((_%$%hd215413215432%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%body215408215416%_)))
                            (_%$%tl215414215434%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%body215408215416%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%$%hd215413215432%_ 'begin))
                            (let ((_%exprs215437%_ _%$%tl215414215434%_))
                              (_%$%K215412215429%_ _%exprs215437%_))
                            (_%$%else215410215424%_)))
                      (_%$%else215410215424%_)))))
          (cons 'lambda (cons _%hd215405%_ _%body215439%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd215399%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd215399%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self213956%_ _%stx213957%_)
        (letrec ((_%dispatch-case?213959%_
                  (lambda (_%hd214637%_ _%body214638%_)
                    (let* ((_%form214640%_
                            (cons _%hd214637%_ (cons _%body214638%_ '())))
                           (_%__stx216894216895%_ _%form214640%_)
                           (_%$%g214645214802%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx216894216895%_)))))
                      (let ((_%__kont216896216897%_
                             (lambda (_%$%g214647215319%_
                                      _%$%g214648215320%_
                                      _%$%g214649215321%_)
                               '#t))
                            (_%__kont216902216903%_
                             (lambda (_%$%g214692215111%_
                                      _%$%g214693215112%_
                                      _%$%g214694215113%_
                                      _%$%g214695215114%_
                                      _%$%g214696215115%_
                                      _%$%g214697215116%_)
                               '#t))
                            (_%__kont216908216909%_
                             (lambda (_%$%g214758214910%_
                                      _%$%g214759214911%_
                                      _%$%g214760214912%_
                                      _%$%g214761214913%_)
                               '#t))
                            (_%__kont216910216911%_ (lambda () '#f)))
                        (let* ((_%__match217035217036%_
                                (lambda (_%$%e214762214814%_
                                         _%$%hd214763214817%_
                                         _%$%tl214764214819%_
                                         _%$%e214765214822%_
                                         _%$%hd214766214825%_
                                         _%$%tl214767214827%_
                                         _%$%e214768214830%_
                                         _%$%hd214769214833%_
                                         _%$%tl214770214835%_
                                         _%$%e214771214838%_
                                         _%$%hd214772214841%_
                                         _%$%tl214773214843%_
                                         _%$%e214774214846%_
                                         _%$%hd214775214849%_
                                         _%$%tl214776214851%_
                                         _%$%e214777214854%_
                                         _%$%hd214778214857%_
                                         _%$%tl214779214859%_
                                         _%$%e214780214862%_
                                         _%$%hd214781214865%_
                                         _%$%tl214782214867%_
                                         _%$%e214783214870%_
                                         _%$%hd214784214873%_
                                         _%$%tl214785214875%_
                                         _%$%e214786214878%_
                                         _%$%hd214787214881%_
                                         _%$%tl214788214883%_
                                         _%$%e214789214886%_
                                         _%$%hd214790214889%_
                                         _%$%tl214791214891%_
                                         _%$%e214792214894%_
                                         _%$%hd214793214897%_
                                         _%$%tl214794214899%_
                                         _%$%e214795214902%_
                                         _%$%hd214796214905%_
                                         _%$%tl214797214907%_)
                                  (let ((_%$%g214758214910%_
                                         _%$%hd214796214905%_)
                                        (_%$%g214759214911%_
                                         _%$%hd214787214881%_)
                                        (_%$%g214760214912%_
                                         _%$%hd214778214857%_)
                                        (_%$%g214761214913%_
                                         _%$%hd214763214817%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%$%g214761214913%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%$%g214760214912%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%$%g214761214913%_
                                                _%$%g214758214910%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%$%g214759214911%_
                                                     _%$%g214761214913%_))))
                                        (_%__kont216908216909%_
                                         _%$%g214758214910%_
                                         _%$%g214759214911%_
                                         _%$%g214760214912%_
                                         _%$%g214761214913%_)
                                        (_%__kont216910216911%_)))))
                               (_%__match217007217008%_
                                (lambda (_%$%e214762214814%_
                                         _%$%hd214763214817%_
                                         _%$%tl214764214819%_
                                         _%$%e214765214822%_
                                         _%$%hd214766214825%_
                                         _%$%tl214767214827%_
                                         _%$%e214768214830%_
                                         _%$%hd214769214833%_
                                         _%$%tl214770214835%_
                                         _%$%e214771214838%_
                                         _%$%hd214772214841%_
                                         _%$%tl214773214843%_
                                         _%$%e214774214846%_
                                         _%$%hd214775214849%_
                                         _%$%tl214776214851%_
                                         _%$%e214777214854%_
                                         _%$%hd214778214857%_
                                         _%$%tl214779214859%_
                                         _%$%e214780214862%_
                                         _%$%hd214781214865%_
                                         _%$%tl214782214867%_
                                         _%$%e214783214870%_
                                         _%$%hd214784214873%_
                                         _%$%tl214785214875%_
                                         _%$%e214786214878%_
                                         _%$%hd214787214881%_
                                         _%$%tl214788214883%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl214782214867%_))
                                      (let ((_%$%e214789214886%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl214782214867%_))))
                                        (let ((_%$%tl214791214891%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e214789214886%_)))
                                              (_%$%hd214790214889%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e214789214886%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%hd214790214889%_))
                                              (let ((_%$%e214792214894%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd214790214889%_))))
                                                (let ((_%$%tl214794214899%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e214792214894%_)))
                                                      (_%$%hd214793214897%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e214792214894%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%$%hd214793214897%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%$%hd214793214897%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl214794214899%_))
                      (let ((_%$%e214795214902%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl214794214899%_))))
                        (let ((_%$%tl214797214907%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e214795214902%_)))
                              (_%$%hd214796214905%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e214795214902%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl214797214907%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl214791214891%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl214767214827%_))
                                      (_%__match217035217036%_
                                       _%$%e214762214814%_
                                       _%$%hd214763214817%_
                                       _%$%tl214764214819%_
                                       _%$%e214765214822%_
                                       _%$%hd214766214825%_
                                       _%$%tl214767214827%_
                                       _%$%e214768214830%_
                                       _%$%hd214769214833%_
                                       _%$%tl214770214835%_
                                       _%$%e214771214838%_
                                       _%$%hd214772214841%_
                                       _%$%tl214773214843%_
                                       _%$%e214774214846%_
                                       _%$%hd214775214849%_
                                       _%$%tl214776214851%_
                                       _%$%e214777214854%_
                                       _%$%hd214778214857%_
                                       _%$%tl214779214859%_
                                       _%$%e214780214862%_
                                       _%$%hd214781214865%_
                                       _%$%tl214782214867%_
                                       _%$%e214783214870%_
                                       _%$%hd214784214873%_
                                       _%$%tl214785214875%_
                                       _%$%e214786214878%_
                                       _%$%hd214787214881%_
                                       _%$%tl214788214883%_
                                       _%$%e214789214886%_
                                       _%$%hd214790214889%_
                                       _%$%tl214791214891%_
                                       _%$%e214792214894%_
                                       _%$%hd214793214897%_
                                       _%$%tl214794214899%_
                                       _%$%e214795214902%_
                                       _%$%hd214796214905%_
                                       _%$%tl214797214907%_)
                                      (_%__kont216910216911%_))
                                  (_%__kont216910216911%_))
                              (_%__kont216910216911%_))))
                      (_%__kont216910216911%_))
                  (_%__kont216910216911%_))
              (_%__kont216910216911%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont216910216911%_))))
                                      (_%__kont216910216911%_))))
                               (_%__match216937216938%_
                                (lambda (_%$%e214698214955%_
                                         _%$%hd214699214958%_
                                         _%$%tl214700214960%_
                                         _%__splice216904216905%_
                                         _%$%target214701214963%_
                                         _%$%tl214703214965%_)
                                  (letrec ((_%$%loop214704214968%_
                                            (lambda (_%$%hd214702214971%_
                                                     _%$%arg214708214973%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd214702214971%_))
                                                  (let ((_%$%e214705214975%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd214702214971%_))))
                                                    (let ((_%$%lp-tl214707214980%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e214705214975%_)))
                                                          (_%$%lp-hd214706214978%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e214705214975%_))))
                                                      (_%$%loop214704214968%_
                                                       _%$%lp-tl214707214980%_
                                                       (cons _%$%lp-hd214706214978%_
                                                             _%$%arg214708214973%_))))
                                                  (let ((_%$%arg214709214983%_
                                                         (reverse _%$%arg214708214973%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl214700214960%_))
                                                        (let ((_%$%e214710214985%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl214700214960%_))))
                  (let ((_%$%tl214712214990%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e214710214985%_)))
                        (_%$%hd214711214988%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e214710214985%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd214711214988%_))
                        (let ((_%$%e214713214993%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd214711214988%_))))
                          (let ((_%$%tl214715214998%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e214713214993%_)))
                                (_%$%hd214714214996%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e214713214993%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd214714214996%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq?
                                       '%#call
                                       _%$%hd214714214996%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl214715214998%_))
                                        (let ((_%$%e214716215001%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl214715214998%_))))
                                          (let ((_%$%tl214718215006%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e214716215001%_)))
                                                (_%$%hd214717215004%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e214716215001%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd214717215004%_))
                                                (let ((_%$%e214719215009%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd214717215004%_))))
                                                  (let ((_%$%tl214721215014%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e214719215009%_)))
                                                        (_%$%hd214720215012%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e214719215009%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd214720215012%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%$%hd214720215012%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl214721215014%_))
                        (let ((_%$%e214722215017%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl214721215014%_))))
                          (let ((_%$%tl214724215022%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e214722215017%_)))
                                (_%$%hd214723215020%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e214722215017%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl214724215022%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl214718215006%_))
                                    (let ((_%$%e214725215025%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%tl214718215006%_))))
                                      (let ((_%$%tl214727215030%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e214725215025%_)))
                                            (_%$%hd214726215028%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e214725215025%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%hd214726215028%_))
                                            (let ((_%$%e214728215033%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%hd214726215028%_))))
                                              (let ((_%$%tl214730215038%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e214728215033%_)))
                                                    (_%$%hd214729215036%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e214728215033%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%$%hd214729215036%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%$%hd214729215036%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl214730215038%_))
                                                            (let ((_%$%e214731215041%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl214730215038%_))))
                      (let ((_%$%tl214733215046%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e214731215041%_)))
                            (_%$%hd214732215044%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e214731215041%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl214733215046%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%$%tl214727215030%_))
                                (if (let ((__tmp218174
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%$%tl214727215030%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp218174 '1))
                                    (let ((_%__splice216906216907%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%$%tl214727215030%_
                                              '1))))
                                      (let ((_%$%tl214736215051%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice216906216907%_
                                                '1)))
                                            (_%$%target214734215049%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice216906216907%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl214736215051%_))
                                            (let ((_%$%e214743215054%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl214736215051%_))))
                                              (let ((_%$%tl214745215059%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e214743215054%_)))
                                                    (_%$%hd214744215057%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e214743215054%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%hd214744215057%_))
                                                    (let ((_%$%e214746215062%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd214744215057%_))))
                                                      (let ((_%$%tl214748215067%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e214746215062%_)))
                    (_%$%hd214747215065%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e214746215062%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%$%hd214747215065%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%$%hd214747215065%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl214748215067%_))
                            (let ((_%$%e214749215070%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl214748215067%_))))
                              (let ((_%$%tl214751215075%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e214749215070%_)))
                                    (_%$%hd214750215073%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e214749215070%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl214751215075%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl214745215059%_))
                                        (letrec ((_%$%loop214737215078%_
                                                  (lambda (_%$%hd214735215081%_
                                                           _%$%xarg214741215083%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd214735215081%_))
                                                        (let ((_%$%e214738215085%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd214735215081%_))))
                  (let ((_%$%lp-tl214740215090%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e214738215085%_)))
                        (_%$%lp-hd214739215088%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e214738215085%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd214739215088%_))
                        (let ((_%$%e214752215093%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%lp-hd214739215088%_))))
                          (let ((_%$%tl214754215098%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e214752215093%_)))
                                (_%$%hd214753215096%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e214752215093%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd214753215096%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%$%hd214753215096%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl214754215098%_))
                                        (let ((_%$%e214755215101%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl214754215098%_))))
                                          (let ((_%$%tl214757215106%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e214755215101%_)))
                                                (_%$%hd214756215104%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e214755215101%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl214757215106%_))
                                                (_%$%loop214737215078%_
                                                 _%$%lp-tl214740215090%_
                                                 (cons _%$%hd214756215104%_
                                                       _%$%xarg214741215083%_))
                                                (_%__match217007217008%_
                                                 _%$%e214698214955%_
                                                 _%$%hd214699214958%_
                                                 _%$%tl214700214960%_
                                                 _%$%e214710214985%_
                                                 _%$%hd214711214988%_
                                                 _%$%tl214712214990%_
                                                 _%$%e214713214993%_
                                                 _%$%hd214714214996%_
                                                 _%$%tl214715214998%_
                                                 _%$%e214716215001%_
                                                 _%$%hd214717215004%_
                                                 _%$%tl214718215006%_
                                                 _%$%e214719215009%_
                                                 _%$%hd214720215012%_
                                                 _%$%tl214721215014%_
                                                 _%$%e214722215017%_
                                                 _%$%hd214723215020%_
                                                 _%$%tl214724215022%_
                                                 _%$%e214725215025%_
                                                 _%$%hd214726215028%_
                                                 _%$%tl214727215030%_
                                                 _%$%e214728215033%_
                                                 _%$%hd214729215036%_
                                                 _%$%tl214730215038%_
                                                 _%$%e214731215041%_
                                                 _%$%hd214732215044%_
                                                 _%$%tl214733215046%_))))
                                        (_%__match217007217008%_
                                         _%$%e214698214955%_
                                         _%$%hd214699214958%_
                                         _%$%tl214700214960%_
                                         _%$%e214710214985%_
                                         _%$%hd214711214988%_
                                         _%$%tl214712214990%_
                                         _%$%e214713214993%_
                                         _%$%hd214714214996%_
                                         _%$%tl214715214998%_
                                         _%$%e214716215001%_
                                         _%$%hd214717215004%_
                                         _%$%tl214718215006%_
                                         _%$%e214719215009%_
                                         _%$%hd214720215012%_
                                         _%$%tl214721215014%_
                                         _%$%e214722215017%_
                                         _%$%hd214723215020%_
                                         _%$%tl214724215022%_
                                         _%$%e214725215025%_
                                         _%$%hd214726215028%_
                                         _%$%tl214727215030%_
                                         _%$%e214728215033%_
                                         _%$%hd214729215036%_
                                         _%$%tl214730215038%_
                                         _%$%e214731215041%_
                                         _%$%hd214732215044%_
                                         _%$%tl214733215046%_))
                                    (_%__match217007217008%_
                                     _%$%e214698214955%_
                                     _%$%hd214699214958%_
                                     _%$%tl214700214960%_
                                     _%$%e214710214985%_
                                     _%$%hd214711214988%_
                                     _%$%tl214712214990%_
                                     _%$%e214713214993%_
                                     _%$%hd214714214996%_
                                     _%$%tl214715214998%_
                                     _%$%e214716215001%_
                                     _%$%hd214717215004%_
                                     _%$%tl214718215006%_
                                     _%$%e214719215009%_
                                     _%$%hd214720215012%_
                                     _%$%tl214721215014%_
                                     _%$%e214722215017%_
                                     _%$%hd214723215020%_
                                     _%$%tl214724215022%_
                                     _%$%e214725215025%_
                                     _%$%hd214726215028%_
                                     _%$%tl214727215030%_
                                     _%$%e214728215033%_
                                     _%$%hd214729215036%_
                                     _%$%tl214730215038%_
                                     _%$%e214731215041%_
                                     _%$%hd214732215044%_
                                     _%$%tl214733215046%_))
                                (_%__match217007217008%_
                                 _%$%e214698214955%_
                                 _%$%hd214699214958%_
                                 _%$%tl214700214960%_
                                 _%$%e214710214985%_
                                 _%$%hd214711214988%_
                                 _%$%tl214712214990%_
                                 _%$%e214713214993%_
                                 _%$%hd214714214996%_
                                 _%$%tl214715214998%_
                                 _%$%e214716215001%_
                                 _%$%hd214717215004%_
                                 _%$%tl214718215006%_
                                 _%$%e214719215009%_
                                 _%$%hd214720215012%_
                                 _%$%tl214721215014%_
                                 _%$%e214722215017%_
                                 _%$%hd214723215020%_
                                 _%$%tl214724215022%_
                                 _%$%e214725215025%_
                                 _%$%hd214726215028%_
                                 _%$%tl214727215030%_
                                 _%$%e214728215033%_
                                 _%$%hd214729215036%_
                                 _%$%tl214730215038%_
                                 _%$%e214731215041%_
                                 _%$%hd214732215044%_
                                 _%$%tl214733215046%_))))
                        (_%__match217007217008%_
                         _%$%e214698214955%_
                         _%$%hd214699214958%_
                         _%$%tl214700214960%_
                         _%$%e214710214985%_
                         _%$%hd214711214988%_
                         _%$%tl214712214990%_
                         _%$%e214713214993%_
                         _%$%hd214714214996%_
                         _%$%tl214715214998%_
                         _%$%e214716215001%_
                         _%$%hd214717215004%_
                         _%$%tl214718215006%_
                         _%$%e214719215009%_
                         _%$%hd214720215012%_
                         _%$%tl214721215014%_
                         _%$%e214722215017%_
                         _%$%hd214723215020%_
                         _%$%tl214724215022%_
                         _%$%e214725215025%_
                         _%$%hd214726215028%_
                         _%$%tl214727215030%_
                         _%$%e214728215033%_
                         _%$%hd214729215036%_
                         _%$%tl214730215038%_
                         _%$%e214731215041%_
                         _%$%hd214732215044%_
                         _%$%tl214733215046%_))))
                (let ((_%$%xarg214742215109%_
                       (reverse _%$%xarg214741215083%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl214712214990%_))
                      (let ((_%$%g214692215111%_ _%$%hd214750215073%_)
                            (_%$%g214693215112%_ _%$%xarg214742215109%_)
                            (_%$%g214694215113%_ _%$%hd214732215044%_)
                            (_%$%g214695215114%_ _%$%hd214723215020%_)
                            (_%$%g214696215115%_ _%$%tl214703214965%_)
                            (_%$%g214697215116%_ _%$%arg214709214983%_))
                        (if (and (let ((__tmp218175
                                        (let ((__tmp218176
                                               (lambda (_%$%g215159215162%_
                                                        _%$%g215160215164%_)
                                                 (cons _%$%g215159215162%_
                                                       _%$%g215160215164%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp218176
                                           '()
                                           _%$%g214697215116%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp218175))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%$%g214696215115%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%$%g214695215114%_
                                    'apply))
                                 (let ((__tmp218179
                                        (length (let ((__tmp218180
                                                       (lambda (_%$%g215166215169%_
                                                                _%$%g215167215171%_)
                                                         (cons _%$%g215166215169%_
                                                               _%$%g215167215171%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp218180
                                                   '()
                                                   _%$%g214697215116%_))))
                                       (__tmp218177
                                        (length (let ((__tmp218178
                                                       (lambda (_%$%g215173215176%_
                                                                _%$%g215174215178%_)
                                                         (cons _%$%g215173215176%_
                                                               _%$%g215174215178%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp218178
                                                   '()
                                                   _%$%g214693215112%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp218179 __tmp218177))
                                 (let ((__tmp218183
                                        (let ((__tmp218184
                                               (lambda (_%$%g215180215183%_
                                                        _%$%g215181215185%_)
                                                 (cons _%$%g215180215183%_
                                                       _%$%g215181215185%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp218184
                                           '()
                                           _%$%g214697215116%_)))
                                       (__tmp218181
                                        (let ((__tmp218182
                                               (lambda (_%$%g215187215190%_
                                                        _%$%g215188215192%_)
                                                 (cons _%$%g215187215190%_
                                                       _%$%g215188215192%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp218182
                                           '()
                                           _%$%g214693215112%_))))
                                   (declare (not safe))
                                   (andmap__1
                                    gx#free-identifier=?
                                    __tmp218183
                                    __tmp218181))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g214696215115%_
                                    _%$%g214692215111%_))
                                 (not (let ((__tmp218188
                                             (lambda (_%$%g215194215196%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%$%g215194215196%_
                                                  _%$%g214694215113%_))))
                                            (__tmp218185
                                             (let ((__tmp218187
                                                    (lambda (_%$%g215198215201%_
                                                             _%$%g215199215203%_)
                                                      (cons _%$%g215198215201%_
                                                            _%$%g215199215203%_)))
                                                   (__tmp218186
                                                    (cons _%$%g214696215115%_
                                                          '())))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp218187
                                                __tmp218186
                                                _%$%g214697215116%_))))
                                        (declare (not safe))
                                        (__find __tmp218188 __tmp218185))))
                            (_%__kont216902216903%_
                             _%$%g214692215111%_
                             _%$%g214693215112%_
                             _%$%g214694215113%_
                             _%$%g214695215114%_
                             _%$%g214696215115%_
                             _%$%g214697215116%_)
                            (_%__match217007217008%_
                             _%$%e214698214955%_
                             _%$%hd214699214958%_
                             _%$%tl214700214960%_
                             _%$%e214710214985%_
                             _%$%hd214711214988%_
                             _%$%tl214712214990%_
                             _%$%e214713214993%_
                             _%$%hd214714214996%_
                             _%$%tl214715214998%_
                             _%$%e214716215001%_
                             _%$%hd214717215004%_
                             _%$%tl214718215006%_
                             _%$%e214719215009%_
                             _%$%hd214720215012%_
                             _%$%tl214721215014%_
                             _%$%e214722215017%_
                             _%$%hd214723215020%_
                             _%$%tl214724215022%_
                             _%$%e214725215025%_
                             _%$%hd214726215028%_
                             _%$%tl214727215030%_
                             _%$%e214728215033%_
                             _%$%hd214729215036%_
                             _%$%tl214730215038%_
                             _%$%e214731215041%_
                             _%$%hd214732215044%_
                             _%$%tl214733215046%_)))
                      (_%__match217007217008%_
                       _%$%e214698214955%_
                       _%$%hd214699214958%_
                       _%$%tl214700214960%_
                       _%$%e214710214985%_
                       _%$%hd214711214988%_
                       _%$%tl214712214990%_
                       _%$%e214713214993%_
                       _%$%hd214714214996%_
                       _%$%tl214715214998%_
                       _%$%e214716215001%_
                       _%$%hd214717215004%_
                       _%$%tl214718215006%_
                       _%$%e214719215009%_
                       _%$%hd214720215012%_
                       _%$%tl214721215014%_
                       _%$%e214722215017%_
                       _%$%hd214723215020%_
                       _%$%tl214724215022%_
                       _%$%e214725215025%_
                       _%$%hd214726215028%_
                       _%$%tl214727215030%_
                       _%$%e214728215033%_
                       _%$%hd214729215036%_
                       _%$%tl214730215038%_
                       _%$%e214731215041%_
                       _%$%hd214732215044%_
                       _%$%tl214733215046%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop214737215078%_
                                           _%$%target214734215049%_
                                           '()))
                                        (_%__match217007217008%_
                                         _%$%e214698214955%_
                                         _%$%hd214699214958%_
                                         _%$%tl214700214960%_
                                         _%$%e214710214985%_
                                         _%$%hd214711214988%_
                                         _%$%tl214712214990%_
                                         _%$%e214713214993%_
                                         _%$%hd214714214996%_
                                         _%$%tl214715214998%_
                                         _%$%e214716215001%_
                                         _%$%hd214717215004%_
                                         _%$%tl214718215006%_
                                         _%$%e214719215009%_
                                         _%$%hd214720215012%_
                                         _%$%tl214721215014%_
                                         _%$%e214722215017%_
                                         _%$%hd214723215020%_
                                         _%$%tl214724215022%_
                                         _%$%e214725215025%_
                                         _%$%hd214726215028%_
                                         _%$%tl214727215030%_
                                         _%$%e214728215033%_
                                         _%$%hd214729215036%_
                                         _%$%tl214730215038%_
                                         _%$%e214731215041%_
                                         _%$%hd214732215044%_
                                         _%$%tl214733215046%_))
                                    (_%__match217007217008%_
                                     _%$%e214698214955%_
                                     _%$%hd214699214958%_
                                     _%$%tl214700214960%_
                                     _%$%e214710214985%_
                                     _%$%hd214711214988%_
                                     _%$%tl214712214990%_
                                     _%$%e214713214993%_
                                     _%$%hd214714214996%_
                                     _%$%tl214715214998%_
                                     _%$%e214716215001%_
                                     _%$%hd214717215004%_
                                     _%$%tl214718215006%_
                                     _%$%e214719215009%_
                                     _%$%hd214720215012%_
                                     _%$%tl214721215014%_
                                     _%$%e214722215017%_
                                     _%$%hd214723215020%_
                                     _%$%tl214724215022%_
                                     _%$%e214725215025%_
                                     _%$%hd214726215028%_
                                     _%$%tl214727215030%_
                                     _%$%e214728215033%_
                                     _%$%hd214729215036%_
                                     _%$%tl214730215038%_
                                     _%$%e214731215041%_
                                     _%$%hd214732215044%_
                                     _%$%tl214733215046%_))))
                            (_%__match217007217008%_
                             _%$%e214698214955%_
                             _%$%hd214699214958%_
                             _%$%tl214700214960%_
                             _%$%e214710214985%_
                             _%$%hd214711214988%_
                             _%$%tl214712214990%_
                             _%$%e214713214993%_
                             _%$%hd214714214996%_
                             _%$%tl214715214998%_
                             _%$%e214716215001%_
                             _%$%hd214717215004%_
                             _%$%tl214718215006%_
                             _%$%e214719215009%_
                             _%$%hd214720215012%_
                             _%$%tl214721215014%_
                             _%$%e214722215017%_
                             _%$%hd214723215020%_
                             _%$%tl214724215022%_
                             _%$%e214725215025%_
                             _%$%hd214726215028%_
                             _%$%tl214727215030%_
                             _%$%e214728215033%_
                             _%$%hd214729215036%_
                             _%$%tl214730215038%_
                             _%$%e214731215041%_
                             _%$%hd214732215044%_
                             _%$%tl214733215046%_))
                        (_%__match217007217008%_
                         _%$%e214698214955%_
                         _%$%hd214699214958%_
                         _%$%tl214700214960%_
                         _%$%e214710214985%_
                         _%$%hd214711214988%_
                         _%$%tl214712214990%_
                         _%$%e214713214993%_
                         _%$%hd214714214996%_
                         _%$%tl214715214998%_
                         _%$%e214716215001%_
                         _%$%hd214717215004%_
                         _%$%tl214718215006%_
                         _%$%e214719215009%_
                         _%$%hd214720215012%_
                         _%$%tl214721215014%_
                         _%$%e214722215017%_
                         _%$%hd214723215020%_
                         _%$%tl214724215022%_
                         _%$%e214725215025%_
                         _%$%hd214726215028%_
                         _%$%tl214727215030%_
                         _%$%e214728215033%_
                         _%$%hd214729215036%_
                         _%$%tl214730215038%_
                         _%$%e214731215041%_
                         _%$%hd214732215044%_
                         _%$%tl214733215046%_))
                    (_%__match217007217008%_
                     _%$%e214698214955%_
                     _%$%hd214699214958%_
                     _%$%tl214700214960%_
                     _%$%e214710214985%_
                     _%$%hd214711214988%_
                     _%$%tl214712214990%_
                     _%$%e214713214993%_
                     _%$%hd214714214996%_
                     _%$%tl214715214998%_
                     _%$%e214716215001%_
                     _%$%hd214717215004%_
                     _%$%tl214718215006%_
                     _%$%e214719215009%_
                     _%$%hd214720215012%_
                     _%$%tl214721215014%_
                     _%$%e214722215017%_
                     _%$%hd214723215020%_
                     _%$%tl214724215022%_
                     _%$%e214725215025%_
                     _%$%hd214726215028%_
                     _%$%tl214727215030%_
                     _%$%e214728215033%_
                     _%$%hd214729215036%_
                     _%$%tl214730215038%_
                     _%$%e214731215041%_
                     _%$%hd214732215044%_
                     _%$%tl214733215046%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match217007217008%_
                                                     _%$%e214698214955%_
                                                     _%$%hd214699214958%_
                                                     _%$%tl214700214960%_
                                                     _%$%e214710214985%_
                                                     _%$%hd214711214988%_
                                                     _%$%tl214712214990%_
                                                     _%$%e214713214993%_
                                                     _%$%hd214714214996%_
                                                     _%$%tl214715214998%_
                                                     _%$%e214716215001%_
                                                     _%$%hd214717215004%_
                                                     _%$%tl214718215006%_
                                                     _%$%e214719215009%_
                                                     _%$%hd214720215012%_
                                                     _%$%tl214721215014%_
                                                     _%$%e214722215017%_
                                                     _%$%hd214723215020%_
                                                     _%$%tl214724215022%_
                                                     _%$%e214725215025%_
                                                     _%$%hd214726215028%_
                                                     _%$%tl214727215030%_
                                                     _%$%e214728215033%_
                                                     _%$%hd214729215036%_
                                                     _%$%tl214730215038%_
                                                     _%$%e214731215041%_
                                                     _%$%hd214732215044%_
                                                     _%$%tl214733215046%_))))
                                            (_%__match217007217008%_
                                             _%$%e214698214955%_
                                             _%$%hd214699214958%_
                                             _%$%tl214700214960%_
                                             _%$%e214710214985%_
                                             _%$%hd214711214988%_
                                             _%$%tl214712214990%_
                                             _%$%e214713214993%_
                                             _%$%hd214714214996%_
                                             _%$%tl214715214998%_
                                             _%$%e214716215001%_
                                             _%$%hd214717215004%_
                                             _%$%tl214718215006%_
                                             _%$%e214719215009%_
                                             _%$%hd214720215012%_
                                             _%$%tl214721215014%_
                                             _%$%e214722215017%_
                                             _%$%hd214723215020%_
                                             _%$%tl214724215022%_
                                             _%$%e214725215025%_
                                             _%$%hd214726215028%_
                                             _%$%tl214727215030%_
                                             _%$%e214728215033%_
                                             _%$%hd214729215036%_
                                             _%$%tl214730215038%_
                                             _%$%e214731215041%_
                                             _%$%hd214732215044%_
                                             _%$%tl214733215046%_))))
                                    (_%__match217007217008%_
                                     _%$%e214698214955%_
                                     _%$%hd214699214958%_
                                     _%$%tl214700214960%_
                                     _%$%e214710214985%_
                                     _%$%hd214711214988%_
                                     _%$%tl214712214990%_
                                     _%$%e214713214993%_
                                     _%$%hd214714214996%_
                                     _%$%tl214715214998%_
                                     _%$%e214716215001%_
                                     _%$%hd214717215004%_
                                     _%$%tl214718215006%_
                                     _%$%e214719215009%_
                                     _%$%hd214720215012%_
                                     _%$%tl214721215014%_
                                     _%$%e214722215017%_
                                     _%$%hd214723215020%_
                                     _%$%tl214724215022%_
                                     _%$%e214725215025%_
                                     _%$%hd214726215028%_
                                     _%$%tl214727215030%_
                                     _%$%e214728215033%_
                                     _%$%hd214729215036%_
                                     _%$%tl214730215038%_
                                     _%$%e214731215041%_
                                     _%$%hd214732215044%_
                                     _%$%tl214733215046%_))
                                (_%__match217007217008%_
                                 _%$%e214698214955%_
                                 _%$%hd214699214958%_
                                 _%$%tl214700214960%_
                                 _%$%e214710214985%_
                                 _%$%hd214711214988%_
                                 _%$%tl214712214990%_
                                 _%$%e214713214993%_
                                 _%$%hd214714214996%_
                                 _%$%tl214715214998%_
                                 _%$%e214716215001%_
                                 _%$%hd214717215004%_
                                 _%$%tl214718215006%_
                                 _%$%e214719215009%_
                                 _%$%hd214720215012%_
                                 _%$%tl214721215014%_
                                 _%$%e214722215017%_
                                 _%$%hd214723215020%_
                                 _%$%tl214724215022%_
                                 _%$%e214725215025%_
                                 _%$%hd214726215028%_
                                 _%$%tl214727215030%_
                                 _%$%e214728215033%_
                                 _%$%hd214729215036%_
                                 _%$%tl214730215038%_
                                 _%$%e214731215041%_
                                 _%$%hd214732215044%_
                                 _%$%tl214733215046%_))
                            (_%__kont216910216911%_))))
                    (_%__kont216910216911%_))
                (_%__kont216910216911%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont216910216911%_))))
                                            (_%__kont216910216911%_))))
                                    (_%__kont216910216911%_))
                                (_%__kont216910216911%_))))
                        (_%__kont216910216911%_))
                    (_%__kont216910216911%_))
                (_%__kont216910216911%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont216910216911%_))))
                                        (_%__kont216910216911%_))
                                    (_%__kont216910216911%_))
                                (_%__kont216910216911%_))))
                        (_%__kont216910216911%_))))
                (_%__kont216910216911%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%loop214704214968%_
                                     _%$%target214701214963%_
                                     '()))))
                               (_%__match216925216926%_
                                (lambda (_%$%e214650215211%_
                                         _%$%hd214651215214%_
                                         _%$%tl214652215216%_
                                         _%__splice216898216899%_
                                         _%$%target214653215219%_
                                         _%$%tl214655215221%_)
                                  (letrec ((_%$%loop214656215224%_
                                            (lambda (_%$%hd214654215227%_
                                                     _%$%arg214660215229%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd214654215227%_))
                                                  (let ((_%$%e214657215231%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd214654215227%_))))
                                                    (let ((_%$%lp-tl214659215236%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e214657215231%_)))
                                                          (_%$%lp-hd214658215234%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e214657215231%_))))
                                                      (_%$%loop214656215224%_
                                                       _%$%lp-tl214659215236%_
                                                       (cons _%$%lp-hd214658215234%_
                                                             _%$%arg214660215229%_))))
                                                  (let ((_%$%arg214661215239%_
                                                         (reverse _%$%arg214660215229%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl214652215216%_))
                                                        (let ((_%$%e214662215241%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl214652215216%_))))
                  (let ((_%$%tl214664215246%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e214662215241%_)))
                        (_%$%hd214663215244%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e214662215241%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd214663215244%_))
                        (let ((_%$%e214665215249%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd214663215244%_))))
                          (let ((_%$%tl214667215254%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e214665215249%_)))
                                (_%$%hd214666215252%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e214665215249%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd214666215252%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq?
                                       '%#call
                                       _%$%hd214666215252%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl214667215254%_))
                                        (let ((_%$%e214668215257%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl214667215254%_))))
                                          (let ((_%$%tl214670215262%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e214668215257%_)))
                                                (_%$%hd214669215260%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e214668215257%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd214669215260%_))
                                                (let ((_%$%e214671215265%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd214669215260%_))))
                                                  (let ((_%$%tl214673215270%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e214671215265%_)))
                                                        (_%$%hd214672215268%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e214671215265%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd214672215268%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%$%hd214672215268%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl214673215270%_))
                        (let ((_%$%e214674215273%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl214673215270%_))))
                          (let ((_%$%tl214676215278%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e214674215273%_)))
                                (_%$%hd214675215276%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e214674215273%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl214676215278%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%$%tl214670215262%_))
                                    (let ((_%__splice216900216901%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%$%tl214670215262%_
                                              '0))))
                                      (let ((_%$%tl214679215283%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice216900216901%_
                                                '1)))
                                            (_%$%target214677215281%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice216900216901%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl214679215283%_))
                                            (letrec ((_%$%loop214680215286%_
                                                      (lambda (_%$%hd214678215289%_
                                                               _%$%xarg214684215291%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%hd214678215289%_))
                                                            (let ((_%$%e214681215293%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%hd214678215289%_))))
                      (let ((_%$%lp-tl214683215298%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e214681215293%_)))
                            (_%$%lp-hd214682215296%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e214681215293%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%lp-hd214682215296%_))
                            (let ((_%$%e214686215301%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%lp-hd214682215296%_))))
                              (let ((_%$%tl214688215306%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e214686215301%_)))
                                    (_%$%hd214687215304%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e214686215301%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd214687215304%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%$%hd214687215304%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl214688215306%_))
                                            (let ((_%$%e214689215309%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl214688215306%_))))
                                              (let ((_%$%tl214691215314%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e214689215309%_)))
                                                    (_%$%hd214690215312%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e214689215309%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl214691215314%_))
                                                    (_%$%loop214680215286%_
                                                     _%$%lp-tl214683215298%_
                                                     (cons _%$%hd214690215312%_
                                                           _%$%xarg214684215291%_))
                                                    (_%__match216937216938%_
                                                     _%$%e214650215211%_
                                                     _%$%hd214651215214%_
                                                     _%$%tl214652215216%_
                                                     _%__splice216898216899%_
                                                     _%$%target214653215219%_
                                                     _%$%tl214655215221%_))))
                                            (_%__match216937216938%_
                                             _%$%e214650215211%_
                                             _%$%hd214651215214%_
                                             _%$%tl214652215216%_
                                             _%__splice216898216899%_
                                             _%$%target214653215219%_
                                             _%$%tl214655215221%_))
                                        (_%__match216937216938%_
                                         _%$%e214650215211%_
                                         _%$%hd214651215214%_
                                         _%$%tl214652215216%_
                                         _%__splice216898216899%_
                                         _%$%target214653215219%_
                                         _%$%tl214655215221%_))
                                    (_%__match216937216938%_
                                     _%$%e214650215211%_
                                     _%$%hd214651215214%_
                                     _%$%tl214652215216%_
                                     _%__splice216898216899%_
                                     _%$%target214653215219%_
                                     _%$%tl214655215221%_))))
                            (_%__match216937216938%_
                             _%$%e214650215211%_
                             _%$%hd214651215214%_
                             _%$%tl214652215216%_
                             _%__splice216898216899%_
                             _%$%target214653215219%_
                             _%$%tl214655215221%_))))
                    (let ((_%$%xarg214685215317%_
                           (reverse _%$%xarg214684215291%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl214664215246%_))
                          (let ((_%$%g214647215319%_ _%$%xarg214685215317%_)
                                (_%$%g214648215320%_ _%$%hd214675215276%_)
                                (_%$%g214649215321%_ _%$%arg214661215239%_))
                            (if (and (let ((__tmp218189
                                            (let ((__tmp218190
                                                   (lambda (_%$%g215349215352%_
                                                            _%$%g215350215354%_)
                                                     (cons _%$%g215349215352%_
                                                           _%$%g215350215354%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp218190
                                               '()
                                               _%$%g214649215321%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp218189))
                                     (let ((__tmp218193
                                            (length (let ((__tmp218194
                                                           (lambda (_%$%g215356215359%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g215357215361%_)
                     (cons _%$%g215356215359%_ _%$%g215357215361%_))))
              (declare (not safe))
              (foldr__0 __tmp218194 '() _%$%g214649215321%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp218191
                                            (length (let ((__tmp218192
                                                           (lambda (_%$%g215363215366%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g215364215368%_)
                     (cons _%$%g215363215366%_ _%$%g215364215368%_))))
              (declare (not safe))
              (foldr__0 __tmp218192 '() _%$%g214647215319%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp218193 __tmp218191))
                                     (let ((__tmp218197
                                            (let ((__tmp218198
                                                   (lambda (_%$%g215370215373%_
                                                            _%$%g215371215375%_)
                                                     (cons _%$%g215370215373%_
                                                           _%$%g215371215375%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp218198
                                               '()
                                               _%$%g214649215321%_)))
                                           (__tmp218195
                                            (let ((__tmp218196
                                                   (lambda (_%$%g215377215380%_
                                                            _%$%g215378215382%_)
                                                     (cons _%$%g215377215380%_
                                                           _%$%g215378215382%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp218196
                                               '()
                                               _%$%g214647215319%_))))
                                       (declare (not safe))
                                       (andmap__1
                                        gx#free-identifier=?
                                        __tmp218197
                                        __tmp218195))
                                     (not (let ((__tmp218201
                                                 (lambda (_%$%g215384215386%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%$%g215384215386%_
                                                      _%$%g214648215320%_))))
                                                (__tmp218199
                                                 (let ((__tmp218200
                                                        (lambda (_%$%g215388215391%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g215389215393%_)
                  (cons _%$%g215388215391%_ _%$%g215389215393%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp218200
                                                    '()
                                                    _%$%g214649215321%_))))
                                            (declare (not safe))
                                            (__find __tmp218201 __tmp218199))))
                                (_%__kont216896216897%_
                                 _%$%g214647215319%_
                                 _%$%g214648215320%_
                                 _%$%g214649215321%_)
                                (_%__match216937216938%_
                                 _%$%e214650215211%_
                                 _%$%hd214651215214%_
                                 _%$%tl214652215216%_
                                 _%__splice216898216899%_
                                 _%$%target214653215219%_
                                 _%$%tl214655215221%_)))
                          (_%__match216937216938%_
                           _%$%e214650215211%_
                           _%$%hd214651215214%_
                           _%$%tl214652215216%_
                           _%__splice216898216899%_
                           _%$%target214653215219%_
                           _%$%tl214655215221%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop214680215286%_
                                               _%$%target214677215281%_
                                               '()))
                                            (_%__match216937216938%_
                                             _%$%e214650215211%_
                                             _%$%hd214651215214%_
                                             _%$%tl214652215216%_
                                             _%__splice216898216899%_
                                             _%$%target214653215219%_
                                             _%$%tl214655215221%_))))
                                    (_%__match216937216938%_
                                     _%$%e214650215211%_
                                     _%$%hd214651215214%_
                                     _%$%tl214652215216%_
                                     _%__splice216898216899%_
                                     _%$%target214653215219%_
                                     _%$%tl214655215221%_))
                                (_%__match216937216938%_
                                 _%$%e214650215211%_
                                 _%$%hd214651215214%_
                                 _%$%tl214652215216%_
                                 _%__splice216898216899%_
                                 _%$%target214653215219%_
                                 _%$%tl214655215221%_))))
                        (_%__match216937216938%_
                         _%$%e214650215211%_
                         _%$%hd214651215214%_
                         _%$%tl214652215216%_
                         _%__splice216898216899%_
                         _%$%target214653215219%_
                         _%$%tl214655215221%_))
                    (_%__match216937216938%_
                     _%$%e214650215211%_
                     _%$%hd214651215214%_
                     _%$%tl214652215216%_
                     _%__splice216898216899%_
                     _%$%target214653215219%_
                     _%$%tl214655215221%_))
                (_%__match216937216938%_
                 _%$%e214650215211%_
                 _%$%hd214651215214%_
                 _%$%tl214652215216%_
                 _%__splice216898216899%_
                 _%$%target214653215219%_
                 _%$%tl214655215221%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match216937216938%_
                                                 _%$%e214650215211%_
                                                 _%$%hd214651215214%_
                                                 _%$%tl214652215216%_
                                                 _%__splice216898216899%_
                                                 _%$%target214653215219%_
                                                 _%$%tl214655215221%_))))
                                        (_%__match216937216938%_
                                         _%$%e214650215211%_
                                         _%$%hd214651215214%_
                                         _%$%tl214652215216%_
                                         _%__splice216898216899%_
                                         _%$%target214653215219%_
                                         _%$%tl214655215221%_))
                                    (_%__match216937216938%_
                                     _%$%e214650215211%_
                                     _%$%hd214651215214%_
                                     _%$%tl214652215216%_
                                     _%__splice216898216899%_
                                     _%$%target214653215219%_
                                     _%$%tl214655215221%_))
                                (_%__match216937216938%_
                                 _%$%e214650215211%_
                                 _%$%hd214651215214%_
                                 _%$%tl214652215216%_
                                 _%__splice216898216899%_
                                 _%$%target214653215219%_
                                 _%$%tl214655215221%_))))
                        (_%__match216937216938%_
                         _%$%e214650215211%_
                         _%$%hd214651215214%_
                         _%$%tl214652215216%_
                         _%__splice216898216899%_
                         _%$%target214653215219%_
                         _%$%tl214655215221%_))))
                (_%__match216937216938%_
                 _%$%e214650215211%_
                 _%$%hd214651215214%_
                 _%$%tl214652215216%_
                 _%__splice216898216899%_
                 _%$%target214653215219%_
                 _%$%tl214655215221%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%loop214656215224%_
                                     _%$%target214653215219%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx216894216895%_))
                              (let ((_%$%e214650215211%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx216894216895%_))))
                                (let ((_%$%tl214652215216%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e214650215211%_)))
                                      (_%$%hd214651215214%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e214650215211%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd214651215214%_))
                                      (let ((_%__splice216898216899%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%hd214651215214%_
                                                '0))))
                                        (let ((_%$%tl214655215221%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice216898216899%_
                                                  '1)))
                                              (_%$%target214653215219%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice216898216899%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl214655215221%_))
                                              (_%__match216925216926%_
                                               _%$%e214650215211%_
                                               _%$%hd214651215214%_
                                               _%$%tl214652215216%_
                                               _%__splice216898216899%_
                                               _%$%target214653215219%_
                                               _%$%tl214655215221%_)
                                              (_%__match216937216938%_
                                               _%$%e214650215211%_
                                               _%$%hd214651215214%_
                                               _%$%tl214652215216%_
                                               _%__splice216898216899%_
                                               _%$%target214653215219%_
                                               _%$%tl214655215221%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl214652215216%_))
                                          (let ((_%$%e214765214822%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl214652215216%_))))
                                            (let ((_%$%tl214767214827%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e214765214822%_)))
                                                  (_%$%hd214766214825%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e214765214822%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd214766214825%_))
                                                  (let ((_%$%e214768214830%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd214766214825%_))))
                                                    (let ((_%$%tl214770214835%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e214768214830%_)))
                                                          (_%$%hd214769214833%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e214768214830%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd214769214833%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%$%hd214769214833%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl214770214835%_))
                          (let ((_%$%e214771214838%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl214770214835%_))))
                            (let ((_%$%tl214773214843%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e214771214838%_)))
                                  (_%$%hd214772214841%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e214771214838%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd214772214841%_))
                                  (let ((_%$%e214774214846%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd214772214841%_))))
                                    (let ((_%$%tl214776214851%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e214774214846%_)))
                                          (_%$%hd214775214849%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e214774214846%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd214775214849%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd214775214849%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl214776214851%_))
                                                  (let ((_%$%e214777214854%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl214776214851%_))))
                                                    (let ((_%$%tl214779214859%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e214777214854%_)))
                                                          (_%$%hd214778214857%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e214777214854%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl214779214859%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl214773214843%_))
                      (let ((_%$%e214780214862%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl214773214843%_))))
                        (let ((_%$%tl214782214867%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e214780214862%_)))
                              (_%$%hd214781214865%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e214780214862%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd214781214865%_))
                              (let ((_%$%e214783214870%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd214781214865%_))))
                                (let ((_%$%tl214785214875%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e214783214870%_)))
                                      (_%$%hd214784214873%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e214783214870%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd214784214873%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd214784214873%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl214785214875%_))
                                              (let ((_%$%e214786214878%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl214785214875%_))))
                                                (let ((_%$%tl214788214883%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e214786214878%_)))
                                                      (_%$%hd214787214881%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e214786214878%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl214788214883%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl214782214867%_))
                                                          (let ((_%$%e214789214886%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl214782214867%_))))
                    (let ((_%$%tl214791214891%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e214789214886%_)))
                          (_%$%hd214790214889%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e214789214886%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd214790214889%_))
                          (let ((_%$%e214792214894%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd214790214889%_))))
                            (let ((_%$%tl214794214899%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e214792214894%_)))
                                  (_%$%hd214793214897%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e214792214894%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%$%hd214793214897%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#ref
                                         _%$%hd214793214897%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl214794214899%_))
                                          (let ((_%$%e214795214902%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl214794214899%_))))
                                            (let ((_%$%tl214797214907%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e214795214902%_)))
                                                  (_%$%hd214796214905%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e214795214902%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl214797214907%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl214791214891%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl214767214827%_))
                                                          (_%__match217035217036%_
                                                           _%$%e214650215211%_
                                                           _%$%hd214651215214%_
                                                           _%$%tl214652215216%_
                                                           _%$%e214765214822%_
                                                           _%$%hd214766214825%_
                                                           _%$%tl214767214827%_
                                                           _%$%e214768214830%_
                                                           _%$%hd214769214833%_
                                                           _%$%tl214770214835%_
                                                           _%$%e214771214838%_
                                                           _%$%hd214772214841%_
                                                           _%$%tl214773214843%_
                                                           _%$%e214774214846%_
                                                           _%$%hd214775214849%_
                                                           _%$%tl214776214851%_
                                                           _%$%e214777214854%_
                                                           _%$%hd214778214857%_
                                                           _%$%tl214779214859%_
                                                           _%$%e214780214862%_
                                                           _%$%hd214781214865%_
                                                           _%$%tl214782214867%_
                                                           _%$%e214783214870%_
                                                           _%$%hd214784214873%_
                                                           _%$%tl214785214875%_
                                                           _%$%e214786214878%_
                                                           _%$%hd214787214881%_
                                                           _%$%tl214788214883%_
                                                           _%$%e214789214886%_
                                                           _%$%hd214790214889%_
                                                           _%$%tl214791214891%_
                                                           _%$%e214792214894%_
                                                           _%$%hd214793214897%_
                                                           _%$%tl214794214899%_
                                                           _%$%e214795214902%_
                                                           _%$%hd214796214905%_
                                                           _%$%tl214797214907%_)
                                                          (_%__kont216910216911%_))
                                                      (_%__kont216910216911%_))
                                                  (_%__kont216910216911%_))))
                                          (_%__kont216910216911%_))
                                      (_%__kont216910216911%_))
                                  (_%__kont216910216911%_))))
                          (_%__kont216910216911%_))))
                  (_%__kont216910216911%_))
              (_%__kont216910216911%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont216910216911%_))
                                          (_%__kont216910216911%_))
                                      (_%__kont216910216911%_))))
                              (_%__kont216910216911%_))))
                      (_%__kont216910216911%_))
                  (_%__kont216910216911%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont216910216911%_))
                                              (_%__kont216910216911%_))
                                          (_%__kont216910216911%_))))
                                  (_%__kont216910216911%_))))
                          (_%__kont216910216911%_))
                      (_%__kont216910216911%_))
                  (_%__kont216910216911%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont216910216911%_))))
                                          (_%__kont216910216911%_)))))
                              (_%__kont216910216911%_)))))))
                 (_%dispatch-case-e213960%_
                  (lambda (_%hd214107%_ _%body214108%_)
                    (let* ((_%form214110%_
                            (cons _%hd214107%_ (cons _%body214108%_ '())))
                           (_%__stx217038217039%_ _%form214110%_)
                           (_%$%g214114214238%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx217038217039%_)))))
                      (let ((_%__kont217040217041%_
                             (lambda (_%$%g214116214603%_
                                      _%$%g214117214604%_
                                      _%$%g214118214605%_)
                               (let ((__tmp218202
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%$%g214117214604%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self213956%_
                                  __tmp218202))))
                            (_%__kont217046217047%_
                             (lambda (_%$%g214161214455%_
                                      _%$%g214162214456%_
                                      _%$%g214163214457%_
                                      _%$%g214164214458%_)
                               (let ((__tmp218203
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%$%g214161214455%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self213956%_
                                  __tmp218203))))
                            (_%__kont217050217051%_
                             (lambda (_%$%g214201214323%_
                                      _%$%g214202214324%_
                                      _%$%g214203214325%_)
                               (let ((__tmp218204
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%$%g214201214323%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self213956%_
                                  __tmp218204)))))
                        (let* ((_%__match217147217148%_
                                (lambda (_%$%e214204214243%_
                                         _%$%hd214205214246%_
                                         _%$%tl214206214248%_
                                         _%$%e214207214251%_
                                         _%$%hd214208214254%_
                                         _%$%tl214209214256%_
                                         _%$%e214210214259%_
                                         _%$%hd214211214262%_
                                         _%$%tl214212214264%_
                                         _%$%e214213214267%_
                                         _%$%hd214214214270%_
                                         _%$%tl214215214272%_
                                         _%$%e214216214275%_
                                         _%$%hd214217214278%_
                                         _%$%tl214218214280%_
                                         _%$%e214219214283%_
                                         _%$%hd214220214286%_
                                         _%$%tl214221214288%_
                                         _%$%e214222214291%_
                                         _%$%hd214223214294%_
                                         _%$%tl214224214296%_
                                         _%$%e214225214299%_
                                         _%$%hd214226214302%_
                                         _%$%tl214227214304%_
                                         _%$%e214228214307%_
                                         _%$%hd214229214310%_
                                         _%$%tl214230214312%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl214224214296%_))
                                      (let ((_%$%e214231214315%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl214224214296%_))))
                                        (let ((_%$%tl214233214320%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e214231214315%_)))
                                              (_%$%hd214232214318%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e214231214315%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl214233214320%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl214209214256%_))
                                                  (_%__kont217050217051%_
                                                   _%$%hd214229214310%_
                                                   _%$%hd214220214286%_
                                                   _%$%hd214205214246%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g214114214238%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g214114214238%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g214114214238%_)))))
                               (_%__match217077217078%_
                                (lambda (_%$%e214165214361%_
                                         _%$%hd214166214364%_
                                         _%$%tl214167214366%_
                                         _%__splice217048217049%_
                                         _%$%target214168214369%_
                                         _%$%tl214170214371%_)
                                  (letrec ((_%$%loop214171214374%_
                                            (lambda (_%$%hd214169214377%_
                                                     _%$%arg214175214379%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd214169214377%_))
                                                  (let ((_%$%e214172214381%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd214169214377%_))))
                                                    (let ((_%$%lp-tl214174214386%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e214172214381%_)))
                                                          (_%$%lp-hd214173214384%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e214172214381%_))))
                                                      (_%$%loop214171214374%_
                                                       _%$%lp-tl214174214386%_
                                                       (cons _%$%lp-hd214173214384%_
                                                             _%$%arg214175214379%_))))
                                                  (let ((_%$%arg214176214389%_
                                                         (reverse _%$%arg214175214379%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl214167214366%_))
                                                        (let ((_%$%e214177214391%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl214167214366%_))))
                  (let ((_%$%tl214179214396%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e214177214391%_)))
                        (_%$%hd214178214394%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e214177214391%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd214178214394%_))
                        (let ((_%$%e214180214399%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd214178214394%_))))
                          (let ((_%$%tl214182214404%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e214180214399%_)))
                                (_%$%hd214181214402%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e214180214399%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd214181214402%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq?
                                       '%#call
                                       _%$%hd214181214402%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl214182214404%_))
                                        (let ((_%$%e214183214407%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl214182214404%_))))
                                          (let ((_%$%tl214185214412%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e214183214407%_)))
                                                (_%$%hd214184214410%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e214183214407%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd214184214410%_))
                                                (let ((_%$%e214186214415%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd214184214410%_))))
                                                  (let ((_%$%tl214188214420%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e214186214415%_)))
                                                        (_%$%hd214187214418%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e214186214415%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd214187214418%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%$%hd214187214418%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl214188214420%_))
                        (let ((_%$%e214189214423%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl214188214420%_))))
                          (let ((_%$%tl214191214428%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e214189214423%_)))
                                (_%$%hd214190214426%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e214189214423%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl214191214428%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl214185214412%_))
                                    (let ((_%$%e214192214431%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%tl214185214412%_))))
                                      (let ((_%$%tl214194214436%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e214192214431%_)))
                                            (_%$%hd214193214434%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e214192214431%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%hd214193214434%_))
                                            (let ((_%$%e214195214439%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%hd214193214434%_))))
                                              (let ((_%$%tl214197214444%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e214195214439%_)))
                                                    (_%$%hd214196214442%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e214195214439%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%$%hd214196214442%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%$%hd214196214442%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl214197214444%_))
                                                            (let ((_%$%e214198214447%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl214197214444%_))))
                      (let ((_%$%tl214200214452%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e214198214447%_)))
                            (_%$%hd214199214450%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e214198214447%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl214200214452%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl214179214396%_))
                                (_%__kont217046217047%_
                                 _%$%hd214199214450%_
                                 _%$%hd214190214426%_
                                 _%$%tl214170214371%_
                                 _%$%arg214176214389%_)
                                (_%__match217147217148%_
                                 _%$%e214165214361%_
                                 _%$%hd214166214364%_
                                 _%$%tl214167214366%_
                                 _%$%e214177214391%_
                                 _%$%hd214178214394%_
                                 _%$%tl214179214396%_
                                 _%$%e214180214399%_
                                 _%$%hd214181214402%_
                                 _%$%tl214182214404%_
                                 _%$%e214183214407%_
                                 _%$%hd214184214410%_
                                 _%$%tl214185214412%_
                                 _%$%e214186214415%_
                                 _%$%hd214187214418%_
                                 _%$%tl214188214420%_
                                 _%$%e214189214423%_
                                 _%$%hd214190214426%_
                                 _%$%tl214191214428%_
                                 _%$%e214192214431%_
                                 _%$%hd214193214434%_
                                 _%$%tl214194214436%_
                                 _%$%e214195214439%_
                                 _%$%hd214196214442%_
                                 _%$%tl214197214444%_
                                 _%$%e214198214447%_
                                 _%$%hd214199214450%_
                                 _%$%tl214200214452%_))
                            (let ()
                              (declare (not safe))
                              (_%$%g214114214238%_)))))
                    (let () (declare (not safe)) (_%$%g214114214238%_)))
                (let () (declare (not safe)) (_%$%g214114214238%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g214114214238%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g214114214238%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g214114214238%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g214114214238%_)))))
                        (let () (declare (not safe)) (_%$%g214114214238%_)))
                    (let () (declare (not safe)) (_%$%g214114214238%_)))
                (let () (declare (not safe)) (_%$%g214114214238%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g214114214238%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g214114214238%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g214114214238%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g214114214238%_)))))
                        (let () (declare (not safe)) (_%$%g214114214238%_)))))
                (let () (declare (not safe)) (_%$%g214114214238%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%loop214171214374%_
                                     _%$%target214168214369%_
                                     '()))))
                               (_%__match217065217066%_
                                (lambda (_%$%e214119214495%_
                                         _%$%hd214120214498%_
                                         _%$%tl214121214500%_
                                         _%__splice217042217043%_
                                         _%$%target214122214503%_
                                         _%$%tl214124214505%_)
                                  (letrec ((_%$%loop214125214508%_
                                            (lambda (_%$%hd214123214511%_
                                                     _%$%arg214129214513%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd214123214511%_))
                                                  (let ((_%$%e214126214515%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd214123214511%_))))
                                                    (let ((_%$%lp-tl214128214520%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e214126214515%_)))
                                                          (_%$%lp-hd214127214518%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e214126214515%_))))
                                                      (_%$%loop214125214508%_
                                                       _%$%lp-tl214128214520%_
                                                       (cons _%$%lp-hd214127214518%_
                                                             _%$%arg214129214513%_))))
                                                  (let ((_%$%arg214130214523%_
                                                         (reverse _%$%arg214129214513%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl214121214500%_))
                                                        (let ((_%$%e214131214525%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl214121214500%_))))
                  (let ((_%$%tl214133214530%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e214131214525%_)))
                        (_%$%hd214132214528%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e214131214525%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd214132214528%_))
                        (let ((_%$%e214134214533%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd214132214528%_))))
                          (let ((_%$%tl214136214538%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e214134214533%_)))
                                (_%$%hd214135214536%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e214134214533%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd214135214536%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq?
                                       '%#call
                                       _%$%hd214135214536%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl214136214538%_))
                                        (let ((_%$%e214137214541%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl214136214538%_))))
                                          (let ((_%$%tl214139214546%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e214137214541%_)))
                                                (_%$%hd214138214544%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e214137214541%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd214138214544%_))
                                                (let ((_%$%e214140214549%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd214138214544%_))))
                                                  (let ((_%$%tl214142214554%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e214140214549%_)))
                                                        (_%$%hd214141214552%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e214140214549%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd214141214552%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%$%hd214141214552%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl214142214554%_))
                        (let ((_%$%e214143214557%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl214142214554%_))))
                          (let ((_%$%tl214145214562%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e214143214557%_)))
                                (_%$%hd214144214560%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e214143214557%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl214145214562%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%$%tl214139214546%_))
                                    (let ((_%__splice217044217045%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%$%tl214139214546%_
                                              '0))))
                                      (let ((_%$%tl214148214567%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice217044217045%_
                                                '1)))
                                            (_%$%target214146214565%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice217044217045%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl214148214567%_))
                                            (letrec ((_%$%loop214149214570%_
                                                      (lambda (_%$%hd214147214573%_
                                                               _%$%xarg214153214575%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%hd214147214573%_))
                                                            (let ((_%$%e214150214577%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%hd214147214573%_))))
                      (let ((_%$%lp-tl214152214582%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e214150214577%_)))
                            (_%$%lp-hd214151214580%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e214150214577%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%lp-hd214151214580%_))
                            (let ((_%$%e214155214585%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%lp-hd214151214580%_))))
                              (let ((_%$%tl214157214590%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e214155214585%_)))
                                    (_%$%hd214156214588%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e214155214585%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd214156214588%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%$%hd214156214588%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl214157214590%_))
                                            (let ((_%$%e214158214593%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl214157214590%_))))
                                              (let ((_%$%tl214160214598%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e214158214593%_)))
                                                    (_%$%hd214159214596%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e214158214593%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl214160214598%_))
                                                    (_%$%loop214149214570%_
                                                     _%$%lp-tl214152214582%_
                                                     (cons _%$%hd214159214596%_
                                                           _%$%xarg214153214575%_))
                                                    (_%__match217077217078%_
                                                     _%$%e214119214495%_
                                                     _%$%hd214120214498%_
                                                     _%$%tl214121214500%_
                                                     _%__splice217042217043%_
                                                     _%$%target214122214503%_
                                                     _%$%tl214124214505%_))))
                                            (_%__match217077217078%_
                                             _%$%e214119214495%_
                                             _%$%hd214120214498%_
                                             _%$%tl214121214500%_
                                             _%__splice217042217043%_
                                             _%$%target214122214503%_
                                             _%$%tl214124214505%_))
                                        (_%__match217077217078%_
                                         _%$%e214119214495%_
                                         _%$%hd214120214498%_
                                         _%$%tl214121214500%_
                                         _%__splice217042217043%_
                                         _%$%target214122214503%_
                                         _%$%tl214124214505%_))
                                    (_%__match217077217078%_
                                     _%$%e214119214495%_
                                     _%$%hd214120214498%_
                                     _%$%tl214121214500%_
                                     _%__splice217042217043%_
                                     _%$%target214122214503%_
                                     _%$%tl214124214505%_))))
                            (_%__match217077217078%_
                             _%$%e214119214495%_
                             _%$%hd214120214498%_
                             _%$%tl214121214500%_
                             _%__splice217042217043%_
                             _%$%target214122214503%_
                             _%$%tl214124214505%_))))
                    (let ((_%$%xarg214154214601%_
                           (reverse _%$%xarg214153214575%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl214133214530%_))
                          (_%__kont217040217041%_
                           _%$%xarg214154214601%_
                           _%$%hd214144214560%_
                           _%$%arg214130214523%_)
                          (_%__match217077217078%_
                           _%$%e214119214495%_
                           _%$%hd214120214498%_
                           _%$%tl214121214500%_
                           _%__splice217042217043%_
                           _%$%target214122214503%_
                           _%$%tl214124214505%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop214149214570%_
                                               _%$%target214146214565%_
                                               '()))
                                            (_%__match217077217078%_
                                             _%$%e214119214495%_
                                             _%$%hd214120214498%_
                                             _%$%tl214121214500%_
                                             _%__splice217042217043%_
                                             _%$%target214122214503%_
                                             _%$%tl214124214505%_))))
                                    (_%__match217077217078%_
                                     _%$%e214119214495%_
                                     _%$%hd214120214498%_
                                     _%$%tl214121214500%_
                                     _%__splice217042217043%_
                                     _%$%target214122214503%_
                                     _%$%tl214124214505%_))
                                (_%__match217077217078%_
                                 _%$%e214119214495%_
                                 _%$%hd214120214498%_
                                 _%$%tl214121214500%_
                                 _%__splice217042217043%_
                                 _%$%target214122214503%_
                                 _%$%tl214124214505%_))))
                        (_%__match217077217078%_
                         _%$%e214119214495%_
                         _%$%hd214120214498%_
                         _%$%tl214121214500%_
                         _%__splice217042217043%_
                         _%$%target214122214503%_
                         _%$%tl214124214505%_))
                    (_%__match217077217078%_
                     _%$%e214119214495%_
                     _%$%hd214120214498%_
                     _%$%tl214121214500%_
                     _%__splice217042217043%_
                     _%$%target214122214503%_
                     _%$%tl214124214505%_))
                (_%__match217077217078%_
                 _%$%e214119214495%_
                 _%$%hd214120214498%_
                 _%$%tl214121214500%_
                 _%__splice217042217043%_
                 _%$%target214122214503%_
                 _%$%tl214124214505%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match217077217078%_
                                                 _%$%e214119214495%_
                                                 _%$%hd214120214498%_
                                                 _%$%tl214121214500%_
                                                 _%__splice217042217043%_
                                                 _%$%target214122214503%_
                                                 _%$%tl214124214505%_))))
                                        (_%__match217077217078%_
                                         _%$%e214119214495%_
                                         _%$%hd214120214498%_
                                         _%$%tl214121214500%_
                                         _%__splice217042217043%_
                                         _%$%target214122214503%_
                                         _%$%tl214124214505%_))
                                    (_%__match217077217078%_
                                     _%$%e214119214495%_
                                     _%$%hd214120214498%_
                                     _%$%tl214121214500%_
                                     _%__splice217042217043%_
                                     _%$%target214122214503%_
                                     _%$%tl214124214505%_))
                                (_%__match217077217078%_
                                 _%$%e214119214495%_
                                 _%$%hd214120214498%_
                                 _%$%tl214121214500%_
                                 _%__splice217042217043%_
                                 _%$%target214122214503%_
                                 _%$%tl214124214505%_))))
                        (_%__match217077217078%_
                         _%$%e214119214495%_
                         _%$%hd214120214498%_
                         _%$%tl214121214500%_
                         _%__splice217042217043%_
                         _%$%target214122214503%_
                         _%$%tl214124214505%_))))
                (_%__match217077217078%_
                 _%$%e214119214495%_
                 _%$%hd214120214498%_
                 _%$%tl214121214500%_
                 _%__splice217042217043%_
                 _%$%target214122214503%_
                 _%$%tl214124214505%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%loop214125214508%_
                                     _%$%target214122214503%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx217038217039%_))
                              (let ((_%$%e214119214495%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx217038217039%_))))
                                (let ((_%$%tl214121214500%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e214119214495%_)))
                                      (_%$%hd214120214498%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e214119214495%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd214120214498%_))
                                      (let ((_%__splice217042217043%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%hd214120214498%_
                                                '0))))
                                        (let ((_%$%tl214124214505%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice217042217043%_
                                                  '1)))
                                              (_%$%target214122214503%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice217042217043%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl214124214505%_))
                                              (_%__match217065217066%_
                                               _%$%e214119214495%_
                                               _%$%hd214120214498%_
                                               _%$%tl214121214500%_
                                               _%__splice217042217043%_
                                               _%$%target214122214503%_
                                               _%$%tl214124214505%_)
                                              (_%__match217077217078%_
                                               _%$%e214119214495%_
                                               _%$%hd214120214498%_
                                               _%$%tl214121214500%_
                                               _%__splice217042217043%_
                                               _%$%target214122214503%_
                                               _%$%tl214124214505%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl214121214500%_))
                                          (let ((_%$%e214207214251%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl214121214500%_))))
                                            (let ((_%$%tl214209214256%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e214207214251%_)))
                                                  (_%$%hd214208214254%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e214207214251%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd214208214254%_))
                                                  (let ((_%$%e214210214259%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd214208214254%_))))
                                                    (let ((_%$%tl214212214264%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e214210214259%_)))
                                                          (_%$%hd214211214262%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e214210214259%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd214211214262%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%$%hd214211214262%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl214212214264%_))
                          (let ((_%$%e214213214267%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl214212214264%_))))
                            (let ((_%$%tl214215214272%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e214213214267%_)))
                                  (_%$%hd214214214270%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e214213214267%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd214214214270%_))
                                  (let ((_%$%e214216214275%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd214214214270%_))))
                                    (let ((_%$%tl214218214280%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e214216214275%_)))
                                          (_%$%hd214217214278%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e214216214275%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd214217214278%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd214217214278%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl214218214280%_))
                                                  (let ((_%$%e214219214283%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl214218214280%_))))
                                                    (let ((_%$%tl214221214288%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e214219214283%_)))
                                                          (_%$%hd214220214286%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e214219214283%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl214221214288%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl214215214272%_))
                      (let ((_%$%e214222214291%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl214215214272%_))))
                        (let ((_%$%tl214224214296%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e214222214291%_)))
                              (_%$%hd214223214294%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e214222214291%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd214223214294%_))
                              (let ((_%$%e214225214299%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd214223214294%_))))
                                (let ((_%$%tl214227214304%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e214225214299%_)))
                                      (_%$%hd214226214302%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e214225214299%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd214226214302%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd214226214302%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl214227214304%_))
                                              (let ((_%$%e214228214307%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl214227214304%_))))
                                                (let ((_%$%tl214230214312%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e214228214307%_)))
                                                      (_%$%hd214229214310%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e214228214307%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl214230214312%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl214224214296%_))
                                                          (let ((_%$%e214231214315%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl214224214296%_))))
                    (let ((_%$%tl214233214320%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e214231214315%_)))
                          (_%$%hd214232214318%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e214231214315%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl214233214320%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl214209214256%_))
                              (_%__kont217050217051%_
                               _%$%hd214229214310%_
                               _%$%hd214220214286%_
                               _%$%hd214120214498%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g214114214238%_)))
                          (let ()
                            (declare (not safe))
                            (_%$%g214114214238%_)))))
                  (let () (declare (not safe)) (_%$%g214114214238%_)))
              (let () (declare (not safe)) (_%$%g214114214238%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g214114214238%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g214114214238%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g214114214238%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g214114214238%_)))))
                      (let () (declare (not safe)) (_%$%g214114214238%_)))
                  (let () (declare (not safe)) (_%$%g214114214238%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g214114214238%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g214114214238%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g214114214238%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g214114214238%_)))))
                          (let () (declare (not safe)) (_%$%g214114214238%_)))
                      (let () (declare (not safe)) (_%$%g214114214238%_)))
                  (let () (declare (not safe)) (_%$%g214114214238%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g214114214238%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g214114214238%_))))))
                              (let ()
                                (declare (not safe))
                                (_%$%g214114214238%_))))))))
                 (_%generate1213961%_
                  (lambda (_%args214092%_
                           _%arglen214093%_
                           _%hd214094%_
                           _%body214095%_)
                    (let* ((_%len214097%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd214094%_)))
                           (_%condition214102%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd214094%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen214093%_
                                                (cons _%len214097%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen214093%_ (cons _%len214097%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len214097%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen214093%_
                                                    (cons _%len214097%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen214093%_ (cons _%len214097%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch214104%_
                            (if (_%dispatch-case?213959%_
                                 _%hd214094%_
                                 _%body214095%_)
                                (_%dispatch-case-e213960%_
                                 _%hd214094%_
                                 _%body214095%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self213956%_
                                 _%hd214094%_
                                 _%body214095%_))))
                      (cons _%condition214102%_
                            (cons (cons 'apply
                                        (cons _%dispatch214104%_
                                              (cons _%args214092%_ '())))
                                  '()))))))
          (let* ((_%$%g213963213991%_
                  (lambda (_%$%g213964213988%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g213964213988%_))))
                 (_%$%g213962214089%_
                  (lambda (_%$%g213964213994%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g213964213994%_))
                        (let ((_%$%e213967213996%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g213964213994%_))))
                          (let ((_%$%hd213968213999%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e213967213996%_)))
                                (_%$%tl213969214001%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e213967213996%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%$%tl213969214001%_))
                                (let ((_g218205_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%$%tl213969214001%_
                                          '0))))
                                  (begin
                                    (let ((_g218206_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g218205_)
                                                 (##values-length _g218205_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g218206_ 2)))
                                          (error "Context expects 2 values"
                                                 _g218206_)))
                                    (let ((_%$%target213970214004%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g218205_ 0)))
                                          (_%$%tl213972214006%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g218205_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl213972214006%_))
                                          (letrec ((_%$%loop213973214009%_
                                                    (lambda (_%$%hd213971214012%_
                                                             _%$%body213977214014%_
                                                             _%$%hd213978214015%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%hd213971214012%_))
                                                          (let ((_%$%e213974214017%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%hd213971214012%_))))
                    (let ((_%$%lp-hd213975214020%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e213974214017%_)))
                          (_%$%lp-tl213976214022%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e213974214017%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%lp-hd213975214020%_))
                          (let ((_%$%e213981214025%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%lp-hd213975214020%_))))
                            (let ((_%$%hd213982214028%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e213981214025%_)))
                                  (_%$%tl213983214030%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e213981214025%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl213983214030%_))
                                  (let ((_%$%e213984214033%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl213983214030%_))))
                                    (let ((_%$%hd213985214036%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e213984214033%_)))
                                          (_%$%tl213986214038%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e213984214033%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl213986214038%_))
                                          (_%$%loop213973214009%_
                                           _%$%lp-tl213976214022%_
                                           (cons _%$%hd213985214036%_
                                                 _%$%body213977214014%_)
                                           (cons _%$%hd213982214028%_
                                                 _%$%hd213978214015%_))
                                          (_%$%g213963213991%_
                                           _%$%g213964213994%_))))
                                  (_%$%g213963213991%_ _%$%g213964213994%_))))
                          (_%$%g213963213991%_ _%$%g213964213994%_))))
                  (let ((_%$%body213979214041%_
                         (reverse _%$%body213977214014%_))
                        (_%$%hd213980214042%_ (reverse _%$%hd213978214015%_)))
                    (let ((_%args214064%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__0)))
                          (_%arglen214065%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__0)))
                          (_%name214066%_
                           (let ((_%$e214061%_
                                  (let ((__tmp218207
                                         (let ()
                                           (declare (not safe))
                                           (gxc#current-compile-runtime-names))))
                                    (declare (not safe))
                                    (hash-get __tmp218207 _%stx213957%_))))
                             (if _%$e214061%_
                                 _%$e214061%_
                                 ''case-lambda-dispatch))))
                      (cons 'lambda
                            (cons _%args214064%_
                                  (cons (cons 'let
                                              (cons (cons (cons _%arglen214065%_
                                                                (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '##length (cons _%args214064%_ '()))
                                  (cons 'let
                                        (cons '()
                                              (cons '(declare (not safe))
                                                    (cons (cons '##length
                                                                (cons _%args214064%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '()))
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons 'cond
                                                                (let ((__tmp218209
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (map (lambda (_%$%g214067214070%_
                                             _%$%g214068214072%_)
                                      (_%generate1213961%_
                                       _%args214064%_
                                       _%arglen214065%_
                                       _%$%g214067214070%_
                                       _%$%g214068214072%_))
                                    (let ((__tmp218210
                                           (lambda (_%$%g214074214077%_
                                                    _%$%g214075214079%_)
                                             (cons _%$%g214074214077%_
                                                   _%$%g214075214079%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp218210
                                       '()
                                       _%$%hd213980214042%_))
                                    (let ((__tmp218211
                                           (lambda (_%$%g214081214084%_
                                                    _%$%g214082214086%_)
                                             (cons _%$%g214081214084%_
                                                   _%$%g214082214086%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp218211
                                       '()
                                       _%$%body213979214041%_))))
                              (__tmp218208
                               (cons (cons 'else
                                           (cons (cons '##raise-wrong-number-of-arguments-exception
                                                       (cons _%name214066%_
                                                             (cons _%args214064%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())))
                          (declare (not safe))
                          (##append __tmp218209 __tmp218208)))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%loop213973214009%_
                                             _%$%target213970214004%_
                                             '()
                                             '()))
                                          (_%$%g213963213991%_
                                           _%$%g213964213994%_)))))
                                (_%$%g213963213991%_ _%$%g213964213994%_))))
                        (_%$%g213963213991%_ _%$%g213964213994%_)))))
            (_%$%g213962214089%_ _%stx213957%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self213193%_ _%stx213194%_ _%compiled-body?213195%_)
        (letrec ((_%generate-simple213197%_
                  (lambda (_%hd213941%_ _%body213942%_)
                    (_%coalesce-boolean213198%_
                     (_%simplify-let213199%_
                      (gxc#generate-runtime-simple-let
                       _%self213193%_
                       'let
                       _%hd213941%_
                       _%body213942%_
                       _%compiled-body?213195%_)))))
                 (_%coalesce-boolean213198%_
                  (lambda (_%code213802%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%$%code213803213829%_ _%code213802%_)
                               (_%$%else213805213837%_
                                (lambda () _%code213802%_))
                               (_%$%K213807213874%_
                                (lambda (_%expr2213840%_
                                         _%expr1213841%_
                                         _%id213842%_)
                                  (let* ((_%$%expr2213843213851%_
                                          _%expr2213840%_)
                                         (_%$%else213845213859%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1213841%_
                                                        (cons _%expr2213840%_
                                                              '())))))
                                         (_%$%K213847213864%_
                                          (lambda (_%exprs213862%_)
                                            (cons 'or
                                                  (cons _%expr1213841%_
                                                        _%exprs213862%_)))))
                                    (if (pair? _%$%expr2213843213851%_)
                                        (let ((_%$%hd213848213867%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%expr2213843213851%_)))
                                              (_%$%tl213849213869%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%expr2213843213851%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%$%hd213848213867%_
                                                       'or))
                                              (let ((_%exprs213872%_
                                                     _%$%tl213849213869%_))
                                                (_%$%K213847213864%_
                                                 _%exprs213872%_))
                                              (_%$%else213845213859%_)))
                                        (_%$%else213845213859%_))))))
                          (if (pair? _%$%code213803213829%_)
                              (let ((_%$%hd213808213877%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%code213803213829%_)))
                                    (_%$%tl213809213879%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%code213803213829%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%$%hd213808213877%_ 'let))
                                    (if (pair? _%$%tl213809213879%_)
                                        (let ((_%$%hd213810213882%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%tl213809213879%_)))
                                              (_%$%tl213811213884%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%tl213809213879%_))))
                                          (if (pair? _%$%hd213810213882%_)
                                              (let ((_%$%hd213822213887%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%hd213810213882%_)))
                                                    (_%$%tl213823213889%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%hd213810213882%_))))
                                                (if (pair? _%$%hd213822213887%_)
                                                    (let ((_%$%hd213824213892%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%hd213822213887%_)))
                                                          (_%$%tl213825213894%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%hd213822213887%_))))
                                                      (let ((_%id213897%_
                                                             _%$%hd213824213892%_))
                                                        (if (pair? _%$%tl213825213894%_)
                                                            (let ((_%$%hd213826213899%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%$%tl213825213894%_)))
                          (_%$%tl213827213901%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%tl213825213894%_))))
                      (let ((_%expr1213904%_ _%$%hd213826213899%_))
                        (if (null? _%$%tl213827213901%_)
                            (if (null? _%$%tl213823213889%_)
                                (if (pair? _%$%tl213811213884%_)
                                    (let ((_%$%hd213812213906%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%tl213811213884%_)))
                                          (_%$%tl213813213908%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%tl213811213884%_))))
                                      (if (pair? _%$%hd213812213906%_)
                                          (let ((_%$%hd213814213911%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%hd213812213906%_)))
                                                (_%$%tl213815213913%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%hd213812213906%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%$%hd213814213911%_
                                                         'if))
                                                (if (pair? _%$%tl213815213913%_)
                                                    (let ((_%$%hd213816213916%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%tl213815213913%_)))
                                                          (_%$%tl213817213918%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%tl213815213913%_))))
                                                      (if (eq? _%$%hd213816213916%_
                                                               _%id213897%_)
                                                          (if (pair? _%$%tl213817213918%_)
                                                              (let ((_%$%hd213818213925%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##car _%$%tl213817213918%_)))
                            (_%$%tl213819213927%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%tl213817213918%_))))
                        (if (eq? _%$%hd213818213925%_ _%id213897%_)
                            (if (pair? _%$%tl213819213927%_)
                                (let ((_%$%hd213820213934%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%tl213819213927%_)))
                                      (_%$%tl213821213936%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%tl213819213927%_))))
                                  (let ((_%expr2213939%_ _%$%hd213820213934%_))
                                    (if (null? _%$%tl213821213936%_)
                                        (if (null? _%$%tl213813213908%_)
                                            (_%$%K213807213874%_
                                             _%expr2213939%_
                                             _%expr1213904%_
                                             _%id213897%_)
                                            (_%$%else213805213837%_))
                                        (_%$%else213805213837%_))))
                                (_%$%else213805213837%_))
                            (_%$%else213805213837%_)))
                      (_%$%else213805213837%_))
                  (_%$%else213805213837%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%else213805213837%_))
                                                (_%$%else213805213837%_)))
                                          (_%$%else213805213837%_)))
                                    (_%$%else213805213837%_))
                                (_%$%else213805213837%_))
                            (_%$%else213805213837%_))))
                    (_%$%else213805213837%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%else213805213837%_)))
                                              (_%$%else213805213837%_)))
                                        (_%$%else213805213837%_))
                                    (_%$%else213805213837%_)))
                              (_%$%else213805213837%_)))
                        _%code213802%_)))
                 (_%simplify-let213199%_
                  (lambda (_%code213501%_)
                    (let* ((_%$%code213502213574%_ _%code213501%_)
                           (_%$%else213507213582%_ (lambda () _%code213501%_)))
                      (let ((_%$%K213566213782%_
                             (lambda (_%expr213780%_) _%expr213780%_))
                            (_%$%K213549213728%_
                             (lambda (_%body213724%_
                                      _%expr213725%_
                                      _%id213726%_)
                               (cons 'let
                                     (cons (cons (cons _%id213726%_
                                                       (cons _%expr213725%_
                                                             '()))
                                                 '())
                                           _%body213724%_))))
                            (_%$%K213526213652%_
                             (lambda (_%body213646%_
                                      _%expr2213647%_
                                      _%id2213648%_
                                      _%expr1213649%_
                                      _%id1213650%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1213650%_
                                                       (cons _%expr1213649%_
                                                             '()))
                                                 (cons (cons _%id2213648%_
                                                             (cons _%expr2213647%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body213646%_))))
                            (_%$%K213509213591%_
                             (lambda (_%body213586%_
                                      _%bind213587%_
                                      _%expr1213588%_
                                      _%id1213589%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1213589%_
                                                       (cons _%expr1213588%_
                                                             '()))
                                                 _%bind213587%_)
                                           _%body213586%_)))))
                        (if (pair? _%$%code213502213574%_)
                            (let ((_%$%tl213568213787%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%code213502213574%_)))
                                  (_%$%hd213567213785%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%code213502213574%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%$%hd213567213785%_ 'let))
                                  (if (pair? _%$%tl213568213787%_)
                                      (let ((_%$%tl213570213792%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%tl213568213787%_)))
                                            (_%$%hd213569213790%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%tl213568213787%_))))
                                        (if (null? _%$%hd213569213790%_)
                                            (if (pair? _%$%tl213570213792%_)
                                                (let ((_%$%tl213572213797%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%tl213570213792%_)))
                                                      (_%$%hd213571213795%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%tl213570213792%_))))
                                                  (if (null? _%$%tl213572213797%_)
                                                      (let ((_%expr213800%_
                                                             _%$%hd213571213795%_))
                                                        (_%$%K213566213782%_
                                                         _%expr213800%_))
                                                      (_%$%else213507213582%_)))
                                                (_%$%else213507213582%_))
                                            (if (pair? _%$%hd213569213790%_)
                                                (let ((_%$%tl213561213743%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%hd213569213790%_)))
                                                      (_%$%hd213560213741%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%hd213569213790%_))))
                                                  (if (pair? _%$%hd213560213741%_)
                                                      (let ((_%$%tl213563213748%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%hd213560213741%_)))
                    (_%$%hd213562213746%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%hd213560213741%_))))
                (if (pair? _%$%tl213563213748%_)
                    (let ((_%$%tl213565213755%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%tl213563213748%_)))
                          (_%$%hd213564213753%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%tl213563213748%_))))
                      (if (null? _%$%tl213565213755%_)
                          (if (null? _%$%tl213561213743%_)
                              (if (pair? _%$%tl213570213792%_)
                                  (let ((_%$%tl213555213762%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl213570213792%_)))
                                        (_%$%hd213554213760%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%tl213570213792%_))))
                                    (if (pair? _%$%hd213554213760%_)
                                        (let ((_%$%tl213557213767%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%hd213554213760%_)))
                                              (_%$%hd213556213765%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%hd213554213760%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%$%hd213556213765%_
                                                       'let))
                                              (if (pair? _%$%tl213557213767%_)
                                                  (let ((_%$%tl213559213772%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%tl213557213767%_)))
                                                        (_%$%hd213558213770%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%tl213557213767%_))))
                                                    (if (null? _%$%hd213558213770%_)
                                                        (if (null? _%$%tl213555213762%_)
                                                            (let ((_%id213751%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%hd213562213746%_)
                          (_%expr213758%_ _%$%hd213564213753%_)
                          (_%body213775%_ _%$%tl213559213772%_))
                      (_%$%K213549213728%_
                       _%body213775%_
                       _%expr213758%_
                       _%id213751%_))
                    (_%$%else213507213582%_))
                (if (pair? _%$%hd213558213770%_)
                    (let ((_%$%tl213538213701%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%hd213558213770%_)))
                          (_%$%hd213537213699%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%hd213558213770%_))))
                      (if (pair? _%$%hd213537213699%_)
                          (let ((_%$%tl213540213706%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%hd213537213699%_)))
                                (_%$%hd213539213704%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%hd213537213699%_))))
                            (if (pair? _%$%tl213540213706%_)
                                (let ((_%$%tl213542213713%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%tl213540213706%_)))
                                      (_%$%hd213541213711%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%tl213540213706%_))))
                                  (if (null? _%$%tl213542213713%_)
                                      (if (null? _%$%tl213538213701%_)
                                          (if (null? _%$%tl213555213762%_)
                                              (let ((_%id1213675%_
                                                     _%$%hd213562213746%_)
                                                    (_%expr1213682%_
                                                     _%$%hd213564213753%_)
                                                    (_%id2213709%_
                                                     _%$%hd213539213704%_)
                                                    (_%expr2213716%_
                                                     _%$%hd213541213711%_)
                                                    (_%body213718%_
                                                     _%$%tl213559213772%_))
                                                (_%$%K213526213652%_
                                                 _%body213718%_
                                                 _%expr2213716%_
                                                 _%id2213709%_
                                                 _%expr1213682%_
                                                 _%id1213675%_))
                                              (_%$%else213507213582%_))
                                          (_%$%else213507213582%_))
                                      (_%$%else213507213582%_)))
                                (_%$%else213507213582%_)))
                          (_%$%else213507213582%_)))
                    (_%$%else213507213582%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%else213507213582%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%$%hd213556213765%_
                                                           'let*))
                                                  (if (pair? _%$%tl213557213767%_)
                                                      (let ((_%$%tl213519213635%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%tl213557213767%_)))
                    (_%$%hd213518213633%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%tl213557213767%_))))
                (if (null? _%$%tl213555213762%_)
                    (let ((_%id1213614%_ _%$%hd213562213746%_)
                          (_%expr1213621%_ _%$%hd213564213753%_)
                          (_%bind213638%_ _%$%hd213518213633%_)
                          (_%body213640%_ _%$%tl213519213635%_))
                      (_%$%K213509213591%_
                       _%body213640%_
                       _%bind213638%_
                       _%expr1213621%_
                       _%id1213614%_))
                    (_%$%else213507213582%_)))
              (_%$%else213507213582%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%else213507213582%_))))
                                        (_%$%else213507213582%_)))
                                  (_%$%else213507213582%_))
                              (_%$%else213507213582%_))
                          (_%$%else213507213582%_)))
                    (_%$%else213507213582%_)))
              (_%$%else213507213582%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%else213507213582%_))))
                                      (_%$%else213507213582%_))
                                  (_%$%else213507213582%_)))
                            (_%$%else213507213582%_))))))
                 (_%generate-values213200%_
                  (lambda (_%hd213314%_ _%body213315%_)
                    (let _%lp213317%_ ((_%rest213319%_ _%hd213314%_)
                                       (_%bind213320%_ '())
                                       (_%check213321%_ '())
                                       (_%post213322%_ '()))
                      (let* ((_%__stx217367217368%_ _%rest213319%_)
                             (_%$%g213325213336%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx217367217368%_)))))
                        (let ((_%__kont217369217370%_
                               (lambda (_%$%g213327213363%_
                                        _%$%g213328213364%_)
                                 (let* ((_%__stx217323217324%_
                                         _%$%g213328213364%_)
                                        (_%$%g213379213404%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx217323217324%_)))))
                                   (let ((_%__kont217325217326%_
                                          (lambda (_%$%g213381213477%_
                                                   _%$%g213382213478%_)
                                            (let ((_%eid213492%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%$%g213382213478%_)))
                                                  (_%expr213493%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self213193%_
                                                      _%$%g213381213477%_))))
                                              (_%lp213317%_
                                               _%$%g213327213363%_
                                               (cons (cons _%eid213492%_
                                                           (cons _%expr213493%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind213320%_)
                                               _%check213321%_
                                               _%post213322%_))))
                                         (_%__kont217327217328%_
                                          (lambda (_%$%g213392213425%_
                                                   _%$%g213393213426%_)
                                            (let* ((_%vals213439%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values213441%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals213439%_
                                                     _%$%g213393213426%_
                                                     _%$%g213392213425%_))
                                                   (_%refs213443%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals213439%_
                                                     _%$%g213393213426%_))
                                                   (_%expr213445%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self213193%_
                                                       _%$%g213392213425%_))))
                                              (_%lp213317%_
                                               _%$%g213327213363%_
                                               (cons (cons _%vals213439%_
                                                           (cons _%expr213445%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind213320%_)
                                               (cons _%check-values213441%_
                                                     _%check213321%_)
                                               (cons _%refs213443%_
                                                     _%post213322%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx217323217324%_))
                                         (let ((_%$%e213383213453%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx217323217324%_))))
                                           (let ((_%$%tl213385213458%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e213383213453%_)))
                                                 (_%$%hd213384213456%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e213383213453%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%hd213384213456%_))
                                                 (let ((_%$%e213386213461%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%hd213384213456%_))))
                                                   (let ((_%$%tl213388213466%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e213386213461%_)))
                                                         (_%$%hd213387213464%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e213386213461%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%$%tl213388213466%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%tl213385213458%_))
                     (let ((_%$%e213389213469%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl213385213458%_))))
                       (let ((_%$%tl213391213474%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e213389213469%_)))
                             (_%$%hd213390213472%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e213389213469%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl213391213474%_))
                             (_%__kont217325217326%_
                              _%$%hd213390213472%_
                              _%$%hd213387213464%_)
                             (let ()
                               (declare (not safe))
                               (_%$%g213379213404%_)))))
                     (let () (declare (not safe)) (_%$%g213379213404%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%$%tl213385213458%_))
                     (let ((_%$%e213397213417%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl213385213458%_))))
                       (let ((_%$%tl213399213422%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e213397213417%_)))
                             (_%$%hd213398213420%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e213397213417%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl213399213422%_))
                             (_%__kont217327217328%_
                              _%$%hd213398213420%_
                              _%$%hd213384213456%_)
                             (let ()
                               (declare (not safe))
                               (_%$%g213379213404%_)))))
                     (let () (declare (not safe)) (_%$%g213379213404%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl213385213458%_))
                                                     (let ((_%$%e213397213417%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl213385213458%_))))
                                                       (let ((_%$%tl213399213422%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e213397213417%_)))
                     (_%$%hd213398213420%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%e213397213417%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl213399213422%_))
                     (_%__kont217327217328%_
                      _%$%hd213398213420%_
                      _%$%hd213384213456%_)
                     (let () (declare (not safe)) (_%$%g213379213404%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%$%g213379213404%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%$%g213379213404%_)))))))
                              (_%__kont217371217372%_
                               (lambda ()
                                 (let* ((_%body213343%_
                                         (if _%compiled-body?213195%_
                                             _%body213315%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self213193%_
                                                _%body213315%_))))
                                        (_%body213345%_
                                         (_%generate-values-post213201%_
                                          _%post213322%_
                                          _%body213343%_))
                                        (_%body213347%_
                                         (_%generate-values-check213202%_
                                          _%check213321%_
                                          _%body213345%_)))
                                   (cons 'let
                                         (cons (reverse _%bind213320%_)
                                               (cons _%body213347%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx217367217368%_))
                              (let ((_%$%e213329213355%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx217367217368%_))))
                                (let ((_%$%tl213331213360%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e213329213355%_)))
                                      (_%$%hd213330213358%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e213329213355%_))))
                                  (_%__kont217369217370%_
                                   _%$%tl213331213360%_
                                   _%$%hd213330213358%_)))
                              (_%__kont217371217372%_)))))))
                 (_%generate-values-post213201%_
                  (lambda (_%post213273%_ _%body213274%_)
                    (let _%lp213276%_ ((_%rest213278%_ _%post213273%_)
                                       (_%body213279%_ _%body213274%_))
                      (let* ((_%$%rest213280213288%_ _%rest213278%_)
                             (_%$%else213282213296%_
                              (lambda () _%body213279%_))
                             (_%$%K213284213302%_
                              (lambda (_%rest213299%_ _%bind213300%_)
                                (_%lp213276%_
                                 _%rest213299%_
                                 (cons 'let
                                       (cons _%bind213300%_
                                             (cons _%body213279%_ '())))))))
                        (if (pair? _%$%rest213280213288%_)
                            (let ((_%$%hd213285213305%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest213280213288%_)))
                                  (_%$%tl213286213307%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest213280213288%_))))
                              (let* ((_%bind213310%_ _%$%hd213285213305%_)
                                     (_%rest213312%_ _%$%tl213286213307%_))
                                (_%$%K213284213302%_
                                 _%rest213312%_
                                 _%bind213310%_)))
                            (_%$%else213282213296%_))))))
                 (_%generate-values-check213202%_
                  (lambda (_%check213270%_ _%body213271%_)
                    (cons 'begin
                          (let ((__tmp218213 (reverse _%check213270%_))
                                (__tmp218212 (cons _%body213271%_ '())))
                            (declare (not safe))
                            (##append __tmp218213 __tmp218212))))))
          (let* ((_%$%g213204213221%_
                  (lambda (_%$%g213205213218%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g213205213218%_))))
                 (_%$%g213203213267%_
                  (lambda (_%$%g213205213224%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g213205213224%_))
                        (let ((_%$%e213208213226%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g213205213224%_))))
                          (let ((_%$%hd213209213229%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e213208213226%_)))
                                (_%$%tl213210213231%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e213208213226%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl213210213231%_))
                                (let ((_%$%e213211213234%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl213210213231%_))))
                                  (let ((_%$%hd213212213237%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e213211213234%_)))
                                        (_%$%tl213213213239%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e213211213234%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl213213213239%_))
                                        (let ((_%$%e213214213242%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl213213213239%_))))
                                          (let ((_%$%hd213215213245%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e213214213242%_)))
                                                (_%$%tl213216213247%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e213214213242%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl213216213247%_))
                                                (if (gxc#generate-runtime-simple-let?
                                                     _%$%hd213212213237%_)
                                                    (_%generate-simple213197%_
                                                     _%$%hd213212213237%_
                                                     _%$%hd213215213245%_)
                                                    (_%generate-values213200%_
                                                     _%$%hd213212213237%_
                                                     _%$%hd213215213245%_))
                                                (_%$%g213204213221%_
                                                 _%$%g213205213224%_))))
                                        (_%$%g213204213221%_
                                         _%$%g213205213224%_))))
                                (_%$%g213204213221%_ _%$%g213205213224%_))))
                        (_%$%g213204213221%_ _%$%g213205213224%_)))))
            (_%$%g213203213267%_ _%stx213194%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self213947%_ _%stx213948%_)
        (let ((_%compiled-body?213950%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self213947%_
           _%stx213948%_
           _%compiled-body?213950%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g218214_
        (let ((_g218215_ (let () (declare (not safe)) (##length _g218214_))))
          (cond ((let () (declare (not safe)) (##fx= _g218215_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g218214_))
                ((let () (declare (not safe)) (##fx= _g218215_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g218214_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g218214_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals213087%_ _%hd213088%_)
        (let _%lp213090%_ ((_%rest213092%_ _%hd213088%_)
                           (_%k213093%_ '0)
                           (_%r213094%_ '()))
          (let* ((_%__stx217381217382%_ _%rest213092%_)
                 (_%$%g213099213116%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx217381217382%_)))))
            (let ((_%__kont217383217384%_
                   (lambda (_%$%g213101213179%_)
                     (_%lp213090%_
                      _%$%g213101213179%_
                      (let () (declare (not safe)) (##fx+ _%k213093%_ '1))
                      _%r213094%_)))
                  (_%__kont217385217386%_
                   (lambda (_%$%g213106213152%_ _%$%g213107213153%_)
                     (_%lp213090%_
                      _%$%g213106213152%_
                      (let () (declare (not safe)) (##fx+ _%k213093%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%$%g213107213153%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals213087%_
                                         _%k213093%_
                                         _%$%g213106213152%_)
                                        '()))
                            _%r213094%_))))
                  (_%__kont217387217388%_
                   (lambda (_%$%g213111213128%_)
                     (let ((__tmp218216
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%$%g213111213128%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals213087%_
                                               _%k213093%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (foldl__0 cons __tmp218216 _%r213094%_))))
                  (_%__kont217389217390%_ (lambda () (reverse _%r213094%_))))
              (let ((_%$%g213097213139%_
                     (lambda ()
                       (let ((_%$%g213111213128%_ _%__stx217381217382%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%$%g213111213128%_))
                             (_%__kont217387217388%_ _%$%g213111213128%_)
                             (_%__kont217389217390%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx217381217382%_))
                    (let ((_%$%e213102213168%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx217381217382%_))))
                      (let ((_%$%tl213104213173%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e213102213168%_)))
                            (_%$%hd213103213171%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e213102213168%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%$%hd213103213171%_))
                            (let ((_%$%e213105213176%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd213103213171%_))))
                              (if (equal? _%$%e213105213176%_ '#f)
                                  (_%__kont217383217384%_ _%$%tl213104213173%_)
                                  (_%__kont217385217386%_
                                   _%$%tl213104213173%_
                                   _%$%hd213103213171%_)))
                            (_%__kont217385217386%_
                             _%$%tl213104213173%_
                             _%$%hd213103213171%_))))
                    (let () (declare (not safe)) (_%$%g213097213139%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self212766%_ _%stx212767%_ _%compiled-body?212768%_)
        (letrec ((_%generate-simple212770%_
                  (lambda (_%hd213072%_ _%body213073%_)
                    (gxc#generate-runtime-simple-let
                     _%self212766%_
                     'letrec
                     _%hd213072%_
                     _%body213073%_
                     _%compiled-body?212768%_)))
                 (_%generate-values212771%_
                  (lambda (_%hd212851%_ _%body212852%_)
                    (let _%lp212854%_ ((_%rest212856%_ _%hd212851%_)
                                       (_%bind212857%_ '())
                                       (_%check212858%_ '())
                                       (_%post212859%_ '()))
                      (let* ((_%__stx217455217456%_ _%rest212856%_)
                             (_%$%g212862212873%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx217455217456%_)))))
                        (let ((_%__kont217457217458%_
                               (lambda (_%$%g212864212900%_
                                        _%$%g212865212901%_)
                                 (let* ((_%__stx217411217412%_
                                         _%$%g212865212901%_)
                                        (_%$%g212916212941%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx217411217412%_)))))
                                   (let ((_%__kont217413217414%_
                                          (lambda (_%$%g212918213048%_
                                                   _%$%g212919213049%_)
                                            (let ((_%eid213063%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%$%g212919213049%_)))
                                                  (_%expr213064%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self212766%_
                                                      _%$%g212918213048%_))))
                                              (_%lp212854%_
                                               _%$%g212864212900%_
                                               (cons (cons _%eid213063%_
                                                           (cons _%expr213064%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind212857%_)
                                               _%check212858%_
                                               _%post212859%_))))
                                         (_%__kont217415217416%_
                                          (lambda (_%$%g212929212962%_
                                                   _%$%g212930212963%_)
                                            (let* ((_%vals212976%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values212978%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals212976%_
                                                     _%$%g212930212963%_
                                                     _%$%g212929212962%_))
                                                   (_%refs212980%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals212976%_
                                                     _%$%g212930212963%_))
                                                   (_%expr212982%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self212766%_
                                                       _%$%g212929212962%_))))
                                              (_%lp212854%_
                                               _%$%g212864212900%_
                                               (let ((__tmp218218
                                                      (cons (cons _%vals212976%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr212982%_ '()))
                    _%bind212857%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp218217
                                                      (map (lambda (_%$%e212984212986%_)
                                                             (let* ((_%$%$%e212984212988212997%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%e212984212986%_)
                            (_%$%E212990213001%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%$%$%e212984212988212997%_
                                        '([eid _])))
                               '#!void))
                            (_%$%K212991213006%_
                             (lambda (_%eid213004%_)
                               (cons _%eid213004%_ (cons '#!void '())))))
                       (if (pair? _%$%$%e212984212988212997%_)
                           (let ((_%$%hd212992213009%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$%e212984212988212997%_)))
                                 (_%$%tl212993213011%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$%e212984212988212997%_))))
                             (let ((_%eid213014%_ _%$%hd212992213009%_))
                               (if (pair? _%$%tl212993213011%_)
                                   (let ((_%$%tl212995213016%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%tl212993213011%_))))
                                     (if (null? _%$%tl212995213016%_)
                                         (_%$%K212991213006%_ _%eid213014%_)
                                         (_%$%E212990213001%_)))
                                   (_%$%E212990213001%_))))
                           (_%$%E212990213001%_))))
                   _%refs212980%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  __tmp218218
                                                  __tmp218217))
                                               (cons _%check-values212978%_
                                                     _%check212858%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  _%refs212980%_
                                                  _%post212859%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx217411217412%_))
                                         (let ((_%$%e212920213024%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx217411217412%_))))
                                           (let ((_%$%tl212922213029%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e212920213024%_)))
                                                 (_%$%hd212921213027%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e212920213024%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%hd212921213027%_))
                                                 (let ((_%$%e212923213032%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%hd212921213027%_))))
                                                   (let ((_%$%tl212925213037%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e212923213032%_)))
                                                         (_%$%hd212924213035%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e212923213032%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%$%tl212925213037%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%tl212922213029%_))
                     (let ((_%$%e212926213040%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl212922213029%_))))
                       (let ((_%$%tl212928213045%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e212926213040%_)))
                             (_%$%hd212927213043%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e212926213040%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl212928213045%_))
                             (_%__kont217413217414%_
                              _%$%hd212927213043%_
                              _%$%hd212924213035%_)
                             (let ()
                               (declare (not safe))
                               (_%$%g212916212941%_)))))
                     (let () (declare (not safe)) (_%$%g212916212941%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%$%tl212922213029%_))
                     (let ((_%$%e212934212954%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl212922213029%_))))
                       (let ((_%$%tl212936212959%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e212934212954%_)))
                             (_%$%hd212935212957%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e212934212954%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl212936212959%_))
                             (_%__kont217415217416%_
                              _%$%hd212935212957%_
                              _%$%hd212921213027%_)
                             (let ()
                               (declare (not safe))
                               (_%$%g212916212941%_)))))
                     (let () (declare (not safe)) (_%$%g212916212941%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl212922213029%_))
                                                     (let ((_%$%e212934212954%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl212922213029%_))))
                                                       (let ((_%$%tl212936212959%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e212934212954%_)))
                     (_%$%hd212935212957%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%e212934212954%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl212936212959%_))
                     (_%__kont217415217416%_
                      _%$%hd212935212957%_
                      _%$%hd212921213027%_)
                     (let () (declare (not safe)) (_%$%g212916212941%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%$%g212916212941%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%$%g212916212941%_)))))))
                              (_%__kont217459217460%_
                               (lambda ()
                                 (let* ((_%body212880%_
                                         (if _%compiled-body?212768%_
                                             _%body212852%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self212766%_
                                                _%body212852%_))))
                                        (_%body212882%_
                                         (_%generate-values-post212773%_
                                          _%post212859%_
                                          _%body212880%_))
                                        (_%body212884%_
                                         (_%generate-values-check212772%_
                                          _%check212858%_
                                          _%body212882%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind212857%_)
                                               (cons _%body212884%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx217455217456%_))
                              (let ((_%$%e212866212892%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx217455217456%_))))
                                (let ((_%$%tl212868212897%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e212866212892%_)))
                                      (_%$%hd212867212895%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e212866212892%_))))
                                  (_%__kont217457217458%_
                                   _%$%tl212868212897%_
                                   _%$%hd212867212895%_)))
                              (_%__kont217459217460%_)))))))
                 (_%generate-values-check212772%_
                  (lambda (_%check212848%_ _%body212849%_)
                    (cons 'begin
                          (let ((__tmp218220 (reverse _%check212848%_))
                                (__tmp218219 (cons _%body212849%_ '())))
                            (declare (not safe))
                            (##append __tmp218220 __tmp218219)))))
                 (_%generate-values-post212773%_
                  (lambda (_%post212841%_ _%body212842%_)
                    (cons 'begin
                          (let ((__tmp218222
                                 (let ((__tmp218224
                                        (lambda (_%$%g212843212845%_)
                                          (cons 'set! _%$%g212843212845%_)))
                                       (__tmp218223 (reverse _%post212841%_)))
                                   (declare (not safe))
                                   (##map __tmp218224 __tmp218223)))
                                (__tmp218221 (cons _%body212842%_ '())))
                            (declare (not safe))
                            (##append __tmp218222 __tmp218221))))))
          (let* ((_%$%g212775212792%_
                  (lambda (_%$%g212776212789%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g212776212789%_))))
                 (_%$%g212774212838%_
                  (lambda (_%$%g212776212795%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g212776212795%_))
                        (let ((_%$%e212779212797%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g212776212795%_))))
                          (let ((_%$%hd212780212800%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e212779212797%_)))
                                (_%$%tl212781212802%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e212779212797%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl212781212802%_))
                                (let ((_%$%e212782212805%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl212781212802%_))))
                                  (let ((_%$%hd212783212808%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e212782212805%_)))
                                        (_%$%tl212784212810%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e212782212805%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl212784212810%_))
                                        (let ((_%$%e212785212813%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl212784212810%_))))
                                          (let ((_%$%hd212786212816%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e212785212813%_)))
                                                (_%$%tl212787212818%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e212785212813%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl212787212818%_))
                                                (if (gxc#generate-runtime-simple-let?
                                                     _%$%hd212783212808%_)
                                                    (_%generate-simple212770%_
                                                     _%$%hd212783212808%_
                                                     _%$%hd212786212816%_)
                                                    (_%generate-values212771%_
                                                     _%$%hd212783212808%_
                                                     _%$%hd212786212816%_))
                                                (_%$%g212775212792%_
                                                 _%$%g212776212795%_))))
                                        (_%$%g212775212792%_
                                         _%$%g212776212795%_))))
                                (_%$%g212775212792%_ _%$%g212776212795%_))))
                        (_%$%g212775212792%_ _%$%g212776212795%_)))))
            (_%$%g212774212838%_ _%stx212767%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self213078%_ _%stx213079%_)
        (let ((_%compiled-body?213081%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self213078%_
           _%stx213079%_
           _%compiled-body?213081%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g218225_
        (let ((_g218226_ (let () (declare (not safe)) (##length _g218225_))))
          (cond ((let () (declare (not safe)) (##fx= _g218226_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g218225_))
                ((let () (declare (not safe)) (##fx= _g218226_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g218225_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g218225_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self212347%_ _%stx212348%_)
        (letrec ((_%generate-values212350%_
                  (lambda (_%hd212593%_ _%body212594%_)
                    (let _%lp212596%_ ((_%rest212598%_ _%hd212593%_)
                                       (_%bind212599%_ '()))
                      (let* ((_%$%rest212600212608%_ _%rest212598%_)
                             (_%$%else212602212619%_
                              (lambda ()
                                (let ((_%bind212616%_ (reverse _%bind212599%_))
                                      (_%body212617%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self212347%_
                                          _%body212594%_))))
                                  (cons 'letrec*
                                        (cons _%bind212616%_
                                              (cons _%body212617%_ '()))))))
                             (_%$%K212604212753%_
                              (lambda (_%rest212622%_ _%hd-bind212623%_)
                                (let* ((_%__stx217469217470%_
                                        _%hd-bind212623%_)
                                       (_%$%g212626212651%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx217469217470%_)))))
                                  (let ((_%__kont217471217472%_
                                         (lambda (_%$%g212628212732%_
                                                  _%$%g212629212733%_)
                                           (let ((_%eid212747%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%$%g212629212733%_)))
                                                 (_%expr212748%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self212347%_
                                                     _%$%g212628212732%_))))
                                             (_%lp212596%_
                                              _%rest212622%_
                                              (cons (cons _%eid212747%_
                                                          (cons _%expr212748%_
                                                                '()))
                                                    _%bind212599%_)))))
                                        (_%__kont217473217474%_
                                         (lambda (_%$%g212639212672%_
                                                  _%$%g212640212673%_)
                                           (let* ((_%vals212692%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp212694%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values212696%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp212694%_
                                                    _%$%g212640212673%_
                                                    _%$%g212639212672%_))
                                                  (_%refs212698%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals212692%_
                                                    _%$%g212640212673%_))
                                                  (_%expr212700%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self212347%_
                                                      _%$%g212639212672%_))))
                                             (_%lp212596%_
                                              _%rest212622%_
                                              (let ((__tmp218227
                                                     (cons (cons _%vals212692%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp212694%_
                                                       (cons _%expr212700%_
                                                             '()))
                                                 '())
                                           (cons _%check-values212696%_
                                                 (cons _%tmp212694%_ '()))))
                               '()))
                   _%bind212599%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp218227
                                                 _%refs212698%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx217469217470%_))
                                        (let ((_%$%e212630212708%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx217469217470%_))))
                                          (let ((_%$%tl212632212713%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e212630212708%_)))
                                                (_%$%hd212631212711%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e212630212708%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd212631212711%_))
                                                (let ((_%$%e212633212716%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd212631212711%_))))
                                                  (let ((_%$%tl212635212721%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e212633212716%_)))
                                                        (_%$%hd212634212719%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e212633212716%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl212635212721%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl212632212713%_))
                                                            (let ((_%$%e212636212724%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl212632212713%_))))
                      (let ((_%$%tl212638212729%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e212636212724%_)))
                            (_%$%hd212637212727%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e212636212724%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl212638212729%_))
                            (_%__kont217471217472%_
                             _%$%hd212637212727%_
                             _%$%hd212634212719%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g212626212651%_)))))
                    (let () (declare (not safe)) (_%$%g212626212651%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%$%tl212632212713%_))
                    (let ((_%$%e212644212664%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl212632212713%_))))
                      (let ((_%$%tl212646212669%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e212644212664%_)))
                            (_%$%hd212645212667%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e212644212664%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl212646212669%_))
                            (_%__kont217473217474%_
                             _%$%hd212645212667%_
                             _%$%hd212631212711%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g212626212651%_)))))
                    (let () (declare (not safe)) (_%$%g212626212651%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl212632212713%_))
                                                    (let ((_%$%e212644212664%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl212632212713%_))))
                                                      (let ((_%$%tl212646212669%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e212644212664%_)))
                    (_%$%hd212645212667%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e212644212664%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl212646212669%_))
                    (_%__kont217473217474%_
                     _%$%hd212645212667%_
                     _%$%hd212631212711%_)
                    (let () (declare (not safe)) (_%$%g212626212651%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g212626212651%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g212626212651%_))))))))
                        (if (pair? _%$%rest212600212608%_)
                            (let ((_%$%hd212605212756%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest212600212608%_)))
                                  (_%$%tl212606212758%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest212600212608%_))))
                              (let* ((_%hd-bind212761%_ _%$%hd212605212756%_)
                                     (_%rest212763%_ _%$%tl212606212758%_))
                                (_%$%K212604212753%_
                                 _%rest212763%_
                                 _%hd-bind212761%_)))
                            (_%$%else212602212619%_))))))
                 (_%generate-letrec?212351%_
                  (lambda (_%hd212483%_)
                    (let _%lp212485%_ ((_%rest212487%_ _%hd212483%_))
                      (let* ((_%$%rest212488212496%_ _%rest212487%_)
                             (_%$%else212490212504%_ (lambda () '#t))
                             (_%$%K212492212581%_
                              (lambda (_%rest212507%_ _%hd-bind212508%_)
                                (let* ((_%$%g212510212527%_
                                        (lambda (_%$%g212511212524%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%$%g212511212524%_))))
                                       (_%$%g212509212578%_
                                        (lambda (_%$%g212511212530%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%g212511212530%_))
                                              (let ((_%$%e212514212532%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%g212511212530%_))))
                                                (let ((_%$%hd212515212535%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e212514212532%_)))
                                                      (_%$%tl212516212537%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e212514212532%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%hd212515212535%_))
                                                      (let ((_%$%e212517212540%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%hd212515212535%_))))
                (let ((_%$%hd212518212543%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e212517212540%_)))
                      (_%$%tl212519212545%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e212517212540%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl212519212545%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl212516212537%_))
                          (let ((_%$%e212520212548%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl212516212537%_))))
                            (let ((_%$%hd212521212551%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e212520212548%_)))
                                  (_%$%tl212522212553%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e212520212548%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl212522212553%_))
                                  (if (_%is-lambda-expr?212352%_
                                       _%$%hd212521212551%_)
                                      (_%lp212485%_ _%rest212507%_)
                                      '#f)
                                  (_%$%g212510212527%_ _%$%g212511212530%_))))
                          (_%$%g212510212527%_ _%$%g212511212530%_))
                      (_%$%g212510212527%_ _%$%g212511212530%_))))
              (_%$%g212510212527%_ _%$%g212511212530%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g212510212527%_
                                               _%$%g212511212530%_)))))
                                  (_%$%g212509212578%_ _%hd-bind212508%_)))))
                        (if (pair? _%$%rest212488212496%_)
                            (let ((_%$%hd212493212584%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest212488212496%_)))
                                  (_%$%tl212494212586%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest212488212496%_))))
                              (let* ((_%hd-bind212589%_ _%$%hd212493212584%_)
                                     (_%rest212591%_ _%$%tl212494212586%_))
                                (_%$%K212492212581%_
                                 _%rest212591%_
                                 _%hd-bind212589%_)))
                            (_%$%else212490212504%_))))))
                 (_%is-lambda-expr?212352%_
                  (lambda (_%expr212420%_)
                    (let* ((_%__stx217513217514%_ _%expr212420%_)
                           (_%$%g212423212437%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx217513217514%_)))))
                      (let ((_%__kont217515217516%_
                             (lambda (_%$%g212425212465%_ _%$%g212426212466%_)
                               '#t))
                            (_%__kont217517217518%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx217513217514%_))
                            (let ((_%$%e212427212449%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx217513217514%_))))
                              (let ((_%$%tl212429212454%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e212427212449%_)))
                                    (_%$%hd212428212452%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e212427212449%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd212428212452%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%$%hd212428212452%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl212429212454%_))
                                            (let ((_%$%e212430212457%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl212429212454%_))))
                                              (let ((_%$%tl212432212462%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e212430212457%_)))
                                                    (_%$%hd212431212460%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e212430212457%_))))
                                                (_%__kont217515217516%_
                                                 _%$%tl212432212462%_
                                                 _%$%hd212431212460%_)))
                                            (_%__kont217517217518%_))
                                        (_%__kont217517217518%_))
                                    (_%__kont217517217518%_))))
                            (_%__kont217517217518%_)))))))
          (let* ((_%$%g212354212371%_
                  (lambda (_%$%g212355212368%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g212355212368%_))))
                 (_%$%g212353212417%_
                  (lambda (_%$%g212355212374%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g212355212374%_))
                        (let ((_%$%e212358212376%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g212355212374%_))))
                          (let ((_%$%hd212359212379%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e212358212376%_)))
                                (_%$%tl212360212381%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e212358212376%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl212360212381%_))
                                (let ((_%$%e212361212384%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl212360212381%_))))
                                  (let ((_%$%hd212362212387%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e212361212384%_)))
                                        (_%$%tl212363212389%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e212361212384%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl212363212389%_))
                                        (let ((_%$%e212364212392%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl212363212389%_))))
                                          (let ((_%$%hd212365212395%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e212364212392%_)))
                                                (_%$%tl212366212397%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e212364212392%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl212366212397%_))
                                                (if (gxc#generate-runtime-simple-let?
                                                     _%$%hd212362212387%_)
                                                    (if (_%generate-letrec?212351%_
                                                         _%$%hd212362212387%_)
                                                        (gxc#generate-runtime-simple-let
                                                         _%self212347%_
                                                         'letrec
                                                         _%$%hd212362212387%_
                                                         _%$%hd212365212395%_
                                                         '#f)
                                                        (gxc#generate-runtime-simple-let
                                                         _%self212347%_
                                                         'letrec*
                                                         _%$%hd212362212387%_
                                                         _%$%hd212365212395%_
                                                         '#f))
                                                    (_%generate-values212350%_
                                                     _%$%hd212362212387%_
                                                     _%$%hd212365212395%_))
                                                (_%$%g212354212371%_
                                                 _%$%g212355212374%_))))
                                        (_%$%g212354212371%_
                                         _%$%g212355212374%_))))
                                (_%$%g212354212371%_ _%$%g212355212374%_))))
                        (_%$%g212354212371%_ _%$%g212355212374%_)))))
            (_%$%g212353212417%_ _%stx212348%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd212284%_)
        (let _%lp212286%_ ((_%rest212288%_ _%hd212284%_))
          (let* ((_%$%rest212289212305%_ _%rest212288%_)
                 (_%$%else212292212313%_ (lambda () '#f)))
            (let ((_%$%K212295212326%_
                   (lambda (_%rest212324%_) (_%lp212286%_ _%rest212324%_)))
                  (_%$%K212294212318%_ (lambda () '#t)))
              (let ((_%$%try-match212291212321%_
                     (lambda ()
                       (if (null? _%$%rest212289212305%_)
                           (_%$%K212294212318%_)
                           (_%$%else212292212313%_)))))
                (if (pair? _%$%rest212289212305%_)
                    (let ((_%$%tl212297212331%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest212289212305%_)))
                          (_%$%hd212296212329%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest212289212305%_))))
                      (if (pair? _%$%hd212296212329%_)
                          (let ((_%$%tl212299212336%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%hd212296212329%_)))
                                (_%$%hd212298212334%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%hd212296212329%_))))
                            (if (pair? _%$%hd212298212334%_)
                                (let ((_%$%tl212303212339%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%hd212298212334%_))))
                                  (if (null? _%$%tl212303212339%_)
                                      (if (pair? _%$%tl212299212336%_)
                                          (let ((_%$%tl212301212342%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl212299212336%_))))
                                            (if (null? _%$%tl212301212342%_)
                                                (let ((_%rest212345%_
                                                       _%$%tl212297212331%_))
                                                  (_%lp212286%_
                                                   _%rest212345%_))
                                                (_%$%else212292212313%_)))
                                          (_%$%else212292212313%_))
                                      (_%$%else212292212313%_)))
                                (_%$%else212292212313%_)))
                          (_%$%else212292212313%_)))
                    (_%$%try-match212291212321%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self212196%_
               _%form212197%_
               _%hd212198%_
               _%body212199%_
               _%compiled-body?212200%_)
        (letrec ((_%generate1212202%_
                  (lambda (_%bind212241%_)
                    (let* ((_%$%bind212242212253%_ _%bind212241%_)
                           (_%$%E212244212256%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%$%bind212242212253%_
                                       '([[id] expr])))
                              '#!void))
                           (_%$%K212245212262%_
                            (lambda (_%expr212259%_ _%id212260%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id212260%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self212196%_
                                             _%expr212259%_))
                                          '())))))
                      (if (pair? _%$%bind212242212253%_)
                          (let ((_%$%hd212246212265%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%bind212242212253%_)))
                                (_%$%tl212247212267%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%bind212242212253%_))))
                            (if (pair? _%$%hd212246212265%_)
                                (let ((_%$%hd212250212270%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%hd212246212265%_)))
                                      (_%$%tl212251212272%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%hd212246212265%_))))
                                  (let ((_%id212275%_ _%$%hd212250212270%_))
                                    (if (null? _%$%tl212251212272%_)
                                        (if (pair? _%$%tl212247212267%_)
                                            (let ((_%$%hd212248212277%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%tl212247212267%_)))
                                                  (_%$%tl212249212279%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%tl212247212267%_))))
                                              (let ((_%expr212282%_
                                                     _%$%hd212248212277%_))
                                                (if (null? _%$%tl212249212279%_)
                                                    (_%$%K212245212262%_
                                                     _%expr212282%_
                                                     _%id212275%_)
                                                    (_%$%E212244212256%_))))
                                            (_%$%E212244212256%_))
                                        (_%$%E212244212256%_))))
                                (_%$%E212244212256%_)))
                          (_%$%E212244212256%_))))))
          (let* ((_%bind212204%_ (map _%generate1212202%_ _%hd212198%_))
                 (_%body212206%_
                  (if _%compiled-body?212200%_
                      _%body212199%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self212196%_ _%body212199%_))))
                 (_%body212238%_
                  (let* ((_%$%body212207212215%_ _%body212206%_)
                         (_%$%else212209212223%_
                          (lambda () (cons _%body212206%_ '())))
                         (_%$%K212211212228%_
                          (lambda (_%exprs212226%_) _%exprs212226%_)))
                    (if (pair? _%$%body212207212215%_)
                        (let ((_%$%hd212212212231%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%body212207212215%_)))
                              (_%$%tl212213212233%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%body212207212215%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%$%hd212212212231%_ 'begin))
                              (let ((_%exprs212236%_ _%$%tl212213212233%_))
                                (_%$%K212211212228%_ _%exprs212236%_))
                              (_%$%else212209212223%_)))
                        (_%$%else212209212223%_)))))
            (cons _%form212197%_ (cons _%bind212204%_ _%body212238%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self212096%_ _%stx212097%_)
        (letrec ((_%generate1212099%_
                  (lambda (_%datum212151%_)
                    (if (or (null? _%datum212151%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum212151%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum212151%_))
                            (eof-object? _%datum212151%_))
                        _%datum212151%_
                        (if (uninterned-symbol? _%datum212151%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum212151%_
                               '#t))
                            (if (pair? _%datum212151%_)
                                (cons (_%generate1212099%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum212151%_)))
                                      (_%generate1212099%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum212151%_))))
                                (if (box? _%datum212151%_)
                                    (box (_%generate1212099%_
                                          (unbox _%datum212151%_)))
                                    (if (vector? _%datum212151%_)
                                        (vector-map
                                         _%generate1212099%_
                                         _%datum212151%_)
                                        (if (or (s8vector? _%datum212151%_)
                                                (u8vector? _%datum212151%_)
                                                (s16vector? _%datum212151%_)
                                                (u16vector? _%datum212151%_)
                                                (s32vector? _%datum212151%_)
                                                (u32vector? _%datum212151%_)
                                                (s64vector? _%datum212151%_)
                                                (u64vector? _%datum212151%_)
                                                (f32vector? _%datum212151%_)
                                                (f64vector? _%datum212151%_))
                                            _%datum212151%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx212097%_)))))))))))
          (let* ((_%$%g212101212114%_
                  (lambda (_%$%g212102212111%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g212102212111%_))))
                 (_%$%g212100212148%_
                  (lambda (_%$%g212102212117%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g212102212117%_))
                        (let ((_%$%e212104212119%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g212102212117%_))))
                          (let ((_%$%hd212105212122%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e212104212119%_)))
                                (_%$%tl212106212124%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e212104212119%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl212106212124%_))
                                (let ((_%$%e212107212127%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl212106212124%_))))
                                  (let ((_%$%hd212108212130%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e212107212127%_)))
                                        (_%$%tl212109212132%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e212107212127%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl212109212132%_))
                                        (cons 'quote
                                              (cons (_%generate1212099%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd212108212130%_)))
                                                    '()))
                                        (_%$%g212101212114%_
                                         _%$%g212102212117%_))))
                                (_%$%g212101212114%_ _%$%g212102212117%_))))
                        (_%$%g212101212114%_ _%$%g212102212117%_)))))
            (_%$%g212100212148%_ _%stx212097%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self211543%_ _%stx211544%_)
        (letrec ((_%compile-call211546%_
                  (lambda (_%rator211833%_ _%rands211834%_)
                    (let ((_%rator211840%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self211543%_
                              _%rator211833%_)))
                          (_%rands211841%_
                           (map (lambda (_%$%g211835211837%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self211543%_
                                     _%$%g211835211837%_)))
                                _%rands211834%_)))
                      (let* ((_%__stx217560217561%_ _%rator211840%_)
                             (_%$%g211844211896%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx217560217561%_)))))
                        (let ((_%__kont217562217563%_
                               (lambda (_%$%g211846212016%_
                                        _%$%g211847212017%_
                                        _%$%g211848212018%_
                                        _%$%g211849212019%_)
                                 (if (let ((__tmp218230
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands211841%_)))
                                           (__tmp218228
                                            (length (let ((__tmp218229
                                                           (lambda (_%$%g212055212058%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g212056212060%_)
                     (cons _%$%g212055212058%_ _%$%g212056212060%_))))
              (declare (not safe))
              (foldr__0 __tmp218229 '() _%$%g211848212018%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp218230 __tmp218228))
                                     (let* ((_%id212063%_ _%$%g211849212019%_)
                                            (_%args212072%_
                                             (let ((__tmp218231
                                                    (lambda (_%$%g212064212067%_
                                                             _%$%g212065212069%_)
                                                      (cons _%$%g212064212067%_
                                                            _%$%g212065212069%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp218231
                                                '()
                                                _%$%g211848212018%_)))
                                            (_%body212081%_
                                             (let ((__tmp218232
                                                    (lambda (_%$%g212073212076%_
                                                             _%$%g212074212078%_)
                                                      (cons _%$%g212073212076%_
                                                            _%$%g212074212078%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp218232
                                                '()
                                                _%$%g211847212017%_)))
                                            (_%init212083%_
                                             (map list
                                                  _%args212072%_
                                                  _%rands211841%_)))
                                       (cons 'let
                                             (cons _%id212063%_
                                                   (cons _%init212083%_
                                                         _%body212081%_))))
                                     (let ((__tmp218233
                                            (let ((__tmp218234
                                                   (lambda (_%$%g212085212088%_
                                                            _%$%g212086212090%_)
                                                     (cons _%$%g212085212088%_
                                                           _%$%g212086212090%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp218234
                                               '()
                                               _%$%g211848212018%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx211544%_
                                        __tmp218233
                                        _%rands211841%_)))))
                              (_%__kont217568217569%_
                               (lambda ()
                                 (cons _%rator211840%_ _%rands211841%_))))
                          (let ((_%__match217627217628%_
                                 (lambda (_%$%e211850211908%_
                                          _%$%hd211851211911%_
                                          _%$%tl211852211913%_
                                          _%$%e211853211916%_
                                          _%$%hd211854211919%_
                                          _%$%tl211855211921%_
                                          _%$%e211856211924%_
                                          _%$%hd211857211927%_
                                          _%$%tl211858211929%_
                                          _%$%e211859211932%_
                                          _%$%hd211860211935%_
                                          _%$%tl211861211937%_
                                          _%$%e211862211940%_
                                          _%$%hd211863211943%_
                                          _%$%tl211864211945%_
                                          _%$%e211865211948%_
                                          _%$%hd211866211951%_
                                          _%$%tl211867211953%_
                                          _%$%e211868211956%_
                                          _%$%hd211869211959%_
                                          _%$%tl211870211961%_
                                          _%__splice217564217565%_
                                          _%$%target211871211964%_
                                          _%$%tl211873211966%_)
                                   (letrec ((_%$%loop211874211969%_
                                             (lambda (_%$%hd211872211972%_
                                                      _%$%arg211878211974%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%hd211872211972%_))
                                                   (let ((_%$%e211875211976%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%hd211872211972%_))))
                                                     (let ((_%$%lp-tl211877211981%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e211875211976%_)))
                                                           (_%$%lp-hd211876211979%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e211875211976%_))))
                                                       (_%$%loop211874211969%_
                                                        _%$%lp-tl211877211981%_
                                                        (cons _%$%lp-hd211876211979%_
                                                              _%$%arg211878211974%_))))
                                                   (let ((_%$%arg211879211984%_
                                                          (reverse _%$%arg211878211974%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%$%tl211870211961%_))
                                                         (let ((_%__splice217566217567%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%$%tl211870211961%_
                           '0))))
                   (let ((_%$%tl211882211988%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice217566217567%_ '1)))
                         (_%$%target211880211986%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice217566217567%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl211882211988%_))
                         (letrec ((_%$%loop211883211991%_
                                   (lambda (_%$%hd211881211994%_
                                            _%$%body211887211996%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%hd211881211994%_))
                                         (let ((_%$%e211884211998%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%hd211881211994%_))))
                                           (let ((_%$%lp-tl211886212003%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e211884211998%_)))
                                                 (_%$%lp-hd211885212001%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e211884211998%_))))
                                             (_%$%loop211883211991%_
                                              _%$%lp-tl211886212003%_
                                              (cons _%$%lp-hd211885212001%_
                                                    _%$%body211887211996%_))))
                                         (let ((_%$%body211888212006%_
                                                (reverse _%$%body211887211996%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%$%tl211864211945%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl211858211929%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl211855211921%_))
                                                       (let ((_%$%e211889212008%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl211855211921%_))))
                 (let ((_%$%tl211891212013%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e211889212008%_)))
                       (_%$%hd211890212011%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e211889212008%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl211891212013%_))
                       (let ((_%$%g211846212016%_ _%$%hd211890212011%_)
                             (_%$%g211847212017%_ _%$%body211888212006%_)
                             (_%$%g211848212018%_ _%$%arg211879211984%_)
                             (_%$%g211849212019%_ _%$%hd211860211935%_))
                         (if (eq? _%$%g211849212019%_ _%$%g211846212016%_)
                             (_%__kont217562217563%_
                              _%$%g211846212016%_
                              _%$%g211847212017%_
                              _%$%g211848212018%_
                              _%$%g211849212019%_)
                             (_%__kont217568217569%_)))
                       (_%__kont217568217569%_))))
               (_%__kont217568217569%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont217568217569%_))
                                               (_%__kont217568217569%_)))))))
                           (_%$%loop211883211991%_
                            _%$%target211880211986%_
                            '()))
                         (_%__kont217568217569%_))))
                 (_%__kont217568217569%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%$%loop211874211969%_
                                      _%$%target211871211964%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx217560217561%_))
                                (let ((_%$%e211850211908%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx217560217561%_))))
                                  (let ((_%$%tl211852211913%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e211850211908%_)))
                                        (_%$%hd211851211911%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e211850211908%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd211851211911%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%$%hd211851211911%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl211852211913%_))
                                                (let ((_%$%e211853211916%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl211852211913%_))))
                                                  (let ((_%$%tl211855211921%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e211853211916%_)))
                                                        (_%$%hd211854211919%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e211853211916%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd211854211919%_))
                                                        (let ((_%$%e211856211924%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd211854211919%_))))
                  (let ((_%$%tl211858211929%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e211856211924%_)))
                        (_%$%hd211857211927%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e211856211924%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd211857211927%_))
                        (let ((_%$%e211859211932%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd211857211927%_))))
                          (let ((_%$%tl211861211937%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e211859211932%_)))
                                (_%$%hd211860211935%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e211859211932%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl211861211937%_))
                                (let ((_%$%e211862211940%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl211861211937%_))))
                                  (let ((_%$%tl211864211945%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e211862211940%_)))
                                        (_%$%hd211863211943%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e211862211940%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd211863211943%_))
                                        (let ((_%$%e211865211948%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd211863211943%_))))
                                          (let ((_%$%tl211867211953%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e211865211948%_)))
                                                (_%$%hd211866211951%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e211865211948%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd211866211951%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%$%hd211866211951%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl211867211953%_))
                                                        (let ((_%$%e211868211956%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl211867211953%_))))
                  (let ((_%$%tl211870211961%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e211868211956%_)))
                        (_%$%hd211869211959%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e211868211956%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%$%hd211869211959%_))
                        (let ((_%__splice217564217565%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%$%hd211869211959%_
                                  '0))))
                          (let ((_%$%tl211873211966%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice217564217565%_ '1)))
                                (_%$%target211871211964%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice217564217565%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl211873211966%_))
                                (_%__match217627217628%_
                                 _%$%e211850211908%_
                                 _%$%hd211851211911%_
                                 _%$%tl211852211913%_
                                 _%$%e211853211916%_
                                 _%$%hd211854211919%_
                                 _%$%tl211855211921%_
                                 _%$%e211856211924%_
                                 _%$%hd211857211927%_
                                 _%$%tl211858211929%_
                                 _%$%e211859211932%_
                                 _%$%hd211860211935%_
                                 _%$%tl211861211937%_
                                 _%$%e211862211940%_
                                 _%$%hd211863211943%_
                                 _%$%tl211864211945%_
                                 _%$%e211865211948%_
                                 _%$%hd211866211951%_
                                 _%$%tl211867211953%_
                                 _%$%e211868211956%_
                                 _%$%hd211869211959%_
                                 _%$%tl211870211961%_
                                 _%__splice217564217565%_
                                 _%$%target211871211964%_
                                 _%$%tl211873211966%_)
                                (_%__kont217568217569%_))))
                        (_%__kont217568217569%_))))
                (_%__kont217568217569%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont217568217569%_))
                                                (_%__kont217568217569%_))))
                                        (_%__kont217568217569%_))))
                                (_%__kont217568217569%_))))
                        (_%__kont217568217569%_))))
                (_%__kont217568217569%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont217568217569%_))
                                            (_%__kont217568217569%_))
                                        (_%__kont217568217569%_))))
                                (_%__kont217568217569%_)))))))))
          (let* ((_%$%g211548211571%_
                  (lambda (_%$%g211549211568%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g211549211568%_))))
                 (_%$%g211547211830%_
                  (lambda (_%$%g211549211574%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g211549211574%_))
                        (let ((_%$%e211552211576%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g211549211574%_))))
                          (let ((_%$%hd211553211579%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e211552211576%_)))
                                (_%$%tl211554211581%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e211552211576%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl211554211581%_))
                                (let ((_%$%e211555211584%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl211554211581%_))))
                                  (let ((_%$%hd211556211587%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e211555211584%_)))
                                        (_%$%tl211557211589%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e211555211584%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%tl211557211589%_))
                                        (let ((_g218235_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%$%tl211557211589%_
                                                  '0))))
                                          (begin
                                            (let ((_g218236_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g218235_)
                                                         (##values-length
                                                          _g218235_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g218236_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g218236_)))
                                            (let ((_%$%target211558211592%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g218235_
                                                      0)))
                                                  (_%$%tl211560211594%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g218235_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl211560211594%_))
                                                  (letrec ((_%$%loop211561211597%_
                                                            (lambda (_%$%hd211559211600%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%rand211565211602%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd211559211600%_))
                          (let ((_%$%e211562211604%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd211559211600%_))))
                            (let ((_%$%lp-hd211563211607%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e211562211604%_)))
                                  (_%$%lp-tl211564211609%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e211562211604%_))))
                              (_%$%loop211561211597%_
                               _%$%lp-tl211564211609%_
                               (cons _%$%lp-hd211563211607%_
                                     _%$%rand211565211602%_))))
                          (let ((_%$%rand211566211612%_
                                 (reverse _%$%rand211565211602%_)))
                            (if (gxc#current-compile-decls-unsafe?)
                                (_%compile-call211546%_
                                 _%$%hd211556211587%_
                                 (let ((__tmp218237
                                        (lambda (_%$%g211632211635%_
                                                 _%$%g211633211637%_)
                                          (cons _%$%g211632211635%_
                                                _%$%g211633211637%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp218237
                                    '()
                                    _%$%rand211566211612%_)))
                                (let* ((_%__stx217676217677%_
                                        _%$%hd211556211587%_)
                                       (_%$%g211641211653%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx217676217677%_)))))
                                  (let ((_%__kont217678217679%_
                                         (lambda ()
                                           (let ((_%f211690%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self211543%_
                                                     _%$%hd211556211587%_))))
                                             (if (and (let ((__tmp218238
                                                             (symbol->string
                                                              _%f211690%_)))
                                                        (declare (not safe))
                                                        (##string-prefix?
                                                         '"##"
                                                         __tmp218238))
                                                      (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##memq _%f211690%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let _%lp211692%_ ((_%rest211695%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (reverse (let ((__tmp218240
                                             (lambda (_%$%g211812211815%_
                                                      _%$%g211813211817%_)
                                               (cons _%$%g211812211815%_
                                                     _%$%g211813211817%_))))
                                        (declare (not safe))
                                        (foldr__0
                                         __tmp218240
                                         '()
                                         _%$%rand211566211612%_))))
                            (_%bind211697%_ '())
                            (_%args211698%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%$%rest211699211707%_
                                                           _%rest211695%_)
                                                          (_%$%else211701211715%_
                                                           (lambda ()
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%bind211697%_
                                 (cons '(declare (not safe))
                                       (cons (cons _%f211690%_ _%args211698%_)
                                             '()))))))
                  (_%$%K211703211801%_
                   (lambda (_%rest211718%_ _%e211719%_)
                     (let* ((_%__stx217630217631%_ _%e211719%_)
                            (_%$%g211724211742%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%__stx217630217631%_)))))
                       (let ((_%__kont217632217633%_
                              (lambda ()
                                (_%lp211692%_
                                 _%rest211718%_
                                 _%bind211697%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _%e211719%_))
                                       _%args211698%_))))
                             (_%__kont217634217635%_
                              (lambda ()
                                (_%lp211692%_
                                 _%rest211718%_
                                 _%bind211697%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _%e211719%_))
                                       _%args211698%_))))
                             (_%__kont217636217637%_
                              (lambda ()
                                (let ((_%tmp211749%_
                                       (let ((__tmp218239
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__tmp))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp218239))))
                                  (_%lp211692%_
                                   _%rest211718%_
                                   (cons (cons _%tmp211749%_
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _%e211719%_))
                                                     '()))
                                         _%bind211697%_)
                                   (cons _%tmp211749%_ _%args211698%_))))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%__stx217630217631%_))
                             (let ((_%$%e211726211780%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%__stx217630217631%_))))
                               (let ((_%$%tl211728211785%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e211726211780%_)))
                                     (_%$%hd211727211783%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e211726211780%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#identifier? _%$%hd211727211783%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-eq?
                                            '%#ref
                                            _%$%hd211727211783%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%tl211728211785%_))
                                             (let ((_%$%e211729211788%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%tl211728211785%_))))
                                               (let ((_%$%tl211731211793%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e211729211788%_)))
                                                     (_%$%hd211730211791%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e211729211788%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%$%tl211731211793%_))
                                                     (_%__kont217632217633%_)
                                                     (_%__kont217636217637%_))))
                                             (_%__kont217636217637%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#quote
                                                _%$%hd211727211783%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%tl211728211785%_))
                                                 (let ((_%$%e211735211765%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%tl211728211785%_))))
                                                   (let ((_%$%tl211737211770%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e211735211765%_)))
                                                         (_%$%hd211736211768%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e211735211765%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%$%tl211737211770%_))
                                                         (_%__kont217634217635%_)
                                                         (_%__kont217636217637%_))))
                                                 (_%__kont217636217637%_))
                                             (_%__kont217636217637%_)))
                                     (_%__kont217636217637%_))))
                             (_%__kont217636217637%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (pair? _%$%rest211699211707%_)
                                                         (let ((_%$%hd211704211804%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%rest211699211707%_)))
                       (_%$%tl211705211806%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%rest211699211707%_))))
                   (let* ((_%e211809%_ _%$%hd211704211804%_)
                          (_%rest211811%_ _%$%tl211705211806%_))
                     (_%$%K211703211801%_ _%rest211811%_ _%e211809%_)))
                 (_%$%else211701211715%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%compile-call211546%_
                                                  _%$%hd211556211587%_
                                                  (let ((__tmp218241
                                                         (lambda (_%$%g211819211822%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g211820211824%_)
                   (cons _%$%g211819211822%_ _%$%g211820211824%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp218241
                                                     '()
                                                     _%$%rand211566211612%_)))))))
                                        (_%__kont217680217681%_
                                         (lambda ()
                                           (_%compile-call211546%_
                                            _%$%hd211556211587%_
                                            (let ((__tmp218242
                                                   (lambda (_%$%g211659211662%_
                                                            _%$%g211660211664%_)
                                                     (cons _%$%g211659211662%_
                                                           _%$%g211660211664%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp218242
                                               '()
                                               _%$%rand211566211612%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx217676217677%_))
                                        (let ((_%$%e211643211672%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx217676217677%_))))
                                          (let ((_%$%tl211645211677%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e211643211672%_)))
                                                (_%$%hd211644211675%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e211643211672%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd211644211675%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%$%hd211644211675%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl211645211677%_))
                                                        (let ((_%$%e211646211680%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl211645211677%_))))
                  (let ((_%$%tl211648211685%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e211646211680%_)))
                        (_%$%hd211647211683%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e211646211680%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl211648211685%_))
                        (_%__kont217678217679%_)
                        (_%__kont217680217681%_))))
                (_%__kont217680217681%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont217680217681%_))
                                                (_%__kont217680217681%_))))
                                        (_%__kont217680217681%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%loop211561211597%_
                                                     _%$%target211558211592%_
                                                     '()))
                                                  (_%$%g211548211571%_
                                                   _%$%g211549211574%_)))))
                                        (_%$%g211548211571%_
                                         _%$%g211549211574%_))))
                                (_%$%g211548211571%_ _%$%g211549211574%_))))
                        (_%$%g211548211571%_ _%$%g211549211574%_)))))
            (_%$%g211547211830%_ _%stx211544%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self211288%_ _%stx211289%_)
        (let* ((_%__stx217748217749%_ _%stx211289%_)
               (_%$%g211292211321%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx217748217749%_)))))
          (let ((_%__kont217750217751%_
                 (lambda (_%$%g211294211387%_ _%$%g211295211388%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self211288%_
                        _%stx211289%_)
                       (let ((_%f211410%_
                              (let ((__tmp218243
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%$%g211295211388%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self211288%_
                                 __tmp218243))))
                         (let _%lp211412%_ ((_%rest211415%_
                                             (reverse (let ((__tmp218245
                                                             (lambda (_%$%g211532211535%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g211533211537%_)
                       (cons _%$%g211532211535%_ _%$%g211533211537%_))))
                (declare (not safe))
                (foldr__0 __tmp218245 '() _%$%g211294211387%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind211417%_ '())
                                            (_%args211418%_ '()))
                           (let* ((_%$%rest211419211427%_ _%rest211415%_)
                                  (_%$%else211421211435%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind211417%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f211410%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args211418%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%$%K211423211521%_
                                   (lambda (_%rest211438%_ _%e211439%_)
                                     (let* ((_%__stx217702217703%_ _%e211439%_)
                                            (_%$%g211444211462%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx217702217703%_)))))
                                       (let ((_%__kont217704217705%_
                                              (lambda ()
                                                (_%lp211412%_
                                                 _%rest211438%_
                                                 _%bind211417%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e211439%_))
                                                       _%args211418%_))))
                                             (_%__kont217706217707%_
                                              (lambda ()
                                                (_%lp211412%_
                                                 _%rest211438%_
                                                 _%bind211417%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e211439%_))
                                                       _%args211418%_))))
                                             (_%__kont217708217709%_
                                              (lambda ()
                                                (let ((_%tmp211469%_
                                                       (let ((__tmp218244
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp218244))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp211412%_
                                                   _%rest211438%_
                                                   (cons (cons _%tmp211469%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e211439%_))
                             '()))
                 _%bind211417%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp211469%_
                                                         _%args211418%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx217702217703%_))
                                             (let ((_%$%e211446211500%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx217702217703%_))))
                                               (let ((_%$%tl211448211505%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e211446211500%_)))
                                                     (_%$%hd211447211503%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e211446211500%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%$%hd211447211503%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%$%hd211447211503%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%tl211448211505%_))
                     (let ((_%$%e211449211508%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl211448211505%_))))
                       (let ((_%$%tl211451211513%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e211449211508%_)))
                             (_%$%hd211450211511%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e211449211508%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl211451211513%_))
                             (_%__kont217704217705%_)
                             (_%__kont217708217709%_))))
                     (_%__kont217708217709%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%$%hd211447211503%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%tl211448211505%_))
                         (let ((_%$%e211455211485%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%tl211448211505%_))))
                           (let ((_%$%tl211457211490%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e211455211485%_)))
                                 (_%$%hd211456211488%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e211455211485%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%$%tl211457211490%_))
                                 (_%__kont217706217707%_)
                                 (_%__kont217708217709%_))))
                         (_%__kont217708217709%_))
                     (_%__kont217708217709%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont217708217709%_))))
                                             (_%__kont217708217709%_)))))))
                             (if (pair? _%$%rest211419211427%_)
                                 (let ((_%$%hd211424211524%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%rest211419211427%_)))
                                       (_%$%tl211425211526%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%rest211419211427%_))))
                                   (let* ((_%e211529%_ _%$%hd211424211524%_)
                                          (_%rest211531%_
                                           _%$%tl211425211526%_))
                                     (_%$%K211423211521%_
                                      _%rest211531%_
                                      _%e211529%_)))
                                 (_%$%else211421211435%_))))))))
                (_%__kont217754217755%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self211288%_ _%stx211289%_))))
            (let ((_%__match217793217794%_
                   (lambda (_%$%e211296211333%_
                            _%$%hd211297211336%_
                            _%$%tl211298211338%_
                            _%$%e211299211341%_
                            _%$%hd211300211344%_
                            _%$%tl211301211346%_
                            _%$%e211302211349%_
                            _%$%hd211303211352%_
                            _%$%tl211304211354%_
                            _%$%e211305211357%_
                            _%$%hd211306211360%_
                            _%$%tl211307211362%_
                            _%__splice217752217753%_
                            _%$%target211308211365%_
                            _%$%tl211310211367%_)
                     (letrec ((_%$%loop211311211370%_
                               (lambda (_%$%hd211309211373%_
                                        _%$%rand211315211375%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd211309211373%_))
                                     (let ((_%$%e211312211377%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd211309211373%_))))
                                       (let ((_%$%lp-tl211314211382%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e211312211377%_)))
                                             (_%$%lp-hd211313211380%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e211312211377%_))))
                                         (_%$%loop211311211370%_
                                          _%$%lp-tl211314211382%_
                                          (cons _%$%lp-hd211313211380%_
                                                _%$%rand211315211375%_))))
                                     (let ((_%$%rand211316211385%_
                                            (reverse _%$%rand211315211375%_)))
                                       (_%__kont217750217751%_
                                        _%$%rand211316211385%_
                                        _%$%hd211306211360%_))))))
                       (_%$%loop211311211370%_
                        _%$%target211308211365%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx217748217749%_))
                  (let ((_%$%e211296211333%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx217748217749%_))))
                    (let ((_%$%tl211298211338%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e211296211333%_)))
                          (_%$%hd211297211336%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e211296211333%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl211298211338%_))
                          (let ((_%$%e211299211341%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl211298211338%_))))
                            (let ((_%$%tl211301211346%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e211299211341%_)))
                                  (_%$%hd211300211344%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e211299211341%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd211300211344%_))
                                  (let ((_%$%e211302211349%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd211300211344%_))))
                                    (let ((_%$%tl211304211354%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e211302211349%_)))
                                          (_%$%hd211303211352%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e211302211349%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd211303211352%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd211303211352%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl211304211354%_))
                                                  (let ((_%$%e211305211357%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl211304211354%_))))
                                                    (let ((_%$%tl211307211362%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e211305211357%_)))
                                                          (_%$%hd211306211360%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e211305211357%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl211307211362%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%$%tl211301211346%_))
                      (let ((_%__splice217752217753%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl211301211346%_
                                '0))))
                        (let ((_%$%tl211310211367%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice217752217753%_ '1)))
                              (_%$%target211308211365%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice217752217753%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl211310211367%_))
                              (_%__match217793217794%_
                               _%$%e211296211333%_
                               _%$%hd211297211336%_
                               _%$%tl211298211338%_
                               _%$%e211299211341%_
                               _%$%hd211300211344%_
                               _%$%tl211301211346%_
                               _%$%e211302211349%_
                               _%$%hd211303211352%_
                               _%$%tl211304211354%_
                               _%$%e211305211357%_
                               _%$%hd211306211360%_
                               _%$%tl211307211362%_
                               _%__splice217752217753%_
                               _%$%target211308211365%_
                               _%$%tl211310211367%_)
                              (_%__kont217754217755%_))))
                      (_%__kont217754217755%_))
                  (_%__kont217754217755%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont217754217755%_))
                                              (_%__kont217754217755%_))
                                          (_%__kont217754217755%_))))
                                  (_%__kont217754217755%_))))
                          (_%__kont217754217755%_))))
                  (_%__kont217754217755%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self211100%_ _%stx211101%_)
        (letrec ((_%simplify211103%_
                  (lambda (_%code211188%_)
                    (let* ((_%$%code211189211207%_ _%code211188%_)
                           (_%$%else211191211215%_ (lambda () _%code211188%_))
                           (_%$%K211193211251%_
                            (lambda (_%expr211218%_ _%test211219%_)
                              (let* ((_%$%expr211220211228%_ _%expr211218%_)
                                     (_%$%else211222211236%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test211219%_
                                                    (cons _%expr211218%_
                                                          '())))))
                                     (_%$%K211224211241%_
                                      (lambda (_%exprs211239%_)
                                        (cons 'and
                                              (cons _%test211219%_
                                                    _%exprs211239%_)))))
                                (if (pair? _%$%expr211220211228%_)
                                    (let ((_%$%hd211225211244%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%expr211220211228%_)))
                                          (_%$%tl211226211246%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%expr211220211228%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%$%hd211225211244%_ 'and))
                                          (let ((_%exprs211249%_
                                                 _%$%tl211226211246%_))
                                            (_%$%K211224211241%_
                                             _%exprs211249%_))
                                          (_%$%else211222211236%_)))
                                    (_%$%else211222211236%_))))))
                      (if (pair? _%$%code211189211207%_)
                          (let ((_%$%hd211194211254%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%code211189211207%_)))
                                (_%$%tl211195211256%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%code211189211207%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%$%hd211194211254%_ 'if))
                                (if (pair? _%$%tl211195211256%_)
                                    (let ((_%$%hd211196211259%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%tl211195211256%_)))
                                          (_%$%tl211197211261%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%tl211195211256%_))))
                                      (let ((_%test211264%_
                                             _%$%hd211196211259%_))
                                        (if (pair? _%$%tl211197211261%_)
                                            (let ((_%$%hd211198211266%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%tl211197211261%_)))
                                                  (_%$%tl211199211268%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%tl211197211261%_))))
                                              (let ((_%expr211271%_
                                                     _%$%hd211198211266%_))
                                                (if (pair? _%$%tl211199211268%_)
                                                    (let ((_%$%hd211200211273%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%tl211199211268%_)))
                                                          (_%$%tl211201211275%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%tl211199211268%_))))
                                                      (if (pair? _%$%hd211200211273%_)
                                                          (let ((_%$%hd211202211278%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%hd211200211273%_)))
                        (_%$%tl211203211280%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%hd211200211273%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%$%hd211202211278%_ 'quote))
                        (if (pair? _%$%tl211203211280%_)
                            (let ((_%$%hd211204211283%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%tl211203211280%_)))
                                  (_%$%tl211205211285%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%tl211203211280%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%$%hd211204211283%_ '#f))
                                  (if (null? _%$%tl211205211285%_)
                                      (if (null? _%$%tl211201211275%_)
                                          (_%$%K211193211251%_
                                           _%expr211271%_
                                           _%test211264%_)
                                          (_%$%else211191211215%_))
                                      (_%$%else211191211215%_))
                                  (_%$%else211191211215%_)))
                            (_%$%else211191211215%_))
                        (_%$%else211191211215%_)))
                  (_%$%else211191211215%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%else211191211215%_))))
                                            (_%$%else211191211215%_))))
                                    (_%$%else211191211215%_))
                                (_%$%else211191211215%_)))
                          (_%$%else211191211215%_))))))
          (let* ((_%$%g211105211126%_
                  (lambda (_%$%g211106211123%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g211106211123%_))))
                 (_%$%g211104211185%_
                  (lambda (_%$%g211106211129%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g211106211129%_))
                        (let ((_%$%e211110211131%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g211106211129%_))))
                          (let ((_%$%hd211111211134%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e211110211131%_)))
                                (_%$%tl211112211136%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e211110211131%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl211112211136%_))
                                (let ((_%$%e211113211139%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl211112211136%_))))
                                  (let ((_%$%hd211114211142%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e211113211139%_)))
                                        (_%$%tl211115211144%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e211113211139%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl211115211144%_))
                                        (let ((_%$%e211116211147%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl211115211144%_))))
                                          (let ((_%$%hd211117211150%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e211116211147%_)))
                                                (_%$%tl211118211152%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e211116211147%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl211118211152%_))
                                                (let ((_%$%e211119211155%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl211118211152%_))))
                                                  (let ((_%$%hd211120211158%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e211119211155%_)))
                                                        (_%$%tl211121211160%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e211119211155%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl211121211160%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#current-compile-boolean-context))
                                                            (_%simplify211103%_
                                                             (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self211100%_
                                    _%$%hd211114211142%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self211100%_
                                          _%$%hd211117211150%_))
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self211100%_
                                                _%$%hd211120211158%_))
                                             '())))))
                    (cons 'if
                          (cons (let ((__tmp218246
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self211100%_
                                            _%$%hd211114211142%_)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp218246
                                   gxc#current-compile-boolean-context
                                   '#t))
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self211100%_
                                         _%$%hd211117211150%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self211100%_
                                               _%$%hd211120211158%_))
                                            '())))))
                (_%$%g211105211126%_ _%$%g211106211129%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g211105211126%_
                                                 _%$%g211106211129%_))))
                                        (_%$%g211105211126%_
                                         _%$%g211106211129%_))))
                                (_%$%g211105211126%_ _%$%g211106211129%_))))
                        (_%$%g211105211126%_ _%$%g211106211129%_)))))
            (_%$%g211104211185%_ _%stx211101%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self211048%_ _%stx211049%_)
        (let* ((_%$%g211051211064%_
                (lambda (_%$%g211052211061%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g211052211061%_))))
               (_%$%g211050211097%_
                (lambda (_%$%g211052211067%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g211052211067%_))
                      (let ((_%$%e211054211069%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g211052211067%_))))
                        (let ((_%$%hd211055211072%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e211054211069%_)))
                              (_%$%tl211056211074%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e211054211069%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl211056211074%_))
                              (let ((_%$%e211057211077%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl211056211074%_))))
                                (let ((_%$%hd211058211080%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e211057211077%_)))
                                      (_%$%tl211059211082%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e211057211077%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl211059211082%_))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-binding-id
                                         _%$%hd211058211080%_))
                                      (_%$%g211051211064%_
                                       _%$%g211052211067%_))))
                              (_%$%g211051211064%_ _%$%g211052211067%_))))
                      (_%$%g211051211064%_ _%$%g211052211067%_)))))
          (_%$%g211050211097%_ _%stx211049%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self210980%_ _%stx210981%_)
        (let* ((_%$%g210983211000%_
                (lambda (_%$%g210984210997%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g210984210997%_))))
               (_%$%g210982211045%_
                (lambda (_%$%g210984211003%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g210984211003%_))
                      (let ((_%$%e210987211005%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g210984211003%_))))
                        (let ((_%$%hd210988211008%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e210987211005%_)))
                              (_%$%tl210989211010%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e210987211005%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl210989211010%_))
                              (let ((_%$%e210990211013%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl210989211010%_))))
                                (let ((_%$%hd210991211016%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e210990211013%_)))
                                      (_%$%tl210992211018%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e210990211013%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl210992211018%_))
                                      (let ((_%$%e210993211021%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl210992211018%_))))
                                        (let ((_%$%hd210994211024%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e210993211021%_)))
                                              (_%$%tl210995211026%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e210993211021%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl210995211026%_))
                                              (cons 'set!
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#generate-runtime-binding-id
                                                             _%$%hd210991211016%_))
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self210980%_
                           _%$%hd210994211024%_))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g210983211000%_
                                               _%$%g210984211003%_))))
                                      (_%$%g210983211000%_
                                       _%$%g210984211003%_))))
                              (_%$%g210983211000%_ _%$%g210984211003%_))))
                      (_%$%g210983211000%_ _%$%g210984211003%_)))))
          (_%$%g210982211045%_ _%stx210981%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self210791%_ _%stx210792%_)
        (let* ((_%$%g210794210811%_
                (lambda (_%$%g210795210808%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g210795210808%_))))
               (_%$%g210793210977%_
                (lambda (_%$%g210795210814%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g210795210814%_))
                      (let ((_%$%e210798210816%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g210795210814%_))))
                        (let ((_%$%hd210799210819%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e210798210816%_)))
                              (_%$%tl210800210821%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e210798210816%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl210800210821%_))
                              (let ((_%$%e210801210824%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl210800210821%_))))
                                (let ((_%$%hd210802210827%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e210801210824%_)))
                                      (_%$%tl210803210829%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e210801210824%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl210803210829%_))
                                      (let ((_%$%e210804210832%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl210803210829%_))))
                                        (let ((_%$%hd210805210835%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e210804210832%_)))
                                              (_%$%tl210806210837%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e210804210832%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl210806210837%_))
                                              (if (gxc#current-compile-decls-unsafe?)
                                                  (cons '##structure-instance-of?
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__1 _%self210791%_ _%$%hd210805210835%_))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self210791%_
                               _%$%hd210802210827%_))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let _%lp210856%_ ((_%rest210859%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$%hd210802210827%_
                                    (cons _%$%hd210805210835%_ '())))
                             (_%bind210861%_ '())
                             (_%args210862%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%$%rest210863210871%_
                                                            _%rest210859%_)
                                                           (_%$%else210865210879%_
                                                            (lambda ()
                                                              (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%bind210861%_
                                  (cons '(declare (not safe))
                                        (cons (cons '##structure-instance-of?
                                                    _%args210862%_)
                                              '()))))))
                   (_%$%K210867210965%_
                    (lambda (_%rest210882%_ _%e210883%_)
                      (let* ((_%__stx217796217797%_ _%e210883%_)
                             (_%$%g210888210906%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx217796217797%_)))))
                        (let ((_%__kont217798217799%_
                               (lambda ()
                                 (_%lp210856%_
                                  _%rest210882%_
                                  _%bind210861%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e210883%_))
                                        _%args210862%_))))
                              (_%__kont217800217801%_
                               (lambda ()
                                 (_%lp210856%_
                                  _%rest210882%_
                                  _%bind210861%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e210883%_))
                                        _%args210862%_))))
                              (_%__kont217802217803%_
                               (lambda ()
                                 (let ((_%tmp210913%_
                                        (let ((__tmp218247
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__tmp))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp218247))))
                                   (_%lp210856%_
                                    _%rest210882%_
                                    (cons (cons _%tmp210913%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__0
                                                         _%e210883%_))
                                                      '()))
                                          _%bind210861%_)
                                    (cons _%tmp210913%_ _%args210862%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx217796217797%_))
                              (let ((_%$%e210890210944%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx217796217797%_))))
                                (let ((_%$%tl210892210949%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e210890210944%_)))
                                      (_%$%hd210891210947%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e210890210944%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd210891210947%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd210891210947%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl210892210949%_))
                                              (let ((_%$%e210893210952%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl210892210949%_))))
                                                (let ((_%$%tl210895210957%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e210893210952%_)))
                                                      (_%$%hd210894210955%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e210893210952%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl210895210957%_))
                                                      (_%__kont217798217799%_)
                                                      (_%__kont217802217803%_))))
                                              (_%__kont217802217803%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%$%hd210891210947%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl210892210949%_))
                                                  (let ((_%$%e210899210929%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl210892210949%_))))
                                                    (let ((_%$%tl210901210934%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e210899210929%_)))
                                                          (_%$%hd210900210932%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e210899210929%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl210901210934%_))
                                                          (_%__kont217800217801%_)
                                                          (_%__kont217802217803%_))))
                                                  (_%__kont217802217803%_))
                                              (_%__kont217802217803%_)))
                                      (_%__kont217802217803%_))))
                              (_%__kont217802217803%_)))))))
              (if (pair? _%$%rest210863210871%_)
                  (let ((_%$%hd210868210968%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest210863210871%_)))
                        (_%$%tl210869210970%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest210863210871%_))))
                    (let* ((_%e210973%_ _%$%hd210868210968%_)
                           (_%rest210975%_ _%$%tl210869210970%_))
                      (_%$%K210867210965%_ _%rest210975%_ _%e210973%_)))
                  (_%$%else210865210879%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g210794210811%_
                                               _%$%g210795210814%_))))
                                      (_%$%g210794210811%_
                                       _%$%g210795210814%_))))
                              (_%$%g210794210811%_ _%$%g210795210814%_))))
                      (_%$%g210794210811%_ _%$%g210795210814%_)))))
          (_%$%g210793210977%_ _%stx210792%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self210602%_ _%stx210603%_)
        (let* ((_%$%g210605210622%_
                (lambda (_%$%g210606210619%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g210606210619%_))))
               (_%$%g210604210788%_
                (lambda (_%$%g210606210625%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g210606210625%_))
                      (let ((_%$%e210609210627%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g210606210625%_))))
                        (let ((_%$%hd210610210630%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e210609210627%_)))
                              (_%$%tl210611210632%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e210609210627%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl210611210632%_))
                              (let ((_%$%e210612210635%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl210611210632%_))))
                                (let ((_%$%hd210613210638%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e210612210635%_)))
                                      (_%$%tl210614210640%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e210612210635%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl210614210640%_))
                                      (let ((_%$%e210615210643%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl210614210640%_))))
                                        (let ((_%$%hd210616210646%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e210615210643%_)))
                                              (_%$%tl210617210648%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e210615210643%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl210617210648%_))
                                              (if (gxc#current-compile-decls-unsafe?)
                                                  (cons '##structure-direct-instance-of?
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__1 _%self210602%_ _%$%hd210616210646%_))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self210602%_
                               _%$%hd210613210638%_))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let _%lp210667%_ ((_%rest210670%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$%hd210613210638%_
                                    (cons _%$%hd210616210646%_ '())))
                             (_%bind210672%_ '())
                             (_%args210673%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%$%rest210674210682%_
                                                            _%rest210670%_)
                                                           (_%$%else210676210690%_
                                                            (lambda ()
                                                              (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%bind210672%_
                                  (cons '(declare (not safe))
                                        (cons (cons '##structure-direct-instance-of?
                                                    _%args210673%_)
                                              '()))))))
                   (_%$%K210678210776%_
                    (lambda (_%rest210693%_ _%e210694%_)
                      (let* ((_%__stx217842217843%_ _%e210694%_)
                             (_%$%g210699210717%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx217842217843%_)))))
                        (let ((_%__kont217844217845%_
                               (lambda ()
                                 (_%lp210667%_
                                  _%rest210693%_
                                  _%bind210672%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e210694%_))
                                        _%args210673%_))))
                              (_%__kont217846217847%_
                               (lambda ()
                                 (_%lp210667%_
                                  _%rest210693%_
                                  _%bind210672%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e210694%_))
                                        _%args210673%_))))
                              (_%__kont217848217849%_
                               (lambda ()
                                 (let ((_%tmp210724%_
                                        (let ((__tmp218248
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__tmp))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp218248))))
                                   (_%lp210667%_
                                    _%rest210693%_
                                    (cons (cons _%tmp210724%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__0
                                                         _%e210694%_))
                                                      '()))
                                          _%bind210672%_)
                                    (cons _%tmp210724%_ _%args210673%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx217842217843%_))
                              (let ((_%$%e210701210755%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx217842217843%_))))
                                (let ((_%$%tl210703210760%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e210701210755%_)))
                                      (_%$%hd210702210758%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e210701210755%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd210702210758%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd210702210758%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl210703210760%_))
                                              (let ((_%$%e210704210763%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl210703210760%_))))
                                                (let ((_%$%tl210706210768%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e210704210763%_)))
                                                      (_%$%hd210705210766%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e210704210763%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl210706210768%_))
                                                      (_%__kont217844217845%_)
                                                      (_%__kont217848217849%_))))
                                              (_%__kont217848217849%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%$%hd210702210758%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl210703210760%_))
                                                  (let ((_%$%e210710210740%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl210703210760%_))))
                                                    (let ((_%$%tl210712210745%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e210710210740%_)))
                                                          (_%$%hd210711210743%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e210710210740%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl210712210745%_))
                                                          (_%__kont217846217847%_)
                                                          (_%__kont217848217849%_))))
                                                  (_%__kont217848217849%_))
                                              (_%__kont217848217849%_)))
                                      (_%__kont217848217849%_))))
                              (_%__kont217848217849%_)))))))
              (if (pair? _%$%rest210674210682%_)
                  (let ((_%$%hd210679210779%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest210674210682%_)))
                        (_%$%tl210680210781%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest210674210682%_))))
                    (let* ((_%e210784%_ _%$%hd210679210779%_)
                           (_%rest210786%_ _%$%tl210680210781%_))
                      (_%$%K210678210776%_ _%rest210786%_ _%e210784%_)))
                  (_%$%else210676210690%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g210605210622%_
                                               _%$%g210606210625%_))))
                                      (_%$%g210605210622%_
                                       _%$%g210606210625%_))))
                              (_%$%g210605210622%_ _%$%g210606210625%_))))
                      (_%$%g210605210622%_ _%$%g210606210625%_)))))
          (_%$%g210604210788%_ _%stx210603%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self210518%_ _%stx210519%_)
        (let* ((_%$%g210521210542%_
                (lambda (_%$%g210522210539%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g210522210539%_))))
               (_%$%g210520210599%_
                (lambda (_%$%g210522210545%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g210522210545%_))
                      (let ((_%$%e210526210547%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g210522210545%_))))
                        (let ((_%$%hd210527210550%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e210526210547%_)))
                              (_%$%tl210528210552%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e210526210547%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl210528210552%_))
                              (let ((_%$%e210529210555%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl210528210552%_))))
                                (let ((_%$%hd210530210558%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e210529210555%_)))
                                      (_%$%tl210531210560%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e210529210555%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl210531210560%_))
                                      (let ((_%$%e210532210563%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl210531210560%_))))
                                        (let ((_%$%hd210533210566%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e210532210563%_)))
                                              (_%$%tl210534210568%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e210532210563%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl210534210568%_))
                                              (let ((_%$%e210535210571%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl210534210568%_))))
                                                (let ((_%$%hd210536210574%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e210535210571%_)))
                                                      (_%$%tl210537210576%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e210535210571%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl210537210576%_))
                                                      (cons '##structure-ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#compile-e__1
                             _%self210518%_
                             _%$%hd210536210574%_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _%self210518%_
                                   _%$%hd210533210566%_))
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self210518%_
                                         _%$%hd210530210558%_))
                                      (cons ''#f '())))))
              (_%$%g210521210542%_ _%$%g210522210545%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g210521210542%_
                                               _%$%g210522210545%_))))
                                      (_%$%g210521210542%_
                                       _%$%g210522210545%_))))
                              (_%$%g210521210542%_ _%$%g210522210545%_))))
                      (_%$%g210521210542%_ _%$%g210522210545%_)))))
          (_%$%g210520210599%_ _%stx210519%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self210418%_ _%stx210419%_)
        (let* ((_%$%g210421210446%_
                (lambda (_%$%g210422210443%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g210422210443%_))))
               (_%$%g210420210515%_
                (lambda (_%$%g210422210449%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g210422210449%_))
                      (let ((_%$%e210427210451%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g210422210449%_))))
                        (let ((_%$%hd210428210454%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e210427210451%_)))
                              (_%$%tl210429210456%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e210427210451%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl210429210456%_))
                              (let ((_%$%e210430210459%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl210429210456%_))))
                                (let ((_%$%hd210431210462%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e210430210459%_)))
                                      (_%$%tl210432210464%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e210430210459%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl210432210464%_))
                                      (let ((_%$%e210433210467%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl210432210464%_))))
                                        (let ((_%$%hd210434210470%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e210433210467%_)))
                                              (_%$%tl210435210472%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e210433210467%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl210435210472%_))
                                              (let ((_%$%e210436210475%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl210435210472%_))))
                                                (let ((_%$%hd210437210478%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e210436210475%_)))
                                                      (_%$%tl210438210480%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e210436210475%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl210438210480%_))
                                                      (let ((_%$%e210439210483%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl210438210480%_))))
                (let ((_%$%hd210440210486%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e210439210483%_)))
                      (_%$%tl210441210488%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e210439210483%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl210441210488%_))
                      (cons '##structure-set!
                            (cons (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self210418%_
                                     _%$%hd210437210478%_))
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self210418%_
                                           _%$%hd210440210486%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self210418%_
                                                 _%$%hd210434210470%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self210418%_
                                                       _%$%hd210431210462%_))
                                                    (cons ''#f '()))))))
                      (_%$%g210421210446%_ _%$%g210422210449%_))))
              (_%$%g210421210446%_ _%$%g210422210449%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g210421210446%_
                                               _%$%g210422210449%_))))
                                      (_%$%g210421210446%_
                                       _%$%g210422210449%_))))
                              (_%$%g210421210446%_ _%$%g210422210449%_))))
                      (_%$%g210421210446%_ _%$%g210422210449%_)))))
          (_%$%g210420210515%_ _%stx210419%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self210334%_ _%stx210335%_)
        (let* ((_%$%g210337210358%_
                (lambda (_%$%g210338210355%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g210338210355%_))))
               (_%$%g210336210415%_
                (lambda (_%$%g210338210361%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g210338210361%_))
                      (let ((_%$%e210342210363%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g210338210361%_))))
                        (let ((_%$%hd210343210366%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e210342210363%_)))
                              (_%$%tl210344210368%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e210342210363%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl210344210368%_))
                              (let ((_%$%e210345210371%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl210344210368%_))))
                                (let ((_%$%hd210346210374%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e210345210371%_)))
                                      (_%$%tl210347210376%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e210345210371%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl210347210376%_))
                                      (let ((_%$%e210348210379%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl210347210376%_))))
                                        (let ((_%$%hd210349210382%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e210348210379%_)))
                                              (_%$%tl210350210384%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e210348210379%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl210350210384%_))
                                              (let ((_%$%e210351210387%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl210350210384%_))))
                                                (let ((_%$%hd210352210390%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e210351210387%_)))
                                                      (_%$%tl210353210392%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e210351210387%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl210353210392%_))
                                                      (cons '##direct-structure-ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#compile-e__1
                             _%self210334%_
                             _%$%hd210352210390%_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _%self210334%_
                                   _%$%hd210349210382%_))
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self210334%_
                                         _%$%hd210346210374%_))
                                      (cons ''#f '())))))
              (_%$%g210337210358%_ _%$%g210338210361%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g210337210358%_
                                               _%$%g210338210361%_))))
                                      (_%$%g210337210358%_
                                       _%$%g210338210361%_))))
                              (_%$%g210337210358%_ _%$%g210338210361%_))))
                      (_%$%g210337210358%_ _%$%g210338210361%_)))))
          (_%$%g210336210415%_ _%stx210335%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self210234%_ _%stx210235%_)
        (let* ((_%$%g210237210262%_
                (lambda (_%$%g210238210259%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g210238210259%_))))
               (_%$%g210236210331%_
                (lambda (_%$%g210238210265%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g210238210265%_))
                      (let ((_%$%e210243210267%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g210238210265%_))))
                        (let ((_%$%hd210244210270%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e210243210267%_)))
                              (_%$%tl210245210272%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e210243210267%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl210245210272%_))
                              (let ((_%$%e210246210275%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl210245210272%_))))
                                (let ((_%$%hd210247210278%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e210246210275%_)))
                                      (_%$%tl210248210280%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e210246210275%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl210248210280%_))
                                      (let ((_%$%e210249210283%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl210248210280%_))))
                                        (let ((_%$%hd210250210286%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e210249210283%_)))
                                              (_%$%tl210251210288%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e210249210283%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl210251210288%_))
                                              (let ((_%$%e210252210291%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl210251210288%_))))
                                                (let ((_%$%hd210253210294%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e210252210291%_)))
                                                      (_%$%tl210254210296%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e210252210291%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl210254210296%_))
                                                      (let ((_%$%e210255210299%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl210254210296%_))))
                (let ((_%$%hd210256210302%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e210255210299%_)))
                      (_%$%tl210257210304%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e210255210299%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl210257210304%_))
                      (cons '##direct-structure-set!
                            (cons (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self210234%_
                                     _%$%hd210253210294%_))
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self210234%_
                                           _%$%hd210256210302%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self210234%_
                                                 _%$%hd210250210286%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self210234%_
                                                       _%$%hd210247210278%_))
                                                    (cons ''#f '()))))))
                      (_%$%g210237210262%_ _%$%g210238210265%_))))
              (_%$%g210237210262%_ _%$%g210238210265%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g210237210262%_
                                               _%$%g210238210265%_))))
                                      (_%$%g210237210262%_
                                       _%$%g210238210265%_))))
                              (_%$%g210237210262%_ _%$%g210238210265%_))))
                      (_%$%g210237210262%_ _%$%g210238210265%_)))))
          (_%$%g210236210331%_ _%stx210235%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self210029%_ _%stx210030%_)
        (let* ((_%$%g210032210053%_
                (lambda (_%$%g210033210050%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g210033210050%_))))
               (_%$%g210031210231%_
                (lambda (_%$%g210033210056%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g210033210056%_))
                      (let ((_%$%e210037210058%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g210033210056%_))))
                        (let ((_%$%hd210038210061%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e210037210058%_)))
                              (_%$%tl210039210063%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e210037210058%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl210039210063%_))
                              (let ((_%$%e210040210066%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl210039210063%_))))
                                (let ((_%$%hd210041210069%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e210040210066%_)))
                                      (_%$%tl210042210071%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e210040210066%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl210042210071%_))
                                      (let ((_%$%e210043210074%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl210042210071%_))))
                                        (let ((_%$%hd210044210077%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e210043210074%_)))
                                              (_%$%tl210045210079%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e210043210074%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl210045210079%_))
                                              (let ((_%$%e210046210082%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl210045210079%_))))
                                                (let ((_%$%hd210047210085%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e210046210082%_)))
                                                      (_%$%tl210048210087%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e210046210082%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl210048210087%_))
                                                      (if (gxc#current-compile-decls-unsafe?)
                                                          (cons '##unchecked-structure-ref
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self210029%_
                                 _%$%hd210047210085%_))
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self210029%_
                                       _%$%hd210044210077%_))
                                    (cons ''#f (cons ''#f '())))))
                  (let _%lp210110%_ ((_%rest210113%_
                                      (cons _%$%hd210044210077%_
                                            (cons _%$%hd210047210085%_ '())))
                                     (_%bind210115%_ '())
                                     (_%args210116%_ '()))
                    (let* ((_%$%rest210117210125%_ _%rest210113%_)
                           (_%$%else210119210133%_
                            (lambda ()
                              (cons 'let
                                    (cons _%bind210115%_
                                          (cons '(declare (not safe))
                                                (cons (cons '##unchecked-structure-ref
                                                            (let ((__tmp218249
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons ''#f (cons ''#f '()))))
                      (declare (not safe))
                      (##append _%args210116%_ __tmp218249)))
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (_%$%K210121210219%_
                            (lambda (_%rest210136%_ _%e210137%_)
                              (let* ((_%__stx217888217889%_ _%e210137%_)
                                     (_%$%g210142210160%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx217888217889%_)))))
                                (let ((_%__kont217890217891%_
                                       (lambda ()
                                         (_%lp210110%_
                                          _%rest210136%_
                                          _%bind210115%_
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _%e210137%_))
                                                _%args210116%_))))
                                      (_%__kont217892217893%_
                                       (lambda ()
                                         (_%lp210110%_
                                          _%rest210136%_
                                          _%bind210115%_
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _%e210137%_))
                                                _%args210116%_))))
                                      (_%__kont217894217895%_
                                       (lambda ()
                                         (let ((_%tmp210167%_
                                                (let ((__tmp218250
                                                       (let ()
                                                         (declare (not safe))
                                                         (##gensym '__tmp))))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp218250))))
                                           (_%lp210110%_
                                            _%rest210136%_
                                            (cons (cons _%tmp210167%_
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _%e210137%_))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%bind210115%_)
                                            (cons _%tmp210167%_
                                                  _%args210116%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx217888217889%_))
                                      (let ((_%$%e210144210198%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx217888217889%_))))
                                        (let ((_%$%tl210146210203%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e210144210198%_)))
                                              (_%$%hd210145210201%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e210144210198%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%$%hd210145210201%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#ref
                                                     _%$%hd210145210201%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl210146210203%_))
                                                      (let ((_%$%e210147210206%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl210146210203%_))))
                (let ((_%$%tl210149210211%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e210147210206%_)))
                      (_%$%hd210148210209%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e210147210206%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl210149210211%_))
                      (_%__kont217890217891%_)
                      (_%__kont217894217895%_))))
              (_%__kont217894217895%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#quote
                                                         _%$%hd210145210201%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl210146210203%_))
                                                          (let ((_%$%e210153210183%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl210146210203%_))))
                    (let ((_%$%tl210155210188%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e210153210183%_)))
                          (_%$%hd210154210186%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e210153210183%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl210155210188%_))
                          (_%__kont217892217893%_)
                          (_%__kont217894217895%_))))
                  (_%__kont217894217895%_))
              (_%__kont217894217895%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont217894217895%_))))
                                      (_%__kont217894217895%_)))))))
                      (if (pair? _%$%rest210117210125%_)
                          (let ((_%$%hd210122210222%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%rest210117210125%_)))
                                (_%$%tl210123210224%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%rest210117210125%_))))
                            (let* ((_%e210227%_ _%$%hd210122210222%_)
                                   (_%rest210229%_ _%$%tl210123210224%_))
                              (_%$%K210121210219%_
                               _%rest210229%_
                               _%e210227%_)))
                          (_%$%else210119210133%_)))))
              (_%$%g210032210053%_ _%$%g210033210056%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g210032210053%_
                                               _%$%g210033210056%_))))
                                      (_%$%g210032210053%_
                                       _%$%g210033210056%_))))
                              (_%$%g210032210053%_ _%$%g210033210056%_))))
                      (_%$%g210032210053%_ _%$%g210033210056%_)))))
          (_%$%g210031210231%_ _%stx210030%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self209808%_ _%stx209809%_)
        (let* ((_%$%g209811209836%_
                (lambda (_%$%g209812209833%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g209812209833%_))))
               (_%$%g209810210026%_
                (lambda (_%$%g209812209839%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g209812209839%_))
                      (let ((_%$%e209817209841%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g209812209839%_))))
                        (let ((_%$%hd209818209844%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e209817209841%_)))
                              (_%$%tl209819209846%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e209817209841%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl209819209846%_))
                              (let ((_%$%e209820209849%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl209819209846%_))))
                                (let ((_%$%hd209821209852%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e209820209849%_)))
                                      (_%$%tl209822209854%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e209820209849%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl209822209854%_))
                                      (let ((_%$%e209823209857%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl209822209854%_))))
                                        (let ((_%$%hd209824209860%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e209823209857%_)))
                                              (_%$%tl209825209862%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e209823209857%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl209825209862%_))
                                              (let ((_%$%e209826209865%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl209825209862%_))))
                                                (let ((_%$%hd209827209868%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e209826209865%_)))
                                                      (_%$%tl209828209870%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e209826209865%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl209828209870%_))
                                                      (let ((_%$%e209829209873%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl209828209870%_))))
                (let ((_%$%hd209830209876%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e209829209873%_)))
                      (_%$%tl209831209878%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e209829209873%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl209831209878%_))
                      (if (gxc#current-compile-decls-unsafe?)
                          (cons '##unchecked-structure-set!
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self209808%_
                                         _%$%hd209827209868%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self209808%_
                                               _%$%hd209830209876%_))
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self209808%_
                                                     _%$%hd209824209860%_))
                                                  (cons ''#f
                                                        (cons ''#f '()))))))
                          (let _%lp209905%_ ((_%rest209908%_
                                              (cons _%$%hd209824209860%_
                                                    (cons _%$%hd209830209876%_
                                                          (cons _%$%hd209827209868%_
                                                                '()))))
                                             (_%bind209910%_ '())
                                             (_%args209911%_ '()))
                            (let* ((_%$%rest209912209920%_ _%rest209908%_)
                                   (_%$%else209914209928%_
                                    (lambda ()
                                      (cons 'let
                                            (cons _%bind209910%_
                                                  (cons '(declare (not safe))
                                                        (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp218251 (cons ''#f (cons ''#f '()))))
                              (declare (not safe))
                              (##append _%args209911%_ __tmp218251)))
                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%$%K209916210014%_
                                    (lambda (_%rest209931%_ _%e209932%_)
                                      (let* ((_%__stx217934217935%_
                                              _%e209932%_)
                                             (_%$%g209937209955%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%__stx217934217935%_)))))
                                        (let ((_%__kont217936217937%_
                                               (lambda ()
                                                 (_%lp209905%_
                                                  _%rest209931%_
                                                  _%bind209910%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e209932%_))
                                                        _%args209911%_))))
                                              (_%__kont217938217939%_
                                               (lambda ()
                                                 (_%lp209905%_
                                                  _%rest209931%_
                                                  _%bind209910%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e209932%_))
                                                        _%args209911%_))))
                                              (_%__kont217940217941%_
                                               (lambda ()
                                                 (let ((_%tmp209962%_
                                                        (let ((__tmp218252
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##gensym '__tmp))))
                  (declare (not safe))
                  (make-symbol__0 __tmp218252))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%lp209905%_
                                                    _%rest209931%_
                                                    (cons (cons _%tmp209962%_
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gxc#compile-e__0 _%e209932%_))
                              '()))
                  _%bind209910%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%tmp209962%_
                                                          _%args209911%_))))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%__stx217934217935%_))
                                              (let ((_%$%e209939209993%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%__stx217934217935%_))))
                                                (let ((_%$%tl209941209998%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e209939209993%_)))
                                                      (_%$%hd209940209996%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e209939209993%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%$%hd209940209996%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%$%hd209940209996%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl209941209998%_))
                      (let ((_%$%e209942210001%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl209941209998%_))))
                        (let ((_%$%tl209944210006%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e209942210001%_)))
                              (_%$%hd209943210004%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e209942210001%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl209944210006%_))
                              (_%__kont217936217937%_)
                              (_%__kont217940217941%_))))
                      (_%__kont217940217941%_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-eq? '%#quote _%$%hd209940209996%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl209941209998%_))
                          (let ((_%$%e209948209978%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl209941209998%_))))
                            (let ((_%$%tl209950209983%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e209948209978%_)))
                                  (_%$%hd209949209981%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e209948209978%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl209950209983%_))
                                  (_%__kont217938217939%_)
                                  (_%__kont217940217941%_))))
                          (_%__kont217940217941%_))
                      (_%__kont217940217941%_)))
              (_%__kont217940217941%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont217940217941%_)))))))
                              (if (pair? _%$%rest209912209920%_)
                                  (let ((_%$%hd209917210017%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%rest209912209920%_)))
                                        (_%$%tl209918210019%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%rest209912209920%_))))
                                    (let* ((_%e210022%_ _%$%hd209917210017%_)
                                           (_%rest210024%_
                                            _%$%tl209918210019%_))
                                      (_%$%K209916210014%_
                                       _%rest210024%_
                                       _%e210022%_)))
                                  (_%$%else209914209928%_)))))
                      (_%$%g209811209836%_ _%$%g209812209839%_))))
              (_%$%g209811209836%_ _%$%g209812209839%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g209811209836%_
                                               _%$%g209812209839%_))))
                                      (_%$%g209811209836%_
                                       _%$%g209812209839%_))))
                              (_%$%g209811209836%_ _%$%g209812209839%_))))
                      (_%$%g209811209836%_ _%$%g209812209839%_)))))
          (_%$%g209810210026%_ _%stx209809%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self209647%_ _%stx209648%_)
        (letrec ((_%import-set-template209650%_
                  (lambda (_%in209753%_ _%phi209754%_)
                    (let ((_%iphi209756%_
                           (fx+ _%phi209754%_
                                (##direct-structure-ref
                                 _%in209753%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports209757%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in209753%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp209759%_ ((_%rest209761%_ _%imports209757%_)
                                         (_%r209762%_ '()))
                        (let* ((_%$%rest209763209771%_ _%rest209761%_)
                               (_%$%else209765209779%_ (lambda () _%r209762%_))
                               (_%$%K209767209796%_
                                (lambda (_%rest209782%_ _%in209783%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in209783%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi209756%_))
                                          (_%lp209759%_
                                           _%rest209782%_
                                           (cons _%in209783%_ _%r209762%_))
                                          (_%lp209759%_
                                           _%rest209782%_
                                           _%r209762%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in209783%_
                                             'gx#module-import::t))
                                          (let ((_%iphi209787%_
                                                 (fx+ _%phi209754%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in209783%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi209787%_))
                                                (_%lp209759%_
                                                 _%rest209782%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in209783%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r209762%_))
                                                (_%lp209759%_
                                                 _%rest209782%_
                                                 _%r209762%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in209783%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi209790%_
                                                     (fx+ _%iphi209756%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in209783%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi209790%_))
                                                    (_%lp209759%_
                                                     _%rest209782%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in209783%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r209762%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi209790%_))
                                                        (_%lp209759%_
                                                         _%rest209782%_
                                                         (let ((__tmp218253
                                                                (_%import-set-template209650%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in209783%_
                         _%iphi209756%_)))
                   (declare (not safe))
                   (foldl__0 cons _%r209762%_ __tmp218253)))
                (_%lp209759%_ _%rest209782%_ _%r209762%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp209759%_
                                               _%rest209782%_
                                               _%r209762%_)))))))
                          (if (pair? _%$%rest209763209771%_)
                              (let ((_%$%hd209768209799%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest209763209771%_)))
                                    (_%$%tl209769209801%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest209763209771%_))))
                                (let* ((_%in209804%_ _%$%hd209768209799%_)
                                       (_%rest209806%_ _%$%tl209769209801%_))
                                  (_%$%K209767209796%_
                                   _%rest209806%_
                                   _%in209804%_)))
                              (_%$%else209765209779%_))))))))
          (let* ((_%$%g209652209662%_
                  (lambda (_%$%g209653209659%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g209653209659%_))))
                 (_%$%g209651209750%_
                  (lambda (_%$%g209653209665%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g209653209665%_))
                        (let ((_%$%e209655209667%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g209653209665%_))))
                          (let ((_%$%hd209656209670%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e209655209667%_)))
                                (_%$%tl209657209672%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e209655209667%_))))
                            (let ((_%ht209686%_
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq))))
                              (let _%lp209688%_ ((_%rest209690%_
                                                  _%$%tl209657209672%_)
                                                 (_%loads209691%_ '()))
                                (letrec ((_%K209693%_
                                          (lambda (_%ctx209743%_
                                                   _%rest209744%_)
                                            (let ((_%id209746%_
                                                   (##structure-ref
                                                    _%ctx209743%_
                                                    '1
                                                    gx#expander-context::t
                                                    '#f)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__hash-get
                                                     _%ht209686%_
                                                     _%id209746%_))
                                                  (_%lp209688%_
                                                   _%rest209744%_
                                                   _%loads209691%_)
                                                  (let ((_%rt209748%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#module-id->path-string
                                                            _%id209746%_))))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht209686%_
                                                       _%id209746%_
                                                       _%rt209748%_))
                                                    (_%lp209688%_
                                                     _%rest209744%_
                                                     (cons _%rt209748%_
                                                           _%loads209691%_))))))))
                                  (let* ((_%$%rest209694209702%_
                                          _%rest209690%_)
                                         (_%$%else209696209714%_
                                          (lambda ()
                                            (cons 'begin
                                                  (let ((__tmp218255
                                                         (lambda (_%$%g209709209711%_)
                                                           (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g209709209711%_)))
                (__tmp218254 (reverse _%loads209691%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (##map __tmp218255
                                                           __tmp218254)))))
                                         (_%$%K209698209731%_
                                          (lambda (_%rest209717%_ _%in209718%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-instance-of?
                                                   _%in209718%_
                                                   'gx#module-context::t))
                                                (_%K209693%_
                                                 _%in209718%_
                                                 _%rest209717%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##structure-direct-instance-of?
                                                       _%in209718%_
                                                       'gx#module-import::t))
                                                    (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%in209718%_
                            '3
                            '#f
                            '#f)))
                (_%K209693%_
                 (##direct-structure-ref
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%in209718%_ '1 '#f '#f))
                  '1
                  gx#module-export::t
                  '#f)
                 _%rest209717%_)
                (_%lp209688%_ _%rest209717%_ _%loads209691%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           _%in209718%_
                                                           'gx#import-set::t))
                                                        (let ((_%phi209723%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref _%in209718%_ '2 '#f '#f))))
                  (if (fxzero? _%phi209723%_)
                      (_%K209693%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%in209718%_ '1 '#f '#f))
                       _%rest209717%_)
                      (if (fxpositive? _%phi209723%_)
                          (let ((_%deps209727%_
                                 (_%import-set-template209650%_
                                  _%in209718%_
                                  '0)))
                            (_%lp209688%_
                             (let ()
                               (declare (not safe))
                               (foldl__0 cons _%rest209717%_ _%deps209727%_))
                             _%loads209691%_))
                          (_%lp209688%_ _%rest209717%_ _%loads209691%_))))
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"Unexpected import"
                   _%stx209648%_
                   _%in209718%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%$%rest209694209702%_)
                                        (let ((_%$%hd209699209734%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%rest209694209702%_)))
                                              (_%$%tl209700209736%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%rest209694209702%_))))
                                          (let* ((_%in209739%_
                                                  _%$%hd209699209734%_)
                                                 (_%rest209741%_
                                                  _%$%tl209700209736%_))
                                            (_%$%K209698209731%_
                                             _%rest209741%_
                                             _%in209739%_)))
                                        (_%$%else209696209714%_))))))))
                        (_%$%g209652209662%_ _%$%g209653209665%_)))))
            (_%$%g209651209750%_ _%stx209648%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self209461%_ _%stx209462%_)
        (letrec ((_%add-lift!209464%_
                  (lambda (_%expr209645%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr209645%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote209465%_
                  (lambda (_%id209642%_ _%marks209643%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id209642%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks209643%_
                                                        '()))))))))
                 (_%generate-simple209466%_
                  (lambda (_%stxq209637%_)
                    (let ((_%gid209639%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid209640%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%stxq209637%_))))
                      (_%add-lift!209464%_
                       (cons 'define
                             (cons _%gid209639%_
                                   (cons (_%generate-syntax-quote209465%_
                                          _%qid209640%_
                                          ''())
                                         '()))))
                      (let ((__tmp218256
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp218256 _%stxq209637%_ _%gid209639%_))
                      _%gid209639%_)))
                 (_%generate-serialized209467%_
                  (lambda (_%stxq209627%_ _%marks209628%_)
                    (let* ((_%mark-refs209630%_
                            (map _%generate-mark209468%_ _%marks209628%_))
                           (_%gid209632%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid209634%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier
                               _%stxq209627%_))))
                      (_%add-lift!209464%_
                       (cons 'define
                             (cons _%gid209632%_
                                   (cons (_%generate-syntax-quote209465%_
                                          _%qid209634%_
                                          (cons 'list _%mark-refs209630%_))
                                         '()))))
                      (let ((__tmp218257
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp218257 _%stxq209627%_ _%gid209632%_))
                      _%gid209632%_)))
                 (_%generate-mark209468%_
                  (lambda (_%mark209612%_)
                    (let ((_%$e209614%_
                           (let ((__tmp218258
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp218258 _%mark209612%_))))
                      (if _%$e209614%_
                          _%$e209614%_
                          (let* ((_%gid209618%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr209620%_
                                  (_%serialize-mark209469%_ _%mark209612%_))
                                 (_%ctx209622%_
                                  (let ((__tmp218259
                                         (##structure-ref
                                          _%mark209612%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp218259)))
                                 (_%ctx-ref209624%_
                                  (if (eq? _%ctx209622%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref209470%_
                                                               _%ctx209622%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp218260
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp218260
                               _%mark209612%_
                               _%gid209618%_))
                            (_%add-lift!209464%_
                             (cons 'define
                                   (cons _%gid209618%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr209620%_ '()))
                   (cons _%ctx-ref209624%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid209618%_)))))
                 (_%serialize-mark209469%_
                  (lambda (_%mark209560%_)
                    (letrec ((_%quote-e209562%_
                              (lambda (_%sym209610%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym209610%_))
                                    _%sym209610%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym209610%_))))))
                      (let* ((_%$%mark209563209572%_ _%mark209560%_)
                             (_%$%E209565209575%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%$%mark209563209572%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%$%K209566209587%_
                              (lambda (_%trace209578%_
                                       _%phi209579%_
                                       _%ctx209580%_
                                       _%subst209581%_)
                                (let ((_%subs209583%_
                                       (if _%subst209581%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst209581%_))
                                           '())))
                                  (cons _%phi209579%_
                                        (let ((__tmp218261
                                               (lambda (_%pair209585%_)
                                                 (cons (_%quote-e209562%_
                                                        (car _%pair209585%_))
                                                       (_%quote-e209562%_
                                                        (cdr _%pair209585%_))))))
                                          (declare (not safe))
                                          (##map __tmp218261
                                                 _%subs209583%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%$%mark209563209572%_
                               'gx#expander-mark::t))
                            (let* ((_%$%e209567209590%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%mark209563209572%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst209593%_ _%$%e209567209590%_)
                                   (_%$%e209568209595%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%mark209563209572%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx209598%_ _%$%e209568209595%_)
                                   (_%$%e209569209600%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%mark209563209572%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi209603%_ _%$%e209569209600%_)
                                   (_%$%e209570209605%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%mark209563209572%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace209608%_ _%$%e209570209605%_))
                              (_%$%K209566209587%_
                               _%trace209608%_
                               _%phi209603%_
                               _%ctx209598%_
                               _%subst209593%_))
                            (_%$%E209565209575%_))))))
                 (_%context-ref209470%_
                  (lambda (_%ctx209547%_)
                    (if (let ((__tmp218262
                               (##structure-ref
                                _%ctx209547%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp218262
                           'gx#module-context::t))
                        (let ((_%ctx-ref209549%_
                               (_%context-ref-nested209472%_ _%ctx209547%_))
                              (_%ctx-origin209550%_
                               (_%context-ref-origin209471%_ _%ctx209547%_))
                              (_%origin209551%_
                               (_%context-ref-origin209471%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin209551%_ _%ctx-origin209550%_)
                              (let ((_%ref209553%_
                                     (_%context-ref-nested209472%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp209555%_ ((_%ref209557%_
                                                    (cdr _%ref209553%_))
                                                   (_%ctx-ref209558%_
                                                    (cdr _%ctx-ref209549%_)))
                                  (if (and (pair? _%ref209557%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref209557%_))
                                                (car _%ctx-ref209558%_)))
                                      (_%lp209555%_
                                       (cdr _%ref209557%_)
                                       (cdr _%ctx-ref209558%_))
                                      (cons '#f _%ctx-ref209558%_))))
                              _%ctx-ref209549%_))
                        (let ((__tmp218263
                               (##structure-ref
                                _%ctx209547%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp218263)))))
                 (_%context-ref-origin209471%_
                  (lambda (_%ctx209539%_)
                    (let _%lp209541%_ ((_%ctx209543%_ _%ctx209539%_))
                      (let ((_%super209545%_
                             (##structure-ref
                              _%ctx209543%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super209545%_
                               'gx#module-context::t))
                            (_%lp209541%_ _%super209545%_)
                            _%ctx209543%_)))))
                 (_%context-ref-nested209472%_
                  (lambda (_%ctx209530%_)
                    (let _%lp209532%_ ((_%ctx209534%_ _%ctx209530%_)
                                       (_%r209535%_ '()))
                      (let ((_%super209537%_
                             (##structure-ref
                              _%ctx209534%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super209537%_
                               'gx#module-context::t))
                            (_%lp209532%_
                             _%super209537%_
                             (cons (car (##structure-ref
                                         _%ctx209534%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r209535%_))
                            (cons (let ((__tmp218264
                                         (##structure-ref
                                          _%ctx209534%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp218264))
                                  _%r209535%_)))))))
          (let* ((_%$%g209474209487%_
                  (lambda (_%$%g209475209484%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g209475209484%_))))
                 (_%$%g209473209527%_
                  (lambda (_%$%g209475209490%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g209475209490%_))
                        (let ((_%$%e209477209492%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g209475209490%_))))
                          (let ((_%$%hd209478209495%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e209477209492%_)))
                                (_%$%tl209479209497%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e209477209492%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl209479209497%_))
                                (let ((_%$%e209480209500%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl209479209497%_))))
                                  (let ((_%$%hd209481209503%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e209480209500%_)))
                                        (_%$%tl209482209505%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e209480209500%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl209482209505%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%$%hd209481209503%_))
                                            (let ((_%$e209521%_
                                                   (let ((__tmp218265
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-identifiers))))
                                                     (declare (not safe))
                                                     (hash-get
                                                      __tmp218265
                                                      _%$%hd209481209503%_))))
                                              (if _%$e209521%_
                                                  _%$e209521%_
                                                  (let ((_%marks209525%_
                                                         (##direct-structure-ref
                                                          _%$%hd209481209503%_
                                                          '4
                                                          gx#syntax-quote::t
                                                          '#f)))
                                                    (if (null? _%marks209525%_)
                                                        (_%generate-simple209466%_
                                                         _%$%hd209481209503%_)
                                                        (_%generate-serialized209467%_
                                                         _%$%hd209481209503%_
                                                         _%marks209525%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot quote non-identifier syntax"
                                               _%$%hd209481209503%_)))
                                        (_%$%g209474209487%_
                                         _%$%g209475209490%_))))
                                (_%$%g209474209487%_ _%$%g209475209490%_))))
                        (_%$%g209474209487%_ _%$%g209475209490%_)))))
            (_%$%g209473209527%_ _%stx209462%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self209393%_ _%stx209394%_)
        (let* ((_%$%g209396209413%_
                (lambda (_%$%g209397209410%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g209397209410%_))))
               (_%$%g209395209458%_
                (lambda (_%$%g209397209416%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g209397209416%_))
                      (let ((_%$%e209400209418%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g209397209416%_))))
                        (let ((_%$%hd209401209421%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e209400209418%_)))
                              (_%$%tl209402209423%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e209400209418%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl209402209423%_))
                              (let ((_%$%e209403209426%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl209402209423%_))))
                                (let ((_%$%hd209404209429%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e209403209426%_)))
                                      (_%$%tl209405209431%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e209403209426%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl209405209431%_))
                                      (let ((_%$%e209406209434%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl209405209431%_))))
                                        (let ((_%$%hd209407209437%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e209406209434%_)))
                                              (_%$%tl209408209439%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e209406209434%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl209408209439%_))
                                              (cons 'define
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%hd209404209429%_))
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self209393%_
                           _%$%hd209407209437%_))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g209396209413%_
                                               _%$%g209397209416%_))))
                                      (_%$%g209396209413%_
                                       _%$%g209397209416%_))))
                              (_%$%g209396209413%_ _%$%g209397209416%_))))
                      (_%$%g209396209413%_ _%$%g209397209416%_)))))
          (_%$%g209395209458%_ _%stx209394%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self209342%_ _%stx209343%_)
        (let* ((_%$%g209345209355%_
                (lambda (_%$%g209346209352%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g209346209352%_))))
               (_%$%g209344209390%_
                (lambda (_%$%g209346209358%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g209346209358%_))
                      (let ((_%$%e209348209360%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g209346209358%_))))
                        (let ((_%$%hd209349209363%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e209348209360%_)))
                              (_%$%tl209350209365%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e209348209360%_))))
                          (let* ((_%c-body209382%_
                                  (map (lambda (_%$%g209377209379%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self209342%_
                                            _%$%g209377209379%_)))
                                       _%$%tl209350209365%_))
                                 (_%c-body209387%_
                                  (let ((__tmp218266
                                         (lambda (_%$obj209384%_)
                                           (not (eq? _%$obj209384%_
                                                     '#!void)))))
                                    (declare (not safe))
                                    (##filter __tmp218266 _%c-body209382%_))))
                            (cons '%#begin _%c-body209387%_))))
                      (_%$%g209345209355%_ _%$%g209346209358%_)))))
          (_%$%g209344209390%_ _%stx209343%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self209247%_ _%stx209248%_)
        (let* ((_%$%g209250209260%_
                (lambda (_%$%g209251209257%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g209251209257%_))))
               (_%$%g209249209339%_
                (lambda (_%$%g209251209263%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g209251209263%_))
                      (let ((_%$%e209253209265%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g209251209263%_))))
                        (let ((_%$%hd209254209268%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e209253209265%_)))
                              (_%$%tl209255209270%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e209253209265%_))))
                          (let* ((_%phi209283%_
                                  (let ((__tmp218267
                                         (let ()
                                           (declare (not safe))
                                           (gx#current-expander-phi))))
                                    (declare (not safe))
                                    (##fx+ __tmp218267 '1)))
                                 (_%block209285%_
                                  (gxc#meta-state-begin-phi!
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self209247%_ 'state))
                                   _%phi209283%_))
                                 (_%compiled209288%_
                                  (let ((__tmp218268
                                         (lambda ()
                                           (gxc#apply-generate-meta-phi__%
                                            '#f
                                            (let ()
                                              (declare (not safe))
                                              (slot-ref__0
                                               _%self209247%_
                                               'state))
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     '%#begin))
                                                  _%$%tl209255209270%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp218268
                                     gx#current-expander-phi
                                     _%phi209283%_)))
                                 (_%$%g209291209301%_
                                  (lambda (_%$%g209292209298%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%$%g209292209298%_))))
                                 (_%$%g209290209336%_
                                  (lambda (_%$%g209292209304%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%g209292209304%_))
                                        (let ((_%$%e209294209306%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%g209292209304%_))))
                                          (let ((_%$%hd209295209309%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e209294209306%_)))
                                                (_%$%tl209296209311%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e209294209306%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd209295209309%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#begin
                                                       _%$%hd209295209309%_))
                                                    (let ((_%c-body209331%_
                                                           (filter (lambda (_%$obj209328%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (not (eq? _%$obj209328%_ '#!void)))
                           _%$%tl209296209311%_)))
              (if _%block209285%_
                  (cons '%#begin-syntax
                        (cons (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%block209285%_
                                                            '()))
                                                '())))
                              _%c-body209331%_))
                  (if (null? _%c-body209331%_)
                      '#!void
                      (cons '%#begin-syntax _%c-body209331%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g209291209301%_
                                                     _%$%g209292209304%_))
                                                (_%$%g209291209301%_
                                                 _%$%g209292209304%_))))
                                        (_%$%g209291209301%_
                                         _%$%g209292209304%_)))))
                            (_%$%g209290209336%_ _%compiled209288%_))))
                      (_%$%g209250209260%_ _%$%g209251209263%_)))))
          (_%$%g209249209339%_ _%stx209248%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self209178%_ _%stx209179%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self209178%_ 'state)))
        (let* ((_%$%g209181209195%_
                (lambda (_%$%g209182209192%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g209182209192%_))))
               (_%$%g209180209244%_
                (lambda (_%$%g209182209198%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g209182209198%_))
                      (let ((_%$%e209185209200%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g209182209198%_))))
                        (let ((_%$%hd209186209203%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e209185209200%_)))
                              (_%$%tl209187209205%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e209185209200%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl209187209205%_))
                              (let ((_%$%e209188209208%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl209187209205%_))))
                                (let ((_%$%hd209189209211%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e209188209208%_)))
                                      (_%$%tl209190209213%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e209188209208%_))))
                                  (let ((_%key209230%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-identifier-key
                                            _%$%hd209189209211%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (interned-symbol? _%key209230%_))
                                        '#!void
                                        (let ()
                                          (declare (not safe))
                                          (gxc#raise-compile-error
                                           '"Cannot compile module with uninterned id"
                                           _%stx209179%_
                                           _%$%hd209189209211%_
                                           _%key209230%_)))
                                    (let* ((_%ctx209232%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%$%hd209189209211%_)))
                                           (_%code209235%_
                                            (let ((__tmp218269
                                                   (lambda ()
                                                     (let ((__tmp218270
                                                            (##structure-ref
                                                             _%ctx209232%_
                                                             '11
                                                             gx#module-context::t
                                                             '#f)))
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self209178%_
                                                        __tmp218270)))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp218269
                                               gx#current-expander-context
                                               _%ctx209232%_)))
                                           (_%rt209237%_
                                            (let ((__tmp218271
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#current-compile-runtime-sections))))
                                              (declare (not safe))
                                              (hash-get
                                               __tmp218271
                                               _%ctx209232%_)))
                                           (_%loader209239%_
                                            (if _%rt209237%_
                                                (cons (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'load-module '()))
                          (cons (cons '%#quote (cons _%rt209237%_ '())) '())))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                           (_%modid209241%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd209189209211%_))))
                                      (gxc#meta-state-end-phi!
                                       (let ()
                                         (declare (not safe))
                                         (slot-ref__0 _%self209178%_ 'state)))
                                      (cons '%#module
                                            (cons _%modid209241%_
                                                  (cons _%code209235%_
                                                        _%loader209239%_)))))))
                              (_%$%g209181209195%_ _%$%g209182209198%_))))
                      (_%$%g209181209195%_ _%$%g209182209198%_)))))
          (_%$%g209180209244%_ _%stx209179%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx209165%_ _%context-chain209166%_)
        (let _%lp209168%_ ((_%ctx209170%_ _%ctx209165%_) (_%path209171%_ '()))
          (let ((_%super209173%_
                 (##structure-ref _%ctx209170%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super209173%_ _%context-chain209166%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx209170%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path209171%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super209173%_
                       'gx#module-context::t))
                    (_%lp209168%_
                     _%super209173%_
                     (cons (car (##structure-ref
                                 _%ctx209170%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path209171%_))
                    (cons (let ((__tmp218272
                                 (##structure-ref
                                  _%ctx209170%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp218272))
                          _%path209171%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp209158%_ ((_%ctx209160%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r209161%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx209160%_ 'gx#module-context::t))
              (_%lp209158%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx209160%_ '3 '#f '#f))
               (cons _%ctx209160%_ _%r209161%_))
              _%r209161%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self208923%_ _%stx208924%_)
        (letrec* ((_%context-chain208926%_ (gxc#current-context-chain))
                  (_%make-import-spec208927%_
                   (lambda (_%in209095%_)
                     (let* ((_%$%in209096209108%_ _%in209095%_)
                            (_%$%E209098209111%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%$%in209096209108%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%$%K209099209121%_
                             (lambda (_%phi209114%_
                                      _%name209115%_
                                      _%src-name209116%_
                                      _%src-phi209117%_
                                      _%src-key209118%_
                                      _%src-ctx209119%_)
                               (cons _%phi209114%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%name209115%_))
                                           (cons _%src-phi209117%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-identifier-key
                                                          _%src-name209116%_))
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%$%in209096209108%_
                              'gx#module-import::t))
                           (let ((_%$%e209100209124%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%$%in209096209108%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%$%e209100209124%_
                                    'gx#module-export::t))
                                 (let* ((_%$%e209103209127%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%e209100209124%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx209130%_ _%$%e209103209127%_)
                                        (_%$%e209104209132%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%e209100209124%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key209135%_ _%$%e209104209132%_)
                                        (_%$%e209105209137%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%e209100209124%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi209140%_ _%$%e209105209137%_)
                                        (_%$%e209106209142%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%e209100209124%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name209145%_
                                         _%$%e209106209142%_)
                                        (_%$%e209101209147%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%in209096209108%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name209150%_ _%$%e209101209147%_)
                                        (_%$%e209102209152%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%in209096209108%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi209155%_ _%$%e209102209152%_))
                                   (_%$%K209099209121%_
                                    _%phi209155%_
                                    _%name209150%_
                                    _%src-name209145%_
                                    _%src-phi209140%_
                                    _%src-key209135%_
                                    _%src-ctx209130%_))
                                 (_%$%E209098209111%_)))
                           (_%$%E209098209111%_)))))
                  (_%make-import-path208928%_
                   (lambda (_%ctx209093%_)
                     (gxc#generate-meta-import-path
                      _%ctx209093%_
                      _%context-chain208926%_)))
                  (_%make-import-spec-in208929%_
                   (lambda (_%ctx209090%_ _%in209091%_)
                     (cons 'spec:
                           (cons (_%make-import-path208928%_ _%ctx209090%_)
                                 (reverse _%in209091%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self208923%_ 'state)))
          (let* ((_%$%g208931208941%_
                  (lambda (_%$%g208932208938%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g208932208938%_))))
                 (_%$%g208930209087%_
                  (lambda (_%$%g208932208944%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g208932208944%_))
                        (let ((_%$%e208934208946%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g208932208944%_))))
                          (let ((_%$%hd208935208949%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e208934208946%_)))
                                (_%$%tl208936208951%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e208934208946%_))))
                            (let _%lp208965%_ ((_%rest208967%_
                                                _%$%tl208936208951%_)
                                               (_%current-src208968%_ '#f)
                                               (_%current-in208969%_ '())
                                               (_%r208970%_ '()))
                              (let* ((_%$%rest208971208979%_ _%rest208967%_)
                                     (_%$%else208973208989%_
                                      (lambda ()
                                        (let ((_%r208987%_
                                               (if _%current-src208968%_
                                                   (cons (_%make-import-spec-in208929%_
                                                          _%current-src208968%_
                                                          _%current-in208969%_)
                                                         _%r208970%_)
                                                   _%r208970%_)))
                                          (cons '%#import
                                                (reverse _%r208987%_)))))
                                     (_%$%K208975209075%_
                                      (lambda (_%rest208992%_ _%in208993%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               _%in208993%_
                                               'gx#module-import::t))
                                            (let* ((_%$%in208995209002%_
                                                    _%in208993%_)
                                                   (_%$%E208997209005%_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"No clause matching"
                                                               _%$%in208995209002%_
                                                               '((module-import
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (module-export src-ctx)))))
              '#!void))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%K208998209013%_
                                                    (lambda (_%src-ctx209008%_)
                                                      (if (eq? _%current-src208968%_
                                                               _%src-ctx209008%_)
                                                          (_%lp208965%_
                                                           _%rest208992%_
                                                           _%current-src208968%_
                                                           (cons (_%make-import-spec208927%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in208993%_)
                         _%current-in208969%_)
                   _%r208970%_)
                  (if _%current-src208968%_
                      (_%lp208965%_
                       _%rest208992%_
                       _%src-ctx209008%_
                       (cons (_%make-import-spec208927%_ _%in208993%_) '())
                       (cons (_%make-import-spec-in208929%_
                              _%current-src208968%_
                              _%current-in208969%_)
                             _%r208970%_))
                      (_%lp208965%_
                       _%rest208992%_
                       _%src-ctx209008%_
                       (cons (_%make-import-spec208927%_ _%in208993%_) '())
                       _%r208970%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%e208999209016%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%$%in208995209002%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%$%e208999209016%_
                                                     'gx#module-export::t))
                                                  (let* ((_%$%e209000209019%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%e208999209016%_
                                                             '1
                                                             '#f
                                                             '#f)))
                                                         (_%src-ctx209022%_
                                                          _%$%e209000209019%_))
                                                    (_%$%K208998209013%_
                                                     _%src-ctx209022%_))
                                                  (_%$%E208997209005%_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   _%in208993%_
                                                   'gx#import-set::t))
                                                (let* ((_%phi209025%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in208993%_
                                                           '2
                                                           '#f
                                                           '#f)))
                                                       (_%src209027%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in208993%_
                                                           '1
                                                           '#f
                                                           '#f)))
                                                       (_%src-in209067%_
                                                        (let* ((_%$%g209028209037%_
                                                                (_%make-import-path208928%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%src209027%_))
                       (_%$%E209031209041%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%$%g209028209037%_
                                   '([path])
                                   '(path)))
                          '#!void)))
                  (let ((_%$%K209033209057%_
                         (lambda (_%path209055%_) _%path209055%_))
                        (_%$%K209032209047%_
                         (lambda (_%path209045%_) (cons 'in: _%path209045%_))))
                    (if (pair? _%$%g209028209037%_)
                        (let ((_%$%tl209035209062%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%g209028209037%_)))
                              (_%$%hd209034209060%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%g209028209037%_))))
                          (if (null? _%$%tl209035209062%_)
                              (let ((_%path209065%_ _%$%hd209034209060%_))
                                (_%$%K209033209057%_ _%path209065%_))
                              (let ((_%path209050%_ _%$%g209028209037%_))
                                (_%$%K209032209047%_ _%path209050%_))))
                        (let ((_%path209050%_ _%$%g209028209037%_))
                          (_%$%K209032209047%_ _%path209050%_))))))
               (_%r209069%_
                (if _%current-src208968%_
                    (cons (_%make-import-spec-in208929%_
                           _%current-src208968%_
                           _%current-in208969%_)
                          _%r208970%_)
                    _%r208970%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp208965%_
                                                   _%rest208992%_
                                                   '#f
                                                   '()
                                                   (cons (if (fxzero? _%phi209025%_)
                                                             _%src-in209067%_
                                                             (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi209025%_ (cons _%src-in209067%_ '()))))
                 _%r209069%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##structure-instance-of?
                                                       _%in208993%_
                                                       'gx#module-context::t))
                                                    (let ((_%r209073%_
                                                           (if _%current-src208968%_
                                                               (cons (_%make-import-spec-in208929%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%current-src208968%_
                              _%current-in208969%_)
                             _%r208970%_)
                       _%r208970%_)))
              (_%lp208965%_
               _%rest208992%_
               '#f
               '()
               (cons (cons 'runtime: (_%make-import-path208928%_ _%in208993%_))
                     _%r209073%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#!void))))))
                                (if (pair? _%$%rest208971208979%_)
                                    (let ((_%$%hd208976209078%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%rest208971208979%_)))
                                          (_%$%tl208977209080%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%rest208971208979%_))))
                                      (let* ((_%in209083%_
                                              _%$%hd208976209078%_)
                                             (_%rest209085%_
                                              _%$%tl208977209080%_))
                                        (_%$%K208975209075%_
                                         _%rest209085%_
                                         _%in209083%_)))
                                    (_%$%else208973208989%_))))))
                        (_%$%g208931208941%_ _%$%g208932208944%_)))))
            (_%$%g208930209087%_ _%stx208924%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self208733%_ _%stx208734%_)
        (letrec* ((_%context-chain208736%_ (gxc#current-context-chain))
                  (_%make-import-path208737%_
                   (lambda (_%ctx208921%_)
                     (gxc#generate-meta-import-path
                      _%ctx208921%_
                      _%context-chain208736%_))))
          (let* ((_%$%g208739208749%_
                  (lambda (_%$%g208740208746%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g208740208746%_))))
                 (_%$%g208738208918%_
                  (lambda (_%$%g208740208752%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g208740208752%_))
                        (let ((_%$%e208742208754%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g208740208752%_))))
                          (let ((_%$%hd208743208757%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e208742208754%_)))
                                (_%$%tl208744208759%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e208742208754%_))))
                            (let _%lp208773%_ ((_%rest208775%_
                                                _%$%tl208744208759%_)
                                               (_%r208776%_ '()))
                              (let* ((_%$%rest208777208785%_ _%rest208775%_)
                                     (_%$%else208779208793%_
                                      (lambda ()
                                        (cons '%#export
                                              (reverse _%r208776%_))))
                                     (_%$%K208781208906%_
                                      (lambda (_%rest208796%_ _%out208797%_)
                                        (let* ((_%$%out208798208811%_
                                                _%out208797%_)
                                               (_%$%E208801208815%_
                                                (lambda ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"No clause matching"
                                                           _%$%out208798208811%_
                                                           '((module-export
                                                              _
                                                              key
                                                              phi
                                                              name))
                                                           '((export-set
                                                              src
                                                              phi))))
                                                  '#!void)))
                                          (let ((_%$%K208805208885%_
                                                 (lambda (_%name208881%_
                                                          _%phi208882%_
                                                          _%key208883%_)
                                                   (_%lp208773%_
                                                    _%rest208796%_
                                                    (cons (cons 'spec:
                                                                (cons _%phi208882%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-identifier-key
                                       _%key208883%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-identifier-key
                                             _%name208881%_))
                                          '()))))
                  _%r208776%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%K208802208865%_
                                                 (lambda (_%phi208819%_
                                                          _%src208820%_)
                                                   (let* ((_%out208860%_
                                                           (if _%src208820%_
                                                               (cons 'import:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let* ((_%$%g208821208830%_
                                           (_%make-import-path208737%_
                                            _%src208820%_))
                                          (_%$%E208824208834%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (error '"No clause matching"
                                                      _%$%g208821208830%_
                                                      '([path])
                                                      '(path)))
                                             '#!void)))
                                     (let ((_%$%K208826208850%_
                                            (lambda (_%path208848%_)
                                              _%path208848%_))
                                           (_%$%K208825208840%_
                                            (lambda (_%path208838%_)
                                              (cons 'in: _%path208838%_))))
                                       (if (pair? _%$%g208821208830%_)
                                           (let ((_%$%tl208828208855%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%g208821208830%_)))
                                                 (_%$%hd208827208853%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%g208821208830%_))))
                                             (if (null? _%$%tl208828208855%_)
                                                 (let ((_%path208858%_
                                                        _%$%hd208827208853%_))
                                                   (_%$%K208826208850%_
                                                    _%path208858%_))
                                                 (let ((_%path208843%_
                                                        _%$%g208821208830%_))
                                                   (_%$%K208825208840%_
                                                    _%path208843%_))))
                                           (let ((_%path208843%_
                                                  _%$%g208821208830%_))
                                             (_%$%K208825208840%_
                                              _%path208843%_)))))
                                   '()))
                       '#t))
                  (_%out208862%_
                   (if (fxzero? _%phi208819%_)
                       _%out208860%_
                       (cons 'phi:
                             (cons _%phi208819%_ (cons _%out208860%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp208773%_
                                                      _%rest208796%_
                                                      (cons _%out208862%_
                                                            _%r208776%_))))))
                                            (let ((_%$%try-match208800208878%_
                                                   (lambda ()
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            _%$%out208798208811%_
                                                            'gx#export-set::t))
                                                         (let* ((_%$%e208803208868%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%$%out208798208811%_
                            '1
                            '#f
                            '#f)))
                        (_%$%e208804208873%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%$%out208798208811%_
                            '2
                            '#f
                            '#f))))
                   (let ((_%src208871%_ _%$%e208803208868%_)
                         (_%phi208876%_ _%$%e208804208873%_))
                     (_%$%K208802208865%_ _%phi208876%_ _%src208871%_)))
                 (_%$%E208801208815%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%$%out208798208811%_
                                                     'gx#module-export::t))
                                                  (let* ((_%$%e208806208888%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%out208798208811%_
                                                             '1
                                                             '#f
                                                             '#f)))
                                                         (_%$%e208807208891%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%out208798208811%_
                                                             '2
                                                             '#f
                                                             '#f)))
                                                         (_%$%e208808208896%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%out208798208811%_
                                                             '3
                                                             '#f
                                                             '#f)))
                                                         (_%$%e208809208901%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%out208798208811%_
                                                             '4
                                                             '#f
                                                             '#f))))
                                                    (let ((_%key208894%_
                                                           _%$%e208807208891%_)
                                                          (_%phi208899%_
                                                           _%$%e208808208896%_)
                                                          (_%name208904%_
                                                           _%$%e208809208901%_))
                                                      (_%$%K208805208885%_
                                                       _%name208904%_
                                                       _%phi208899%_
                                                       _%key208894%_)))
                                                  (_%$%try-match208800208878%_))))))))
                                (if (pair? _%$%rest208777208785%_)
                                    (let ((_%$%hd208782208909%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%rest208777208785%_)))
                                          (_%$%tl208783208911%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%rest208777208785%_))))
                                      (let* ((_%out208914%_
                                              _%$%hd208782208909%_)
                                             (_%rest208916%_
                                              _%$%tl208783208911%_))
                                        (_%$%K208781208906%_
                                         _%rest208916%_
                                         _%out208914%_)))
                                    (_%$%else208779208793%_))))))
                        (_%$%g208739208749%_ _%$%g208740208752%_)))))
            (_%$%g208738208918%_ _%stx208734%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self208694%_ _%stx208695%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self208694%_ 'state)))
        (let* ((_%$%g208697208707%_
                (lambda (_%$%g208698208704%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g208698208704%_))))
               (_%$%g208696208730%_
                (lambda (_%$%g208698208710%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g208698208710%_))
                      (let ((_%$%e208700208712%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g208698208710%_))))
                        (let ((_%$%hd208701208715%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e208700208712%_)))
                              (_%$%tl208702208717%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e208700208712%_))))
                          (cons '%#provide
                                (map gxc#generate-runtime-identifier
                                     _%$%tl208702208717%_))))
                      (_%$%g208697208707%_ _%$%g208698208710%_)))))
          (_%$%g208696208730%_ _%stx208695%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self208569%_ _%stx208570%_)
        (letrec ((_%generate1208572%_
                  (lambda (_%id208689%_ _%eid208690%_)
                    (let ((_%eid208692%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid208690%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid208692%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx208570%_
                             _%eid208692%_)))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _%id208689%_))
                            (cons _%eid208692%_ '()))))))
          (let* ((_%$%g208574208602%_
                  (lambda (_%$%g208575208599%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g208575208599%_))))
                 (_%$%g208573208686%_
                  (lambda (_%$%g208575208605%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g208575208605%_))
                        (let ((_%$%e208578208607%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g208575208605%_))))
                          (let ((_%$%hd208579208610%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e208578208607%_)))
                                (_%$%tl208580208612%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e208578208607%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%$%tl208580208612%_))
                                (let ((_g218273_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%$%tl208580208612%_
                                          '0))))
                                  (begin
                                    (let ((_g218274_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g218273_)
                                                 (##values-length _g218273_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g218274_ 2)))
                                          (error "Context expects 2 values"
                                                 _g218274_)))
                                    (let ((_%$%target208581208615%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g218273_ 0)))
                                          (_%$%tl208583208617%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g218273_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl208583208617%_))
                                          (letrec ((_%$%loop208584208620%_
                                                    (lambda (_%$%hd208582208623%_
                                                             _%$%eid208588208625%_
                                                             _%$%id208589208626%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%hd208582208623%_))
                                                          (let ((_%$%e208585208628%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%hd208582208623%_))))
                    (let ((_%$%lp-hd208586208631%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e208585208628%_)))
                          (_%$%lp-tl208587208633%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e208585208628%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%lp-hd208586208631%_))
                          (let ((_%$%e208592208636%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%lp-hd208586208631%_))))
                            (let ((_%$%hd208593208639%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e208592208636%_)))
                                  (_%$%tl208594208641%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e208592208636%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl208594208641%_))
                                  (let ((_%$%e208595208644%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl208594208641%_))))
                                    (let ((_%$%hd208596208647%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e208595208644%_)))
                                          (_%$%tl208597208649%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e208595208644%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl208597208649%_))
                                          (_%$%loop208584208620%_
                                           _%$%lp-tl208587208633%_
                                           (cons _%$%hd208596208647%_
                                                 _%$%eid208588208625%_)
                                           (cons _%$%hd208593208639%_
                                                 _%$%id208589208626%_))
                                          (_%$%g208574208602%_
                                           _%$%g208575208605%_))))
                                  (_%$%g208574208602%_ _%$%g208575208605%_))))
                          (_%$%g208574208602%_ _%$%g208575208605%_))))
                  (let ((_%$%eid208590208652%_ (reverse _%$%eid208588208625%_))
                        (_%$%id208591208653%_ (reverse _%$%id208589208626%_)))
                    (cons '%#extern
                          (map _%generate1208572%_
                               (let ((__tmp218275
                                      (lambda (_%$%g208671208674%_
                                               _%$%g208672208676%_)
                                        (cons _%$%g208671208674%_
                                              _%$%g208672208676%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp218275
                                  '()
                                  _%$%id208591208653%_))
                               (let ((__tmp218276
                                      (lambda (_%$%g208678208681%_
                                               _%$%g208679208683%_)
                                        (cons _%$%g208678208681%_
                                              _%$%g208679208683%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp218276
                                  '()
                                  _%$%eid208590208652%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%loop208584208620%_
                                             _%$%target208581208615%_
                                             '()
                                             '()))
                                          (_%$%g208574208602%_
                                           _%$%g208575208605%_)))))
                                (_%$%g208574208602%_ _%$%g208575208605%_))))
                        (_%$%g208574208602%_ _%$%g208575208605%_)))))
            (_%$%g208573208686%_ _%stx208570%_)))))
    (define gxc#generate-meta-define-runtime%
      (lambda (_%self208497%_ _%stx208498%_)
        (let* ((_%$%g208500208517%_
                (lambda (_%$%g208501208514%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g208501208514%_))))
               (_%$%g208499208566%_
                (lambda (_%$%g208501208520%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g208501208520%_))
                      (let ((_%$%e208504208522%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g208501208520%_))))
                        (let ((_%$%hd208505208525%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e208504208522%_)))
                              (_%$%tl208506208527%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e208504208522%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl208506208527%_))
                              (let ((_%$%e208507208530%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl208506208527%_))))
                                (let ((_%$%hd208508208533%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e208507208530%_)))
                                      (_%$%tl208509208535%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e208507208530%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl208509208535%_))
                                      (let ((_%$%e208510208538%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl208509208535%_))))
                                        (let ((_%$%hd208511208541%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e208510208538%_)))
                                              (_%$%tl208512208543%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e208510208538%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl208512208543%_))
                                              (let ((_%ident208562%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#generate-runtime-identifier
                                                        _%$%hd208508208533%_)))
                                                    (_%eid208563%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd208511208541%_)))
                                                    (_%props208564%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier-properties
                                                        _%$%hd208508208533%_))))
                                                (cons '%#define-runtime
                                                      (cons _%ident208562%_
                                                            (cons _%eid208563%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%props208564%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g208500208517%_
                                               _%$%g208501208520%_))))
                                      (_%$%g208500208517%_
                                       _%$%g208501208520%_))))
                              (_%$%g208500208517%_ _%$%g208501208520%_))))
                      (_%$%g208500208517%_ _%$%g208501208520%_)))))
          (_%$%g208499208566%_ _%stx208498%_))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self208286%_ _%stx208287%_)
        (letrec ((_%generate1208289%_
                  (lambda (_%id208491%_)
                    (let ((_%eid208493%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id208491%_)))
                          (_%ident208494%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%id208491%_)))
                          (_%props208495%_
                           (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier-properties
                              _%id208491%_))))
                      (cons '%#define-runtime
                            (cons _%ident208494%_
                                  (cons _%eid208493%_ _%props208495%_))))))
                 (_%generate*208290%_
                  (lambda (_%all208459%_)
                    (let* ((_%$%all208460208468%_ _%all208459%_)
                           (_%$%else208462208476%_
                            (lambda () (cons '%#begin _%all208459%_)))
                           (_%$%K208464208481%_
                            (lambda (_%one208479%_) _%one208479%_)))
                      (if (pair? _%$%all208460208468%_)
                          (let ((_%$%hd208465208484%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%all208460208468%_)))
                                (_%$%tl208466208486%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%all208460208468%_))))
                            (let ((_%one208489%_ _%$%hd208465208484%_))
                              (if (null? _%$%tl208466208486%_)
                                  (_%$%K208464208481%_ _%one208489%_)
                                  (_%$%else208462208476%_))))
                          (_%$%else208462208476%_))))))
          (let* ((_%$%g208292208309%_
                  (lambda (_%$%g208293208306%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g208293208306%_))))
                 (_%$%g208291208456%_
                  (lambda (_%$%g208293208312%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g208293208312%_))
                        (let ((_%$%e208296208314%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g208293208312%_))))
                          (let ((_%$%hd208297208317%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e208296208314%_)))
                                (_%$%tl208298208319%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e208296208314%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl208298208319%_))
                                (let ((_%$%e208299208322%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl208298208319%_))))
                                  (let ((_%$%hd208300208325%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e208299208322%_)))
                                        (_%$%tl208301208327%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e208299208322%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl208301208327%_))
                                        (let ((_%$%e208302208330%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl208301208327%_))))
                                          (let ((_%$%hd208303208333%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e208302208330%_)))
                                                (_%$%tl208304208335%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e208302208330%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl208304208335%_))
                                                (let _%lp208355%_ ((_%rest208357%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%hd208300208325%_)
                           (_%r208358%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%__stx218013218014%_
                                                          _%rest208357%_)
                                                         (_%$%g208363208380%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%__stx218013218014%_)))))
                                                    (let ((_%__kont218015218016%_
                                                           (lambda (_%$%g208365208443%_)
                                                             (_%lp208355%_
                                                              _%$%g208365208443%_
                                                              _%r208358%_)))
                                                          (_%__kont218017218018%_
                                                           (lambda (_%$%g208370208416%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g208371208417%_)
                     (_%lp208355%_
                      _%$%g208370208416%_
                      (cons (_%generate1208289%_ _%$%g208371208417%_)
                            _%r208358%_))))
                  (_%__kont218019218020%_
                   (lambda (_%$%g208375208392%_)
                     (_%generate*208290%_
                      (let ((__tmp218277
                             (cons (_%generate1208289%_ _%$%g208375208392%_)
                                   '())))
                        (declare (not safe))
                        (foldl__0 cons __tmp218277 _%r208358%_)))))
                  (_%__kont218021218022%_
                   (lambda () (_%generate*208290%_ (reverse! _%r208358%_)))))
              (let ((_%$%g208361208403%_
                     (lambda ()
                       (let ((_%$%g208375208392%_ _%__stx218013218014%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%$%g208375208392%_))
                             (_%__kont218019218020%_ _%$%g208375208392%_)
                             (_%__kont218021218022%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx218013218014%_))
                    (let ((_%$%e208366208432%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx218013218014%_))))
                      (let ((_%$%tl208368208437%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e208366208432%_)))
                            (_%$%hd208367208435%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e208366208432%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%$%hd208367208435%_))
                            (let ((_%$%e208369208440%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd208367208435%_))))
                              (if (equal? _%$%e208369208440%_ '#f)
                                  (_%__kont218015218016%_ _%$%tl208368208437%_)
                                  (_%__kont218017218018%_
                                   _%$%tl208368208437%_
                                   _%$%hd208367208435%_)))
                            (_%__kont218017218018%_
                             _%$%tl208368208437%_
                             _%$%hd208367208435%_))))
                    (_%$%g208361208403%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g208292208309%_
                                                 _%$%g208293208312%_))))
                                        (_%$%g208292208309%_
                                         _%$%g208293208312%_))))
                                (_%$%g208292208309%_ _%$%g208293208312%_))))
                        (_%$%g208292208309%_ _%$%g208293208312%_)))))
            (_%$%g208291208456%_ _%stx208287%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self208183%_ _%stx208184%_)
        (let* ((_%$%g208186208203%_
                (lambda (_%$%g208187208200%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g208187208200%_))))
               (_%$%g208185208283%_
                (lambda (_%$%g208187208206%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g208187208206%_))
                      (let ((_%$%e208190208208%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g208187208206%_))))
                        (let ((_%$%hd208191208211%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e208190208208%_)))
                              (_%$%tl208192208213%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e208190208208%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl208192208213%_))
                              (let ((_%$%e208193208216%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl208192208213%_))))
                                (let ((_%$%hd208194208219%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e208193208216%_)))
                                      (_%$%tl208195208221%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e208193208216%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl208195208221%_))
                                      (let ((_%$%e208196208224%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl208195208221%_))))
                                        (let ((_%$%hd208197208227%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e208196208224%_)))
                                              (_%$%tl208198208229%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e208196208224%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl208198208229%_))
                                              (let* ((_%eid208248%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#generate-runtime-binding-id
                                                         _%$%hd208194208219%_)))
                                                     (_%phi208250%_
                                                      (let ((__tmp218278
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#current-expander-phi))))
                (declare (not safe))
                (##fx+ __tmp218278 '1)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%block208252%_
                                                      (gxc#meta-state-begin-phi!
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self208183%_
                                                          'state))
                                                       _%phi208250%_)))
                                                (let* ((_%$%g208255208262%_
                                                        (lambda (_%$%g208256208259%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%$%g208256208259%_))))
                                                       (_%$%g208254208280%_
                                                        (lambda (_%$%g208256208265%_)
                                                          (gxc#meta-state-add-phi!
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self208183%_
                                                              'state))
                                                           _%phi208250%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#define-runtime))
                         (cons _%$%g208256208265%_
                               (cons _%$%hd208197208227%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g208254208280%_
                                                   _%eid208248%_))
                                                (if _%block208252%_
                                                    (cons '%#begin
                                                          (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block208252%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        (cons (cons '%#define-syntax
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-identifier
                                             _%$%hd208194208219%_))
                                          (cons _%eid208248%_ '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons '%#define-syntax
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#generate-runtime-identifier
                           _%$%hd208194208219%_))
                        (cons _%eid208248%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g208186208203%_
                                               _%$%g208187208206%_))))
                                      (_%$%g208186208203%_
                                       _%$%g208187208206%_))))
                              (_%$%g208186208203%_ _%$%g208187208206%_))))
                      (_%$%g208186208203%_ _%$%g208187208206%_)))))
          (_%$%g208185208283%_ _%stx208184%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self208115%_ _%stx208116%_)
        (let* ((_%$%g208118208135%_
                (lambda (_%$%g208119208132%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g208119208132%_))))
               (_%$%g208117208180%_
                (lambda (_%$%g208119208138%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g208119208138%_))
                      (let ((_%$%e208122208140%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g208119208138%_))))
                        (let ((_%$%hd208123208143%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e208122208140%_)))
                              (_%$%tl208124208145%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e208122208140%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl208124208145%_))
                              (let ((_%$%e208125208148%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl208124208145%_))))
                                (let ((_%$%hd208126208151%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e208125208148%_)))
                                      (_%$%tl208127208153%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e208125208148%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl208127208153%_))
                                      (let ((_%$%e208128208156%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl208127208153%_))))
                                        (let ((_%$%hd208129208159%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e208128208156%_)))
                                              (_%$%tl208130208161%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e208128208156%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl208130208161%_))
                                              (cons '%#define-alias
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#generate-runtime-identifier
                                                             _%$%hd208126208151%_))
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#generate-runtime-identifier
                           _%$%hd208129208159%_))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g208118208135%_
                                               _%$%g208119208138%_))))
                                      (_%$%g208118208135%_
                                       _%$%g208119208138%_))))
                              (_%$%g208118208135%_ _%$%g208119208138%_))))
                      (_%$%g208118208135%_ _%$%g208119208138%_)))))
          (_%$%g208117208180%_ _%stx208116%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self208112%_ _%stx208113%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self208112%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx208113%_)
        (gxc#generate-meta-define-values% _%self208112%_ _%stx208113%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self208109%_ _%stx208110%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self208109%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx208110%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp218280 (list)) (__tmp218279 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp218280
         '(src n open blocks)
         __tmp218279
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args208106%_
        (apply make-instance gxc#meta-state::t _%$args208106%_)))
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
      (lambda (_%self208092%_ _%ctx208093%_)
        (let ((_%self208096%_ _%self208092%_))
          (if (let ((__tmp218281
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self208096%_))))
                (declare (not safe))
                (##fx< '4 __tmp218281))
              (begin
                (let ((__tmp218282
                       (let ((__tmp218283
                              (##structure-ref
                               _%ctx208093%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp218283))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self208096%_
                   __tmp218282
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self208096%_ '1 '2 '#f '#f))
                (let ((__tmp218284
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self208096%_
                   __tmp218284
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self208096%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp218285
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self208096%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self208096%_
                       '4
                       __tmp218285))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp218287 (list)) (__tmp218286 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp218287
         '(ctx phi n code)
         __tmp218286
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args207967%_
        (apply make-instance gxc#meta-state-block::t _%$args207967%_)))
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
      (lambda (_%state207927%_ _%phi207928%_)
        (let* ((_%$%state207929207937%_ _%state207927%_)
               (_%$%E207931207940%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%state207929207937%_
                           '((meta-state src n open))))
                  '#!void))
               (_%$%K207932207949%_
                (lambda (_%open207943%_ _%n207944%_ _%src207945%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open207943%_ _%phi207928%_))
                      '#f
                      (let ((_%block-ref207947%_
                             (let ((__tmp218288 (number->string _%n207944%_)))
                               (declare (not safe))
                               (##string-append
                                _%src207945%_
                                '"~"
                                __tmp218288))))
                        (##structure-set!
                         _%state207927%_
                         (let () (declare (not safe)) (##fx+ _%n207944%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp218289
                               (let ((__tmp218290
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp218290
                                  _%phi207928%_
                                  _%n207944%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open207943%_ _%phi207928%_ __tmp218289))
                        _%block-ref207947%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%$%state207929207937%_
                 'gxc#meta-state::t))
              (let* ((_%$%e207933207952%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%$%state207929207937%_
                         '1
                         '#f
                         '#f)))
                     (_%src207955%_ _%$%e207933207952%_)
                     (_%$%e207934207957%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%$%state207929207937%_
                         '2
                         '#f
                         '#f)))
                     (_%n207960%_ _%$%e207934207957%_)
                     (_%$%e207935207962%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%$%state207929207937%_
                         '3
                         '#f
                         '#f)))
                     (_%open207965%_ _%$%e207935207962%_))
                (_%$%K207932207949%_ _%open207965%_ _%n207960%_ _%src207955%_))
              (_%$%E207931207940%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state207921%_ _%phi207922%_ _%stx207923%_)
        (let ((_%block207925%_
               (let ((__tmp218291
                      (##structure-ref
                       _%state207921%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp218291 _%phi207922%_))))
          (##structure-set!
           _%block207925%_
           (cons _%stx207923%_
                 (##structure-ref
                  _%block207925%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state207915%_)
        (##structure-set!
         _%state207915%_
         (let ((__tmp218294
                (lambda (_%_207917%_ _%block207918%_ _%r207919%_)
                  (cons _%block207918%_ _%r207919%_)))
               (__tmp218293
                (##structure-ref _%state207915%_ '4 gxc#meta-state::t '#f))
               (__tmp218292
                (##structure-ref _%state207915%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp218294 __tmp218293 __tmp218292))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state207915%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state207868%_)
        (gxc#meta-state-end-phi! _%state207868%_)
        (let ((__tmp218296
               (lambda (_%block207870%_ _%r207871%_)
                 (let* ((_%$%block207872207881%_ _%block207870%_)
                        (_%$%E207874207884%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%$%block207872207881%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%$%K207875207892%_
                         (lambda (_%code207887%_
                                  _%n207888%_
                                  _%phi207889%_
                                  _%ctx207890%_)
                           (if (null? _%code207887%_)
                               _%r207871%_
                               (cons (cons _%ctx207890%_
                                           (cons _%phi207889%_
                                                 (cons _%n207888%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code207887%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r207871%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%$%block207872207881%_
                          'gxc#meta-state-block::t))
                       (let* ((_%$%e207876207895%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%$%block207872207881%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx207898%_ _%$%e207876207895%_)
                              (_%$%e207877207900%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%$%block207872207881%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi207903%_ _%$%e207877207900%_)
                              (_%$%e207878207905%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%$%block207872207881%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n207908%_ _%$%e207878207905%_)
                              (_%$%e207879207910%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%$%block207872207881%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code207913%_ _%$%e207879207910%_))
                         (_%$%K207875207892%_
                          _%code207913%_
                          _%n207908%_
                          _%phi207903%_
                          _%ctx207898%_))
                       (_%$%E207874207884%_)))))
              (__tmp218295
               (##structure-ref _%state207868%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (foldl__0 __tmp218296 '() __tmp218295))))
    (define gxc#collect-expression-refs
      (lambda (_%stx207864%_)
        (let ((_%ht207866%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht207866%_ _%stx207864%_)
          _%ht207866%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self207807%_ _%stx207808%_)
        (let* ((_%$%g207810207823%_
                (lambda (_%$%g207811207820%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g207811207820%_))))
               (_%$%g207809207861%_
                (lambda (_%$%g207811207826%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g207811207826%_))
                      (let ((_%$%e207813207828%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g207811207826%_))))
                        (let ((_%$%hd207814207831%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e207813207828%_)))
                              (_%$%tl207815207833%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e207813207828%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl207815207833%_))
                              (let ((_%$%e207816207836%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl207815207833%_))))
                                (let ((_%$%hd207817207839%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e207816207836%_)))
                                      (_%$%tl207818207841%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e207816207836%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl207818207841%_))
                                      (let* ((_%bind207856%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#resolve-identifier__0
                                                 _%$%hd207817207839%_)))
                                             (_%eid207858%_
                                              (if _%bind207856%_
                                                  (##structure-ref
                                                   _%bind207856%_
                                                   '1
                                                   gx#binding::t
                                                   '#f)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%hd207817207839%_))))
                                             (__tmp218297
                                              (let ()
                                                (declare (not safe))
                                                (slot-ref__0
                                                 _%self207807%_
                                                 'table))))
                                        (declare (not safe))
                                        (hash-put!
                                         __tmp218297
                                         _%eid207858%_
                                         _%eid207858%_))
                                      (_%$%g207810207823%_
                                       _%$%g207811207826%_))))
                              (_%$%g207810207823%_ _%$%g207811207826%_))))
                      (_%$%g207810207823%_ _%$%g207811207826%_)))))
          (_%$%g207809207861%_ _%stx207808%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self207734%_ _%stx207735%_)
        (let* ((_%$%g207737207754%_
                (lambda (_%$%g207738207751%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g207738207751%_))))
               (_%$%g207736207804%_
                (lambda (_%$%g207738207757%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g207738207757%_))
                      (let ((_%$%e207741207759%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g207738207757%_))))
                        (let ((_%$%hd207742207762%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e207741207759%_)))
                              (_%$%tl207743207764%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e207741207759%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl207743207764%_))
                              (let ((_%$%e207744207767%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl207743207764%_))))
                                (let ((_%$%hd207745207770%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e207744207767%_)))
                                      (_%$%tl207746207772%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e207744207767%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl207746207772%_))
                                      (let ((_%$%e207747207775%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl207746207772%_))))
                                        (let ((_%$%hd207748207778%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e207747207775%_)))
                                              (_%$%tl207749207780%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e207747207775%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl207749207780%_))
                                              (let* ((_%bind207799%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#resolve-identifier__0
                                                         _%$%hd207745207770%_)))
                                                     (_%eid207801%_
                                                      (if _%bind207799%_
                                                          (##structure-ref
                                                           _%bind207799%_
                                                           '1
                                                           gx#binding::t
                                                           '#f)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%hd207745207770%_)))))
                                                (let ((__tmp218298
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self207734%_
                                                          'table))))
                                                  (declare (not safe))
                                                  (hash-put!
                                                   __tmp218298
                                                   _%eid207801%_
                                                   _%eid207801%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self207734%_
                                                   _%$%hd207748207778%_)))
                                              (_%$%g207737207754%_
                                               _%$%g207738207757%_))))
                                      (_%$%g207737207754%_
                                       _%$%g207738207757%_))))
                              (_%$%g207737207754%_ _%$%g207738207757%_))))
                      (_%$%g207737207754%_ _%$%g207738207757%_)))))
          (_%$%g207736207804%_ _%stx207735%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self207691%_ _%stx207692%_)
        (let* ((_%$%g207694207704%_
                (lambda (_%$%g207695207701%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g207695207701%_))))
               (_%$%g207693207731%_
                (lambda (_%$%g207695207707%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g207695207707%_))
                      (let ((_%$%e207697207709%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g207695207707%_))))
                        (let ((_%$%hd207698207712%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e207697207709%_)))
                              (_%$%tl207699207714%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e207697207709%_))))
                          (let ((__tmp218299
                                 (lambda (_%$%g207726207728%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self207691%_
                                      _%$%g207726207728%_)))))
                            (declare (not safe))
                            (ormap__0 __tmp218299 _%$%tl207699207714%_))))
                      (_%$%g207694207704%_ _%$%g207695207707%_)))))
          (_%$%g207693207731%_ _%stx207692%_))))
    (define gxc#count-values-single%
      (lambda (_%self207688%_ _%stx207689%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self207556%_ _%stx207557%_)
        (let* ((_%__stx218043218044%_ _%stx207557%_)
               (_%$%g207560207589%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx218043218044%_)))))
          (let ((_%__kont218045218046%_
                 (lambda (_%$%g207562207655%_ _%$%g207563207656%_)
                   (length (let ((__tmp218300
                                  (lambda (_%$%g207677207680%_
                                           _%$%g207678207682%_)
                                    (cons _%$%g207677207680%_
                                          _%$%g207678207682%_))))
                             (declare (not safe))
                             (foldr__0 __tmp218300 '() _%$%g207562207655%_)))))
                (_%__kont218049218050%_ (lambda () '#f)))
            (let ((_%__match218088218089%_
                   (lambda (_%$%e207564207601%_
                            _%$%hd207565207604%_
                            _%$%tl207566207606%_
                            _%$%e207567207609%_
                            _%$%hd207568207612%_
                            _%$%tl207569207614%_
                            _%$%e207570207617%_
                            _%$%hd207571207620%_
                            _%$%tl207572207622%_
                            _%$%e207573207625%_
                            _%$%hd207574207628%_
                            _%$%tl207575207630%_
                            _%__splice218047218048%_
                            _%$%target207576207633%_
                            _%$%tl207578207635%_)
                     (letrec ((_%$%loop207579207638%_
                               (lambda (_%$%hd207577207641%_
                                        _%$%rand207583207643%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd207577207641%_))
                                     (let ((_%$%e207580207645%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd207577207641%_))))
                                       (let ((_%$%lp-tl207582207650%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e207580207645%_)))
                                             (_%$%lp-hd207581207648%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e207580207645%_))))
                                         (_%$%loop207579207638%_
                                          _%$%lp-tl207582207650%_
                                          (cons _%$%lp-hd207581207648%_
                                                _%$%rand207583207643%_))))
                                     (let ((_%$%rand207584207653%_
                                            (reverse _%$%rand207583207643%_)))
                                       (let ((_%$%g207562207655%_
                                              _%$%rand207584207653%_)
                                             (_%$%g207563207656%_
                                              _%$%hd207574207628%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%$%g207563207656%_
                                                'values))
                                             (_%__kont218045218046%_
                                              _%$%g207562207655%_
                                              _%$%g207563207656%_)
                                             (_%__kont218049218050%_))))))))
                       (_%$%loop207579207638%_
                        _%$%target207576207633%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx218043218044%_))
                  (let ((_%$%e207564207601%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx218043218044%_))))
                    (let ((_%$%tl207566207606%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e207564207601%_)))
                          (_%$%hd207565207604%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e207564207601%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl207566207606%_))
                          (let ((_%$%e207567207609%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl207566207606%_))))
                            (let ((_%$%tl207569207614%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e207567207609%_)))
                                  (_%$%hd207568207612%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e207567207609%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd207568207612%_))
                                  (let ((_%$%e207570207617%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd207568207612%_))))
                                    (let ((_%$%tl207572207622%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e207570207617%_)))
                                          (_%$%hd207571207620%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e207570207617%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd207571207620%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd207571207620%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl207572207622%_))
                                                  (let ((_%$%e207573207625%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl207572207622%_))))
                                                    (let ((_%$%tl207575207630%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e207573207625%_)))
                                                          (_%$%hd207574207628%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e207573207625%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl207575207630%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%$%tl207569207614%_))
                      (let ((_%__splice218047218048%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl207569207614%_
                                '0))))
                        (let ((_%$%tl207578207635%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice218047218048%_ '1)))
                              (_%$%target207576207633%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice218047218048%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl207578207635%_))
                              (_%__match218088218089%_
                               _%$%e207564207601%_
                               _%$%hd207565207604%_
                               _%$%tl207566207606%_
                               _%$%e207567207609%_
                               _%$%hd207568207612%_
                               _%$%tl207569207614%_
                               _%$%e207570207617%_
                               _%$%hd207571207620%_
                               _%$%tl207572207622%_
                               _%$%e207573207625%_
                               _%$%hd207574207628%_
                               _%$%tl207575207630%_
                               _%__splice218047218048%_
                               _%$%target207576207633%_
                               _%$%tl207578207635%_)
                              (_%__kont218049218050%_))))
                      (_%__kont218049218050%_))
                  (_%__kont218049218050%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont218049218050%_))
                                              (_%__kont218049218050%_))
                                          (_%__kont218049218050%_))))
                                  (_%__kont218049218050%_))))
                          (_%__kont218049218050%_))))
                  (_%__kont218049218050%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self207461%_ _%stx207462%_)
        (let* ((_%$%g207464207485%_
                (lambda (_%$%g207465207482%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g207465207482%_))))
               (_%$%g207463207553%_
                (lambda (_%$%g207465207488%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g207465207488%_))
                      (let ((_%$%e207469207490%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g207465207488%_))))
                        (let ((_%$%hd207470207493%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e207469207490%_)))
                              (_%$%tl207471207495%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e207469207490%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl207471207495%_))
                              (let ((_%$%e207472207498%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl207471207495%_))))
                                (let ((_%$%hd207473207501%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e207472207498%_)))
                                      (_%$%tl207474207503%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e207472207498%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl207474207503%_))
                                      (let ((_%$%e207475207506%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl207474207503%_))))
                                        (let ((_%$%hd207476207509%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e207475207506%_)))
                                              (_%$%tl207477207511%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e207475207506%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl207477207511%_))
                                              (let ((_%$%e207478207514%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl207477207511%_))))
                                                (let ((_%$%hd207479207517%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e207478207514%_)))
                                                      (_%$%tl207480207519%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e207478207514%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl207480207519%_))
                                                      (let ((_%$%c1207541207543%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1
                        _%self207461%_
                        _%$%hd207476207509%_))))
                (if _%$%c1207541207543%_
                    (let* ((_%c1207545%_ _%$%c1207541207543%_)
                           (_%$%c2207546207548%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self207461%_
                               _%$%hd207479207517%_))))
                      (if _%$%c2207546207548%_
                          (let ((_%c2207550%_ _%$%c2207546207548%_))
                            (if (fx= _%c1207545%_ _%c2207550%_)
                                _%c1207545%_
                                '#f))
                          '#f))
                    '#f))
              (_%$%g207464207485%_ _%$%g207465207488%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g207464207485%_
                                               _%$%g207465207488%_))))
                                      (_%$%g207464207485%_
                                       _%$%g207465207488%_))))
                              (_%$%g207464207485%_ _%$%g207465207488%_))))
                      (_%$%g207464207485%_ _%$%g207465207488%_)))))
          (_%$%g207463207553%_ _%stx207462%_))))))
