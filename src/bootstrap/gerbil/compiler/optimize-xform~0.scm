(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1789188910)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp224280 (list gxc#::void::t))
            (__tmp224279 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp224280
         '()
         __tmp224279
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args224264%_
        (apply make-instance gxc#::collect-mutators::t _%$args224264%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp224281
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
        (__make-atomic-promise __tmp224281)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx224256%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self224259%_
                (let ((__obj224267
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj224267))
               (__tmp224282
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self224259%_ _%stx224256%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp224282
           gxc#current-compile-method
           _%self224259%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp224284 (list gxc#::basic-xform-expression::t))
            (__tmp224283 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp224284
         '(id new-id)
         __tmp224283
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args224253%_
        (apply make-instance gxc#::expression-subst::t _%$args224253%_)))
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
      (let ((__tmp224285
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
        (__make-atomic-promise __tmp224285)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords224225%_
               _%$%id224221224226%_
               _%$%new-id224222224227%_
               _%stx224228%_)
        (let* ((_%id224231%_
                (if (eq? _%$%id224221224226%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%$%id224221224226%_))
               (_%new-id224233%_
                (if (eq? _%$%new-id224222224227%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%$%new-id224222224227%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self224235%_
                  (let ((__obj224269
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224269
                       _%id224231%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224269
                       _%new-id224233%_
                       '2
                       '#f
                       '#f))
                    __obj224269))
                 (__tmp224286
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self224235%_ _%stx224228%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp224286
             gxc#current-compile-method
             _%self224235%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords224242%_ . _%args224243%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords224242%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords224242%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords224242%_
                  'new-id:
                  absent-value))
               _%args224243%_)))
    (define gxc#apply-expression-subst
      (lambda _%$%args224223224249%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%$%args224223224249%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp224288 (list gxc#::basic-xform-expression::t))
            (__tmp224287 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp224288
         '(subst)
         __tmp224287
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args224217%_
        (apply make-instance gxc#::expression-subst*::t _%$args224217%_)))
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
      (let ((__tmp224289
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
        (__make-atomic-promise __tmp224289)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords224192%_ _%$%subst224189224193%_ _%stx224194%_)
        (let ((_%subst224197%_
               (if (eq? _%$%subst224189224193%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%$%subst224189224193%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self224199%_
                  (let ((__obj224271
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224271
                       _%subst224197%_
                       '1
                       '#f
                       '#f))
                    __obj224271))
                 (__tmp224290
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self224199%_ _%stx224194%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp224290
             gxc#current-compile-method
             _%self224199%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords224206%_ . _%args224207%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords224206%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords224206%_
                  'subst:
                  absent-value))
               _%args224207%_)))
    (define gxc#apply-expression-subst*
      (lambda _%$%args224190224213%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%$%args224190224213%_)))
    (define gxc#::inline-subst::t
      (let ((__tmp224292 (list gxc#::basic-xform-expression::t))
            (__tmp224291 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::inline-subst::t
         '::inline-subst
         __tmp224292
         '(subst)
         __tmp224291
         '#f)))
    (define gxc#::inline-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::inline-subst::t)))
    (define gxc#make-::inline-subst
      (lambda _%$args224185%_
        (apply make-instance gxc#::inline-subst::t _%$args224185%_)))
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
      (let ((__tmp224293
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
        (__make-atomic-promise __tmp224293)))
    (define gxc#apply-inline-subst__%
      (lambda (_%@@keywords224160%_ _%$%subst224157224161%_ _%stx224162%_)
        (let ((_%subst224165%_
               (if (eq? _%$%subst224157224161%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%$%subst224157224161%_)))
          (force gxc#::inline-subst-bind-methods!)
          (let* ((_%self224167%_
                  (let ((__obj224273
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::inline-subst::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224273
                       _%subst224165%_
                       '1
                       '#f
                       '#f))
                    __obj224273))
                 (__tmp224294
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self224167%_ _%stx224162%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp224294
             gxc#current-compile-method
             _%self224167%_)))))
    (define gxc#apply-inline-subst__@
      (lambda (_%@@keywords224174%_ . _%args224175%_)
        (apply gxc#apply-inline-subst__%
               _%@@keywords224174%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords224174%_
                  'subst:
                  absent-value))
               _%args224175%_)))
    (define gxc#apply-inline-subst
      (lambda _%$%args224158224181%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-inline-subst__@
               _%$%args224158224181%_)))
    (define gxc#::find-expression::t
      (let ((__tmp224295 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp224295
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args224153%_
        (apply make-instance gxc#::find-expression::t _%$args224153%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp224296
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
        (__make-atomic-promise __tmp224296)))
    (define gxc#::find-var-refs::t
      (let ((__tmp224298 (list gxc#::find-expression::t))
            (__tmp224297 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp224298
         '(ids)
         __tmp224297
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args224149%_
        (apply make-instance gxc#::find-var-refs::t _%$args224149%_)))
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
      (let ((__tmp224299
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
        (__make-atomic-promise __tmp224299)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords224124%_ _%$%ids224121224125%_ _%stx224126%_)
        (let ((_%ids224129%_
               (if (eq? _%$%ids224121224125%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%$%ids224121224125%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self224131%_
                  (let ((__obj224276
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224276
                       _%ids224129%_
                       '1
                       '#f
                       '#f))
                    __obj224276))
                 (__tmp224300
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self224131%_ _%stx224126%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp224300
             gxc#current-compile-method
             _%self224131%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords224138%_ . _%args224139%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords224138%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords224138%_ 'ids: absent-value))
               _%args224139%_)))
    (define gxc#apply-find-var-refs
      (lambda _%$%args224122224145%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%$%args224122224145%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp224302 (list gxc#::collect-expression-refs::t))
            (__tmp224301 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp224302
         '()
         __tmp224301
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args224117%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args224117%_)))
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
      (let ((__tmp224303
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
        (__make-atomic-promise __tmp224303)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords224092%_ _%$%table224089224093%_ _%stx224094%_)
        (let ((_%table224097%_
               (if (eq? _%$%table224089224093%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%$%table224089224093%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self224099%_
                  (let ((__obj224278
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224278
                       _%table224097%_
                       '1
                       '#f
                       '#f))
                    __obj224278))
                 (__tmp224304
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self224099%_ _%stx224094%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp224304
             gxc#current-compile-method
             _%self224099%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords224106%_ . _%args224107%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords224106%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords224106%_
                  'table:
                  absent-value))
               _%args224107%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%$%args224090224113%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%$%args224090224113%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self224018%_ _%stx224019%_)
        (let* ((_%$%g224021224038%_
                (lambda (_%$%g224022224035%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g224022224035%_))))
               (_%$%g224020224085%_
                (lambda (_%$%g224022224041%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g224022224041%_))
                      (let ((_%$%e224025224043%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g224022224041%_))))
                        (let ((_%$%hd224026224046%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e224025224043%_)))
                              (_%$%tl224027224048%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e224025224043%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl224027224048%_))
                              (let ((_%$%e224028224051%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl224027224048%_))))
                                (let ((_%$%hd224029224054%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e224028224051%_)))
                                      (_%$%tl224030224056%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e224028224051%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl224030224056%_))
                                      (let ((_%$%e224031224059%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl224030224056%_))))
                                        (let ((_%$%hd224032224062%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e224031224059%_)))
                                              (_%$%tl224033224064%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e224031224059%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl224033224064%_))
                                              (let ((_%sym224083%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#identifier-symbol
                                                        _%$%hd224029224054%_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"collect mutator "
                                                   _%sym224083%_))
                                                (let ((__tmp224305
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#current-compile-mutators))))
                                                  (declare (not safe))
                                                  (hash-put!
                                                   __tmp224305
                                                   _%sym224083%_
                                                   '#t))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self224018%_
                                                   _%$%hd224032224062%_)))
                                              (_%$%g224021224038%_
                                               _%$%g224022224041%_))))
                                      (_%$%g224021224038%_
                                       _%$%g224022224041%_))))
                              (_%$%g224021224038%_ _%$%g224022224041%_))))
                      (_%$%g224021224038%_ _%$%g224022224041%_)))))
          (_%$%g224020224085%_ _%stx224019%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self223966%_ _%stx223967%_)
        (let* ((_%$%g223969223982%_
                (lambda (_%$%g223970223979%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g223970223979%_))))
               (_%$%g223968224015%_
                (lambda (_%$%g223970223985%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g223970223985%_))
                      (let ((_%$%e223972223987%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g223970223985%_))))
                        (let ((_%$%hd223973223990%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e223972223987%_)))
                              (_%$%tl223974223992%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e223972223987%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl223974223992%_))
                              (let ((_%$%e223975223995%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl223974223992%_))))
                                (let ((_%$%hd223976223998%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e223975223995%_)))
                                      (_%$%tl223977224000%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e223975223995%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl223977224000%_))
                                      (if (let ((__tmp224306
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self223966%_
                                                    'id))))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             _%$%hd223976223998%_
                                             __tmp224306))
                                          (let ((__tmp224307
                                                 (cons '%#ref
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (slot-ref__0 _%self223966%_ 'new-id))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp224307
                                             _%stx223967%_))
                                          _%stx223967%_)
                                      (_%$%g223969223982%_
                                       _%$%g223970223985%_))))
                              (_%$%g223969223982%_ _%$%g223970223985%_))))
                      (_%$%g223969223982%_ _%$%g223970223985%_)))))
          (_%$%g223968224015%_ _%stx223967%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self223906%_ _%stx223907%_)
        (let* ((_%$%g223909223922%_
                (lambda (_%$%g223910223919%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g223910223919%_))))
               (_%$%g223908223963%_
                (lambda (_%$%g223910223925%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g223910223925%_))
                      (let ((_%$%e223912223927%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g223910223925%_))))
                        (let ((_%$%hd223913223930%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e223912223927%_)))
                              (_%$%tl223914223932%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e223912223927%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl223914223932%_))
                              (let ((_%$%e223915223935%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl223914223932%_))))
                                (let ((_%$%hd223916223938%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e223915223935%_)))
                                      (_%$%tl223917223940%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e223915223935%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl223917223940%_))
                                      (let ((_%$e223957%_
                                             (let ((__tmp224309
                                                    (lambda (_%sub223955%_)
                                                      (let ((__tmp224310
                                                             (car _%sub223955%_)))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         _%$%hd223916223938%_
                                                         __tmp224310))))
                                                   (__tmp224308
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self223906%_
                                                       'subst))))
                                               (declare (not safe))
                                               (__find __tmp224309
                                                       __tmp224308))))
                                        (if _%$e223957%_
                                            (let ((__tmp224311
                                                   (cons '%#ref
                                                         (cons (cdr _%$e223957%_)
                                                               '()))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp224311
                                               _%stx223907%_))
                                            _%stx223907%_))
                                      (_%$%g223909223922%_
                                       _%$%g223910223925%_))))
                              (_%$%g223909223922%_ _%$%g223910223925%_))))
                      (_%$%g223909223922%_ _%$%g223910223925%_)))))
          (_%$%g223908223963%_ _%stx223907%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self223835%_ _%stx223836%_)
        (let* ((_%$%g223838223855%_
                (lambda (_%$%g223839223852%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g223839223852%_))))
               (_%$%g223837223903%_
                (lambda (_%$%g223839223858%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g223839223858%_))
                      (let ((_%$%e223842223860%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g223839223858%_))))
                        (let ((_%$%hd223843223863%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e223842223860%_)))
                              (_%$%tl223844223865%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e223842223860%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl223844223865%_))
                              (let ((_%$%e223845223868%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl223844223865%_))))
                                (let ((_%$%hd223846223871%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e223845223868%_)))
                                      (_%$%tl223847223873%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e223845223868%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl223847223873%_))
                                      (let ((_%$%e223848223876%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl223847223873%_))))
                                        (let ((_%$%hd223849223879%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e223848223876%_)))
                                              (_%$%tl223850223881%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e223848223876%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl223850223881%_))
                                              (let ((_%new-expr223900%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self223835%_
                                                        _%$%hd223849223879%_)))
                                                    (_%new-xid223901%_
                                                     (if (let ((__tmp224312
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self223835%_ 'id))))
                   (declare (not safe))
                   (gx#free-identifier=? _%$%hd223846223871%_ __tmp224312))
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _%self223835%_ 'new-id))
                 _%$%hd223846223871%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((__tmp224313
                                                       (cons '%#set!
                                                             (cons _%new-xid223901%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%new-expr223900%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp224313
                                                   _%stx223836%_)))
                                              (_%$%g223838223855%_
                                               _%$%g223839223858%_))))
                                      (_%$%g223838223855%_
                                       _%$%g223839223858%_))))
                              (_%$%g223838223855%_ _%$%g223839223858%_))))
                      (_%$%g223838223855%_ _%$%g223839223858%_)))))
          (_%$%g223837223903%_ _%stx223836%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self223758%_ _%stx223759%_)
        (let* ((_%$%g223761223778%_
                (lambda (_%$%g223762223775%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g223762223775%_))))
               (_%$%g223760223832%_
                (lambda (_%$%g223762223781%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g223762223781%_))
                      (let ((_%$%e223765223783%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g223762223781%_))))
                        (let ((_%$%hd223766223786%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e223765223783%_)))
                              (_%$%tl223767223788%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e223765223783%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl223767223788%_))
                              (let ((_%$%e223768223791%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl223767223788%_))))
                                (let ((_%$%hd223769223794%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e223768223791%_)))
                                      (_%$%tl223770223796%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e223768223791%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl223770223796%_))
                                      (let ((_%$%e223771223799%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl223770223796%_))))
                                        (let ((_%$%hd223772223802%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e223771223799%_)))
                                              (_%$%tl223773223804%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e223771223799%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl223773223804%_))
                                              (let ((_%new-expr223829%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self223758%_
                                                        _%$%hd223772223802%_)))
                                                    (_%new-xid223830%_
                                                     (let ((_%$e223825%_
                                                            (let ((__tmp224315
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%sub223823%_)
                             (let ((__tmp224316 (car _%sub223823%_)))
                               (declare (not safe))
                               (gx#free-identifier=?
                                _%$%hd223769223794%_
                                __tmp224316))))
                          (__tmp224314
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self223758%_ 'subst))))
                      (declare (not safe))
                      (__find __tmp224315 __tmp224314))))
               (if _%$e223825%_ (cdr _%$e223825%_) _%$%hd223769223794%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((__tmp224317
                                                       (cons '%#set!
                                                             (cons _%new-xid223830%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%new-expr223829%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp224317
                                                   _%stx223759%_)))
                                              (_%$%g223761223778%_
                                               _%$%g223762223781%_))))
                                      (_%$%g223761223778%_
                                       _%$%g223762223781%_))))
                              (_%$%g223761223778%_ _%$%g223762223781%_))))
                      (_%$%g223761223778%_ _%$%g223762223781%_)))))
          (_%$%g223760223832%_ _%stx223759%_))))
    (define gxc#inline-subst-ref%
      (lambda (_%self223698%_ _%stx223699%_)
        (let* ((_%$%g223701223714%_
                (lambda (_%$%g223702223711%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g223702223711%_))))
               (_%$%g223700223755%_
                (lambda (_%$%g223702223717%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g223702223717%_))
                      (let ((_%$%e223704223719%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g223702223717%_))))
                        (let ((_%$%hd223705223722%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e223704223719%_)))
                              (_%$%tl223706223724%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e223704223719%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl223706223724%_))
                              (let ((_%$%e223707223727%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl223706223724%_))))
                                (let ((_%$%hd223708223730%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e223707223727%_)))
                                      (_%$%tl223709223732%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e223707223727%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl223709223732%_))
                                      (let ((_%$e223749%_
                                             (let ((__tmp224319
                                                    (lambda (_%sub223747%_)
                                                      (let ((__tmp224320
                                                             (car _%sub223747%_)))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         _%$%hd223708223730%_
                                                         __tmp224320))))
                                                   (__tmp224318
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self223698%_
                                                       'subst))))
                                               (declare (not safe))
                                               (__find __tmp224319
                                                       __tmp224318))))
                                        (if _%$e223749%_
                                            (let ((__tmp224321
                                                   (cdr _%$e223749%_)))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp224321
                                               _%stx223699%_))
                                            _%stx223699%_))
                                      (_%$%g223701223714%_
                                       _%$%g223702223717%_))))
                              (_%$%g223701223714%_ _%$%g223702223717%_))))
                      (_%$%g223701223714%_ _%$%g223702223717%_)))))
          (_%$%g223700223755%_ _%stx223699%_))))
    (define gxc#inline-subst-setq%
      (lambda (_%self223628%_ _%stx223629%_)
        (let* ((_%$%g223631223648%_
                (lambda (_%$%g223632223645%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g223632223645%_))))
               (_%$%g223630223695%_
                (lambda (_%$%g223632223651%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g223632223651%_))
                      (let ((_%$%e223635223653%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g223632223651%_))))
                        (let ((_%$%hd223636223656%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e223635223653%_)))
                              (_%$%tl223637223658%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e223635223653%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl223637223658%_))
                              (let ((_%$%e223638223661%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl223637223658%_))))
                                (let ((_%$%hd223639223664%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e223638223661%_)))
                                      (_%$%tl223640223666%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e223638223661%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl223640223666%_))
                                      (let ((_%$%e223641223669%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl223640223666%_))))
                                        (let ((_%$%hd223642223672%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e223641223669%_)))
                                              (_%$%tl223643223674%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e223641223669%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl223643223674%_))
                                              (if (let ((__tmp224323
                                                         (lambda (_%sub223693%_)
                                                           (let ((__tmp224324
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (car _%sub223693%_)))
                     (declare (not safe))
                     (gx#free-identifier=? _%$%hd223639223664%_ __tmp224324))))
                (__tmp224322
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _%self223628%_ 'subst))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__find __tmp224323
                                                            __tmp224322))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#raise-compile-error
                                                     '"mutating inline substitution"
                                                     _%stx223629%_
                                                     _%$%hd223639223664%_))
                                                  (let ((__tmp224325
                                                         (cons '%#set!
                                                               (cons _%$%hd223639223664%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self223628%_
                                      _%$%hd223642223672%_))
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp224325
                                                     _%stx223629%_)))
                                              (_%$%g223631223648%_
                                               _%$%g223632223651%_))))
                                      (_%$%g223631223648%_
                                       _%$%g223632223651%_))))
                              (_%$%g223631223648%_ _%$%g223632223651%_))))
                      (_%$%g223631223648%_ _%$%g223632223651%_)))))
          (_%$%g223630223695%_ _%stx223629%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self223574%_ _%stx223575%_)
        (let* ((_%$%g223577223590%_
                (lambda (_%$%g223578223587%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g223578223587%_))))
               (_%$%g223576223625%_
                (lambda (_%$%g223578223593%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g223578223593%_))
                      (let ((_%$%e223580223595%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g223578223593%_))))
                        (let ((_%$%hd223581223598%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e223580223595%_)))
                              (_%$%tl223582223600%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e223580223595%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl223582223600%_))
                              (let ((_%$%e223583223603%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl223582223600%_))))
                                (let ((_%$%hd223584223606%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e223583223603%_)))
                                      (_%$%tl223585223608%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e223583223603%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl223585223608%_))
                                      (let* ((_%eid223623%_
                                              (let ()
                                                (declare (not safe))
                                                (gxc#identifier-symbol
                                                 _%$%hd223584223606%_)))
                                             (__tmp224326
                                              (let ()
                                                (declare (not safe))
                                                (slot-ref__0
                                                 _%self223574%_
                                                 'table))))
                                        (declare (not safe))
                                        (hash-update!__%
                                         __tmp224326
                                         _%eid223623%_
                                         1+
                                         '0))
                                      (_%$%g223577223590%_
                                       _%$%g223578223593%_))))
                              (_%$%g223577223590%_ _%$%g223578223593%_))))
                      (_%$%g223577223590%_ _%$%g223578223593%_)))))
          (_%$%g223576223625%_ _%stx223575%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self223504%_ _%stx223505%_)
        (let* ((_%$%g223507223524%_
                (lambda (_%$%g223508223521%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g223508223521%_))))
               (_%$%g223506223571%_
                (lambda (_%$%g223508223527%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g223508223527%_))
                      (let ((_%$%e223511223529%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g223508223527%_))))
                        (let ((_%$%hd223512223532%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e223511223529%_)))
                              (_%$%tl223513223534%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e223511223529%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl223513223534%_))
                              (let ((_%$%e223514223537%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl223513223534%_))))
                                (let ((_%$%hd223515223540%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e223514223537%_)))
                                      (_%$%tl223516223542%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e223514223537%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl223516223542%_))
                                      (let ((_%$%e223517223545%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl223516223542%_))))
                                        (let ((_%$%hd223518223548%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e223517223545%_)))
                                              (_%$%tl223519223550%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e223517223545%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl223519223550%_))
                                              (let ((_%eid223569%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#identifier-symbol
                                                        _%$%hd223515223540%_))))
                                                (let ((__tmp224327
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self223504%_
                                                          'table))))
                                                  (declare (not safe))
                                                  (hash-update!__%
                                                   __tmp224327
                                                   _%eid223569%_
                                                   1+
                                                   '0))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self223504%_
                                                   _%$%hd223518223548%_)))
                                              (_%$%g223507223524%_
                                               _%$%g223508223527%_))))
                                      (_%$%g223507223524%_
                                       _%$%g223508223527%_))))
                              (_%$%g223507223524%_ _%$%g223508223527%_))))
                      (_%$%g223507223524%_ _%$%g223508223527%_)))))
          (_%$%g223506223571%_ _%stx223505%_))))
    (define gxc#find-body%
      (lambda (_%self223419%_ _%stx223420%_)
        (let* ((_%$%g223422223441%_
                (lambda (_%$%g223423223438%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g223423223438%_))))
               (_%$%g223421223501%_
                (lambda (_%$%g223423223444%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g223423223444%_))
                      (let ((_%$%e223425223446%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g223423223444%_))))
                        (let ((_%$%hd223426223449%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e223425223446%_)))
                              (_%$%tl223427223451%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e223425223446%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl223427223451%_))
                              (let ((_g224328_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl223427223451%_
                                        '0))))
                                (begin
                                  (let ((_g224329_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g224328_)
                                               (##values-length _g224328_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g224329_ 2)))
                                        (error "Context expects 2 values"
                                               _g224329_)))
                                  (let ((_%$%target223428223454%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g224328_ 0)))
                                        (_%$%tl223430223456%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g224328_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl223430223456%_))
                                        (letrec ((_%$%loop223431223459%_
                                                  (lambda (_%$%hd223429223462%_
                                                           _%$%expr223435223464%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd223429223462%_))
                                                        (let ((_%$%e223432223466%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd223429223462%_))))
                  (let ((_%$%lp-hd223433223469%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e223432223466%_)))
                        (_%$%lp-tl223434223471%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e223432223466%_))))
                    (_%$%loop223431223459%_
                     _%$%lp-tl223434223471%_
                     (cons _%$%lp-hd223433223469%_ _%$%expr223435223464%_))))
                (let ((_%$%expr223436223474%_
                       (reverse _%$%expr223435223464%_)))
                  (let ((__tmp224332
                         (lambda (_%$%g223489223491%_)
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self223419%_
                              _%$%g223489223491%_))))
                        (__tmp224330
                         (let ((__tmp224331
                                (lambda (_%$%g223493223496%_
                                         _%$%g223494223498%_)
                                  (cons _%$%g223493223496%_
                                        _%$%g223494223498%_))))
                           (declare (not safe))
                           (foldr__0 __tmp224331 '() _%$%expr223436223474%_))))
                    (declare (not safe))
                    (ormap__0 __tmp224332 __tmp224330)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop223431223459%_
                                           _%$%target223428223454%_
                                           '()))
                                        (_%$%g223422223441%_
                                         _%$%g223423223444%_)))))
                              (_%$%g223422223441%_ _%$%g223423223444%_))))
                      (_%$%g223422223441%_ _%$%g223423223444%_)))))
          (_%$%g223421223501%_ _%stx223420%_))))
    (define gxc#find-let-values%
      (lambda (_%self223273%_ _%stx223274%_)
        (let* ((_%$%g223276223311%_
                (lambda (_%$%g223277223308%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g223277223308%_))))
               (_%$%g223275223416%_
                (lambda (_%$%g223277223314%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g223277223314%_))
                      (let ((_%$%e223281223316%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g223277223314%_))))
                        (let ((_%$%hd223282223319%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e223281223316%_)))
                              (_%$%tl223283223321%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e223281223316%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl223283223321%_))
                              (let ((_%$%e223284223324%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl223283223321%_))))
                                (let ((_%$%hd223285223327%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e223284223324%_)))
                                      (_%$%tl223286223329%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e223284223324%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd223285223327%_))
                                      (let ((_g224333_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%hd223285223327%_
                                                '0))))
                                        (begin
                                          (let ((_g224334_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g224333_)
                                                       (##values-length
                                                        _g224333_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g224334_ 2)))
                                                (error "Context expects 2 values"
                                                       _g224334_)))
                                          (let ((_%$%target223287223332%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g224333_ 0)))
                                                (_%$%tl223289223334%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g224333_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl223289223334%_))
                                                (letrec ((_%$%loop223290223337%_
                                                          (lambda (_%$%hd223288223340%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr223294223342%_
                           _%$%bind223295223343%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd223288223340%_))
                        (let ((_%$%e223291223345%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd223288223340%_))))
                          (let ((_%$%lp-hd223292223348%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e223291223345%_)))
                                (_%$%lp-tl223293223350%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e223291223345%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd223292223348%_))
                                (let ((_%$%e223298223353%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%lp-hd223292223348%_))))
                                  (let ((_%$%hd223299223356%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e223298223353%_)))
                                        (_%$%tl223300223358%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e223298223353%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl223300223358%_))
                                        (let ((_%$%e223301223361%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl223300223358%_))))
                                          (let ((_%$%hd223302223364%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e223301223361%_)))
                                                (_%$%tl223303223366%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e223301223361%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl223303223366%_))
                                                (_%$%loop223290223337%_
                                                 _%$%lp-tl223293223350%_
                                                 (cons _%$%hd223302223364%_
                                                       _%$%expr223294223342%_)
                                                 (cons _%$%hd223299223356%_
                                                       _%$%bind223295223343%_))
                                                (_%$%g223276223311%_
                                                 _%$%g223277223314%_))))
                                        (_%$%g223276223311%_
                                         _%$%g223277223314%_))))
                                (_%$%g223276223311%_ _%$%g223277223314%_))))
                        (let ((_%$%expr223296223369%_
                               (reverse _%$%expr223294223342%_))
                              (_%$%bind223297223370%_
                               (reverse _%$%bind223295223343%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl223286223329%_))
                              (let ((_%$%e223304223372%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl223286223329%_))))
                                (let ((_%$%hd223305223375%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e223304223372%_)))
                                      (_%$%tl223306223377%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e223304223372%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl223306223377%_))
                                      (let ((_%$e223413%_
                                             (let ((__tmp224337
                                                    (lambda (_%$%g223401223403%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self223273%_
                                                         _%$%g223401223403%_))))
                                                   (__tmp224335
                                                    (let ((__tmp224336
                                                           (lambda (_%$%g223405223408%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g223406223410%_)
                     (cons _%$%g223405223408%_ _%$%g223406223410%_))))
              (declare (not safe))
              (foldr__0 __tmp224336 '() _%$%expr223296223369%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (ormap__0
                                                __tmp224337
                                                __tmp224335))))
                                        (if _%$e223413%_
                                            _%$e223413%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self223273%_
                                               _%$%hd223305223375%_))))
                                      (_%$%g223276223311%_
                                       _%$%g223277223314%_))))
                              (_%$%g223276223311%_ _%$%g223277223314%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop223290223337%_
                                                   _%$%target223287223332%_
                                                   '()
                                                   '()))
                                                (_%$%g223276223311%_
                                                 _%$%g223277223314%_)))))
                                      (_%$%g223276223311%_
                                       _%$%g223277223314%_))))
                              (_%$%g223276223311%_ _%$%g223277223314%_))))
                      (_%$%g223276223311%_ _%$%g223277223314%_)))))
          (_%$%g223275223416%_ _%stx223274%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self223217%_ _%stx223218%_)
        (let* ((_%$%g223220223233%_
                (lambda (_%$%g223221223230%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g223221223230%_))))
               (_%$%g223219223270%_
                (lambda (_%$%g223221223236%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g223221223236%_))
                      (let ((_%$%e223223223238%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g223221223236%_))))
                        (let ((_%$%hd223224223241%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e223223223238%_)))
                              (_%$%tl223225223243%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e223223223238%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl223225223243%_))
                              (let ((_%$%e223226223246%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl223225223243%_))))
                                (let ((_%$%hd223227223249%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e223226223246%_)))
                                      (_%$%tl223228223251%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e223226223246%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl223228223251%_))
                                      (let ((__tmp224339
                                             (lambda (_%$%g223265223267%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%$%hd223227223249%_
                                                  _%$%g223265223267%_))))
                                            (__tmp224338
                                             (let ()
                                               (declare (not safe))
                                               (slot-ref__0
                                                _%self223217%_
                                                'ids))))
                                        (declare (not safe))
                                        (__find __tmp224339 __tmp224338))
                                      (_%$%g223220223233%_
                                       _%$%g223221223236%_))))
                              (_%$%g223220223233%_ _%$%g223221223236%_))))
                      (_%$%g223220223233%_ _%$%g223221223236%_)))))
          (_%$%g223219223270%_ _%stx223218%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self223142%_ _%stx223143%_)
        (let* ((_%$%g223145223162%_
                (lambda (_%$%g223146223159%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g223146223159%_))))
               (_%$%g223144223214%_
                (lambda (_%$%g223146223165%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g223146223165%_))
                      (let ((_%$%e223149223167%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g223146223165%_))))
                        (let ((_%$%hd223150223170%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e223149223167%_)))
                              (_%$%tl223151223172%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e223149223167%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl223151223172%_))
                              (let ((_%$%e223152223175%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl223151223172%_))))
                                (let ((_%$%hd223153223178%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e223152223175%_)))
                                      (_%$%tl223154223180%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e223152223175%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl223154223180%_))
                                      (let ((_%$%e223155223183%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl223154223180%_))))
                                        (let ((_%$%hd223156223186%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e223155223183%_)))
                                              (_%$%tl223157223188%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e223155223183%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl223157223188%_))
                                              (let ((_%$e223211%_
                                                     (let ((__tmp224341
                                                            (lambda (_%$%g223206223208%_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#free-identifier=?
                         _%$%hd223153223178%_
                         _%$%g223206223208%_))))
                   (__tmp224340
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self223142%_ 'ids))))
               (declare (not safe))
               (__find __tmp224341 __tmp224340))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if _%$e223211%_
                                                    _%$e223211%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self223142%_
                                                       _%$%hd223156223186%_))))
                                              (_%$%g223145223162%_
                                               _%$%g223146223165%_))))
                                      (_%$%g223145223162%_
                                       _%$%g223146223165%_))))
                              (_%$%g223145223162%_ _%$%g223146223165%_))))
                      (_%$%g223145223162%_ _%$%g223146223165%_)))))
          (_%$%g223144223214%_ _%stx223143%_))))))
