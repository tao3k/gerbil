(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1784758127)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp224297 (list gxc#::void::t))
            (__tmp224296 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp224297
         '()
         __tmp224296
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args224281%_
        (apply make-instance gxc#::collect-mutators::t _%$args224281%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp224298
             (lambda ()
               (force gxc#::void-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#begin
                  gxc#apply-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#begin-syntax
                  gxc#apply-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#begin-annotation
                  gxc#apply-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#module
                  gxc#apply-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#define-values
                  gxc#apply-define-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#define-syntax
                  gxc#apply-define-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#lambda
                  gxc#apply-body-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#case-lambda
                  gxc#apply-body-case-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#let-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#letrec-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#letrec*-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#call
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#call-unchecked
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#if
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#set!
                  gxc#collect-mutators-setq%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#struct-instance?
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#struct-direct-instance?
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#struct-ref
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#struct-set!
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#struct-direct-ref
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#struct-direct-set!
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#struct-unchecked-ref
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#struct-unchecked-set!
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::collect-mutators::t)))))
        (declare (not safe))
        (__make-atomic-promise __tmp224298)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx224273%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self224276%_
                (let ((__obj224284
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj224284))
               (__tmp224299
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self224276%_ _%stx224273%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp224299
           gxc#current-compile-method
           _%self224276%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp224301 (list gxc#::basic-xform-expression::t))
            (__tmp224300 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp224301
         '(id new-id)
         __tmp224300
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args224270%_
        (apply make-instance gxc#::expression-subst::t _%$args224270%_)))
    (define gxc#::expression-subst-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::expression-subst::t 'id)))
    (define gxc#::expression-subst-new-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::expression-subst::t 'new-id)))
    (define gxc#::expression-subst-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::expression-subst::t 'id)))
    (define gxc#::expression-subst-new-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::expression-subst::t 'new-id)))
    (define gxc#&::expression-subst-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#::expression-subst::t 'id)))
    (define gxc#&::expression-subst-new-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::expression-subst::t
         'new-id)))
    (define gxc#&::expression-subst-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#::expression-subst::t 'id)))
    (define gxc#&::expression-subst-new-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::expression-subst::t
         'new-id)))
    (define gxc#::expression-subst-bind-methods!
      (let ((__tmp224302
             (lambda ()
               (force gxc#::basic-xform-expression-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::expression-subst::t
                  '%#begin
                  gxc#xform-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::expression-subst::t
                  '%#ref
                  gxc#expression-subst-ref%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::expression-subst::t
                  '%#set!
                  gxc#expression-subst-setq%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::expression-subst::t)))))
        (declare (not safe))
        (__make-atomic-promise __tmp224302)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords224242%_
               _%$%id224238224243%_
               _%$%new-id224239224244%_
               _%stx224245%_)
        (let* ((_%id224248%_
                (if (eq? _%$%id224238224243%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%$%id224238224243%_))
               (_%new-id224250%_
                (if (eq? _%$%new-id224239224244%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%$%new-id224239224244%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self224252%_
                  (let ((__obj224286
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224286
                       _%id224248%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224286
                       _%new-id224250%_
                       '2
                       '#f
                       '#f))
                    __obj224286))
                 (__tmp224303
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self224252%_ _%stx224245%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp224303
             gxc#current-compile-method
             _%self224252%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords224259%_ . _%args224260%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords224259%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords224259%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords224259%_
                  'new-id:
                  absent-value))
               _%args224260%_)))
    (define gxc#apply-expression-subst
      (lambda _%$%args224240224266%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%$%args224240224266%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp224305 (list gxc#::basic-xform-expression::t))
            (__tmp224304 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp224305
         '(subst)
         __tmp224304
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args224234%_
        (apply make-instance gxc#::expression-subst*::t _%$args224234%_)))
    (define gxc#::expression-subst*-subst
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::expression-subst*::t 'subst)))
    (define gxc#::expression-subst*-subst-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::expression-subst*::t 'subst)))
    (define gxc#&::expression-subst*-subst
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::expression-subst*::t
         'subst)))
    (define gxc#&::expression-subst*-subst-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::expression-subst*::t
         'subst)))
    (define gxc#::expression-subst*-bind-methods!
      (let ((__tmp224306
             (lambda ()
               (force gxc#::basic-xform-expression-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::expression-subst*::t
                  '%#begin
                  gxc#xform-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::expression-subst*::t
                  '%#ref
                  gxc#expression-subst*-ref%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::expression-subst*::t
                  '%#set!
                  gxc#expression-subst*-setq%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::expression-subst*::t)))))
        (declare (not safe))
        (__make-atomic-promise __tmp224306)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords224209%_ _%$%subst224206224210%_ _%stx224211%_)
        (let ((_%subst224214%_
               (if (eq? _%$%subst224206224210%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%$%subst224206224210%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self224216%_
                  (let ((__obj224288
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224288
                       _%subst224214%_
                       '1
                       '#f
                       '#f))
                    __obj224288))
                 (__tmp224307
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self224216%_ _%stx224211%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp224307
             gxc#current-compile-method
             _%self224216%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords224223%_ . _%args224224%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords224223%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords224223%_
                  'subst:
                  absent-value))
               _%args224224%_)))
    (define gxc#apply-expression-subst*
      (lambda _%$%args224207224230%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%$%args224207224230%_)))
    (define gxc#::inline-subst::t
      (let ((__tmp224309 (list gxc#::basic-xform-expression::t))
            (__tmp224308 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::inline-subst::t
         '::inline-subst
         __tmp224309
         '(subst)
         __tmp224308
         '#f)))
    (define gxc#::inline-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::inline-subst::t)))
    (define gxc#make-::inline-subst
      (lambda _%$args224202%_
        (apply make-instance gxc#::inline-subst::t _%$args224202%_)))
    (define gxc#::inline-subst-subst
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::inline-subst::t 'subst)))
    (define gxc#::inline-subst-subst-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::inline-subst::t 'subst)))
    (define gxc#&::inline-subst-subst
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#::inline-subst::t 'subst)))
    (define gxc#&::inline-subst-subst-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#::inline-subst::t 'subst)))
    (define gxc#::inline-subst-bind-methods!
      (let ((__tmp224310
             (lambda ()
               (force gxc#::basic-xform-expression-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::inline-subst::t
                  '%#begin
                  gxc#xform-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::inline-subst::t
                  '%#ref
                  gxc#inline-subst-ref%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::inline-subst::t
                  '%#set!
                  gxc#inline-subst-setq%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::inline-subst::t)))))
        (declare (not safe))
        (__make-atomic-promise __tmp224310)))
    (define gxc#apply-inline-subst__%
      (lambda (_%@@keywords224177%_ _%$%subst224174224178%_ _%stx224179%_)
        (let ((_%subst224182%_
               (if (eq? _%$%subst224174224178%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%$%subst224174224178%_)))
          (force gxc#::inline-subst-bind-methods!)
          (let* ((_%self224184%_
                  (let ((__obj224290
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::inline-subst::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224290
                       _%subst224182%_
                       '1
                       '#f
                       '#f))
                    __obj224290))
                 (__tmp224311
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self224184%_ _%stx224179%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp224311
             gxc#current-compile-method
             _%self224184%_)))))
    (define gxc#apply-inline-subst__@
      (lambda (_%@@keywords224191%_ . _%args224192%_)
        (apply gxc#apply-inline-subst__%
               _%@@keywords224191%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords224191%_
                  'subst:
                  absent-value))
               _%args224192%_)))
    (define gxc#apply-inline-subst
      (lambda _%$%args224175224198%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-inline-subst__@
               _%$%args224175224198%_)))
    (define gxc#::find-expression::t
      (let ((__tmp224312 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp224312
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args224170%_
        (apply make-instance gxc#::find-expression::t _%$args224170%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp224313
             (lambda ()
               (force gxc#::false-expression-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#begin
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#begin-annotation
                  gxc#apply-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#lambda
                  gxc#apply-body-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#case-lambda
                  gxc#apply-body-case-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#let-values
                  gxc#find-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#letrec-values
                  gxc#find-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#letrec*-values
                  gxc#find-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#call
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#call-unchecked
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#if
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#set!
                  gxc#apply-body-setq%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#struct-instance?
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#struct-direct-instance?
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#struct-ref
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#struct-set!
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#struct-direct-ref
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#struct-direct-set!
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#struct-unchecked-ref
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#struct-unchecked-set!
                  gxc#find-body%)))))
        (declare (not safe))
        (__make-atomic-promise __tmp224313)))
    (define gxc#::find-var-refs::t
      (let ((__tmp224315 (list gxc#::find-expression::t))
            (__tmp224314 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp224315
         '(ids)
         __tmp224314
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args224166%_
        (apply make-instance gxc#::find-var-refs::t _%$args224166%_)))
    (define gxc#::find-var-refs-ids
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::find-var-refs::t 'ids)))
    (define gxc#::find-var-refs-ids-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::find-var-refs::t 'ids)))
    (define gxc#&::find-var-refs-ids
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#::find-var-refs::t 'ids)))
    (define gxc#&::find-var-refs-ids-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#::find-var-refs::t 'ids)))
    (define gxc#::find-var-refs-bind-methods!
      (let ((__tmp224316
             (lambda ()
               (force gxc#::find-expression-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-var-refs::t
                  '%#ref
                  gxc#find-var-refs-ref%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-var-refs::t
                  '%#set!
                  gxc#find-var-refs-setq%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::find-var-refs::t)))))
        (declare (not safe))
        (__make-atomic-promise __tmp224316)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords224141%_ _%$%ids224138224142%_ _%stx224143%_)
        (let ((_%ids224146%_
               (if (eq? _%$%ids224138224142%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%$%ids224138224142%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self224148%_
                  (let ((__obj224293
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224293
                       _%ids224146%_
                       '1
                       '#f
                       '#f))
                    __obj224293))
                 (__tmp224317
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self224148%_ _%stx224143%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp224317
             gxc#current-compile-method
             _%self224148%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords224155%_ . _%args224156%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords224155%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords224155%_ 'ids: absent-value))
               _%args224156%_)))
    (define gxc#apply-find-var-refs
      (lambda _%$%args224139224162%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%$%args224139224162%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp224319 (list gxc#::collect-expression-refs::t))
            (__tmp224318 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp224319
         '()
         __tmp224318
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args224134%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args224134%_)))
    (define gxc#::collect-runtime-refs-table
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::collect-runtime-refs::t 'table)))
    (define gxc#::collect-runtime-refs-table-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::collect-runtime-refs::t 'table)))
    (define gxc#&::collect-runtime-refs-table
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::collect-runtime-refs::t
         'table)))
    (define gxc#&::collect-runtime-refs-table-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::collect-runtime-refs::t
         'table)))
    (define gxc#::collect-runtime-refs-bind-methods!
      (let ((__tmp224320
             (lambda ()
               (force gxc#::collect-expression-refs-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-runtime-refs::t
                  '%#ref
                  gxc#collect-runtime-refs-ref%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-runtime-refs::t
                  '%#set!
                  gxc#collect-runtime-refs-setq%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::collect-runtime-refs::t)))))
        (declare (not safe))
        (__make-atomic-promise __tmp224320)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords224109%_ _%$%table224106224110%_ _%stx224111%_)
        (let ((_%table224114%_
               (if (eq? _%$%table224106224110%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%$%table224106224110%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self224116%_
                  (let ((__obj224295
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224295
                       _%table224114%_
                       '1
                       '#f
                       '#f))
                    __obj224295))
                 (__tmp224321
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self224116%_ _%stx224111%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp224321
             gxc#current-compile-method
             _%self224116%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords224123%_ . _%args224124%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords224123%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords224123%_
                  'table:
                  absent-value))
               _%args224124%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%$%args224107224130%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%$%args224107224130%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self224035%_ _%stx224036%_)
        (let* ((_%$%g224038224055%_
                (lambda (_%$%g224039224052%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g224039224052%_))))
               (_%$%g224037224102%_
                (lambda (_%$%g224039224058%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g224039224058%_))
                      (let ((_%$%e224042224060%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g224039224058%_))))
                        (let ((_%$%hd224043224063%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e224042224060%_)))
                              (_%$%tl224044224065%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e224042224060%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl224044224065%_))
                              (let ((_%$%e224045224068%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl224044224065%_))))
                                (let ((_%$%hd224046224071%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e224045224068%_)))
                                      (_%$%tl224047224073%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e224045224068%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl224047224073%_))
                                      (let ((_%$%e224048224076%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl224047224073%_))))
                                        (let ((_%$%hd224049224079%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e224048224076%_)))
                                              (_%$%tl224050224081%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e224048224076%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl224050224081%_))
                                              (let ((_%sym224100%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#identifier-symbol
                                                        _%$%hd224046224071%_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"collect mutator "
                                                   _%sym224100%_))
                                                (let ((__tmp224322
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#current-compile-mutators))))
                                                  (declare (not safe))
                                                  (hash-put!
                                                   __tmp224322
                                                   _%sym224100%_
                                                   '#t))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self224035%_
                                                   _%$%hd224049224079%_)))
                                              (_%$%g224038224055%_
                                               _%$%g224039224058%_))))
                                      (_%$%g224038224055%_
                                       _%$%g224039224058%_))))
                              (_%$%g224038224055%_ _%$%g224039224058%_))))
                      (_%$%g224038224055%_ _%$%g224039224058%_)))))
          (_%$%g224037224102%_ _%stx224036%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self223983%_ _%stx223984%_)
        (let* ((_%$%g223986223999%_
                (lambda (_%$%g223987223996%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g223987223996%_))))
               (_%$%g223985224032%_
                (lambda (_%$%g223987224002%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g223987224002%_))
                      (let ((_%$%e223989224004%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g223987224002%_))))
                        (let ((_%$%hd223990224007%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e223989224004%_)))
                              (_%$%tl223991224009%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e223989224004%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl223991224009%_))
                              (let ((_%$%e223992224012%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl223991224009%_))))
                                (let ((_%$%hd223993224015%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e223992224012%_)))
                                      (_%$%tl223994224017%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e223992224012%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl223994224017%_))
                                      (if (let ((__tmp224323
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self223983%_
                                                    'id))))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             _%$%hd223993224015%_
                                             __tmp224323))
                                          (let ((__tmp224324
                                                 (cons '%#ref
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (slot-ref__0 _%self223983%_ 'new-id))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp224324
                                             _%stx223984%_))
                                          _%stx223984%_)
                                      (_%$%g223986223999%_
                                       _%$%g223987224002%_))))
                              (_%$%g223986223999%_ _%$%g223987224002%_))))
                      (_%$%g223986223999%_ _%$%g223987224002%_)))))
          (_%$%g223985224032%_ _%stx223984%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self223923%_ _%stx223924%_)
        (let* ((_%$%g223926223939%_
                (lambda (_%$%g223927223936%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g223927223936%_))))
               (_%$%g223925223980%_
                (lambda (_%$%g223927223942%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g223927223942%_))
                      (let ((_%$%e223929223944%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g223927223942%_))))
                        (let ((_%$%hd223930223947%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e223929223944%_)))
                              (_%$%tl223931223949%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e223929223944%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl223931223949%_))
                              (let ((_%$%e223932223952%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl223931223949%_))))
                                (let ((_%$%hd223933223955%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e223932223952%_)))
                                      (_%$%tl223934223957%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e223932223952%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl223934223957%_))
                                      (let ((_%$e223974%_
                                             (let ((__tmp224326
                                                    (lambda (_%sub223972%_)
                                                      (let ((__tmp224327
                                                             (car _%sub223972%_)))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         _%$%hd223933223955%_
                                                         __tmp224327))))
                                                   (__tmp224325
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self223923%_
                                                       'subst))))
                                               (declare (not safe))
                                               (__find __tmp224326
                                                       __tmp224325))))
                                        (if _%$e223974%_
                                            (let ((__tmp224328
                                                   (cons '%#ref
                                                         (cons (cdr _%$e223974%_)
                                                               '()))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp224328
                                               _%stx223924%_))
                                            _%stx223924%_))
                                      (_%$%g223926223939%_
                                       _%$%g223927223942%_))))
                              (_%$%g223926223939%_ _%$%g223927223942%_))))
                      (_%$%g223926223939%_ _%$%g223927223942%_)))))
          (_%$%g223925223980%_ _%stx223924%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self223852%_ _%stx223853%_)
        (let* ((_%$%g223855223872%_
                (lambda (_%$%g223856223869%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g223856223869%_))))
               (_%$%g223854223920%_
                (lambda (_%$%g223856223875%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g223856223875%_))
                      (let ((_%$%e223859223877%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g223856223875%_))))
                        (let ((_%$%hd223860223880%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e223859223877%_)))
                              (_%$%tl223861223882%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e223859223877%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl223861223882%_))
                              (let ((_%$%e223862223885%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl223861223882%_))))
                                (let ((_%$%hd223863223888%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e223862223885%_)))
                                      (_%$%tl223864223890%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e223862223885%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl223864223890%_))
                                      (let ((_%$%e223865223893%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl223864223890%_))))
                                        (let ((_%$%hd223866223896%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e223865223893%_)))
                                              (_%$%tl223867223898%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e223865223893%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl223867223898%_))
                                              (let ((_%new-expr223917%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self223852%_
                                                        _%$%hd223866223896%_)))
                                                    (_%new-xid223918%_
                                                     (if (let ((__tmp224329
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self223852%_ 'id))))
                   (declare (not safe))
                   (gx#free-identifier=? _%$%hd223863223888%_ __tmp224329))
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _%self223852%_ 'new-id))
                 _%$%hd223863223888%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((__tmp224330
                                                       (cons '%#set!
                                                             (cons _%new-xid223918%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%new-expr223917%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp224330
                                                   _%stx223853%_)))
                                              (_%$%g223855223872%_
                                               _%$%g223856223875%_))))
                                      (_%$%g223855223872%_
                                       _%$%g223856223875%_))))
                              (_%$%g223855223872%_ _%$%g223856223875%_))))
                      (_%$%g223855223872%_ _%$%g223856223875%_)))))
          (_%$%g223854223920%_ _%stx223853%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self223775%_ _%stx223776%_)
        (let* ((_%$%g223778223795%_
                (lambda (_%$%g223779223792%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g223779223792%_))))
               (_%$%g223777223849%_
                (lambda (_%$%g223779223798%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g223779223798%_))
                      (let ((_%$%e223782223800%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g223779223798%_))))
                        (let ((_%$%hd223783223803%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e223782223800%_)))
                              (_%$%tl223784223805%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e223782223800%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl223784223805%_))
                              (let ((_%$%e223785223808%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl223784223805%_))))
                                (let ((_%$%hd223786223811%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e223785223808%_)))
                                      (_%$%tl223787223813%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e223785223808%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl223787223813%_))
                                      (let ((_%$%e223788223816%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl223787223813%_))))
                                        (let ((_%$%hd223789223819%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e223788223816%_)))
                                              (_%$%tl223790223821%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e223788223816%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl223790223821%_))
                                              (let ((_%new-expr223846%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self223775%_
                                                        _%$%hd223789223819%_)))
                                                    (_%new-xid223847%_
                                                     (let ((_%$e223842%_
                                                            (let ((__tmp224332
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%sub223840%_)
                             (let ((__tmp224333 (car _%sub223840%_)))
                               (declare (not safe))
                               (gx#free-identifier=?
                                _%$%hd223786223811%_
                                __tmp224333))))
                          (__tmp224331
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self223775%_ 'subst))))
                      (declare (not safe))
                      (__find __tmp224332 __tmp224331))))
               (if _%$e223842%_ (cdr _%$e223842%_) _%$%hd223786223811%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((__tmp224334
                                                       (cons '%#set!
                                                             (cons _%new-xid223847%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%new-expr223846%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp224334
                                                   _%stx223776%_)))
                                              (_%$%g223778223795%_
                                               _%$%g223779223798%_))))
                                      (_%$%g223778223795%_
                                       _%$%g223779223798%_))))
                              (_%$%g223778223795%_ _%$%g223779223798%_))))
                      (_%$%g223778223795%_ _%$%g223779223798%_)))))
          (_%$%g223777223849%_ _%stx223776%_))))
    (define gxc#inline-subst-ref%
      (lambda (_%self223715%_ _%stx223716%_)
        (let* ((_%$%g223718223731%_
                (lambda (_%$%g223719223728%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g223719223728%_))))
               (_%$%g223717223772%_
                (lambda (_%$%g223719223734%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g223719223734%_))
                      (let ((_%$%e223721223736%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g223719223734%_))))
                        (let ((_%$%hd223722223739%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e223721223736%_)))
                              (_%$%tl223723223741%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e223721223736%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl223723223741%_))
                              (let ((_%$%e223724223744%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl223723223741%_))))
                                (let ((_%$%hd223725223747%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e223724223744%_)))
                                      (_%$%tl223726223749%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e223724223744%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl223726223749%_))
                                      (let ((_%$e223766%_
                                             (let ((__tmp224336
                                                    (lambda (_%sub223764%_)
                                                      (let ((__tmp224337
                                                             (car _%sub223764%_)))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         _%$%hd223725223747%_
                                                         __tmp224337))))
                                                   (__tmp224335
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self223715%_
                                                       'subst))))
                                               (declare (not safe))
                                               (__find __tmp224336
                                                       __tmp224335))))
                                        (if _%$e223766%_
                                            (let ((__tmp224338
                                                   (cdr _%$e223766%_)))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp224338
                                               _%stx223716%_))
                                            _%stx223716%_))
                                      (_%$%g223718223731%_
                                       _%$%g223719223734%_))))
                              (_%$%g223718223731%_ _%$%g223719223734%_))))
                      (_%$%g223718223731%_ _%$%g223719223734%_)))))
          (_%$%g223717223772%_ _%stx223716%_))))
    (define gxc#inline-subst-setq%
      (lambda (_%self223645%_ _%stx223646%_)
        (let* ((_%$%g223648223665%_
                (lambda (_%$%g223649223662%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g223649223662%_))))
               (_%$%g223647223712%_
                (lambda (_%$%g223649223668%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g223649223668%_))
                      (let ((_%$%e223652223670%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g223649223668%_))))
                        (let ((_%$%hd223653223673%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e223652223670%_)))
                              (_%$%tl223654223675%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e223652223670%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl223654223675%_))
                              (let ((_%$%e223655223678%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl223654223675%_))))
                                (let ((_%$%hd223656223681%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e223655223678%_)))
                                      (_%$%tl223657223683%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e223655223678%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl223657223683%_))
                                      (let ((_%$%e223658223686%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl223657223683%_))))
                                        (let ((_%$%hd223659223689%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e223658223686%_)))
                                              (_%$%tl223660223691%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e223658223686%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl223660223691%_))
                                              (if (let ((__tmp224340
                                                         (lambda (_%sub223710%_)
                                                           (let ((__tmp224341
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (car _%sub223710%_)))
                     (declare (not safe))
                     (gx#free-identifier=? _%$%hd223656223681%_ __tmp224341))))
                (__tmp224339
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _%self223645%_ 'subst))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__find __tmp224340
                                                            __tmp224339))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#raise-compile-error
                                                     '"mutating inline substitution"
                                                     _%stx223646%_
                                                     _%$%hd223656223681%_))
                                                  (let ((__tmp224342
                                                         (cons '%#set!
                                                               (cons _%$%hd223656223681%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self223645%_
                                      _%$%hd223659223689%_))
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp224342
                                                     _%stx223646%_)))
                                              (_%$%g223648223665%_
                                               _%$%g223649223668%_))))
                                      (_%$%g223648223665%_
                                       _%$%g223649223668%_))))
                              (_%$%g223648223665%_ _%$%g223649223668%_))))
                      (_%$%g223648223665%_ _%$%g223649223668%_)))))
          (_%$%g223647223712%_ _%stx223646%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self223591%_ _%stx223592%_)
        (let* ((_%$%g223594223607%_
                (lambda (_%$%g223595223604%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g223595223604%_))))
               (_%$%g223593223642%_
                (lambda (_%$%g223595223610%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g223595223610%_))
                      (let ((_%$%e223597223612%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g223595223610%_))))
                        (let ((_%$%hd223598223615%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e223597223612%_)))
                              (_%$%tl223599223617%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e223597223612%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl223599223617%_))
                              (let ((_%$%e223600223620%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl223599223617%_))))
                                (let ((_%$%hd223601223623%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e223600223620%_)))
                                      (_%$%tl223602223625%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e223600223620%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl223602223625%_))
                                      (let* ((_%eid223640%_
                                              (let ()
                                                (declare (not safe))
                                                (gxc#identifier-symbol
                                                 _%$%hd223601223623%_)))
                                             (__tmp224343
                                              (let ()
                                                (declare (not safe))
                                                (slot-ref__0
                                                 _%self223591%_
                                                 'table))))
                                        (declare (not safe))
                                        (hash-update!__%
                                         __tmp224343
                                         _%eid223640%_
                                         1+
                                         '0))
                                      (_%$%g223594223607%_
                                       _%$%g223595223610%_))))
                              (_%$%g223594223607%_ _%$%g223595223610%_))))
                      (_%$%g223594223607%_ _%$%g223595223610%_)))))
          (_%$%g223593223642%_ _%stx223592%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self223521%_ _%stx223522%_)
        (let* ((_%$%g223524223541%_
                (lambda (_%$%g223525223538%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g223525223538%_))))
               (_%$%g223523223588%_
                (lambda (_%$%g223525223544%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g223525223544%_))
                      (let ((_%$%e223528223546%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g223525223544%_))))
                        (let ((_%$%hd223529223549%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e223528223546%_)))
                              (_%$%tl223530223551%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e223528223546%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl223530223551%_))
                              (let ((_%$%e223531223554%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl223530223551%_))))
                                (let ((_%$%hd223532223557%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e223531223554%_)))
                                      (_%$%tl223533223559%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e223531223554%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl223533223559%_))
                                      (let ((_%$%e223534223562%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl223533223559%_))))
                                        (let ((_%$%hd223535223565%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e223534223562%_)))
                                              (_%$%tl223536223567%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e223534223562%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl223536223567%_))
                                              (let ((_%eid223586%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#identifier-symbol
                                                        _%$%hd223532223557%_))))
                                                (let ((__tmp224344
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self223521%_
                                                          'table))))
                                                  (declare (not safe))
                                                  (hash-update!__%
                                                   __tmp224344
                                                   _%eid223586%_
                                                   1+
                                                   '0))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self223521%_
                                                   _%$%hd223535223565%_)))
                                              (_%$%g223524223541%_
                                               _%$%g223525223544%_))))
                                      (_%$%g223524223541%_
                                       _%$%g223525223544%_))))
                              (_%$%g223524223541%_ _%$%g223525223544%_))))
                      (_%$%g223524223541%_ _%$%g223525223544%_)))))
          (_%$%g223523223588%_ _%stx223522%_))))
    (define gxc#find-body%
      (lambda (_%self223436%_ _%stx223437%_)
        (let* ((_%$%g223439223458%_
                (lambda (_%$%g223440223455%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g223440223455%_))))
               (_%$%g223438223518%_
                (lambda (_%$%g223440223461%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g223440223461%_))
                      (let ((_%$%e223442223463%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g223440223461%_))))
                        (let ((_%$%hd223443223466%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e223442223463%_)))
                              (_%$%tl223444223468%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e223442223463%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl223444223468%_))
                              (let ((_g224345_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl223444223468%_
                                        '0))))
                                (begin
                                  (let ((_g224346_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g224345_)
                                               (##values-length _g224345_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g224346_ 2)))
                                        (error "Context expects 2 values"
                                               _g224346_)))
                                  (let ((_%$%target223445223471%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g224345_ 0)))
                                        (_%$%tl223447223473%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g224345_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl223447223473%_))
                                        (letrec ((_%$%loop223448223476%_
                                                  (lambda (_%$%hd223446223479%_
                                                           _%$%expr223452223481%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd223446223479%_))
                                                        (let ((_%$%e223449223483%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd223446223479%_))))
                  (let ((_%$%lp-hd223450223486%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e223449223483%_)))
                        (_%$%lp-tl223451223488%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e223449223483%_))))
                    (_%$%loop223448223476%_
                     _%$%lp-tl223451223488%_
                     (cons _%$%lp-hd223450223486%_ _%$%expr223452223481%_))))
                (let ((_%$%expr223453223491%_
                       (reverse _%$%expr223452223481%_)))
                  (let ((__tmp224349
                         (lambda (_%$%g223506223508%_)
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self223436%_
                              _%$%g223506223508%_))))
                        (__tmp224347
                         (let ((__tmp224348
                                (lambda (_%$%g223510223513%_
                                         _%$%g223511223515%_)
                                  (cons _%$%g223510223513%_
                                        _%$%g223511223515%_))))
                           (declare (not safe))
                           (foldr__0 __tmp224348 '() _%$%expr223453223491%_))))
                    (declare (not safe))
                    (ormap__0 __tmp224349 __tmp224347)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop223448223476%_
                                           _%$%target223445223471%_
                                           '()))
                                        (_%$%g223439223458%_
                                         _%$%g223440223461%_)))))
                              (_%$%g223439223458%_ _%$%g223440223461%_))))
                      (_%$%g223439223458%_ _%$%g223440223461%_)))))
          (_%$%g223438223518%_ _%stx223437%_))))
    (define gxc#find-let-values%
      (lambda (_%self223290%_ _%stx223291%_)
        (let* ((_%$%g223293223328%_
                (lambda (_%$%g223294223325%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g223294223325%_))))
               (_%$%g223292223433%_
                (lambda (_%$%g223294223331%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g223294223331%_))
                      (let ((_%$%e223298223333%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g223294223331%_))))
                        (let ((_%$%hd223299223336%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e223298223333%_)))
                              (_%$%tl223300223338%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e223298223333%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl223300223338%_))
                              (let ((_%$%e223301223341%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl223300223338%_))))
                                (let ((_%$%hd223302223344%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e223301223341%_)))
                                      (_%$%tl223303223346%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e223301223341%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd223302223344%_))
                                      (let ((_g224350_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%hd223302223344%_
                                                '0))))
                                        (begin
                                          (let ((_g224351_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g224350_)
                                                       (##values-length
                                                        _g224350_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g224351_ 2)))
                                                (error "Context expects 2 values"
                                                       _g224351_)))
                                          (let ((_%$%target223304223349%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g224350_ 0)))
                                                (_%$%tl223306223351%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g224350_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl223306223351%_))
                                                (letrec ((_%$%loop223307223354%_
                                                          (lambda (_%$%hd223305223357%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr223311223359%_
                           _%$%bind223312223360%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd223305223357%_))
                        (let ((_%$%e223308223362%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd223305223357%_))))
                          (let ((_%$%lp-hd223309223365%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e223308223362%_)))
                                (_%$%lp-tl223310223367%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e223308223362%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd223309223365%_))
                                (let ((_%$%e223315223370%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%lp-hd223309223365%_))))
                                  (let ((_%$%hd223316223373%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e223315223370%_)))
                                        (_%$%tl223317223375%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e223315223370%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl223317223375%_))
                                        (let ((_%$%e223318223378%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl223317223375%_))))
                                          (let ((_%$%hd223319223381%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e223318223378%_)))
                                                (_%$%tl223320223383%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e223318223378%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl223320223383%_))
                                                (_%$%loop223307223354%_
                                                 _%$%lp-tl223310223367%_
                                                 (cons _%$%hd223319223381%_
                                                       _%$%expr223311223359%_)
                                                 (cons _%$%hd223316223373%_
                                                       _%$%bind223312223360%_))
                                                (_%$%g223293223328%_
                                                 _%$%g223294223331%_))))
                                        (_%$%g223293223328%_
                                         _%$%g223294223331%_))))
                                (_%$%g223293223328%_ _%$%g223294223331%_))))
                        (let ((_%$%expr223313223386%_
                               (reverse _%$%expr223311223359%_))
                              (_%$%bind223314223387%_
                               (reverse _%$%bind223312223360%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl223303223346%_))
                              (let ((_%$%e223321223389%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl223303223346%_))))
                                (let ((_%$%hd223322223392%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e223321223389%_)))
                                      (_%$%tl223323223394%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e223321223389%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl223323223394%_))
                                      (let ((_%$e223430%_
                                             (let ((__tmp224354
                                                    (lambda (_%$%g223418223420%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self223290%_
                                                         _%$%g223418223420%_))))
                                                   (__tmp224352
                                                    (let ((__tmp224353
                                                           (lambda (_%$%g223422223425%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g223423223427%_)
                     (cons _%$%g223422223425%_ _%$%g223423223427%_))))
              (declare (not safe))
              (foldr__0 __tmp224353 '() _%$%expr223313223386%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (ormap__0
                                                __tmp224354
                                                __tmp224352))))
                                        (if _%$e223430%_
                                            _%$e223430%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self223290%_
                                               _%$%hd223322223392%_))))
                                      (_%$%g223293223328%_
                                       _%$%g223294223331%_))))
                              (_%$%g223293223328%_ _%$%g223294223331%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop223307223354%_
                                                   _%$%target223304223349%_
                                                   '()
                                                   '()))
                                                (_%$%g223293223328%_
                                                 _%$%g223294223331%_)))))
                                      (_%$%g223293223328%_
                                       _%$%g223294223331%_))))
                              (_%$%g223293223328%_ _%$%g223294223331%_))))
                      (_%$%g223293223328%_ _%$%g223294223331%_)))))
          (_%$%g223292223433%_ _%stx223291%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self223234%_ _%stx223235%_)
        (let* ((_%$%g223237223250%_
                (lambda (_%$%g223238223247%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g223238223247%_))))
               (_%$%g223236223287%_
                (lambda (_%$%g223238223253%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g223238223253%_))
                      (let ((_%$%e223240223255%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g223238223253%_))))
                        (let ((_%$%hd223241223258%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e223240223255%_)))
                              (_%$%tl223242223260%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e223240223255%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl223242223260%_))
                              (let ((_%$%e223243223263%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl223242223260%_))))
                                (let ((_%$%hd223244223266%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e223243223263%_)))
                                      (_%$%tl223245223268%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e223243223263%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl223245223268%_))
                                      (let ((__tmp224356
                                             (lambda (_%$%g223282223284%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%$%hd223244223266%_
                                                  _%$%g223282223284%_))))
                                            (__tmp224355
                                             (let ()
                                               (declare (not safe))
                                               (slot-ref__0
                                                _%self223234%_
                                                'ids))))
                                        (declare (not safe))
                                        (__find __tmp224356 __tmp224355))
                                      (_%$%g223237223250%_
                                       _%$%g223238223253%_))))
                              (_%$%g223237223250%_ _%$%g223238223253%_))))
                      (_%$%g223237223250%_ _%$%g223238223253%_)))))
          (_%$%g223236223287%_ _%stx223235%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self223159%_ _%stx223160%_)
        (let* ((_%$%g223162223179%_
                (lambda (_%$%g223163223176%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g223163223176%_))))
               (_%$%g223161223231%_
                (lambda (_%$%g223163223182%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g223163223182%_))
                      (let ((_%$%e223166223184%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g223163223182%_))))
                        (let ((_%$%hd223167223187%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e223166223184%_)))
                              (_%$%tl223168223189%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e223166223184%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl223168223189%_))
                              (let ((_%$%e223169223192%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl223168223189%_))))
                                (let ((_%$%hd223170223195%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e223169223192%_)))
                                      (_%$%tl223171223197%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e223169223192%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl223171223197%_))
                                      (let ((_%$%e223172223200%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl223171223197%_))))
                                        (let ((_%$%hd223173223203%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e223172223200%_)))
                                              (_%$%tl223174223205%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e223172223200%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl223174223205%_))
                                              (let ((_%$e223228%_
                                                     (let ((__tmp224358
                                                            (lambda (_%$%g223223223225%_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#free-identifier=?
                         _%$%hd223170223195%_
                         _%$%g223223223225%_))))
                   (__tmp224357
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self223159%_ 'ids))))
               (declare (not safe))
               (__find __tmp224358 __tmp224357))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if _%$e223228%_
                                                    _%$e223228%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self223159%_
                                                       _%$%hd223173223203%_))))
                                              (_%$%g223162223179%_
                                               _%$%g223163223182%_))))
                                      (_%$%g223162223179%_
                                       _%$%g223163223182%_))))
                              (_%$%g223162223179%_ _%$%g223163223182%_))))
                      (_%$%g223162223179%_ _%$%g223163223182%_)))))
          (_%$%g223161223231%_ _%stx223160%_))))))
