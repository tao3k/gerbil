(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1789839228)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp226919 (list gxc#::void::t))
            (__tmp226918 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp226919
         '()
         __tmp226918
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args226903%_
        (apply make-instance gxc#::collect-mutators::t _%$args226903%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp226920
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
        (__make-atomic-promise __tmp226920)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx226895%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self226898%_
                (let ((__obj226906
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj226906))
               (__tmp226921
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self226898%_ _%stx226895%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp226921
           gxc#current-compile-method
           _%self226898%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp226923 (list gxc#::basic-xform-expression::t))
            (__tmp226922 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp226923
         '(id new-id)
         __tmp226922
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args226892%_
        (apply make-instance gxc#::expression-subst::t _%$args226892%_)))
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
      (let ((__tmp226924
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
        (__make-atomic-promise __tmp226924)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords226864%_
               _%$%id226860226865%_
               _%$%new-id226861226866%_
               _%stx226867%_)
        (let* ((_%id226870%_
                (if (eq? _%$%id226860226865%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%$%id226860226865%_))
               (_%new-id226872%_
                (if (eq? _%$%new-id226861226866%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%$%new-id226861226866%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self226874%_
                  (let ((__obj226908
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj226908
                       _%id226870%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj226908
                       _%new-id226872%_
                       '2
                       '#f
                       '#f))
                    __obj226908))
                 (__tmp226925
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self226874%_ _%stx226867%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp226925
             gxc#current-compile-method
             _%self226874%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords226881%_ . _%args226882%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords226881%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords226881%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords226881%_
                  'new-id:
                  absent-value))
               _%args226882%_)))
    (define gxc#apply-expression-subst
      (lambda _%$%args226862226888%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%$%args226862226888%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp226927 (list gxc#::basic-xform-expression::t))
            (__tmp226926 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp226927
         '(subst)
         __tmp226926
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args226856%_
        (apply make-instance gxc#::expression-subst*::t _%$args226856%_)))
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
      (let ((__tmp226928
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
        (__make-atomic-promise __tmp226928)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords226831%_ _%$%subst226828226832%_ _%stx226833%_)
        (let ((_%subst226836%_
               (if (eq? _%$%subst226828226832%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%$%subst226828226832%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self226838%_
                  (let ((__obj226910
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj226910
                       _%subst226836%_
                       '1
                       '#f
                       '#f))
                    __obj226910))
                 (__tmp226929
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self226838%_ _%stx226833%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp226929
             gxc#current-compile-method
             _%self226838%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords226845%_ . _%args226846%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords226845%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords226845%_
                  'subst:
                  absent-value))
               _%args226846%_)))
    (define gxc#apply-expression-subst*
      (lambda _%$%args226829226852%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%$%args226829226852%_)))
    (define gxc#::inline-subst::t
      (let ((__tmp226931 (list gxc#::basic-xform-expression::t))
            (__tmp226930 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::inline-subst::t
         '::inline-subst
         __tmp226931
         '(subst)
         __tmp226930
         '#f)))
    (define gxc#::inline-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::inline-subst::t)))
    (define gxc#make-::inline-subst
      (lambda _%$args226824%_
        (apply make-instance gxc#::inline-subst::t _%$args226824%_)))
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
      (let ((__tmp226932
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
        (__make-atomic-promise __tmp226932)))
    (define gxc#apply-inline-subst__%
      (lambda (_%@@keywords226799%_ _%$%subst226796226800%_ _%stx226801%_)
        (let ((_%subst226804%_
               (if (eq? _%$%subst226796226800%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%$%subst226796226800%_)))
          (force gxc#::inline-subst-bind-methods!)
          (let* ((_%self226806%_
                  (let ((__obj226912
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::inline-subst::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj226912
                       _%subst226804%_
                       '1
                       '#f
                       '#f))
                    __obj226912))
                 (__tmp226933
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self226806%_ _%stx226801%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp226933
             gxc#current-compile-method
             _%self226806%_)))))
    (define gxc#apply-inline-subst__@
      (lambda (_%@@keywords226813%_ . _%args226814%_)
        (apply gxc#apply-inline-subst__%
               _%@@keywords226813%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords226813%_
                  'subst:
                  absent-value))
               _%args226814%_)))
    (define gxc#apply-inline-subst
      (lambda _%$%args226797226820%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-inline-subst__@
               _%$%args226797226820%_)))
    (define gxc#::find-expression::t
      (let ((__tmp226934 (list gxc#::false-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp226934
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args226792%_
        (apply make-instance gxc#::find-expression::t _%$args226792%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp226935
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
        (__make-atomic-promise __tmp226935)))
    (define gxc#::find-var-refs::t
      (let ((__tmp226937 (list gxc#::find-expression::t))
            (__tmp226936 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp226937
         '(ids)
         __tmp226936
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args226788%_
        (apply make-instance gxc#::find-var-refs::t _%$args226788%_)))
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
      (let ((__tmp226938
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
        (__make-atomic-promise __tmp226938)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords226763%_ _%$%ids226760226764%_ _%stx226765%_)
        (let ((_%ids226768%_
               (if (eq? _%$%ids226760226764%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%$%ids226760226764%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self226770%_
                  (let ((__obj226915
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj226915
                       _%ids226768%_
                       '1
                       '#f
                       '#f))
                    __obj226915))
                 (__tmp226939
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self226770%_ _%stx226765%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp226939
             gxc#current-compile-method
             _%self226770%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords226777%_ . _%args226778%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords226777%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords226777%_ 'ids: absent-value))
               _%args226778%_)))
    (define gxc#apply-find-var-refs
      (lambda _%$%args226761226784%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%$%args226761226784%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp226941 (list gxc#::collect-expression-refs::t))
            (__tmp226940 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp226941
         '()
         __tmp226940
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args226756%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args226756%_)))
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
      (let ((__tmp226942
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
        (__make-atomic-promise __tmp226942)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords226731%_ _%$%table226728226732%_ _%stx226733%_)
        (let ((_%table226736%_
               (if (eq? _%$%table226728226732%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%$%table226728226732%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self226738%_
                  (let ((__obj226917
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj226917
                       _%table226736%_
                       '1
                       '#f
                       '#f))
                    __obj226917))
                 (__tmp226943
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self226738%_ _%stx226733%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp226943
             gxc#current-compile-method
             _%self226738%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords226745%_ . _%args226746%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords226745%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords226745%_
                  'table:
                  absent-value))
               _%args226746%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%$%args226729226752%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%$%args226729226752%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self226657%_ _%stx226658%_)
        (let* ((_%$%g226660226677%_
                (lambda (_%$%g226661226674%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g226661226674%_))))
               (_%$%g226659226724%_
                (lambda (_%$%g226661226680%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g226661226680%_))
                      (let ((_%$%e226664226682%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g226661226680%_))))
                        (let ((_%$%hd226665226685%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e226664226682%_)))
                              (_%$%tl226666226687%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e226664226682%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl226666226687%_))
                              (let ((_%$%e226667226690%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl226666226687%_))))
                                (let ((_%$%hd226668226693%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e226667226690%_)))
                                      (_%$%tl226669226695%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e226667226690%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl226669226695%_))
                                      (let ((_%$%e226670226698%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl226669226695%_))))
                                        (let ((_%$%hd226671226701%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e226670226698%_)))
                                              (_%$%tl226672226703%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e226670226698%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl226672226703%_))
                                              (let ((_%sym226722%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#identifier-symbol
                                                        _%$%hd226668226693%_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"collect mutator "
                                                   _%sym226722%_))
                                                (let ((__tmp226944
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#current-compile-mutators))))
                                                  (declare (not safe))
                                                  (hash-put!
                                                   __tmp226944
                                                   _%sym226722%_
                                                   '#t))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self226657%_
                                                   _%$%hd226671226701%_)))
                                              (_%$%g226660226677%_
                                               _%$%g226661226680%_))))
                                      (_%$%g226660226677%_
                                       _%$%g226661226680%_))))
                              (_%$%g226660226677%_ _%$%g226661226680%_))))
                      (_%$%g226660226677%_ _%$%g226661226680%_)))))
          (_%$%g226659226724%_ _%stx226658%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self226605%_ _%stx226606%_)
        (let* ((_%$%g226608226621%_
                (lambda (_%$%g226609226618%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g226609226618%_))))
               (_%$%g226607226654%_
                (lambda (_%$%g226609226624%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g226609226624%_))
                      (let ((_%$%e226611226626%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g226609226624%_))))
                        (let ((_%$%hd226612226629%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e226611226626%_)))
                              (_%$%tl226613226631%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e226611226626%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl226613226631%_))
                              (let ((_%$%e226614226634%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl226613226631%_))))
                                (let ((_%$%hd226615226637%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e226614226634%_)))
                                      (_%$%tl226616226639%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e226614226634%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl226616226639%_))
                                      (if (let ((__tmp226945
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self226605%_
                                                    'id))))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             _%$%hd226615226637%_
                                             __tmp226945))
                                          (let ((__tmp226946
                                                 (cons '%#ref
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (slot-ref__0 _%self226605%_ 'new-id))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp226946
                                             _%stx226606%_))
                                          _%stx226606%_)
                                      (_%$%g226608226621%_
                                       _%$%g226609226624%_))))
                              (_%$%g226608226621%_ _%$%g226609226624%_))))
                      (_%$%g226608226621%_ _%$%g226609226624%_)))))
          (_%$%g226607226654%_ _%stx226606%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self226545%_ _%stx226546%_)
        (let* ((_%$%g226548226561%_
                (lambda (_%$%g226549226558%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g226549226558%_))))
               (_%$%g226547226602%_
                (lambda (_%$%g226549226564%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g226549226564%_))
                      (let ((_%$%e226551226566%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g226549226564%_))))
                        (let ((_%$%hd226552226569%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e226551226566%_)))
                              (_%$%tl226553226571%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e226551226566%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl226553226571%_))
                              (let ((_%$%e226554226574%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl226553226571%_))))
                                (let ((_%$%hd226555226577%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e226554226574%_)))
                                      (_%$%tl226556226579%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e226554226574%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl226556226579%_))
                                      (let ((_%$e226596%_
                                             (let ((__tmp226948
                                                    (lambda (_%sub226594%_)
                                                      (let ((__tmp226949
                                                             (car _%sub226594%_)))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         _%$%hd226555226577%_
                                                         __tmp226949))))
                                                   (__tmp226947
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self226545%_
                                                       'subst))))
                                               (declare (not safe))
                                               (__find __tmp226948
                                                       __tmp226947))))
                                        (if _%$e226596%_
                                            (let ((__tmp226950
                                                   (cons '%#ref
                                                         (cons (cdr _%$e226596%_)
                                                               '()))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp226950
                                               _%stx226546%_))
                                            _%stx226546%_))
                                      (_%$%g226548226561%_
                                       _%$%g226549226564%_))))
                              (_%$%g226548226561%_ _%$%g226549226564%_))))
                      (_%$%g226548226561%_ _%$%g226549226564%_)))))
          (_%$%g226547226602%_ _%stx226546%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self226474%_ _%stx226475%_)
        (let* ((_%$%g226477226494%_
                (lambda (_%$%g226478226491%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g226478226491%_))))
               (_%$%g226476226542%_
                (lambda (_%$%g226478226497%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g226478226497%_))
                      (let ((_%$%e226481226499%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g226478226497%_))))
                        (let ((_%$%hd226482226502%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e226481226499%_)))
                              (_%$%tl226483226504%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e226481226499%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl226483226504%_))
                              (let ((_%$%e226484226507%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl226483226504%_))))
                                (let ((_%$%hd226485226510%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e226484226507%_)))
                                      (_%$%tl226486226512%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e226484226507%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl226486226512%_))
                                      (let ((_%$%e226487226515%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl226486226512%_))))
                                        (let ((_%$%hd226488226518%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e226487226515%_)))
                                              (_%$%tl226489226520%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e226487226515%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl226489226520%_))
                                              (let ((_%new-expr226539%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self226474%_
                                                        _%$%hd226488226518%_)))
                                                    (_%new-xid226540%_
                                                     (if (let ((__tmp226951
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self226474%_ 'id))))
                   (declare (not safe))
                   (gx#free-identifier=? _%$%hd226485226510%_ __tmp226951))
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _%self226474%_ 'new-id))
                 _%$%hd226485226510%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((__tmp226952
                                                       (cons '%#set!
                                                             (cons _%new-xid226540%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%new-expr226539%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp226952
                                                   _%stx226475%_)))
                                              (_%$%g226477226494%_
                                               _%$%g226478226497%_))))
                                      (_%$%g226477226494%_
                                       _%$%g226478226497%_))))
                              (_%$%g226477226494%_ _%$%g226478226497%_))))
                      (_%$%g226477226494%_ _%$%g226478226497%_)))))
          (_%$%g226476226542%_ _%stx226475%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self226397%_ _%stx226398%_)
        (let* ((_%$%g226400226417%_
                (lambda (_%$%g226401226414%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g226401226414%_))))
               (_%$%g226399226471%_
                (lambda (_%$%g226401226420%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g226401226420%_))
                      (let ((_%$%e226404226422%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g226401226420%_))))
                        (let ((_%$%hd226405226425%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e226404226422%_)))
                              (_%$%tl226406226427%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e226404226422%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl226406226427%_))
                              (let ((_%$%e226407226430%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl226406226427%_))))
                                (let ((_%$%hd226408226433%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e226407226430%_)))
                                      (_%$%tl226409226435%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e226407226430%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl226409226435%_))
                                      (let ((_%$%e226410226438%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl226409226435%_))))
                                        (let ((_%$%hd226411226441%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e226410226438%_)))
                                              (_%$%tl226412226443%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e226410226438%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl226412226443%_))
                                              (let ((_%new-expr226468%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self226397%_
                                                        _%$%hd226411226441%_)))
                                                    (_%new-xid226469%_
                                                     (let ((_%$e226464%_
                                                            (let ((__tmp226954
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%sub226462%_)
                             (let ((__tmp226955 (car _%sub226462%_)))
                               (declare (not safe))
                               (gx#free-identifier=?
                                _%$%hd226408226433%_
                                __tmp226955))))
                          (__tmp226953
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self226397%_ 'subst))))
                      (declare (not safe))
                      (__find __tmp226954 __tmp226953))))
               (if _%$e226464%_ (cdr _%$e226464%_) _%$%hd226408226433%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((__tmp226956
                                                       (cons '%#set!
                                                             (cons _%new-xid226469%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%new-expr226468%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp226956
                                                   _%stx226398%_)))
                                              (_%$%g226400226417%_
                                               _%$%g226401226420%_))))
                                      (_%$%g226400226417%_
                                       _%$%g226401226420%_))))
                              (_%$%g226400226417%_ _%$%g226401226420%_))))
                      (_%$%g226400226417%_ _%$%g226401226420%_)))))
          (_%$%g226399226471%_ _%stx226398%_))))
    (define gxc#inline-subst-ref%
      (lambda (_%self226337%_ _%stx226338%_)
        (let* ((_%$%g226340226353%_
                (lambda (_%$%g226341226350%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g226341226350%_))))
               (_%$%g226339226394%_
                (lambda (_%$%g226341226356%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g226341226356%_))
                      (let ((_%$%e226343226358%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g226341226356%_))))
                        (let ((_%$%hd226344226361%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e226343226358%_)))
                              (_%$%tl226345226363%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e226343226358%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl226345226363%_))
                              (let ((_%$%e226346226366%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl226345226363%_))))
                                (let ((_%$%hd226347226369%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e226346226366%_)))
                                      (_%$%tl226348226371%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e226346226366%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl226348226371%_))
                                      (let ((_%$e226388%_
                                             (let ((__tmp226958
                                                    (lambda (_%sub226386%_)
                                                      (let ((__tmp226959
                                                             (car _%sub226386%_)))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         _%$%hd226347226369%_
                                                         __tmp226959))))
                                                   (__tmp226957
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self226337%_
                                                       'subst))))
                                               (declare (not safe))
                                               (__find __tmp226958
                                                       __tmp226957))))
                                        (if _%$e226388%_
                                            (let ((__tmp226960
                                                   (cdr _%$e226388%_)))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp226960
                                               _%stx226338%_))
                                            _%stx226338%_))
                                      (_%$%g226340226353%_
                                       _%$%g226341226356%_))))
                              (_%$%g226340226353%_ _%$%g226341226356%_))))
                      (_%$%g226340226353%_ _%$%g226341226356%_)))))
          (_%$%g226339226394%_ _%stx226338%_))))
    (define gxc#inline-subst-setq%
      (lambda (_%self226267%_ _%stx226268%_)
        (let* ((_%$%g226270226287%_
                (lambda (_%$%g226271226284%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g226271226284%_))))
               (_%$%g226269226334%_
                (lambda (_%$%g226271226290%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g226271226290%_))
                      (let ((_%$%e226274226292%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g226271226290%_))))
                        (let ((_%$%hd226275226295%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e226274226292%_)))
                              (_%$%tl226276226297%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e226274226292%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl226276226297%_))
                              (let ((_%$%e226277226300%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl226276226297%_))))
                                (let ((_%$%hd226278226303%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e226277226300%_)))
                                      (_%$%tl226279226305%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e226277226300%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl226279226305%_))
                                      (let ((_%$%e226280226308%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl226279226305%_))))
                                        (let ((_%$%hd226281226311%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e226280226308%_)))
                                              (_%$%tl226282226313%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e226280226308%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl226282226313%_))
                                              (if (let ((__tmp226962
                                                         (lambda (_%sub226332%_)
                                                           (let ((__tmp226963
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (car _%sub226332%_)))
                     (declare (not safe))
                     (gx#free-identifier=? _%$%hd226278226303%_ __tmp226963))))
                (__tmp226961
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _%self226267%_ 'subst))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__find __tmp226962
                                                            __tmp226961))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#raise-compile-error
                                                     '"mutating inline substitution"
                                                     _%stx226268%_
                                                     _%$%hd226278226303%_))
                                                  (let ((__tmp226964
                                                         (cons '%#set!
                                                               (cons _%$%hd226278226303%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self226267%_
                                      _%$%hd226281226311%_))
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp226964
                                                     _%stx226268%_)))
                                              (_%$%g226270226287%_
                                               _%$%g226271226290%_))))
                                      (_%$%g226270226287%_
                                       _%$%g226271226290%_))))
                              (_%$%g226270226287%_ _%$%g226271226290%_))))
                      (_%$%g226270226287%_ _%$%g226271226290%_)))))
          (_%$%g226269226334%_ _%stx226268%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self226213%_ _%stx226214%_)
        (let* ((_%$%g226216226229%_
                (lambda (_%$%g226217226226%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g226217226226%_))))
               (_%$%g226215226264%_
                (lambda (_%$%g226217226232%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g226217226232%_))
                      (let ((_%$%e226219226234%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g226217226232%_))))
                        (let ((_%$%hd226220226237%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e226219226234%_)))
                              (_%$%tl226221226239%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e226219226234%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl226221226239%_))
                              (let ((_%$%e226222226242%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl226221226239%_))))
                                (let ((_%$%hd226223226245%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e226222226242%_)))
                                      (_%$%tl226224226247%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e226222226242%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl226224226247%_))
                                      (let* ((_%eid226262%_
                                              (let ()
                                                (declare (not safe))
                                                (gxc#identifier-symbol
                                                 _%$%hd226223226245%_)))
                                             (__tmp226965
                                              (let ()
                                                (declare (not safe))
                                                (slot-ref__0
                                                 _%self226213%_
                                                 'table))))
                                        (declare (not safe))
                                        (hash-update!__%
                                         __tmp226965
                                         _%eid226262%_
                                         1+
                                         '0))
                                      (_%$%g226216226229%_
                                       _%$%g226217226232%_))))
                              (_%$%g226216226229%_ _%$%g226217226232%_))))
                      (_%$%g226216226229%_ _%$%g226217226232%_)))))
          (_%$%g226215226264%_ _%stx226214%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self226143%_ _%stx226144%_)
        (let* ((_%$%g226146226163%_
                (lambda (_%$%g226147226160%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g226147226160%_))))
               (_%$%g226145226210%_
                (lambda (_%$%g226147226166%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g226147226166%_))
                      (let ((_%$%e226150226168%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g226147226166%_))))
                        (let ((_%$%hd226151226171%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e226150226168%_)))
                              (_%$%tl226152226173%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e226150226168%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl226152226173%_))
                              (let ((_%$%e226153226176%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl226152226173%_))))
                                (let ((_%$%hd226154226179%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e226153226176%_)))
                                      (_%$%tl226155226181%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e226153226176%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl226155226181%_))
                                      (let ((_%$%e226156226184%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl226155226181%_))))
                                        (let ((_%$%hd226157226187%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e226156226184%_)))
                                              (_%$%tl226158226189%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e226156226184%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl226158226189%_))
                                              (let ((_%eid226208%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#identifier-symbol
                                                        _%$%hd226154226179%_))))
                                                (let ((__tmp226966
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self226143%_
                                                          'table))))
                                                  (declare (not safe))
                                                  (hash-update!__%
                                                   __tmp226966
                                                   _%eid226208%_
                                                   1+
                                                   '0))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self226143%_
                                                   _%$%hd226157226187%_)))
                                              (_%$%g226146226163%_
                                               _%$%g226147226166%_))))
                                      (_%$%g226146226163%_
                                       _%$%g226147226166%_))))
                              (_%$%g226146226163%_ _%$%g226147226166%_))))
                      (_%$%g226146226163%_ _%$%g226147226166%_)))))
          (_%$%g226145226210%_ _%stx226144%_))))
    (define gxc#find-body%
      (lambda (_%self226058%_ _%stx226059%_)
        (let* ((_%$%g226061226080%_
                (lambda (_%$%g226062226077%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g226062226077%_))))
               (_%$%g226060226140%_
                (lambda (_%$%g226062226083%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g226062226083%_))
                      (let ((_%$%e226064226085%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g226062226083%_))))
                        (let ((_%$%hd226065226088%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e226064226085%_)))
                              (_%$%tl226066226090%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e226064226085%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl226066226090%_))
                              (let ((_g226967_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl226066226090%_
                                        '0))))
                                (begin
                                  (let ((_g226968_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g226967_)
                                               (##values-length _g226967_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g226968_ 2)))
                                        (error "Context expects 2 values"
                                               _g226968_)))
                                  (let ((_%$%target226067226093%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g226967_ 0)))
                                        (_%$%tl226069226095%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g226967_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl226069226095%_))
                                        (letrec ((_%$%loop226070226098%_
                                                  (lambda (_%$%hd226068226101%_
                                                           _%$%expr226074226103%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd226068226101%_))
                                                        (let ((_%$%e226071226105%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd226068226101%_))))
                  (let ((_%$%lp-hd226072226108%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e226071226105%_)))
                        (_%$%lp-tl226073226110%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e226071226105%_))))
                    (_%$%loop226070226098%_
                     _%$%lp-tl226073226110%_
                     (cons _%$%lp-hd226072226108%_ _%$%expr226074226103%_))))
                (let ((_%$%expr226075226113%_
                       (reverse _%$%expr226074226103%_)))
                  (let ((__tmp226971
                         (lambda (_%$%g226128226130%_)
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self226058%_
                              _%$%g226128226130%_))))
                        (__tmp226969
                         (let ((__tmp226970
                                (lambda (_%$%g226132226135%_
                                         _%$%g226133226137%_)
                                  (cons _%$%g226132226135%_
                                        _%$%g226133226137%_))))
                           (declare (not safe))
                           (foldr__0 __tmp226970 '() _%$%expr226075226113%_))))
                    (declare (not safe))
                    (ormap__0 __tmp226971 __tmp226969)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop226070226098%_
                                           _%$%target226067226093%_
                                           '()))
                                        (_%$%g226061226080%_
                                         _%$%g226062226083%_)))))
                              (_%$%g226061226080%_ _%$%g226062226083%_))))
                      (_%$%g226061226080%_ _%$%g226062226083%_)))))
          (_%$%g226060226140%_ _%stx226059%_))))
    (define gxc#find-let-values%
      (lambda (_%self225912%_ _%stx225913%_)
        (let* ((_%$%g225915225950%_
                (lambda (_%$%g225916225947%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g225916225947%_))))
               (_%$%g225914226055%_
                (lambda (_%$%g225916225953%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g225916225953%_))
                      (let ((_%$%e225920225955%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g225916225953%_))))
                        (let ((_%$%hd225921225958%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e225920225955%_)))
                              (_%$%tl225922225960%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e225920225955%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl225922225960%_))
                              (let ((_%$%e225923225963%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl225922225960%_))))
                                (let ((_%$%hd225924225966%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e225923225963%_)))
                                      (_%$%tl225925225968%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e225923225963%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd225924225966%_))
                                      (let ((_g226972_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%hd225924225966%_
                                                '0))))
                                        (begin
                                          (let ((_g226973_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g226972_)
                                                       (##values-length
                                                        _g226972_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g226973_ 2)))
                                                (error "Context expects 2 values"
                                                       _g226973_)))
                                          (let ((_%$%target225926225971%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g226972_ 0)))
                                                (_%$%tl225928225973%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g226972_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl225928225973%_))
                                                (letrec ((_%$%loop225929225976%_
                                                          (lambda (_%$%hd225927225979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr225933225981%_
                           _%$%bind225934225982%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd225927225979%_))
                        (let ((_%$%e225930225984%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd225927225979%_))))
                          (let ((_%$%lp-hd225931225987%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e225930225984%_)))
                                (_%$%lp-tl225932225989%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e225930225984%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd225931225987%_))
                                (let ((_%$%e225937225992%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%lp-hd225931225987%_))))
                                  (let ((_%$%hd225938225995%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e225937225992%_)))
                                        (_%$%tl225939225997%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e225937225992%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl225939225997%_))
                                        (let ((_%$%e225940226000%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl225939225997%_))))
                                          (let ((_%$%hd225941226003%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e225940226000%_)))
                                                (_%$%tl225942226005%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e225940226000%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl225942226005%_))
                                                (_%$%loop225929225976%_
                                                 _%$%lp-tl225932225989%_
                                                 (cons _%$%hd225941226003%_
                                                       _%$%expr225933225981%_)
                                                 (cons _%$%hd225938225995%_
                                                       _%$%bind225934225982%_))
                                                (_%$%g225915225950%_
                                                 _%$%g225916225953%_))))
                                        (_%$%g225915225950%_
                                         _%$%g225916225953%_))))
                                (_%$%g225915225950%_ _%$%g225916225953%_))))
                        (let ((_%$%expr225935226008%_
                               (reverse _%$%expr225933225981%_))
                              (_%$%bind225936226009%_
                               (reverse _%$%bind225934225982%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl225925225968%_))
                              (let ((_%$%e225943226011%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl225925225968%_))))
                                (let ((_%$%hd225944226014%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e225943226011%_)))
                                      (_%$%tl225945226016%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e225943226011%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl225945226016%_))
                                      (let ((_%$e226052%_
                                             (let ((__tmp226976
                                                    (lambda (_%$%g226040226042%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self225912%_
                                                         _%$%g226040226042%_))))
                                                   (__tmp226974
                                                    (let ((__tmp226975
                                                           (lambda (_%$%g226044226047%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g226045226049%_)
                     (cons _%$%g226044226047%_ _%$%g226045226049%_))))
              (declare (not safe))
              (foldr__0 __tmp226975 '() _%$%expr225935226008%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (ormap__0
                                                __tmp226976
                                                __tmp226974))))
                                        (if _%$e226052%_
                                            _%$e226052%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self225912%_
                                               _%$%hd225944226014%_))))
                                      (_%$%g225915225950%_
                                       _%$%g225916225953%_))))
                              (_%$%g225915225950%_ _%$%g225916225953%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop225929225976%_
                                                   _%$%target225926225971%_
                                                   '()
                                                   '()))
                                                (_%$%g225915225950%_
                                                 _%$%g225916225953%_)))))
                                      (_%$%g225915225950%_
                                       _%$%g225916225953%_))))
                              (_%$%g225915225950%_ _%$%g225916225953%_))))
                      (_%$%g225915225950%_ _%$%g225916225953%_)))))
          (_%$%g225914226055%_ _%stx225913%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self225856%_ _%stx225857%_)
        (let* ((_%$%g225859225872%_
                (lambda (_%$%g225860225869%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g225860225869%_))))
               (_%$%g225858225909%_
                (lambda (_%$%g225860225875%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g225860225875%_))
                      (let ((_%$%e225862225877%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g225860225875%_))))
                        (let ((_%$%hd225863225880%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e225862225877%_)))
                              (_%$%tl225864225882%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e225862225877%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl225864225882%_))
                              (let ((_%$%e225865225885%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl225864225882%_))))
                                (let ((_%$%hd225866225888%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e225865225885%_)))
                                      (_%$%tl225867225890%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e225865225885%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl225867225890%_))
                                      (let ((__tmp226978
                                             (lambda (_%$%g225904225906%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%$%hd225866225888%_
                                                  _%$%g225904225906%_))))
                                            (__tmp226977
                                             (let ()
                                               (declare (not safe))
                                               (slot-ref__0
                                                _%self225856%_
                                                'ids))))
                                        (declare (not safe))
                                        (__find __tmp226978 __tmp226977))
                                      (_%$%g225859225872%_
                                       _%$%g225860225875%_))))
                              (_%$%g225859225872%_ _%$%g225860225875%_))))
                      (_%$%g225859225872%_ _%$%g225860225875%_)))))
          (_%$%g225858225909%_ _%stx225857%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self225781%_ _%stx225782%_)
        (let* ((_%$%g225784225801%_
                (lambda (_%$%g225785225798%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g225785225798%_))))
               (_%$%g225783225853%_
                (lambda (_%$%g225785225804%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g225785225804%_))
                      (let ((_%$%e225788225806%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g225785225804%_))))
                        (let ((_%$%hd225789225809%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e225788225806%_)))
                              (_%$%tl225790225811%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e225788225806%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl225790225811%_))
                              (let ((_%$%e225791225814%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl225790225811%_))))
                                (let ((_%$%hd225792225817%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e225791225814%_)))
                                      (_%$%tl225793225819%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e225791225814%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl225793225819%_))
                                      (let ((_%$%e225794225822%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl225793225819%_))))
                                        (let ((_%$%hd225795225825%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e225794225822%_)))
                                              (_%$%tl225796225827%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e225794225822%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl225796225827%_))
                                              (let ((_%$e225850%_
                                                     (let ((__tmp226980
                                                            (lambda (_%$%g225845225847%_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#free-identifier=?
                         _%$%hd225792225817%_
                         _%$%g225845225847%_))))
                   (__tmp226979
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self225781%_ 'ids))))
               (declare (not safe))
               (__find __tmp226980 __tmp226979))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if _%$e225850%_
                                                    _%$e225850%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self225781%_
                                                       _%$%hd225795225825%_))))
                                              (_%$%g225784225801%_
                                               _%$%g225785225804%_))))
                                      (_%$%g225784225801%_
                                       _%$%g225785225804%_))))
                              (_%$%g225784225801%_ _%$%g225785225804%_))))
                      (_%$%g225784225801%_ _%$%g225785225804%_)))))
          (_%$%g225783225853%_ _%stx225782%_))))))
