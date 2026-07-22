(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1784461444)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx204407%_)
        (if gxc#__DEBUG-COMPILE
            (let ((__tmp204629
                   (let ()
                     (declare (not safe))
                     (gx#syntax->datum _%stx204407%_))))
              (declare (not safe))
              (displayln '"@compile " __tmp204629))
            '#!void)
        (let* ((_%self204409%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e204411%_
                (let ((__tmp204630 (gxc#stx-car-e _%stx204407%_)))
                  (declare (not safe))
                  (method-ref _%self204409%_ __tmp204630))))
          (if _%$e204411%_
              (let ()
                (declare (not safe))
                (let ((_%$e204417%_ (gx#stx-source _%stx204407%_)))
                  (if _%$e204417%_
                      (call-with-parameters__1
                       (lambda () (_%$e204411%_ _%self204409%_ _%stx204407%_))
                       gxc#current-compile-context
                       (cons (list '@ _%$e204417%_)
                             (let ((_%$e204424%_
                                    (gxc#current-compile-context)))
                               (if _%$e204424%_ _%$e204424%_ '()))))
                      (_%$e204411%_ _%self204409%_ _%stx204407%_))))
              (let ((__tmp204632 (gxc#stx-car-e _%stx204407%_))
                    (__tmp204631
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx204407%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self204409%_
                       __tmp204632
                       __tmp204631))))))
    (define gxc#compile-e__1
      (lambda (_%self204429%_ _%stx204430%_)
        (if gxc#__DEBUG-COMPILE
            (let ((__tmp204633
                   (let ()
                     (declare (not safe))
                     (gx#syntax->datum _%stx204430%_))))
              (declare (not safe))
              (displayln '"@compile " __tmp204633))
            '#!void)
        (let ((_%$e204432%_
               (let ((__tmp204634 (gxc#stx-car-e _%stx204430%_)))
                 (declare (not safe))
                 (method-ref _%self204429%_ __tmp204634))))
          (if _%$e204432%_
              (let ()
                (declare (not safe))
                (let ((_%$e204438%_ (gx#stx-source _%stx204430%_)))
                  (if _%$e204438%_
                      (call-with-parameters__1
                       (lambda () (_%$e204432%_ _%self204429%_ _%stx204430%_))
                       gxc#current-compile-context
                       (cons (list '@ _%$e204438%_)
                             (let ((_%$e204445%_
                                    (gxc#current-compile-context)))
                               (if _%$e204445%_ _%$e204445%_ '()))))
                      (_%$e204432%_ _%self204429%_ _%stx204430%_))))
              (let ((__tmp204636 (gxc#stx-car-e _%stx204430%_))
                    (__tmp204635
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx204430%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self204429%_
                       __tmp204636
                       __tmp204635))))))
    (define gxc#compile-e
      (lambda _g204637_
        (let ((_g204638_ (let () (declare (not safe)) (##length _g204637_))))
          (cond ((let () (declare (not safe)) (##fx= _g204638_ 1))
                 (apply gxc#compile-e__0 _g204637_))
                ((let () (declare (not safe)) (##fx= _g204638_ 2))
                 (apply gxc#compile-e__1 _g204637_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g204637_))))))
    (define gxc#stx-car-e
      (lambda (_%stx204405%_)
        (let ((__tmp204639
               (car (let () (declare (not safe)) (gx#stx-e _%stx204405%_)))))
          (declare (not safe))
          (gx#stx-e __tmp204639))))
    (define gxc#void-method (lambda (_%self204402%_ _%stx204403%_) '#!void))
    (define gxc#false-method (lambda (_%self204399%_ _%stx204400%_) '#f))
    (define gxc#true-method (lambda (_%self204396%_ _%stx204397%_) '#t))
    (define gxc#identity-method
      (lambda (_%self204393%_ _%stx204394%_) _%stx204394%_))
    (define gxc#::void-expression::t
      (let ((__tmp204640 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp204640
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args204390%_
        (apply make-instance gxc#::void-expression::t _%$args204390%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp204641
             (lambda ()
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-expression::t
                  '%#begin-annotation
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-expression::t
                  '%#lambda
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-expression::t
                  '%#case-lambda
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-expression::t
                  '%#let-values
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-expression::t
                  '%#letrec-values
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-expression::t
                  '%#letrec*-values
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-expression::t
                  '%#quote
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-expression::t
                  '%#quote-syntax
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-expression::t
                  '%#call
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-expression::t
                  '%#call-unchecked
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-expression::t
                  '%#if
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-expression::t
                  '%#ref
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-expression::t
                  '%#set!
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-expression::t
                  '%#struct-instance?
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-expression::t
                  '%#struct-direct-instance?
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-expression::t
                  '%#struct-ref
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-expression::t
                  '%#struct-set!
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-expression::t
                  '%#struct-direct-ref
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-expression::t
                  '%#struct-direct-set!
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-expression::t
                  '%#struct-unchecked-ref
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-expression::t
                  '%#struct-unchecked-set!
                  gxc#void-method)))))
        (declare (not safe))
        (__make-atomic-promise __tmp204641)))
    (define gxc#::void-special-form::t
      (let ((__tmp204642 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp204642
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args204386%_
        (apply make-instance gxc#::void-special-form::t _%$args204386%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp204643
             (lambda ()
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-special-form::t
                  '%#begin
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-special-form::t
                  '%#begin-syntax
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-special-form::t
                  '%#begin-foreign
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-special-form::t
                  '%#module
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-special-form::t
                  '%#import
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-special-form::t
                  '%#export
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-special-form::t
                  '%#provide
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-special-form::t
                  '%#extern
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-special-form::t
                  '%#define-values
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-special-form::t
                  '%#define-syntax
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-special-form::t
                  '%#define-alias
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-special-form::t
                  '%#define-runtime
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-special-form::t
                  '%#declare
                  gxc#void-method)))))
        (declare (not safe))
        (__make-atomic-promise __tmp204643)))
    (define gxc#::void::t
      (let ((__tmp204644
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp204644 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args204382%_
        (apply make-instance gxc#::void::t _%$args204382%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp204645
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp204645)))
    (define gxc#::false-expression::t
      (let ((__tmp204646 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp204646
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args204378%_
        (apply make-instance gxc#::false-expression::t _%$args204378%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp204647
             (lambda ()
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-expression::t
                  '%#begin-annotation
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-expression::t
                  '%#lambda
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-expression::t
                  '%#case-lambda
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-expression::t
                  '%#let-values
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-expression::t
                  '%#letrec-values
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-expression::t
                  '%#letrec*-values
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-expression::t
                  '%#quote
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-expression::t
                  '%#quote-syntax
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-expression::t
                  '%#call
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-expression::t
                  '%#call-unchecked
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-expression::t
                  '%#if
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-expression::t
                  '%#ref
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-expression::t
                  '%#set!
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-expression::t
                  '%#struct-instance?
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-expression::t
                  '%#struct-direct-instance?
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-expression::t
                  '%#struct-ref
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-expression::t
                  '%#struct-set!
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-expression::t
                  '%#struct-direct-ref
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-expression::t
                  '%#struct-direct-set!
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-expression::t
                  '%#struct-unchecked-ref
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-expression::t
                  '%#struct-unchecked-set!
                  gxc#false-method)))))
        (declare (not safe))
        (__make-atomic-promise __tmp204647)))
    (define gxc#::false-special-form::t
      (let ((__tmp204648 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp204648
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args204374%_
        (apply make-instance gxc#::false-special-form::t _%$args204374%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp204649
             (lambda ()
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-special-form::t
                  '%#begin
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-special-form::t
                  '%#begin-syntax
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-special-form::t
                  '%#begin-foreign
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-special-form::t
                  '%#module
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-special-form::t
                  '%#import
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-special-form::t
                  '%#export
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-special-form::t
                  '%#provide
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-special-form::t
                  '%#extern
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-special-form::t
                  '%#define-values
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-special-form::t
                  '%#define-syntax
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-special-form::t
                  '%#define-alias
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-special-form::t
                  '%#define-runtime
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-special-form::t
                  '%#declare
                  gxc#false-method)))))
        (declare (not safe))
        (__make-atomic-promise __tmp204649)))
    (define gxc#::false::t
      (let ((__tmp204650
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp204650 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args204370%_
        (apply make-instance gxc#::false::t _%$args204370%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp204651
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp204651)))
    (define gxc#::identity-expression::t
      (let ((__tmp204652 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp204652
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args204366%_
        (apply make-instance gxc#::identity-expression::t _%$args204366%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp204653
             (lambda ()
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-expression::t
                  '%#begin-annotation
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-expression::t
                  '%#lambda
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-expression::t
                  '%#case-lambda
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-expression::t
                  '%#let-values
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-expression::t
                  '%#letrec-values
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-expression::t
                  '%#letrec*-values
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-expression::t
                  '%#quote
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-expression::t
                  '%#quote-syntax
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-expression::t
                  '%#call
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-expression::t
                  '%#call-unchecked
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-expression::t
                  '%#if
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-expression::t
                  '%#ref
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-expression::t
                  '%#set!
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-expression::t
                  '%#struct-instance?
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-expression::t
                  '%#struct-direct-instance?
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-expression::t
                  '%#struct-ref
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-expression::t
                  '%#struct-set!
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-expression::t
                  '%#struct-direct-ref
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-expression::t
                  '%#struct-direct-set!
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-expression::t
                  '%#struct-unchecked-ref
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-expression::t
                  '%#struct-unchecked-set!
                  gxc#identity-method)))))
        (declare (not safe))
        (__make-atomic-promise __tmp204653)))
    (define gxc#::identity-special-form::t
      (let ((__tmp204654 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp204654
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args204362%_
        (apply make-instance gxc#::identity-special-form::t _%$args204362%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp204655
             (lambda ()
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-special-form::t
                  '%#begin
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-special-form::t
                  '%#begin-syntax
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-special-form::t
                  '%#begin-foreign
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-special-form::t
                  '%#module
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-special-form::t
                  '%#import
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-special-form::t
                  '%#export
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-special-form::t
                  '%#provide
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-special-form::t
                  '%#extern
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-special-form::t
                  '%#define-values
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-special-form::t
                  '%#define-syntax
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-special-form::t
                  '%#define-alias
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-special-form::t
                  '%#define-runtime
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-special-form::t
                  '%#declare
                  gxc#identity-method)))))
        (declare (not safe))
        (__make-atomic-promise __tmp204655)))
    (define gxc#::identity::t
      (let ((__tmp204656
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp204656
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args204358%_
        (apply make-instance gxc#::identity::t _%$args204358%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp204657
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp204657)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp204658 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp204658
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args204354%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args204354%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp204659
             (lambda ()
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform-expression::t
                  '%#begin-annotation
                  gxc#xform-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform-expression::t
                  '%#lambda
                  gxc#xform-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform-expression::t
                  '%#case-lambda
                  gxc#xform-case-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform-expression::t
                  '%#let-values
                  gxc#xform-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform-expression::t
                  '%#letrec-values
                  gxc#xform-letrec-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform-expression::t
                  '%#letrec*-values
                  gxc#xform-letrec-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform-expression::t
                  '%#quote
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform-expression::t
                  '%#quote-syntax
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform-expression::t
                  '%#call
                  gxc#xform-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform-expression::t
                  '%#call-unchecked
                  gxc#xform-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform-expression::t
                  '%#if
                  gxc#xform-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform-expression::t
                  '%#ref
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform-expression::t
                  '%#set!
                  gxc#xform-setq%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform-expression::t
                  '%#struct-instance?
                  gxc#xform-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform-expression::t
                  '%#struct-direct-instance?
                  gxc#xform-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform-expression::t
                  '%#struct-ref
                  gxc#xform-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform-expression::t
                  '%#struct-set!
                  gxc#xform-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform-expression::t
                  '%#struct-direct-ref
                  gxc#xform-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform-expression::t
                  '%#struct-direct-set!
                  gxc#xform-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform-expression::t
                  '%#struct-unchecked-ref
                  gxc#xform-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform-expression::t
                  '%#struct-unchecked-set!
                  gxc#xform-operands)))))
        (declare (not safe))
        (__make-atomic-promise __tmp204659)))
    (define gxc#::basic-xform::t
      (let ((__tmp204660
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp204660
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args204350%_
        (apply make-instance gxc#::basic-xform::t _%$args204350%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp204661
             (lambda ()
               (force gxc#::basic-xform-expression-bind-methods!)
               (force gxc#::identity-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform::t
                  '%#begin
                  gxc#xform-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform::t
                  '%#begin-syntax
                  gxc#xform-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform::t
                  '%#module
                  gxc#xform-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform::t
                  '%#define-values
                  gxc#xform-define-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform::t
                  '%#define-syntax
                  gxc#xform-define-syntax%)))))
        (declare (not safe))
        (__make-atomic-promise __tmp204661)))
    (define gxc#apply-begin%
      (lambda (_%self204306%_ _%stx204307%_)
        (let* ((_%$%g204309204319%_
                (lambda (_%$%g204310204316%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204310204316%_))))
               (_%$%g204308204346%_
                (lambda (_%$%g204310204322%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204310204322%_))
                      (let ((_%$%e204312204324%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204310204322%_))))
                        (let ((_%$%hd204313204327%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204312204324%_)))
                              (_%$%tl204314204329%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204312204324%_))))
                          (for-each
                           (lambda (_%$%g204341204343%_)
                             (gxc#compile-e__1
                              _%self204306%_
                              _%$%g204341204343%_))
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl204314204329%_)))))
                      (_%$%g204309204319%_ _%$%g204310204322%_)))))
          (_%$%g204308204346%_ _%stx204307%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self204267%_ _%stx204268%_)
        (let* ((_%$%g204270204280%_
                (lambda (_%$%g204271204277%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204271204277%_))))
               (_%$%g204269204303%_
                (lambda (_%$%g204271204283%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204271204283%_))
                      (let ((_%$%e204273204285%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204271204283%_))))
                        (let ((_%$%hd204274204288%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204273204285%_)))
                              (_%$%tl204275204290%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204273204285%_))))
                          (gxc#compile-e__1
                           _%self204267%_
                           (last _%$%tl204275204290%_))))
                      (_%$%g204270204280%_ _%$%g204271204283%_)))))
          (_%$%g204269204303%_ _%stx204268%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self204263%_ _%stx204264%_)
        (let ((__tmp204664
               (lambda () (gxc#apply-begin% _%self204263%_ _%stx204264%_)))
              (__tmp204662
               (let ((__tmp204663
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp204663 '1))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp204664
           gx#current-expander-phi
           __tmp204662))))
    (define gxc#apply-module%
      (lambda (_%self204202%_ _%stx204203%_)
        (let* ((_%$%g204205204219%_
                (lambda (_%$%g204206204216%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204206204216%_))))
               (_%$%g204204204260%_
                (lambda (_%$%g204206204222%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204206204222%_))
                      (let ((_%$%e204209204224%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204206204222%_))))
                        (let ((_%$%hd204210204227%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204209204224%_)))
                              (_%$%tl204211204229%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204209204224%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl204211204229%_))
                              (let ((_%$%e204212204232%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl204211204229%_))))
                                (let ((_%$%hd204213204235%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e204212204232%_)))
                                      (_%$%tl204214204237%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e204212204232%_))))
                                  (let* ((_%ctx204254%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-local-e__0
                                             _%$%hd204213204235%_)))
                                         (_%ctx-stx204256%_
                                          (##structure-ref
                                           _%ctx204254%_
                                           '11
                                           gx#module-context::t
                                           '#f))
                                         (__tmp204665
                                          (lambda ()
                                            (gxc#compile-e__1
                                             _%self204202%_
                                             _%ctx-stx204256%_))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp204665
                                     gx#current-expander-context
                                     _%ctx204254%_))))
                              (_%$%g204205204219%_ _%$%g204206204222%_))))
                      (_%$%g204205204219%_ _%$%g204206204222%_)))))
          (_%$%g204204204260%_ _%stx204203%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self204134%_ _%stx204135%_)
        (let* ((_%$%g204137204154%_
                (lambda (_%$%g204138204151%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204138204151%_))))
               (_%$%g204136204199%_
                (lambda (_%$%g204138204157%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204138204157%_))
                      (let ((_%$%e204141204159%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204138204157%_))))
                        (let ((_%$%hd204142204162%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204141204159%_)))
                              (_%$%tl204143204164%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204141204159%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl204143204164%_))
                              (let ((_%$%e204144204167%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl204143204164%_))))
                                (let ((_%$%hd204145204170%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e204144204167%_)))
                                      (_%$%tl204146204172%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e204144204167%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl204146204172%_))
                                      (let ((_%$%e204147204175%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl204146204172%_))))
                                        (let ((_%$%hd204148204178%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e204147204175%_)))
                                              (_%$%tl204149204180%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e204147204175%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl204149204180%_))
                                              (gxc#compile-e__1
                                               _%self204134%_
                                               _%$%hd204148204178%_)
                                              (_%$%g204137204154%_
                                               _%$%g204138204157%_))))
                                      (_%$%g204137204154%_
                                       _%$%g204138204157%_))))
                              (_%$%g204137204154%_ _%$%g204138204157%_))))
                      (_%$%g204137204154%_ _%$%g204138204157%_)))))
          (_%$%g204136204199%_ _%stx204135%_))))
    (define gxc#apply-define-values%
      (lambda (_%self204066%_ _%stx204067%_)
        (let* ((_%$%g204069204086%_
                (lambda (_%$%g204070204083%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204070204083%_))))
               (_%$%g204068204131%_
                (lambda (_%$%g204070204089%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204070204089%_))
                      (let ((_%$%e204073204091%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204070204089%_))))
                        (let ((_%$%hd204074204094%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204073204091%_)))
                              (_%$%tl204075204096%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204073204091%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl204075204096%_))
                              (let ((_%$%e204076204099%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl204075204096%_))))
                                (let ((_%$%hd204077204102%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e204076204099%_)))
                                      (_%$%tl204078204104%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e204076204099%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl204078204104%_))
                                      (let ((_%$%e204079204107%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl204078204104%_))))
                                        (let ((_%$%hd204080204110%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e204079204107%_)))
                                              (_%$%tl204081204112%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e204079204107%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl204081204112%_))
                                              (gxc#compile-e__1
                                               _%self204066%_
                                               _%$%hd204080204110%_)
                                              (_%$%g204069204086%_
                                               _%$%g204070204089%_))))
                                      (_%$%g204069204086%_
                                       _%$%g204070204089%_))))
                              (_%$%g204069204086%_ _%$%g204070204089%_))))
                      (_%$%g204069204086%_ _%$%g204070204089%_)))))
          (_%$%g204068204131%_ _%stx204067%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self203997%_ _%stx203998%_)
        (let* ((_%$%g204000204017%_
                (lambda (_%$%g204001204014%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204001204014%_))))
               (_%$%g203999204063%_
                (lambda (_%$%g204001204020%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204001204020%_))
                      (let ((_%$%e204004204022%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204001204020%_))))
                        (let ((_%$%hd204005204025%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204004204022%_)))
                              (_%$%tl204006204027%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204004204022%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl204006204027%_))
                              (let ((_%$%e204007204030%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl204006204027%_))))
                                (let ((_%$%hd204008204033%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e204007204030%_)))
                                      (_%$%tl204009204035%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e204007204030%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl204009204035%_))
                                      (let ((_%$%e204010204038%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl204009204035%_))))
                                        (let ((_%$%hd204011204041%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e204010204038%_)))
                                              (_%$%tl204012204043%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e204010204038%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl204012204043%_))
                                              (let ((__tmp204668
                                                     (lambda ()
                                                       (gxc#compile-e__1
                                                        _%self203997%_
                                                        _%$%hd204011204041%_)))
                                                    (__tmp204666
                                                     (let ((__tmp204667
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#current-expander-phi))))
                                                       (declare (not safe))
                                                       (##fx+ __tmp204667
                                                              '1))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp204668
                                                 gx#current-expander-phi
                                                 __tmp204666))
                                              (_%$%g204000204017%_
                                               _%$%g204001204020%_))))
                                      (_%$%g204000204017%_
                                       _%$%g204001204020%_))))
                              (_%$%g204000204017%_ _%$%g204001204020%_))))
                      (_%$%g204000204017%_ _%$%g204001204020%_)))))
          (_%$%g203999204063%_ _%stx203998%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self203929%_ _%stx203930%_)
        (let* ((_%$%g203932203949%_
                (lambda (_%$%g203933203946%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203933203946%_))))
               (_%$%g203931203994%_
                (lambda (_%$%g203933203952%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203933203952%_))
                      (let ((_%$%e203936203954%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203933203952%_))))
                        (let ((_%$%hd203937203957%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203936203954%_)))
                              (_%$%tl203938203959%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203936203954%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203938203959%_))
                              (let ((_%$%e203939203962%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203938203959%_))))
                                (let ((_%$%hd203940203965%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203939203962%_)))
                                      (_%$%tl203941203967%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203939203962%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl203941203967%_))
                                      (let ((_%$%e203942203970%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl203941203967%_))))
                                        (let ((_%$%hd203943203973%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e203942203970%_)))
                                              (_%$%tl203944203975%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e203942203970%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl203944203975%_))
                                              (gxc#compile-e__1
                                               _%self203929%_
                                               _%$%hd203943203973%_)
                                              (_%$%g203932203949%_
                                               _%$%g203933203952%_))))
                                      (_%$%g203932203949%_
                                       _%$%g203933203952%_))))
                              (_%$%g203932203949%_ _%$%g203933203952%_))))
                      (_%$%g203932203949%_ _%$%g203933203952%_)))))
          (_%$%g203931203994%_ _%stx203930%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self203815%_ _%stx203816%_)
        (let* ((_%$%g203818203846%_
                (lambda (_%$%g203819203843%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203819203843%_))))
               (_%$%g203817203926%_
                (lambda (_%$%g203819203849%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203819203849%_))
                      (let ((_%$%e203822203851%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203819203849%_))))
                        (let ((_%$%hd203823203854%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203822203851%_)))
                              (_%$%tl203824203856%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203822203851%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl203824203856%_))
                              (let ((_g204669_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl203824203856%_
                                        '0))))
                                (begin
                                  (let ((_g204670_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g204669_)
                                               (##values-length _g204669_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g204670_ 2)))
                                        (error "Context expects 2 values"
                                               _g204670_)))
                                  (let ((_%$%target203825203859%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g204669_ 0)))
                                        (_%$%tl203827203861%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g204669_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl203827203861%_))
                                        (letrec ((_%$%loop203828203864%_
                                                  (lambda (_%$%hd203826203867%_
                                                           _%$%body203832203869%_
                                                           _%$%hd203833203870%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd203826203867%_))
                                                        (let ((_%$%e203829203872%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd203826203867%_))))
                  (let ((_%$%lp-hd203830203875%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e203829203872%_)))
                        (_%$%lp-tl203831203877%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e203829203872%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd203830203875%_))
                        (let ((_%$%e203836203880%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%lp-hd203830203875%_))))
                          (let ((_%$%hd203837203883%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e203836203880%_)))
                                (_%$%tl203838203885%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e203836203880%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl203838203885%_))
                                (let ((_%$%e203839203888%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl203838203885%_))))
                                  (let ((_%$%hd203840203891%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e203839203888%_)))
                                        (_%$%tl203841203893%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e203839203888%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl203841203893%_))
                                        (_%$%loop203828203864%_
                                         _%$%lp-tl203831203877%_
                                         (cons _%$%hd203840203891%_
                                               _%$%body203832203869%_)
                                         (cons _%$%hd203837203883%_
                                               _%$%hd203833203870%_))
                                        (_%$%g203818203846%_
                                         _%$%g203819203849%_))))
                                (_%$%g203818203846%_ _%$%g203819203849%_))))
                        (_%$%g203818203846%_ _%$%g203819203849%_))))
                (let ((_%$%body203834203896%_ (reverse _%$%body203832203869%_))
                      (_%$%hd203835203897%_ (reverse _%$%hd203833203870%_)))
                  (for-each
                   (lambda (_%$%g203914203916%_)
                     (gxc#compile-e__1 _%self203815%_ _%$%g203914203916%_))
                   (let ((__tmp204671
                          (lambda (_%$%g203918203921%_ _%$%g203919203923%_)
                            (cons _%$%g203918203921%_ _%$%g203919203923%_))))
                     (declare (not safe))
                     (foldr__0 __tmp204671 '() _%$%body203834203896%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop203828203864%_
                                           _%$%target203825203859%_
                                           '()
                                           '()))
                                        (_%$%g203818203846%_
                                         _%$%g203819203849%_)))))
                              (_%$%g203818203846%_ _%$%g203819203849%_))))
                      (_%$%g203818203846%_ _%$%g203819203849%_)))))
          (_%$%g203817203926%_ _%stx203816%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self203672%_ _%stx203673%_)
        (let* ((_%$%g203675203710%_
                (lambda (_%$%g203676203707%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203676203707%_))))
               (_%$%g203674203812%_
                (lambda (_%$%g203676203713%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203676203713%_))
                      (let ((_%$%e203680203715%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203676203713%_))))
                        (let ((_%$%hd203681203718%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203680203715%_)))
                              (_%$%tl203682203720%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203680203715%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203682203720%_))
                              (let ((_%$%e203683203723%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203682203720%_))))
                                (let ((_%$%hd203684203726%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203683203723%_)))
                                      (_%$%tl203685203728%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203683203723%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd203684203726%_))
                                      (let ((_g204672_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%hd203684203726%_
                                                '0))))
                                        (begin
                                          (let ((_g204673_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g204672_)
                                                       (##values-length
                                                        _g204672_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g204673_ 2)))
                                                (error "Context expects 2 values"
                                                       _g204673_)))
                                          (let ((_%$%target203686203731%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g204672_ 0)))
                                                (_%$%tl203688203733%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g204672_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl203688203733%_))
                                                (letrec ((_%$%loop203689203736%_
                                                          (lambda (_%$%hd203687203739%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr203693203741%_
                           _%$%hd203694203742%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd203687203739%_))
                        (let ((_%$%e203690203744%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd203687203739%_))))
                          (let ((_%$%lp-hd203691203747%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e203690203744%_)))
                                (_%$%lp-tl203692203749%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e203690203744%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd203691203747%_))
                                (let ((_%$%e203697203752%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%lp-hd203691203747%_))))
                                  (let ((_%$%hd203698203755%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e203697203752%_)))
                                        (_%$%tl203699203757%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e203697203752%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl203699203757%_))
                                        (let ((_%$%e203700203760%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl203699203757%_))))
                                          (let ((_%$%hd203701203763%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e203700203760%_)))
                                                (_%$%tl203702203765%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e203700203760%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl203702203765%_))
                                                (_%$%loop203689203736%_
                                                 _%$%lp-tl203692203749%_
                                                 (cons _%$%hd203701203763%_
                                                       _%$%expr203693203741%_)
                                                 (cons _%$%hd203698203755%_
                                                       _%$%hd203694203742%_))
                                                (_%$%g203675203710%_
                                                 _%$%g203676203713%_))))
                                        (_%$%g203675203710%_
                                         _%$%g203676203713%_))))
                                (_%$%g203675203710%_ _%$%g203676203713%_))))
                        (let ((_%$%expr203695203768%_
                               (reverse _%$%expr203693203741%_))
                              (_%$%hd203696203769%_
                               (reverse _%$%hd203694203742%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203685203728%_))
                              (let ((_%$%e203703203771%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203685203728%_))))
                                (let ((_%$%hd203704203774%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203703203771%_)))
                                      (_%$%tl203705203776%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203703203771%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl203705203776%_))
                                      (for-each
                                       (lambda (_%$%g203800203802%_)
                                         (gxc#compile-e__1
                                          _%self203672%_
                                          _%$%g203800203802%_))
                                       (let ((__tmp204675
                                              (lambda (_%$%g203804203807%_
                                                       _%$%g203805203809%_)
                                                (cons _%$%g203804203807%_
                                                      _%$%g203805203809%_)))
                                             (__tmp204674
                                              (cons _%$%hd203704203774%_ '())))
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp204675
                                          __tmp204674
                                          _%$%expr203695203768%_)))
                                      (_%$%g203675203710%_
                                       _%$%g203676203713%_))))
                              (_%$%g203675203710%_ _%$%g203676203713%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop203689203736%_
                                                   _%$%target203686203731%_
                                                   '()
                                                   '()))
                                                (_%$%g203675203710%_
                                                 _%$%g203676203713%_)))))
                                      (_%$%g203675203710%_
                                       _%$%g203676203713%_))))
                              (_%$%g203675203710%_ _%$%g203676203713%_))))
                      (_%$%g203675203710%_ _%$%g203676203713%_)))))
          (_%$%g203674203812%_ _%stx203673%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self203617%_ _%stx203618%_)
        (let* ((_%$%g203620203634%_
                (lambda (_%$%g203621203631%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203621203631%_))))
               (_%$%g203619203669%_
                (lambda (_%$%g203621203637%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203621203637%_))
                      (let ((_%$%e203624203639%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203621203637%_))))
                        (let ((_%$%hd203625203642%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203624203639%_)))
                              (_%$%tl203626203644%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203624203639%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203626203644%_))
                              (let ((_%$%e203627203647%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203626203644%_))))
                                (let ((_%$%hd203628203650%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203627203647%_)))
                                      (_%$%tl203629203652%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203627203647%_))))
                                  (gxc#compile-e__1
                                   _%self203617%_
                                   (last _%$%tl203629203652%_))))
                              (_%$%g203620203634%_ _%$%g203621203637%_))))
                      (_%$%g203620203634%_ _%$%g203621203637%_)))))
          (_%$%g203619203669%_ _%stx203618%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self203549%_ _%stx203550%_)
        (let* ((_%$%g203552203569%_
                (lambda (_%$%g203553203566%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203553203566%_))))
               (_%$%g203551203614%_
                (lambda (_%$%g203553203572%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203553203572%_))
                      (let ((_%$%e203556203574%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203553203572%_))))
                        (let ((_%$%hd203557203577%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203556203574%_)))
                              (_%$%tl203558203579%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203556203574%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203558203579%_))
                              (let ((_%$%e203559203582%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203558203579%_))))
                                (let ((_%$%hd203560203585%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203559203582%_)))
                                      (_%$%tl203561203587%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203559203582%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl203561203587%_))
                                      (let ((_%$%e203562203590%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl203561203587%_))))
                                        (let ((_%$%hd203563203593%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e203562203590%_)))
                                              (_%$%tl203564203595%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e203562203590%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl203564203595%_))
                                              (gxc#compile-e__1
                                               _%self203549%_
                                               _%$%hd203563203593%_)
                                              (_%$%g203552203569%_
                                               _%$%g203553203572%_))))
                                      (_%$%g203552203569%_
                                       _%$%g203553203572%_))))
                              (_%$%g203552203569%_ _%$%g203553203572%_))))
                      (_%$%g203552203569%_ _%$%g203553203572%_)))))
          (_%$%g203551203614%_ _%stx203550%_))))
    (define gxc#apply-operands
      (lambda (_%self203464%_ _%stx203465%_)
        (let* ((_%$%g203467203486%_
                (lambda (_%$%g203468203483%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203468203483%_))))
               (_%$%g203466203546%_
                (lambda (_%$%g203468203489%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203468203489%_))
                      (let ((_%$%e203470203491%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203468203489%_))))
                        (let ((_%$%hd203471203494%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203470203491%_)))
                              (_%$%tl203472203496%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203470203491%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl203472203496%_))
                              (let ((_g204676_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl203472203496%_
                                        '0))))
                                (begin
                                  (let ((_g204677_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g204676_)
                                               (##values-length _g204676_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g204677_ 2)))
                                        (error "Context expects 2 values"
                                               _g204677_)))
                                  (let ((_%$%target203473203499%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g204676_ 0)))
                                        (_%$%tl203475203501%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g204676_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl203475203501%_))
                                        (letrec ((_%$%loop203476203504%_
                                                  (lambda (_%$%hd203474203507%_
                                                           _%$%rands203480203509%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd203474203507%_))
                                                        (let ((_%$%e203477203511%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd203474203507%_))))
                  (let ((_%$%lp-hd203478203514%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e203477203511%_)))
                        (_%$%lp-tl203479203516%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e203477203511%_))))
                    (_%$%loop203476203504%_
                     _%$%lp-tl203479203516%_
                     (cons _%$%lp-hd203478203514%_ _%$%rands203480203509%_))))
                (let ((_%$%rands203481203519%_
                       (reverse _%$%rands203480203509%_)))
                  (for-each
                   (lambda (_%$%g203534203536%_)
                     (gxc#compile-e__1 _%self203464%_ _%$%g203534203536%_))
                   (let ((__tmp204678
                          (lambda (_%$%g203538203541%_ _%$%g203539203543%_)
                            (cons _%$%g203538203541%_ _%$%g203539203543%_))))
                     (declare (not safe))
                     (foldr__0 __tmp204678 '() _%$%rands203481203519%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop203476203504%_
                                           _%$%target203473203499%_
                                           '()))
                                        (_%$%g203467203486%_
                                         _%$%g203468203489%_)))))
                              (_%$%g203467203486%_ _%$%g203468203489%_))))
                      (_%$%g203467203486%_ _%$%g203468203489%_)))))
          (_%$%g203466203546%_ _%stx203465%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx203461%_ _%src-stx203462%_)
        (let ((__tmp204679
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx203462%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx203461%_ __tmp204679))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx203457%_ _%src-stx203458%_ _%ctx203459%_)
        (gxc#compile-e__1
         _%ctx203459%_
         (gxc#xform-wrap-source _%stx203457%_ _%src-stx203458%_))))
    (define gxc#xform-begin%
      (lambda (_%self203412%_ _%stx203413%_)
        (let* ((_%$%g203415203425%_
                (lambda (_%$%g203416203422%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203416203422%_))))
               (_%$%g203414203454%_
                (lambda (_%$%g203416203428%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203416203428%_))
                      (let ((_%$%e203418203430%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203416203428%_))))
                        (let ((_%$%hd203419203433%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203418203430%_)))
                              (_%$%tl203420203435%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203418203430%_))))
                          (let ((_%forms203452%_
                                 (map (lambda (_%$%g203447203449%_)
                                        (gxc#compile-e__1
                                         _%self203412%_
                                         _%$%g203447203449%_))
                                      _%$%tl203420203435%_)))
                            (gxc#xform-wrap-source
                             (cons '%#begin _%forms203452%_)
                             _%stx203413%_))))
                      (_%$%g203415203425%_ _%$%g203416203428%_)))))
          (_%$%g203414203454%_ _%stx203413%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self203366%_ _%stx203367%_)
        (let* ((_%$%g203369203379%_
                (lambda (_%$%g203370203376%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203370203376%_))))
               (_%$%g203368203409%_
                (lambda (_%$%g203370203382%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203370203382%_))
                      (let ((_%$%e203372203384%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203370203382%_))))
                        (let ((_%$%hd203373203387%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203372203384%_)))
                              (_%$%tl203374203389%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203372203384%_))))
                          (let ((__tmp204682
                                 (lambda ()
                                   (let ((_%forms203407%_
                                          (map (lambda (_%$%g203402203404%_)
                                                 (gxc#compile-e__1
                                                  _%self203366%_
                                                  _%$%g203402203404%_))
                                               _%$%tl203374203389%_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#begin-syntax _%forms203407%_)
                                      _%stx203367%_))))
                                (__tmp204680
                                 (let ((__tmp204681
                                        (let ()
                                          (declare (not safe))
                                          (gx#current-expander-phi))))
                                   (declare (not safe))
                                   (##fx+ __tmp204681 '1))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp204682
                             gx#current-expander-phi
                             __tmp204680))))
                      (_%$%g203369203379%_ _%$%g203370203382%_)))))
          (_%$%g203368203409%_ _%stx203367%_))))
    (define gxc#xform-module%
      (lambda (_%self203303%_ _%stx203304%_)
        (let* ((_%$%g203306203320%_
                (lambda (_%$%g203307203317%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203307203317%_))))
               (_%$%g203305203363%_
                (lambda (_%$%g203307203323%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203307203323%_))
                      (let ((_%$%e203310203325%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203307203323%_))))
                        (let ((_%$%hd203311203328%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203310203325%_)))
                              (_%$%tl203312203330%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203310203325%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203312203330%_))
                              (let ((_%$%e203313203333%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203312203330%_))))
                                (let ((_%$%hd203314203336%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203313203333%_)))
                                      (_%$%tl203315203338%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203313203333%_))))
                                  (let* ((_%ctx203355%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-local-e__0
                                             _%$%hd203314203336%_)))
                                         (_%code203357%_
                                          (##structure-ref
                                           _%ctx203355%_
                                           '11
                                           gx#module-context::t
                                           '#f))
                                         (_%code203360%_
                                          (let ((__tmp204683
                                                 (lambda ()
                                                   (gxc#compile-e__1
                                                    _%self203303%_
                                                    _%code203357%_))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp204683
                                             gx#current-expander-context
                                             _%ctx203355%_))))
                                    (##structure-set!
                                     _%ctx203355%_
                                     _%code203360%_
                                     '11
                                     gx#module-context::t
                                     '#f)
                                    (gxc#xform-wrap-source
                                     (cons '%#module
                                           (cons _%$%hd203314203336%_
                                                 (cons _%code203360%_ '())))
                                     _%stx203304%_))))
                              (_%$%g203306203320%_ _%$%g203307203323%_))))
                      (_%$%g203306203320%_ _%$%g203307203323%_)))))
          (_%$%g203305203363%_ _%stx203304%_))))
    (define gxc#xform-define-values%
      (lambda (_%self203233%_ _%stx203234%_)
        (let* ((_%$%g203236203253%_
                (lambda (_%$%g203237203250%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203237203250%_))))
               (_%$%g203235203300%_
                (lambda (_%$%g203237203256%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203237203256%_))
                      (let ((_%$%e203240203258%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203237203256%_))))
                        (let ((_%$%hd203241203261%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203240203258%_)))
                              (_%$%tl203242203263%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203240203258%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203242203263%_))
                              (let ((_%$%e203243203266%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203242203263%_))))
                                (let ((_%$%hd203244203269%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203243203266%_)))
                                      (_%$%tl203245203271%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203243203266%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl203245203271%_))
                                      (let ((_%$%e203246203274%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl203245203271%_))))
                                        (let ((_%$%hd203247203277%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e203246203274%_)))
                                              (_%$%tl203248203279%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e203246203274%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl203248203279%_))
                                              (let ((_%expr203298%_
                                                     (gxc#compile-e__1
                                                      _%self203233%_
                                                      _%$%hd203247203277%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#define-values
                                                       (cons _%$%hd203244203269%_
                                                             (cons _%expr203298%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%stx203234%_))
                                              (_%$%g203236203253%_
                                               _%$%g203237203256%_))))
                                      (_%$%g203236203253%_
                                       _%$%g203237203256%_))))
                              (_%$%g203236203253%_ _%$%g203237203256%_))))
                      (_%$%g203236203253%_ _%$%g203237203256%_)))))
          (_%$%g203235203300%_ _%stx203234%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self203162%_ _%stx203163%_)
        (let* ((_%$%g203165203182%_
                (lambda (_%$%g203166203179%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203166203179%_))))
               (_%$%g203164203230%_
                (lambda (_%$%g203166203185%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203166203185%_))
                      (let ((_%$%e203169203187%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203166203185%_))))
                        (let ((_%$%hd203170203190%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203169203187%_)))
                              (_%$%tl203171203192%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203169203187%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203171203192%_))
                              (let ((_%$%e203172203195%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203171203192%_))))
                                (let ((_%$%hd203173203198%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203172203195%_)))
                                      (_%$%tl203174203200%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203172203195%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl203174203200%_))
                                      (let ((_%$%e203175203203%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl203174203200%_))))
                                        (let ((_%$%hd203176203206%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e203175203203%_)))
                                              (_%$%tl203177203208%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e203175203203%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl203177203208%_))
                                              (let ((__tmp204686
                                                     (lambda ()
                                                       (let ((_%expr203228%_
                                                              (gxc#compile-e__1
                                                               _%self203162%_
                                                               _%$%hd203176203206%_)))
                                                         (gxc#xform-wrap-source
                                                          (cons '%#define-syntax
                                                                (cons _%$%hd203173203198%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%expr203228%_ '())))
                  _%stx203163%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp204684
                                                     (let ((__tmp204685
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#current-expander-phi))))
                                                       (declare (not safe))
                                                       (##fx+ __tmp204685
                                                              '1))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp204686
                                                 gx#current-expander-phi
                                                 __tmp204684))
                                              (_%$%g203165203182%_
                                               _%$%g203166203185%_))))
                                      (_%$%g203165203182%_
                                       _%$%g203166203185%_))))
                              (_%$%g203165203182%_ _%$%g203166203185%_))))
                      (_%$%g203165203182%_ _%$%g203166203185%_)))))
          (_%$%g203164203230%_ _%stx203163%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self203092%_ _%stx203093%_)
        (let* ((_%$%g203095203112%_
                (lambda (_%$%g203096203109%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203096203109%_))))
               (_%$%g203094203159%_
                (lambda (_%$%g203096203115%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203096203115%_))
                      (let ((_%$%e203099203117%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203096203115%_))))
                        (let ((_%$%hd203100203120%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203099203117%_)))
                              (_%$%tl203101203122%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203099203117%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203101203122%_))
                              (let ((_%$%e203102203125%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203101203122%_))))
                                (let ((_%$%hd203103203128%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203102203125%_)))
                                      (_%$%tl203104203130%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203102203125%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl203104203130%_))
                                      (let ((_%$%e203105203133%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl203104203130%_))))
                                        (let ((_%$%hd203106203136%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e203105203133%_)))
                                              (_%$%tl203107203138%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e203105203133%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl203107203138%_))
                                              (let ((_%expr203157%_
                                                     (gxc#compile-e__1
                                                      _%self203092%_
                                                      _%$%hd203106203136%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#begin-annotation
                                                       (cons _%$%hd203103203128%_
                                                             (cons _%expr203157%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%stx203093%_))
                                              (_%$%g203095203112%_
                                               _%$%g203096203115%_))))
                                      (_%$%g203095203112%_
                                       _%$%g203096203115%_))))
                              (_%$%g203095203112%_ _%$%g203096203115%_))))
                      (_%$%g203095203112%_ _%$%g203096203115%_)))))
          (_%$%g203094203159%_ _%stx203093%_))))
    (define gxc#xform-lambda%
      (lambda (_%self203030%_ _%stx203031%_)
        (let* ((_%$%g203033203047%_
                (lambda (_%$%g203034203044%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203034203044%_))))
               (_%$%g203032203089%_
                (lambda (_%$%g203034203050%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203034203050%_))
                      (let ((_%$%e203037203052%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203034203050%_))))
                        (let ((_%$%hd203038203055%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203037203052%_)))
                              (_%$%tl203039203057%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203037203052%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203039203057%_))
                              (let ((_%$%e203040203060%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203039203057%_))))
                                (let ((_%$%hd203041203063%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203040203060%_)))
                                      (_%$%tl203042203065%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203040203060%_))))
                                  (let ((__tmp204688
                                         (lambda ()
                                           (let ((_%body203087%_
                                                  (map (lambda (_%$%g203082203084%_)
                                                         (gxc#compile-e__1
                                                          _%self203030%_
                                                          _%$%g203082203084%_))
                                                       _%$%tl203042203065%_)))
                                             (gxc#xform-wrap-source
                                              (cons '%#lambda
                                                    (cons _%$%hd203041203063%_
                                                          _%body203087%_))
                                              _%stx203031%_))))
                                        (__tmp204687
                                         (gxc#xform-let-locals
                                          _%$%hd203041203063%_)))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp204688
                                     gxc#current-compile-local-env
                                     __tmp204687))))
                              (_%$%g203033203047%_ _%$%g203034203050%_))))
                      (_%$%g203033203047%_ _%$%g203034203050%_)))))
          (_%$%g203032203089%_ _%stx203031%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self202938%_ _%stx202939%_)
        (letrec ((_%clause-e202941%_
                  (lambda (_%clause202982%_)
                    (let* ((_%$%g202984202995%_
                            (lambda (_%$%g202985202992%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g202985202992%_))))
                           (_%$%g202983203027%_
                            (lambda (_%$%g202985202998%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%g202985202998%_))
                                  (let ((_%$%e202988203000%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%g202985202998%_))))
                                    (let ((_%$%hd202989203003%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e202988203000%_)))
                                          (_%$%tl202990203005%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e202988203000%_))))
                                      (let ((__tmp204690
                                             (lambda ()
                                               (let ((_%body203025%_
                                                      (map (lambda (_%$%g203020203022%_)
                                                             (gxc#compile-e__1
                                                              _%self202938%_
                                                              _%$%g203020203022%_))
                                                           _%$%tl202990203005%_)))
                                                 (cons _%$%hd202989203003%_
                                                       _%body203025%_))))
                                            (__tmp204689
                                             (gxc#xform-let-locals
                                              _%$%hd202989203003%_)))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp204690
                                         gxc#current-compile-local-env
                                         __tmp204689))))
                                  (_%$%g202984202995%_ _%$%g202985202998%_)))))
                      (_%$%g202983203027%_ _%clause202982%_)))))
          (let* ((_%$%g202943202953%_
                  (lambda (_%$%g202944202950%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g202944202950%_))))
                 (_%$%g202942202979%_
                  (lambda (_%$%g202944202956%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g202944202956%_))
                        (let ((_%$%e202946202958%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g202944202956%_))))
                          (let ((_%$%hd202947202961%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e202946202958%_)))
                                (_%$%tl202948202963%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e202946202958%_))))
                            (let ((_%clauses202977%_
                                   (map _%clause-e202941%_
                                        _%$%tl202948202963%_)))
                              (gxc#xform-wrap-source
                               (cons '%#case-lambda _%clauses202977%_)
                               _%stx202939%_))))
                        (_%$%g202943202953%_ _%$%g202944202956%_)))))
            (_%$%g202942202979%_ _%stx202939%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self202698%_ _%stx202699%_)
        (let* ((_%$%g202701202734%_
                (lambda (_%$%g202702202731%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202702202731%_))))
               (_%$%g202700202935%_
                (lambda (_%$%g202702202737%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202702202737%_))
                      (let ((_%$%e202707202739%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g202702202737%_))))
                        (let ((_%$%hd202708202742%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202707202739%_)))
                              (_%$%tl202709202744%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202707202739%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl202709202744%_))
                              (let ((_%$%e202710202747%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl202709202744%_))))
                                (let ((_%$%hd202711202750%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e202710202747%_)))
                                      (_%$%tl202712202752%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e202710202747%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd202711202750%_))
                                      (let ((_g204691_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%hd202711202750%_
                                                '0))))
                                        (begin
                                          (let ((_g204692_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g204691_)
                                                       (##values-length
                                                        _g204691_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g204692_ 2)))
                                                (error "Context expects 2 values"
                                                       _g204692_)))
                                          (let ((_%$%target202713202755%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g204691_ 0)))
                                                (_%$%tl202715202757%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g204691_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl202715202757%_))
                                                (letrec ((_%$%loop202716202760%_
                                                          (lambda (_%$%hd202714202763%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr202720202765%_
                           _%$%hd202721202766%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd202714202763%_))
                        (let ((_%$%e202717202768%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd202714202763%_))))
                          (let ((_%$%lp-hd202718202771%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e202717202768%_)))
                                (_%$%lp-tl202719202773%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e202717202768%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd202718202771%_))
                                (let ((_%$%e202724202776%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%lp-hd202718202771%_))))
                                  (let ((_%$%hd202725202779%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e202724202776%_)))
                                        (_%$%tl202726202781%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e202724202776%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl202726202781%_))
                                        (let ((_%$%e202727202784%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl202726202781%_))))
                                          (let ((_%$%hd202728202787%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e202727202784%_)))
                                                (_%$%tl202729202789%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e202727202784%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl202729202789%_))
                                                (_%$%loop202716202760%_
                                                 _%$%lp-tl202719202773%_
                                                 (cons _%$%hd202728202787%_
                                                       _%$%expr202720202765%_)
                                                 (cons _%$%hd202725202779%_
                                                       _%$%hd202721202766%_))
                                                (_%$%g202701202734%_
                                                 _%$%g202702202737%_))))
                                        (_%$%g202701202734%_
                                         _%$%g202702202737%_))))
                                (_%$%g202701202734%_ _%$%g202702202737%_))))
                        (let ((_%$%expr202722202792%_
                               (reverse _%$%expr202720202765%_))
                              (_%$%hd202723202793%_
                               (reverse _%$%hd202721202766%_)))
                          (let* ((_%$%g202817202833%_
                                  (lambda (_%$%g202818202830%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%$%g202818202830%_))))
                                 (_%$%g202816202921%_
                                  (lambda (_%$%g202818202836%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%g202818202836%_))
                                        (let ((_g204693_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%$%g202818202836%_
                                                  '0))))
                                          (begin
                                            (let ((_g204694_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g204693_)
                                                         (##values-length
                                                          _g204693_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g204694_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g204694_)))
                                            (let ((_%$%target202820202838%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g204693_
                                                      0)))
                                                  (_%$%tl202822202840%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g204693_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl202822202840%_))
                                                  (letrec ((_%$%loop202823202843%_
                                                            (lambda (_%$%hd202821202846%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%expr202827202848%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd202821202846%_))
                          (let ((_%$%e202824202850%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%hd202821202846%_))))
                            (let ((_%$%lp-hd202825202853%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e202824202850%_)))
                                  (_%$%lp-tl202826202855%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e202824202850%_))))
                              (_%$%loop202823202843%_
                               _%$%lp-tl202826202855%_
                               (cons _%$%lp-hd202825202853%_
                                     _%$%expr202827202848%_))))
                          (let ((_%$%expr202828202858%_
                                 (reverse _%$%expr202827202848%_)))
                            (let ((__tmp204697
                                   (lambda ()
                                     (let* ((_%$%g202874202881%_
                                             (lambda (_%$%g202875202878%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%$%g202875202878%_))))
                                            (_%$%g202873202907%_
                                             (lambda (_%$%g202875202884%_)
                                               (gxc#xform-wrap-source
                                                (cons _%$%hd202708202742%_
                                                      (cons (begin
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-check-splice-targets
                         _%$%expr202828202858%_
                         _%$%hd202723202793%_))
                      (let ((__tmp204698
                             (lambda (_%$%g202896202900%_
                                      _%$%g202897202902%_
                                      _%$%g202898202904%_)
                               (cons (cons _%$%g202897202902%_
                                           (cons _%$%g202896202900%_ '()))
                                     _%$%g202898202904%_))))
                        (declare (not safe))
                        (foldr__1
                         __tmp204698
                         '()
                         _%$%expr202828202858%_
                         _%$%hd202723202793%_)))
                    _%$%g202875202884%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%stx202699%_))))
                                       (_%$%g202873202907%_
                                        (map (lambda (_%$%g202909202911%_)
                                               (gxc#compile-e__1
                                                _%self202698%_
                                                _%$%g202909202911%_))
                                             _%$%tl202712202752%_)))))
                                  (__tmp204695
                                   (gxc#xform-let-locals
                                    (let ((__tmp204696
                                           (lambda (_%$%g202913202916%_
                                                    _%$%g202914202918%_)
                                             (cons _%$%g202913202916%_
                                                   _%$%g202914202918%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp204696
                                       '()
                                       _%$%hd202723202793%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp204697
                               gxc#current-compile-local-env
                               __tmp204695)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%loop202823202843%_
                                                     _%$%target202820202838%_
                                                     '()))
                                                  (_%$%g202817202833%_
                                                   _%$%g202818202836%_)))))
                                        (_%$%g202817202833%_
                                         _%$%g202818202836%_)))))
                            (_%$%g202816202921%_
                             (map (lambda (_%$%g202923202925%_)
                                    (gxc#compile-e__1
                                     _%self202698%_
                                     _%$%g202923202925%_))
                                  (let ((__tmp204699
                                         (lambda (_%$%g202927202930%_
                                                  _%$%g202928202932%_)
                                           (cons _%$%g202927202930%_
                                                 _%$%g202928202932%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp204699
                                     '()
                                     _%$%expr202722202792%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop202716202760%_
                                                   _%$%target202713202755%_
                                                   '()
                                                   '()))
                                                (_%$%g202701202734%_
                                                 _%$%g202702202737%_)))))
                                      (_%$%g202701202734%_
                                       _%$%g202702202737%_))))
                              (_%$%g202701202734%_ _%$%g202702202737%_))))
                      (_%$%g202701202734%_ _%$%g202702202737%_)))))
          (_%$%g202700202935%_ _%stx202699%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self202458%_ _%stx202459%_)
        (let* ((_%$%g202461202494%_
                (lambda (_%$%g202462202491%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202462202491%_))))
               (_%$%g202460202695%_
                (lambda (_%$%g202462202497%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202462202497%_))
                      (let ((_%$%e202467202499%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g202462202497%_))))
                        (let ((_%$%hd202468202502%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202467202499%_)))
                              (_%$%tl202469202504%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202467202499%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl202469202504%_))
                              (let ((_%$%e202470202507%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl202469202504%_))))
                                (let ((_%$%hd202471202510%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e202470202507%_)))
                                      (_%$%tl202472202512%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e202470202507%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd202471202510%_))
                                      (let ((_g204700_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%hd202471202510%_
                                                '0))))
                                        (begin
                                          (let ((_g204701_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g204700_)
                                                       (##values-length
                                                        _g204700_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g204701_ 2)))
                                                (error "Context expects 2 values"
                                                       _g204701_)))
                                          (let ((_%$%target202473202515%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g204700_ 0)))
                                                (_%$%tl202475202517%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g204700_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl202475202517%_))
                                                (letrec ((_%$%loop202476202520%_
                                                          (lambda (_%$%hd202474202523%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr202480202525%_
                           _%$%hd202481202526%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd202474202523%_))
                        (let ((_%$%e202477202528%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd202474202523%_))))
                          (let ((_%$%lp-hd202478202531%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e202477202528%_)))
                                (_%$%lp-tl202479202533%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e202477202528%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd202478202531%_))
                                (let ((_%$%e202484202536%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%lp-hd202478202531%_))))
                                  (let ((_%$%hd202485202539%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e202484202536%_)))
                                        (_%$%tl202486202541%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e202484202536%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl202486202541%_))
                                        (let ((_%$%e202487202544%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl202486202541%_))))
                                          (let ((_%$%hd202488202547%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e202487202544%_)))
                                                (_%$%tl202489202549%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e202487202544%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl202489202549%_))
                                                (_%$%loop202476202520%_
                                                 _%$%lp-tl202479202533%_
                                                 (cons _%$%hd202488202547%_
                                                       _%$%expr202480202525%_)
                                                 (cons _%$%hd202485202539%_
                                                       _%$%hd202481202526%_))
                                                (_%$%g202461202494%_
                                                 _%$%g202462202497%_))))
                                        (_%$%g202461202494%_
                                         _%$%g202462202497%_))))
                                (_%$%g202461202494%_ _%$%g202462202497%_))))
                        (let ((_%$%expr202482202552%_
                               (reverse _%$%expr202480202525%_))
                              (_%$%hd202483202553%_
                               (reverse _%$%hd202481202526%_)))
                          (let ((__tmp204704
                                 (lambda ()
                                   (let* ((_%$%g202578202594%_
                                           (lambda (_%$%g202579202591%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%$%g202579202591%_))))
                                          (_%$%g202577202674%_
                                           (lambda (_%$%g202579202597%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair/null?
                                                    _%$%g202579202597%_))
                                                 (let ((_g204705_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-split-splice
                                                           _%$%g202579202597%_
                                                           '0))))
                                                   (begin
                                                     (let ((_g204706_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g204705_)
                          (##values-length _g204705_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g204706_ 2)))
                   (error "Context expects 2 values" _g204706_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%$%target202581202599%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g204705_
                                                               0)))
                                                           (_%$%tl202583202601%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g204705_
                                                               1))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl202583202601%_))
                                                           (letrec ((_%$%loop202584202604%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%$%hd202582202607%_
                                      _%$%expr202588202609%_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd202582202607%_))
                                   (let ((_%$%e202585202611%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e
                                             _%$%hd202582202607%_))))
                                     (let ((_%$%lp-hd202586202614%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e202585202611%_)))
                                           (_%$%lp-tl202587202616%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e202585202611%_))))
                                       (_%$%loop202584202604%_
                                        _%$%lp-tl202587202616%_
                                        (cons _%$%lp-hd202586202614%_
                                              _%$%expr202588202609%_))))
                                   (let* ((_%$%expr202589202619%_
                                           (reverse _%$%expr202588202609%_))
                                          (_%$%g202635202642%_
                                           (lambda (_%$%g202636202639%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%$%g202636202639%_))))
                                          (_%$%g202634202667%_
                                           (lambda (_%$%g202636202645%_)
                                             (gxc#xform-wrap-source
                                              (cons _%$%hd202468202502%_
                                                    (cons (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _%$%expr202589202619%_
                                                               _%$%hd202483202553%_))
                                                            (let ((__tmp204707
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%$%g202656202660%_
                                    _%$%g202657202662%_
                                    _%$%g202658202664%_)
                             (cons (cons _%$%g202657202662%_
                                         (cons _%$%g202656202660%_ '()))
                                   _%$%g202658202664%_))))
                      (declare (not safe))
                      (foldr__1
                       __tmp204707
                       '()
                       _%$%expr202589202619%_
                       _%$%hd202483202553%_)))
                  _%$%g202636202645%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%stx202459%_))))
                                     (_%$%g202634202667%_
                                      (map (lambda (_%$%g202669202671%_)
                                             (gxc#compile-e__1
                                              _%self202458%_
                                              _%$%g202669202671%_))
                                           _%$%tl202472202512%_)))))))
                     (_%$%loop202584202604%_ _%$%target202581202599%_ '()))
                   (_%$%g202578202594%_ _%$%g202579202597%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g202578202594%_
                                                  _%$%g202579202597%_)))))
                                     (_%$%g202577202674%_
                                      (map (lambda (_%$%g202676202678%_)
                                             (gxc#compile-e__1
                                              _%self202458%_
                                              _%$%g202676202678%_))
                                           (let ((__tmp204708
                                                  (lambda (_%$%g202680202683%_
                                                           _%$%g202681202685%_)
                                                    (cons _%$%g202680202683%_
                                                          _%$%g202681202685%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp204708
                                              '()
                                              _%$%expr202482202552%_)))))))
                                (__tmp204702
                                 (gxc#xform-let-locals
                                  (let ((__tmp204703
                                         (lambda (_%$%g202687202690%_
                                                  _%$%g202688202692%_)
                                           (cons _%$%g202687202690%_
                                                 _%$%g202688202692%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp204703
                                     '()
                                     _%$%hd202483202553%_)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp204704
                             gxc#current-compile-local-env
                             __tmp204702)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop202476202520%_
                                                   _%$%target202473202515%_
                                                   '()
                                                   '()))
                                                (_%$%g202461202494%_
                                                 _%$%g202462202497%_)))))
                                      (_%$%g202461202494%_
                                       _%$%g202462202497%_))))
                              (_%$%g202461202494%_ _%$%g202462202497%_))))
                      (_%$%g202461202494%_ _%$%g202462202497%_)))))
          (_%$%g202460202695%_ _%stx202459%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings202325%_)
        (letrec ((_%flatten202327%_
                  (lambda (_%maybe-lst202385%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst202385%_))
                        (cons _%maybe-lst202385%_ '())
                        (let _%loop202387%_ ((_%rest202389%_
                                              _%maybe-lst202385%_)
                                             (_%result202390%_ '()))
                          (let* ((_%__stx204594204595%_ _%rest202389%_)
                                 (_%$%g202394202406%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx204594204595%_)))))
                            (let ((_%__kont204596204597%_
                                   (lambda (_%$%g202396202444%_
                                            _%$%g202397202445%_)
                                     (_%loop202387%_
                                      _%$%g202396202444%_
                                      (let ((__tmp204709
                                             (_%flatten202327%_
                                              _%$%g202397202445%_)))
                                        (declare (not safe))
                                        (foldl__0
                                         cons
                                         _%result202390%_
                                         __tmp204709)))))
                                  (_%__kont204598204599%_
                                   (lambda (_%$%g202401202418%_)
                                     (cons _%$%g202401202418%_
                                           _%result202390%_)))
                                  (_%__kont204600204601%_
                                   (lambda () _%result202390%_)))
                              (let ((_%$%g202392202431%_
                                     (lambda ()
                                       (let ((_%$%g202401202418%_
                                              _%__stx204594204595%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%$%g202401202418%_))
                                             (_%__kont204598204599%_
                                              _%$%g202401202418%_)
                                             (_%__kont204600204601%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx204594204595%_))
                                    (let ((_%$%e202398202436%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx204594204595%_))))
                                      (let ((_%$%tl202400202441%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e202398202436%_)))
                                            (_%$%hd202399202439%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e202398202436%_))))
                                        (_%__kont204596204597%_
                                         _%$%tl202400202441%_
                                         _%$%hd202399202439%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g202392202431%_)))))))))))
          (let _%loop202329%_ ((_%rest202331%_
                                (_%flatten202327%_ _%bindings202325%_))
                               (_%locals202332%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%$%rest202333202344%_ _%rest202331%_)
                   (_%$%E202337202348%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%$%rest202333202344%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%$%K202340202373%_
                     (lambda (_%rest202370%_ _%id202371%_)
                       (_%loop202329%_
                        _%rest202370%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id202371%_))
                              _%locals202332%_))))
                    (_%$%K202339202362%_
                     (lambda (_%id202360%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id202360%_))
                             _%locals202332%_)))
                    (_%$%K202338202353%_ (lambda () _%locals202332%_)))
                (let ((_%$%try-match202335202367%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%$%rest202333202344%_))
                             (let ((_%id202365%_ _%$%rest202333202344%_))
                               (_%$%K202339202362%_ _%id202365%_))
                             (_%$%K202338202353%_)))))
                  (if (pair? _%$%rest202333202344%_)
                      (let ((_%$%tl202342202378%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%rest202333202344%_)))
                            (_%$%hd202341202376%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%rest202333202344%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%$%hd202341202376%_))
                            (let ((_%id202381%_ _%$%hd202341202376%_)
                                  (_%rest202383%_ _%$%tl202342202378%_))
                              (_%$%K202340202373%_
                               _%rest202383%_
                               _%id202381%_))
                            (_%$%K202338202353%_)))
                      (_%$%try-match202335202367%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self202277%_ _%stx202278%_)
        (let* ((_%$%g202280202291%_
                (lambda (_%$%g202281202288%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202281202288%_))))
               (_%$%g202279202322%_
                (lambda (_%$%g202281202294%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202281202294%_))
                      (let ((_%$%e202284202296%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g202281202294%_))))
                        (let ((_%$%hd202285202299%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202284202296%_)))
                              (_%$%tl202286202301%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202284202296%_))))
                          (let ((_%rands202320%_
                                 (map (lambda (_%$%g202315202317%_)
                                        (gxc#compile-e__1
                                         _%self202277%_
                                         _%$%g202315202317%_))
                                      _%$%tl202286202301%_)))
                            (gxc#xform-wrap-source
                             (cons _%$%hd202285202299%_ _%rands202320%_)
                             _%stx202278%_))))
                      (_%$%g202280202291%_ _%$%g202281202294%_)))))
          (_%$%g202279202322%_ _%stx202278%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self202207%_ _%stx202208%_)
        (let* ((_%$%g202210202227%_
                (lambda (_%$%g202211202224%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202211202224%_))))
               (_%$%g202209202274%_
                (lambda (_%$%g202211202230%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202211202230%_))
                      (let ((_%$%e202214202232%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g202211202230%_))))
                        (let ((_%$%hd202215202235%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202214202232%_)))
                              (_%$%tl202216202237%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202214202232%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl202216202237%_))
                              (let ((_%$%e202217202240%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl202216202237%_))))
                                (let ((_%$%hd202218202243%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e202217202240%_)))
                                      (_%$%tl202219202245%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e202217202240%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl202219202245%_))
                                      (let ((_%$%e202220202248%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl202219202245%_))))
                                        (let ((_%$%hd202221202251%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e202220202248%_)))
                                              (_%$%tl202222202253%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e202220202248%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl202222202253%_))
                                              (let ((_%expr202272%_
                                                     (gxc#compile-e__1
                                                      _%self202207%_
                                                      _%$%hd202221202251%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#set!
                                                       (cons _%$%hd202218202243%_
                                                             (cons _%expr202272%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%stx202208%_))
                                              (_%$%g202210202227%_
                                               _%$%g202211202230%_))))
                                      (_%$%g202210202227%_
                                       _%$%g202211202230%_))))
                              (_%$%g202210202227%_ _%$%g202211202230%_))))
                      (_%$%g202210202227%_ _%$%g202211202230%_)))))
          (_%$%g202209202274%_ _%stx202208%_))))))
