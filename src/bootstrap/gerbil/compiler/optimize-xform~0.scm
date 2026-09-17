(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1789552485)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp226757 (list gxc#::void::t))
            (__tmp226756 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp226757
         '()
         __tmp226756
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args226741%_
        (apply make-instance gxc#::collect-mutators::t _%$args226741%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp226758
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
        (__make-atomic-promise __tmp226758)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx226733%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self226736%_
                (let ((__obj226744
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj226744))
               (__tmp226759
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self226736%_ _%stx226733%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp226759
           gxc#current-compile-method
           _%self226736%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp226761 (list gxc#::basic-xform-expression::t))
            (__tmp226760 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp226761
         '(id new-id)
         __tmp226760
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args226730%_
        (apply make-instance gxc#::expression-subst::t _%$args226730%_)))
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
      (let ((__tmp226762
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
        (__make-atomic-promise __tmp226762)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords226702%_
               _%$%id226698226703%_
               _%$%new-id226699226704%_
               _%stx226705%_)
        (let* ((_%id226708%_
                (if (eq? _%$%id226698226703%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%$%id226698226703%_))
               (_%new-id226710%_
                (if (eq? _%$%new-id226699226704%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%$%new-id226699226704%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self226712%_
                  (let ((__obj226746
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj226746
                       _%id226708%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj226746
                       _%new-id226710%_
                       '2
                       '#f
                       '#f))
                    __obj226746))
                 (__tmp226763
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self226712%_ _%stx226705%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp226763
             gxc#current-compile-method
             _%self226712%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords226719%_ . _%args226720%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords226719%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords226719%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords226719%_
                  'new-id:
                  absent-value))
               _%args226720%_)))
    (define gxc#apply-expression-subst
      (lambda _%$%args226700226726%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%$%args226700226726%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp226765 (list gxc#::basic-xform-expression::t))
            (__tmp226764 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp226765
         '(subst)
         __tmp226764
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args226694%_
        (apply make-instance gxc#::expression-subst*::t _%$args226694%_)))
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
      (let ((__tmp226766
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
        (__make-atomic-promise __tmp226766)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords226669%_ _%$%subst226666226670%_ _%stx226671%_)
        (let ((_%subst226674%_
               (if (eq? _%$%subst226666226670%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%$%subst226666226670%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self226676%_
                  (let ((__obj226748
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj226748
                       _%subst226674%_
                       '1
                       '#f
                       '#f))
                    __obj226748))
                 (__tmp226767
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self226676%_ _%stx226671%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp226767
             gxc#current-compile-method
             _%self226676%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords226683%_ . _%args226684%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords226683%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords226683%_
                  'subst:
                  absent-value))
               _%args226684%_)))
    (define gxc#apply-expression-subst*
      (lambda _%$%args226667226690%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%$%args226667226690%_)))
    (define gxc#::inline-subst::t
      (let ((__tmp226769 (list gxc#::basic-xform-expression::t))
            (__tmp226768 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::inline-subst::t
         '::inline-subst
         __tmp226769
         '(subst)
         __tmp226768
         '#f)))
    (define gxc#::inline-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::inline-subst::t)))
    (define gxc#make-::inline-subst
      (lambda _%$args226662%_
        (apply make-instance gxc#::inline-subst::t _%$args226662%_)))
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
      (let ((__tmp226770
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
        (__make-atomic-promise __tmp226770)))
    (define gxc#apply-inline-subst__%
      (lambda (_%@@keywords226637%_ _%$%subst226634226638%_ _%stx226639%_)
        (let ((_%subst226642%_
               (if (eq? _%$%subst226634226638%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%$%subst226634226638%_)))
          (force gxc#::inline-subst-bind-methods!)
          (let* ((_%self226644%_
                  (let ((__obj226750
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::inline-subst::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj226750
                       _%subst226642%_
                       '1
                       '#f
                       '#f))
                    __obj226750))
                 (__tmp226771
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self226644%_ _%stx226639%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp226771
             gxc#current-compile-method
             _%self226644%_)))))
    (define gxc#apply-inline-subst__@
      (lambda (_%@@keywords226651%_ . _%args226652%_)
        (apply gxc#apply-inline-subst__%
               _%@@keywords226651%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords226651%_
                  'subst:
                  absent-value))
               _%args226652%_)))
    (define gxc#apply-inline-subst
      (lambda _%$%args226635226658%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-inline-subst__@
               _%$%args226635226658%_)))
    (define gxc#::find-expression::t
      (let ((__tmp226772 (list gxc#::false-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp226772
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args226630%_
        (apply make-instance gxc#::find-expression::t _%$args226630%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp226773
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
        (__make-atomic-promise __tmp226773)))
    (define gxc#::find-var-refs::t
      (let ((__tmp226775 (list gxc#::find-expression::t))
            (__tmp226774 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp226775
         '(ids)
         __tmp226774
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args226626%_
        (apply make-instance gxc#::find-var-refs::t _%$args226626%_)))
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
      (let ((__tmp226776
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
        (__make-atomic-promise __tmp226776)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords226601%_ _%$%ids226598226602%_ _%stx226603%_)
        (let ((_%ids226606%_
               (if (eq? _%$%ids226598226602%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%$%ids226598226602%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self226608%_
                  (let ((__obj226753
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj226753
                       _%ids226606%_
                       '1
                       '#f
                       '#f))
                    __obj226753))
                 (__tmp226777
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self226608%_ _%stx226603%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp226777
             gxc#current-compile-method
             _%self226608%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords226615%_ . _%args226616%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords226615%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords226615%_ 'ids: absent-value))
               _%args226616%_)))
    (define gxc#apply-find-var-refs
      (lambda _%$%args226599226622%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%$%args226599226622%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp226779 (list gxc#::collect-expression-refs::t))
            (__tmp226778 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp226779
         '()
         __tmp226778
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args226594%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args226594%_)))
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
      (let ((__tmp226780
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
        (__make-atomic-promise __tmp226780)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords226569%_ _%$%table226566226570%_ _%stx226571%_)
        (let ((_%table226574%_
               (if (eq? _%$%table226566226570%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%$%table226566226570%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self226576%_
                  (let ((__obj226755
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj226755
                       _%table226574%_
                       '1
                       '#f
                       '#f))
                    __obj226755))
                 (__tmp226781
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self226576%_ _%stx226571%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp226781
             gxc#current-compile-method
             _%self226576%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords226583%_ . _%args226584%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords226583%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords226583%_
                  'table:
                  absent-value))
               _%args226584%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%$%args226567226590%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%$%args226567226590%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self226495%_ _%stx226496%_)
        (let* ((_%$%g226498226515%_
                (lambda (_%$%g226499226512%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g226499226512%_))))
               (_%$%g226497226562%_
                (lambda (_%$%g226499226518%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g226499226518%_))
                      (let ((_%$%e226502226520%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g226499226518%_))))
                        (let ((_%$%hd226503226523%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e226502226520%_)))
                              (_%$%tl226504226525%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e226502226520%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl226504226525%_))
                              (let ((_%$%e226505226528%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl226504226525%_))))
                                (let ((_%$%hd226506226531%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e226505226528%_)))
                                      (_%$%tl226507226533%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e226505226528%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl226507226533%_))
                                      (let ((_%$%e226508226536%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl226507226533%_))))
                                        (let ((_%$%hd226509226539%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e226508226536%_)))
                                              (_%$%tl226510226541%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e226508226536%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl226510226541%_))
                                              (let ((_%sym226560%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#identifier-symbol
                                                        _%$%hd226506226531%_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"collect mutator "
                                                   _%sym226560%_))
                                                (let ((__tmp226782
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#current-compile-mutators))))
                                                  (declare (not safe))
                                                  (hash-put!
                                                   __tmp226782
                                                   _%sym226560%_
                                                   '#t))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self226495%_
                                                   _%$%hd226509226539%_)))
                                              (_%$%g226498226515%_
                                               _%$%g226499226518%_))))
                                      (_%$%g226498226515%_
                                       _%$%g226499226518%_))))
                              (_%$%g226498226515%_ _%$%g226499226518%_))))
                      (_%$%g226498226515%_ _%$%g226499226518%_)))))
          (_%$%g226497226562%_ _%stx226496%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self226443%_ _%stx226444%_)
        (let* ((_%$%g226446226459%_
                (lambda (_%$%g226447226456%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g226447226456%_))))
               (_%$%g226445226492%_
                (lambda (_%$%g226447226462%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g226447226462%_))
                      (let ((_%$%e226449226464%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g226447226462%_))))
                        (let ((_%$%hd226450226467%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e226449226464%_)))
                              (_%$%tl226451226469%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e226449226464%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl226451226469%_))
                              (let ((_%$%e226452226472%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl226451226469%_))))
                                (let ((_%$%hd226453226475%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e226452226472%_)))
                                      (_%$%tl226454226477%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e226452226472%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl226454226477%_))
                                      (if (let ((__tmp226783
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self226443%_
                                                    'id))))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             _%$%hd226453226475%_
                                             __tmp226783))
                                          (let ((__tmp226784
                                                 (cons '%#ref
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (slot-ref__0 _%self226443%_ 'new-id))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp226784
                                             _%stx226444%_))
                                          _%stx226444%_)
                                      (_%$%g226446226459%_
                                       _%$%g226447226462%_))))
                              (_%$%g226446226459%_ _%$%g226447226462%_))))
                      (_%$%g226446226459%_ _%$%g226447226462%_)))))
          (_%$%g226445226492%_ _%stx226444%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self226383%_ _%stx226384%_)
        (let* ((_%$%g226386226399%_
                (lambda (_%$%g226387226396%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g226387226396%_))))
               (_%$%g226385226440%_
                (lambda (_%$%g226387226402%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g226387226402%_))
                      (let ((_%$%e226389226404%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g226387226402%_))))
                        (let ((_%$%hd226390226407%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e226389226404%_)))
                              (_%$%tl226391226409%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e226389226404%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl226391226409%_))
                              (let ((_%$%e226392226412%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl226391226409%_))))
                                (let ((_%$%hd226393226415%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e226392226412%_)))
                                      (_%$%tl226394226417%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e226392226412%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl226394226417%_))
                                      (let ((_%$e226434%_
                                             (let ((__tmp226786
                                                    (lambda (_%sub226432%_)
                                                      (let ((__tmp226787
                                                             (car _%sub226432%_)))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         _%$%hd226393226415%_
                                                         __tmp226787))))
                                                   (__tmp226785
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self226383%_
                                                       'subst))))
                                               (declare (not safe))
                                               (__find __tmp226786
                                                       __tmp226785))))
                                        (if _%$e226434%_
                                            (let ((__tmp226788
                                                   (cons '%#ref
                                                         (cons (cdr _%$e226434%_)
                                                               '()))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp226788
                                               _%stx226384%_))
                                            _%stx226384%_))
                                      (_%$%g226386226399%_
                                       _%$%g226387226402%_))))
                              (_%$%g226386226399%_ _%$%g226387226402%_))))
                      (_%$%g226386226399%_ _%$%g226387226402%_)))))
          (_%$%g226385226440%_ _%stx226384%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self226312%_ _%stx226313%_)
        (let* ((_%$%g226315226332%_
                (lambda (_%$%g226316226329%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g226316226329%_))))
               (_%$%g226314226380%_
                (lambda (_%$%g226316226335%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g226316226335%_))
                      (let ((_%$%e226319226337%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g226316226335%_))))
                        (let ((_%$%hd226320226340%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e226319226337%_)))
                              (_%$%tl226321226342%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e226319226337%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl226321226342%_))
                              (let ((_%$%e226322226345%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl226321226342%_))))
                                (let ((_%$%hd226323226348%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e226322226345%_)))
                                      (_%$%tl226324226350%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e226322226345%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl226324226350%_))
                                      (let ((_%$%e226325226353%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl226324226350%_))))
                                        (let ((_%$%hd226326226356%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e226325226353%_)))
                                              (_%$%tl226327226358%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e226325226353%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl226327226358%_))
                                              (let ((_%new-expr226377%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self226312%_
                                                        _%$%hd226326226356%_)))
                                                    (_%new-xid226378%_
                                                     (if (let ((__tmp226789
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self226312%_ 'id))))
                   (declare (not safe))
                   (gx#free-identifier=? _%$%hd226323226348%_ __tmp226789))
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _%self226312%_ 'new-id))
                 _%$%hd226323226348%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((__tmp226790
                                                       (cons '%#set!
                                                             (cons _%new-xid226378%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%new-expr226377%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp226790
                                                   _%stx226313%_)))
                                              (_%$%g226315226332%_
                                               _%$%g226316226335%_))))
                                      (_%$%g226315226332%_
                                       _%$%g226316226335%_))))
                              (_%$%g226315226332%_ _%$%g226316226335%_))))
                      (_%$%g226315226332%_ _%$%g226316226335%_)))))
          (_%$%g226314226380%_ _%stx226313%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self226235%_ _%stx226236%_)
        (let* ((_%$%g226238226255%_
                (lambda (_%$%g226239226252%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g226239226252%_))))
               (_%$%g226237226309%_
                (lambda (_%$%g226239226258%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g226239226258%_))
                      (let ((_%$%e226242226260%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g226239226258%_))))
                        (let ((_%$%hd226243226263%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e226242226260%_)))
                              (_%$%tl226244226265%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e226242226260%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl226244226265%_))
                              (let ((_%$%e226245226268%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl226244226265%_))))
                                (let ((_%$%hd226246226271%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e226245226268%_)))
                                      (_%$%tl226247226273%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e226245226268%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl226247226273%_))
                                      (let ((_%$%e226248226276%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl226247226273%_))))
                                        (let ((_%$%hd226249226279%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e226248226276%_)))
                                              (_%$%tl226250226281%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e226248226276%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl226250226281%_))
                                              (let ((_%new-expr226306%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self226235%_
                                                        _%$%hd226249226279%_)))
                                                    (_%new-xid226307%_
                                                     (let ((_%$e226302%_
                                                            (let ((__tmp226792
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%sub226300%_)
                             (let ((__tmp226793 (car _%sub226300%_)))
                               (declare (not safe))
                               (gx#free-identifier=?
                                _%$%hd226246226271%_
                                __tmp226793))))
                          (__tmp226791
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self226235%_ 'subst))))
                      (declare (not safe))
                      (__find __tmp226792 __tmp226791))))
               (if _%$e226302%_ (cdr _%$e226302%_) _%$%hd226246226271%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((__tmp226794
                                                       (cons '%#set!
                                                             (cons _%new-xid226307%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%new-expr226306%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp226794
                                                   _%stx226236%_)))
                                              (_%$%g226238226255%_
                                               _%$%g226239226258%_))))
                                      (_%$%g226238226255%_
                                       _%$%g226239226258%_))))
                              (_%$%g226238226255%_ _%$%g226239226258%_))))
                      (_%$%g226238226255%_ _%$%g226239226258%_)))))
          (_%$%g226237226309%_ _%stx226236%_))))
    (define gxc#inline-subst-ref%
      (lambda (_%self226175%_ _%stx226176%_)
        (let* ((_%$%g226178226191%_
                (lambda (_%$%g226179226188%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g226179226188%_))))
               (_%$%g226177226232%_
                (lambda (_%$%g226179226194%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g226179226194%_))
                      (let ((_%$%e226181226196%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g226179226194%_))))
                        (let ((_%$%hd226182226199%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e226181226196%_)))
                              (_%$%tl226183226201%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e226181226196%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl226183226201%_))
                              (let ((_%$%e226184226204%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl226183226201%_))))
                                (let ((_%$%hd226185226207%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e226184226204%_)))
                                      (_%$%tl226186226209%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e226184226204%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl226186226209%_))
                                      (let ((_%$e226226%_
                                             (let ((__tmp226796
                                                    (lambda (_%sub226224%_)
                                                      (let ((__tmp226797
                                                             (car _%sub226224%_)))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         _%$%hd226185226207%_
                                                         __tmp226797))))
                                                   (__tmp226795
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self226175%_
                                                       'subst))))
                                               (declare (not safe))
                                               (__find __tmp226796
                                                       __tmp226795))))
                                        (if _%$e226226%_
                                            (let ((__tmp226798
                                                   (cdr _%$e226226%_)))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp226798
                                               _%stx226176%_))
                                            _%stx226176%_))
                                      (_%$%g226178226191%_
                                       _%$%g226179226194%_))))
                              (_%$%g226178226191%_ _%$%g226179226194%_))))
                      (_%$%g226178226191%_ _%$%g226179226194%_)))))
          (_%$%g226177226232%_ _%stx226176%_))))
    (define gxc#inline-subst-setq%
      (lambda (_%self226105%_ _%stx226106%_)
        (let* ((_%$%g226108226125%_
                (lambda (_%$%g226109226122%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g226109226122%_))))
               (_%$%g226107226172%_
                (lambda (_%$%g226109226128%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g226109226128%_))
                      (let ((_%$%e226112226130%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g226109226128%_))))
                        (let ((_%$%hd226113226133%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e226112226130%_)))
                              (_%$%tl226114226135%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e226112226130%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl226114226135%_))
                              (let ((_%$%e226115226138%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl226114226135%_))))
                                (let ((_%$%hd226116226141%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e226115226138%_)))
                                      (_%$%tl226117226143%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e226115226138%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl226117226143%_))
                                      (let ((_%$%e226118226146%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl226117226143%_))))
                                        (let ((_%$%hd226119226149%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e226118226146%_)))
                                              (_%$%tl226120226151%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e226118226146%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl226120226151%_))
                                              (if (let ((__tmp226800
                                                         (lambda (_%sub226170%_)
                                                           (let ((__tmp226801
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (car _%sub226170%_)))
                     (declare (not safe))
                     (gx#free-identifier=? _%$%hd226116226141%_ __tmp226801))))
                (__tmp226799
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _%self226105%_ 'subst))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__find __tmp226800
                                                            __tmp226799))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#raise-compile-error
                                                     '"mutating inline substitution"
                                                     _%stx226106%_
                                                     _%$%hd226116226141%_))
                                                  (let ((__tmp226802
                                                         (cons '%#set!
                                                               (cons _%$%hd226116226141%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self226105%_
                                      _%$%hd226119226149%_))
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp226802
                                                     _%stx226106%_)))
                                              (_%$%g226108226125%_
                                               _%$%g226109226128%_))))
                                      (_%$%g226108226125%_
                                       _%$%g226109226128%_))))
                              (_%$%g226108226125%_ _%$%g226109226128%_))))
                      (_%$%g226108226125%_ _%$%g226109226128%_)))))
          (_%$%g226107226172%_ _%stx226106%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self226051%_ _%stx226052%_)
        (let* ((_%$%g226054226067%_
                (lambda (_%$%g226055226064%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g226055226064%_))))
               (_%$%g226053226102%_
                (lambda (_%$%g226055226070%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g226055226070%_))
                      (let ((_%$%e226057226072%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g226055226070%_))))
                        (let ((_%$%hd226058226075%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e226057226072%_)))
                              (_%$%tl226059226077%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e226057226072%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl226059226077%_))
                              (let ((_%$%e226060226080%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl226059226077%_))))
                                (let ((_%$%hd226061226083%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e226060226080%_)))
                                      (_%$%tl226062226085%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e226060226080%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl226062226085%_))
                                      (let* ((_%eid226100%_
                                              (let ()
                                                (declare (not safe))
                                                (gxc#identifier-symbol
                                                 _%$%hd226061226083%_)))
                                             (__tmp226803
                                              (let ()
                                                (declare (not safe))
                                                (slot-ref__0
                                                 _%self226051%_
                                                 'table))))
                                        (declare (not safe))
                                        (hash-update!__%
                                         __tmp226803
                                         _%eid226100%_
                                         1+
                                         '0))
                                      (_%$%g226054226067%_
                                       _%$%g226055226070%_))))
                              (_%$%g226054226067%_ _%$%g226055226070%_))))
                      (_%$%g226054226067%_ _%$%g226055226070%_)))))
          (_%$%g226053226102%_ _%stx226052%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self225981%_ _%stx225982%_)
        (let* ((_%$%g225984226001%_
                (lambda (_%$%g225985225998%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g225985225998%_))))
               (_%$%g225983226048%_
                (lambda (_%$%g225985226004%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g225985226004%_))
                      (let ((_%$%e225988226006%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g225985226004%_))))
                        (let ((_%$%hd225989226009%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e225988226006%_)))
                              (_%$%tl225990226011%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e225988226006%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl225990226011%_))
                              (let ((_%$%e225991226014%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl225990226011%_))))
                                (let ((_%$%hd225992226017%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e225991226014%_)))
                                      (_%$%tl225993226019%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e225991226014%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl225993226019%_))
                                      (let ((_%$%e225994226022%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl225993226019%_))))
                                        (let ((_%$%hd225995226025%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e225994226022%_)))
                                              (_%$%tl225996226027%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e225994226022%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl225996226027%_))
                                              (let ((_%eid226046%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#identifier-symbol
                                                        _%$%hd225992226017%_))))
                                                (let ((__tmp226804
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self225981%_
                                                          'table))))
                                                  (declare (not safe))
                                                  (hash-update!__%
                                                   __tmp226804
                                                   _%eid226046%_
                                                   1+
                                                   '0))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self225981%_
                                                   _%$%hd225995226025%_)))
                                              (_%$%g225984226001%_
                                               _%$%g225985226004%_))))
                                      (_%$%g225984226001%_
                                       _%$%g225985226004%_))))
                              (_%$%g225984226001%_ _%$%g225985226004%_))))
                      (_%$%g225984226001%_ _%$%g225985226004%_)))))
          (_%$%g225983226048%_ _%stx225982%_))))
    (define gxc#find-body%
      (lambda (_%self225896%_ _%stx225897%_)
        (let* ((_%$%g225899225918%_
                (lambda (_%$%g225900225915%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g225900225915%_))))
               (_%$%g225898225978%_
                (lambda (_%$%g225900225921%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g225900225921%_))
                      (let ((_%$%e225902225923%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g225900225921%_))))
                        (let ((_%$%hd225903225926%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e225902225923%_)))
                              (_%$%tl225904225928%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e225902225923%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl225904225928%_))
                              (let ((_g226805_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl225904225928%_
                                        '0))))
                                (begin
                                  (let ((_g226806_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g226805_)
                                               (##values-length _g226805_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g226806_ 2)))
                                        (error "Context expects 2 values"
                                               _g226806_)))
                                  (let ((_%$%target225905225931%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g226805_ 0)))
                                        (_%$%tl225907225933%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g226805_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl225907225933%_))
                                        (letrec ((_%$%loop225908225936%_
                                                  (lambda (_%$%hd225906225939%_
                                                           _%$%expr225912225941%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd225906225939%_))
                                                        (let ((_%$%e225909225943%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd225906225939%_))))
                  (let ((_%$%lp-hd225910225946%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e225909225943%_)))
                        (_%$%lp-tl225911225948%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e225909225943%_))))
                    (_%$%loop225908225936%_
                     _%$%lp-tl225911225948%_
                     (cons _%$%lp-hd225910225946%_ _%$%expr225912225941%_))))
                (let ((_%$%expr225913225951%_
                       (reverse _%$%expr225912225941%_)))
                  (let ((__tmp226809
                         (lambda (_%$%g225966225968%_)
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self225896%_
                              _%$%g225966225968%_))))
                        (__tmp226807
                         (let ((__tmp226808
                                (lambda (_%$%g225970225973%_
                                         _%$%g225971225975%_)
                                  (cons _%$%g225970225973%_
                                        _%$%g225971225975%_))))
                           (declare (not safe))
                           (foldr__0 __tmp226808 '() _%$%expr225913225951%_))))
                    (declare (not safe))
                    (ormap__0 __tmp226809 __tmp226807)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop225908225936%_
                                           _%$%target225905225931%_
                                           '()))
                                        (_%$%g225899225918%_
                                         _%$%g225900225921%_)))))
                              (_%$%g225899225918%_ _%$%g225900225921%_))))
                      (_%$%g225899225918%_ _%$%g225900225921%_)))))
          (_%$%g225898225978%_ _%stx225897%_))))
    (define gxc#find-let-values%
      (lambda (_%self225750%_ _%stx225751%_)
        (let* ((_%$%g225753225788%_
                (lambda (_%$%g225754225785%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g225754225785%_))))
               (_%$%g225752225893%_
                (lambda (_%$%g225754225791%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g225754225791%_))
                      (let ((_%$%e225758225793%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g225754225791%_))))
                        (let ((_%$%hd225759225796%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e225758225793%_)))
                              (_%$%tl225760225798%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e225758225793%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl225760225798%_))
                              (let ((_%$%e225761225801%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl225760225798%_))))
                                (let ((_%$%hd225762225804%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e225761225801%_)))
                                      (_%$%tl225763225806%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e225761225801%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd225762225804%_))
                                      (let ((_g226810_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%hd225762225804%_
                                                '0))))
                                        (begin
                                          (let ((_g226811_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g226810_)
                                                       (##values-length
                                                        _g226810_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g226811_ 2)))
                                                (error "Context expects 2 values"
                                                       _g226811_)))
                                          (let ((_%$%target225764225809%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g226810_ 0)))
                                                (_%$%tl225766225811%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g226810_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl225766225811%_))
                                                (letrec ((_%$%loop225767225814%_
                                                          (lambda (_%$%hd225765225817%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr225771225819%_
                           _%$%bind225772225820%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd225765225817%_))
                        (let ((_%$%e225768225822%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd225765225817%_))))
                          (let ((_%$%lp-hd225769225825%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e225768225822%_)))
                                (_%$%lp-tl225770225827%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e225768225822%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd225769225825%_))
                                (let ((_%$%e225775225830%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%lp-hd225769225825%_))))
                                  (let ((_%$%hd225776225833%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e225775225830%_)))
                                        (_%$%tl225777225835%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e225775225830%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl225777225835%_))
                                        (let ((_%$%e225778225838%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl225777225835%_))))
                                          (let ((_%$%hd225779225841%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e225778225838%_)))
                                                (_%$%tl225780225843%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e225778225838%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl225780225843%_))
                                                (_%$%loop225767225814%_
                                                 _%$%lp-tl225770225827%_
                                                 (cons _%$%hd225779225841%_
                                                       _%$%expr225771225819%_)
                                                 (cons _%$%hd225776225833%_
                                                       _%$%bind225772225820%_))
                                                (_%$%g225753225788%_
                                                 _%$%g225754225791%_))))
                                        (_%$%g225753225788%_
                                         _%$%g225754225791%_))))
                                (_%$%g225753225788%_ _%$%g225754225791%_))))
                        (let ((_%$%expr225773225846%_
                               (reverse _%$%expr225771225819%_))
                              (_%$%bind225774225847%_
                               (reverse _%$%bind225772225820%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl225763225806%_))
                              (let ((_%$%e225781225849%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl225763225806%_))))
                                (let ((_%$%hd225782225852%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e225781225849%_)))
                                      (_%$%tl225783225854%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e225781225849%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl225783225854%_))
                                      (let ((_%$e225890%_
                                             (let ((__tmp226814
                                                    (lambda (_%$%g225878225880%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self225750%_
                                                         _%$%g225878225880%_))))
                                                   (__tmp226812
                                                    (let ((__tmp226813
                                                           (lambda (_%$%g225882225885%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g225883225887%_)
                     (cons _%$%g225882225885%_ _%$%g225883225887%_))))
              (declare (not safe))
              (foldr__0 __tmp226813 '() _%$%expr225773225846%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (ormap__0
                                                __tmp226814
                                                __tmp226812))))
                                        (if _%$e225890%_
                                            _%$e225890%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self225750%_
                                               _%$%hd225782225852%_))))
                                      (_%$%g225753225788%_
                                       _%$%g225754225791%_))))
                              (_%$%g225753225788%_ _%$%g225754225791%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop225767225814%_
                                                   _%$%target225764225809%_
                                                   '()
                                                   '()))
                                                (_%$%g225753225788%_
                                                 _%$%g225754225791%_)))))
                                      (_%$%g225753225788%_
                                       _%$%g225754225791%_))))
                              (_%$%g225753225788%_ _%$%g225754225791%_))))
                      (_%$%g225753225788%_ _%$%g225754225791%_)))))
          (_%$%g225752225893%_ _%stx225751%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self225694%_ _%stx225695%_)
        (let* ((_%$%g225697225710%_
                (lambda (_%$%g225698225707%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g225698225707%_))))
               (_%$%g225696225747%_
                (lambda (_%$%g225698225713%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g225698225713%_))
                      (let ((_%$%e225700225715%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g225698225713%_))))
                        (let ((_%$%hd225701225718%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e225700225715%_)))
                              (_%$%tl225702225720%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e225700225715%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl225702225720%_))
                              (let ((_%$%e225703225723%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl225702225720%_))))
                                (let ((_%$%hd225704225726%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e225703225723%_)))
                                      (_%$%tl225705225728%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e225703225723%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl225705225728%_))
                                      (let ((__tmp226816
                                             (lambda (_%$%g225742225744%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%$%hd225704225726%_
                                                  _%$%g225742225744%_))))
                                            (__tmp226815
                                             (let ()
                                               (declare (not safe))
                                               (slot-ref__0
                                                _%self225694%_
                                                'ids))))
                                        (declare (not safe))
                                        (__find __tmp226816 __tmp226815))
                                      (_%$%g225697225710%_
                                       _%$%g225698225713%_))))
                              (_%$%g225697225710%_ _%$%g225698225713%_))))
                      (_%$%g225697225710%_ _%$%g225698225713%_)))))
          (_%$%g225696225747%_ _%stx225695%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self225619%_ _%stx225620%_)
        (let* ((_%$%g225622225639%_
                (lambda (_%$%g225623225636%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g225623225636%_))))
               (_%$%g225621225691%_
                (lambda (_%$%g225623225642%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g225623225642%_))
                      (let ((_%$%e225626225644%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g225623225642%_))))
                        (let ((_%$%hd225627225647%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e225626225644%_)))
                              (_%$%tl225628225649%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e225626225644%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl225628225649%_))
                              (let ((_%$%e225629225652%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl225628225649%_))))
                                (let ((_%$%hd225630225655%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e225629225652%_)))
                                      (_%$%tl225631225657%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e225629225652%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl225631225657%_))
                                      (let ((_%$%e225632225660%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl225631225657%_))))
                                        (let ((_%$%hd225633225663%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e225632225660%_)))
                                              (_%$%tl225634225665%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e225632225660%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl225634225665%_))
                                              (let ((_%$e225688%_
                                                     (let ((__tmp226818
                                                            (lambda (_%$%g225683225685%_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#free-identifier=?
                         _%$%hd225630225655%_
                         _%$%g225683225685%_))))
                   (__tmp226817
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self225619%_ 'ids))))
               (declare (not safe))
               (__find __tmp226818 __tmp226817))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if _%$e225688%_
                                                    _%$e225688%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self225619%_
                                                       _%$%hd225633225663%_))))
                                              (_%$%g225622225639%_
                                               _%$%g225623225642%_))))
                                      (_%$%g225622225639%_
                                       _%$%g225623225642%_))))
                              (_%$%g225622225639%_ _%$%g225623225642%_))))
                      (_%$%g225622225639%_ _%$%g225623225642%_)))))
          (_%$%g225621225691%_ _%stx225620%_))))))
