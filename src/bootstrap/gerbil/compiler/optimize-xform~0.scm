(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1784461446)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp224076 (list gxc#::void::t))
            (__tmp224075 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp224076
         '()
         __tmp224075
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args224060%_
        (apply make-instance gxc#::collect-mutators::t _%$args224060%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp224077
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
        (__make-atomic-promise __tmp224077)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx224052%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self224055%_
                (let ((__obj224063
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj224063))
               (__tmp224078
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self224055%_ _%stx224052%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp224078
           gxc#current-compile-method
           _%self224055%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp224080 (list gxc#::basic-xform-expression::t))
            (__tmp224079 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp224080
         '(id new-id)
         __tmp224079
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args224049%_
        (apply make-instance gxc#::expression-subst::t _%$args224049%_)))
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
      (let ((__tmp224081
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
        (__make-atomic-promise __tmp224081)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords224021%_
               _%$%id224017224022%_
               _%$%new-id224018224023%_
               _%stx224024%_)
        (let* ((_%id224027%_
                (if (eq? _%$%id224017224022%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%$%id224017224022%_))
               (_%new-id224029%_
                (if (eq? _%$%new-id224018224023%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%$%new-id224018224023%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self224031%_
                  (let ((__obj224065
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224065
                       _%id224027%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224065
                       _%new-id224029%_
                       '2
                       '#f
                       '#f))
                    __obj224065))
                 (__tmp224082
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self224031%_ _%stx224024%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp224082
             gxc#current-compile-method
             _%self224031%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords224038%_ . _%args224039%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords224038%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords224038%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords224038%_
                  'new-id:
                  absent-value))
               _%args224039%_)))
    (define gxc#apply-expression-subst
      (lambda _%$%args224019224045%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%$%args224019224045%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp224084 (list gxc#::basic-xform-expression::t))
            (__tmp224083 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp224084
         '(subst)
         __tmp224083
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args224013%_
        (apply make-instance gxc#::expression-subst*::t _%$args224013%_)))
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
      (let ((__tmp224085
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
        (__make-atomic-promise __tmp224085)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords223988%_ _%$%subst223985223989%_ _%stx223990%_)
        (let ((_%subst223993%_
               (if (eq? _%$%subst223985223989%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%$%subst223985223989%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self223995%_
                  (let ((__obj224067
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224067
                       _%subst223993%_
                       '1
                       '#f
                       '#f))
                    __obj224067))
                 (__tmp224086
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self223995%_ _%stx223990%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp224086
             gxc#current-compile-method
             _%self223995%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords224002%_ . _%args224003%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords224002%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords224002%_
                  'subst:
                  absent-value))
               _%args224003%_)))
    (define gxc#apply-expression-subst*
      (lambda _%$%args223986224009%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%$%args223986224009%_)))
    (define gxc#::inline-subst::t
      (let ((__tmp224088 (list gxc#::basic-xform-expression::t))
            (__tmp224087 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::inline-subst::t
         '::inline-subst
         __tmp224088
         '(subst)
         __tmp224087
         '#f)))
    (define gxc#::inline-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::inline-subst::t)))
    (define gxc#make-::inline-subst
      (lambda _%$args223981%_
        (apply make-instance gxc#::inline-subst::t _%$args223981%_)))
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
      (let ((__tmp224089
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
        (__make-atomic-promise __tmp224089)))
    (define gxc#apply-inline-subst__%
      (lambda (_%@@keywords223956%_ _%$%subst223953223957%_ _%stx223958%_)
        (let ((_%subst223961%_
               (if (eq? _%$%subst223953223957%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%$%subst223953223957%_)))
          (force gxc#::inline-subst-bind-methods!)
          (let* ((_%self223963%_
                  (let ((__obj224069
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::inline-subst::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224069
                       _%subst223961%_
                       '1
                       '#f
                       '#f))
                    __obj224069))
                 (__tmp224090
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self223963%_ _%stx223958%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp224090
             gxc#current-compile-method
             _%self223963%_)))))
    (define gxc#apply-inline-subst__@
      (lambda (_%@@keywords223970%_ . _%args223971%_)
        (apply gxc#apply-inline-subst__%
               _%@@keywords223970%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords223970%_
                  'subst:
                  absent-value))
               _%args223971%_)))
    (define gxc#apply-inline-subst
      (lambda _%$%args223954223977%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-inline-subst__@
               _%$%args223954223977%_)))
    (define gxc#::find-expression::t
      (let ((__tmp224091 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp224091
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args223949%_
        (apply make-instance gxc#::find-expression::t _%$args223949%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp224092
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
        (__make-atomic-promise __tmp224092)))
    (define gxc#::find-var-refs::t
      (let ((__tmp224094 (list gxc#::find-expression::t))
            (__tmp224093 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp224094
         '(ids)
         __tmp224093
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args223945%_
        (apply make-instance gxc#::find-var-refs::t _%$args223945%_)))
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
      (let ((__tmp224095
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
        (__make-atomic-promise __tmp224095)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords223920%_ _%$%ids223917223921%_ _%stx223922%_)
        (let ((_%ids223925%_
               (if (eq? _%$%ids223917223921%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%$%ids223917223921%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self223927%_
                  (let ((__obj224072
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224072
                       _%ids223925%_
                       '1
                       '#f
                       '#f))
                    __obj224072))
                 (__tmp224096
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self223927%_ _%stx223922%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp224096
             gxc#current-compile-method
             _%self223927%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords223934%_ . _%args223935%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords223934%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords223934%_ 'ids: absent-value))
               _%args223935%_)))
    (define gxc#apply-find-var-refs
      (lambda _%$%args223918223941%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%$%args223918223941%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp224098 (list gxc#::collect-expression-refs::t))
            (__tmp224097 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp224098
         '()
         __tmp224097
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args223913%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args223913%_)))
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
      (let ((__tmp224099
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
        (__make-atomic-promise __tmp224099)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords223888%_ _%$%table223885223889%_ _%stx223890%_)
        (let ((_%table223893%_
               (if (eq? _%$%table223885223889%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%$%table223885223889%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self223895%_
                  (let ((__obj224074
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224074
                       _%table223893%_
                       '1
                       '#f
                       '#f))
                    __obj224074))
                 (__tmp224100
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self223895%_ _%stx223890%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp224100
             gxc#current-compile-method
             _%self223895%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords223902%_ . _%args223903%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords223902%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords223902%_
                  'table:
                  absent-value))
               _%args223903%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%$%args223886223909%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%$%args223886223909%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self223814%_ _%stx223815%_)
        (let* ((_%$%g223817223834%_
                (lambda (_%$%g223818223831%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g223818223831%_))))
               (_%$%g223816223881%_
                (lambda (_%$%g223818223837%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g223818223837%_))
                      (let ((_%$%e223821223839%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g223818223837%_))))
                        (let ((_%$%hd223822223842%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e223821223839%_)))
                              (_%$%tl223823223844%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e223821223839%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl223823223844%_))
                              (let ((_%$%e223824223847%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl223823223844%_))))
                                (let ((_%$%hd223825223850%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e223824223847%_)))
                                      (_%$%tl223826223852%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e223824223847%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl223826223852%_))
                                      (let ((_%$%e223827223855%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl223826223852%_))))
                                        (let ((_%$%hd223828223858%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e223827223855%_)))
                                              (_%$%tl223829223860%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e223827223855%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl223829223860%_))
                                              (let ((_%sym223879%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#identifier-symbol
                                                        _%$%hd223825223850%_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"collect mutator "
                                                   _%sym223879%_))
                                                (let ((__tmp224101
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#current-compile-mutators))))
                                                  (declare (not safe))
                                                  (hash-put!
                                                   __tmp224101
                                                   _%sym223879%_
                                                   '#t))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self223814%_
                                                   _%$%hd223828223858%_)))
                                              (_%$%g223817223834%_
                                               _%$%g223818223837%_))))
                                      (_%$%g223817223834%_
                                       _%$%g223818223837%_))))
                              (_%$%g223817223834%_ _%$%g223818223837%_))))
                      (_%$%g223817223834%_ _%$%g223818223837%_)))))
          (_%$%g223816223881%_ _%stx223815%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self223762%_ _%stx223763%_)
        (let* ((_%$%g223765223778%_
                (lambda (_%$%g223766223775%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g223766223775%_))))
               (_%$%g223764223811%_
                (lambda (_%$%g223766223781%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g223766223781%_))
                      (let ((_%$%e223768223783%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g223766223781%_))))
                        (let ((_%$%hd223769223786%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e223768223783%_)))
                              (_%$%tl223770223788%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e223768223783%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl223770223788%_))
                              (let ((_%$%e223771223791%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl223770223788%_))))
                                (let ((_%$%hd223772223794%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e223771223791%_)))
                                      (_%$%tl223773223796%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e223771223791%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl223773223796%_))
                                      (if (let ((__tmp224102
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self223762%_
                                                    'id))))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             _%$%hd223772223794%_
                                             __tmp224102))
                                          (let ((__tmp224103
                                                 (cons '%#ref
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (slot-ref__0 _%self223762%_ 'new-id))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp224103
                                             _%stx223763%_))
                                          _%stx223763%_)
                                      (_%$%g223765223778%_
                                       _%$%g223766223781%_))))
                              (_%$%g223765223778%_ _%$%g223766223781%_))))
                      (_%$%g223765223778%_ _%$%g223766223781%_)))))
          (_%$%g223764223811%_ _%stx223763%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self223702%_ _%stx223703%_)
        (let* ((_%$%g223705223718%_
                (lambda (_%$%g223706223715%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g223706223715%_))))
               (_%$%g223704223759%_
                (lambda (_%$%g223706223721%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g223706223721%_))
                      (let ((_%$%e223708223723%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g223706223721%_))))
                        (let ((_%$%hd223709223726%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e223708223723%_)))
                              (_%$%tl223710223728%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e223708223723%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl223710223728%_))
                              (let ((_%$%e223711223731%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl223710223728%_))))
                                (let ((_%$%hd223712223734%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e223711223731%_)))
                                      (_%$%tl223713223736%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e223711223731%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl223713223736%_))
                                      (let ((_%$e223753%_
                                             (let ((__tmp224105
                                                    (lambda (_%sub223751%_)
                                                      (let ((__tmp224106
                                                             (car _%sub223751%_)))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         _%$%hd223712223734%_
                                                         __tmp224106))))
                                                   (__tmp224104
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self223702%_
                                                       'subst))))
                                               (declare (not safe))
                                               (__find __tmp224105
                                                       __tmp224104))))
                                        (if _%$e223753%_
                                            (let ((__tmp224107
                                                   (cons '%#ref
                                                         (cons (cdr _%$e223753%_)
                                                               '()))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp224107
                                               _%stx223703%_))
                                            _%stx223703%_))
                                      (_%$%g223705223718%_
                                       _%$%g223706223721%_))))
                              (_%$%g223705223718%_ _%$%g223706223721%_))))
                      (_%$%g223705223718%_ _%$%g223706223721%_)))))
          (_%$%g223704223759%_ _%stx223703%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self223631%_ _%stx223632%_)
        (let* ((_%$%g223634223651%_
                (lambda (_%$%g223635223648%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g223635223648%_))))
               (_%$%g223633223699%_
                (lambda (_%$%g223635223654%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g223635223654%_))
                      (let ((_%$%e223638223656%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g223635223654%_))))
                        (let ((_%$%hd223639223659%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e223638223656%_)))
                              (_%$%tl223640223661%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e223638223656%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl223640223661%_))
                              (let ((_%$%e223641223664%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl223640223661%_))))
                                (let ((_%$%hd223642223667%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e223641223664%_)))
                                      (_%$%tl223643223669%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e223641223664%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl223643223669%_))
                                      (let ((_%$%e223644223672%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl223643223669%_))))
                                        (let ((_%$%hd223645223675%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e223644223672%_)))
                                              (_%$%tl223646223677%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e223644223672%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl223646223677%_))
                                              (let ((_%new-expr223696%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self223631%_
                                                        _%$%hd223645223675%_)))
                                                    (_%new-xid223697%_
                                                     (if (let ((__tmp224108
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self223631%_ 'id))))
                   (declare (not safe))
                   (gx#free-identifier=? _%$%hd223642223667%_ __tmp224108))
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _%self223631%_ 'new-id))
                 _%$%hd223642223667%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((__tmp224109
                                                       (cons '%#set!
                                                             (cons _%new-xid223697%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%new-expr223696%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp224109
                                                   _%stx223632%_)))
                                              (_%$%g223634223651%_
                                               _%$%g223635223654%_))))
                                      (_%$%g223634223651%_
                                       _%$%g223635223654%_))))
                              (_%$%g223634223651%_ _%$%g223635223654%_))))
                      (_%$%g223634223651%_ _%$%g223635223654%_)))))
          (_%$%g223633223699%_ _%stx223632%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self223554%_ _%stx223555%_)
        (let* ((_%$%g223557223574%_
                (lambda (_%$%g223558223571%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g223558223571%_))))
               (_%$%g223556223628%_
                (lambda (_%$%g223558223577%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g223558223577%_))
                      (let ((_%$%e223561223579%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g223558223577%_))))
                        (let ((_%$%hd223562223582%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e223561223579%_)))
                              (_%$%tl223563223584%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e223561223579%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl223563223584%_))
                              (let ((_%$%e223564223587%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl223563223584%_))))
                                (let ((_%$%hd223565223590%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e223564223587%_)))
                                      (_%$%tl223566223592%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e223564223587%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl223566223592%_))
                                      (let ((_%$%e223567223595%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl223566223592%_))))
                                        (let ((_%$%hd223568223598%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e223567223595%_)))
                                              (_%$%tl223569223600%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e223567223595%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl223569223600%_))
                                              (let ((_%new-expr223625%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self223554%_
                                                        _%$%hd223568223598%_)))
                                                    (_%new-xid223626%_
                                                     (let ((_%$e223621%_
                                                            (let ((__tmp224111
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%sub223619%_)
                             (let ((__tmp224112 (car _%sub223619%_)))
                               (declare (not safe))
                               (gx#free-identifier=?
                                _%$%hd223565223590%_
                                __tmp224112))))
                          (__tmp224110
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self223554%_ 'subst))))
                      (declare (not safe))
                      (__find __tmp224111 __tmp224110))))
               (if _%$e223621%_ (cdr _%$e223621%_) _%$%hd223565223590%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((__tmp224113
                                                       (cons '%#set!
                                                             (cons _%new-xid223626%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%new-expr223625%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp224113
                                                   _%stx223555%_)))
                                              (_%$%g223557223574%_
                                               _%$%g223558223577%_))))
                                      (_%$%g223557223574%_
                                       _%$%g223558223577%_))))
                              (_%$%g223557223574%_ _%$%g223558223577%_))))
                      (_%$%g223557223574%_ _%$%g223558223577%_)))))
          (_%$%g223556223628%_ _%stx223555%_))))
    (define gxc#inline-subst-ref%
      (lambda (_%self223494%_ _%stx223495%_)
        (let* ((_%$%g223497223510%_
                (lambda (_%$%g223498223507%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g223498223507%_))))
               (_%$%g223496223551%_
                (lambda (_%$%g223498223513%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g223498223513%_))
                      (let ((_%$%e223500223515%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g223498223513%_))))
                        (let ((_%$%hd223501223518%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e223500223515%_)))
                              (_%$%tl223502223520%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e223500223515%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl223502223520%_))
                              (let ((_%$%e223503223523%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl223502223520%_))))
                                (let ((_%$%hd223504223526%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e223503223523%_)))
                                      (_%$%tl223505223528%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e223503223523%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl223505223528%_))
                                      (let ((_%$e223545%_
                                             (let ((__tmp224115
                                                    (lambda (_%sub223543%_)
                                                      (let ((__tmp224116
                                                             (car _%sub223543%_)))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         _%$%hd223504223526%_
                                                         __tmp224116))))
                                                   (__tmp224114
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self223494%_
                                                       'subst))))
                                               (declare (not safe))
                                               (__find __tmp224115
                                                       __tmp224114))))
                                        (if _%$e223545%_
                                            (let ((__tmp224117
                                                   (cdr _%$e223545%_)))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp224117
                                               _%stx223495%_))
                                            _%stx223495%_))
                                      (_%$%g223497223510%_
                                       _%$%g223498223513%_))))
                              (_%$%g223497223510%_ _%$%g223498223513%_))))
                      (_%$%g223497223510%_ _%$%g223498223513%_)))))
          (_%$%g223496223551%_ _%stx223495%_))))
    (define gxc#inline-subst-setq%
      (lambda (_%self223424%_ _%stx223425%_)
        (let* ((_%$%g223427223444%_
                (lambda (_%$%g223428223441%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g223428223441%_))))
               (_%$%g223426223491%_
                (lambda (_%$%g223428223447%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g223428223447%_))
                      (let ((_%$%e223431223449%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g223428223447%_))))
                        (let ((_%$%hd223432223452%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e223431223449%_)))
                              (_%$%tl223433223454%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e223431223449%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl223433223454%_))
                              (let ((_%$%e223434223457%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl223433223454%_))))
                                (let ((_%$%hd223435223460%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e223434223457%_)))
                                      (_%$%tl223436223462%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e223434223457%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl223436223462%_))
                                      (let ((_%$%e223437223465%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl223436223462%_))))
                                        (let ((_%$%hd223438223468%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e223437223465%_)))
                                              (_%$%tl223439223470%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e223437223465%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl223439223470%_))
                                              (if (let ((__tmp224119
                                                         (lambda (_%sub223489%_)
                                                           (let ((__tmp224120
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (car _%sub223489%_)))
                     (declare (not safe))
                     (gx#free-identifier=? _%$%hd223435223460%_ __tmp224120))))
                (__tmp224118
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _%self223424%_ 'subst))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__find __tmp224119
                                                            __tmp224118))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#raise-compile-error
                                                     '"mutating inline substitution"
                                                     _%stx223425%_
                                                     _%$%hd223435223460%_))
                                                  (let ((__tmp224121
                                                         (cons '%#set!
                                                               (cons _%$%hd223435223460%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self223424%_
                                      _%$%hd223438223468%_))
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp224121
                                                     _%stx223425%_)))
                                              (_%$%g223427223444%_
                                               _%$%g223428223447%_))))
                                      (_%$%g223427223444%_
                                       _%$%g223428223447%_))))
                              (_%$%g223427223444%_ _%$%g223428223447%_))))
                      (_%$%g223427223444%_ _%$%g223428223447%_)))))
          (_%$%g223426223491%_ _%stx223425%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self223370%_ _%stx223371%_)
        (let* ((_%$%g223373223386%_
                (lambda (_%$%g223374223383%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g223374223383%_))))
               (_%$%g223372223421%_
                (lambda (_%$%g223374223389%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g223374223389%_))
                      (let ((_%$%e223376223391%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g223374223389%_))))
                        (let ((_%$%hd223377223394%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e223376223391%_)))
                              (_%$%tl223378223396%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e223376223391%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl223378223396%_))
                              (let ((_%$%e223379223399%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl223378223396%_))))
                                (let ((_%$%hd223380223402%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e223379223399%_)))
                                      (_%$%tl223381223404%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e223379223399%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl223381223404%_))
                                      (let* ((_%eid223419%_
                                              (let ()
                                                (declare (not safe))
                                                (gxc#identifier-symbol
                                                 _%$%hd223380223402%_)))
                                             (__tmp224122
                                              (let ()
                                                (declare (not safe))
                                                (slot-ref__0
                                                 _%self223370%_
                                                 'table))))
                                        (declare (not safe))
                                        (hash-update!__%
                                         __tmp224122
                                         _%eid223419%_
                                         1+
                                         '0))
                                      (_%$%g223373223386%_
                                       _%$%g223374223389%_))))
                              (_%$%g223373223386%_ _%$%g223374223389%_))))
                      (_%$%g223373223386%_ _%$%g223374223389%_)))))
          (_%$%g223372223421%_ _%stx223371%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self223300%_ _%stx223301%_)
        (let* ((_%$%g223303223320%_
                (lambda (_%$%g223304223317%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g223304223317%_))))
               (_%$%g223302223367%_
                (lambda (_%$%g223304223323%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g223304223323%_))
                      (let ((_%$%e223307223325%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g223304223323%_))))
                        (let ((_%$%hd223308223328%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e223307223325%_)))
                              (_%$%tl223309223330%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e223307223325%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl223309223330%_))
                              (let ((_%$%e223310223333%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl223309223330%_))))
                                (let ((_%$%hd223311223336%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e223310223333%_)))
                                      (_%$%tl223312223338%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e223310223333%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl223312223338%_))
                                      (let ((_%$%e223313223341%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl223312223338%_))))
                                        (let ((_%$%hd223314223344%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e223313223341%_)))
                                              (_%$%tl223315223346%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e223313223341%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl223315223346%_))
                                              (let ((_%eid223365%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#identifier-symbol
                                                        _%$%hd223311223336%_))))
                                                (let ((__tmp224123
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self223300%_
                                                          'table))))
                                                  (declare (not safe))
                                                  (hash-update!__%
                                                   __tmp224123
                                                   _%eid223365%_
                                                   1+
                                                   '0))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self223300%_
                                                   _%$%hd223314223344%_)))
                                              (_%$%g223303223320%_
                                               _%$%g223304223323%_))))
                                      (_%$%g223303223320%_
                                       _%$%g223304223323%_))))
                              (_%$%g223303223320%_ _%$%g223304223323%_))))
                      (_%$%g223303223320%_ _%$%g223304223323%_)))))
          (_%$%g223302223367%_ _%stx223301%_))))
    (define gxc#find-body%
      (lambda (_%self223215%_ _%stx223216%_)
        (let* ((_%$%g223218223237%_
                (lambda (_%$%g223219223234%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g223219223234%_))))
               (_%$%g223217223297%_
                (lambda (_%$%g223219223240%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g223219223240%_))
                      (let ((_%$%e223221223242%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g223219223240%_))))
                        (let ((_%$%hd223222223245%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e223221223242%_)))
                              (_%$%tl223223223247%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e223221223242%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl223223223247%_))
                              (let ((_g224124_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl223223223247%_
                                        '0))))
                                (begin
                                  (let ((_g224125_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g224124_)
                                               (##values-length _g224124_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g224125_ 2)))
                                        (error "Context expects 2 values"
                                               _g224125_)))
                                  (let ((_%$%target223224223250%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g224124_ 0)))
                                        (_%$%tl223226223252%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g224124_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl223226223252%_))
                                        (letrec ((_%$%loop223227223255%_
                                                  (lambda (_%$%hd223225223258%_
                                                           _%$%expr223231223260%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd223225223258%_))
                                                        (let ((_%$%e223228223262%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd223225223258%_))))
                  (let ((_%$%lp-hd223229223265%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e223228223262%_)))
                        (_%$%lp-tl223230223267%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e223228223262%_))))
                    (_%$%loop223227223255%_
                     _%$%lp-tl223230223267%_
                     (cons _%$%lp-hd223229223265%_ _%$%expr223231223260%_))))
                (let ((_%$%expr223232223270%_
                       (reverse _%$%expr223231223260%_)))
                  (let ((__tmp224128
                         (lambda (_%$%g223285223287%_)
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self223215%_
                              _%$%g223285223287%_))))
                        (__tmp224126
                         (let ((__tmp224127
                                (lambda (_%$%g223289223292%_
                                         _%$%g223290223294%_)
                                  (cons _%$%g223289223292%_
                                        _%$%g223290223294%_))))
                           (declare (not safe))
                           (foldr__0 __tmp224127 '() _%$%expr223232223270%_))))
                    (declare (not safe))
                    (ormap__0 __tmp224128 __tmp224126)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop223227223255%_
                                           _%$%target223224223250%_
                                           '()))
                                        (_%$%g223218223237%_
                                         _%$%g223219223240%_)))))
                              (_%$%g223218223237%_ _%$%g223219223240%_))))
                      (_%$%g223218223237%_ _%$%g223219223240%_)))))
          (_%$%g223217223297%_ _%stx223216%_))))
    (define gxc#find-let-values%
      (lambda (_%self223069%_ _%stx223070%_)
        (let* ((_%$%g223072223107%_
                (lambda (_%$%g223073223104%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g223073223104%_))))
               (_%$%g223071223212%_
                (lambda (_%$%g223073223110%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g223073223110%_))
                      (let ((_%$%e223077223112%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g223073223110%_))))
                        (let ((_%$%hd223078223115%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e223077223112%_)))
                              (_%$%tl223079223117%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e223077223112%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl223079223117%_))
                              (let ((_%$%e223080223120%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl223079223117%_))))
                                (let ((_%$%hd223081223123%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e223080223120%_)))
                                      (_%$%tl223082223125%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e223080223120%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd223081223123%_))
                                      (let ((_g224129_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%hd223081223123%_
                                                '0))))
                                        (begin
                                          (let ((_g224130_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g224129_)
                                                       (##values-length
                                                        _g224129_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g224130_ 2)))
                                                (error "Context expects 2 values"
                                                       _g224130_)))
                                          (let ((_%$%target223083223128%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g224129_ 0)))
                                                (_%$%tl223085223130%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g224129_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl223085223130%_))
                                                (letrec ((_%$%loop223086223133%_
                                                          (lambda (_%$%hd223084223136%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr223090223138%_
                           _%$%bind223091223139%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd223084223136%_))
                        (let ((_%$%e223087223141%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd223084223136%_))))
                          (let ((_%$%lp-hd223088223144%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e223087223141%_)))
                                (_%$%lp-tl223089223146%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e223087223141%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd223088223144%_))
                                (let ((_%$%e223094223149%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%lp-hd223088223144%_))))
                                  (let ((_%$%hd223095223152%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e223094223149%_)))
                                        (_%$%tl223096223154%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e223094223149%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl223096223154%_))
                                        (let ((_%$%e223097223157%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl223096223154%_))))
                                          (let ((_%$%hd223098223160%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e223097223157%_)))
                                                (_%$%tl223099223162%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e223097223157%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl223099223162%_))
                                                (_%$%loop223086223133%_
                                                 _%$%lp-tl223089223146%_
                                                 (cons _%$%hd223098223160%_
                                                       _%$%expr223090223138%_)
                                                 (cons _%$%hd223095223152%_
                                                       _%$%bind223091223139%_))
                                                (_%$%g223072223107%_
                                                 _%$%g223073223110%_))))
                                        (_%$%g223072223107%_
                                         _%$%g223073223110%_))))
                                (_%$%g223072223107%_ _%$%g223073223110%_))))
                        (let ((_%$%expr223092223165%_
                               (reverse _%$%expr223090223138%_))
                              (_%$%bind223093223166%_
                               (reverse _%$%bind223091223139%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl223082223125%_))
                              (let ((_%$%e223100223168%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl223082223125%_))))
                                (let ((_%$%hd223101223171%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e223100223168%_)))
                                      (_%$%tl223102223173%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e223100223168%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl223102223173%_))
                                      (let ((_%$e223209%_
                                             (let ((__tmp224133
                                                    (lambda (_%$%g223197223199%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self223069%_
                                                         _%$%g223197223199%_))))
                                                   (__tmp224131
                                                    (let ((__tmp224132
                                                           (lambda (_%$%g223201223204%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g223202223206%_)
                     (cons _%$%g223201223204%_ _%$%g223202223206%_))))
              (declare (not safe))
              (foldr__0 __tmp224132 '() _%$%expr223092223165%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (ormap__0
                                                __tmp224133
                                                __tmp224131))))
                                        (if _%$e223209%_
                                            _%$e223209%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self223069%_
                                               _%$%hd223101223171%_))))
                                      (_%$%g223072223107%_
                                       _%$%g223073223110%_))))
                              (_%$%g223072223107%_ _%$%g223073223110%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop223086223133%_
                                                   _%$%target223083223128%_
                                                   '()
                                                   '()))
                                                (_%$%g223072223107%_
                                                 _%$%g223073223110%_)))))
                                      (_%$%g223072223107%_
                                       _%$%g223073223110%_))))
                              (_%$%g223072223107%_ _%$%g223073223110%_))))
                      (_%$%g223072223107%_ _%$%g223073223110%_)))))
          (_%$%g223071223212%_ _%stx223070%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self223013%_ _%stx223014%_)
        (let* ((_%$%g223016223029%_
                (lambda (_%$%g223017223026%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g223017223026%_))))
               (_%$%g223015223066%_
                (lambda (_%$%g223017223032%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g223017223032%_))
                      (let ((_%$%e223019223034%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g223017223032%_))))
                        (let ((_%$%hd223020223037%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e223019223034%_)))
                              (_%$%tl223021223039%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e223019223034%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl223021223039%_))
                              (let ((_%$%e223022223042%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl223021223039%_))))
                                (let ((_%$%hd223023223045%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e223022223042%_)))
                                      (_%$%tl223024223047%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e223022223042%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl223024223047%_))
                                      (let ((__tmp224135
                                             (lambda (_%$%g223061223063%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%$%hd223023223045%_
                                                  _%$%g223061223063%_))))
                                            (__tmp224134
                                             (let ()
                                               (declare (not safe))
                                               (slot-ref__0
                                                _%self223013%_
                                                'ids))))
                                        (declare (not safe))
                                        (__find __tmp224135 __tmp224134))
                                      (_%$%g223016223029%_
                                       _%$%g223017223032%_))))
                              (_%$%g223016223029%_ _%$%g223017223032%_))))
                      (_%$%g223016223029%_ _%$%g223017223032%_)))))
          (_%$%g223015223066%_ _%stx223014%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self222938%_ _%stx222939%_)
        (let* ((_%$%g222941222958%_
                (lambda (_%$%g222942222955%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g222942222955%_))))
               (_%$%g222940223010%_
                (lambda (_%$%g222942222961%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g222942222961%_))
                      (let ((_%$%e222945222963%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g222942222961%_))))
                        (let ((_%$%hd222946222966%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e222945222963%_)))
                              (_%$%tl222947222968%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e222945222963%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl222947222968%_))
                              (let ((_%$%e222948222971%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl222947222968%_))))
                                (let ((_%$%hd222949222974%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e222948222971%_)))
                                      (_%$%tl222950222976%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e222948222971%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl222950222976%_))
                                      (let ((_%$%e222951222979%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl222950222976%_))))
                                        (let ((_%$%hd222952222982%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e222951222979%_)))
                                              (_%$%tl222953222984%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e222951222979%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl222953222984%_))
                                              (let ((_%$e223007%_
                                                     (let ((__tmp224137
                                                            (lambda (_%$%g223002223004%_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#free-identifier=?
                         _%$%hd222949222974%_
                         _%$%g223002223004%_))))
                   (__tmp224136
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self222938%_ 'ids))))
               (declare (not safe))
               (__find __tmp224137 __tmp224136))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if _%$e223007%_
                                                    _%$e223007%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self222938%_
                                                       _%$%hd222952222982%_))))
                                              (_%$%g222941222958%_
                                               _%$%g222942222961%_))))
                                      (_%$%g222941222958%_
                                       _%$%g222942222961%_))))
                              (_%$%g222941222958%_ _%$%g222942222961%_))))
                      (_%$%g222941222958%_ _%$%g222942222961%_)))))
          (_%$%g222940223010%_ _%stx222939%_))))))
