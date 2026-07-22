(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1784758125)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx204628%_)
        (if gxc#__DEBUG-COMPILE
            (let ((__tmp204850
                   (let ()
                     (declare (not safe))
                     (gx#syntax->datum _%stx204628%_))))
              (declare (not safe))
              (displayln '"@compile " __tmp204850))
            '#!void)
        (let* ((_%self204630%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e204632%_
                (let ((__tmp204851 (gxc#stx-car-e _%stx204628%_)))
                  (declare (not safe))
                  (method-ref _%self204630%_ __tmp204851))))
          (if _%$e204632%_
              (let ()
                (declare (not safe))
                (let ((_%$e204638%_ (gx#stx-source _%stx204628%_)))
                  (if _%$e204638%_
                      (call-with-parameters__1
                       (lambda () (_%$e204632%_ _%self204630%_ _%stx204628%_))
                       gxc#current-compile-context
                       (cons (list '@ _%$e204638%_)
                             (let ((_%$e204645%_
                                    (gxc#current-compile-context)))
                               (if _%$e204645%_ _%$e204645%_ '()))))
                      (_%$e204632%_ _%self204630%_ _%stx204628%_))))
              (let ((__tmp204853 (gxc#stx-car-e _%stx204628%_))
                    (__tmp204852
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx204628%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self204630%_
                       __tmp204853
                       __tmp204852))))))
    (define gxc#compile-e__1
      (lambda (_%self204650%_ _%stx204651%_)
        (if gxc#__DEBUG-COMPILE
            (let ((__tmp204854
                   (let ()
                     (declare (not safe))
                     (gx#syntax->datum _%stx204651%_))))
              (declare (not safe))
              (displayln '"@compile " __tmp204854))
            '#!void)
        (let ((_%$e204653%_
               (let ((__tmp204855 (gxc#stx-car-e _%stx204651%_)))
                 (declare (not safe))
                 (method-ref _%self204650%_ __tmp204855))))
          (if _%$e204653%_
              (let ()
                (declare (not safe))
                (let ((_%$e204659%_ (gx#stx-source _%stx204651%_)))
                  (if _%$e204659%_
                      (call-with-parameters__1
                       (lambda () (_%$e204653%_ _%self204650%_ _%stx204651%_))
                       gxc#current-compile-context
                       (cons (list '@ _%$e204659%_)
                             (let ((_%$e204666%_
                                    (gxc#current-compile-context)))
                               (if _%$e204666%_ _%$e204666%_ '()))))
                      (_%$e204653%_ _%self204650%_ _%stx204651%_))))
              (let ((__tmp204857 (gxc#stx-car-e _%stx204651%_))
                    (__tmp204856
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx204651%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self204650%_
                       __tmp204857
                       __tmp204856))))))
    (define gxc#compile-e
      (lambda _g204858_
        (let ((_g204859_ (let () (declare (not safe)) (##length _g204858_))))
          (cond ((let () (declare (not safe)) (##fx= _g204859_ 1))
                 (apply gxc#compile-e__0 _g204858_))
                ((let () (declare (not safe)) (##fx= _g204859_ 2))
                 (apply gxc#compile-e__1 _g204858_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g204858_))))))
    (define gxc#stx-car-e
      (lambda (_%stx204626%_)
        (let ((__tmp204860
               (car (let () (declare (not safe)) (gx#stx-e _%stx204626%_)))))
          (declare (not safe))
          (gx#stx-e __tmp204860))))
    (define gxc#void-method (lambda (_%self204623%_ _%stx204624%_) '#!void))
    (define gxc#false-method (lambda (_%self204620%_ _%stx204621%_) '#f))
    (define gxc#true-method (lambda (_%self204617%_ _%stx204618%_) '#t))
    (define gxc#identity-method
      (lambda (_%self204614%_ _%stx204615%_) _%stx204615%_))
    (define gxc#::void-expression::t
      (let ((__tmp204861 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp204861
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args204611%_
        (apply make-instance gxc#::void-expression::t _%$args204611%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp204862
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
        (__make-atomic-promise __tmp204862)))
    (define gxc#::void-special-form::t
      (let ((__tmp204863 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp204863
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args204607%_
        (apply make-instance gxc#::void-special-form::t _%$args204607%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp204864
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
        (__make-atomic-promise __tmp204864)))
    (define gxc#::void::t
      (let ((__tmp204865
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp204865 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args204603%_
        (apply make-instance gxc#::void::t _%$args204603%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp204866
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp204866)))
    (define gxc#::false-expression::t
      (let ((__tmp204867 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp204867
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args204599%_
        (apply make-instance gxc#::false-expression::t _%$args204599%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp204868
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
        (__make-atomic-promise __tmp204868)))
    (define gxc#::false-special-form::t
      (let ((__tmp204869 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp204869
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args204595%_
        (apply make-instance gxc#::false-special-form::t _%$args204595%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp204870
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
        (__make-atomic-promise __tmp204870)))
    (define gxc#::false::t
      (let ((__tmp204871
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp204871 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args204591%_
        (apply make-instance gxc#::false::t _%$args204591%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp204872
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp204872)))
    (define gxc#::identity-expression::t
      (let ((__tmp204873 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp204873
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args204587%_
        (apply make-instance gxc#::identity-expression::t _%$args204587%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp204874
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
        (__make-atomic-promise __tmp204874)))
    (define gxc#::identity-special-form::t
      (let ((__tmp204875 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp204875
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args204583%_
        (apply make-instance gxc#::identity-special-form::t _%$args204583%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp204876
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
        (__make-atomic-promise __tmp204876)))
    (define gxc#::identity::t
      (let ((__tmp204877
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp204877
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args204579%_
        (apply make-instance gxc#::identity::t _%$args204579%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp204878
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp204878)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp204879 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp204879
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args204575%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args204575%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp204880
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
        (__make-atomic-promise __tmp204880)))
    (define gxc#::basic-xform::t
      (let ((__tmp204881
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp204881
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args204571%_
        (apply make-instance gxc#::basic-xform::t _%$args204571%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp204882
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
        (__make-atomic-promise __tmp204882)))
    (define gxc#apply-begin%
      (lambda (_%self204527%_ _%stx204528%_)
        (let* ((_%$%g204530204540%_
                (lambda (_%$%g204531204537%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204531204537%_))))
               (_%$%g204529204567%_
                (lambda (_%$%g204531204543%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204531204543%_))
                      (let ((_%$%e204533204545%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204531204543%_))))
                        (let ((_%$%hd204534204548%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204533204545%_)))
                              (_%$%tl204535204550%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204533204545%_))))
                          (for-each
                           (lambda (_%$%g204562204564%_)
                             (gxc#compile-e__1
                              _%self204527%_
                              _%$%g204562204564%_))
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl204535204550%_)))))
                      (_%$%g204530204540%_ _%$%g204531204543%_)))))
          (_%$%g204529204567%_ _%stx204528%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self204488%_ _%stx204489%_)
        (let* ((_%$%g204491204501%_
                (lambda (_%$%g204492204498%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204492204498%_))))
               (_%$%g204490204524%_
                (lambda (_%$%g204492204504%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204492204504%_))
                      (let ((_%$%e204494204506%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204492204504%_))))
                        (let ((_%$%hd204495204509%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204494204506%_)))
                              (_%$%tl204496204511%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204494204506%_))))
                          (gxc#compile-e__1
                           _%self204488%_
                           (last _%$%tl204496204511%_))))
                      (_%$%g204491204501%_ _%$%g204492204504%_)))))
          (_%$%g204490204524%_ _%stx204489%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self204484%_ _%stx204485%_)
        (let ((__tmp204885
               (lambda () (gxc#apply-begin% _%self204484%_ _%stx204485%_)))
              (__tmp204883
               (let ((__tmp204884
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp204884 '1))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp204885
           gx#current-expander-phi
           __tmp204883))))
    (define gxc#apply-module%
      (lambda (_%self204423%_ _%stx204424%_)
        (let* ((_%$%g204426204440%_
                (lambda (_%$%g204427204437%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204427204437%_))))
               (_%$%g204425204481%_
                (lambda (_%$%g204427204443%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204427204443%_))
                      (let ((_%$%e204430204445%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204427204443%_))))
                        (let ((_%$%hd204431204448%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204430204445%_)))
                              (_%$%tl204432204450%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204430204445%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl204432204450%_))
                              (let ((_%$%e204433204453%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl204432204450%_))))
                                (let ((_%$%hd204434204456%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e204433204453%_)))
                                      (_%$%tl204435204458%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e204433204453%_))))
                                  (let* ((_%ctx204475%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-local-e__0
                                             _%$%hd204434204456%_)))
                                         (_%ctx-stx204477%_
                                          (##structure-ref
                                           _%ctx204475%_
                                           '11
                                           gx#module-context::t
                                           '#f))
                                         (__tmp204886
                                          (lambda ()
                                            (gxc#compile-e__1
                                             _%self204423%_
                                             _%ctx-stx204477%_))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp204886
                                     gx#current-expander-context
                                     _%ctx204475%_))))
                              (_%$%g204426204440%_ _%$%g204427204443%_))))
                      (_%$%g204426204440%_ _%$%g204427204443%_)))))
          (_%$%g204425204481%_ _%stx204424%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self204355%_ _%stx204356%_)
        (let* ((_%$%g204358204375%_
                (lambda (_%$%g204359204372%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204359204372%_))))
               (_%$%g204357204420%_
                (lambda (_%$%g204359204378%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204359204378%_))
                      (let ((_%$%e204362204380%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204359204378%_))))
                        (let ((_%$%hd204363204383%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204362204380%_)))
                              (_%$%tl204364204385%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204362204380%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl204364204385%_))
                              (let ((_%$%e204365204388%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl204364204385%_))))
                                (let ((_%$%hd204366204391%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e204365204388%_)))
                                      (_%$%tl204367204393%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e204365204388%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl204367204393%_))
                                      (let ((_%$%e204368204396%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl204367204393%_))))
                                        (let ((_%$%hd204369204399%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e204368204396%_)))
                                              (_%$%tl204370204401%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e204368204396%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl204370204401%_))
                                              (gxc#compile-e__1
                                               _%self204355%_
                                               _%$%hd204369204399%_)
                                              (_%$%g204358204375%_
                                               _%$%g204359204378%_))))
                                      (_%$%g204358204375%_
                                       _%$%g204359204378%_))))
                              (_%$%g204358204375%_ _%$%g204359204378%_))))
                      (_%$%g204358204375%_ _%$%g204359204378%_)))))
          (_%$%g204357204420%_ _%stx204356%_))))
    (define gxc#apply-define-values%
      (lambda (_%self204287%_ _%stx204288%_)
        (let* ((_%$%g204290204307%_
                (lambda (_%$%g204291204304%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204291204304%_))))
               (_%$%g204289204352%_
                (lambda (_%$%g204291204310%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204291204310%_))
                      (let ((_%$%e204294204312%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204291204310%_))))
                        (let ((_%$%hd204295204315%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204294204312%_)))
                              (_%$%tl204296204317%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204294204312%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl204296204317%_))
                              (let ((_%$%e204297204320%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl204296204317%_))))
                                (let ((_%$%hd204298204323%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e204297204320%_)))
                                      (_%$%tl204299204325%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e204297204320%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl204299204325%_))
                                      (let ((_%$%e204300204328%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl204299204325%_))))
                                        (let ((_%$%hd204301204331%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e204300204328%_)))
                                              (_%$%tl204302204333%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e204300204328%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl204302204333%_))
                                              (gxc#compile-e__1
                                               _%self204287%_
                                               _%$%hd204301204331%_)
                                              (_%$%g204290204307%_
                                               _%$%g204291204310%_))))
                                      (_%$%g204290204307%_
                                       _%$%g204291204310%_))))
                              (_%$%g204290204307%_ _%$%g204291204310%_))))
                      (_%$%g204290204307%_ _%$%g204291204310%_)))))
          (_%$%g204289204352%_ _%stx204288%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self204218%_ _%stx204219%_)
        (let* ((_%$%g204221204238%_
                (lambda (_%$%g204222204235%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204222204235%_))))
               (_%$%g204220204284%_
                (lambda (_%$%g204222204241%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204222204241%_))
                      (let ((_%$%e204225204243%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204222204241%_))))
                        (let ((_%$%hd204226204246%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204225204243%_)))
                              (_%$%tl204227204248%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204225204243%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl204227204248%_))
                              (let ((_%$%e204228204251%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl204227204248%_))))
                                (let ((_%$%hd204229204254%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e204228204251%_)))
                                      (_%$%tl204230204256%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e204228204251%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl204230204256%_))
                                      (let ((_%$%e204231204259%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl204230204256%_))))
                                        (let ((_%$%hd204232204262%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e204231204259%_)))
                                              (_%$%tl204233204264%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e204231204259%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl204233204264%_))
                                              (let ((__tmp204889
                                                     (lambda ()
                                                       (gxc#compile-e__1
                                                        _%self204218%_
                                                        _%$%hd204232204262%_)))
                                                    (__tmp204887
                                                     (let ((__tmp204888
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#current-expander-phi))))
                                                       (declare (not safe))
                                                       (##fx+ __tmp204888
                                                              '1))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp204889
                                                 gx#current-expander-phi
                                                 __tmp204887))
                                              (_%$%g204221204238%_
                                               _%$%g204222204241%_))))
                                      (_%$%g204221204238%_
                                       _%$%g204222204241%_))))
                              (_%$%g204221204238%_ _%$%g204222204241%_))))
                      (_%$%g204221204238%_ _%$%g204222204241%_)))))
          (_%$%g204220204284%_ _%stx204219%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self204150%_ _%stx204151%_)
        (let* ((_%$%g204153204170%_
                (lambda (_%$%g204154204167%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204154204167%_))))
               (_%$%g204152204215%_
                (lambda (_%$%g204154204173%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204154204173%_))
                      (let ((_%$%e204157204175%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204154204173%_))))
                        (let ((_%$%hd204158204178%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204157204175%_)))
                              (_%$%tl204159204180%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204157204175%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl204159204180%_))
                              (let ((_%$%e204160204183%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl204159204180%_))))
                                (let ((_%$%hd204161204186%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e204160204183%_)))
                                      (_%$%tl204162204188%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e204160204183%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl204162204188%_))
                                      (let ((_%$%e204163204191%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl204162204188%_))))
                                        (let ((_%$%hd204164204194%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e204163204191%_)))
                                              (_%$%tl204165204196%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e204163204191%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl204165204196%_))
                                              (gxc#compile-e__1
                                               _%self204150%_
                                               _%$%hd204164204194%_)
                                              (_%$%g204153204170%_
                                               _%$%g204154204173%_))))
                                      (_%$%g204153204170%_
                                       _%$%g204154204173%_))))
                              (_%$%g204153204170%_ _%$%g204154204173%_))))
                      (_%$%g204153204170%_ _%$%g204154204173%_)))))
          (_%$%g204152204215%_ _%stx204151%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self204036%_ _%stx204037%_)
        (let* ((_%$%g204039204067%_
                (lambda (_%$%g204040204064%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204040204064%_))))
               (_%$%g204038204147%_
                (lambda (_%$%g204040204070%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204040204070%_))
                      (let ((_%$%e204043204072%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204040204070%_))))
                        (let ((_%$%hd204044204075%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204043204072%_)))
                              (_%$%tl204045204077%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204043204072%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl204045204077%_))
                              (let ((_g204890_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl204045204077%_
                                        '0))))
                                (begin
                                  (let ((_g204891_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g204890_)
                                               (##values-length _g204890_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g204891_ 2)))
                                        (error "Context expects 2 values"
                                               _g204891_)))
                                  (let ((_%$%target204046204080%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g204890_ 0)))
                                        (_%$%tl204048204082%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g204890_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl204048204082%_))
                                        (letrec ((_%$%loop204049204085%_
                                                  (lambda (_%$%hd204047204088%_
                                                           _%$%body204053204090%_
                                                           _%$%hd204054204091%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd204047204088%_))
                                                        (let ((_%$%e204050204093%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd204047204088%_))))
                  (let ((_%$%lp-hd204051204096%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e204050204093%_)))
                        (_%$%lp-tl204052204098%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e204050204093%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd204051204096%_))
                        (let ((_%$%e204057204101%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%lp-hd204051204096%_))))
                          (let ((_%$%hd204058204104%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e204057204101%_)))
                                (_%$%tl204059204106%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e204057204101%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl204059204106%_))
                                (let ((_%$%e204060204109%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl204059204106%_))))
                                  (let ((_%$%hd204061204112%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e204060204109%_)))
                                        (_%$%tl204062204114%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e204060204109%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl204062204114%_))
                                        (_%$%loop204049204085%_
                                         _%$%lp-tl204052204098%_
                                         (cons _%$%hd204061204112%_
                                               _%$%body204053204090%_)
                                         (cons _%$%hd204058204104%_
                                               _%$%hd204054204091%_))
                                        (_%$%g204039204067%_
                                         _%$%g204040204070%_))))
                                (_%$%g204039204067%_ _%$%g204040204070%_))))
                        (_%$%g204039204067%_ _%$%g204040204070%_))))
                (let ((_%$%body204055204117%_ (reverse _%$%body204053204090%_))
                      (_%$%hd204056204118%_ (reverse _%$%hd204054204091%_)))
                  (for-each
                   (lambda (_%$%g204135204137%_)
                     (gxc#compile-e__1 _%self204036%_ _%$%g204135204137%_))
                   (let ((__tmp204892
                          (lambda (_%$%g204139204142%_ _%$%g204140204144%_)
                            (cons _%$%g204139204142%_ _%$%g204140204144%_))))
                     (declare (not safe))
                     (foldr__0 __tmp204892 '() _%$%body204055204117%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop204049204085%_
                                           _%$%target204046204080%_
                                           '()
                                           '()))
                                        (_%$%g204039204067%_
                                         _%$%g204040204070%_)))))
                              (_%$%g204039204067%_ _%$%g204040204070%_))))
                      (_%$%g204039204067%_ _%$%g204040204070%_)))))
          (_%$%g204038204147%_ _%stx204037%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self203893%_ _%stx203894%_)
        (let* ((_%$%g203896203931%_
                (lambda (_%$%g203897203928%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203897203928%_))))
               (_%$%g203895204033%_
                (lambda (_%$%g203897203934%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203897203934%_))
                      (let ((_%$%e203901203936%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203897203934%_))))
                        (let ((_%$%hd203902203939%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203901203936%_)))
                              (_%$%tl203903203941%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203901203936%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203903203941%_))
                              (let ((_%$%e203904203944%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203903203941%_))))
                                (let ((_%$%hd203905203947%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203904203944%_)))
                                      (_%$%tl203906203949%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203904203944%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd203905203947%_))
                                      (let ((_g204893_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%hd203905203947%_
                                                '0))))
                                        (begin
                                          (let ((_g204894_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g204893_)
                                                       (##values-length
                                                        _g204893_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g204894_ 2)))
                                                (error "Context expects 2 values"
                                                       _g204894_)))
                                          (let ((_%$%target203907203952%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g204893_ 0)))
                                                (_%$%tl203909203954%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g204893_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl203909203954%_))
                                                (letrec ((_%$%loop203910203957%_
                                                          (lambda (_%$%hd203908203960%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr203914203962%_
                           _%$%hd203915203963%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd203908203960%_))
                        (let ((_%$%e203911203965%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd203908203960%_))))
                          (let ((_%$%lp-hd203912203968%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e203911203965%_)))
                                (_%$%lp-tl203913203970%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e203911203965%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd203912203968%_))
                                (let ((_%$%e203918203973%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%lp-hd203912203968%_))))
                                  (let ((_%$%hd203919203976%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e203918203973%_)))
                                        (_%$%tl203920203978%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e203918203973%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl203920203978%_))
                                        (let ((_%$%e203921203981%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl203920203978%_))))
                                          (let ((_%$%hd203922203984%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e203921203981%_)))
                                                (_%$%tl203923203986%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e203921203981%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl203923203986%_))
                                                (_%$%loop203910203957%_
                                                 _%$%lp-tl203913203970%_
                                                 (cons _%$%hd203922203984%_
                                                       _%$%expr203914203962%_)
                                                 (cons _%$%hd203919203976%_
                                                       _%$%hd203915203963%_))
                                                (_%$%g203896203931%_
                                                 _%$%g203897203934%_))))
                                        (_%$%g203896203931%_
                                         _%$%g203897203934%_))))
                                (_%$%g203896203931%_ _%$%g203897203934%_))))
                        (let ((_%$%expr203916203989%_
                               (reverse _%$%expr203914203962%_))
                              (_%$%hd203917203990%_
                               (reverse _%$%hd203915203963%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203906203949%_))
                              (let ((_%$%e203924203992%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203906203949%_))))
                                (let ((_%$%hd203925203995%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203924203992%_)))
                                      (_%$%tl203926203997%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203924203992%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl203926203997%_))
                                      (for-each
                                       (lambda (_%$%g204021204023%_)
                                         (gxc#compile-e__1
                                          _%self203893%_
                                          _%$%g204021204023%_))
                                       (let ((__tmp204896
                                              (lambda (_%$%g204025204028%_
                                                       _%$%g204026204030%_)
                                                (cons _%$%g204025204028%_
                                                      _%$%g204026204030%_)))
                                             (__tmp204895
                                              (cons _%$%hd203925203995%_ '())))
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp204896
                                          __tmp204895
                                          _%$%expr203916203989%_)))
                                      (_%$%g203896203931%_
                                       _%$%g203897203934%_))))
                              (_%$%g203896203931%_ _%$%g203897203934%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop203910203957%_
                                                   _%$%target203907203952%_
                                                   '()
                                                   '()))
                                                (_%$%g203896203931%_
                                                 _%$%g203897203934%_)))))
                                      (_%$%g203896203931%_
                                       _%$%g203897203934%_))))
                              (_%$%g203896203931%_ _%$%g203897203934%_))))
                      (_%$%g203896203931%_ _%$%g203897203934%_)))))
          (_%$%g203895204033%_ _%stx203894%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self203838%_ _%stx203839%_)
        (let* ((_%$%g203841203855%_
                (lambda (_%$%g203842203852%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203842203852%_))))
               (_%$%g203840203890%_
                (lambda (_%$%g203842203858%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203842203858%_))
                      (let ((_%$%e203845203860%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203842203858%_))))
                        (let ((_%$%hd203846203863%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203845203860%_)))
                              (_%$%tl203847203865%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203845203860%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203847203865%_))
                              (let ((_%$%e203848203868%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203847203865%_))))
                                (let ((_%$%hd203849203871%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203848203868%_)))
                                      (_%$%tl203850203873%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203848203868%_))))
                                  (gxc#compile-e__1
                                   _%self203838%_
                                   (last _%$%tl203850203873%_))))
                              (_%$%g203841203855%_ _%$%g203842203858%_))))
                      (_%$%g203841203855%_ _%$%g203842203858%_)))))
          (_%$%g203840203890%_ _%stx203839%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self203770%_ _%stx203771%_)
        (let* ((_%$%g203773203790%_
                (lambda (_%$%g203774203787%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203774203787%_))))
               (_%$%g203772203835%_
                (lambda (_%$%g203774203793%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203774203793%_))
                      (let ((_%$%e203777203795%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203774203793%_))))
                        (let ((_%$%hd203778203798%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203777203795%_)))
                              (_%$%tl203779203800%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203777203795%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203779203800%_))
                              (let ((_%$%e203780203803%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203779203800%_))))
                                (let ((_%$%hd203781203806%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203780203803%_)))
                                      (_%$%tl203782203808%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203780203803%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl203782203808%_))
                                      (let ((_%$%e203783203811%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl203782203808%_))))
                                        (let ((_%$%hd203784203814%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e203783203811%_)))
                                              (_%$%tl203785203816%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e203783203811%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl203785203816%_))
                                              (gxc#compile-e__1
                                               _%self203770%_
                                               _%$%hd203784203814%_)
                                              (_%$%g203773203790%_
                                               _%$%g203774203793%_))))
                                      (_%$%g203773203790%_
                                       _%$%g203774203793%_))))
                              (_%$%g203773203790%_ _%$%g203774203793%_))))
                      (_%$%g203773203790%_ _%$%g203774203793%_)))))
          (_%$%g203772203835%_ _%stx203771%_))))
    (define gxc#apply-operands
      (lambda (_%self203685%_ _%stx203686%_)
        (let* ((_%$%g203688203707%_
                (lambda (_%$%g203689203704%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203689203704%_))))
               (_%$%g203687203767%_
                (lambda (_%$%g203689203710%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203689203710%_))
                      (let ((_%$%e203691203712%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203689203710%_))))
                        (let ((_%$%hd203692203715%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203691203712%_)))
                              (_%$%tl203693203717%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203691203712%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl203693203717%_))
                              (let ((_g204897_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl203693203717%_
                                        '0))))
                                (begin
                                  (let ((_g204898_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g204897_)
                                               (##values-length _g204897_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g204898_ 2)))
                                        (error "Context expects 2 values"
                                               _g204898_)))
                                  (let ((_%$%target203694203720%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g204897_ 0)))
                                        (_%$%tl203696203722%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g204897_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl203696203722%_))
                                        (letrec ((_%$%loop203697203725%_
                                                  (lambda (_%$%hd203695203728%_
                                                           _%$%rands203701203730%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd203695203728%_))
                                                        (let ((_%$%e203698203732%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd203695203728%_))))
                  (let ((_%$%lp-hd203699203735%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e203698203732%_)))
                        (_%$%lp-tl203700203737%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e203698203732%_))))
                    (_%$%loop203697203725%_
                     _%$%lp-tl203700203737%_
                     (cons _%$%lp-hd203699203735%_ _%$%rands203701203730%_))))
                (let ((_%$%rands203702203740%_
                       (reverse _%$%rands203701203730%_)))
                  (for-each
                   (lambda (_%$%g203755203757%_)
                     (gxc#compile-e__1 _%self203685%_ _%$%g203755203757%_))
                   (let ((__tmp204899
                          (lambda (_%$%g203759203762%_ _%$%g203760203764%_)
                            (cons _%$%g203759203762%_ _%$%g203760203764%_))))
                     (declare (not safe))
                     (foldr__0 __tmp204899 '() _%$%rands203702203740%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop203697203725%_
                                           _%$%target203694203720%_
                                           '()))
                                        (_%$%g203688203707%_
                                         _%$%g203689203710%_)))))
                              (_%$%g203688203707%_ _%$%g203689203710%_))))
                      (_%$%g203688203707%_ _%$%g203689203710%_)))))
          (_%$%g203687203767%_ _%stx203686%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx203682%_ _%src-stx203683%_)
        (let ((__tmp204900
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx203683%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx203682%_ __tmp204900))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx203678%_ _%src-stx203679%_ _%ctx203680%_)
        (gxc#compile-e__1
         _%ctx203680%_
         (gxc#xform-wrap-source _%stx203678%_ _%src-stx203679%_))))
    (define gxc#xform-begin%
      (lambda (_%self203633%_ _%stx203634%_)
        (let* ((_%$%g203636203646%_
                (lambda (_%$%g203637203643%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203637203643%_))))
               (_%$%g203635203675%_
                (lambda (_%$%g203637203649%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203637203649%_))
                      (let ((_%$%e203639203651%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203637203649%_))))
                        (let ((_%$%hd203640203654%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203639203651%_)))
                              (_%$%tl203641203656%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203639203651%_))))
                          (let ((_%forms203673%_
                                 (map (lambda (_%$%g203668203670%_)
                                        (gxc#compile-e__1
                                         _%self203633%_
                                         _%$%g203668203670%_))
                                      _%$%tl203641203656%_)))
                            (gxc#xform-wrap-source
                             (cons '%#begin _%forms203673%_)
                             _%stx203634%_))))
                      (_%$%g203636203646%_ _%$%g203637203649%_)))))
          (_%$%g203635203675%_ _%stx203634%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self203587%_ _%stx203588%_)
        (let* ((_%$%g203590203600%_
                (lambda (_%$%g203591203597%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203591203597%_))))
               (_%$%g203589203630%_
                (lambda (_%$%g203591203603%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203591203603%_))
                      (let ((_%$%e203593203605%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203591203603%_))))
                        (let ((_%$%hd203594203608%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203593203605%_)))
                              (_%$%tl203595203610%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203593203605%_))))
                          (let ((__tmp204903
                                 (lambda ()
                                   (let ((_%forms203628%_
                                          (map (lambda (_%$%g203623203625%_)
                                                 (gxc#compile-e__1
                                                  _%self203587%_
                                                  _%$%g203623203625%_))
                                               _%$%tl203595203610%_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#begin-syntax _%forms203628%_)
                                      _%stx203588%_))))
                                (__tmp204901
                                 (let ((__tmp204902
                                        (let ()
                                          (declare (not safe))
                                          (gx#current-expander-phi))))
                                   (declare (not safe))
                                   (##fx+ __tmp204902 '1))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp204903
                             gx#current-expander-phi
                             __tmp204901))))
                      (_%$%g203590203600%_ _%$%g203591203603%_)))))
          (_%$%g203589203630%_ _%stx203588%_))))
    (define gxc#xform-module%
      (lambda (_%self203524%_ _%stx203525%_)
        (let* ((_%$%g203527203541%_
                (lambda (_%$%g203528203538%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203528203538%_))))
               (_%$%g203526203584%_
                (lambda (_%$%g203528203544%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203528203544%_))
                      (let ((_%$%e203531203546%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203528203544%_))))
                        (let ((_%$%hd203532203549%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203531203546%_)))
                              (_%$%tl203533203551%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203531203546%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203533203551%_))
                              (let ((_%$%e203534203554%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203533203551%_))))
                                (let ((_%$%hd203535203557%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203534203554%_)))
                                      (_%$%tl203536203559%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203534203554%_))))
                                  (let* ((_%ctx203576%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-local-e__0
                                             _%$%hd203535203557%_)))
                                         (_%code203578%_
                                          (##structure-ref
                                           _%ctx203576%_
                                           '11
                                           gx#module-context::t
                                           '#f))
                                         (_%code203581%_
                                          (let ((__tmp204904
                                                 (lambda ()
                                                   (gxc#compile-e__1
                                                    _%self203524%_
                                                    _%code203578%_))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp204904
                                             gx#current-expander-context
                                             _%ctx203576%_))))
                                    (##structure-set!
                                     _%ctx203576%_
                                     _%code203581%_
                                     '11
                                     gx#module-context::t
                                     '#f)
                                    (gxc#xform-wrap-source
                                     (cons '%#module
                                           (cons _%$%hd203535203557%_
                                                 (cons _%code203581%_ '())))
                                     _%stx203525%_))))
                              (_%$%g203527203541%_ _%$%g203528203544%_))))
                      (_%$%g203527203541%_ _%$%g203528203544%_)))))
          (_%$%g203526203584%_ _%stx203525%_))))
    (define gxc#xform-define-values%
      (lambda (_%self203454%_ _%stx203455%_)
        (let* ((_%$%g203457203474%_
                (lambda (_%$%g203458203471%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203458203471%_))))
               (_%$%g203456203521%_
                (lambda (_%$%g203458203477%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203458203477%_))
                      (let ((_%$%e203461203479%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203458203477%_))))
                        (let ((_%$%hd203462203482%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203461203479%_)))
                              (_%$%tl203463203484%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203461203479%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203463203484%_))
                              (let ((_%$%e203464203487%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203463203484%_))))
                                (let ((_%$%hd203465203490%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203464203487%_)))
                                      (_%$%tl203466203492%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203464203487%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl203466203492%_))
                                      (let ((_%$%e203467203495%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl203466203492%_))))
                                        (let ((_%$%hd203468203498%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e203467203495%_)))
                                              (_%$%tl203469203500%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e203467203495%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl203469203500%_))
                                              (let ((_%expr203519%_
                                                     (gxc#compile-e__1
                                                      _%self203454%_
                                                      _%$%hd203468203498%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#define-values
                                                       (cons _%$%hd203465203490%_
                                                             (cons _%expr203519%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%stx203455%_))
                                              (_%$%g203457203474%_
                                               _%$%g203458203477%_))))
                                      (_%$%g203457203474%_
                                       _%$%g203458203477%_))))
                              (_%$%g203457203474%_ _%$%g203458203477%_))))
                      (_%$%g203457203474%_ _%$%g203458203477%_)))))
          (_%$%g203456203521%_ _%stx203455%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self203383%_ _%stx203384%_)
        (let* ((_%$%g203386203403%_
                (lambda (_%$%g203387203400%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203387203400%_))))
               (_%$%g203385203451%_
                (lambda (_%$%g203387203406%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203387203406%_))
                      (let ((_%$%e203390203408%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203387203406%_))))
                        (let ((_%$%hd203391203411%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203390203408%_)))
                              (_%$%tl203392203413%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203390203408%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203392203413%_))
                              (let ((_%$%e203393203416%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203392203413%_))))
                                (let ((_%$%hd203394203419%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203393203416%_)))
                                      (_%$%tl203395203421%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203393203416%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl203395203421%_))
                                      (let ((_%$%e203396203424%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl203395203421%_))))
                                        (let ((_%$%hd203397203427%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e203396203424%_)))
                                              (_%$%tl203398203429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e203396203424%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl203398203429%_))
                                              (let ((__tmp204907
                                                     (lambda ()
                                                       (let ((_%expr203449%_
                                                              (gxc#compile-e__1
                                                               _%self203383%_
                                                               _%$%hd203397203427%_)))
                                                         (gxc#xform-wrap-source
                                                          (cons '%#define-syntax
                                                                (cons _%$%hd203394203419%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%expr203449%_ '())))
                  _%stx203384%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp204905
                                                     (let ((__tmp204906
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#current-expander-phi))))
                                                       (declare (not safe))
                                                       (##fx+ __tmp204906
                                                              '1))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp204907
                                                 gx#current-expander-phi
                                                 __tmp204905))
                                              (_%$%g203386203403%_
                                               _%$%g203387203406%_))))
                                      (_%$%g203386203403%_
                                       _%$%g203387203406%_))))
                              (_%$%g203386203403%_ _%$%g203387203406%_))))
                      (_%$%g203386203403%_ _%$%g203387203406%_)))))
          (_%$%g203385203451%_ _%stx203384%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self203313%_ _%stx203314%_)
        (let* ((_%$%g203316203333%_
                (lambda (_%$%g203317203330%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203317203330%_))))
               (_%$%g203315203380%_
                (lambda (_%$%g203317203336%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203317203336%_))
                      (let ((_%$%e203320203338%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203317203336%_))))
                        (let ((_%$%hd203321203341%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203320203338%_)))
                              (_%$%tl203322203343%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203320203338%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203322203343%_))
                              (let ((_%$%e203323203346%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203322203343%_))))
                                (let ((_%$%hd203324203349%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203323203346%_)))
                                      (_%$%tl203325203351%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203323203346%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl203325203351%_))
                                      (let ((_%$%e203326203354%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl203325203351%_))))
                                        (let ((_%$%hd203327203357%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e203326203354%_)))
                                              (_%$%tl203328203359%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e203326203354%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl203328203359%_))
                                              (let ((_%expr203378%_
                                                     (gxc#compile-e__1
                                                      _%self203313%_
                                                      _%$%hd203327203357%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#begin-annotation
                                                       (cons _%$%hd203324203349%_
                                                             (cons _%expr203378%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%stx203314%_))
                                              (_%$%g203316203333%_
                                               _%$%g203317203336%_))))
                                      (_%$%g203316203333%_
                                       _%$%g203317203336%_))))
                              (_%$%g203316203333%_ _%$%g203317203336%_))))
                      (_%$%g203316203333%_ _%$%g203317203336%_)))))
          (_%$%g203315203380%_ _%stx203314%_))))
    (define gxc#xform-lambda%
      (lambda (_%self203251%_ _%stx203252%_)
        (let* ((_%$%g203254203268%_
                (lambda (_%$%g203255203265%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203255203265%_))))
               (_%$%g203253203310%_
                (lambda (_%$%g203255203271%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203255203271%_))
                      (let ((_%$%e203258203273%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203255203271%_))))
                        (let ((_%$%hd203259203276%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203258203273%_)))
                              (_%$%tl203260203278%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203258203273%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203260203278%_))
                              (let ((_%$%e203261203281%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203260203278%_))))
                                (let ((_%$%hd203262203284%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203261203281%_)))
                                      (_%$%tl203263203286%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203261203281%_))))
                                  (let ((__tmp204909
                                         (lambda ()
                                           (let ((_%body203308%_
                                                  (map (lambda (_%$%g203303203305%_)
                                                         (gxc#compile-e__1
                                                          _%self203251%_
                                                          _%$%g203303203305%_))
                                                       _%$%tl203263203286%_)))
                                             (gxc#xform-wrap-source
                                              (cons '%#lambda
                                                    (cons _%$%hd203262203284%_
                                                          _%body203308%_))
                                              _%stx203252%_))))
                                        (__tmp204908
                                         (gxc#xform-let-locals
                                          _%$%hd203262203284%_)))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp204909
                                     gxc#current-compile-local-env
                                     __tmp204908))))
                              (_%$%g203254203268%_ _%$%g203255203271%_))))
                      (_%$%g203254203268%_ _%$%g203255203271%_)))))
          (_%$%g203253203310%_ _%stx203252%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self203159%_ _%stx203160%_)
        (letrec ((_%clause-e203162%_
                  (lambda (_%clause203203%_)
                    (let* ((_%$%g203205203216%_
                            (lambda (_%$%g203206203213%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g203206203213%_))))
                           (_%$%g203204203248%_
                            (lambda (_%$%g203206203219%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%g203206203219%_))
                                  (let ((_%$%e203209203221%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%g203206203219%_))))
                                    (let ((_%$%hd203210203224%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e203209203221%_)))
                                          (_%$%tl203211203226%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e203209203221%_))))
                                      (let ((__tmp204911
                                             (lambda ()
                                               (let ((_%body203246%_
                                                      (map (lambda (_%$%g203241203243%_)
                                                             (gxc#compile-e__1
                                                              _%self203159%_
                                                              _%$%g203241203243%_))
                                                           _%$%tl203211203226%_)))
                                                 (cons _%$%hd203210203224%_
                                                       _%body203246%_))))
                                            (__tmp204910
                                             (gxc#xform-let-locals
                                              _%$%hd203210203224%_)))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp204911
                                         gxc#current-compile-local-env
                                         __tmp204910))))
                                  (_%$%g203205203216%_ _%$%g203206203219%_)))))
                      (_%$%g203204203248%_ _%clause203203%_)))))
          (let* ((_%$%g203164203174%_
                  (lambda (_%$%g203165203171%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g203165203171%_))))
                 (_%$%g203163203200%_
                  (lambda (_%$%g203165203177%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g203165203177%_))
                        (let ((_%$%e203167203179%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g203165203177%_))))
                          (let ((_%$%hd203168203182%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e203167203179%_)))
                                (_%$%tl203169203184%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e203167203179%_))))
                            (let ((_%clauses203198%_
                                   (map _%clause-e203162%_
                                        _%$%tl203169203184%_)))
                              (gxc#xform-wrap-source
                               (cons '%#case-lambda _%clauses203198%_)
                               _%stx203160%_))))
                        (_%$%g203164203174%_ _%$%g203165203177%_)))))
            (_%$%g203163203200%_ _%stx203160%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self202919%_ _%stx202920%_)
        (let* ((_%$%g202922202955%_
                (lambda (_%$%g202923202952%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202923202952%_))))
               (_%$%g202921203156%_
                (lambda (_%$%g202923202958%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202923202958%_))
                      (let ((_%$%e202928202960%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g202923202958%_))))
                        (let ((_%$%hd202929202963%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202928202960%_)))
                              (_%$%tl202930202965%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202928202960%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl202930202965%_))
                              (let ((_%$%e202931202968%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl202930202965%_))))
                                (let ((_%$%hd202932202971%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e202931202968%_)))
                                      (_%$%tl202933202973%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e202931202968%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd202932202971%_))
                                      (let ((_g204912_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%hd202932202971%_
                                                '0))))
                                        (begin
                                          (let ((_g204913_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g204912_)
                                                       (##values-length
                                                        _g204912_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g204913_ 2)))
                                                (error "Context expects 2 values"
                                                       _g204913_)))
                                          (let ((_%$%target202934202976%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g204912_ 0)))
                                                (_%$%tl202936202978%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g204912_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl202936202978%_))
                                                (letrec ((_%$%loop202937202981%_
                                                          (lambda (_%$%hd202935202984%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr202941202986%_
                           _%$%hd202942202987%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd202935202984%_))
                        (let ((_%$%e202938202989%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd202935202984%_))))
                          (let ((_%$%lp-hd202939202992%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e202938202989%_)))
                                (_%$%lp-tl202940202994%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e202938202989%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd202939202992%_))
                                (let ((_%$%e202945202997%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%lp-hd202939202992%_))))
                                  (let ((_%$%hd202946203000%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e202945202997%_)))
                                        (_%$%tl202947203002%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e202945202997%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl202947203002%_))
                                        (let ((_%$%e202948203005%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl202947203002%_))))
                                          (let ((_%$%hd202949203008%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e202948203005%_)))
                                                (_%$%tl202950203010%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e202948203005%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl202950203010%_))
                                                (_%$%loop202937202981%_
                                                 _%$%lp-tl202940202994%_
                                                 (cons _%$%hd202949203008%_
                                                       _%$%expr202941202986%_)
                                                 (cons _%$%hd202946203000%_
                                                       _%$%hd202942202987%_))
                                                (_%$%g202922202955%_
                                                 _%$%g202923202958%_))))
                                        (_%$%g202922202955%_
                                         _%$%g202923202958%_))))
                                (_%$%g202922202955%_ _%$%g202923202958%_))))
                        (let ((_%$%expr202943203013%_
                               (reverse _%$%expr202941202986%_))
                              (_%$%hd202944203014%_
                               (reverse _%$%hd202942202987%_)))
                          (let* ((_%$%g203038203054%_
                                  (lambda (_%$%g203039203051%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%$%g203039203051%_))))
                                 (_%$%g203037203142%_
                                  (lambda (_%$%g203039203057%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%g203039203057%_))
                                        (let ((_g204914_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%$%g203039203057%_
                                                  '0))))
                                          (begin
                                            (let ((_g204915_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g204914_)
                                                         (##values-length
                                                          _g204914_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g204915_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g204915_)))
                                            (let ((_%$%target203041203059%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g204914_
                                                      0)))
                                                  (_%$%tl203043203061%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g204914_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl203043203061%_))
                                                  (letrec ((_%$%loop203044203064%_
                                                            (lambda (_%$%hd203042203067%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%expr203048203069%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd203042203067%_))
                          (let ((_%$%e203045203071%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%hd203042203067%_))))
                            (let ((_%$%lp-hd203046203074%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e203045203071%_)))
                                  (_%$%lp-tl203047203076%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e203045203071%_))))
                              (_%$%loop203044203064%_
                               _%$%lp-tl203047203076%_
                               (cons _%$%lp-hd203046203074%_
                                     _%$%expr203048203069%_))))
                          (let ((_%$%expr203049203079%_
                                 (reverse _%$%expr203048203069%_)))
                            (let ((__tmp204918
                                   (lambda ()
                                     (let* ((_%$%g203095203102%_
                                             (lambda (_%$%g203096203099%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%$%g203096203099%_))))
                                            (_%$%g203094203128%_
                                             (lambda (_%$%g203096203105%_)
                                               (gxc#xform-wrap-source
                                                (cons _%$%hd202929202963%_
                                                      (cons (begin
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-check-splice-targets
                         _%$%expr203049203079%_
                         _%$%hd202944203014%_))
                      (let ((__tmp204919
                             (lambda (_%$%g203117203121%_
                                      _%$%g203118203123%_
                                      _%$%g203119203125%_)
                               (cons (cons _%$%g203118203123%_
                                           (cons _%$%g203117203121%_ '()))
                                     _%$%g203119203125%_))))
                        (declare (not safe))
                        (foldr__1
                         __tmp204919
                         '()
                         _%$%expr203049203079%_
                         _%$%hd202944203014%_)))
                    _%$%g203096203105%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%stx202920%_))))
                                       (_%$%g203094203128%_
                                        (map (lambda (_%$%g203130203132%_)
                                               (gxc#compile-e__1
                                                _%self202919%_
                                                _%$%g203130203132%_))
                                             _%$%tl202933202973%_)))))
                                  (__tmp204916
                                   (gxc#xform-let-locals
                                    (let ((__tmp204917
                                           (lambda (_%$%g203134203137%_
                                                    _%$%g203135203139%_)
                                             (cons _%$%g203134203137%_
                                                   _%$%g203135203139%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp204917
                                       '()
                                       _%$%hd202944203014%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp204918
                               gxc#current-compile-local-env
                               __tmp204916)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%loop203044203064%_
                                                     _%$%target203041203059%_
                                                     '()))
                                                  (_%$%g203038203054%_
                                                   _%$%g203039203057%_)))))
                                        (_%$%g203038203054%_
                                         _%$%g203039203057%_)))))
                            (_%$%g203037203142%_
                             (map (lambda (_%$%g203144203146%_)
                                    (gxc#compile-e__1
                                     _%self202919%_
                                     _%$%g203144203146%_))
                                  (let ((__tmp204920
                                         (lambda (_%$%g203148203151%_
                                                  _%$%g203149203153%_)
                                           (cons _%$%g203148203151%_
                                                 _%$%g203149203153%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp204920
                                     '()
                                     _%$%expr202943203013%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop202937202981%_
                                                   _%$%target202934202976%_
                                                   '()
                                                   '()))
                                                (_%$%g202922202955%_
                                                 _%$%g202923202958%_)))))
                                      (_%$%g202922202955%_
                                       _%$%g202923202958%_))))
                              (_%$%g202922202955%_ _%$%g202923202958%_))))
                      (_%$%g202922202955%_ _%$%g202923202958%_)))))
          (_%$%g202921203156%_ _%stx202920%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self202679%_ _%stx202680%_)
        (let* ((_%$%g202682202715%_
                (lambda (_%$%g202683202712%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202683202712%_))))
               (_%$%g202681202916%_
                (lambda (_%$%g202683202718%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202683202718%_))
                      (let ((_%$%e202688202720%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g202683202718%_))))
                        (let ((_%$%hd202689202723%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202688202720%_)))
                              (_%$%tl202690202725%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202688202720%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl202690202725%_))
                              (let ((_%$%e202691202728%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl202690202725%_))))
                                (let ((_%$%hd202692202731%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e202691202728%_)))
                                      (_%$%tl202693202733%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e202691202728%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd202692202731%_))
                                      (let ((_g204921_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%hd202692202731%_
                                                '0))))
                                        (begin
                                          (let ((_g204922_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g204921_)
                                                       (##values-length
                                                        _g204921_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g204922_ 2)))
                                                (error "Context expects 2 values"
                                                       _g204922_)))
                                          (let ((_%$%target202694202736%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g204921_ 0)))
                                                (_%$%tl202696202738%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g204921_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl202696202738%_))
                                                (letrec ((_%$%loop202697202741%_
                                                          (lambda (_%$%hd202695202744%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr202701202746%_
                           _%$%hd202702202747%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd202695202744%_))
                        (let ((_%$%e202698202749%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd202695202744%_))))
                          (let ((_%$%lp-hd202699202752%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e202698202749%_)))
                                (_%$%lp-tl202700202754%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e202698202749%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd202699202752%_))
                                (let ((_%$%e202705202757%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%lp-hd202699202752%_))))
                                  (let ((_%$%hd202706202760%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e202705202757%_)))
                                        (_%$%tl202707202762%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e202705202757%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl202707202762%_))
                                        (let ((_%$%e202708202765%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl202707202762%_))))
                                          (let ((_%$%hd202709202768%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e202708202765%_)))
                                                (_%$%tl202710202770%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e202708202765%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl202710202770%_))
                                                (_%$%loop202697202741%_
                                                 _%$%lp-tl202700202754%_
                                                 (cons _%$%hd202709202768%_
                                                       _%$%expr202701202746%_)
                                                 (cons _%$%hd202706202760%_
                                                       _%$%hd202702202747%_))
                                                (_%$%g202682202715%_
                                                 _%$%g202683202718%_))))
                                        (_%$%g202682202715%_
                                         _%$%g202683202718%_))))
                                (_%$%g202682202715%_ _%$%g202683202718%_))))
                        (let ((_%$%expr202703202773%_
                               (reverse _%$%expr202701202746%_))
                              (_%$%hd202704202774%_
                               (reverse _%$%hd202702202747%_)))
                          (let ((__tmp204925
                                 (lambda ()
                                   (let* ((_%$%g202799202815%_
                                           (lambda (_%$%g202800202812%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%$%g202800202812%_))))
                                          (_%$%g202798202895%_
                                           (lambda (_%$%g202800202818%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair/null?
                                                    _%$%g202800202818%_))
                                                 (let ((_g204926_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-split-splice
                                                           _%$%g202800202818%_
                                                           '0))))
                                                   (begin
                                                     (let ((_g204927_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g204926_)
                          (##values-length _g204926_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g204927_ 2)))
                   (error "Context expects 2 values" _g204927_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%$%target202802202820%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g204926_
                                                               0)))
                                                           (_%$%tl202804202822%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g204926_
                                                               1))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl202804202822%_))
                                                           (letrec ((_%$%loop202805202825%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%$%hd202803202828%_
                                      _%$%expr202809202830%_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd202803202828%_))
                                   (let ((_%$%e202806202832%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e
                                             _%$%hd202803202828%_))))
                                     (let ((_%$%lp-hd202807202835%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e202806202832%_)))
                                           (_%$%lp-tl202808202837%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e202806202832%_))))
                                       (_%$%loop202805202825%_
                                        _%$%lp-tl202808202837%_
                                        (cons _%$%lp-hd202807202835%_
                                              _%$%expr202809202830%_))))
                                   (let* ((_%$%expr202810202840%_
                                           (reverse _%$%expr202809202830%_))
                                          (_%$%g202856202863%_
                                           (lambda (_%$%g202857202860%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%$%g202857202860%_))))
                                          (_%$%g202855202888%_
                                           (lambda (_%$%g202857202866%_)
                                             (gxc#xform-wrap-source
                                              (cons _%$%hd202689202723%_
                                                    (cons (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _%$%expr202810202840%_
                                                               _%$%hd202704202774%_))
                                                            (let ((__tmp204928
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%$%g202877202881%_
                                    _%$%g202878202883%_
                                    _%$%g202879202885%_)
                             (cons (cons _%$%g202878202883%_
                                         (cons _%$%g202877202881%_ '()))
                                   _%$%g202879202885%_))))
                      (declare (not safe))
                      (foldr__1
                       __tmp204928
                       '()
                       _%$%expr202810202840%_
                       _%$%hd202704202774%_)))
                  _%$%g202857202866%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%stx202680%_))))
                                     (_%$%g202855202888%_
                                      (map (lambda (_%$%g202890202892%_)
                                             (gxc#compile-e__1
                                              _%self202679%_
                                              _%$%g202890202892%_))
                                           _%$%tl202693202733%_)))))))
                     (_%$%loop202805202825%_ _%$%target202802202820%_ '()))
                   (_%$%g202799202815%_ _%$%g202800202818%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g202799202815%_
                                                  _%$%g202800202818%_)))))
                                     (_%$%g202798202895%_
                                      (map (lambda (_%$%g202897202899%_)
                                             (gxc#compile-e__1
                                              _%self202679%_
                                              _%$%g202897202899%_))
                                           (let ((__tmp204929
                                                  (lambda (_%$%g202901202904%_
                                                           _%$%g202902202906%_)
                                                    (cons _%$%g202901202904%_
                                                          _%$%g202902202906%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp204929
                                              '()
                                              _%$%expr202703202773%_)))))))
                                (__tmp204923
                                 (gxc#xform-let-locals
                                  (let ((__tmp204924
                                         (lambda (_%$%g202908202911%_
                                                  _%$%g202909202913%_)
                                           (cons _%$%g202908202911%_
                                                 _%$%g202909202913%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp204924
                                     '()
                                     _%$%hd202704202774%_)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp204925
                             gxc#current-compile-local-env
                             __tmp204923)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop202697202741%_
                                                   _%$%target202694202736%_
                                                   '()
                                                   '()))
                                                (_%$%g202682202715%_
                                                 _%$%g202683202718%_)))))
                                      (_%$%g202682202715%_
                                       _%$%g202683202718%_))))
                              (_%$%g202682202715%_ _%$%g202683202718%_))))
                      (_%$%g202682202715%_ _%$%g202683202718%_)))))
          (_%$%g202681202916%_ _%stx202680%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings202546%_)
        (letrec ((_%flatten202548%_
                  (lambda (_%maybe-lst202606%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst202606%_))
                        (cons _%maybe-lst202606%_ '())
                        (let _%loop202608%_ ((_%rest202610%_
                                              _%maybe-lst202606%_)
                                             (_%result202611%_ '()))
                          (let* ((_%__stx204815204816%_ _%rest202610%_)
                                 (_%$%g202615202627%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx204815204816%_)))))
                            (let ((_%__kont204817204818%_
                                   (lambda (_%$%g202617202665%_
                                            _%$%g202618202666%_)
                                     (_%loop202608%_
                                      _%$%g202617202665%_
                                      (let ((__tmp204930
                                             (_%flatten202548%_
                                              _%$%g202618202666%_)))
                                        (declare (not safe))
                                        (foldl__0
                                         cons
                                         _%result202611%_
                                         __tmp204930)))))
                                  (_%__kont204819204820%_
                                   (lambda (_%$%g202622202639%_)
                                     (cons _%$%g202622202639%_
                                           _%result202611%_)))
                                  (_%__kont204821204822%_
                                   (lambda () _%result202611%_)))
                              (let ((_%$%g202613202652%_
                                     (lambda ()
                                       (let ((_%$%g202622202639%_
                                              _%__stx204815204816%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%$%g202622202639%_))
                                             (_%__kont204819204820%_
                                              _%$%g202622202639%_)
                                             (_%__kont204821204822%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx204815204816%_))
                                    (let ((_%$%e202619202657%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx204815204816%_))))
                                      (let ((_%$%tl202621202662%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e202619202657%_)))
                                            (_%$%hd202620202660%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e202619202657%_))))
                                        (_%__kont204817204818%_
                                         _%$%tl202621202662%_
                                         _%$%hd202620202660%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g202613202652%_)))))))))))
          (let _%loop202550%_ ((_%rest202552%_
                                (_%flatten202548%_ _%bindings202546%_))
                               (_%locals202553%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%$%rest202554202565%_ _%rest202552%_)
                   (_%$%E202558202569%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%$%rest202554202565%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%$%K202561202594%_
                     (lambda (_%rest202591%_ _%id202592%_)
                       (_%loop202550%_
                        _%rest202591%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id202592%_))
                              _%locals202553%_))))
                    (_%$%K202560202583%_
                     (lambda (_%id202581%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id202581%_))
                             _%locals202553%_)))
                    (_%$%K202559202574%_ (lambda () _%locals202553%_)))
                (let ((_%$%try-match202556202588%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%$%rest202554202565%_))
                             (let ((_%id202586%_ _%$%rest202554202565%_))
                               (_%$%K202560202583%_ _%id202586%_))
                             (_%$%K202559202574%_)))))
                  (if (pair? _%$%rest202554202565%_)
                      (let ((_%$%tl202563202599%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%rest202554202565%_)))
                            (_%$%hd202562202597%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%rest202554202565%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%$%hd202562202597%_))
                            (let ((_%id202602%_ _%$%hd202562202597%_)
                                  (_%rest202604%_ _%$%tl202563202599%_))
                              (_%$%K202561202594%_
                               _%rest202604%_
                               _%id202602%_))
                            (_%$%K202559202574%_)))
                      (_%$%try-match202556202588%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self202498%_ _%stx202499%_)
        (let* ((_%$%g202501202512%_
                (lambda (_%$%g202502202509%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202502202509%_))))
               (_%$%g202500202543%_
                (lambda (_%$%g202502202515%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202502202515%_))
                      (let ((_%$%e202505202517%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g202502202515%_))))
                        (let ((_%$%hd202506202520%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202505202517%_)))
                              (_%$%tl202507202522%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202505202517%_))))
                          (let ((_%rands202541%_
                                 (map (lambda (_%$%g202536202538%_)
                                        (gxc#compile-e__1
                                         _%self202498%_
                                         _%$%g202536202538%_))
                                      _%$%tl202507202522%_)))
                            (gxc#xform-wrap-source
                             (cons _%$%hd202506202520%_ _%rands202541%_)
                             _%stx202499%_))))
                      (_%$%g202501202512%_ _%$%g202502202515%_)))))
          (_%$%g202500202543%_ _%stx202499%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self202428%_ _%stx202429%_)
        (let* ((_%$%g202431202448%_
                (lambda (_%$%g202432202445%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202432202445%_))))
               (_%$%g202430202495%_
                (lambda (_%$%g202432202451%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202432202451%_))
                      (let ((_%$%e202435202453%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g202432202451%_))))
                        (let ((_%$%hd202436202456%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202435202453%_)))
                              (_%$%tl202437202458%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202435202453%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl202437202458%_))
                              (let ((_%$%e202438202461%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl202437202458%_))))
                                (let ((_%$%hd202439202464%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e202438202461%_)))
                                      (_%$%tl202440202466%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e202438202461%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl202440202466%_))
                                      (let ((_%$%e202441202469%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl202440202466%_))))
                                        (let ((_%$%hd202442202472%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e202441202469%_)))
                                              (_%$%tl202443202474%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e202441202469%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl202443202474%_))
                                              (let ((_%expr202493%_
                                                     (gxc#compile-e__1
                                                      _%self202428%_
                                                      _%$%hd202442202472%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#set!
                                                       (cons _%$%hd202439202464%_
                                                             (cons _%expr202493%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%stx202429%_))
                                              (_%$%g202431202448%_
                                               _%$%g202432202451%_))))
                                      (_%$%g202431202448%_
                                       _%$%g202432202451%_))))
                              (_%$%g202431202448%_ _%$%g202432202451%_))))
                      (_%$%g202431202448%_ _%$%g202432202451%_)))))
          (_%$%g202430202495%_ _%stx202429%_))))))
