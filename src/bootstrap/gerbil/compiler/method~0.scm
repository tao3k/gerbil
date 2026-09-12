(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1789188909)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx204611%_)
        (if gxc#__DEBUG-COMPILE
            (let ((__tmp204833
                   (let ()
                     (declare (not safe))
                     (gx#syntax->datum _%stx204611%_))))
              (declare (not safe))
              (displayln '"@compile " __tmp204833))
            '#!void)
        (let* ((_%self204613%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e204615%_
                (let ((__tmp204834 (gxc#stx-car-e _%stx204611%_)))
                  (declare (not safe))
                  (method-ref _%self204613%_ __tmp204834))))
          (if _%$e204615%_
              (let ()
                (declare (not safe))
                (let ((_%$e204621%_ (gx#stx-source _%stx204611%_)))
                  (if _%$e204621%_
                      (call-with-parameters__1
                       (lambda () (_%$e204615%_ _%self204613%_ _%stx204611%_))
                       gxc#current-compile-context
                       (cons (list '@ _%$e204621%_)
                             (let ((_%$e204628%_
                                    (gxc#current-compile-context)))
                               (if _%$e204628%_ _%$e204628%_ '()))))
                      (_%$e204615%_ _%self204613%_ _%stx204611%_))))
              (let ((__tmp204836 (gxc#stx-car-e _%stx204611%_))
                    (__tmp204835
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx204611%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self204613%_
                       __tmp204836
                       __tmp204835))))))
    (define gxc#compile-e__1
      (lambda (_%self204633%_ _%stx204634%_)
        (if gxc#__DEBUG-COMPILE
            (let ((__tmp204837
                   (let ()
                     (declare (not safe))
                     (gx#syntax->datum _%stx204634%_))))
              (declare (not safe))
              (displayln '"@compile " __tmp204837))
            '#!void)
        (let ((_%$e204636%_
               (let ((__tmp204838 (gxc#stx-car-e _%stx204634%_)))
                 (declare (not safe))
                 (method-ref _%self204633%_ __tmp204838))))
          (if _%$e204636%_
              (let ()
                (declare (not safe))
                (let ((_%$e204642%_ (gx#stx-source _%stx204634%_)))
                  (if _%$e204642%_
                      (call-with-parameters__1
                       (lambda () (_%$e204636%_ _%self204633%_ _%stx204634%_))
                       gxc#current-compile-context
                       (cons (list '@ _%$e204642%_)
                             (let ((_%$e204649%_
                                    (gxc#current-compile-context)))
                               (if _%$e204649%_ _%$e204649%_ '()))))
                      (_%$e204636%_ _%self204633%_ _%stx204634%_))))
              (let ((__tmp204840 (gxc#stx-car-e _%stx204634%_))
                    (__tmp204839
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx204634%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self204633%_
                       __tmp204840
                       __tmp204839))))))
    (define gxc#compile-e
      (lambda _g204841_
        (let ((_g204842_ (let () (declare (not safe)) (##length _g204841_))))
          (cond ((let () (declare (not safe)) (##fx= _g204842_ 1))
                 (apply gxc#compile-e__0 _g204841_))
                ((let () (declare (not safe)) (##fx= _g204842_ 2))
                 (apply gxc#compile-e__1 _g204841_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g204841_))))))
    (define gxc#stx-car-e
      (lambda (_%stx204609%_)
        (let ((__tmp204843
               (car (let () (declare (not safe)) (gx#stx-e _%stx204609%_)))))
          (declare (not safe))
          (gx#stx-e __tmp204843))))
    (define gxc#void-method (lambda (_%self204606%_ _%stx204607%_) '#!void))
    (define gxc#false-method (lambda (_%self204603%_ _%stx204604%_) '#f))
    (define gxc#true-method (lambda (_%self204600%_ _%stx204601%_) '#t))
    (define gxc#identity-method
      (lambda (_%self204597%_ _%stx204598%_) _%stx204598%_))
    (define gxc#::void-expression::t
      (let ((__tmp204844 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp204844
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args204594%_
        (apply make-instance gxc#::void-expression::t _%$args204594%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp204845
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
        (__make-atomic-promise __tmp204845)))
    (define gxc#::void-special-form::t
      (let ((__tmp204846 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp204846
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args204590%_
        (apply make-instance gxc#::void-special-form::t _%$args204590%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp204847
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
        (__make-atomic-promise __tmp204847)))
    (define gxc#::void::t
      (let ((__tmp204848
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp204848 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args204586%_
        (apply make-instance gxc#::void::t _%$args204586%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp204849
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp204849)))
    (define gxc#::false-expression::t
      (let ((__tmp204850 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp204850
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args204582%_
        (apply make-instance gxc#::false-expression::t _%$args204582%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp204851
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
        (__make-atomic-promise __tmp204851)))
    (define gxc#::false-special-form::t
      (let ((__tmp204852 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp204852
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args204578%_
        (apply make-instance gxc#::false-special-form::t _%$args204578%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp204853
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
        (__make-atomic-promise __tmp204853)))
    (define gxc#::false::t
      (let ((__tmp204854
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp204854 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args204574%_
        (apply make-instance gxc#::false::t _%$args204574%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp204855
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp204855)))
    (define gxc#::identity-expression::t
      (let ((__tmp204856 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp204856
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args204570%_
        (apply make-instance gxc#::identity-expression::t _%$args204570%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp204857
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
        (__make-atomic-promise __tmp204857)))
    (define gxc#::identity-special-form::t
      (let ((__tmp204858 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp204858
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args204566%_
        (apply make-instance gxc#::identity-special-form::t _%$args204566%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp204859
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
        (__make-atomic-promise __tmp204859)))
    (define gxc#::identity::t
      (let ((__tmp204860
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp204860
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args204562%_
        (apply make-instance gxc#::identity::t _%$args204562%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp204861
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp204861)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp204862 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp204862
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args204558%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args204558%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp204863
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
        (__make-atomic-promise __tmp204863)))
    (define gxc#::basic-xform::t
      (let ((__tmp204864
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp204864
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args204554%_
        (apply make-instance gxc#::basic-xform::t _%$args204554%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp204865
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
        (__make-atomic-promise __tmp204865)))
    (define gxc#apply-begin%
      (lambda (_%self204510%_ _%stx204511%_)
        (let* ((_%$%g204513204523%_
                (lambda (_%$%g204514204520%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204514204520%_))))
               (_%$%g204512204550%_
                (lambda (_%$%g204514204526%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204514204526%_))
                      (let ((_%$%e204516204528%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204514204526%_))))
                        (let ((_%$%hd204517204531%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204516204528%_)))
                              (_%$%tl204518204533%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204516204528%_))))
                          (for-each
                           (lambda (_%$%g204545204547%_)
                             (gxc#compile-e__1
                              _%self204510%_
                              _%$%g204545204547%_))
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl204518204533%_)))))
                      (_%$%g204513204523%_ _%$%g204514204526%_)))))
          (_%$%g204512204550%_ _%stx204511%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self204471%_ _%stx204472%_)
        (let* ((_%$%g204474204484%_
                (lambda (_%$%g204475204481%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204475204481%_))))
               (_%$%g204473204507%_
                (lambda (_%$%g204475204487%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204475204487%_))
                      (let ((_%$%e204477204489%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204475204487%_))))
                        (let ((_%$%hd204478204492%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204477204489%_)))
                              (_%$%tl204479204494%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204477204489%_))))
                          (gxc#compile-e__1
                           _%self204471%_
                           (last _%$%tl204479204494%_))))
                      (_%$%g204474204484%_ _%$%g204475204487%_)))))
          (_%$%g204473204507%_ _%stx204472%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self204467%_ _%stx204468%_)
        (let ((__tmp204868
               (lambda () (gxc#apply-begin% _%self204467%_ _%stx204468%_)))
              (__tmp204866
               (let ((__tmp204867
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp204867 '1))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp204868
           gx#current-expander-phi
           __tmp204866))))
    (define gxc#apply-module%
      (lambda (_%self204406%_ _%stx204407%_)
        (let* ((_%$%g204409204423%_
                (lambda (_%$%g204410204420%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204410204420%_))))
               (_%$%g204408204464%_
                (lambda (_%$%g204410204426%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204410204426%_))
                      (let ((_%$%e204413204428%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204410204426%_))))
                        (let ((_%$%hd204414204431%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204413204428%_)))
                              (_%$%tl204415204433%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204413204428%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl204415204433%_))
                              (let ((_%$%e204416204436%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl204415204433%_))))
                                (let ((_%$%hd204417204439%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e204416204436%_)))
                                      (_%$%tl204418204441%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e204416204436%_))))
                                  (let* ((_%ctx204458%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-local-e__0
                                             _%$%hd204417204439%_)))
                                         (_%ctx-stx204460%_
                                          (##structure-ref
                                           _%ctx204458%_
                                           '11
                                           gx#module-context::t
                                           '#f))
                                         (__tmp204869
                                          (lambda ()
                                            (gxc#compile-e__1
                                             _%self204406%_
                                             _%ctx-stx204460%_))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp204869
                                     gx#current-expander-context
                                     _%ctx204458%_))))
                              (_%$%g204409204423%_ _%$%g204410204426%_))))
                      (_%$%g204409204423%_ _%$%g204410204426%_)))))
          (_%$%g204408204464%_ _%stx204407%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self204338%_ _%stx204339%_)
        (let* ((_%$%g204341204358%_
                (lambda (_%$%g204342204355%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204342204355%_))))
               (_%$%g204340204403%_
                (lambda (_%$%g204342204361%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204342204361%_))
                      (let ((_%$%e204345204363%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204342204361%_))))
                        (let ((_%$%hd204346204366%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204345204363%_)))
                              (_%$%tl204347204368%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204345204363%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl204347204368%_))
                              (let ((_%$%e204348204371%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl204347204368%_))))
                                (let ((_%$%hd204349204374%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e204348204371%_)))
                                      (_%$%tl204350204376%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e204348204371%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl204350204376%_))
                                      (let ((_%$%e204351204379%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl204350204376%_))))
                                        (let ((_%$%hd204352204382%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e204351204379%_)))
                                              (_%$%tl204353204384%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e204351204379%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl204353204384%_))
                                              (gxc#compile-e__1
                                               _%self204338%_
                                               _%$%hd204352204382%_)
                                              (_%$%g204341204358%_
                                               _%$%g204342204361%_))))
                                      (_%$%g204341204358%_
                                       _%$%g204342204361%_))))
                              (_%$%g204341204358%_ _%$%g204342204361%_))))
                      (_%$%g204341204358%_ _%$%g204342204361%_)))))
          (_%$%g204340204403%_ _%stx204339%_))))
    (define gxc#apply-define-values%
      (lambda (_%self204270%_ _%stx204271%_)
        (let* ((_%$%g204273204290%_
                (lambda (_%$%g204274204287%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204274204287%_))))
               (_%$%g204272204335%_
                (lambda (_%$%g204274204293%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204274204293%_))
                      (let ((_%$%e204277204295%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204274204293%_))))
                        (let ((_%$%hd204278204298%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204277204295%_)))
                              (_%$%tl204279204300%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204277204295%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl204279204300%_))
                              (let ((_%$%e204280204303%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl204279204300%_))))
                                (let ((_%$%hd204281204306%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e204280204303%_)))
                                      (_%$%tl204282204308%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e204280204303%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl204282204308%_))
                                      (let ((_%$%e204283204311%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl204282204308%_))))
                                        (let ((_%$%hd204284204314%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e204283204311%_)))
                                              (_%$%tl204285204316%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e204283204311%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl204285204316%_))
                                              (gxc#compile-e__1
                                               _%self204270%_
                                               _%$%hd204284204314%_)
                                              (_%$%g204273204290%_
                                               _%$%g204274204293%_))))
                                      (_%$%g204273204290%_
                                       _%$%g204274204293%_))))
                              (_%$%g204273204290%_ _%$%g204274204293%_))))
                      (_%$%g204273204290%_ _%$%g204274204293%_)))))
          (_%$%g204272204335%_ _%stx204271%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self204201%_ _%stx204202%_)
        (let* ((_%$%g204204204221%_
                (lambda (_%$%g204205204218%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204205204218%_))))
               (_%$%g204203204267%_
                (lambda (_%$%g204205204224%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204205204224%_))
                      (let ((_%$%e204208204226%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204205204224%_))))
                        (let ((_%$%hd204209204229%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204208204226%_)))
                              (_%$%tl204210204231%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204208204226%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl204210204231%_))
                              (let ((_%$%e204211204234%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl204210204231%_))))
                                (let ((_%$%hd204212204237%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e204211204234%_)))
                                      (_%$%tl204213204239%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e204211204234%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl204213204239%_))
                                      (let ((_%$%e204214204242%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl204213204239%_))))
                                        (let ((_%$%hd204215204245%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e204214204242%_)))
                                              (_%$%tl204216204247%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e204214204242%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl204216204247%_))
                                              (let ((__tmp204872
                                                     (lambda ()
                                                       (gxc#compile-e__1
                                                        _%self204201%_
                                                        _%$%hd204215204245%_)))
                                                    (__tmp204870
                                                     (let ((__tmp204871
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#current-expander-phi))))
                                                       (declare (not safe))
                                                       (##fx+ __tmp204871
                                                              '1))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp204872
                                                 gx#current-expander-phi
                                                 __tmp204870))
                                              (_%$%g204204204221%_
                                               _%$%g204205204224%_))))
                                      (_%$%g204204204221%_
                                       _%$%g204205204224%_))))
                              (_%$%g204204204221%_ _%$%g204205204224%_))))
                      (_%$%g204204204221%_ _%$%g204205204224%_)))))
          (_%$%g204203204267%_ _%stx204202%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self204133%_ _%stx204134%_)
        (let* ((_%$%g204136204153%_
                (lambda (_%$%g204137204150%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204137204150%_))))
               (_%$%g204135204198%_
                (lambda (_%$%g204137204156%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204137204156%_))
                      (let ((_%$%e204140204158%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204137204156%_))))
                        (let ((_%$%hd204141204161%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204140204158%_)))
                              (_%$%tl204142204163%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204140204158%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl204142204163%_))
                              (let ((_%$%e204143204166%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl204142204163%_))))
                                (let ((_%$%hd204144204169%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e204143204166%_)))
                                      (_%$%tl204145204171%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e204143204166%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl204145204171%_))
                                      (let ((_%$%e204146204174%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl204145204171%_))))
                                        (let ((_%$%hd204147204177%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e204146204174%_)))
                                              (_%$%tl204148204179%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e204146204174%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl204148204179%_))
                                              (gxc#compile-e__1
                                               _%self204133%_
                                               _%$%hd204147204177%_)
                                              (_%$%g204136204153%_
                                               _%$%g204137204156%_))))
                                      (_%$%g204136204153%_
                                       _%$%g204137204156%_))))
                              (_%$%g204136204153%_ _%$%g204137204156%_))))
                      (_%$%g204136204153%_ _%$%g204137204156%_)))))
          (_%$%g204135204198%_ _%stx204134%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self204019%_ _%stx204020%_)
        (let* ((_%$%g204022204050%_
                (lambda (_%$%g204023204047%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204023204047%_))))
               (_%$%g204021204130%_
                (lambda (_%$%g204023204053%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204023204053%_))
                      (let ((_%$%e204026204055%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204023204053%_))))
                        (let ((_%$%hd204027204058%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204026204055%_)))
                              (_%$%tl204028204060%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204026204055%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl204028204060%_))
                              (let ((_g204873_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl204028204060%_
                                        '0))))
                                (begin
                                  (let ((_g204874_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g204873_)
                                               (##values-length _g204873_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g204874_ 2)))
                                        (error "Context expects 2 values"
                                               _g204874_)))
                                  (let ((_%$%target204029204063%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g204873_ 0)))
                                        (_%$%tl204031204065%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g204873_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl204031204065%_))
                                        (letrec ((_%$%loop204032204068%_
                                                  (lambda (_%$%hd204030204071%_
                                                           _%$%body204036204073%_
                                                           _%$%hd204037204074%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd204030204071%_))
                                                        (let ((_%$%e204033204076%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd204030204071%_))))
                  (let ((_%$%lp-hd204034204079%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e204033204076%_)))
                        (_%$%lp-tl204035204081%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e204033204076%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd204034204079%_))
                        (let ((_%$%e204040204084%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%lp-hd204034204079%_))))
                          (let ((_%$%hd204041204087%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e204040204084%_)))
                                (_%$%tl204042204089%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e204040204084%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl204042204089%_))
                                (let ((_%$%e204043204092%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl204042204089%_))))
                                  (let ((_%$%hd204044204095%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e204043204092%_)))
                                        (_%$%tl204045204097%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e204043204092%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl204045204097%_))
                                        (_%$%loop204032204068%_
                                         _%$%lp-tl204035204081%_
                                         (cons _%$%hd204044204095%_
                                               _%$%body204036204073%_)
                                         (cons _%$%hd204041204087%_
                                               _%$%hd204037204074%_))
                                        (_%$%g204022204050%_
                                         _%$%g204023204053%_))))
                                (_%$%g204022204050%_ _%$%g204023204053%_))))
                        (_%$%g204022204050%_ _%$%g204023204053%_))))
                (let ((_%$%body204038204100%_ (reverse _%$%body204036204073%_))
                      (_%$%hd204039204101%_ (reverse _%$%hd204037204074%_)))
                  (for-each
                   (lambda (_%$%g204118204120%_)
                     (gxc#compile-e__1 _%self204019%_ _%$%g204118204120%_))
                   (let ((__tmp204875
                          (lambda (_%$%g204122204125%_ _%$%g204123204127%_)
                            (cons _%$%g204122204125%_ _%$%g204123204127%_))))
                     (declare (not safe))
                     (foldr__0 __tmp204875 '() _%$%body204038204100%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop204032204068%_
                                           _%$%target204029204063%_
                                           '()
                                           '()))
                                        (_%$%g204022204050%_
                                         _%$%g204023204053%_)))))
                              (_%$%g204022204050%_ _%$%g204023204053%_))))
                      (_%$%g204022204050%_ _%$%g204023204053%_)))))
          (_%$%g204021204130%_ _%stx204020%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self203876%_ _%stx203877%_)
        (let* ((_%$%g203879203914%_
                (lambda (_%$%g203880203911%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203880203911%_))))
               (_%$%g203878204016%_
                (lambda (_%$%g203880203917%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203880203917%_))
                      (let ((_%$%e203884203919%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203880203917%_))))
                        (let ((_%$%hd203885203922%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203884203919%_)))
                              (_%$%tl203886203924%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203884203919%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203886203924%_))
                              (let ((_%$%e203887203927%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203886203924%_))))
                                (let ((_%$%hd203888203930%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203887203927%_)))
                                      (_%$%tl203889203932%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203887203927%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd203888203930%_))
                                      (let ((_g204876_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%hd203888203930%_
                                                '0))))
                                        (begin
                                          (let ((_g204877_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g204876_)
                                                       (##values-length
                                                        _g204876_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g204877_ 2)))
                                                (error "Context expects 2 values"
                                                       _g204877_)))
                                          (let ((_%$%target203890203935%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g204876_ 0)))
                                                (_%$%tl203892203937%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g204876_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl203892203937%_))
                                                (letrec ((_%$%loop203893203940%_
                                                          (lambda (_%$%hd203891203943%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr203897203945%_
                           _%$%hd203898203946%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd203891203943%_))
                        (let ((_%$%e203894203948%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd203891203943%_))))
                          (let ((_%$%lp-hd203895203951%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e203894203948%_)))
                                (_%$%lp-tl203896203953%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e203894203948%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd203895203951%_))
                                (let ((_%$%e203901203956%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%lp-hd203895203951%_))))
                                  (let ((_%$%hd203902203959%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e203901203956%_)))
                                        (_%$%tl203903203961%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e203901203956%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl203903203961%_))
                                        (let ((_%$%e203904203964%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl203903203961%_))))
                                          (let ((_%$%hd203905203967%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e203904203964%_)))
                                                (_%$%tl203906203969%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e203904203964%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl203906203969%_))
                                                (_%$%loop203893203940%_
                                                 _%$%lp-tl203896203953%_
                                                 (cons _%$%hd203905203967%_
                                                       _%$%expr203897203945%_)
                                                 (cons _%$%hd203902203959%_
                                                       _%$%hd203898203946%_))
                                                (_%$%g203879203914%_
                                                 _%$%g203880203917%_))))
                                        (_%$%g203879203914%_
                                         _%$%g203880203917%_))))
                                (_%$%g203879203914%_ _%$%g203880203917%_))))
                        (let ((_%$%expr203899203972%_
                               (reverse _%$%expr203897203945%_))
                              (_%$%hd203900203973%_
                               (reverse _%$%hd203898203946%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203889203932%_))
                              (let ((_%$%e203907203975%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203889203932%_))))
                                (let ((_%$%hd203908203978%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203907203975%_)))
                                      (_%$%tl203909203980%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203907203975%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl203909203980%_))
                                      (for-each
                                       (lambda (_%$%g204004204006%_)
                                         (gxc#compile-e__1
                                          _%self203876%_
                                          _%$%g204004204006%_))
                                       (let ((__tmp204879
                                              (lambda (_%$%g204008204011%_
                                                       _%$%g204009204013%_)
                                                (cons _%$%g204008204011%_
                                                      _%$%g204009204013%_)))
                                             (__tmp204878
                                              (cons _%$%hd203908203978%_ '())))
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp204879
                                          __tmp204878
                                          _%$%expr203899203972%_)))
                                      (_%$%g203879203914%_
                                       _%$%g203880203917%_))))
                              (_%$%g203879203914%_ _%$%g203880203917%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop203893203940%_
                                                   _%$%target203890203935%_
                                                   '()
                                                   '()))
                                                (_%$%g203879203914%_
                                                 _%$%g203880203917%_)))))
                                      (_%$%g203879203914%_
                                       _%$%g203880203917%_))))
                              (_%$%g203879203914%_ _%$%g203880203917%_))))
                      (_%$%g203879203914%_ _%$%g203880203917%_)))))
          (_%$%g203878204016%_ _%stx203877%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self203821%_ _%stx203822%_)
        (let* ((_%$%g203824203838%_
                (lambda (_%$%g203825203835%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203825203835%_))))
               (_%$%g203823203873%_
                (lambda (_%$%g203825203841%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203825203841%_))
                      (let ((_%$%e203828203843%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203825203841%_))))
                        (let ((_%$%hd203829203846%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203828203843%_)))
                              (_%$%tl203830203848%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203828203843%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203830203848%_))
                              (let ((_%$%e203831203851%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203830203848%_))))
                                (let ((_%$%hd203832203854%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203831203851%_)))
                                      (_%$%tl203833203856%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203831203851%_))))
                                  (gxc#compile-e__1
                                   _%self203821%_
                                   (last _%$%tl203833203856%_))))
                              (_%$%g203824203838%_ _%$%g203825203841%_))))
                      (_%$%g203824203838%_ _%$%g203825203841%_)))))
          (_%$%g203823203873%_ _%stx203822%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self203753%_ _%stx203754%_)
        (let* ((_%$%g203756203773%_
                (lambda (_%$%g203757203770%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203757203770%_))))
               (_%$%g203755203818%_
                (lambda (_%$%g203757203776%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203757203776%_))
                      (let ((_%$%e203760203778%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203757203776%_))))
                        (let ((_%$%hd203761203781%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203760203778%_)))
                              (_%$%tl203762203783%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203760203778%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203762203783%_))
                              (let ((_%$%e203763203786%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203762203783%_))))
                                (let ((_%$%hd203764203789%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203763203786%_)))
                                      (_%$%tl203765203791%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203763203786%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl203765203791%_))
                                      (let ((_%$%e203766203794%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl203765203791%_))))
                                        (let ((_%$%hd203767203797%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e203766203794%_)))
                                              (_%$%tl203768203799%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e203766203794%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl203768203799%_))
                                              (gxc#compile-e__1
                                               _%self203753%_
                                               _%$%hd203767203797%_)
                                              (_%$%g203756203773%_
                                               _%$%g203757203776%_))))
                                      (_%$%g203756203773%_
                                       _%$%g203757203776%_))))
                              (_%$%g203756203773%_ _%$%g203757203776%_))))
                      (_%$%g203756203773%_ _%$%g203757203776%_)))))
          (_%$%g203755203818%_ _%stx203754%_))))
    (define gxc#apply-operands
      (lambda (_%self203668%_ _%stx203669%_)
        (let* ((_%$%g203671203690%_
                (lambda (_%$%g203672203687%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203672203687%_))))
               (_%$%g203670203750%_
                (lambda (_%$%g203672203693%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203672203693%_))
                      (let ((_%$%e203674203695%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203672203693%_))))
                        (let ((_%$%hd203675203698%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203674203695%_)))
                              (_%$%tl203676203700%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203674203695%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl203676203700%_))
                              (let ((_g204880_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl203676203700%_
                                        '0))))
                                (begin
                                  (let ((_g204881_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g204880_)
                                               (##values-length _g204880_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g204881_ 2)))
                                        (error "Context expects 2 values"
                                               _g204881_)))
                                  (let ((_%$%target203677203703%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g204880_ 0)))
                                        (_%$%tl203679203705%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g204880_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl203679203705%_))
                                        (letrec ((_%$%loop203680203708%_
                                                  (lambda (_%$%hd203678203711%_
                                                           _%$%rands203684203713%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd203678203711%_))
                                                        (let ((_%$%e203681203715%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd203678203711%_))))
                  (let ((_%$%lp-hd203682203718%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e203681203715%_)))
                        (_%$%lp-tl203683203720%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e203681203715%_))))
                    (_%$%loop203680203708%_
                     _%$%lp-tl203683203720%_
                     (cons _%$%lp-hd203682203718%_ _%$%rands203684203713%_))))
                (let ((_%$%rands203685203723%_
                       (reverse _%$%rands203684203713%_)))
                  (for-each
                   (lambda (_%$%g203738203740%_)
                     (gxc#compile-e__1 _%self203668%_ _%$%g203738203740%_))
                   (let ((__tmp204882
                          (lambda (_%$%g203742203745%_ _%$%g203743203747%_)
                            (cons _%$%g203742203745%_ _%$%g203743203747%_))))
                     (declare (not safe))
                     (foldr__0 __tmp204882 '() _%$%rands203685203723%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop203680203708%_
                                           _%$%target203677203703%_
                                           '()))
                                        (_%$%g203671203690%_
                                         _%$%g203672203693%_)))))
                              (_%$%g203671203690%_ _%$%g203672203693%_))))
                      (_%$%g203671203690%_ _%$%g203672203693%_)))))
          (_%$%g203670203750%_ _%stx203669%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx203665%_ _%src-stx203666%_)
        (let ((__tmp204883
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx203666%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx203665%_ __tmp204883))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx203661%_ _%src-stx203662%_ _%ctx203663%_)
        (gxc#compile-e__1
         _%ctx203663%_
         (gxc#xform-wrap-source _%stx203661%_ _%src-stx203662%_))))
    (define gxc#xform-begin%
      (lambda (_%self203616%_ _%stx203617%_)
        (let* ((_%$%g203619203629%_
                (lambda (_%$%g203620203626%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203620203626%_))))
               (_%$%g203618203658%_
                (lambda (_%$%g203620203632%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203620203632%_))
                      (let ((_%$%e203622203634%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203620203632%_))))
                        (let ((_%$%hd203623203637%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203622203634%_)))
                              (_%$%tl203624203639%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203622203634%_))))
                          (let ((_%forms203656%_
                                 (map (lambda (_%$%g203651203653%_)
                                        (gxc#compile-e__1
                                         _%self203616%_
                                         _%$%g203651203653%_))
                                      _%$%tl203624203639%_)))
                            (gxc#xform-wrap-source
                             (cons '%#begin _%forms203656%_)
                             _%stx203617%_))))
                      (_%$%g203619203629%_ _%$%g203620203632%_)))))
          (_%$%g203618203658%_ _%stx203617%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self203570%_ _%stx203571%_)
        (let* ((_%$%g203573203583%_
                (lambda (_%$%g203574203580%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203574203580%_))))
               (_%$%g203572203613%_
                (lambda (_%$%g203574203586%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203574203586%_))
                      (let ((_%$%e203576203588%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203574203586%_))))
                        (let ((_%$%hd203577203591%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203576203588%_)))
                              (_%$%tl203578203593%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203576203588%_))))
                          (let ((__tmp204886
                                 (lambda ()
                                   (let ((_%forms203611%_
                                          (map (lambda (_%$%g203606203608%_)
                                                 (gxc#compile-e__1
                                                  _%self203570%_
                                                  _%$%g203606203608%_))
                                               _%$%tl203578203593%_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#begin-syntax _%forms203611%_)
                                      _%stx203571%_))))
                                (__tmp204884
                                 (let ((__tmp204885
                                        (let ()
                                          (declare (not safe))
                                          (gx#current-expander-phi))))
                                   (declare (not safe))
                                   (##fx+ __tmp204885 '1))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp204886
                             gx#current-expander-phi
                             __tmp204884))))
                      (_%$%g203573203583%_ _%$%g203574203586%_)))))
          (_%$%g203572203613%_ _%stx203571%_))))
    (define gxc#xform-module%
      (lambda (_%self203507%_ _%stx203508%_)
        (let* ((_%$%g203510203524%_
                (lambda (_%$%g203511203521%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203511203521%_))))
               (_%$%g203509203567%_
                (lambda (_%$%g203511203527%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203511203527%_))
                      (let ((_%$%e203514203529%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203511203527%_))))
                        (let ((_%$%hd203515203532%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203514203529%_)))
                              (_%$%tl203516203534%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203514203529%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203516203534%_))
                              (let ((_%$%e203517203537%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203516203534%_))))
                                (let ((_%$%hd203518203540%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203517203537%_)))
                                      (_%$%tl203519203542%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203517203537%_))))
                                  (let* ((_%ctx203559%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-local-e__0
                                             _%$%hd203518203540%_)))
                                         (_%code203561%_
                                          (##structure-ref
                                           _%ctx203559%_
                                           '11
                                           gx#module-context::t
                                           '#f))
                                         (_%code203564%_
                                          (let ((__tmp204887
                                                 (lambda ()
                                                   (gxc#compile-e__1
                                                    _%self203507%_
                                                    _%code203561%_))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp204887
                                             gx#current-expander-context
                                             _%ctx203559%_))))
                                    (##structure-set!
                                     _%ctx203559%_
                                     _%code203564%_
                                     '11
                                     gx#module-context::t
                                     '#f)
                                    (gxc#xform-wrap-source
                                     (cons '%#module
                                           (cons _%$%hd203518203540%_
                                                 (cons _%code203564%_ '())))
                                     _%stx203508%_))))
                              (_%$%g203510203524%_ _%$%g203511203527%_))))
                      (_%$%g203510203524%_ _%$%g203511203527%_)))))
          (_%$%g203509203567%_ _%stx203508%_))))
    (define gxc#xform-define-values%
      (lambda (_%self203437%_ _%stx203438%_)
        (let* ((_%$%g203440203457%_
                (lambda (_%$%g203441203454%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203441203454%_))))
               (_%$%g203439203504%_
                (lambda (_%$%g203441203460%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203441203460%_))
                      (let ((_%$%e203444203462%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203441203460%_))))
                        (let ((_%$%hd203445203465%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203444203462%_)))
                              (_%$%tl203446203467%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203444203462%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203446203467%_))
                              (let ((_%$%e203447203470%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203446203467%_))))
                                (let ((_%$%hd203448203473%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203447203470%_)))
                                      (_%$%tl203449203475%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203447203470%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl203449203475%_))
                                      (let ((_%$%e203450203478%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl203449203475%_))))
                                        (let ((_%$%hd203451203481%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e203450203478%_)))
                                              (_%$%tl203452203483%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e203450203478%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl203452203483%_))
                                              (let ((_%expr203502%_
                                                     (gxc#compile-e__1
                                                      _%self203437%_
                                                      _%$%hd203451203481%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#define-values
                                                       (cons _%$%hd203448203473%_
                                                             (cons _%expr203502%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%stx203438%_))
                                              (_%$%g203440203457%_
                                               _%$%g203441203460%_))))
                                      (_%$%g203440203457%_
                                       _%$%g203441203460%_))))
                              (_%$%g203440203457%_ _%$%g203441203460%_))))
                      (_%$%g203440203457%_ _%$%g203441203460%_)))))
          (_%$%g203439203504%_ _%stx203438%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self203366%_ _%stx203367%_)
        (let* ((_%$%g203369203386%_
                (lambda (_%$%g203370203383%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203370203383%_))))
               (_%$%g203368203434%_
                (lambda (_%$%g203370203389%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203370203389%_))
                      (let ((_%$%e203373203391%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203370203389%_))))
                        (let ((_%$%hd203374203394%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203373203391%_)))
                              (_%$%tl203375203396%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203373203391%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203375203396%_))
                              (let ((_%$%e203376203399%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203375203396%_))))
                                (let ((_%$%hd203377203402%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203376203399%_)))
                                      (_%$%tl203378203404%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203376203399%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl203378203404%_))
                                      (let ((_%$%e203379203407%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl203378203404%_))))
                                        (let ((_%$%hd203380203410%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e203379203407%_)))
                                              (_%$%tl203381203412%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e203379203407%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl203381203412%_))
                                              (let ((__tmp204890
                                                     (lambda ()
                                                       (let ((_%expr203432%_
                                                              (gxc#compile-e__1
                                                               _%self203366%_
                                                               _%$%hd203380203410%_)))
                                                         (gxc#xform-wrap-source
                                                          (cons '%#define-syntax
                                                                (cons _%$%hd203377203402%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%expr203432%_ '())))
                  _%stx203367%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp204888
                                                     (let ((__tmp204889
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#current-expander-phi))))
                                                       (declare (not safe))
                                                       (##fx+ __tmp204889
                                                              '1))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp204890
                                                 gx#current-expander-phi
                                                 __tmp204888))
                                              (_%$%g203369203386%_
                                               _%$%g203370203389%_))))
                                      (_%$%g203369203386%_
                                       _%$%g203370203389%_))))
                              (_%$%g203369203386%_ _%$%g203370203389%_))))
                      (_%$%g203369203386%_ _%$%g203370203389%_)))))
          (_%$%g203368203434%_ _%stx203367%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self203296%_ _%stx203297%_)
        (let* ((_%$%g203299203316%_
                (lambda (_%$%g203300203313%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203300203313%_))))
               (_%$%g203298203363%_
                (lambda (_%$%g203300203319%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203300203319%_))
                      (let ((_%$%e203303203321%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203300203319%_))))
                        (let ((_%$%hd203304203324%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203303203321%_)))
                              (_%$%tl203305203326%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203303203321%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203305203326%_))
                              (let ((_%$%e203306203329%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203305203326%_))))
                                (let ((_%$%hd203307203332%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203306203329%_)))
                                      (_%$%tl203308203334%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203306203329%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl203308203334%_))
                                      (let ((_%$%e203309203337%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl203308203334%_))))
                                        (let ((_%$%hd203310203340%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e203309203337%_)))
                                              (_%$%tl203311203342%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e203309203337%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl203311203342%_))
                                              (let ((_%expr203361%_
                                                     (gxc#compile-e__1
                                                      _%self203296%_
                                                      _%$%hd203310203340%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#begin-annotation
                                                       (cons _%$%hd203307203332%_
                                                             (cons _%expr203361%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%stx203297%_))
                                              (_%$%g203299203316%_
                                               _%$%g203300203319%_))))
                                      (_%$%g203299203316%_
                                       _%$%g203300203319%_))))
                              (_%$%g203299203316%_ _%$%g203300203319%_))))
                      (_%$%g203299203316%_ _%$%g203300203319%_)))))
          (_%$%g203298203363%_ _%stx203297%_))))
    (define gxc#xform-lambda%
      (lambda (_%self203234%_ _%stx203235%_)
        (let* ((_%$%g203237203251%_
                (lambda (_%$%g203238203248%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203238203248%_))))
               (_%$%g203236203293%_
                (lambda (_%$%g203238203254%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203238203254%_))
                      (let ((_%$%e203241203256%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203238203254%_))))
                        (let ((_%$%hd203242203259%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203241203256%_)))
                              (_%$%tl203243203261%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203241203256%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203243203261%_))
                              (let ((_%$%e203244203264%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203243203261%_))))
                                (let ((_%$%hd203245203267%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203244203264%_)))
                                      (_%$%tl203246203269%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203244203264%_))))
                                  (let ((__tmp204892
                                         (lambda ()
                                           (let ((_%body203291%_
                                                  (map (lambda (_%$%g203286203288%_)
                                                         (gxc#compile-e__1
                                                          _%self203234%_
                                                          _%$%g203286203288%_))
                                                       _%$%tl203246203269%_)))
                                             (gxc#xform-wrap-source
                                              (cons '%#lambda
                                                    (cons _%$%hd203245203267%_
                                                          _%body203291%_))
                                              _%stx203235%_))))
                                        (__tmp204891
                                         (gxc#xform-let-locals
                                          _%$%hd203245203267%_)))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp204892
                                     gxc#current-compile-local-env
                                     __tmp204891))))
                              (_%$%g203237203251%_ _%$%g203238203254%_))))
                      (_%$%g203237203251%_ _%$%g203238203254%_)))))
          (_%$%g203236203293%_ _%stx203235%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self203142%_ _%stx203143%_)
        (letrec ((_%clause-e203145%_
                  (lambda (_%clause203186%_)
                    (let* ((_%$%g203188203199%_
                            (lambda (_%$%g203189203196%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g203189203196%_))))
                           (_%$%g203187203231%_
                            (lambda (_%$%g203189203202%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%g203189203202%_))
                                  (let ((_%$%e203192203204%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%g203189203202%_))))
                                    (let ((_%$%hd203193203207%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e203192203204%_)))
                                          (_%$%tl203194203209%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e203192203204%_))))
                                      (let ((__tmp204894
                                             (lambda ()
                                               (let ((_%body203229%_
                                                      (map (lambda (_%$%g203224203226%_)
                                                             (gxc#compile-e__1
                                                              _%self203142%_
                                                              _%$%g203224203226%_))
                                                           _%$%tl203194203209%_)))
                                                 (cons _%$%hd203193203207%_
                                                       _%body203229%_))))
                                            (__tmp204893
                                             (gxc#xform-let-locals
                                              _%$%hd203193203207%_)))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp204894
                                         gxc#current-compile-local-env
                                         __tmp204893))))
                                  (_%$%g203188203199%_ _%$%g203189203202%_)))))
                      (_%$%g203187203231%_ _%clause203186%_)))))
          (let* ((_%$%g203147203157%_
                  (lambda (_%$%g203148203154%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g203148203154%_))))
                 (_%$%g203146203183%_
                  (lambda (_%$%g203148203160%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g203148203160%_))
                        (let ((_%$%e203150203162%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g203148203160%_))))
                          (let ((_%$%hd203151203165%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e203150203162%_)))
                                (_%$%tl203152203167%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e203150203162%_))))
                            (let ((_%clauses203181%_
                                   (map _%clause-e203145%_
                                        _%$%tl203152203167%_)))
                              (gxc#xform-wrap-source
                               (cons '%#case-lambda _%clauses203181%_)
                               _%stx203143%_))))
                        (_%$%g203147203157%_ _%$%g203148203160%_)))))
            (_%$%g203146203183%_ _%stx203143%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self202902%_ _%stx202903%_)
        (let* ((_%$%g202905202938%_
                (lambda (_%$%g202906202935%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202906202935%_))))
               (_%$%g202904203139%_
                (lambda (_%$%g202906202941%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202906202941%_))
                      (let ((_%$%e202911202943%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g202906202941%_))))
                        (let ((_%$%hd202912202946%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202911202943%_)))
                              (_%$%tl202913202948%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202911202943%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl202913202948%_))
                              (let ((_%$%e202914202951%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl202913202948%_))))
                                (let ((_%$%hd202915202954%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e202914202951%_)))
                                      (_%$%tl202916202956%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e202914202951%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd202915202954%_))
                                      (let ((_g204895_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%hd202915202954%_
                                                '0))))
                                        (begin
                                          (let ((_g204896_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g204895_)
                                                       (##values-length
                                                        _g204895_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g204896_ 2)))
                                                (error "Context expects 2 values"
                                                       _g204896_)))
                                          (let ((_%$%target202917202959%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g204895_ 0)))
                                                (_%$%tl202919202961%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g204895_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl202919202961%_))
                                                (letrec ((_%$%loop202920202964%_
                                                          (lambda (_%$%hd202918202967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr202924202969%_
                           _%$%hd202925202970%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd202918202967%_))
                        (let ((_%$%e202921202972%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd202918202967%_))))
                          (let ((_%$%lp-hd202922202975%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e202921202972%_)))
                                (_%$%lp-tl202923202977%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e202921202972%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd202922202975%_))
                                (let ((_%$%e202928202980%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%lp-hd202922202975%_))))
                                  (let ((_%$%hd202929202983%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e202928202980%_)))
                                        (_%$%tl202930202985%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e202928202980%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl202930202985%_))
                                        (let ((_%$%e202931202988%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl202930202985%_))))
                                          (let ((_%$%hd202932202991%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e202931202988%_)))
                                                (_%$%tl202933202993%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e202931202988%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl202933202993%_))
                                                (_%$%loop202920202964%_
                                                 _%$%lp-tl202923202977%_
                                                 (cons _%$%hd202932202991%_
                                                       _%$%expr202924202969%_)
                                                 (cons _%$%hd202929202983%_
                                                       _%$%hd202925202970%_))
                                                (_%$%g202905202938%_
                                                 _%$%g202906202941%_))))
                                        (_%$%g202905202938%_
                                         _%$%g202906202941%_))))
                                (_%$%g202905202938%_ _%$%g202906202941%_))))
                        (let ((_%$%expr202926202996%_
                               (reverse _%$%expr202924202969%_))
                              (_%$%hd202927202997%_
                               (reverse _%$%hd202925202970%_)))
                          (let* ((_%$%g203021203037%_
                                  (lambda (_%$%g203022203034%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%$%g203022203034%_))))
                                 (_%$%g203020203125%_
                                  (lambda (_%$%g203022203040%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%g203022203040%_))
                                        (let ((_g204897_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%$%g203022203040%_
                                                  '0))))
                                          (begin
                                            (let ((_g204898_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g204897_)
                                                         (##values-length
                                                          _g204897_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g204898_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g204898_)))
                                            (let ((_%$%target203024203042%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g204897_
                                                      0)))
                                                  (_%$%tl203026203044%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g204897_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl203026203044%_))
                                                  (letrec ((_%$%loop203027203047%_
                                                            (lambda (_%$%hd203025203050%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%expr203031203052%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd203025203050%_))
                          (let ((_%$%e203028203054%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%hd203025203050%_))))
                            (let ((_%$%lp-hd203029203057%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e203028203054%_)))
                                  (_%$%lp-tl203030203059%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e203028203054%_))))
                              (_%$%loop203027203047%_
                               _%$%lp-tl203030203059%_
                               (cons _%$%lp-hd203029203057%_
                                     _%$%expr203031203052%_))))
                          (let ((_%$%expr203032203062%_
                                 (reverse _%$%expr203031203052%_)))
                            (let ((__tmp204901
                                   (lambda ()
                                     (let* ((_%$%g203078203085%_
                                             (lambda (_%$%g203079203082%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%$%g203079203082%_))))
                                            (_%$%g203077203111%_
                                             (lambda (_%$%g203079203088%_)
                                               (gxc#xform-wrap-source
                                                (cons _%$%hd202912202946%_
                                                      (cons (begin
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-check-splice-targets
                         _%$%expr203032203062%_
                         _%$%hd202927202997%_))
                      (let ((__tmp204902
                             (lambda (_%$%g203100203104%_
                                      _%$%g203101203106%_
                                      _%$%g203102203108%_)
                               (cons (cons _%$%g203101203106%_
                                           (cons _%$%g203100203104%_ '()))
                                     _%$%g203102203108%_))))
                        (declare (not safe))
                        (foldr__1
                         __tmp204902
                         '()
                         _%$%expr203032203062%_
                         _%$%hd202927202997%_)))
                    _%$%g203079203088%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%stx202903%_))))
                                       (_%$%g203077203111%_
                                        (map (lambda (_%$%g203113203115%_)
                                               (gxc#compile-e__1
                                                _%self202902%_
                                                _%$%g203113203115%_))
                                             _%$%tl202916202956%_)))))
                                  (__tmp204899
                                   (gxc#xform-let-locals
                                    (let ((__tmp204900
                                           (lambda (_%$%g203117203120%_
                                                    _%$%g203118203122%_)
                                             (cons _%$%g203117203120%_
                                                   _%$%g203118203122%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp204900
                                       '()
                                       _%$%hd202927202997%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp204901
                               gxc#current-compile-local-env
                               __tmp204899)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%loop203027203047%_
                                                     _%$%target203024203042%_
                                                     '()))
                                                  (_%$%g203021203037%_
                                                   _%$%g203022203040%_)))))
                                        (_%$%g203021203037%_
                                         _%$%g203022203040%_)))))
                            (_%$%g203020203125%_
                             (map (lambda (_%$%g203127203129%_)
                                    (gxc#compile-e__1
                                     _%self202902%_
                                     _%$%g203127203129%_))
                                  (let ((__tmp204903
                                         (lambda (_%$%g203131203134%_
                                                  _%$%g203132203136%_)
                                           (cons _%$%g203131203134%_
                                                 _%$%g203132203136%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp204903
                                     '()
                                     _%$%expr202926202996%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop202920202964%_
                                                   _%$%target202917202959%_
                                                   '()
                                                   '()))
                                                (_%$%g202905202938%_
                                                 _%$%g202906202941%_)))))
                                      (_%$%g202905202938%_
                                       _%$%g202906202941%_))))
                              (_%$%g202905202938%_ _%$%g202906202941%_))))
                      (_%$%g202905202938%_ _%$%g202906202941%_)))))
          (_%$%g202904203139%_ _%stx202903%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self202662%_ _%stx202663%_)
        (let* ((_%$%g202665202698%_
                (lambda (_%$%g202666202695%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202666202695%_))))
               (_%$%g202664202899%_
                (lambda (_%$%g202666202701%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202666202701%_))
                      (let ((_%$%e202671202703%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g202666202701%_))))
                        (let ((_%$%hd202672202706%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202671202703%_)))
                              (_%$%tl202673202708%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202671202703%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl202673202708%_))
                              (let ((_%$%e202674202711%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl202673202708%_))))
                                (let ((_%$%hd202675202714%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e202674202711%_)))
                                      (_%$%tl202676202716%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e202674202711%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd202675202714%_))
                                      (let ((_g204904_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%hd202675202714%_
                                                '0))))
                                        (begin
                                          (let ((_g204905_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g204904_)
                                                       (##values-length
                                                        _g204904_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g204905_ 2)))
                                                (error "Context expects 2 values"
                                                       _g204905_)))
                                          (let ((_%$%target202677202719%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g204904_ 0)))
                                                (_%$%tl202679202721%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g204904_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl202679202721%_))
                                                (letrec ((_%$%loop202680202724%_
                                                          (lambda (_%$%hd202678202727%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr202684202729%_
                           _%$%hd202685202730%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd202678202727%_))
                        (let ((_%$%e202681202732%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd202678202727%_))))
                          (let ((_%$%lp-hd202682202735%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e202681202732%_)))
                                (_%$%lp-tl202683202737%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e202681202732%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd202682202735%_))
                                (let ((_%$%e202688202740%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%lp-hd202682202735%_))))
                                  (let ((_%$%hd202689202743%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e202688202740%_)))
                                        (_%$%tl202690202745%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e202688202740%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl202690202745%_))
                                        (let ((_%$%e202691202748%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl202690202745%_))))
                                          (let ((_%$%hd202692202751%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e202691202748%_)))
                                                (_%$%tl202693202753%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e202691202748%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl202693202753%_))
                                                (_%$%loop202680202724%_
                                                 _%$%lp-tl202683202737%_
                                                 (cons _%$%hd202692202751%_
                                                       _%$%expr202684202729%_)
                                                 (cons _%$%hd202689202743%_
                                                       _%$%hd202685202730%_))
                                                (_%$%g202665202698%_
                                                 _%$%g202666202701%_))))
                                        (_%$%g202665202698%_
                                         _%$%g202666202701%_))))
                                (_%$%g202665202698%_ _%$%g202666202701%_))))
                        (let ((_%$%expr202686202756%_
                               (reverse _%$%expr202684202729%_))
                              (_%$%hd202687202757%_
                               (reverse _%$%hd202685202730%_)))
                          (let ((__tmp204908
                                 (lambda ()
                                   (let* ((_%$%g202782202798%_
                                           (lambda (_%$%g202783202795%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%$%g202783202795%_))))
                                          (_%$%g202781202878%_
                                           (lambda (_%$%g202783202801%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair/null?
                                                    _%$%g202783202801%_))
                                                 (let ((_g204909_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-split-splice
                                                           _%$%g202783202801%_
                                                           '0))))
                                                   (begin
                                                     (let ((_g204910_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g204909_)
                          (##values-length _g204909_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g204910_ 2)))
                   (error "Context expects 2 values" _g204910_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%$%target202785202803%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g204909_
                                                               0)))
                                                           (_%$%tl202787202805%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g204909_
                                                               1))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl202787202805%_))
                                                           (letrec ((_%$%loop202788202808%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%$%hd202786202811%_
                                      _%$%expr202792202813%_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd202786202811%_))
                                   (let ((_%$%e202789202815%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e
                                             _%$%hd202786202811%_))))
                                     (let ((_%$%lp-hd202790202818%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e202789202815%_)))
                                           (_%$%lp-tl202791202820%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e202789202815%_))))
                                       (_%$%loop202788202808%_
                                        _%$%lp-tl202791202820%_
                                        (cons _%$%lp-hd202790202818%_
                                              _%$%expr202792202813%_))))
                                   (let* ((_%$%expr202793202823%_
                                           (reverse _%$%expr202792202813%_))
                                          (_%$%g202839202846%_
                                           (lambda (_%$%g202840202843%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%$%g202840202843%_))))
                                          (_%$%g202838202871%_
                                           (lambda (_%$%g202840202849%_)
                                             (gxc#xform-wrap-source
                                              (cons _%$%hd202672202706%_
                                                    (cons (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _%$%expr202793202823%_
                                                               _%$%hd202687202757%_))
                                                            (let ((__tmp204911
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%$%g202860202864%_
                                    _%$%g202861202866%_
                                    _%$%g202862202868%_)
                             (cons (cons _%$%g202861202866%_
                                         (cons _%$%g202860202864%_ '()))
                                   _%$%g202862202868%_))))
                      (declare (not safe))
                      (foldr__1
                       __tmp204911
                       '()
                       _%$%expr202793202823%_
                       _%$%hd202687202757%_)))
                  _%$%g202840202849%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%stx202663%_))))
                                     (_%$%g202838202871%_
                                      (map (lambda (_%$%g202873202875%_)
                                             (gxc#compile-e__1
                                              _%self202662%_
                                              _%$%g202873202875%_))
                                           _%$%tl202676202716%_)))))))
                     (_%$%loop202788202808%_ _%$%target202785202803%_ '()))
                   (_%$%g202782202798%_ _%$%g202783202801%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g202782202798%_
                                                  _%$%g202783202801%_)))))
                                     (_%$%g202781202878%_
                                      (map (lambda (_%$%g202880202882%_)
                                             (gxc#compile-e__1
                                              _%self202662%_
                                              _%$%g202880202882%_))
                                           (let ((__tmp204912
                                                  (lambda (_%$%g202884202887%_
                                                           _%$%g202885202889%_)
                                                    (cons _%$%g202884202887%_
                                                          _%$%g202885202889%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp204912
                                              '()
                                              _%$%expr202686202756%_)))))))
                                (__tmp204906
                                 (gxc#xform-let-locals
                                  (let ((__tmp204907
                                         (lambda (_%$%g202891202894%_
                                                  _%$%g202892202896%_)
                                           (cons _%$%g202891202894%_
                                                 _%$%g202892202896%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp204907
                                     '()
                                     _%$%hd202687202757%_)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp204908
                             gxc#current-compile-local-env
                             __tmp204906)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop202680202724%_
                                                   _%$%target202677202719%_
                                                   '()
                                                   '()))
                                                (_%$%g202665202698%_
                                                 _%$%g202666202701%_)))))
                                      (_%$%g202665202698%_
                                       _%$%g202666202701%_))))
                              (_%$%g202665202698%_ _%$%g202666202701%_))))
                      (_%$%g202665202698%_ _%$%g202666202701%_)))))
          (_%$%g202664202899%_ _%stx202663%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings202529%_)
        (letrec ((_%flatten202531%_
                  (lambda (_%maybe-lst202589%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst202589%_))
                        (cons _%maybe-lst202589%_ '())
                        (let _%loop202591%_ ((_%rest202593%_
                                              _%maybe-lst202589%_)
                                             (_%result202594%_ '()))
                          (let* ((_%__stx204798204799%_ _%rest202593%_)
                                 (_%$%g202598202610%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx204798204799%_)))))
                            (let ((_%__kont204800204801%_
                                   (lambda (_%$%g202600202648%_
                                            _%$%g202601202649%_)
                                     (_%loop202591%_
                                      _%$%g202600202648%_
                                      (let ((__tmp204913
                                             (_%flatten202531%_
                                              _%$%g202601202649%_)))
                                        (declare (not safe))
                                        (foldl__0
                                         cons
                                         _%result202594%_
                                         __tmp204913)))))
                                  (_%__kont204802204803%_
                                   (lambda (_%$%g202605202622%_)
                                     (cons _%$%g202605202622%_
                                           _%result202594%_)))
                                  (_%__kont204804204805%_
                                   (lambda () _%result202594%_)))
                              (let ((_%$%g202596202635%_
                                     (lambda ()
                                       (let ((_%$%g202605202622%_
                                              _%__stx204798204799%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%$%g202605202622%_))
                                             (_%__kont204802204803%_
                                              _%$%g202605202622%_)
                                             (_%__kont204804204805%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx204798204799%_))
                                    (let ((_%$%e202602202640%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx204798204799%_))))
                                      (let ((_%$%tl202604202645%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e202602202640%_)))
                                            (_%$%hd202603202643%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e202602202640%_))))
                                        (_%__kont204800204801%_
                                         _%$%tl202604202645%_
                                         _%$%hd202603202643%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g202596202635%_)))))))))))
          (let _%loop202533%_ ((_%rest202535%_
                                (_%flatten202531%_ _%bindings202529%_))
                               (_%locals202536%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%$%rest202537202548%_ _%rest202535%_)
                   (_%$%E202541202552%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%$%rest202537202548%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%$%K202544202577%_
                     (lambda (_%rest202574%_ _%id202575%_)
                       (_%loop202533%_
                        _%rest202574%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id202575%_))
                              _%locals202536%_))))
                    (_%$%K202543202566%_
                     (lambda (_%id202564%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id202564%_))
                             _%locals202536%_)))
                    (_%$%K202542202557%_ (lambda () _%locals202536%_)))
                (let ((_%$%try-match202539202571%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%$%rest202537202548%_))
                             (let ((_%id202569%_ _%$%rest202537202548%_))
                               (_%$%K202543202566%_ _%id202569%_))
                             (_%$%K202542202557%_)))))
                  (if (pair? _%$%rest202537202548%_)
                      (let ((_%$%tl202546202582%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%rest202537202548%_)))
                            (_%$%hd202545202580%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%rest202537202548%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%$%hd202545202580%_))
                            (let ((_%id202585%_ _%$%hd202545202580%_)
                                  (_%rest202587%_ _%$%tl202546202582%_))
                              (_%$%K202544202577%_
                               _%rest202587%_
                               _%id202585%_))
                            (_%$%K202542202557%_)))
                      (_%$%try-match202539202571%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self202481%_ _%stx202482%_)
        (let* ((_%$%g202484202495%_
                (lambda (_%$%g202485202492%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202485202492%_))))
               (_%$%g202483202526%_
                (lambda (_%$%g202485202498%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202485202498%_))
                      (let ((_%$%e202488202500%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g202485202498%_))))
                        (let ((_%$%hd202489202503%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202488202500%_)))
                              (_%$%tl202490202505%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202488202500%_))))
                          (let ((_%rands202524%_
                                 (map (lambda (_%$%g202519202521%_)
                                        (gxc#compile-e__1
                                         _%self202481%_
                                         _%$%g202519202521%_))
                                      _%$%tl202490202505%_)))
                            (gxc#xform-wrap-source
                             (cons _%$%hd202489202503%_ _%rands202524%_)
                             _%stx202482%_))))
                      (_%$%g202484202495%_ _%$%g202485202498%_)))))
          (_%$%g202483202526%_ _%stx202482%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self202411%_ _%stx202412%_)
        (let* ((_%$%g202414202431%_
                (lambda (_%$%g202415202428%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202415202428%_))))
               (_%$%g202413202478%_
                (lambda (_%$%g202415202434%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202415202434%_))
                      (let ((_%$%e202418202436%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g202415202434%_))))
                        (let ((_%$%hd202419202439%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202418202436%_)))
                              (_%$%tl202420202441%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202418202436%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl202420202441%_))
                              (let ((_%$%e202421202444%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl202420202441%_))))
                                (let ((_%$%hd202422202447%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e202421202444%_)))
                                      (_%$%tl202423202449%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e202421202444%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl202423202449%_))
                                      (let ((_%$%e202424202452%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl202423202449%_))))
                                        (let ((_%$%hd202425202455%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e202424202452%_)))
                                              (_%$%tl202426202457%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e202424202452%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl202426202457%_))
                                              (let ((_%expr202476%_
                                                     (gxc#compile-e__1
                                                      _%self202411%_
                                                      _%$%hd202425202455%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#set!
                                                       (cons _%$%hd202422202447%_
                                                             (cons _%expr202476%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%stx202412%_))
                                              (_%$%g202414202431%_
                                               _%$%g202415202434%_))))
                                      (_%$%g202414202431%_
                                       _%$%g202415202434%_))))
                              (_%$%g202414202431%_ _%$%g202415202434%_))))
                      (_%$%g202414202431%_ _%$%g202415202434%_)))))
          (_%$%g202413202478%_ _%stx202412%_))))))
