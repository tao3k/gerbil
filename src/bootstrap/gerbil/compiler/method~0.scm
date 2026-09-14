(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1789371532)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx206641%_)
        (if gxc#__DEBUG-COMPILE
            (let ((__tmp206863
                   (let ()
                     (declare (not safe))
                     (gx#syntax->datum _%stx206641%_))))
              (declare (not safe))
              (displayln '"@compile " __tmp206863))
            '#!void)
        (let* ((_%self206643%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e206645%_
                (let ((__tmp206864 (gxc#stx-car-e _%stx206641%_)))
                  (declare (not safe))
                  (method-ref _%self206643%_ __tmp206864))))
          (if _%$e206645%_
              (let ()
                (declare (not safe))
                (let ((_%$e206651%_ (gx#stx-source _%stx206641%_)))
                  (if _%$e206651%_
                      (call-with-parameters__1
                       (lambda () (_%$e206645%_ _%self206643%_ _%stx206641%_))
                       gxc#current-compile-context
                       (cons (list '@ _%$e206651%_)
                             (let ((_%$e206658%_
                                    (gxc#current-compile-context)))
                               (if _%$e206658%_ _%$e206658%_ '()))))
                      (_%$e206645%_ _%self206643%_ _%stx206641%_))))
              (let ((__tmp206866 (gxc#stx-car-e _%stx206641%_))
                    (__tmp206865
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx206641%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self206643%_
                       __tmp206866
                       __tmp206865))))))
    (define gxc#compile-e__1
      (lambda (_%self206663%_ _%stx206664%_)
        (if gxc#__DEBUG-COMPILE
            (let ((__tmp206867
                   (let ()
                     (declare (not safe))
                     (gx#syntax->datum _%stx206664%_))))
              (declare (not safe))
              (displayln '"@compile " __tmp206867))
            '#!void)
        (let ((_%$e206666%_
               (let ((__tmp206868 (gxc#stx-car-e _%stx206664%_)))
                 (declare (not safe))
                 (method-ref _%self206663%_ __tmp206868))))
          (if _%$e206666%_
              (let ()
                (declare (not safe))
                (let ((_%$e206672%_ (gx#stx-source _%stx206664%_)))
                  (if _%$e206672%_
                      (call-with-parameters__1
                       (lambda () (_%$e206666%_ _%self206663%_ _%stx206664%_))
                       gxc#current-compile-context
                       (cons (list '@ _%$e206672%_)
                             (let ((_%$e206679%_
                                    (gxc#current-compile-context)))
                               (if _%$e206679%_ _%$e206679%_ '()))))
                      (_%$e206666%_ _%self206663%_ _%stx206664%_))))
              (let ((__tmp206870 (gxc#stx-car-e _%stx206664%_))
                    (__tmp206869
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx206664%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self206663%_
                       __tmp206870
                       __tmp206869))))))
    (define gxc#compile-e
      (lambda _g206871_
        (let ((_g206872_ (let () (declare (not safe)) (##length _g206871_))))
          (cond ((let () (declare (not safe)) (##fx= _g206872_ 1))
                 (apply gxc#compile-e__0 _g206871_))
                ((let () (declare (not safe)) (##fx= _g206872_ 2))
                 (apply gxc#compile-e__1 _g206871_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g206871_))))))
    (define gxc#stx-car-e
      (lambda (_%stx206639%_)
        (let ((__tmp206873
               (car (let () (declare (not safe)) (gx#stx-e _%stx206639%_)))))
          (declare (not safe))
          (gx#stx-e __tmp206873))))
    (define gxc#void-method (lambda (_%self206636%_ _%stx206637%_) '#!void))
    (define gxc#false-method (lambda (_%self206633%_ _%stx206634%_) '#f))
    (define gxc#true-method (lambda (_%self206630%_ _%stx206631%_) '#t))
    (define gxc#identity-method
      (lambda (_%self206627%_ _%stx206628%_) _%stx206628%_))
    (define gxc#::void-expression::t
      (let ((__tmp206874 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp206874
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args206624%_
        (apply make-instance gxc#::void-expression::t _%$args206624%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp206875
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
        (__make-atomic-promise __tmp206875)))
    (define gxc#::void-special-form::t
      (let ((__tmp206876 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp206876
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args206620%_
        (apply make-instance gxc#::void-special-form::t _%$args206620%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp206877
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
        (__make-atomic-promise __tmp206877)))
    (define gxc#::void::t
      (let ((__tmp206878
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (make-class-type 'gxc#::void::t '::void __tmp206878 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args206616%_
        (apply make-instance gxc#::void::t _%$args206616%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp206879
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp206879)))
    (define gxc#::false-expression::t
      (let ((__tmp206880 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp206880
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args206612%_
        (apply make-instance gxc#::false-expression::t _%$args206612%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp206881
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
        (__make-atomic-promise __tmp206881)))
    (define gxc#::false-special-form::t
      (let ((__tmp206882 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp206882
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args206608%_
        (apply make-instance gxc#::false-special-form::t _%$args206608%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp206883
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
        (__make-atomic-promise __tmp206883)))
    (define gxc#::false::t
      (let ((__tmp206884
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (make-class-type 'gxc#::false::t '::false __tmp206884 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args206604%_
        (apply make-instance gxc#::false::t _%$args206604%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp206885
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp206885)))
    (define gxc#::identity-expression::t
      (let ((__tmp206886 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp206886
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args206600%_
        (apply make-instance gxc#::identity-expression::t _%$args206600%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp206887
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
        (__make-atomic-promise __tmp206887)))
    (define gxc#::identity-special-form::t
      (let ((__tmp206888 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp206888
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args206596%_
        (apply make-instance gxc#::identity-special-form::t _%$args206596%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp206889
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
        (__make-atomic-promise __tmp206889)))
    (define gxc#::identity::t
      (let ((__tmp206890
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity::t
         '::identity
         __tmp206890
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args206592%_
        (apply make-instance gxc#::identity::t _%$args206592%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp206891
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp206891)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp206892 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp206892
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args206588%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args206588%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp206893
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
        (__make-atomic-promise __tmp206893)))
    (define gxc#::basic-xform::t
      (let ((__tmp206894
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp206894
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args206584%_
        (apply make-instance gxc#::basic-xform::t _%$args206584%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp206895
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
        (__make-atomic-promise __tmp206895)))
    (define gxc#apply-begin%
      (lambda (_%self206540%_ _%stx206541%_)
        (let* ((_%$%g206543206553%_
                (lambda (_%$%g206544206550%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g206544206550%_))))
               (_%$%g206542206580%_
                (lambda (_%$%g206544206556%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g206544206556%_))
                      (let ((_%$%e206546206558%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g206544206556%_))))
                        (let ((_%$%hd206547206561%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e206546206558%_)))
                              (_%$%tl206548206563%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e206546206558%_))))
                          (for-each
                           (lambda (_%$%g206575206577%_)
                             (gxc#compile-e__1
                              _%self206540%_
                              _%$%g206575206577%_))
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl206548206563%_)))))
                      (_%$%g206543206553%_ _%$%g206544206556%_)))))
          (_%$%g206542206580%_ _%stx206541%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self206501%_ _%stx206502%_)
        (let* ((_%$%g206504206514%_
                (lambda (_%$%g206505206511%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g206505206511%_))))
               (_%$%g206503206537%_
                (lambda (_%$%g206505206517%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g206505206517%_))
                      (let ((_%$%e206507206519%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g206505206517%_))))
                        (let ((_%$%hd206508206522%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e206507206519%_)))
                              (_%$%tl206509206524%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e206507206519%_))))
                          (gxc#compile-e__1
                           _%self206501%_
                           (last _%$%tl206509206524%_))))
                      (_%$%g206504206514%_ _%$%g206505206517%_)))))
          (_%$%g206503206537%_ _%stx206502%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self206497%_ _%stx206498%_)
        (let ((__tmp206898
               (lambda () (gxc#apply-begin% _%self206497%_ _%stx206498%_)))
              (__tmp206896
               (let ((__tmp206897
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp206897 '1))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp206898
           gx#current-expander-phi
           __tmp206896))))
    (define gxc#apply-module%
      (lambda (_%self206436%_ _%stx206437%_)
        (let* ((_%$%g206439206453%_
                (lambda (_%$%g206440206450%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g206440206450%_))))
               (_%$%g206438206494%_
                (lambda (_%$%g206440206456%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g206440206456%_))
                      (let ((_%$%e206443206458%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g206440206456%_))))
                        (let ((_%$%hd206444206461%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e206443206458%_)))
                              (_%$%tl206445206463%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e206443206458%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl206445206463%_))
                              (let ((_%$%e206446206466%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl206445206463%_))))
                                (let ((_%$%hd206447206469%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e206446206466%_)))
                                      (_%$%tl206448206471%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e206446206466%_))))
                                  (let* ((_%ctx206488%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-local-e__0
                                             _%$%hd206447206469%_)))
                                         (_%ctx-stx206490%_
                                          (##structure-ref
                                           _%ctx206488%_
                                           '11
                                           gx#module-context::t
                                           '#f))
                                         (__tmp206899
                                          (lambda ()
                                            (gxc#compile-e__1
                                             _%self206436%_
                                             _%ctx-stx206490%_))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp206899
                                     gx#current-expander-context
                                     _%ctx206488%_))))
                              (_%$%g206439206453%_ _%$%g206440206456%_))))
                      (_%$%g206439206453%_ _%$%g206440206456%_)))))
          (_%$%g206438206494%_ _%stx206437%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self206368%_ _%stx206369%_)
        (let* ((_%$%g206371206388%_
                (lambda (_%$%g206372206385%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g206372206385%_))))
               (_%$%g206370206433%_
                (lambda (_%$%g206372206391%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g206372206391%_))
                      (let ((_%$%e206375206393%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g206372206391%_))))
                        (let ((_%$%hd206376206396%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e206375206393%_)))
                              (_%$%tl206377206398%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e206375206393%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl206377206398%_))
                              (let ((_%$%e206378206401%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl206377206398%_))))
                                (let ((_%$%hd206379206404%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e206378206401%_)))
                                      (_%$%tl206380206406%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e206378206401%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl206380206406%_))
                                      (let ((_%$%e206381206409%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl206380206406%_))))
                                        (let ((_%$%hd206382206412%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e206381206409%_)))
                                              (_%$%tl206383206414%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e206381206409%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl206383206414%_))
                                              (gxc#compile-e__1
                                               _%self206368%_
                                               _%$%hd206382206412%_)
                                              (_%$%g206371206388%_
                                               _%$%g206372206391%_))))
                                      (_%$%g206371206388%_
                                       _%$%g206372206391%_))))
                              (_%$%g206371206388%_ _%$%g206372206391%_))))
                      (_%$%g206371206388%_ _%$%g206372206391%_)))))
          (_%$%g206370206433%_ _%stx206369%_))))
    (define gxc#apply-define-values%
      (lambda (_%self206300%_ _%stx206301%_)
        (let* ((_%$%g206303206320%_
                (lambda (_%$%g206304206317%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g206304206317%_))))
               (_%$%g206302206365%_
                (lambda (_%$%g206304206323%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g206304206323%_))
                      (let ((_%$%e206307206325%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g206304206323%_))))
                        (let ((_%$%hd206308206328%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e206307206325%_)))
                              (_%$%tl206309206330%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e206307206325%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl206309206330%_))
                              (let ((_%$%e206310206333%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl206309206330%_))))
                                (let ((_%$%hd206311206336%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e206310206333%_)))
                                      (_%$%tl206312206338%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e206310206333%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl206312206338%_))
                                      (let ((_%$%e206313206341%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl206312206338%_))))
                                        (let ((_%$%hd206314206344%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e206313206341%_)))
                                              (_%$%tl206315206346%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e206313206341%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl206315206346%_))
                                              (gxc#compile-e__1
                                               _%self206300%_
                                               _%$%hd206314206344%_)
                                              (_%$%g206303206320%_
                                               _%$%g206304206323%_))))
                                      (_%$%g206303206320%_
                                       _%$%g206304206323%_))))
                              (_%$%g206303206320%_ _%$%g206304206323%_))))
                      (_%$%g206303206320%_ _%$%g206304206323%_)))))
          (_%$%g206302206365%_ _%stx206301%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self206231%_ _%stx206232%_)
        (let* ((_%$%g206234206251%_
                (lambda (_%$%g206235206248%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g206235206248%_))))
               (_%$%g206233206297%_
                (lambda (_%$%g206235206254%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g206235206254%_))
                      (let ((_%$%e206238206256%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g206235206254%_))))
                        (let ((_%$%hd206239206259%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e206238206256%_)))
                              (_%$%tl206240206261%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e206238206256%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl206240206261%_))
                              (let ((_%$%e206241206264%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl206240206261%_))))
                                (let ((_%$%hd206242206267%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e206241206264%_)))
                                      (_%$%tl206243206269%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e206241206264%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl206243206269%_))
                                      (let ((_%$%e206244206272%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl206243206269%_))))
                                        (let ((_%$%hd206245206275%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e206244206272%_)))
                                              (_%$%tl206246206277%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e206244206272%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl206246206277%_))
                                              (let ((__tmp206902
                                                     (lambda ()
                                                       (gxc#compile-e__1
                                                        _%self206231%_
                                                        _%$%hd206245206275%_)))
                                                    (__tmp206900
                                                     (let ((__tmp206901
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#current-expander-phi))))
                                                       (declare (not safe))
                                                       (##fx+ __tmp206901
                                                              '1))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp206902
                                                 gx#current-expander-phi
                                                 __tmp206900))
                                              (_%$%g206234206251%_
                                               _%$%g206235206254%_))))
                                      (_%$%g206234206251%_
                                       _%$%g206235206254%_))))
                              (_%$%g206234206251%_ _%$%g206235206254%_))))
                      (_%$%g206234206251%_ _%$%g206235206254%_)))))
          (_%$%g206233206297%_ _%stx206232%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self206163%_ _%stx206164%_)
        (let* ((_%$%g206166206183%_
                (lambda (_%$%g206167206180%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g206167206180%_))))
               (_%$%g206165206228%_
                (lambda (_%$%g206167206186%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g206167206186%_))
                      (let ((_%$%e206170206188%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g206167206186%_))))
                        (let ((_%$%hd206171206191%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e206170206188%_)))
                              (_%$%tl206172206193%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e206170206188%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl206172206193%_))
                              (let ((_%$%e206173206196%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl206172206193%_))))
                                (let ((_%$%hd206174206199%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e206173206196%_)))
                                      (_%$%tl206175206201%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e206173206196%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl206175206201%_))
                                      (let ((_%$%e206176206204%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl206175206201%_))))
                                        (let ((_%$%hd206177206207%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e206176206204%_)))
                                              (_%$%tl206178206209%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e206176206204%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl206178206209%_))
                                              (gxc#compile-e__1
                                               _%self206163%_
                                               _%$%hd206177206207%_)
                                              (_%$%g206166206183%_
                                               _%$%g206167206186%_))))
                                      (_%$%g206166206183%_
                                       _%$%g206167206186%_))))
                              (_%$%g206166206183%_ _%$%g206167206186%_))))
                      (_%$%g206166206183%_ _%$%g206167206186%_)))))
          (_%$%g206165206228%_ _%stx206164%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self206049%_ _%stx206050%_)
        (let* ((_%$%g206052206080%_
                (lambda (_%$%g206053206077%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g206053206077%_))))
               (_%$%g206051206160%_
                (lambda (_%$%g206053206083%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g206053206083%_))
                      (let ((_%$%e206056206085%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g206053206083%_))))
                        (let ((_%$%hd206057206088%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e206056206085%_)))
                              (_%$%tl206058206090%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e206056206085%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl206058206090%_))
                              (let ((_g206903_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl206058206090%_
                                        '0))))
                                (begin
                                  (let ((_g206904_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g206903_)
                                               (##values-length _g206903_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g206904_ 2)))
                                        (error "Context expects 2 values"
                                               _g206904_)))
                                  (let ((_%$%target206059206093%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g206903_ 0)))
                                        (_%$%tl206061206095%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g206903_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl206061206095%_))
                                        (letrec ((_%$%loop206062206098%_
                                                  (lambda (_%$%hd206060206101%_
                                                           _%$%body206066206103%_
                                                           _%$%hd206067206104%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd206060206101%_))
                                                        (let ((_%$%e206063206106%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd206060206101%_))))
                  (let ((_%$%lp-hd206064206109%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e206063206106%_)))
                        (_%$%lp-tl206065206111%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e206063206106%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd206064206109%_))
                        (let ((_%$%e206070206114%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%lp-hd206064206109%_))))
                          (let ((_%$%hd206071206117%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e206070206114%_)))
                                (_%$%tl206072206119%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e206070206114%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl206072206119%_))
                                (let ((_%$%e206073206122%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl206072206119%_))))
                                  (let ((_%$%hd206074206125%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e206073206122%_)))
                                        (_%$%tl206075206127%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e206073206122%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl206075206127%_))
                                        (_%$%loop206062206098%_
                                         _%$%lp-tl206065206111%_
                                         (cons _%$%hd206074206125%_
                                               _%$%body206066206103%_)
                                         (cons _%$%hd206071206117%_
                                               _%$%hd206067206104%_))
                                        (_%$%g206052206080%_
                                         _%$%g206053206083%_))))
                                (_%$%g206052206080%_ _%$%g206053206083%_))))
                        (_%$%g206052206080%_ _%$%g206053206083%_))))
                (let ((_%$%body206068206130%_ (reverse _%$%body206066206103%_))
                      (_%$%hd206069206131%_ (reverse _%$%hd206067206104%_)))
                  (for-each
                   (lambda (_%$%g206148206150%_)
                     (gxc#compile-e__1 _%self206049%_ _%$%g206148206150%_))
                   (let ((__tmp206905
                          (lambda (_%$%g206152206155%_ _%$%g206153206157%_)
                            (cons _%$%g206152206155%_ _%$%g206153206157%_))))
                     (declare (not safe))
                     (foldr__0 __tmp206905 '() _%$%body206068206130%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop206062206098%_
                                           _%$%target206059206093%_
                                           '()
                                           '()))
                                        (_%$%g206052206080%_
                                         _%$%g206053206083%_)))))
                              (_%$%g206052206080%_ _%$%g206053206083%_))))
                      (_%$%g206052206080%_ _%$%g206053206083%_)))))
          (_%$%g206051206160%_ _%stx206050%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self205906%_ _%stx205907%_)
        (let* ((_%$%g205909205944%_
                (lambda (_%$%g205910205941%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205910205941%_))))
               (_%$%g205908206046%_
                (lambda (_%$%g205910205947%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205910205947%_))
                      (let ((_%$%e205914205949%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205910205947%_))))
                        (let ((_%$%hd205915205952%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205914205949%_)))
                              (_%$%tl205916205954%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205914205949%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl205916205954%_))
                              (let ((_%$%e205917205957%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl205916205954%_))))
                                (let ((_%$%hd205918205960%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e205917205957%_)))
                                      (_%$%tl205919205962%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e205917205957%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd205918205960%_))
                                      (let ((_g206906_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%hd205918205960%_
                                                '0))))
                                        (begin
                                          (let ((_g206907_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g206906_)
                                                       (##values-length
                                                        _g206906_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g206907_ 2)))
                                                (error "Context expects 2 values"
                                                       _g206907_)))
                                          (let ((_%$%target205920205965%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g206906_ 0)))
                                                (_%$%tl205922205967%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g206906_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl205922205967%_))
                                                (letrec ((_%$%loop205923205970%_
                                                          (lambda (_%$%hd205921205973%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr205927205975%_
                           _%$%hd205928205976%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd205921205973%_))
                        (let ((_%$%e205924205978%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd205921205973%_))))
                          (let ((_%$%lp-hd205925205981%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e205924205978%_)))
                                (_%$%lp-tl205926205983%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e205924205978%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd205925205981%_))
                                (let ((_%$%e205931205986%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%lp-hd205925205981%_))))
                                  (let ((_%$%hd205932205989%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e205931205986%_)))
                                        (_%$%tl205933205991%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e205931205986%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl205933205991%_))
                                        (let ((_%$%e205934205994%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl205933205991%_))))
                                          (let ((_%$%hd205935205997%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e205934205994%_)))
                                                (_%$%tl205936205999%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e205934205994%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl205936205999%_))
                                                (_%$%loop205923205970%_
                                                 _%$%lp-tl205926205983%_
                                                 (cons _%$%hd205935205997%_
                                                       _%$%expr205927205975%_)
                                                 (cons _%$%hd205932205989%_
                                                       _%$%hd205928205976%_))
                                                (_%$%g205909205944%_
                                                 _%$%g205910205947%_))))
                                        (_%$%g205909205944%_
                                         _%$%g205910205947%_))))
                                (_%$%g205909205944%_ _%$%g205910205947%_))))
                        (let ((_%$%expr205929206002%_
                               (reverse _%$%expr205927205975%_))
                              (_%$%hd205930206003%_
                               (reverse _%$%hd205928205976%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl205919205962%_))
                              (let ((_%$%e205937206005%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl205919205962%_))))
                                (let ((_%$%hd205938206008%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e205937206005%_)))
                                      (_%$%tl205939206010%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e205937206005%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl205939206010%_))
                                      (for-each
                                       (lambda (_%$%g206034206036%_)
                                         (gxc#compile-e__1
                                          _%self205906%_
                                          _%$%g206034206036%_))
                                       (let ((__tmp206909
                                              (lambda (_%$%g206038206041%_
                                                       _%$%g206039206043%_)
                                                (cons _%$%g206038206041%_
                                                      _%$%g206039206043%_)))
                                             (__tmp206908
                                              (cons _%$%hd205938206008%_ '())))
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp206909
                                          __tmp206908
                                          _%$%expr205929206002%_)))
                                      (_%$%g205909205944%_
                                       _%$%g205910205947%_))))
                              (_%$%g205909205944%_ _%$%g205910205947%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop205923205970%_
                                                   _%$%target205920205965%_
                                                   '()
                                                   '()))
                                                (_%$%g205909205944%_
                                                 _%$%g205910205947%_)))))
                                      (_%$%g205909205944%_
                                       _%$%g205910205947%_))))
                              (_%$%g205909205944%_ _%$%g205910205947%_))))
                      (_%$%g205909205944%_ _%$%g205910205947%_)))))
          (_%$%g205908206046%_ _%stx205907%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self205851%_ _%stx205852%_)
        (let* ((_%$%g205854205868%_
                (lambda (_%$%g205855205865%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205855205865%_))))
               (_%$%g205853205903%_
                (lambda (_%$%g205855205871%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205855205871%_))
                      (let ((_%$%e205858205873%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205855205871%_))))
                        (let ((_%$%hd205859205876%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205858205873%_)))
                              (_%$%tl205860205878%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205858205873%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl205860205878%_))
                              (let ((_%$%e205861205881%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl205860205878%_))))
                                (let ((_%$%hd205862205884%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e205861205881%_)))
                                      (_%$%tl205863205886%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e205861205881%_))))
                                  (gxc#compile-e__1
                                   _%self205851%_
                                   (last _%$%tl205863205886%_))))
                              (_%$%g205854205868%_ _%$%g205855205871%_))))
                      (_%$%g205854205868%_ _%$%g205855205871%_)))))
          (_%$%g205853205903%_ _%stx205852%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self205783%_ _%stx205784%_)
        (let* ((_%$%g205786205803%_
                (lambda (_%$%g205787205800%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205787205800%_))))
               (_%$%g205785205848%_
                (lambda (_%$%g205787205806%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205787205806%_))
                      (let ((_%$%e205790205808%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205787205806%_))))
                        (let ((_%$%hd205791205811%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205790205808%_)))
                              (_%$%tl205792205813%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205790205808%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl205792205813%_))
                              (let ((_%$%e205793205816%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl205792205813%_))))
                                (let ((_%$%hd205794205819%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e205793205816%_)))
                                      (_%$%tl205795205821%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e205793205816%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl205795205821%_))
                                      (let ((_%$%e205796205824%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl205795205821%_))))
                                        (let ((_%$%hd205797205827%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e205796205824%_)))
                                              (_%$%tl205798205829%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e205796205824%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl205798205829%_))
                                              (gxc#compile-e__1
                                               _%self205783%_
                                               _%$%hd205797205827%_)
                                              (_%$%g205786205803%_
                                               _%$%g205787205806%_))))
                                      (_%$%g205786205803%_
                                       _%$%g205787205806%_))))
                              (_%$%g205786205803%_ _%$%g205787205806%_))))
                      (_%$%g205786205803%_ _%$%g205787205806%_)))))
          (_%$%g205785205848%_ _%stx205784%_))))
    (define gxc#apply-operands
      (lambda (_%self205698%_ _%stx205699%_)
        (let* ((_%$%g205701205720%_
                (lambda (_%$%g205702205717%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205702205717%_))))
               (_%$%g205700205780%_
                (lambda (_%$%g205702205723%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205702205723%_))
                      (let ((_%$%e205704205725%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205702205723%_))))
                        (let ((_%$%hd205705205728%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205704205725%_)))
                              (_%$%tl205706205730%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205704205725%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl205706205730%_))
                              (let ((_g206910_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl205706205730%_
                                        '0))))
                                (begin
                                  (let ((_g206911_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g206910_)
                                               (##values-length _g206910_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g206911_ 2)))
                                        (error "Context expects 2 values"
                                               _g206911_)))
                                  (let ((_%$%target205707205733%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g206910_ 0)))
                                        (_%$%tl205709205735%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g206910_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl205709205735%_))
                                        (letrec ((_%$%loop205710205738%_
                                                  (lambda (_%$%hd205708205741%_
                                                           _%$%rands205714205743%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd205708205741%_))
                                                        (let ((_%$%e205711205745%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd205708205741%_))))
                  (let ((_%$%lp-hd205712205748%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e205711205745%_)))
                        (_%$%lp-tl205713205750%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e205711205745%_))))
                    (_%$%loop205710205738%_
                     _%$%lp-tl205713205750%_
                     (cons _%$%lp-hd205712205748%_ _%$%rands205714205743%_))))
                (let ((_%$%rands205715205753%_
                       (reverse _%$%rands205714205743%_)))
                  (for-each
                   (lambda (_%$%g205768205770%_)
                     (gxc#compile-e__1 _%self205698%_ _%$%g205768205770%_))
                   (let ((__tmp206912
                          (lambda (_%$%g205772205775%_ _%$%g205773205777%_)
                            (cons _%$%g205772205775%_ _%$%g205773205777%_))))
                     (declare (not safe))
                     (foldr__0 __tmp206912 '() _%$%rands205715205753%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop205710205738%_
                                           _%$%target205707205733%_
                                           '()))
                                        (_%$%g205701205720%_
                                         _%$%g205702205723%_)))))
                              (_%$%g205701205720%_ _%$%g205702205723%_))))
                      (_%$%g205701205720%_ _%$%g205702205723%_)))))
          (_%$%g205700205780%_ _%stx205699%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx205695%_ _%src-stx205696%_)
        (let ((__tmp206913
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx205696%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx205695%_ __tmp206913))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx205691%_ _%src-stx205692%_ _%ctx205693%_)
        (gxc#compile-e__1
         _%ctx205693%_
         (gxc#xform-wrap-source _%stx205691%_ _%src-stx205692%_))))
    (define gxc#xform-begin%
      (lambda (_%self205646%_ _%stx205647%_)
        (let* ((_%$%g205649205659%_
                (lambda (_%$%g205650205656%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205650205656%_))))
               (_%$%g205648205688%_
                (lambda (_%$%g205650205662%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205650205662%_))
                      (let ((_%$%e205652205664%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205650205662%_))))
                        (let ((_%$%hd205653205667%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205652205664%_)))
                              (_%$%tl205654205669%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205652205664%_))))
                          (let ((_%forms205686%_
                                 (map (lambda (_%$%g205681205683%_)
                                        (gxc#compile-e__1
                                         _%self205646%_
                                         _%$%g205681205683%_))
                                      _%$%tl205654205669%_)))
                            (gxc#xform-wrap-source
                             (cons '%#begin _%forms205686%_)
                             _%stx205647%_))))
                      (_%$%g205649205659%_ _%$%g205650205662%_)))))
          (_%$%g205648205688%_ _%stx205647%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self205600%_ _%stx205601%_)
        (let* ((_%$%g205603205613%_
                (lambda (_%$%g205604205610%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205604205610%_))))
               (_%$%g205602205643%_
                (lambda (_%$%g205604205616%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205604205616%_))
                      (let ((_%$%e205606205618%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205604205616%_))))
                        (let ((_%$%hd205607205621%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205606205618%_)))
                              (_%$%tl205608205623%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205606205618%_))))
                          (let ((__tmp206916
                                 (lambda ()
                                   (let ((_%forms205641%_
                                          (map (lambda (_%$%g205636205638%_)
                                                 (gxc#compile-e__1
                                                  _%self205600%_
                                                  _%$%g205636205638%_))
                                               _%$%tl205608205623%_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#begin-syntax _%forms205641%_)
                                      _%stx205601%_))))
                                (__tmp206914
                                 (let ((__tmp206915
                                        (let ()
                                          (declare (not safe))
                                          (gx#current-expander-phi))))
                                   (declare (not safe))
                                   (##fx+ __tmp206915 '1))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp206916
                             gx#current-expander-phi
                             __tmp206914))))
                      (_%$%g205603205613%_ _%$%g205604205616%_)))))
          (_%$%g205602205643%_ _%stx205601%_))))
    (define gxc#xform-module%
      (lambda (_%self205537%_ _%stx205538%_)
        (let* ((_%$%g205540205554%_
                (lambda (_%$%g205541205551%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205541205551%_))))
               (_%$%g205539205597%_
                (lambda (_%$%g205541205557%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205541205557%_))
                      (let ((_%$%e205544205559%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205541205557%_))))
                        (let ((_%$%hd205545205562%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205544205559%_)))
                              (_%$%tl205546205564%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205544205559%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl205546205564%_))
                              (let ((_%$%e205547205567%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl205546205564%_))))
                                (let ((_%$%hd205548205570%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e205547205567%_)))
                                      (_%$%tl205549205572%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e205547205567%_))))
                                  (let* ((_%ctx205589%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-local-e__0
                                             _%$%hd205548205570%_)))
                                         (_%code205591%_
                                          (##structure-ref
                                           _%ctx205589%_
                                           '11
                                           gx#module-context::t
                                           '#f))
                                         (_%code205594%_
                                          (let ((__tmp206917
                                                 (lambda ()
                                                   (gxc#compile-e__1
                                                    _%self205537%_
                                                    _%code205591%_))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp206917
                                             gx#current-expander-context
                                             _%ctx205589%_))))
                                    (##structure-set!
                                     _%ctx205589%_
                                     _%code205594%_
                                     '11
                                     gx#module-context::t
                                     '#f)
                                    (gxc#xform-wrap-source
                                     (cons '%#module
                                           (cons _%$%hd205548205570%_
                                                 (cons _%code205594%_ '())))
                                     _%stx205538%_))))
                              (_%$%g205540205554%_ _%$%g205541205557%_))))
                      (_%$%g205540205554%_ _%$%g205541205557%_)))))
          (_%$%g205539205597%_ _%stx205538%_))))
    (define gxc#xform-define-values%
      (lambda (_%self205467%_ _%stx205468%_)
        (let* ((_%$%g205470205487%_
                (lambda (_%$%g205471205484%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205471205484%_))))
               (_%$%g205469205534%_
                (lambda (_%$%g205471205490%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205471205490%_))
                      (let ((_%$%e205474205492%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205471205490%_))))
                        (let ((_%$%hd205475205495%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205474205492%_)))
                              (_%$%tl205476205497%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205474205492%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl205476205497%_))
                              (let ((_%$%e205477205500%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl205476205497%_))))
                                (let ((_%$%hd205478205503%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e205477205500%_)))
                                      (_%$%tl205479205505%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e205477205500%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl205479205505%_))
                                      (let ((_%$%e205480205508%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl205479205505%_))))
                                        (let ((_%$%hd205481205511%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e205480205508%_)))
                                              (_%$%tl205482205513%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e205480205508%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl205482205513%_))
                                              (let ((_%expr205532%_
                                                     (gxc#compile-e__1
                                                      _%self205467%_
                                                      _%$%hd205481205511%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#define-values
                                                       (cons _%$%hd205478205503%_
                                                             (cons _%expr205532%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%stx205468%_))
                                              (_%$%g205470205487%_
                                               _%$%g205471205490%_))))
                                      (_%$%g205470205487%_
                                       _%$%g205471205490%_))))
                              (_%$%g205470205487%_ _%$%g205471205490%_))))
                      (_%$%g205470205487%_ _%$%g205471205490%_)))))
          (_%$%g205469205534%_ _%stx205468%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self205396%_ _%stx205397%_)
        (let* ((_%$%g205399205416%_
                (lambda (_%$%g205400205413%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205400205413%_))))
               (_%$%g205398205464%_
                (lambda (_%$%g205400205419%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205400205419%_))
                      (let ((_%$%e205403205421%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205400205419%_))))
                        (let ((_%$%hd205404205424%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205403205421%_)))
                              (_%$%tl205405205426%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205403205421%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl205405205426%_))
                              (let ((_%$%e205406205429%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl205405205426%_))))
                                (let ((_%$%hd205407205432%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e205406205429%_)))
                                      (_%$%tl205408205434%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e205406205429%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl205408205434%_))
                                      (let ((_%$%e205409205437%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl205408205434%_))))
                                        (let ((_%$%hd205410205440%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e205409205437%_)))
                                              (_%$%tl205411205442%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e205409205437%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl205411205442%_))
                                              (let ((__tmp206920
                                                     (lambda ()
                                                       (let ((_%expr205462%_
                                                              (gxc#compile-e__1
                                                               _%self205396%_
                                                               _%$%hd205410205440%_)))
                                                         (gxc#xform-wrap-source
                                                          (cons '%#define-syntax
                                                                (cons _%$%hd205407205432%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%expr205462%_ '())))
                  _%stx205397%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp206918
                                                     (let ((__tmp206919
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#current-expander-phi))))
                                                       (declare (not safe))
                                                       (##fx+ __tmp206919
                                                              '1))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp206920
                                                 gx#current-expander-phi
                                                 __tmp206918))
                                              (_%$%g205399205416%_
                                               _%$%g205400205419%_))))
                                      (_%$%g205399205416%_
                                       _%$%g205400205419%_))))
                              (_%$%g205399205416%_ _%$%g205400205419%_))))
                      (_%$%g205399205416%_ _%$%g205400205419%_)))))
          (_%$%g205398205464%_ _%stx205397%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self205326%_ _%stx205327%_)
        (let* ((_%$%g205329205346%_
                (lambda (_%$%g205330205343%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205330205343%_))))
               (_%$%g205328205393%_
                (lambda (_%$%g205330205349%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205330205349%_))
                      (let ((_%$%e205333205351%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205330205349%_))))
                        (let ((_%$%hd205334205354%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205333205351%_)))
                              (_%$%tl205335205356%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205333205351%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl205335205356%_))
                              (let ((_%$%e205336205359%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl205335205356%_))))
                                (let ((_%$%hd205337205362%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e205336205359%_)))
                                      (_%$%tl205338205364%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e205336205359%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl205338205364%_))
                                      (let ((_%$%e205339205367%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl205338205364%_))))
                                        (let ((_%$%hd205340205370%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e205339205367%_)))
                                              (_%$%tl205341205372%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e205339205367%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl205341205372%_))
                                              (let ((_%expr205391%_
                                                     (gxc#compile-e__1
                                                      _%self205326%_
                                                      _%$%hd205340205370%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#begin-annotation
                                                       (cons _%$%hd205337205362%_
                                                             (cons _%expr205391%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%stx205327%_))
                                              (_%$%g205329205346%_
                                               _%$%g205330205349%_))))
                                      (_%$%g205329205346%_
                                       _%$%g205330205349%_))))
                              (_%$%g205329205346%_ _%$%g205330205349%_))))
                      (_%$%g205329205346%_ _%$%g205330205349%_)))))
          (_%$%g205328205393%_ _%stx205327%_))))
    (define gxc#xform-lambda%
      (lambda (_%self205264%_ _%stx205265%_)
        (let* ((_%$%g205267205281%_
                (lambda (_%$%g205268205278%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205268205278%_))))
               (_%$%g205266205323%_
                (lambda (_%$%g205268205284%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205268205284%_))
                      (let ((_%$%e205271205286%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205268205284%_))))
                        (let ((_%$%hd205272205289%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205271205286%_)))
                              (_%$%tl205273205291%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205271205286%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl205273205291%_))
                              (let ((_%$%e205274205294%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl205273205291%_))))
                                (let ((_%$%hd205275205297%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e205274205294%_)))
                                      (_%$%tl205276205299%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e205274205294%_))))
                                  (let ((__tmp206922
                                         (lambda ()
                                           (let ((_%body205321%_
                                                  (map (lambda (_%$%g205316205318%_)
                                                         (gxc#compile-e__1
                                                          _%self205264%_
                                                          _%$%g205316205318%_))
                                                       _%$%tl205276205299%_)))
                                             (gxc#xform-wrap-source
                                              (cons '%#lambda
                                                    (cons _%$%hd205275205297%_
                                                          _%body205321%_))
                                              _%stx205265%_))))
                                        (__tmp206921
                                         (gxc#xform-let-locals
                                          _%$%hd205275205297%_)))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp206922
                                     gxc#current-compile-local-env
                                     __tmp206921))))
                              (_%$%g205267205281%_ _%$%g205268205284%_))))
                      (_%$%g205267205281%_ _%$%g205268205284%_)))))
          (_%$%g205266205323%_ _%stx205265%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self205172%_ _%stx205173%_)
        (letrec ((_%clause-e205175%_
                  (lambda (_%clause205216%_)
                    (let* ((_%$%g205218205229%_
                            (lambda (_%$%g205219205226%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g205219205226%_))))
                           (_%$%g205217205261%_
                            (lambda (_%$%g205219205232%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%g205219205232%_))
                                  (let ((_%$%e205222205234%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%g205219205232%_))))
                                    (let ((_%$%hd205223205237%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e205222205234%_)))
                                          (_%$%tl205224205239%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e205222205234%_))))
                                      (let ((__tmp206924
                                             (lambda ()
                                               (let ((_%body205259%_
                                                      (map (lambda (_%$%g205254205256%_)
                                                             (gxc#compile-e__1
                                                              _%self205172%_
                                                              _%$%g205254205256%_))
                                                           _%$%tl205224205239%_)))
                                                 (cons _%$%hd205223205237%_
                                                       _%body205259%_))))
                                            (__tmp206923
                                             (gxc#xform-let-locals
                                              _%$%hd205223205237%_)))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp206924
                                         gxc#current-compile-local-env
                                         __tmp206923))))
                                  (_%$%g205218205229%_ _%$%g205219205232%_)))))
                      (_%$%g205217205261%_ _%clause205216%_)))))
          (let* ((_%$%g205177205187%_
                  (lambda (_%$%g205178205184%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g205178205184%_))))
                 (_%$%g205176205213%_
                  (lambda (_%$%g205178205190%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g205178205190%_))
                        (let ((_%$%e205180205192%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g205178205190%_))))
                          (let ((_%$%hd205181205195%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e205180205192%_)))
                                (_%$%tl205182205197%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e205180205192%_))))
                            (let ((_%clauses205211%_
                                   (map _%clause-e205175%_
                                        _%$%tl205182205197%_)))
                              (gxc#xform-wrap-source
                               (cons '%#case-lambda _%clauses205211%_)
                               _%stx205173%_))))
                        (_%$%g205177205187%_ _%$%g205178205190%_)))))
            (_%$%g205176205213%_ _%stx205173%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self204932%_ _%stx204933%_)
        (let* ((_%$%g204935204968%_
                (lambda (_%$%g204936204965%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204936204965%_))))
               (_%$%g204934205169%_
                (lambda (_%$%g204936204971%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204936204971%_))
                      (let ((_%$%e204941204973%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204936204971%_))))
                        (let ((_%$%hd204942204976%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204941204973%_)))
                              (_%$%tl204943204978%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204941204973%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl204943204978%_))
                              (let ((_%$%e204944204981%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl204943204978%_))))
                                (let ((_%$%hd204945204984%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e204944204981%_)))
                                      (_%$%tl204946204986%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e204944204981%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd204945204984%_))
                                      (let ((_g206925_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%hd204945204984%_
                                                '0))))
                                        (begin
                                          (let ((_g206926_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g206925_)
                                                       (##values-length
                                                        _g206925_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g206926_ 2)))
                                                (error "Context expects 2 values"
                                                       _g206926_)))
                                          (let ((_%$%target204947204989%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g206925_ 0)))
                                                (_%$%tl204949204991%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g206925_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl204949204991%_))
                                                (letrec ((_%$%loop204950204994%_
                                                          (lambda (_%$%hd204948204997%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr204954204999%_
                           _%$%hd204955205000%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd204948204997%_))
                        (let ((_%$%e204951205002%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd204948204997%_))))
                          (let ((_%$%lp-hd204952205005%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e204951205002%_)))
                                (_%$%lp-tl204953205007%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e204951205002%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd204952205005%_))
                                (let ((_%$%e204958205010%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%lp-hd204952205005%_))))
                                  (let ((_%$%hd204959205013%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e204958205010%_)))
                                        (_%$%tl204960205015%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e204958205010%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl204960205015%_))
                                        (let ((_%$%e204961205018%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl204960205015%_))))
                                          (let ((_%$%hd204962205021%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e204961205018%_)))
                                                (_%$%tl204963205023%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e204961205018%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl204963205023%_))
                                                (_%$%loop204950204994%_
                                                 _%$%lp-tl204953205007%_
                                                 (cons _%$%hd204962205021%_
                                                       _%$%expr204954204999%_)
                                                 (cons _%$%hd204959205013%_
                                                       _%$%hd204955205000%_))
                                                (_%$%g204935204968%_
                                                 _%$%g204936204971%_))))
                                        (_%$%g204935204968%_
                                         _%$%g204936204971%_))))
                                (_%$%g204935204968%_ _%$%g204936204971%_))))
                        (let ((_%$%expr204956205026%_
                               (reverse _%$%expr204954204999%_))
                              (_%$%hd204957205027%_
                               (reverse _%$%hd204955205000%_)))
                          (let* ((_%$%g205051205067%_
                                  (lambda (_%$%g205052205064%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%$%g205052205064%_))))
                                 (_%$%g205050205155%_
                                  (lambda (_%$%g205052205070%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%g205052205070%_))
                                        (let ((_g206927_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%$%g205052205070%_
                                                  '0))))
                                          (begin
                                            (let ((_g206928_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g206927_)
                                                         (##values-length
                                                          _g206927_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g206928_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g206928_)))
                                            (let ((_%$%target205054205072%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g206927_
                                                      0)))
                                                  (_%$%tl205056205074%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g206927_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl205056205074%_))
                                                  (letrec ((_%$%loop205057205077%_
                                                            (lambda (_%$%hd205055205080%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%expr205061205082%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd205055205080%_))
                          (let ((_%$%e205058205084%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%hd205055205080%_))))
                            (let ((_%$%lp-hd205059205087%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e205058205084%_)))
                                  (_%$%lp-tl205060205089%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e205058205084%_))))
                              (_%$%loop205057205077%_
                               _%$%lp-tl205060205089%_
                               (cons _%$%lp-hd205059205087%_
                                     _%$%expr205061205082%_))))
                          (let ((_%$%expr205062205092%_
                                 (reverse _%$%expr205061205082%_)))
                            (let ((__tmp206931
                                   (lambda ()
                                     (let* ((_%$%g205108205115%_
                                             (lambda (_%$%g205109205112%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%$%g205109205112%_))))
                                            (_%$%g205107205141%_
                                             (lambda (_%$%g205109205118%_)
                                               (gxc#xform-wrap-source
                                                (cons _%$%hd204942204976%_
                                                      (cons (begin
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-check-splice-targets
                         _%$%expr205062205092%_
                         _%$%hd204957205027%_))
                      (let ((__tmp206932
                             (lambda (_%$%g205130205134%_
                                      _%$%g205131205136%_
                                      _%$%g205132205138%_)
                               (cons (cons _%$%g205131205136%_
                                           (cons _%$%g205130205134%_ '()))
                                     _%$%g205132205138%_))))
                        (declare (not safe))
                        (foldr__1
                         __tmp206932
                         '()
                         _%$%expr205062205092%_
                         _%$%hd204957205027%_)))
                    _%$%g205109205118%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%stx204933%_))))
                                       (_%$%g205107205141%_
                                        (map (lambda (_%$%g205143205145%_)
                                               (gxc#compile-e__1
                                                _%self204932%_
                                                _%$%g205143205145%_))
                                             _%$%tl204946204986%_)))))
                                  (__tmp206929
                                   (gxc#xform-let-locals
                                    (let ((__tmp206930
                                           (lambda (_%$%g205147205150%_
                                                    _%$%g205148205152%_)
                                             (cons _%$%g205147205150%_
                                                   _%$%g205148205152%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp206930
                                       '()
                                       _%$%hd204957205027%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp206931
                               gxc#current-compile-local-env
                               __tmp206929)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%loop205057205077%_
                                                     _%$%target205054205072%_
                                                     '()))
                                                  (_%$%g205051205067%_
                                                   _%$%g205052205070%_)))))
                                        (_%$%g205051205067%_
                                         _%$%g205052205070%_)))))
                            (_%$%g205050205155%_
                             (map (lambda (_%$%g205157205159%_)
                                    (gxc#compile-e__1
                                     _%self204932%_
                                     _%$%g205157205159%_))
                                  (let ((__tmp206933
                                         (lambda (_%$%g205161205164%_
                                                  _%$%g205162205166%_)
                                           (cons _%$%g205161205164%_
                                                 _%$%g205162205166%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp206933
                                     '()
                                     _%$%expr204956205026%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop204950204994%_
                                                   _%$%target204947204989%_
                                                   '()
                                                   '()))
                                                (_%$%g204935204968%_
                                                 _%$%g204936204971%_)))))
                                      (_%$%g204935204968%_
                                       _%$%g204936204971%_))))
                              (_%$%g204935204968%_ _%$%g204936204971%_))))
                      (_%$%g204935204968%_ _%$%g204936204971%_)))))
          (_%$%g204934205169%_ _%stx204933%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self204692%_ _%stx204693%_)
        (let* ((_%$%g204695204728%_
                (lambda (_%$%g204696204725%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204696204725%_))))
               (_%$%g204694204929%_
                (lambda (_%$%g204696204731%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204696204731%_))
                      (let ((_%$%e204701204733%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204696204731%_))))
                        (let ((_%$%hd204702204736%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204701204733%_)))
                              (_%$%tl204703204738%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204701204733%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl204703204738%_))
                              (let ((_%$%e204704204741%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl204703204738%_))))
                                (let ((_%$%hd204705204744%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e204704204741%_)))
                                      (_%$%tl204706204746%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e204704204741%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd204705204744%_))
                                      (let ((_g206934_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%hd204705204744%_
                                                '0))))
                                        (begin
                                          (let ((_g206935_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g206934_)
                                                       (##values-length
                                                        _g206934_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g206935_ 2)))
                                                (error "Context expects 2 values"
                                                       _g206935_)))
                                          (let ((_%$%target204707204749%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g206934_ 0)))
                                                (_%$%tl204709204751%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g206934_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl204709204751%_))
                                                (letrec ((_%$%loop204710204754%_
                                                          (lambda (_%$%hd204708204757%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr204714204759%_
                           _%$%hd204715204760%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd204708204757%_))
                        (let ((_%$%e204711204762%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd204708204757%_))))
                          (let ((_%$%lp-hd204712204765%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e204711204762%_)))
                                (_%$%lp-tl204713204767%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e204711204762%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd204712204765%_))
                                (let ((_%$%e204718204770%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%lp-hd204712204765%_))))
                                  (let ((_%$%hd204719204773%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e204718204770%_)))
                                        (_%$%tl204720204775%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e204718204770%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl204720204775%_))
                                        (let ((_%$%e204721204778%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl204720204775%_))))
                                          (let ((_%$%hd204722204781%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e204721204778%_)))
                                                (_%$%tl204723204783%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e204721204778%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl204723204783%_))
                                                (_%$%loop204710204754%_
                                                 _%$%lp-tl204713204767%_
                                                 (cons _%$%hd204722204781%_
                                                       _%$%expr204714204759%_)
                                                 (cons _%$%hd204719204773%_
                                                       _%$%hd204715204760%_))
                                                (_%$%g204695204728%_
                                                 _%$%g204696204731%_))))
                                        (_%$%g204695204728%_
                                         _%$%g204696204731%_))))
                                (_%$%g204695204728%_ _%$%g204696204731%_))))
                        (let ((_%$%expr204716204786%_
                               (reverse _%$%expr204714204759%_))
                              (_%$%hd204717204787%_
                               (reverse _%$%hd204715204760%_)))
                          (let ((__tmp206938
                                 (lambda ()
                                   (let* ((_%$%g204812204828%_
                                           (lambda (_%$%g204813204825%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%$%g204813204825%_))))
                                          (_%$%g204811204908%_
                                           (lambda (_%$%g204813204831%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair/null?
                                                    _%$%g204813204831%_))
                                                 (let ((_g206939_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-split-splice
                                                           _%$%g204813204831%_
                                                           '0))))
                                                   (begin
                                                     (let ((_g206940_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g206939_)
                          (##values-length _g206939_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g206940_ 2)))
                   (error "Context expects 2 values" _g206940_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%$%target204815204833%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g206939_
                                                               0)))
                                                           (_%$%tl204817204835%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g206939_
                                                               1))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl204817204835%_))
                                                           (letrec ((_%$%loop204818204838%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%$%hd204816204841%_
                                      _%$%expr204822204843%_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd204816204841%_))
                                   (let ((_%$%e204819204845%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e
                                             _%$%hd204816204841%_))))
                                     (let ((_%$%lp-hd204820204848%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e204819204845%_)))
                                           (_%$%lp-tl204821204850%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e204819204845%_))))
                                       (_%$%loop204818204838%_
                                        _%$%lp-tl204821204850%_
                                        (cons _%$%lp-hd204820204848%_
                                              _%$%expr204822204843%_))))
                                   (let* ((_%$%expr204823204853%_
                                           (reverse _%$%expr204822204843%_))
                                          (_%$%g204869204876%_
                                           (lambda (_%$%g204870204873%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%$%g204870204873%_))))
                                          (_%$%g204868204901%_
                                           (lambda (_%$%g204870204879%_)
                                             (gxc#xform-wrap-source
                                              (cons _%$%hd204702204736%_
                                                    (cons (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _%$%expr204823204853%_
                                                               _%$%hd204717204787%_))
                                                            (let ((__tmp206941
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%$%g204890204894%_
                                    _%$%g204891204896%_
                                    _%$%g204892204898%_)
                             (cons (cons _%$%g204891204896%_
                                         (cons _%$%g204890204894%_ '()))
                                   _%$%g204892204898%_))))
                      (declare (not safe))
                      (foldr__1
                       __tmp206941
                       '()
                       _%$%expr204823204853%_
                       _%$%hd204717204787%_)))
                  _%$%g204870204879%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%stx204693%_))))
                                     (_%$%g204868204901%_
                                      (map (lambda (_%$%g204903204905%_)
                                             (gxc#compile-e__1
                                              _%self204692%_
                                              _%$%g204903204905%_))
                                           _%$%tl204706204746%_)))))))
                     (_%$%loop204818204838%_ _%$%target204815204833%_ '()))
                   (_%$%g204812204828%_ _%$%g204813204831%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g204812204828%_
                                                  _%$%g204813204831%_)))))
                                     (_%$%g204811204908%_
                                      (map (lambda (_%$%g204910204912%_)
                                             (gxc#compile-e__1
                                              _%self204692%_
                                              _%$%g204910204912%_))
                                           (let ((__tmp206942
                                                  (lambda (_%$%g204914204917%_
                                                           _%$%g204915204919%_)
                                                    (cons _%$%g204914204917%_
                                                          _%$%g204915204919%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp206942
                                              '()
                                              _%$%expr204716204786%_)))))))
                                (__tmp206936
                                 (gxc#xform-let-locals
                                  (let ((__tmp206937
                                         (lambda (_%$%g204921204924%_
                                                  _%$%g204922204926%_)
                                           (cons _%$%g204921204924%_
                                                 _%$%g204922204926%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp206937
                                     '()
                                     _%$%hd204717204787%_)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp206938
                             gxc#current-compile-local-env
                             __tmp206936)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop204710204754%_
                                                   _%$%target204707204749%_
                                                   '()
                                                   '()))
                                                (_%$%g204695204728%_
                                                 _%$%g204696204731%_)))))
                                      (_%$%g204695204728%_
                                       _%$%g204696204731%_))))
                              (_%$%g204695204728%_ _%$%g204696204731%_))))
                      (_%$%g204695204728%_ _%$%g204696204731%_)))))
          (_%$%g204694204929%_ _%stx204693%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings204559%_)
        (letrec ((_%flatten204561%_
                  (lambda (_%maybe-lst204619%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst204619%_))
                        (cons _%maybe-lst204619%_ '())
                        (let _%loop204621%_ ((_%rest204623%_
                                              _%maybe-lst204619%_)
                                             (_%result204624%_ '()))
                          (let* ((_%__stx206828206829%_ _%rest204623%_)
                                 (_%$%g204628204640%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx206828206829%_)))))
                            (let ((_%__kont206830206831%_
                                   (lambda (_%$%g204630204678%_
                                            _%$%g204631204679%_)
                                     (_%loop204621%_
                                      _%$%g204630204678%_
                                      (let ((__tmp206943
                                             (_%flatten204561%_
                                              _%$%g204631204679%_)))
                                        (declare (not safe))
                                        (foldl__0
                                         cons
                                         _%result204624%_
                                         __tmp206943)))))
                                  (_%__kont206832206833%_
                                   (lambda (_%$%g204635204652%_)
                                     (cons _%$%g204635204652%_
                                           _%result204624%_)))
                                  (_%__kont206834206835%_
                                   (lambda () _%result204624%_)))
                              (let ((_%$%g204626204665%_
                                     (lambda ()
                                       (let ((_%$%g204635204652%_
                                              _%__stx206828206829%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%$%g204635204652%_))
                                             (_%__kont206832206833%_
                                              _%$%g204635204652%_)
                                             (_%__kont206834206835%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx206828206829%_))
                                    (let ((_%$%e204632204670%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx206828206829%_))))
                                      (let ((_%$%tl204634204675%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e204632204670%_)))
                                            (_%$%hd204633204673%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e204632204670%_))))
                                        (_%__kont206830206831%_
                                         _%$%tl204634204675%_
                                         _%$%hd204633204673%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g204626204665%_)))))))))))
          (let _%loop204563%_ ((_%rest204565%_
                                (_%flatten204561%_ _%bindings204559%_))
                               (_%locals204566%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%$%rest204567204578%_ _%rest204565%_)
                   (_%$%E204571204582%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%$%rest204567204578%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%$%K204574204607%_
                     (lambda (_%rest204604%_ _%id204605%_)
                       (_%loop204563%_
                        _%rest204604%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id204605%_))
                              _%locals204566%_))))
                    (_%$%K204573204596%_
                     (lambda (_%id204594%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id204594%_))
                             _%locals204566%_)))
                    (_%$%K204572204587%_ (lambda () _%locals204566%_)))
                (let ((_%$%try-match204569204601%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%$%rest204567204578%_))
                             (let ((_%id204599%_ _%$%rest204567204578%_))
                               (_%$%K204573204596%_ _%id204599%_))
                             (_%$%K204572204587%_)))))
                  (if (pair? _%$%rest204567204578%_)
                      (let ((_%$%tl204576204612%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%rest204567204578%_)))
                            (_%$%hd204575204610%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%rest204567204578%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%$%hd204575204610%_))
                            (let ((_%id204615%_ _%$%hd204575204610%_)
                                  (_%rest204617%_ _%$%tl204576204612%_))
                              (_%$%K204574204607%_
                               _%rest204617%_
                               _%id204615%_))
                            (_%$%K204572204587%_)))
                      (_%$%try-match204569204601%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self204511%_ _%stx204512%_)
        (let* ((_%$%g204514204525%_
                (lambda (_%$%g204515204522%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204515204522%_))))
               (_%$%g204513204556%_
                (lambda (_%$%g204515204528%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204515204528%_))
                      (let ((_%$%e204518204530%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204515204528%_))))
                        (let ((_%$%hd204519204533%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204518204530%_)))
                              (_%$%tl204520204535%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204518204530%_))))
                          (let ((_%rands204554%_
                                 (map (lambda (_%$%g204549204551%_)
                                        (gxc#compile-e__1
                                         _%self204511%_
                                         _%$%g204549204551%_))
                                      _%$%tl204520204535%_)))
                            (gxc#xform-wrap-source
                             (cons _%$%hd204519204533%_ _%rands204554%_)
                             _%stx204512%_))))
                      (_%$%g204514204525%_ _%$%g204515204528%_)))))
          (_%$%g204513204556%_ _%stx204512%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self204441%_ _%stx204442%_)
        (let* ((_%$%g204444204461%_
                (lambda (_%$%g204445204458%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204445204458%_))))
               (_%$%g204443204508%_
                (lambda (_%$%g204445204464%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204445204464%_))
                      (let ((_%$%e204448204466%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204445204464%_))))
                        (let ((_%$%hd204449204469%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204448204466%_)))
                              (_%$%tl204450204471%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204448204466%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl204450204471%_))
                              (let ((_%$%e204451204474%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl204450204471%_))))
                                (let ((_%$%hd204452204477%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e204451204474%_)))
                                      (_%$%tl204453204479%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e204451204474%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl204453204479%_))
                                      (let ((_%$%e204454204482%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl204453204479%_))))
                                        (let ((_%$%hd204455204485%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e204454204482%_)))
                                              (_%$%tl204456204487%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e204454204482%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl204456204487%_))
                                              (let ((_%expr204506%_
                                                     (gxc#compile-e__1
                                                      _%self204441%_
                                                      _%$%hd204455204485%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#set!
                                                       (cons _%$%hd204452204477%_
                                                             (cons _%expr204506%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%stx204442%_))
                                              (_%$%g204444204461%_
                                               _%$%g204445204464%_))))
                                      (_%$%g204444204461%_
                                       _%$%g204445204464%_))))
                              (_%$%g204444204461%_ _%$%g204445204464%_))))
                      (_%$%g204444204461%_ _%$%g204445204464%_)))))
          (_%$%g204443204508%_ _%stx204442%_))))))
