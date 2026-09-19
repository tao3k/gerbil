(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1789839226)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx206803%_)
        (if gxc#__DEBUG-COMPILE
            (let ((__tmp207025
                   (let ()
                     (declare (not safe))
                     (gx#syntax->datum _%stx206803%_))))
              (declare (not safe))
              (displayln '"@compile " __tmp207025))
            '#!void)
        (let* ((_%self206805%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e206807%_
                (let ((__tmp207026 (gxc#stx-car-e _%stx206803%_)))
                  (declare (not safe))
                  (method-ref _%self206805%_ __tmp207026))))
          (if _%$e206807%_
              (let ()
                (declare (not safe))
                (let ((_%$e206813%_ (gx#stx-source _%stx206803%_)))
                  (if _%$e206813%_
                      (call-with-parameters__1
                       (lambda () (_%$e206807%_ _%self206805%_ _%stx206803%_))
                       gxc#current-compile-context
                       (cons (list '@ _%$e206813%_)
                             (let ((_%$e206820%_
                                    (gxc#current-compile-context)))
                               (if _%$e206820%_ _%$e206820%_ '()))))
                      (_%$e206807%_ _%self206805%_ _%stx206803%_))))
              (let ((__tmp207028 (gxc#stx-car-e _%stx206803%_))
                    (__tmp207027
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx206803%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self206805%_
                       __tmp207028
                       __tmp207027))))))
    (define gxc#compile-e__1
      (lambda (_%self206825%_ _%stx206826%_)
        (if gxc#__DEBUG-COMPILE
            (let ((__tmp207029
                   (let ()
                     (declare (not safe))
                     (gx#syntax->datum _%stx206826%_))))
              (declare (not safe))
              (displayln '"@compile " __tmp207029))
            '#!void)
        (let ((_%$e206828%_
               (let ((__tmp207030 (gxc#stx-car-e _%stx206826%_)))
                 (declare (not safe))
                 (method-ref _%self206825%_ __tmp207030))))
          (if _%$e206828%_
              (let ()
                (declare (not safe))
                (let ((_%$e206834%_ (gx#stx-source _%stx206826%_)))
                  (if _%$e206834%_
                      (call-with-parameters__1
                       (lambda () (_%$e206828%_ _%self206825%_ _%stx206826%_))
                       gxc#current-compile-context
                       (cons (list '@ _%$e206834%_)
                             (let ((_%$e206841%_
                                    (gxc#current-compile-context)))
                               (if _%$e206841%_ _%$e206841%_ '()))))
                      (_%$e206828%_ _%self206825%_ _%stx206826%_))))
              (let ((__tmp207032 (gxc#stx-car-e _%stx206826%_))
                    (__tmp207031
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx206826%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self206825%_
                       __tmp207032
                       __tmp207031))))))
    (define gxc#compile-e
      (lambda _g207033_
        (let ((_g207034_ (let () (declare (not safe)) (##length _g207033_))))
          (cond ((let () (declare (not safe)) (##fx= _g207034_ 1))
                 (apply gxc#compile-e__0 _g207033_))
                ((let () (declare (not safe)) (##fx= _g207034_ 2))
                 (apply gxc#compile-e__1 _g207033_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g207033_))))))
    (define gxc#stx-car-e
      (lambda (_%stx206801%_)
        (let ((__tmp207035
               (car (let () (declare (not safe)) (gx#stx-e _%stx206801%_)))))
          (declare (not safe))
          (gx#stx-e __tmp207035))))
    (define gxc#void-method (lambda (_%self206798%_ _%stx206799%_) '#!void))
    (define gxc#false-method (lambda (_%self206795%_ _%stx206796%_) '#f))
    (define gxc#true-method (lambda (_%self206792%_ _%stx206793%_) '#t))
    (define gxc#identity-method
      (lambda (_%self206789%_ _%stx206790%_) _%stx206790%_))
    (define gxc#::void-expression::t
      (let ((__tmp207036 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp207036
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args206786%_
        (apply make-instance gxc#::void-expression::t _%$args206786%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp207037
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
        (__make-atomic-promise __tmp207037)))
    (define gxc#::void-special-form::t
      (let ((__tmp207038 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp207038
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args206782%_
        (apply make-instance gxc#::void-special-form::t _%$args206782%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp207039
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
        (__make-atomic-promise __tmp207039)))
    (define gxc#::void::t
      (let ((__tmp207040
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (make-class-type 'gxc#::void::t '::void __tmp207040 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args206778%_
        (apply make-instance gxc#::void::t _%$args206778%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp207041
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp207041)))
    (define gxc#::false-expression::t
      (let ((__tmp207042 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp207042
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args206774%_
        (apply make-instance gxc#::false-expression::t _%$args206774%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp207043
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
        (__make-atomic-promise __tmp207043)))
    (define gxc#::false-special-form::t
      (let ((__tmp207044 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp207044
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args206770%_
        (apply make-instance gxc#::false-special-form::t _%$args206770%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp207045
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
        (__make-atomic-promise __tmp207045)))
    (define gxc#::false::t
      (let ((__tmp207046
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (make-class-type 'gxc#::false::t '::false __tmp207046 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args206766%_
        (apply make-instance gxc#::false::t _%$args206766%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp207047
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp207047)))
    (define gxc#::identity-expression::t
      (let ((__tmp207048 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp207048
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args206762%_
        (apply make-instance gxc#::identity-expression::t _%$args206762%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp207049
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
        (__make-atomic-promise __tmp207049)))
    (define gxc#::identity-special-form::t
      (let ((__tmp207050 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp207050
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args206758%_
        (apply make-instance gxc#::identity-special-form::t _%$args206758%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp207051
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
        (__make-atomic-promise __tmp207051)))
    (define gxc#::identity::t
      (let ((__tmp207052
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity::t
         '::identity
         __tmp207052
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args206754%_
        (apply make-instance gxc#::identity::t _%$args206754%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp207053
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp207053)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp207054 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp207054
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args206750%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args206750%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp207055
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
        (__make-atomic-promise __tmp207055)))
    (define gxc#::basic-xform::t
      (let ((__tmp207056
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp207056
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args206746%_
        (apply make-instance gxc#::basic-xform::t _%$args206746%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp207057
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
        (__make-atomic-promise __tmp207057)))
    (define gxc#apply-begin%
      (lambda (_%self206702%_ _%stx206703%_)
        (let* ((_%$%g206705206715%_
                (lambda (_%$%g206706206712%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g206706206712%_))))
               (_%$%g206704206742%_
                (lambda (_%$%g206706206718%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g206706206718%_))
                      (let ((_%$%e206708206720%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g206706206718%_))))
                        (let ((_%$%hd206709206723%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e206708206720%_)))
                              (_%$%tl206710206725%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e206708206720%_))))
                          (for-each
                           (lambda (_%$%g206737206739%_)
                             (gxc#compile-e__1
                              _%self206702%_
                              _%$%g206737206739%_))
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl206710206725%_)))))
                      (_%$%g206705206715%_ _%$%g206706206718%_)))))
          (_%$%g206704206742%_ _%stx206703%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self206663%_ _%stx206664%_)
        (let* ((_%$%g206666206676%_
                (lambda (_%$%g206667206673%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g206667206673%_))))
               (_%$%g206665206699%_
                (lambda (_%$%g206667206679%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g206667206679%_))
                      (let ((_%$%e206669206681%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g206667206679%_))))
                        (let ((_%$%hd206670206684%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e206669206681%_)))
                              (_%$%tl206671206686%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e206669206681%_))))
                          (gxc#compile-e__1
                           _%self206663%_
                           (last _%$%tl206671206686%_))))
                      (_%$%g206666206676%_ _%$%g206667206679%_)))))
          (_%$%g206665206699%_ _%stx206664%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self206659%_ _%stx206660%_)
        (let ((__tmp207060
               (lambda () (gxc#apply-begin% _%self206659%_ _%stx206660%_)))
              (__tmp207058
               (let ((__tmp207059
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp207059 '1))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp207060
           gx#current-expander-phi
           __tmp207058))))
    (define gxc#apply-module%
      (lambda (_%self206598%_ _%stx206599%_)
        (let* ((_%$%g206601206615%_
                (lambda (_%$%g206602206612%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g206602206612%_))))
               (_%$%g206600206656%_
                (lambda (_%$%g206602206618%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g206602206618%_))
                      (let ((_%$%e206605206620%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g206602206618%_))))
                        (let ((_%$%hd206606206623%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e206605206620%_)))
                              (_%$%tl206607206625%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e206605206620%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl206607206625%_))
                              (let ((_%$%e206608206628%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl206607206625%_))))
                                (let ((_%$%hd206609206631%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e206608206628%_)))
                                      (_%$%tl206610206633%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e206608206628%_))))
                                  (let* ((_%ctx206650%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-local-e__0
                                             _%$%hd206609206631%_)))
                                         (_%ctx-stx206652%_
                                          (##structure-ref
                                           _%ctx206650%_
                                           '11
                                           gx#module-context::t
                                           '#f))
                                         (__tmp207061
                                          (lambda ()
                                            (gxc#compile-e__1
                                             _%self206598%_
                                             _%ctx-stx206652%_))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp207061
                                     gx#current-expander-context
                                     _%ctx206650%_))))
                              (_%$%g206601206615%_ _%$%g206602206618%_))))
                      (_%$%g206601206615%_ _%$%g206602206618%_)))))
          (_%$%g206600206656%_ _%stx206599%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self206530%_ _%stx206531%_)
        (let* ((_%$%g206533206550%_
                (lambda (_%$%g206534206547%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g206534206547%_))))
               (_%$%g206532206595%_
                (lambda (_%$%g206534206553%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g206534206553%_))
                      (let ((_%$%e206537206555%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g206534206553%_))))
                        (let ((_%$%hd206538206558%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e206537206555%_)))
                              (_%$%tl206539206560%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e206537206555%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl206539206560%_))
                              (let ((_%$%e206540206563%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl206539206560%_))))
                                (let ((_%$%hd206541206566%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e206540206563%_)))
                                      (_%$%tl206542206568%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e206540206563%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl206542206568%_))
                                      (let ((_%$%e206543206571%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl206542206568%_))))
                                        (let ((_%$%hd206544206574%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e206543206571%_)))
                                              (_%$%tl206545206576%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e206543206571%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl206545206576%_))
                                              (gxc#compile-e__1
                                               _%self206530%_
                                               _%$%hd206544206574%_)
                                              (_%$%g206533206550%_
                                               _%$%g206534206553%_))))
                                      (_%$%g206533206550%_
                                       _%$%g206534206553%_))))
                              (_%$%g206533206550%_ _%$%g206534206553%_))))
                      (_%$%g206533206550%_ _%$%g206534206553%_)))))
          (_%$%g206532206595%_ _%stx206531%_))))
    (define gxc#apply-define-values%
      (lambda (_%self206462%_ _%stx206463%_)
        (let* ((_%$%g206465206482%_
                (lambda (_%$%g206466206479%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g206466206479%_))))
               (_%$%g206464206527%_
                (lambda (_%$%g206466206485%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g206466206485%_))
                      (let ((_%$%e206469206487%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g206466206485%_))))
                        (let ((_%$%hd206470206490%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e206469206487%_)))
                              (_%$%tl206471206492%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e206469206487%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl206471206492%_))
                              (let ((_%$%e206472206495%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl206471206492%_))))
                                (let ((_%$%hd206473206498%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e206472206495%_)))
                                      (_%$%tl206474206500%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e206472206495%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl206474206500%_))
                                      (let ((_%$%e206475206503%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl206474206500%_))))
                                        (let ((_%$%hd206476206506%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e206475206503%_)))
                                              (_%$%tl206477206508%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e206475206503%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl206477206508%_))
                                              (gxc#compile-e__1
                                               _%self206462%_
                                               _%$%hd206476206506%_)
                                              (_%$%g206465206482%_
                                               _%$%g206466206485%_))))
                                      (_%$%g206465206482%_
                                       _%$%g206466206485%_))))
                              (_%$%g206465206482%_ _%$%g206466206485%_))))
                      (_%$%g206465206482%_ _%$%g206466206485%_)))))
          (_%$%g206464206527%_ _%stx206463%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self206393%_ _%stx206394%_)
        (let* ((_%$%g206396206413%_
                (lambda (_%$%g206397206410%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g206397206410%_))))
               (_%$%g206395206459%_
                (lambda (_%$%g206397206416%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g206397206416%_))
                      (let ((_%$%e206400206418%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g206397206416%_))))
                        (let ((_%$%hd206401206421%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e206400206418%_)))
                              (_%$%tl206402206423%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e206400206418%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl206402206423%_))
                              (let ((_%$%e206403206426%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl206402206423%_))))
                                (let ((_%$%hd206404206429%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e206403206426%_)))
                                      (_%$%tl206405206431%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e206403206426%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl206405206431%_))
                                      (let ((_%$%e206406206434%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl206405206431%_))))
                                        (let ((_%$%hd206407206437%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e206406206434%_)))
                                              (_%$%tl206408206439%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e206406206434%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl206408206439%_))
                                              (let ((__tmp207064
                                                     (lambda ()
                                                       (gxc#compile-e__1
                                                        _%self206393%_
                                                        _%$%hd206407206437%_)))
                                                    (__tmp207062
                                                     (let ((__tmp207063
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#current-expander-phi))))
                                                       (declare (not safe))
                                                       (##fx+ __tmp207063
                                                              '1))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp207064
                                                 gx#current-expander-phi
                                                 __tmp207062))
                                              (_%$%g206396206413%_
                                               _%$%g206397206416%_))))
                                      (_%$%g206396206413%_
                                       _%$%g206397206416%_))))
                              (_%$%g206396206413%_ _%$%g206397206416%_))))
                      (_%$%g206396206413%_ _%$%g206397206416%_)))))
          (_%$%g206395206459%_ _%stx206394%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self206325%_ _%stx206326%_)
        (let* ((_%$%g206328206345%_
                (lambda (_%$%g206329206342%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g206329206342%_))))
               (_%$%g206327206390%_
                (lambda (_%$%g206329206348%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g206329206348%_))
                      (let ((_%$%e206332206350%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g206329206348%_))))
                        (let ((_%$%hd206333206353%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e206332206350%_)))
                              (_%$%tl206334206355%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e206332206350%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl206334206355%_))
                              (let ((_%$%e206335206358%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl206334206355%_))))
                                (let ((_%$%hd206336206361%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e206335206358%_)))
                                      (_%$%tl206337206363%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e206335206358%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl206337206363%_))
                                      (let ((_%$%e206338206366%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl206337206363%_))))
                                        (let ((_%$%hd206339206369%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e206338206366%_)))
                                              (_%$%tl206340206371%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e206338206366%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl206340206371%_))
                                              (gxc#compile-e__1
                                               _%self206325%_
                                               _%$%hd206339206369%_)
                                              (_%$%g206328206345%_
                                               _%$%g206329206348%_))))
                                      (_%$%g206328206345%_
                                       _%$%g206329206348%_))))
                              (_%$%g206328206345%_ _%$%g206329206348%_))))
                      (_%$%g206328206345%_ _%$%g206329206348%_)))))
          (_%$%g206327206390%_ _%stx206326%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self206211%_ _%stx206212%_)
        (let* ((_%$%g206214206242%_
                (lambda (_%$%g206215206239%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g206215206239%_))))
               (_%$%g206213206322%_
                (lambda (_%$%g206215206245%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g206215206245%_))
                      (let ((_%$%e206218206247%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g206215206245%_))))
                        (let ((_%$%hd206219206250%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e206218206247%_)))
                              (_%$%tl206220206252%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e206218206247%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl206220206252%_))
                              (let ((_g207065_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl206220206252%_
                                        '0))))
                                (begin
                                  (let ((_g207066_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g207065_)
                                               (##values-length _g207065_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g207066_ 2)))
                                        (error "Context expects 2 values"
                                               _g207066_)))
                                  (let ((_%$%target206221206255%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g207065_ 0)))
                                        (_%$%tl206223206257%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g207065_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl206223206257%_))
                                        (letrec ((_%$%loop206224206260%_
                                                  (lambda (_%$%hd206222206263%_
                                                           _%$%body206228206265%_
                                                           _%$%hd206229206266%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd206222206263%_))
                                                        (let ((_%$%e206225206268%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd206222206263%_))))
                  (let ((_%$%lp-hd206226206271%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e206225206268%_)))
                        (_%$%lp-tl206227206273%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e206225206268%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd206226206271%_))
                        (let ((_%$%e206232206276%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%lp-hd206226206271%_))))
                          (let ((_%$%hd206233206279%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e206232206276%_)))
                                (_%$%tl206234206281%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e206232206276%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl206234206281%_))
                                (let ((_%$%e206235206284%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl206234206281%_))))
                                  (let ((_%$%hd206236206287%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e206235206284%_)))
                                        (_%$%tl206237206289%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e206235206284%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl206237206289%_))
                                        (_%$%loop206224206260%_
                                         _%$%lp-tl206227206273%_
                                         (cons _%$%hd206236206287%_
                                               _%$%body206228206265%_)
                                         (cons _%$%hd206233206279%_
                                               _%$%hd206229206266%_))
                                        (_%$%g206214206242%_
                                         _%$%g206215206245%_))))
                                (_%$%g206214206242%_ _%$%g206215206245%_))))
                        (_%$%g206214206242%_ _%$%g206215206245%_))))
                (let ((_%$%body206230206292%_ (reverse _%$%body206228206265%_))
                      (_%$%hd206231206293%_ (reverse _%$%hd206229206266%_)))
                  (for-each
                   (lambda (_%$%g206310206312%_)
                     (gxc#compile-e__1 _%self206211%_ _%$%g206310206312%_))
                   (let ((__tmp207067
                          (lambda (_%$%g206314206317%_ _%$%g206315206319%_)
                            (cons _%$%g206314206317%_ _%$%g206315206319%_))))
                     (declare (not safe))
                     (foldr__0 __tmp207067 '() _%$%body206230206292%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop206224206260%_
                                           _%$%target206221206255%_
                                           '()
                                           '()))
                                        (_%$%g206214206242%_
                                         _%$%g206215206245%_)))))
                              (_%$%g206214206242%_ _%$%g206215206245%_))))
                      (_%$%g206214206242%_ _%$%g206215206245%_)))))
          (_%$%g206213206322%_ _%stx206212%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self206068%_ _%stx206069%_)
        (let* ((_%$%g206071206106%_
                (lambda (_%$%g206072206103%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g206072206103%_))))
               (_%$%g206070206208%_
                (lambda (_%$%g206072206109%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g206072206109%_))
                      (let ((_%$%e206076206111%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g206072206109%_))))
                        (let ((_%$%hd206077206114%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e206076206111%_)))
                              (_%$%tl206078206116%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e206076206111%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl206078206116%_))
                              (let ((_%$%e206079206119%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl206078206116%_))))
                                (let ((_%$%hd206080206122%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e206079206119%_)))
                                      (_%$%tl206081206124%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e206079206119%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd206080206122%_))
                                      (let ((_g207068_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%hd206080206122%_
                                                '0))))
                                        (begin
                                          (let ((_g207069_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g207068_)
                                                       (##values-length
                                                        _g207068_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g207069_ 2)))
                                                (error "Context expects 2 values"
                                                       _g207069_)))
                                          (let ((_%$%target206082206127%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g207068_ 0)))
                                                (_%$%tl206084206129%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g207068_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl206084206129%_))
                                                (letrec ((_%$%loop206085206132%_
                                                          (lambda (_%$%hd206083206135%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr206089206137%_
                           _%$%hd206090206138%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd206083206135%_))
                        (let ((_%$%e206086206140%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd206083206135%_))))
                          (let ((_%$%lp-hd206087206143%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e206086206140%_)))
                                (_%$%lp-tl206088206145%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e206086206140%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd206087206143%_))
                                (let ((_%$%e206093206148%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%lp-hd206087206143%_))))
                                  (let ((_%$%hd206094206151%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e206093206148%_)))
                                        (_%$%tl206095206153%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e206093206148%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl206095206153%_))
                                        (let ((_%$%e206096206156%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl206095206153%_))))
                                          (let ((_%$%hd206097206159%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e206096206156%_)))
                                                (_%$%tl206098206161%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e206096206156%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl206098206161%_))
                                                (_%$%loop206085206132%_
                                                 _%$%lp-tl206088206145%_
                                                 (cons _%$%hd206097206159%_
                                                       _%$%expr206089206137%_)
                                                 (cons _%$%hd206094206151%_
                                                       _%$%hd206090206138%_))
                                                (_%$%g206071206106%_
                                                 _%$%g206072206109%_))))
                                        (_%$%g206071206106%_
                                         _%$%g206072206109%_))))
                                (_%$%g206071206106%_ _%$%g206072206109%_))))
                        (let ((_%$%expr206091206164%_
                               (reverse _%$%expr206089206137%_))
                              (_%$%hd206092206165%_
                               (reverse _%$%hd206090206138%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl206081206124%_))
                              (let ((_%$%e206099206167%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl206081206124%_))))
                                (let ((_%$%hd206100206170%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e206099206167%_)))
                                      (_%$%tl206101206172%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e206099206167%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl206101206172%_))
                                      (for-each
                                       (lambda (_%$%g206196206198%_)
                                         (gxc#compile-e__1
                                          _%self206068%_
                                          _%$%g206196206198%_))
                                       (let ((__tmp207071
                                              (lambda (_%$%g206200206203%_
                                                       _%$%g206201206205%_)
                                                (cons _%$%g206200206203%_
                                                      _%$%g206201206205%_)))
                                             (__tmp207070
                                              (cons _%$%hd206100206170%_ '())))
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp207071
                                          __tmp207070
                                          _%$%expr206091206164%_)))
                                      (_%$%g206071206106%_
                                       _%$%g206072206109%_))))
                              (_%$%g206071206106%_ _%$%g206072206109%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop206085206132%_
                                                   _%$%target206082206127%_
                                                   '()
                                                   '()))
                                                (_%$%g206071206106%_
                                                 _%$%g206072206109%_)))))
                                      (_%$%g206071206106%_
                                       _%$%g206072206109%_))))
                              (_%$%g206071206106%_ _%$%g206072206109%_))))
                      (_%$%g206071206106%_ _%$%g206072206109%_)))))
          (_%$%g206070206208%_ _%stx206069%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self206013%_ _%stx206014%_)
        (let* ((_%$%g206016206030%_
                (lambda (_%$%g206017206027%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g206017206027%_))))
               (_%$%g206015206065%_
                (lambda (_%$%g206017206033%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g206017206033%_))
                      (let ((_%$%e206020206035%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g206017206033%_))))
                        (let ((_%$%hd206021206038%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e206020206035%_)))
                              (_%$%tl206022206040%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e206020206035%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl206022206040%_))
                              (let ((_%$%e206023206043%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl206022206040%_))))
                                (let ((_%$%hd206024206046%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e206023206043%_)))
                                      (_%$%tl206025206048%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e206023206043%_))))
                                  (gxc#compile-e__1
                                   _%self206013%_
                                   (last _%$%tl206025206048%_))))
                              (_%$%g206016206030%_ _%$%g206017206033%_))))
                      (_%$%g206016206030%_ _%$%g206017206033%_)))))
          (_%$%g206015206065%_ _%stx206014%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self205945%_ _%stx205946%_)
        (let* ((_%$%g205948205965%_
                (lambda (_%$%g205949205962%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205949205962%_))))
               (_%$%g205947206010%_
                (lambda (_%$%g205949205968%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205949205968%_))
                      (let ((_%$%e205952205970%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205949205968%_))))
                        (let ((_%$%hd205953205973%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205952205970%_)))
                              (_%$%tl205954205975%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205952205970%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl205954205975%_))
                              (let ((_%$%e205955205978%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl205954205975%_))))
                                (let ((_%$%hd205956205981%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e205955205978%_)))
                                      (_%$%tl205957205983%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e205955205978%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl205957205983%_))
                                      (let ((_%$%e205958205986%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl205957205983%_))))
                                        (let ((_%$%hd205959205989%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e205958205986%_)))
                                              (_%$%tl205960205991%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e205958205986%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl205960205991%_))
                                              (gxc#compile-e__1
                                               _%self205945%_
                                               _%$%hd205959205989%_)
                                              (_%$%g205948205965%_
                                               _%$%g205949205968%_))))
                                      (_%$%g205948205965%_
                                       _%$%g205949205968%_))))
                              (_%$%g205948205965%_ _%$%g205949205968%_))))
                      (_%$%g205948205965%_ _%$%g205949205968%_)))))
          (_%$%g205947206010%_ _%stx205946%_))))
    (define gxc#apply-operands
      (lambda (_%self205860%_ _%stx205861%_)
        (let* ((_%$%g205863205882%_
                (lambda (_%$%g205864205879%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205864205879%_))))
               (_%$%g205862205942%_
                (lambda (_%$%g205864205885%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205864205885%_))
                      (let ((_%$%e205866205887%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205864205885%_))))
                        (let ((_%$%hd205867205890%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205866205887%_)))
                              (_%$%tl205868205892%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205866205887%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl205868205892%_))
                              (let ((_g207072_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl205868205892%_
                                        '0))))
                                (begin
                                  (let ((_g207073_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g207072_)
                                               (##values-length _g207072_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g207073_ 2)))
                                        (error "Context expects 2 values"
                                               _g207073_)))
                                  (let ((_%$%target205869205895%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g207072_ 0)))
                                        (_%$%tl205871205897%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g207072_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl205871205897%_))
                                        (letrec ((_%$%loop205872205900%_
                                                  (lambda (_%$%hd205870205903%_
                                                           _%$%rands205876205905%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd205870205903%_))
                                                        (let ((_%$%e205873205907%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd205870205903%_))))
                  (let ((_%$%lp-hd205874205910%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e205873205907%_)))
                        (_%$%lp-tl205875205912%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e205873205907%_))))
                    (_%$%loop205872205900%_
                     _%$%lp-tl205875205912%_
                     (cons _%$%lp-hd205874205910%_ _%$%rands205876205905%_))))
                (let ((_%$%rands205877205915%_
                       (reverse _%$%rands205876205905%_)))
                  (for-each
                   (lambda (_%$%g205930205932%_)
                     (gxc#compile-e__1 _%self205860%_ _%$%g205930205932%_))
                   (let ((__tmp207074
                          (lambda (_%$%g205934205937%_ _%$%g205935205939%_)
                            (cons _%$%g205934205937%_ _%$%g205935205939%_))))
                     (declare (not safe))
                     (foldr__0 __tmp207074 '() _%$%rands205877205915%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop205872205900%_
                                           _%$%target205869205895%_
                                           '()))
                                        (_%$%g205863205882%_
                                         _%$%g205864205885%_)))))
                              (_%$%g205863205882%_ _%$%g205864205885%_))))
                      (_%$%g205863205882%_ _%$%g205864205885%_)))))
          (_%$%g205862205942%_ _%stx205861%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx205857%_ _%src-stx205858%_)
        (let ((__tmp207075
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx205858%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx205857%_ __tmp207075))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx205853%_ _%src-stx205854%_ _%ctx205855%_)
        (gxc#compile-e__1
         _%ctx205855%_
         (gxc#xform-wrap-source _%stx205853%_ _%src-stx205854%_))))
    (define gxc#xform-begin%
      (lambda (_%self205808%_ _%stx205809%_)
        (let* ((_%$%g205811205821%_
                (lambda (_%$%g205812205818%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205812205818%_))))
               (_%$%g205810205850%_
                (lambda (_%$%g205812205824%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205812205824%_))
                      (let ((_%$%e205814205826%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205812205824%_))))
                        (let ((_%$%hd205815205829%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205814205826%_)))
                              (_%$%tl205816205831%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205814205826%_))))
                          (let ((_%forms205848%_
                                 (map (lambda (_%$%g205843205845%_)
                                        (gxc#compile-e__1
                                         _%self205808%_
                                         _%$%g205843205845%_))
                                      _%$%tl205816205831%_)))
                            (gxc#xform-wrap-source
                             (cons '%#begin _%forms205848%_)
                             _%stx205809%_))))
                      (_%$%g205811205821%_ _%$%g205812205824%_)))))
          (_%$%g205810205850%_ _%stx205809%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self205762%_ _%stx205763%_)
        (let* ((_%$%g205765205775%_
                (lambda (_%$%g205766205772%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205766205772%_))))
               (_%$%g205764205805%_
                (lambda (_%$%g205766205778%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205766205778%_))
                      (let ((_%$%e205768205780%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205766205778%_))))
                        (let ((_%$%hd205769205783%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205768205780%_)))
                              (_%$%tl205770205785%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205768205780%_))))
                          (let ((__tmp207078
                                 (lambda ()
                                   (let ((_%forms205803%_
                                          (map (lambda (_%$%g205798205800%_)
                                                 (gxc#compile-e__1
                                                  _%self205762%_
                                                  _%$%g205798205800%_))
                                               _%$%tl205770205785%_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#begin-syntax _%forms205803%_)
                                      _%stx205763%_))))
                                (__tmp207076
                                 (let ((__tmp207077
                                        (let ()
                                          (declare (not safe))
                                          (gx#current-expander-phi))))
                                   (declare (not safe))
                                   (##fx+ __tmp207077 '1))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp207078
                             gx#current-expander-phi
                             __tmp207076))))
                      (_%$%g205765205775%_ _%$%g205766205778%_)))))
          (_%$%g205764205805%_ _%stx205763%_))))
    (define gxc#xform-module%
      (lambda (_%self205699%_ _%stx205700%_)
        (let* ((_%$%g205702205716%_
                (lambda (_%$%g205703205713%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205703205713%_))))
               (_%$%g205701205759%_
                (lambda (_%$%g205703205719%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205703205719%_))
                      (let ((_%$%e205706205721%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205703205719%_))))
                        (let ((_%$%hd205707205724%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205706205721%_)))
                              (_%$%tl205708205726%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205706205721%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl205708205726%_))
                              (let ((_%$%e205709205729%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl205708205726%_))))
                                (let ((_%$%hd205710205732%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e205709205729%_)))
                                      (_%$%tl205711205734%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e205709205729%_))))
                                  (let* ((_%ctx205751%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-local-e__0
                                             _%$%hd205710205732%_)))
                                         (_%code205753%_
                                          (##structure-ref
                                           _%ctx205751%_
                                           '11
                                           gx#module-context::t
                                           '#f))
                                         (_%code205756%_
                                          (let ((__tmp207079
                                                 (lambda ()
                                                   (gxc#compile-e__1
                                                    _%self205699%_
                                                    _%code205753%_))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp207079
                                             gx#current-expander-context
                                             _%ctx205751%_))))
                                    (##structure-set!
                                     _%ctx205751%_
                                     _%code205756%_
                                     '11
                                     gx#module-context::t
                                     '#f)
                                    (gxc#xform-wrap-source
                                     (cons '%#module
                                           (cons _%$%hd205710205732%_
                                                 (cons _%code205756%_ '())))
                                     _%stx205700%_))))
                              (_%$%g205702205716%_ _%$%g205703205719%_))))
                      (_%$%g205702205716%_ _%$%g205703205719%_)))))
          (_%$%g205701205759%_ _%stx205700%_))))
    (define gxc#xform-define-values%
      (lambda (_%self205629%_ _%stx205630%_)
        (let* ((_%$%g205632205649%_
                (lambda (_%$%g205633205646%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205633205646%_))))
               (_%$%g205631205696%_
                (lambda (_%$%g205633205652%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205633205652%_))
                      (let ((_%$%e205636205654%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205633205652%_))))
                        (let ((_%$%hd205637205657%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205636205654%_)))
                              (_%$%tl205638205659%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205636205654%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl205638205659%_))
                              (let ((_%$%e205639205662%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl205638205659%_))))
                                (let ((_%$%hd205640205665%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e205639205662%_)))
                                      (_%$%tl205641205667%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e205639205662%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl205641205667%_))
                                      (let ((_%$%e205642205670%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl205641205667%_))))
                                        (let ((_%$%hd205643205673%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e205642205670%_)))
                                              (_%$%tl205644205675%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e205642205670%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl205644205675%_))
                                              (let ((_%expr205694%_
                                                     (gxc#compile-e__1
                                                      _%self205629%_
                                                      _%$%hd205643205673%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#define-values
                                                       (cons _%$%hd205640205665%_
                                                             (cons _%expr205694%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%stx205630%_))
                                              (_%$%g205632205649%_
                                               _%$%g205633205652%_))))
                                      (_%$%g205632205649%_
                                       _%$%g205633205652%_))))
                              (_%$%g205632205649%_ _%$%g205633205652%_))))
                      (_%$%g205632205649%_ _%$%g205633205652%_)))))
          (_%$%g205631205696%_ _%stx205630%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self205558%_ _%stx205559%_)
        (let* ((_%$%g205561205578%_
                (lambda (_%$%g205562205575%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205562205575%_))))
               (_%$%g205560205626%_
                (lambda (_%$%g205562205581%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205562205581%_))
                      (let ((_%$%e205565205583%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205562205581%_))))
                        (let ((_%$%hd205566205586%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205565205583%_)))
                              (_%$%tl205567205588%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205565205583%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl205567205588%_))
                              (let ((_%$%e205568205591%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl205567205588%_))))
                                (let ((_%$%hd205569205594%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e205568205591%_)))
                                      (_%$%tl205570205596%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e205568205591%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl205570205596%_))
                                      (let ((_%$%e205571205599%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl205570205596%_))))
                                        (let ((_%$%hd205572205602%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e205571205599%_)))
                                              (_%$%tl205573205604%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e205571205599%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl205573205604%_))
                                              (let ((__tmp207082
                                                     (lambda ()
                                                       (let ((_%expr205624%_
                                                              (gxc#compile-e__1
                                                               _%self205558%_
                                                               _%$%hd205572205602%_)))
                                                         (gxc#xform-wrap-source
                                                          (cons '%#define-syntax
                                                                (cons _%$%hd205569205594%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%expr205624%_ '())))
                  _%stx205559%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp207080
                                                     (let ((__tmp207081
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#current-expander-phi))))
                                                       (declare (not safe))
                                                       (##fx+ __tmp207081
                                                              '1))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp207082
                                                 gx#current-expander-phi
                                                 __tmp207080))
                                              (_%$%g205561205578%_
                                               _%$%g205562205581%_))))
                                      (_%$%g205561205578%_
                                       _%$%g205562205581%_))))
                              (_%$%g205561205578%_ _%$%g205562205581%_))))
                      (_%$%g205561205578%_ _%$%g205562205581%_)))))
          (_%$%g205560205626%_ _%stx205559%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self205488%_ _%stx205489%_)
        (let* ((_%$%g205491205508%_
                (lambda (_%$%g205492205505%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205492205505%_))))
               (_%$%g205490205555%_
                (lambda (_%$%g205492205511%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205492205511%_))
                      (let ((_%$%e205495205513%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205492205511%_))))
                        (let ((_%$%hd205496205516%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205495205513%_)))
                              (_%$%tl205497205518%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205495205513%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl205497205518%_))
                              (let ((_%$%e205498205521%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl205497205518%_))))
                                (let ((_%$%hd205499205524%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e205498205521%_)))
                                      (_%$%tl205500205526%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e205498205521%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl205500205526%_))
                                      (let ((_%$%e205501205529%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl205500205526%_))))
                                        (let ((_%$%hd205502205532%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e205501205529%_)))
                                              (_%$%tl205503205534%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e205501205529%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl205503205534%_))
                                              (let ((_%expr205553%_
                                                     (gxc#compile-e__1
                                                      _%self205488%_
                                                      _%$%hd205502205532%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#begin-annotation
                                                       (cons _%$%hd205499205524%_
                                                             (cons _%expr205553%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%stx205489%_))
                                              (_%$%g205491205508%_
                                               _%$%g205492205511%_))))
                                      (_%$%g205491205508%_
                                       _%$%g205492205511%_))))
                              (_%$%g205491205508%_ _%$%g205492205511%_))))
                      (_%$%g205491205508%_ _%$%g205492205511%_)))))
          (_%$%g205490205555%_ _%stx205489%_))))
    (define gxc#xform-lambda%
      (lambda (_%self205426%_ _%stx205427%_)
        (let* ((_%$%g205429205443%_
                (lambda (_%$%g205430205440%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205430205440%_))))
               (_%$%g205428205485%_
                (lambda (_%$%g205430205446%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205430205446%_))
                      (let ((_%$%e205433205448%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205430205446%_))))
                        (let ((_%$%hd205434205451%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205433205448%_)))
                              (_%$%tl205435205453%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205433205448%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl205435205453%_))
                              (let ((_%$%e205436205456%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl205435205453%_))))
                                (let ((_%$%hd205437205459%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e205436205456%_)))
                                      (_%$%tl205438205461%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e205436205456%_))))
                                  (let ((__tmp207084
                                         (lambda ()
                                           (let ((_%body205483%_
                                                  (map (lambda (_%$%g205478205480%_)
                                                         (gxc#compile-e__1
                                                          _%self205426%_
                                                          _%$%g205478205480%_))
                                                       _%$%tl205438205461%_)))
                                             (gxc#xform-wrap-source
                                              (cons '%#lambda
                                                    (cons _%$%hd205437205459%_
                                                          _%body205483%_))
                                              _%stx205427%_))))
                                        (__tmp207083
                                         (gxc#xform-let-locals
                                          _%$%hd205437205459%_)))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp207084
                                     gxc#current-compile-local-env
                                     __tmp207083))))
                              (_%$%g205429205443%_ _%$%g205430205446%_))))
                      (_%$%g205429205443%_ _%$%g205430205446%_)))))
          (_%$%g205428205485%_ _%stx205427%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self205334%_ _%stx205335%_)
        (letrec ((_%clause-e205337%_
                  (lambda (_%clause205378%_)
                    (let* ((_%$%g205380205391%_
                            (lambda (_%$%g205381205388%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g205381205388%_))))
                           (_%$%g205379205423%_
                            (lambda (_%$%g205381205394%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%g205381205394%_))
                                  (let ((_%$%e205384205396%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%g205381205394%_))))
                                    (let ((_%$%hd205385205399%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e205384205396%_)))
                                          (_%$%tl205386205401%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e205384205396%_))))
                                      (let ((__tmp207086
                                             (lambda ()
                                               (let ((_%body205421%_
                                                      (map (lambda (_%$%g205416205418%_)
                                                             (gxc#compile-e__1
                                                              _%self205334%_
                                                              _%$%g205416205418%_))
                                                           _%$%tl205386205401%_)))
                                                 (cons _%$%hd205385205399%_
                                                       _%body205421%_))))
                                            (__tmp207085
                                             (gxc#xform-let-locals
                                              _%$%hd205385205399%_)))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp207086
                                         gxc#current-compile-local-env
                                         __tmp207085))))
                                  (_%$%g205380205391%_ _%$%g205381205394%_)))))
                      (_%$%g205379205423%_ _%clause205378%_)))))
          (let* ((_%$%g205339205349%_
                  (lambda (_%$%g205340205346%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g205340205346%_))))
                 (_%$%g205338205375%_
                  (lambda (_%$%g205340205352%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g205340205352%_))
                        (let ((_%$%e205342205354%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g205340205352%_))))
                          (let ((_%$%hd205343205357%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e205342205354%_)))
                                (_%$%tl205344205359%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e205342205354%_))))
                            (let ((_%clauses205373%_
                                   (map _%clause-e205337%_
                                        _%$%tl205344205359%_)))
                              (gxc#xform-wrap-source
                               (cons '%#case-lambda _%clauses205373%_)
                               _%stx205335%_))))
                        (_%$%g205339205349%_ _%$%g205340205352%_)))))
            (_%$%g205338205375%_ _%stx205335%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self205094%_ _%stx205095%_)
        (let* ((_%$%g205097205130%_
                (lambda (_%$%g205098205127%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205098205127%_))))
               (_%$%g205096205331%_
                (lambda (_%$%g205098205133%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205098205133%_))
                      (let ((_%$%e205103205135%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205098205133%_))))
                        (let ((_%$%hd205104205138%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205103205135%_)))
                              (_%$%tl205105205140%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205103205135%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl205105205140%_))
                              (let ((_%$%e205106205143%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl205105205140%_))))
                                (let ((_%$%hd205107205146%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e205106205143%_)))
                                      (_%$%tl205108205148%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e205106205143%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd205107205146%_))
                                      (let ((_g207087_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%hd205107205146%_
                                                '0))))
                                        (begin
                                          (let ((_g207088_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g207087_)
                                                       (##values-length
                                                        _g207087_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g207088_ 2)))
                                                (error "Context expects 2 values"
                                                       _g207088_)))
                                          (let ((_%$%target205109205151%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g207087_ 0)))
                                                (_%$%tl205111205153%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g207087_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl205111205153%_))
                                                (letrec ((_%$%loop205112205156%_
                                                          (lambda (_%$%hd205110205159%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr205116205161%_
                           _%$%hd205117205162%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd205110205159%_))
                        (let ((_%$%e205113205164%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd205110205159%_))))
                          (let ((_%$%lp-hd205114205167%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e205113205164%_)))
                                (_%$%lp-tl205115205169%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e205113205164%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd205114205167%_))
                                (let ((_%$%e205120205172%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%lp-hd205114205167%_))))
                                  (let ((_%$%hd205121205175%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e205120205172%_)))
                                        (_%$%tl205122205177%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e205120205172%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl205122205177%_))
                                        (let ((_%$%e205123205180%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl205122205177%_))))
                                          (let ((_%$%hd205124205183%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e205123205180%_)))
                                                (_%$%tl205125205185%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e205123205180%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl205125205185%_))
                                                (_%$%loop205112205156%_
                                                 _%$%lp-tl205115205169%_
                                                 (cons _%$%hd205124205183%_
                                                       _%$%expr205116205161%_)
                                                 (cons _%$%hd205121205175%_
                                                       _%$%hd205117205162%_))
                                                (_%$%g205097205130%_
                                                 _%$%g205098205133%_))))
                                        (_%$%g205097205130%_
                                         _%$%g205098205133%_))))
                                (_%$%g205097205130%_ _%$%g205098205133%_))))
                        (let ((_%$%expr205118205188%_
                               (reverse _%$%expr205116205161%_))
                              (_%$%hd205119205189%_
                               (reverse _%$%hd205117205162%_)))
                          (let* ((_%$%g205213205229%_
                                  (lambda (_%$%g205214205226%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%$%g205214205226%_))))
                                 (_%$%g205212205317%_
                                  (lambda (_%$%g205214205232%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%g205214205232%_))
                                        (let ((_g207089_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%$%g205214205232%_
                                                  '0))))
                                          (begin
                                            (let ((_g207090_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g207089_)
                                                         (##values-length
                                                          _g207089_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g207090_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g207090_)))
                                            (let ((_%$%target205216205234%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g207089_
                                                      0)))
                                                  (_%$%tl205218205236%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g207089_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl205218205236%_))
                                                  (letrec ((_%$%loop205219205239%_
                                                            (lambda (_%$%hd205217205242%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%expr205223205244%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd205217205242%_))
                          (let ((_%$%e205220205246%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%hd205217205242%_))))
                            (let ((_%$%lp-hd205221205249%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e205220205246%_)))
                                  (_%$%lp-tl205222205251%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e205220205246%_))))
                              (_%$%loop205219205239%_
                               _%$%lp-tl205222205251%_
                               (cons _%$%lp-hd205221205249%_
                                     _%$%expr205223205244%_))))
                          (let ((_%$%expr205224205254%_
                                 (reverse _%$%expr205223205244%_)))
                            (let ((__tmp207093
                                   (lambda ()
                                     (let* ((_%$%g205270205277%_
                                             (lambda (_%$%g205271205274%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%$%g205271205274%_))))
                                            (_%$%g205269205303%_
                                             (lambda (_%$%g205271205280%_)
                                               (gxc#xform-wrap-source
                                                (cons _%$%hd205104205138%_
                                                      (cons (begin
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-check-splice-targets
                         _%$%expr205224205254%_
                         _%$%hd205119205189%_))
                      (let ((__tmp207094
                             (lambda (_%$%g205292205296%_
                                      _%$%g205293205298%_
                                      _%$%g205294205300%_)
                               (cons (cons _%$%g205293205298%_
                                           (cons _%$%g205292205296%_ '()))
                                     _%$%g205294205300%_))))
                        (declare (not safe))
                        (foldr__1
                         __tmp207094
                         '()
                         _%$%expr205224205254%_
                         _%$%hd205119205189%_)))
                    _%$%g205271205280%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%stx205095%_))))
                                       (_%$%g205269205303%_
                                        (map (lambda (_%$%g205305205307%_)
                                               (gxc#compile-e__1
                                                _%self205094%_
                                                _%$%g205305205307%_))
                                             _%$%tl205108205148%_)))))
                                  (__tmp207091
                                   (gxc#xform-let-locals
                                    (let ((__tmp207092
                                           (lambda (_%$%g205309205312%_
                                                    _%$%g205310205314%_)
                                             (cons _%$%g205309205312%_
                                                   _%$%g205310205314%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp207092
                                       '()
                                       _%$%hd205119205189%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp207093
                               gxc#current-compile-local-env
                               __tmp207091)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%loop205219205239%_
                                                     _%$%target205216205234%_
                                                     '()))
                                                  (_%$%g205213205229%_
                                                   _%$%g205214205232%_)))))
                                        (_%$%g205213205229%_
                                         _%$%g205214205232%_)))))
                            (_%$%g205212205317%_
                             (map (lambda (_%$%g205319205321%_)
                                    (gxc#compile-e__1
                                     _%self205094%_
                                     _%$%g205319205321%_))
                                  (let ((__tmp207095
                                         (lambda (_%$%g205323205326%_
                                                  _%$%g205324205328%_)
                                           (cons _%$%g205323205326%_
                                                 _%$%g205324205328%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp207095
                                     '()
                                     _%$%expr205118205188%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop205112205156%_
                                                   _%$%target205109205151%_
                                                   '()
                                                   '()))
                                                (_%$%g205097205130%_
                                                 _%$%g205098205133%_)))))
                                      (_%$%g205097205130%_
                                       _%$%g205098205133%_))))
                              (_%$%g205097205130%_ _%$%g205098205133%_))))
                      (_%$%g205097205130%_ _%$%g205098205133%_)))))
          (_%$%g205096205331%_ _%stx205095%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self204854%_ _%stx204855%_)
        (let* ((_%$%g204857204890%_
                (lambda (_%$%g204858204887%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204858204887%_))))
               (_%$%g204856205091%_
                (lambda (_%$%g204858204893%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204858204893%_))
                      (let ((_%$%e204863204895%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204858204893%_))))
                        (let ((_%$%hd204864204898%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204863204895%_)))
                              (_%$%tl204865204900%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204863204895%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl204865204900%_))
                              (let ((_%$%e204866204903%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl204865204900%_))))
                                (let ((_%$%hd204867204906%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e204866204903%_)))
                                      (_%$%tl204868204908%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e204866204903%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd204867204906%_))
                                      (let ((_g207096_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%hd204867204906%_
                                                '0))))
                                        (begin
                                          (let ((_g207097_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g207096_)
                                                       (##values-length
                                                        _g207096_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g207097_ 2)))
                                                (error "Context expects 2 values"
                                                       _g207097_)))
                                          (let ((_%$%target204869204911%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g207096_ 0)))
                                                (_%$%tl204871204913%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g207096_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl204871204913%_))
                                                (letrec ((_%$%loop204872204916%_
                                                          (lambda (_%$%hd204870204919%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr204876204921%_
                           _%$%hd204877204922%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd204870204919%_))
                        (let ((_%$%e204873204924%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd204870204919%_))))
                          (let ((_%$%lp-hd204874204927%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e204873204924%_)))
                                (_%$%lp-tl204875204929%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e204873204924%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd204874204927%_))
                                (let ((_%$%e204880204932%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%lp-hd204874204927%_))))
                                  (let ((_%$%hd204881204935%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e204880204932%_)))
                                        (_%$%tl204882204937%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e204880204932%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl204882204937%_))
                                        (let ((_%$%e204883204940%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl204882204937%_))))
                                          (let ((_%$%hd204884204943%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e204883204940%_)))
                                                (_%$%tl204885204945%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e204883204940%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl204885204945%_))
                                                (_%$%loop204872204916%_
                                                 _%$%lp-tl204875204929%_
                                                 (cons _%$%hd204884204943%_
                                                       _%$%expr204876204921%_)
                                                 (cons _%$%hd204881204935%_
                                                       _%$%hd204877204922%_))
                                                (_%$%g204857204890%_
                                                 _%$%g204858204893%_))))
                                        (_%$%g204857204890%_
                                         _%$%g204858204893%_))))
                                (_%$%g204857204890%_ _%$%g204858204893%_))))
                        (let ((_%$%expr204878204948%_
                               (reverse _%$%expr204876204921%_))
                              (_%$%hd204879204949%_
                               (reverse _%$%hd204877204922%_)))
                          (let ((__tmp207100
                                 (lambda ()
                                   (let* ((_%$%g204974204990%_
                                           (lambda (_%$%g204975204987%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%$%g204975204987%_))))
                                          (_%$%g204973205070%_
                                           (lambda (_%$%g204975204993%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair/null?
                                                    _%$%g204975204993%_))
                                                 (let ((_g207101_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-split-splice
                                                           _%$%g204975204993%_
                                                           '0))))
                                                   (begin
                                                     (let ((_g207102_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g207101_)
                          (##values-length _g207101_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g207102_ 2)))
                   (error "Context expects 2 values" _g207102_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%$%target204977204995%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g207101_
                                                               0)))
                                                           (_%$%tl204979204997%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g207101_
                                                               1))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl204979204997%_))
                                                           (letrec ((_%$%loop204980205000%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%$%hd204978205003%_
                                      _%$%expr204984205005%_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd204978205003%_))
                                   (let ((_%$%e204981205007%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e
                                             _%$%hd204978205003%_))))
                                     (let ((_%$%lp-hd204982205010%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e204981205007%_)))
                                           (_%$%lp-tl204983205012%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e204981205007%_))))
                                       (_%$%loop204980205000%_
                                        _%$%lp-tl204983205012%_
                                        (cons _%$%lp-hd204982205010%_
                                              _%$%expr204984205005%_))))
                                   (let* ((_%$%expr204985205015%_
                                           (reverse _%$%expr204984205005%_))
                                          (_%$%g205031205038%_
                                           (lambda (_%$%g205032205035%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%$%g205032205035%_))))
                                          (_%$%g205030205063%_
                                           (lambda (_%$%g205032205041%_)
                                             (gxc#xform-wrap-source
                                              (cons _%$%hd204864204898%_
                                                    (cons (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _%$%expr204985205015%_
                                                               _%$%hd204879204949%_))
                                                            (let ((__tmp207103
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%$%g205052205056%_
                                    _%$%g205053205058%_
                                    _%$%g205054205060%_)
                             (cons (cons _%$%g205053205058%_
                                         (cons _%$%g205052205056%_ '()))
                                   _%$%g205054205060%_))))
                      (declare (not safe))
                      (foldr__1
                       __tmp207103
                       '()
                       _%$%expr204985205015%_
                       _%$%hd204879204949%_)))
                  _%$%g205032205041%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%stx204855%_))))
                                     (_%$%g205030205063%_
                                      (map (lambda (_%$%g205065205067%_)
                                             (gxc#compile-e__1
                                              _%self204854%_
                                              _%$%g205065205067%_))
                                           _%$%tl204868204908%_)))))))
                     (_%$%loop204980205000%_ _%$%target204977204995%_ '()))
                   (_%$%g204974204990%_ _%$%g204975204993%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g204974204990%_
                                                  _%$%g204975204993%_)))))
                                     (_%$%g204973205070%_
                                      (map (lambda (_%$%g205072205074%_)
                                             (gxc#compile-e__1
                                              _%self204854%_
                                              _%$%g205072205074%_))
                                           (let ((__tmp207104
                                                  (lambda (_%$%g205076205079%_
                                                           _%$%g205077205081%_)
                                                    (cons _%$%g205076205079%_
                                                          _%$%g205077205081%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp207104
                                              '()
                                              _%$%expr204878204948%_)))))))
                                (__tmp207098
                                 (gxc#xform-let-locals
                                  (let ((__tmp207099
                                         (lambda (_%$%g205083205086%_
                                                  _%$%g205084205088%_)
                                           (cons _%$%g205083205086%_
                                                 _%$%g205084205088%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp207099
                                     '()
                                     _%$%hd204879204949%_)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp207100
                             gxc#current-compile-local-env
                             __tmp207098)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop204872204916%_
                                                   _%$%target204869204911%_
                                                   '()
                                                   '()))
                                                (_%$%g204857204890%_
                                                 _%$%g204858204893%_)))))
                                      (_%$%g204857204890%_
                                       _%$%g204858204893%_))))
                              (_%$%g204857204890%_ _%$%g204858204893%_))))
                      (_%$%g204857204890%_ _%$%g204858204893%_)))))
          (_%$%g204856205091%_ _%stx204855%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings204721%_)
        (letrec ((_%flatten204723%_
                  (lambda (_%maybe-lst204781%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst204781%_))
                        (cons _%maybe-lst204781%_ '())
                        (let _%loop204783%_ ((_%rest204785%_
                                              _%maybe-lst204781%_)
                                             (_%result204786%_ '()))
                          (let* ((_%__stx206990206991%_ _%rest204785%_)
                                 (_%$%g204790204802%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx206990206991%_)))))
                            (let ((_%__kont206992206993%_
                                   (lambda (_%$%g204792204840%_
                                            _%$%g204793204841%_)
                                     (_%loop204783%_
                                      _%$%g204792204840%_
                                      (let ((__tmp207105
                                             (_%flatten204723%_
                                              _%$%g204793204841%_)))
                                        (declare (not safe))
                                        (foldl__0
                                         cons
                                         _%result204786%_
                                         __tmp207105)))))
                                  (_%__kont206994206995%_
                                   (lambda (_%$%g204797204814%_)
                                     (cons _%$%g204797204814%_
                                           _%result204786%_)))
                                  (_%__kont206996206997%_
                                   (lambda () _%result204786%_)))
                              (let ((_%$%g204788204827%_
                                     (lambda ()
                                       (let ((_%$%g204797204814%_
                                              _%__stx206990206991%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%$%g204797204814%_))
                                             (_%__kont206994206995%_
                                              _%$%g204797204814%_)
                                             (_%__kont206996206997%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx206990206991%_))
                                    (let ((_%$%e204794204832%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx206990206991%_))))
                                      (let ((_%$%tl204796204837%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e204794204832%_)))
                                            (_%$%hd204795204835%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e204794204832%_))))
                                        (_%__kont206992206993%_
                                         _%$%tl204796204837%_
                                         _%$%hd204795204835%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g204788204827%_)))))))))))
          (let _%loop204725%_ ((_%rest204727%_
                                (_%flatten204723%_ _%bindings204721%_))
                               (_%locals204728%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%$%rest204729204740%_ _%rest204727%_)
                   (_%$%E204733204744%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%$%rest204729204740%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%$%K204736204769%_
                     (lambda (_%rest204766%_ _%id204767%_)
                       (_%loop204725%_
                        _%rest204766%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id204767%_))
                              _%locals204728%_))))
                    (_%$%K204735204758%_
                     (lambda (_%id204756%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id204756%_))
                             _%locals204728%_)))
                    (_%$%K204734204749%_ (lambda () _%locals204728%_)))
                (let ((_%$%try-match204731204763%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%$%rest204729204740%_))
                             (let ((_%id204761%_ _%$%rest204729204740%_))
                               (_%$%K204735204758%_ _%id204761%_))
                             (_%$%K204734204749%_)))))
                  (if (pair? _%$%rest204729204740%_)
                      (let ((_%$%tl204738204774%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%rest204729204740%_)))
                            (_%$%hd204737204772%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%rest204729204740%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%$%hd204737204772%_))
                            (let ((_%id204777%_ _%$%hd204737204772%_)
                                  (_%rest204779%_ _%$%tl204738204774%_))
                              (_%$%K204736204769%_
                               _%rest204779%_
                               _%id204777%_))
                            (_%$%try-match204731204763%_)))
                      (_%$%try-match204731204763%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self204673%_ _%stx204674%_)
        (let* ((_%$%g204676204687%_
                (lambda (_%$%g204677204684%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204677204684%_))))
               (_%$%g204675204718%_
                (lambda (_%$%g204677204690%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204677204690%_))
                      (let ((_%$%e204680204692%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204677204690%_))))
                        (let ((_%$%hd204681204695%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204680204692%_)))
                              (_%$%tl204682204697%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204680204692%_))))
                          (let ((_%rands204716%_
                                 (map (lambda (_%$%g204711204713%_)
                                        (gxc#compile-e__1
                                         _%self204673%_
                                         _%$%g204711204713%_))
                                      _%$%tl204682204697%_)))
                            (gxc#xform-wrap-source
                             (cons _%$%hd204681204695%_ _%rands204716%_)
                             _%stx204674%_))))
                      (_%$%g204676204687%_ _%$%g204677204690%_)))))
          (_%$%g204675204718%_ _%stx204674%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self204603%_ _%stx204604%_)
        (let* ((_%$%g204606204623%_
                (lambda (_%$%g204607204620%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204607204620%_))))
               (_%$%g204605204670%_
                (lambda (_%$%g204607204626%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204607204626%_))
                      (let ((_%$%e204610204628%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204607204626%_))))
                        (let ((_%$%hd204611204631%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204610204628%_)))
                              (_%$%tl204612204633%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204610204628%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl204612204633%_))
                              (let ((_%$%e204613204636%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl204612204633%_))))
                                (let ((_%$%hd204614204639%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e204613204636%_)))
                                      (_%$%tl204615204641%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e204613204636%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl204615204641%_))
                                      (let ((_%$%e204616204644%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl204615204641%_))))
                                        (let ((_%$%hd204617204647%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e204616204644%_)))
                                              (_%$%tl204618204649%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e204616204644%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl204618204649%_))
                                              (let ((_%expr204668%_
                                                     (gxc#compile-e__1
                                                      _%self204603%_
                                                      _%$%hd204617204647%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#set!
                                                       (cons _%$%hd204614204639%_
                                                             (cons _%expr204668%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%stx204604%_))
                                              (_%$%g204606204623%_
                                               _%$%g204607204626%_))))
                                      (_%$%g204606204623%_
                                       _%$%g204607204626%_))))
                              (_%$%g204606204623%_ _%$%g204607204626%_))))
                      (_%$%g204606204623%_ _%$%g204607204626%_)))))
          (_%$%g204605204670%_ _%stx204604%_))))))
