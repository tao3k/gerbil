(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1789371535)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp226672 (list gxc#::void::t))
            (__tmp226671 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp226672
         '()
         __tmp226671
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args226656%_
        (apply make-instance gxc#::collect-mutators::t _%$args226656%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp226673
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
        (__make-atomic-promise __tmp226673)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx226648%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self226651%_
                (let ((__obj226659
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj226659))
               (__tmp226674
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self226651%_ _%stx226648%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp226674
           gxc#current-compile-method
           _%self226651%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp226676 (list gxc#::basic-xform-expression::t))
            (__tmp226675 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp226676
         '(id new-id)
         __tmp226675
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args226645%_
        (apply make-instance gxc#::expression-subst::t _%$args226645%_)))
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
      (let ((__tmp226677
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
        (__make-atomic-promise __tmp226677)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords226617%_
               _%$%id226613226618%_
               _%$%new-id226614226619%_
               _%stx226620%_)
        (let* ((_%id226623%_
                (if (eq? _%$%id226613226618%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%$%id226613226618%_))
               (_%new-id226625%_
                (if (eq? _%$%new-id226614226619%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%$%new-id226614226619%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self226627%_
                  (let ((__obj226661
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj226661
                       _%id226623%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj226661
                       _%new-id226625%_
                       '2
                       '#f
                       '#f))
                    __obj226661))
                 (__tmp226678
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self226627%_ _%stx226620%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp226678
             gxc#current-compile-method
             _%self226627%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords226634%_ . _%args226635%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords226634%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords226634%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords226634%_
                  'new-id:
                  absent-value))
               _%args226635%_)))
    (define gxc#apply-expression-subst
      (lambda _%$%args226615226641%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%$%args226615226641%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp226680 (list gxc#::basic-xform-expression::t))
            (__tmp226679 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp226680
         '(subst)
         __tmp226679
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args226609%_
        (apply make-instance gxc#::expression-subst*::t _%$args226609%_)))
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
      (let ((__tmp226681
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
        (__make-atomic-promise __tmp226681)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords226584%_ _%$%subst226581226585%_ _%stx226586%_)
        (let ((_%subst226589%_
               (if (eq? _%$%subst226581226585%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%$%subst226581226585%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self226591%_
                  (let ((__obj226663
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj226663
                       _%subst226589%_
                       '1
                       '#f
                       '#f))
                    __obj226663))
                 (__tmp226682
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self226591%_ _%stx226586%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp226682
             gxc#current-compile-method
             _%self226591%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords226598%_ . _%args226599%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords226598%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords226598%_
                  'subst:
                  absent-value))
               _%args226599%_)))
    (define gxc#apply-expression-subst*
      (lambda _%$%args226582226605%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%$%args226582226605%_)))
    (define gxc#::inline-subst::t
      (let ((__tmp226684 (list gxc#::basic-xform-expression::t))
            (__tmp226683 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::inline-subst::t
         '::inline-subst
         __tmp226684
         '(subst)
         __tmp226683
         '#f)))
    (define gxc#::inline-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::inline-subst::t)))
    (define gxc#make-::inline-subst
      (lambda _%$args226577%_
        (apply make-instance gxc#::inline-subst::t _%$args226577%_)))
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
      (let ((__tmp226685
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
        (__make-atomic-promise __tmp226685)))
    (define gxc#apply-inline-subst__%
      (lambda (_%@@keywords226552%_ _%$%subst226549226553%_ _%stx226554%_)
        (let ((_%subst226557%_
               (if (eq? _%$%subst226549226553%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%$%subst226549226553%_)))
          (force gxc#::inline-subst-bind-methods!)
          (let* ((_%self226559%_
                  (let ((__obj226665
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::inline-subst::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj226665
                       _%subst226557%_
                       '1
                       '#f
                       '#f))
                    __obj226665))
                 (__tmp226686
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self226559%_ _%stx226554%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp226686
             gxc#current-compile-method
             _%self226559%_)))))
    (define gxc#apply-inline-subst__@
      (lambda (_%@@keywords226566%_ . _%args226567%_)
        (apply gxc#apply-inline-subst__%
               _%@@keywords226566%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords226566%_
                  'subst:
                  absent-value))
               _%args226567%_)))
    (define gxc#apply-inline-subst
      (lambda _%$%args226550226573%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-inline-subst__@
               _%$%args226550226573%_)))
    (define gxc#::find-expression::t
      (let ((__tmp226687 (list gxc#::false-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp226687
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args226545%_
        (apply make-instance gxc#::find-expression::t _%$args226545%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp226688
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
        (__make-atomic-promise __tmp226688)))
    (define gxc#::find-var-refs::t
      (let ((__tmp226690 (list gxc#::find-expression::t))
            (__tmp226689 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp226690
         '(ids)
         __tmp226689
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args226541%_
        (apply make-instance gxc#::find-var-refs::t _%$args226541%_)))
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
      (let ((__tmp226691
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
        (__make-atomic-promise __tmp226691)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords226516%_ _%$%ids226513226517%_ _%stx226518%_)
        (let ((_%ids226521%_
               (if (eq? _%$%ids226513226517%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%$%ids226513226517%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self226523%_
                  (let ((__obj226668
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj226668
                       _%ids226521%_
                       '1
                       '#f
                       '#f))
                    __obj226668))
                 (__tmp226692
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self226523%_ _%stx226518%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp226692
             gxc#current-compile-method
             _%self226523%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords226530%_ . _%args226531%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords226530%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords226530%_ 'ids: absent-value))
               _%args226531%_)))
    (define gxc#apply-find-var-refs
      (lambda _%$%args226514226537%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%$%args226514226537%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp226694 (list gxc#::collect-expression-refs::t))
            (__tmp226693 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp226694
         '()
         __tmp226693
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args226509%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args226509%_)))
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
      (let ((__tmp226695
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
        (__make-atomic-promise __tmp226695)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords226484%_ _%$%table226481226485%_ _%stx226486%_)
        (let ((_%table226489%_
               (if (eq? _%$%table226481226485%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%$%table226481226485%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self226491%_
                  (let ((__obj226670
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj226670
                       _%table226489%_
                       '1
                       '#f
                       '#f))
                    __obj226670))
                 (__tmp226696
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self226491%_ _%stx226486%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp226696
             gxc#current-compile-method
             _%self226491%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords226498%_ . _%args226499%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords226498%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords226498%_
                  'table:
                  absent-value))
               _%args226499%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%$%args226482226505%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%$%args226482226505%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self226410%_ _%stx226411%_)
        (let* ((_%$%g226413226430%_
                (lambda (_%$%g226414226427%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g226414226427%_))))
               (_%$%g226412226477%_
                (lambda (_%$%g226414226433%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g226414226433%_))
                      (let ((_%$%e226417226435%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g226414226433%_))))
                        (let ((_%$%hd226418226438%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e226417226435%_)))
                              (_%$%tl226419226440%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e226417226435%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl226419226440%_))
                              (let ((_%$%e226420226443%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl226419226440%_))))
                                (let ((_%$%hd226421226446%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e226420226443%_)))
                                      (_%$%tl226422226448%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e226420226443%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl226422226448%_))
                                      (let ((_%$%e226423226451%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl226422226448%_))))
                                        (let ((_%$%hd226424226454%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e226423226451%_)))
                                              (_%$%tl226425226456%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e226423226451%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl226425226456%_))
                                              (let ((_%sym226475%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#identifier-symbol
                                                        _%$%hd226421226446%_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"collect mutator "
                                                   _%sym226475%_))
                                                (let ((__tmp226697
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#current-compile-mutators))))
                                                  (declare (not safe))
                                                  (hash-put!
                                                   __tmp226697
                                                   _%sym226475%_
                                                   '#t))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self226410%_
                                                   _%$%hd226424226454%_)))
                                              (_%$%g226413226430%_
                                               _%$%g226414226433%_))))
                                      (_%$%g226413226430%_
                                       _%$%g226414226433%_))))
                              (_%$%g226413226430%_ _%$%g226414226433%_))))
                      (_%$%g226413226430%_ _%$%g226414226433%_)))))
          (_%$%g226412226477%_ _%stx226411%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self226358%_ _%stx226359%_)
        (let* ((_%$%g226361226374%_
                (lambda (_%$%g226362226371%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g226362226371%_))))
               (_%$%g226360226407%_
                (lambda (_%$%g226362226377%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g226362226377%_))
                      (let ((_%$%e226364226379%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g226362226377%_))))
                        (let ((_%$%hd226365226382%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e226364226379%_)))
                              (_%$%tl226366226384%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e226364226379%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl226366226384%_))
                              (let ((_%$%e226367226387%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl226366226384%_))))
                                (let ((_%$%hd226368226390%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e226367226387%_)))
                                      (_%$%tl226369226392%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e226367226387%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl226369226392%_))
                                      (if (let ((__tmp226698
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self226358%_
                                                    'id))))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             _%$%hd226368226390%_
                                             __tmp226698))
                                          (let ((__tmp226699
                                                 (cons '%#ref
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (slot-ref__0 _%self226358%_ 'new-id))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp226699
                                             _%stx226359%_))
                                          _%stx226359%_)
                                      (_%$%g226361226374%_
                                       _%$%g226362226377%_))))
                              (_%$%g226361226374%_ _%$%g226362226377%_))))
                      (_%$%g226361226374%_ _%$%g226362226377%_)))))
          (_%$%g226360226407%_ _%stx226359%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self226298%_ _%stx226299%_)
        (let* ((_%$%g226301226314%_
                (lambda (_%$%g226302226311%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g226302226311%_))))
               (_%$%g226300226355%_
                (lambda (_%$%g226302226317%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g226302226317%_))
                      (let ((_%$%e226304226319%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g226302226317%_))))
                        (let ((_%$%hd226305226322%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e226304226319%_)))
                              (_%$%tl226306226324%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e226304226319%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl226306226324%_))
                              (let ((_%$%e226307226327%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl226306226324%_))))
                                (let ((_%$%hd226308226330%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e226307226327%_)))
                                      (_%$%tl226309226332%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e226307226327%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl226309226332%_))
                                      (let ((_%$e226349%_
                                             (let ((__tmp226701
                                                    (lambda (_%sub226347%_)
                                                      (let ((__tmp226702
                                                             (car _%sub226347%_)))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         _%$%hd226308226330%_
                                                         __tmp226702))))
                                                   (__tmp226700
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self226298%_
                                                       'subst))))
                                               (declare (not safe))
                                               (__find __tmp226701
                                                       __tmp226700))))
                                        (if _%$e226349%_
                                            (let ((__tmp226703
                                                   (cons '%#ref
                                                         (cons (cdr _%$e226349%_)
                                                               '()))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp226703
                                               _%stx226299%_))
                                            _%stx226299%_))
                                      (_%$%g226301226314%_
                                       _%$%g226302226317%_))))
                              (_%$%g226301226314%_ _%$%g226302226317%_))))
                      (_%$%g226301226314%_ _%$%g226302226317%_)))))
          (_%$%g226300226355%_ _%stx226299%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self226227%_ _%stx226228%_)
        (let* ((_%$%g226230226247%_
                (lambda (_%$%g226231226244%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g226231226244%_))))
               (_%$%g226229226295%_
                (lambda (_%$%g226231226250%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g226231226250%_))
                      (let ((_%$%e226234226252%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g226231226250%_))))
                        (let ((_%$%hd226235226255%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e226234226252%_)))
                              (_%$%tl226236226257%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e226234226252%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl226236226257%_))
                              (let ((_%$%e226237226260%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl226236226257%_))))
                                (let ((_%$%hd226238226263%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e226237226260%_)))
                                      (_%$%tl226239226265%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e226237226260%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl226239226265%_))
                                      (let ((_%$%e226240226268%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl226239226265%_))))
                                        (let ((_%$%hd226241226271%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e226240226268%_)))
                                              (_%$%tl226242226273%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e226240226268%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl226242226273%_))
                                              (let ((_%new-expr226292%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self226227%_
                                                        _%$%hd226241226271%_)))
                                                    (_%new-xid226293%_
                                                     (if (let ((__tmp226704
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self226227%_ 'id))))
                   (declare (not safe))
                   (gx#free-identifier=? _%$%hd226238226263%_ __tmp226704))
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _%self226227%_ 'new-id))
                 _%$%hd226238226263%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((__tmp226705
                                                       (cons '%#set!
                                                             (cons _%new-xid226293%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%new-expr226292%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp226705
                                                   _%stx226228%_)))
                                              (_%$%g226230226247%_
                                               _%$%g226231226250%_))))
                                      (_%$%g226230226247%_
                                       _%$%g226231226250%_))))
                              (_%$%g226230226247%_ _%$%g226231226250%_))))
                      (_%$%g226230226247%_ _%$%g226231226250%_)))))
          (_%$%g226229226295%_ _%stx226228%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self226150%_ _%stx226151%_)
        (let* ((_%$%g226153226170%_
                (lambda (_%$%g226154226167%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g226154226167%_))))
               (_%$%g226152226224%_
                (lambda (_%$%g226154226173%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g226154226173%_))
                      (let ((_%$%e226157226175%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g226154226173%_))))
                        (let ((_%$%hd226158226178%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e226157226175%_)))
                              (_%$%tl226159226180%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e226157226175%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl226159226180%_))
                              (let ((_%$%e226160226183%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl226159226180%_))))
                                (let ((_%$%hd226161226186%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e226160226183%_)))
                                      (_%$%tl226162226188%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e226160226183%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl226162226188%_))
                                      (let ((_%$%e226163226191%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl226162226188%_))))
                                        (let ((_%$%hd226164226194%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e226163226191%_)))
                                              (_%$%tl226165226196%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e226163226191%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl226165226196%_))
                                              (let ((_%new-expr226221%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self226150%_
                                                        _%$%hd226164226194%_)))
                                                    (_%new-xid226222%_
                                                     (let ((_%$e226217%_
                                                            (let ((__tmp226707
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%sub226215%_)
                             (let ((__tmp226708 (car _%sub226215%_)))
                               (declare (not safe))
                               (gx#free-identifier=?
                                _%$%hd226161226186%_
                                __tmp226708))))
                          (__tmp226706
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self226150%_ 'subst))))
                      (declare (not safe))
                      (__find __tmp226707 __tmp226706))))
               (if _%$e226217%_ (cdr _%$e226217%_) _%$%hd226161226186%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((__tmp226709
                                                       (cons '%#set!
                                                             (cons _%new-xid226222%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%new-expr226221%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp226709
                                                   _%stx226151%_)))
                                              (_%$%g226153226170%_
                                               _%$%g226154226173%_))))
                                      (_%$%g226153226170%_
                                       _%$%g226154226173%_))))
                              (_%$%g226153226170%_ _%$%g226154226173%_))))
                      (_%$%g226153226170%_ _%$%g226154226173%_)))))
          (_%$%g226152226224%_ _%stx226151%_))))
    (define gxc#inline-subst-ref%
      (lambda (_%self226090%_ _%stx226091%_)
        (let* ((_%$%g226093226106%_
                (lambda (_%$%g226094226103%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g226094226103%_))))
               (_%$%g226092226147%_
                (lambda (_%$%g226094226109%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g226094226109%_))
                      (let ((_%$%e226096226111%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g226094226109%_))))
                        (let ((_%$%hd226097226114%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e226096226111%_)))
                              (_%$%tl226098226116%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e226096226111%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl226098226116%_))
                              (let ((_%$%e226099226119%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl226098226116%_))))
                                (let ((_%$%hd226100226122%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e226099226119%_)))
                                      (_%$%tl226101226124%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e226099226119%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl226101226124%_))
                                      (let ((_%$e226141%_
                                             (let ((__tmp226711
                                                    (lambda (_%sub226139%_)
                                                      (let ((__tmp226712
                                                             (car _%sub226139%_)))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         _%$%hd226100226122%_
                                                         __tmp226712))))
                                                   (__tmp226710
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self226090%_
                                                       'subst))))
                                               (declare (not safe))
                                               (__find __tmp226711
                                                       __tmp226710))))
                                        (if _%$e226141%_
                                            (let ((__tmp226713
                                                   (cdr _%$e226141%_)))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp226713
                                               _%stx226091%_))
                                            _%stx226091%_))
                                      (_%$%g226093226106%_
                                       _%$%g226094226109%_))))
                              (_%$%g226093226106%_ _%$%g226094226109%_))))
                      (_%$%g226093226106%_ _%$%g226094226109%_)))))
          (_%$%g226092226147%_ _%stx226091%_))))
    (define gxc#inline-subst-setq%
      (lambda (_%self226020%_ _%stx226021%_)
        (let* ((_%$%g226023226040%_
                (lambda (_%$%g226024226037%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g226024226037%_))))
               (_%$%g226022226087%_
                (lambda (_%$%g226024226043%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g226024226043%_))
                      (let ((_%$%e226027226045%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g226024226043%_))))
                        (let ((_%$%hd226028226048%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e226027226045%_)))
                              (_%$%tl226029226050%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e226027226045%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl226029226050%_))
                              (let ((_%$%e226030226053%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl226029226050%_))))
                                (let ((_%$%hd226031226056%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e226030226053%_)))
                                      (_%$%tl226032226058%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e226030226053%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl226032226058%_))
                                      (let ((_%$%e226033226061%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl226032226058%_))))
                                        (let ((_%$%hd226034226064%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e226033226061%_)))
                                              (_%$%tl226035226066%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e226033226061%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl226035226066%_))
                                              (if (let ((__tmp226715
                                                         (lambda (_%sub226085%_)
                                                           (let ((__tmp226716
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (car _%sub226085%_)))
                     (declare (not safe))
                     (gx#free-identifier=? _%$%hd226031226056%_ __tmp226716))))
                (__tmp226714
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _%self226020%_ 'subst))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__find __tmp226715
                                                            __tmp226714))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#raise-compile-error
                                                     '"mutating inline substitution"
                                                     _%stx226021%_
                                                     _%$%hd226031226056%_))
                                                  (let ((__tmp226717
                                                         (cons '%#set!
                                                               (cons _%$%hd226031226056%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self226020%_
                                      _%$%hd226034226064%_))
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp226717
                                                     _%stx226021%_)))
                                              (_%$%g226023226040%_
                                               _%$%g226024226043%_))))
                                      (_%$%g226023226040%_
                                       _%$%g226024226043%_))))
                              (_%$%g226023226040%_ _%$%g226024226043%_))))
                      (_%$%g226023226040%_ _%$%g226024226043%_)))))
          (_%$%g226022226087%_ _%stx226021%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self225966%_ _%stx225967%_)
        (let* ((_%$%g225969225982%_
                (lambda (_%$%g225970225979%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g225970225979%_))))
               (_%$%g225968226017%_
                (lambda (_%$%g225970225985%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g225970225985%_))
                      (let ((_%$%e225972225987%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g225970225985%_))))
                        (let ((_%$%hd225973225990%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e225972225987%_)))
                              (_%$%tl225974225992%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e225972225987%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl225974225992%_))
                              (let ((_%$%e225975225995%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl225974225992%_))))
                                (let ((_%$%hd225976225998%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e225975225995%_)))
                                      (_%$%tl225977226000%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e225975225995%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl225977226000%_))
                                      (let* ((_%eid226015%_
                                              (let ()
                                                (declare (not safe))
                                                (gxc#identifier-symbol
                                                 _%$%hd225976225998%_)))
                                             (__tmp226718
                                              (let ()
                                                (declare (not safe))
                                                (slot-ref__0
                                                 _%self225966%_
                                                 'table))))
                                        (declare (not safe))
                                        (hash-update!__%
                                         __tmp226718
                                         _%eid226015%_
                                         1+
                                         '0))
                                      (_%$%g225969225982%_
                                       _%$%g225970225985%_))))
                              (_%$%g225969225982%_ _%$%g225970225985%_))))
                      (_%$%g225969225982%_ _%$%g225970225985%_)))))
          (_%$%g225968226017%_ _%stx225967%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self225896%_ _%stx225897%_)
        (let* ((_%$%g225899225916%_
                (lambda (_%$%g225900225913%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g225900225913%_))))
               (_%$%g225898225963%_
                (lambda (_%$%g225900225919%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g225900225919%_))
                      (let ((_%$%e225903225921%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g225900225919%_))))
                        (let ((_%$%hd225904225924%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e225903225921%_)))
                              (_%$%tl225905225926%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e225903225921%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl225905225926%_))
                              (let ((_%$%e225906225929%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl225905225926%_))))
                                (let ((_%$%hd225907225932%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e225906225929%_)))
                                      (_%$%tl225908225934%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e225906225929%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl225908225934%_))
                                      (let ((_%$%e225909225937%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl225908225934%_))))
                                        (let ((_%$%hd225910225940%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e225909225937%_)))
                                              (_%$%tl225911225942%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e225909225937%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl225911225942%_))
                                              (let ((_%eid225961%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#identifier-symbol
                                                        _%$%hd225907225932%_))))
                                                (let ((__tmp226719
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self225896%_
                                                          'table))))
                                                  (declare (not safe))
                                                  (hash-update!__%
                                                   __tmp226719
                                                   _%eid225961%_
                                                   1+
                                                   '0))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self225896%_
                                                   _%$%hd225910225940%_)))
                                              (_%$%g225899225916%_
                                               _%$%g225900225919%_))))
                                      (_%$%g225899225916%_
                                       _%$%g225900225919%_))))
                              (_%$%g225899225916%_ _%$%g225900225919%_))))
                      (_%$%g225899225916%_ _%$%g225900225919%_)))))
          (_%$%g225898225963%_ _%stx225897%_))))
    (define gxc#find-body%
      (lambda (_%self225811%_ _%stx225812%_)
        (let* ((_%$%g225814225833%_
                (lambda (_%$%g225815225830%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g225815225830%_))))
               (_%$%g225813225893%_
                (lambda (_%$%g225815225836%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g225815225836%_))
                      (let ((_%$%e225817225838%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g225815225836%_))))
                        (let ((_%$%hd225818225841%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e225817225838%_)))
                              (_%$%tl225819225843%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e225817225838%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl225819225843%_))
                              (let ((_g226720_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl225819225843%_
                                        '0))))
                                (begin
                                  (let ((_g226721_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g226720_)
                                               (##values-length _g226720_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g226721_ 2)))
                                        (error "Context expects 2 values"
                                               _g226721_)))
                                  (let ((_%$%target225820225846%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g226720_ 0)))
                                        (_%$%tl225822225848%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g226720_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl225822225848%_))
                                        (letrec ((_%$%loop225823225851%_
                                                  (lambda (_%$%hd225821225854%_
                                                           _%$%expr225827225856%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd225821225854%_))
                                                        (let ((_%$%e225824225858%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd225821225854%_))))
                  (let ((_%$%lp-hd225825225861%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e225824225858%_)))
                        (_%$%lp-tl225826225863%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e225824225858%_))))
                    (_%$%loop225823225851%_
                     _%$%lp-tl225826225863%_
                     (cons _%$%lp-hd225825225861%_ _%$%expr225827225856%_))))
                (let ((_%$%expr225828225866%_
                       (reverse _%$%expr225827225856%_)))
                  (let ((__tmp226724
                         (lambda (_%$%g225881225883%_)
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self225811%_
                              _%$%g225881225883%_))))
                        (__tmp226722
                         (let ((__tmp226723
                                (lambda (_%$%g225885225888%_
                                         _%$%g225886225890%_)
                                  (cons _%$%g225885225888%_
                                        _%$%g225886225890%_))))
                           (declare (not safe))
                           (foldr__0 __tmp226723 '() _%$%expr225828225866%_))))
                    (declare (not safe))
                    (ormap__0 __tmp226724 __tmp226722)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop225823225851%_
                                           _%$%target225820225846%_
                                           '()))
                                        (_%$%g225814225833%_
                                         _%$%g225815225836%_)))))
                              (_%$%g225814225833%_ _%$%g225815225836%_))))
                      (_%$%g225814225833%_ _%$%g225815225836%_)))))
          (_%$%g225813225893%_ _%stx225812%_))))
    (define gxc#find-let-values%
      (lambda (_%self225665%_ _%stx225666%_)
        (let* ((_%$%g225668225703%_
                (lambda (_%$%g225669225700%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g225669225700%_))))
               (_%$%g225667225808%_
                (lambda (_%$%g225669225706%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g225669225706%_))
                      (let ((_%$%e225673225708%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g225669225706%_))))
                        (let ((_%$%hd225674225711%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e225673225708%_)))
                              (_%$%tl225675225713%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e225673225708%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl225675225713%_))
                              (let ((_%$%e225676225716%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl225675225713%_))))
                                (let ((_%$%hd225677225719%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e225676225716%_)))
                                      (_%$%tl225678225721%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e225676225716%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd225677225719%_))
                                      (let ((_g226725_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%hd225677225719%_
                                                '0))))
                                        (begin
                                          (let ((_g226726_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g226725_)
                                                       (##values-length
                                                        _g226725_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g226726_ 2)))
                                                (error "Context expects 2 values"
                                                       _g226726_)))
                                          (let ((_%$%target225679225724%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g226725_ 0)))
                                                (_%$%tl225681225726%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g226725_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl225681225726%_))
                                                (letrec ((_%$%loop225682225729%_
                                                          (lambda (_%$%hd225680225732%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr225686225734%_
                           _%$%bind225687225735%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd225680225732%_))
                        (let ((_%$%e225683225737%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd225680225732%_))))
                          (let ((_%$%lp-hd225684225740%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e225683225737%_)))
                                (_%$%lp-tl225685225742%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e225683225737%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd225684225740%_))
                                (let ((_%$%e225690225745%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%lp-hd225684225740%_))))
                                  (let ((_%$%hd225691225748%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e225690225745%_)))
                                        (_%$%tl225692225750%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e225690225745%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl225692225750%_))
                                        (let ((_%$%e225693225753%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl225692225750%_))))
                                          (let ((_%$%hd225694225756%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e225693225753%_)))
                                                (_%$%tl225695225758%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e225693225753%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl225695225758%_))
                                                (_%$%loop225682225729%_
                                                 _%$%lp-tl225685225742%_
                                                 (cons _%$%hd225694225756%_
                                                       _%$%expr225686225734%_)
                                                 (cons _%$%hd225691225748%_
                                                       _%$%bind225687225735%_))
                                                (_%$%g225668225703%_
                                                 _%$%g225669225706%_))))
                                        (_%$%g225668225703%_
                                         _%$%g225669225706%_))))
                                (_%$%g225668225703%_ _%$%g225669225706%_))))
                        (let ((_%$%expr225688225761%_
                               (reverse _%$%expr225686225734%_))
                              (_%$%bind225689225762%_
                               (reverse _%$%bind225687225735%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl225678225721%_))
                              (let ((_%$%e225696225764%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl225678225721%_))))
                                (let ((_%$%hd225697225767%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e225696225764%_)))
                                      (_%$%tl225698225769%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e225696225764%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl225698225769%_))
                                      (let ((_%$e225805%_
                                             (let ((__tmp226729
                                                    (lambda (_%$%g225793225795%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self225665%_
                                                         _%$%g225793225795%_))))
                                                   (__tmp226727
                                                    (let ((__tmp226728
                                                           (lambda (_%$%g225797225800%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g225798225802%_)
                     (cons _%$%g225797225800%_ _%$%g225798225802%_))))
              (declare (not safe))
              (foldr__0 __tmp226728 '() _%$%expr225688225761%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (ormap__0
                                                __tmp226729
                                                __tmp226727))))
                                        (if _%$e225805%_
                                            _%$e225805%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self225665%_
                                               _%$%hd225697225767%_))))
                                      (_%$%g225668225703%_
                                       _%$%g225669225706%_))))
                              (_%$%g225668225703%_ _%$%g225669225706%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop225682225729%_
                                                   _%$%target225679225724%_
                                                   '()
                                                   '()))
                                                (_%$%g225668225703%_
                                                 _%$%g225669225706%_)))))
                                      (_%$%g225668225703%_
                                       _%$%g225669225706%_))))
                              (_%$%g225668225703%_ _%$%g225669225706%_))))
                      (_%$%g225668225703%_ _%$%g225669225706%_)))))
          (_%$%g225667225808%_ _%stx225666%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self225609%_ _%stx225610%_)
        (let* ((_%$%g225612225625%_
                (lambda (_%$%g225613225622%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g225613225622%_))))
               (_%$%g225611225662%_
                (lambda (_%$%g225613225628%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g225613225628%_))
                      (let ((_%$%e225615225630%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g225613225628%_))))
                        (let ((_%$%hd225616225633%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e225615225630%_)))
                              (_%$%tl225617225635%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e225615225630%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl225617225635%_))
                              (let ((_%$%e225618225638%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl225617225635%_))))
                                (let ((_%$%hd225619225641%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e225618225638%_)))
                                      (_%$%tl225620225643%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e225618225638%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl225620225643%_))
                                      (let ((__tmp226731
                                             (lambda (_%$%g225657225659%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%$%hd225619225641%_
                                                  _%$%g225657225659%_))))
                                            (__tmp226730
                                             (let ()
                                               (declare (not safe))
                                               (slot-ref__0
                                                _%self225609%_
                                                'ids))))
                                        (declare (not safe))
                                        (__find __tmp226731 __tmp226730))
                                      (_%$%g225612225625%_
                                       _%$%g225613225628%_))))
                              (_%$%g225612225625%_ _%$%g225613225628%_))))
                      (_%$%g225612225625%_ _%$%g225613225628%_)))))
          (_%$%g225611225662%_ _%stx225610%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self225534%_ _%stx225535%_)
        (let* ((_%$%g225537225554%_
                (lambda (_%$%g225538225551%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g225538225551%_))))
               (_%$%g225536225606%_
                (lambda (_%$%g225538225557%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g225538225557%_))
                      (let ((_%$%e225541225559%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g225538225557%_))))
                        (let ((_%$%hd225542225562%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e225541225559%_)))
                              (_%$%tl225543225564%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e225541225559%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl225543225564%_))
                              (let ((_%$%e225544225567%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl225543225564%_))))
                                (let ((_%$%hd225545225570%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e225544225567%_)))
                                      (_%$%tl225546225572%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e225544225567%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl225546225572%_))
                                      (let ((_%$%e225547225575%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl225546225572%_))))
                                        (let ((_%$%hd225548225578%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e225547225575%_)))
                                              (_%$%tl225549225580%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e225547225575%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl225549225580%_))
                                              (let ((_%$e225603%_
                                                     (let ((__tmp226733
                                                            (lambda (_%$%g225598225600%_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#free-identifier=?
                         _%$%hd225545225570%_
                         _%$%g225598225600%_))))
                   (__tmp226732
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self225534%_ 'ids))))
               (declare (not safe))
               (__find __tmp226733 __tmp226732))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if _%$e225603%_
                                                    _%$e225603%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self225534%_
                                                       _%$%hd225548225578%_))))
                                              (_%$%g225537225554%_
                                               _%$%g225538225557%_))))
                                      (_%$%g225537225554%_
                                       _%$%g225538225557%_))))
                              (_%$%g225537225554%_ _%$%g225538225557%_))))
                      (_%$%g225537225554%_ _%$%g225538225557%_)))))
          (_%$%g225536225606%_ _%stx225535%_))))))
