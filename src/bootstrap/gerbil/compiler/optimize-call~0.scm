(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1789839234)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp270679 (list gxc#::basic-xform::t))
            (__tmp270678 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp270679
         '()
         __tmp270678
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args269744%_
        (apply make-instance gxc#::optimize-call::t _%$args269744%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp270680
             (lambda ()
               (force gxc#::basic-xform-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::optimize-call::t
                  '%#call
                  gxc#optimize-call%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::optimize-call::t
                  '%#if
                  gxc#optimize-if%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::optimize-call::t)))))
        (declare (not safe))
        (__make-atomic-promise __tmp270680)))
    (define gxc#apply-optimize-call
      (lambda (_%stx269736%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self269739%_
                (let ((__obj270670
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj270670))
               (__tmp270681
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self269739%_ _%stx269736%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp270681
           gxc#current-compile-method
           _%self269739%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp270683 (list gxc#::void::t))
            (__tmp270682 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp270683
         '()
         __tmp270682
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args269733%_
        (apply make-instance gxc#::check-return-type::t _%$args269733%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp270684
             (lambda ()
               (force gxc#::void-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#begin
                  gxc#apply-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#begin-syntax
                  gxc#apply-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#begin-annotation
                  gxc#apply-check-return-type-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#module
                  gxc#apply-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#define-values
                  gxc#apply-define-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#define-syntax
                  gxc#apply-define-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#lambda
                  gxc#apply-body-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#case-lambda
                  gxc#apply-body-case-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#let-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#letrec-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#letrec*-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#call
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#if
                  gxc#apply-path-type-if%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#set!
                  gxc#apply-body-setq%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::check-return-type::t)))))
        (declare (not safe))
        (__make-atomic-promise __tmp270684)))
    (define gxc#apply-check-return-type
      (lambda (_%stx269725%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self269728%_
                (let ((__obj270672
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj270672))
               (__tmp270685
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self269728%_ _%stx269725%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp270685
           gxc#current-compile-method
           _%self269728%_))))
    (define gxc#optimize-call%
      (lambda (_%self268861%_ _%stx268862%_)
        (let* ((_%__stx269885269886%_ _%stx268862%_)
               (_%$%g268866268948%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx269885269886%_)))))
          (let ((_%__kont269887269888%_
                 (lambda (_%$%g268868269512%_ _%$%g268869269513%_)
                   (let* ((_%rator-id269533%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%$%g268869269513%_)))
                          (_%rator-type269535%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id269533%_)))
                          (_%$e269538%_
                           (let ()
                             (declare (not safe))
                             (__hash-get
                              gxc#special-procedure-optimizers
                              _%rator-id269533%_))))
                     (if _%$e269538%_
                         (_%$e269538%_ _%self268861%_ _%stx268862%_)
                         (if (or (not _%rator-type269535%_)
                                 (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%rator-type269535%_
                                    'gxc#!nullable-type::t))
                                 (eq? (##structure-ref
                                       _%rator-type269535%_
                                       '1
                                       gxc#!type::t
                                       '#f)
                                      't))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self268861%_ _%stx268862%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%rator-type269535%_
                                    'gxc#!procedure::t))
                                 (let ()
                                   (let ((__tmp270686
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%rator-type269535%_
                                             '1
                                             '#f
                                             '#f))))
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"optimize-call "
                                      _%rator-id269533%_
                                      '" => "
                                      _%rator-type269535%_
                                      '" "
                                      __tmp270686))
                                   (let* ((_%optimized269558%_
                                           (let ((__method270673
                                                  (let ()
                                                    (declare (not safe))
                                                    (__method-ref
                                                     _%rator-type269535%_
                                                     'optimize-call))))
                                             (if __method270673
                                                 (let ((__tmp270687
                                                        (let ((__tmp270688
                                                               (lambda (_%$%g269550269553%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%$%g269551269555%_)
                         (cons _%$%g269550269553%_ _%$%g269551269555%_))))
                  (declare (not safe))
                  (foldr__0 __tmp270688 '() _%$%g268868269512%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__method270673
                                                    _%rator-type269535%_
                                                    _%self268861%_
                                                    _%stx268862%_
                                                    __tmp270687))
                                                 (begin
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Missing method"
                                                            _%rator-type269535%_
                                                            'optimize-call))
                                                   '#!void))))
                                          (_%__stx269833269834%_
                                           _%optimized269558%_)
                                          (_%$%g269561269590%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx269833269834%_)))))
                                     (let ((_%__kont269835269836%_
                                            (lambda (_%$%g269563269656%_
                                                     _%$%g269564269657%_)
                                              (let* ((_%optimized-rator-id269685%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#identifier-symbol
                                                         _%$%g269564269657%_)))
                                                     (_%rator-type269690%_
                                                      (let ((_%$e269687%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#optimizer-lookup-type
                        _%optimized-rator-id269685%_))))
                (if _%$e269687%_ _%$e269687%_ _%rator-type269535%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (or (let ()
                                                          (declare (not safe))
                                                          (class-instance?
                                                           gxc#!primitive::t
                                                           _%rator-type269690%_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##memq _%optimized-rator-id269685%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          gxc#checked-primitives))
                (and (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%rator-type269690%_
                        'gxc#!procedure::t))
                     (eq? (let ()
                            (declare (not safe))
                            (gxc#!procedure-origin _%rator-type269690%_))
                          (##structure-ref
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))
                           '1
                           gx#expander-context::t
                           '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%optimized269558%_
                                                    (let ((__tmp270689
                                                           (cons '%#call-unchecked
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f '%#ref))
                                     (cons _%$%g269564269657%_ '()))
                               (let ((__tmp270690
                                      (lambda (_%$%g269698269701%_
                                               _%$%g269699269703%_)
                                        (cons _%$%g269698269701%_
                                              _%$%g269699269703%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp270690
                                  '()
                                  _%$%g269563269656%_))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp270689 _%stx268862%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont269839269840%_
                                            (lambda () _%optimized269558%_)))
                                       (let ((_%__match269882269883%_
                                              (lambda (_%$%e269565269602%_
                                                       _%$%hd269566269605%_
                                                       _%$%tl269567269607%_
                                                       _%$%e269568269610%_
                                                       _%$%hd269569269613%_
                                                       _%$%tl269570269615%_
                                                       _%$%e269571269618%_
                                                       _%$%hd269572269621%_
                                                       _%$%tl269573269623%_
                                                       _%$%e269574269626%_
                                                       _%$%hd269575269629%_
                                                       _%$%tl269576269631%_
                                                       _%__splice269837269838%_
                                                       _%$%target269577269634%_
                                                       _%$%tl269579269636%_)
                                                (letrec ((_%$%loop269580269639%_
                                                          (lambda (_%$%hd269578269642%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%arg269584269644%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd269578269642%_))
                        (let ((_%$%e269581269646%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd269578269642%_))))
                          (let ((_%$%lp-tl269583269651%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e269581269646%_)))
                                (_%$%lp-hd269582269649%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e269581269646%_))))
                            (_%$%loop269580269639%_
                             _%$%lp-tl269583269651%_
                             (cons _%$%lp-hd269582269649%_
                                   _%$%arg269584269644%_))))
                        (let ((_%$%arg269585269654%_
                               (reverse _%$%arg269584269644%_)))
                          (_%__kont269835269836%_
                           _%$%arg269585269654%_
                           _%$%hd269575269629%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop269580269639%_
                                                   _%$%target269577269634%_
                                                   '())))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx269833269834%_))
                                             (let ((_%$%e269565269602%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx269833269834%_))))
                                               (let ((_%$%tl269567269607%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e269565269602%_)))
                                                     (_%$%hd269566269605%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e269565269602%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%$%hd269566269605%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#call
                                                            _%$%hd269566269605%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%tl269567269607%_))
                     (let ((_%$%e269568269610%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl269567269607%_))))
                       (let ((_%$%tl269570269615%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e269568269610%_)))
                             (_%$%hd269569269613%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e269568269610%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%hd269569269613%_))
                             (let ((_%$%e269571269618%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%hd269569269613%_))))
                               (let ((_%$%tl269573269623%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e269571269618%_)))
                                     (_%$%hd269572269621%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e269571269618%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#identifier? _%$%hd269572269621%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-eq?
                                            '%#ref
                                            _%$%hd269572269621%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%tl269573269623%_))
                                             (let ((_%$%e269574269626%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%tl269573269623%_))))
                                               (let ((_%$%tl269576269631%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e269574269626%_)))
                                                     (_%$%hd269575269629%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e269574269626%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%$%tl269576269631%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%$%tl269570269615%_))
                                                         (let ((_%__splice269837269838%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%$%tl269570269615%_
                           '0))))
                   (let ((_%$%tl269579269636%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice269837269838%_ '1)))
                         (_%$%target269577269634%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice269837269838%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl269579269636%_))
                         (_%__match269882269883%_
                          _%$%e269565269602%_
                          _%$%hd269566269605%_
                          _%$%tl269567269607%_
                          _%$%e269568269610%_
                          _%$%hd269569269613%_
                          _%$%tl269570269615%_
                          _%$%e269571269618%_
                          _%$%hd269572269621%_
                          _%$%tl269573269623%_
                          _%$%e269574269626%_
                          _%$%hd269575269629%_
                          _%$%tl269576269631%_
                          _%__splice269837269838%_
                          _%$%target269577269634%_
                          _%$%tl269579269636%_)
                         (_%__kont269839269840%_))))
                 (_%__kont269839269840%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont269839269840%_))))
                                             (_%__kont269839269840%_))
                                         (_%__kont269839269840%_))
                                     (_%__kont269839269840%_))))
                             (_%__kont269839269840%_))))
                     (_%__kont269839269840%_))
                 (_%__kont269839269840%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont269839269840%_))))
                                             (_%__kont269839269840%_))))))
                                 (if (and (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%rator-type269535%_
                                             'gxc#!class::t))
                                          (eq? (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%rator-type269535%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               'procedure))
                                     (let ((__tmp270691
                                            (cons '%#call-unchecked
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f '%#ref))
                      (cons _%$%g268869269513%_ '()))
                (map (lambda (_%$%g269709269711%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self268861%_
                          _%$%g269709269711%_)))
                     (let ((__tmp270692
                            (lambda (_%$%g269713269716%_ _%$%g269714269718%_)
                              (cons _%$%g269713269716%_ _%$%g269714269718%_))))
                       (declare (not safe))
                       (foldr__0 __tmp270692 '() _%$%g268868269512%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp270691
                                        _%stx268862%_))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"illegal application; not a procedure"
                                        _%stx268862%_
                                        _%rator-type269535%_)))))))))
                (_%__kont269891269892%_
                 (lambda (_%$%g268891269120%_
                          _%$%g268892269121%_
                          _%$%g268893269122%_)
                   (let _%loop269240%_ ((_%rest-arg269242%_
                                         (let ((__tmp270699
                                                (lambda (_%$%g269438269441%_
                                                         _%$%g269439269443%_)
                                                  (cons _%$%g269438269441%_
                                                        _%$%g269439269443%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp270699
                                            '()
                                            _%$%g268893269122%_)))
                                        (_%rest-rand269243%_
                                         (let ((__tmp270700
                                                (lambda (_%$%g269445269448%_
                                                         _%$%g269446269450%_)
                                                  (cons _%$%g269445269448%_
                                                        _%$%g269446269450%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp270700
                                            '()
                                            _%$%g268891269120%_)))
                                        (_%bind269244%_ '())
                                        (_%subst269245%_ '()))
                     (let* ((_%$%rest-arg269246269254%_ _%rest-arg269242%_)
                            (_%$%else269248269267%_
                             (lambda ()
                               (let* ((_%body269262%_
                                       (if (null? _%subst269245%_)
                                           _%$%g268892269121%_
                                           (let ((__tmp270693
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-inline-subst__%
                                                     '#f
                                                     _%subst269245%_
                                                     _%$%g268892269121%_))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp270693
                                              _%stx268862%_))))
                                      (_%expr269264%_
                                       (let ((__tmp270694
                                              (cons '%#let-values
                                                    (cons _%bind269244%_
                                                          (cons _%body269262%_
                                                                '())))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp270694
                                          _%stx268862%_))))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-refine-type-info _%expr269264%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self268861%_
                                    _%expr269264%_)))))
                            (_%$%K269250269427%_
                             (lambda (_%rest-arg269270%_ _%arg-id269271%_)
                               (let* ((_%$%rest-rand269272269280%_
                                       _%rest-rand269243%_)
                                      (_%$%else269274269302%_
                                       (lambda ()
                                         (let ((__tmp270697
                                                (let ((__tmp270698
                                                       (lambda (_%$%g269287269290%_
                                                                _%$%g269288269292%_)
                                                         (cons _%$%g269287269290%_
                                                               _%$%g269288269292%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp270698
                                                   '()
                                                   _%$%g268893269122%_)))
                                               (__tmp270695
                                                (let ((__tmp270696
                                                       (lambda (_%$%g269294269297%_
                                                                _%$%g269295269299%_)
                                                         (cons _%$%g269294269297%_
                                                               _%$%g269295269299%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp270696
                                                   '()
                                                   _%$%g268891269120%_))))
                                           (declare (not safe))
                                           (gxc#raise-compile-error
                                            '"inline lambda arity mismatch"
                                            _%stx268862%_
                                            __tmp270697
                                            __tmp270695))))
                                      (_%$%K269276269415%_
                                       (lambda (_%rest-rand269305%_
                                                _%rand269306%_)
                                         (let* ((_%__stx269787269788%_
                                                 _%rand269306%_)
                                                (_%$%g269310269330%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx269787269788%_)))))
                                           (let ((_%__kont269789269790%_
                                                  (lambda (_%$%g269312269401%_)
                                                    (_%loop269240%_
                                                     _%rest-arg269270%_
                                                     _%rest-rand269305%_
                                                     _%bind269244%_
                                                     (cons (cons _%arg-id269271%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%rand269306%_)
                   _%subst269245%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont269791269792%_
                                                  (lambda (_%$%g269319269358%_)
                                                    (_%loop269240%_
                                                     _%rest-arg269270%_
                                                     _%rest-rand269305%_
                                                     _%bind269244%_
                                                     (cons (cons _%arg-id269271%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%rand269306%_)
                   _%subst269245%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont269793269794%_
                                                  (lambda ()
                                                    (_%loop269240%_
                                                     _%rest-arg269270%_
                                                     _%rest-rand269305%_
                                                     (cons (cons (cons _%arg-id269271%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons _%rand269306%_ '()))
                   _%bind269244%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%subst269245%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx269787269788%_))
                                                 (let ((_%$%e269313269385%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx269787269788%_))))
                                                   (let ((_%$%tl269315269390%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e269313269385%_)))
                                                         (_%$%hd269314269388%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e269313269385%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%$%hd269314269388%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#quote _%$%hd269314269388%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%tl269315269390%_))
                         (let ((_%$%e269316269393%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%tl269315269390%_))))
                           (let ((_%$%tl269318269398%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e269316269393%_)))
                                 (_%$%hd269317269396%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e269316269393%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%$%tl269318269398%_))
                                 (_%__kont269789269790%_ _%$%hd269317269396%_)
                                 (_%__kont269793269794%_))))
                         (_%__kont269793269794%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#ref _%$%hd269314269388%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%tl269315269390%_))
                             (let ((_%$%e269323269350%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%tl269315269390%_))))
                               (let ((_%$%tl269325269355%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e269323269350%_)))
                                     (_%$%hd269324269353%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e269323269350%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%$%tl269325269355%_))
                                     (_%__kont269791269792%_
                                      _%$%hd269324269353%_)
                                     (_%__kont269793269794%_))))
                             (_%__kont269793269794%_))
                         (_%__kont269793269794%_)))
                 (_%__kont269793269794%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont269793269794%_)))))))
                                 (if (pair? _%$%rest-rand269272269280%_)
                                     (let ((_%$%hd269277269418%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%rest-rand269272269280%_)))
                                           (_%$%tl269278269420%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%rest-rand269272269280%_))))
                                       (let* ((_%rand269423%_
                                               _%$%hd269277269418%_)
                                              (_%rest-rand269425%_
                                               _%$%tl269278269420%_))
                                         (_%$%K269276269415%_
                                          _%rest-rand269425%_
                                          _%rand269423%_)))
                                     (_%$%else269274269302%_))))))
                       (if (pair? _%$%rest-arg269246269254%_)
                           (let ((_%$%hd269251269430%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%rest-arg269246269254%_)))
                                 (_%$%tl269252269432%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%rest-arg269246269254%_))))
                             (let* ((_%arg-id269435%_ _%$%hd269251269430%_)
                                    (_%rest-arg269437%_ _%$%tl269252269432%_))
                               (_%$%K269250269427%_
                                _%rest-arg269437%_
                                _%arg-id269435%_)))
                           (_%$%else269248269267%_))))))
                (_%__kont269897269898%_
                 (lambda (_%$%g268927268991%_ _%$%g268928268992%_)
                   (let ((_%rator-type269009%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type
                             _%$%g268928268992%_))))
                     (if (and _%rator-type269009%_
                              (eq? (##structure-ref
                                    _%rator-type269009%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type269009%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type269009%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type269009%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp270701
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self268861%_
                                               _%$%g268928268992%_))
                                            (map (lambda (_%$%g269011269013%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self268861%_
                                                      _%$%g269011269013%_)))
                                                 (let ((__tmp270702
                                                        (lambda (_%$%g269015269018%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g269016269020%_)
                  (cons _%$%g269015269018%_ _%$%g269016269020%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp270702
                                                    '()
                                                    _%$%g268927268991%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp270701 _%stx268862%_))
                         (if (or (not _%rator-type269009%_)
                                 (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%rator-type269009%_
                                    'gxc#!nullable-type::t))
                                 (let ((__tmp270703
                                        (##structure-ref
                                         _%rator-type269009%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp270703 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self268861%_ _%stx268862%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx268862%_
                                _%rator-type269009%_))))))))
            (let* ((_%__match269994269995%_
                    (lambda (_%$%e268929268953%_
                             _%$%hd268930268956%_
                             _%$%tl268931268958%_
                             _%$%e268932268961%_
                             _%$%hd268933268964%_
                             _%$%tl268934268966%_
                             _%__splice269899269900%_
                             _%$%target268935268969%_
                             _%$%tl268937268971%_)
                      (letrec ((_%$%loop268938268974%_
                                (lambda (_%$%hd268936268977%_
                                         _%$%rand268942268979%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd268936268977%_))
                                      (let ((_%$%e268939268981%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd268936268977%_))))
                                        (let ((_%$%lp-tl268941268986%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e268939268981%_)))
                                              (_%$%lp-hd268940268984%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e268939268981%_))))
                                          (_%$%loop268938268974%_
                                           _%$%lp-tl268941268986%_
                                           (cons _%$%lp-hd268940268984%_
                                                 _%$%rand268942268979%_))))
                                      (let ((_%$%rand268943268989%_
                                             (reverse _%$%rand268942268979%_)))
                                        (_%__kont269897269898%_
                                         _%$%rand268943268989%_
                                         _%$%hd268933268964%_))))))
                        (_%$%loop268938268974%_
                         _%$%target268935268969%_
                         '()))))
                   (_%__match269986269987%_
                    (lambda (_%$%e268929268953%_
                             _%$%hd268930268956%_
                             _%$%tl268931268958%_
                             _%$%e268932268961%_
                             _%$%hd268933268964%_
                             _%$%tl268934268966%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%$%tl268934268966%_))
                          (let ((_%__splice269899269900%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%$%tl268934268966%_
                                    '0))))
                            (let ((_%$%tl268937268971%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice269899269900%_
                                      '1)))
                                  (_%$%target268935268969%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice269899269900%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl268937268971%_))
                                  (_%__match269994269995%_
                                   _%$%e268929268953%_
                                   _%$%hd268930268956%_
                                   _%$%tl268931268958%_
                                   _%$%e268932268961%_
                                   _%$%hd268933268964%_
                                   _%$%tl268934268966%_
                                   _%__splice269899269900%_
                                   _%$%target268935268969%_
                                   _%$%tl268937268971%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g268866268948%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g268866268948%_)))))
                   (_%__match269974269975%_
                    (lambda (_%$%e268894269036%_
                             _%$%hd268895269039%_
                             _%$%tl268896269041%_
                             _%$%e268897269044%_
                             _%$%hd268898269047%_
                             _%$%tl268899269049%_
                             _%$%e268900269052%_
                             _%$%hd268901269055%_
                             _%$%tl268902269057%_
                             _%$%e268903269060%_
                             _%$%hd268904269063%_
                             _%$%tl268905269065%_
                             _%__splice269893269894%_
                             _%$%target268906269068%_
                             _%$%tl268908269070%_)
                      (letrec ((_%$%loop268909269073%_
                                (lambda (_%$%hd268907269076%_
                                         _%$%arg268913269078%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd268907269076%_))
                                      (let ((_%$%e268910269080%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd268907269076%_))))
                                        (let ((_%$%lp-tl268912269085%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e268910269080%_)))
                                              (_%$%lp-hd268911269083%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e268910269080%_))))
                                          (_%$%loop268909269073%_
                                           _%$%lp-tl268912269085%_
                                           (cons _%$%lp-hd268911269083%_
                                                 _%$%arg268913269078%_))))
                                      (let ((_%$%arg268914269088%_
                                             (reverse _%$%arg268913269078%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl268905269065%_))
                                            (let ((_%$%e268915269090%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl268905269065%_))))
                                              (let ((_%$%tl268917269095%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e268915269090%_)))
                                                    (_%$%hd268916269093%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e268915269090%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl268917269095%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%$%tl268899269049%_))
                                                        (let ((_%__splice269895269896%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%$%tl268899269049%_
                          '0))))
                  (let ((_%$%tl268920269100%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice269895269896%_ '1)))
                        (_%$%target268918269098%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice269895269896%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl268920269100%_))
                        (letrec ((_%$%loop268921269103%_
                                  (lambda (_%$%hd268919269106%_
                                           _%$%rand268925269108%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd268919269106%_))
                                        (let ((_%$%e268922269110%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd268919269106%_))))
                                          (let ((_%$%lp-tl268924269115%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e268922269110%_)))
                                                (_%$%lp-hd268923269113%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e268922269110%_))))
                                            (_%$%loop268921269103%_
                                             _%$%lp-tl268924269115%_
                                             (cons _%$%lp-hd268923269113%_
                                                   _%$%rand268925269108%_))))
                                        (let ((_%$%rand268926269118%_
                                               (reverse _%$%rand268925269108%_)))
                                          (let ((_%$%g268891269120%_
                                                 _%$%rand268926269118%_)
                                                (_%$%g268892269121%_
                                                 _%$%hd268916269093%_)
                                                (_%$%g268893269122%_
                                                 _%$%arg268914269088%_))
                                            (if (and (= (length (let ((__tmp270704
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_%$%g269148269151%_
                                        _%$%g269149269153%_)
                                 (cons _%$%g269148269151%_
                                       _%$%g269149269153%_))))
                          (declare (not safe))
                          (foldr__0 __tmp270704 '() _%$%g268893269122%_)))
                (length (let ((__tmp270705
                               (lambda (_%$%g269155269158%_
                                        _%$%g269156269160%_)
                                 (cons _%$%g269155269158%_
                                       _%$%g269156269160%_))))
                          (declare (not safe))
                          (foldr__0 __tmp270705 '() _%$%g268891269120%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp270708
                                                            (lambda (_%id269163%_)
                                                              (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gxc#mutable-binding? _%id269163%_)))))
                   (__tmp270706
                    (let ((__tmp270707
                           (lambda (_%$%g269164269167%_ _%$%g269165269169%_)
                             (cons _%$%g269164269167%_ _%$%g269165269169%_))))
                      (declare (not safe))
                      (foldr__0 __tmp270707 '() _%$%g268893269122%_))))
               (declare (not safe))
               (andmap__0 __tmp270708 __tmp270706))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp270711
                                                            (lambda (_%rand269172%_)
                                                              (let* ((_%__stx269761269762%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%rand269172%_)
                             (_%$%g269175269188%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx269761269762%_)))))
                        (let ((_%__kont269763269764%_
                               (lambda (_%$%g269177269216%_)
                                 (not (let ()
                                        (declare (not safe))
                                        (gxc#mutable-binding?
                                         _%$%g269177269216%_)))))
                              (_%__kont269765269766%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx269761269762%_))
                              (let ((_%$%e269178269200%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx269761269762%_))))
                                (let ((_%$%tl269180269205%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e269178269200%_)))
                                      (_%$%hd269179269203%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e269178269200%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd269179269203%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd269179269203%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl269180269205%_))
                                              (let ((_%$%e269181269208%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl269180269205%_))))
                                                (let ((_%$%tl269183269213%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e269181269208%_)))
                                                      (_%$%hd269182269211%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e269181269208%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl269183269213%_))
                                                      (_%__kont269763269764%_
                                                       _%$%hd269182269211%_)
                                                      (_%__kont269765269766%_))))
                                              (_%__kont269765269766%_))
                                          (_%__kont269765269766%_))
                                      (_%__kont269765269766%_))))
                              (_%__kont269765269766%_))))))
                   (__tmp270709
                    (let ((__tmp270710
                           (lambda (_%$%g269232269235%_ _%$%g269233269237%_)
                             (cons _%$%g269232269235%_ _%$%g269233269237%_))))
                      (declare (not safe))
                      (foldr__0 __tmp270710 '() _%$%g268891269120%_))))
               (declare (not safe))
               (andmap__0 __tmp270711 __tmp270709)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont269891269892%_
                                                 _%$%g268891269120%_
                                                 _%$%g268892269121%_
                                                 _%$%g268893269122%_)
                                                (_%__match269994269995%_
                                                 _%$%e268894269036%_
                                                 _%$%hd268895269039%_
                                                 _%$%tl268896269041%_
                                                 _%$%e268897269044%_
                                                 _%$%hd268898269047%_
                                                 _%$%tl268899269049%_
                                                 _%__splice269895269896%_
                                                 _%$%target268918269098%_
                                                 _%$%tl268920269100%_))))))))
                          (_%$%loop268921269103%_
                           _%$%target268918269098%_
                           '()))
                        (let () (declare (not safe)) (_%$%g268866268948%_)))))
                (let () (declare (not safe)) (_%$%g268866268948%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match269986269987%_
                                                     _%$%e268894269036%_
                                                     _%$%hd268895269039%_
                                                     _%$%tl268896269041%_
                                                     _%$%e268897269044%_
                                                     _%$%hd268898269047%_
                                                     _%$%tl268899269049%_))))
                                            (_%__match269986269987%_
                                             _%$%e268894269036%_
                                             _%$%hd268895269039%_
                                             _%$%tl268896269041%_
                                             _%$%e268897269044%_
                                             _%$%hd268898269047%_
                                             _%$%tl268899269049%_)))))))
                        (_%$%loop268909269073%_
                         _%$%target268906269068%_
                         '()))))
                   (_%__match269938269939%_
                    (lambda (_%$%e268870269458%_
                             _%$%hd268871269461%_
                             _%$%tl268872269463%_
                             _%$%e268873269466%_
                             _%$%hd268874269469%_
                             _%$%tl268875269471%_
                             _%$%e268876269474%_
                             _%$%hd268877269477%_
                             _%$%tl268878269479%_
                             _%$%e268879269482%_
                             _%$%hd268880269485%_
                             _%$%tl268881269487%_
                             _%__splice269889269890%_
                             _%$%target268882269490%_
                             _%$%tl268884269492%_)
                      (letrec ((_%$%loop268885269495%_
                                (lambda (_%$%hd268883269498%_
                                         _%$%rand268889269500%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd268883269498%_))
                                      (let ((_%$%e268886269502%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd268883269498%_))))
                                        (let ((_%$%lp-tl268888269507%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e268886269502%_)))
                                              (_%$%lp-hd268887269505%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e268886269502%_))))
                                          (_%$%loop268885269495%_
                                           _%$%lp-tl268888269507%_
                                           (cons _%$%lp-hd268887269505%_
                                                 _%$%rand268889269500%_))))
                                      (let ((_%$%rand268890269510%_
                                             (reverse _%$%rand268889269500%_)))
                                        (_%__kont269887269888%_
                                         _%$%rand268890269510%_
                                         _%$%hd268880269485%_))))))
                        (_%$%loop268885269495%_
                         _%$%target268882269490%_
                         '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx269885269886%_))
                  (let ((_%$%e268870269458%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx269885269886%_))))
                    (let ((_%$%tl268872269463%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e268870269458%_)))
                          (_%$%hd268871269461%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e268870269458%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl268872269463%_))
                          (let ((_%$%e268873269466%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl268872269463%_))))
                            (let ((_%$%tl268875269471%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e268873269466%_)))
                                  (_%$%hd268874269469%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e268873269466%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd268874269469%_))
                                  (let ((_%$%e268876269474%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd268874269469%_))))
                                    (let ((_%$%tl268878269479%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e268876269474%_)))
                                          (_%$%hd268877269477%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e268876269474%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd268877269477%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd268877269477%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl268878269479%_))
                                                  (let ((_%$%e268879269482%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl268878269479%_))))
                                                    (let ((_%$%tl268881269487%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e268879269482%_)))
                                                          (_%$%hd268880269485%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e268879269482%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl268881269487%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%$%tl268875269471%_))
                      (let ((_%__splice269889269890%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl268875269471%_
                                '0))))
                        (let ((_%$%tl268884269492%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice269889269890%_ '1)))
                              (_%$%target268882269490%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice269889269890%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl268884269492%_))
                              (_%__match269938269939%_
                               _%$%e268870269458%_
                               _%$%hd268871269461%_
                               _%$%tl268872269463%_
                               _%$%e268873269466%_
                               _%$%hd268874269469%_
                               _%$%tl268875269471%_
                               _%$%e268876269474%_
                               _%$%hd268877269477%_
                               _%$%tl268878269479%_
                               _%$%e268879269482%_
                               _%$%hd268880269485%_
                               _%$%tl268881269487%_
                               _%__splice269889269890%_
                               _%$%target268882269490%_
                               _%$%tl268884269492%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g268866268948%_)))))
                      (let () (declare (not safe)) (_%$%g268866268948%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%$%tl268875269471%_))
                      (let ((_%__splice269899269900%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl268875269471%_
                                '0))))
                        (let ((_%$%tl268937268971%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice269899269900%_ '1)))
                              (_%$%target268935268969%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice269899269900%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl268937268971%_))
                              (_%__match269994269995%_
                               _%$%e268870269458%_
                               _%$%hd268871269461%_
                               _%$%tl268872269463%_
                               _%$%e268873269466%_
                               _%$%hd268874269469%_
                               _%$%tl268875269471%_
                               _%__splice269899269900%_
                               _%$%target268935268969%_
                               _%$%tl268937268971%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g268866268948%_)))))
                      (let () (declare (not safe)) (_%$%g268866268948%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl268875269471%_))
                                                      (let ((_%__splice269899269900%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl268875269471%_
                        '0))))
                (let ((_%$%tl268937268971%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice269899269900%_ '1)))
                      (_%$%target268935268969%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice269899269900%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl268937268971%_))
                      (_%__match269994269995%_
                       _%$%e268870269458%_
                       _%$%hd268871269461%_
                       _%$%tl268872269463%_
                       _%$%e268873269466%_
                       _%$%hd268874269469%_
                       _%$%tl268875269471%_
                       _%__splice269899269900%_
                       _%$%target268935268969%_
                       _%$%tl268937268971%_)
                      (let () (declare (not safe)) (_%$%g268866268948%_)))))
              (let () (declare (not safe)) (_%$%g268866268948%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#lambda
                                                     _%$%hd268877269477%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl268878269479%_))
                                                      (let ((_%$%e268903269060%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl268878269479%_))))
                (let ((_%$%tl268905269065%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e268903269060%_)))
                      (_%$%hd268904269063%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e268903269060%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%$%hd268904269063%_))
                      (let ((_%__splice269893269894%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%hd268904269063%_
                                '0))))
                        (let ((_%$%tl268908269070%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice269893269894%_ '1)))
                              (_%$%target268906269068%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice269893269894%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl268908269070%_))
                              (_%__match269974269975%_
                               _%$%e268870269458%_
                               _%$%hd268871269461%_
                               _%$%tl268872269463%_
                               _%$%e268873269466%_
                               _%$%hd268874269469%_
                               _%$%tl268875269471%_
                               _%$%e268876269474%_
                               _%$%hd268877269477%_
                               _%$%tl268878269479%_
                               _%$%e268903269060%_
                               _%$%hd268904269063%_
                               _%$%tl268905269065%_
                               _%__splice269893269894%_
                               _%$%target268906269068%_
                               _%$%tl268908269070%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _%$%tl268875269471%_))
                                  (let ((_%__splice269899269900%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice->vector
                                            _%$%tl268875269471%_
                                            '0))))
                                    (let ((_%$%tl268937268971%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice269899269900%_
                                              '1)))
                                          (_%$%target268935268969%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice269899269900%_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl268937268971%_))
                                          (_%__match269994269995%_
                                           _%$%e268870269458%_
                                           _%$%hd268871269461%_
                                           _%$%tl268872269463%_
                                           _%$%e268873269466%_
                                           _%$%hd268874269469%_
                                           _%$%tl268875269471%_
                                           _%__splice269899269900%_
                                           _%$%target268935268969%_
                                           _%$%tl268937268971%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g268866268948%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g268866268948%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%$%tl268875269471%_))
                          (let ((_%__splice269899269900%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%$%tl268875269471%_
                                    '0))))
                            (let ((_%$%tl268937268971%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice269899269900%_
                                      '1)))
                                  (_%$%target268935268969%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice269899269900%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl268937268971%_))
                                  (_%__match269994269995%_
                                   _%$%e268870269458%_
                                   _%$%hd268871269461%_
                                   _%$%tl268872269463%_
                                   _%$%e268873269466%_
                                   _%$%hd268874269469%_
                                   _%$%tl268875269471%_
                                   _%__splice269899269900%_
                                   _%$%target268935268969%_
                                   _%$%tl268937268971%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g268866268948%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g268866268948%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%$%tl268875269471%_))
                  (let ((_%__splice269899269900%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%$%tl268875269471%_
                            '0))))
                    (let ((_%$%tl268937268971%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice269899269900%_ '1)))
                          (_%$%target268935268969%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice269899269900%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl268937268971%_))
                          (_%__match269994269995%_
                           _%$%e268870269458%_
                           _%$%hd268871269461%_
                           _%$%tl268872269463%_
                           _%$%e268873269466%_
                           _%$%hd268874269469%_
                           _%$%tl268875269471%_
                           _%__splice269899269900%_
                           _%$%target268935268969%_
                           _%$%tl268937268971%_)
                          (let ()
                            (declare (not safe))
                            (_%$%g268866268948%_)))))
                  (let () (declare (not safe)) (_%$%g268866268948%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl268875269471%_))
                                                      (let ((_%__splice269899269900%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl268875269471%_
                        '0))))
                (let ((_%$%tl268937268971%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice269899269900%_ '1)))
                      (_%$%target268935268969%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice269899269900%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl268937268971%_))
                      (_%__match269994269995%_
                       _%$%e268870269458%_
                       _%$%hd268871269461%_
                       _%$%tl268872269463%_
                       _%$%e268873269466%_
                       _%$%hd268874269469%_
                       _%$%tl268875269471%_
                       _%__splice269899269900%_
                       _%$%target268935268969%_
                       _%$%tl268937268971%_)
                      (let () (declare (not safe)) (_%$%g268866268948%_)))))
              (let () (declare (not safe)) (_%$%g268866268948%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%$%tl268875269471%_))
                                              (let ((_%__splice269899269900%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl268875269471%_
                                                        '0))))
                                                (let ((_%$%tl268937268971%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice269899269900%_
                                                          '1)))
                                                      (_%$%target268935268969%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice269899269900%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl268937268971%_))
                                                      (_%__match269994269995%_
                                                       _%$%e268870269458%_
                                                       _%$%hd268871269461%_
                                                       _%$%tl268872269463%_
                                                       _%$%e268873269466%_
                                                       _%$%hd268874269469%_
                                                       _%$%tl268875269471%_
                                                       _%__splice269899269900%_
                                                       _%$%target268935268969%_
                                                       _%$%tl268937268971%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g268866268948%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g268866268948%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl268875269471%_))
                                      (let ((_%__splice269899269900%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%tl268875269471%_
                                                '0))))
                                        (let ((_%$%tl268937268971%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice269899269900%_
                                                  '1)))
                                              (_%$%target268935268969%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice269899269900%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl268937268971%_))
                                              (_%__match269994269995%_
                                               _%$%e268870269458%_
                                               _%$%hd268871269461%_
                                               _%$%tl268872269463%_
                                               _%$%e268873269466%_
                                               _%$%hd268874269469%_
                                               _%$%tl268875269471%_
                                               _%__splice269899269900%_
                                               _%$%target268935268969%_
                                               _%$%tl268937268971%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g268866268948%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g268866268948%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g268866268948%_)))))
                  (let () (declare (not safe)) (_%$%g268866268948%_))))))))
    (define gxc#optimize-special-cast
      (lambda (_%self268666%_ _%stx268667%_)
        (let* ((_%__stx269997269998%_ _%stx268667%_)
               (_%$%g268671268711%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx269997269998%_)))))
          (let ((_%__kont269999270000%_
                 (lambda (_%$%g268673268827%_ _%$%g268674268828%_)
                   (let* ((_%descriptor-id268848%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%$%g268674268828%_)))
                          (_%descriptor-type268850%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type
                              _%descriptor-id268848%_)))
                          (_%object-type268852%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%$%g268673268827%_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _%descriptor-type268850%_
                            'gxc#!interface::t))
                         (if (and _%object-type268852%_
                                  (let ((__tmp270712
                                         (let ((__tmp270713
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%descriptor-type268850%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx268667%_
                                            __tmp270713))))
                                    (declare (not safe))
                                    (gxc#!type-subtype?
                                     _%object-type268852%_
                                     __tmp270712)))
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self268666%_
                                _%$%g268673268827%_))
                             (let ((__tmp270714
                                    (cons '%#call-unchecked
                                          (cons '(%#ref cast)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#ref))
                                                            (cons _%$%g268674268828%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self268666%_ _%$%g268673268827%_))
                    '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp270714
                                _%stx268667%_)))
                         (let ()
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"illegal cast; not an interface type"
                            _%stx268667%_
                            _%descriptor-type268850%_))))))
                (_%__kont270001270002%_
                 (lambda (_%$%g268693268755%_ _%$%g268694268756%_)
                   (let ((__tmp270715
                          (cons '%#call-unchecked
                                (cons '(%#ref cast)
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self268666%_
                                               _%$%g268694268756%_))
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self268666%_
                                                     _%$%g268693268755%_))
                                                  '()))))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp270715 _%stx268667%_))))
                (_%__kont270003270004%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"illegal cast; arity mismatch"
                      _%stx268667%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx269997269998%_))
                (let ((_%$%e268675268779%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx269997269998%_))))
                  (let ((_%$%tl268677268784%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e268675268779%_)))
                        (_%$%hd268676268782%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e268675268779%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl268677268784%_))
                        (let ((_%$%e268678268787%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl268677268784%_))))
                          (let ((_%$%tl268680268792%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e268678268787%_)))
                                (_%$%hd268679268790%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e268678268787%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl268680268792%_))
                                (let ((_%$%e268681268795%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl268680268792%_))))
                                  (let ((_%$%tl268683268800%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e268681268795%_)))
                                        (_%$%hd268682268798%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e268681268795%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd268682268798%_))
                                        (let ((_%$%e268684268803%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd268682268798%_))))
                                          (let ((_%$%tl268686268808%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e268684268803%_)))
                                                (_%$%hd268685268806%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e268684268803%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd268685268806%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%$%hd268685268806%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl268686268808%_))
                                                        (let ((_%$%e268687268811%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl268686268808%_))))
                  (let ((_%$%tl268689268816%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e268687268811%_)))
                        (_%$%hd268688268814%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e268687268811%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl268689268816%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl268683268800%_))
                            (let ((_%$%e268690268819%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl268683268800%_))))
                              (let ((_%$%tl268692268824%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e268690268819%_)))
                                    (_%$%hd268691268822%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e268690268819%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl268692268824%_))
                                    (_%__kont269999270000%_
                                     _%$%hd268691268822%_
                                     _%$%hd268688268814%_)
                                    (_%__kont270003270004%_))))
                            (_%__kont270003270004%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl268683268800%_))
                            (let ((_%$%e268704268747%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl268683268800%_))))
                              (let ((_%$%tl268706268752%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e268704268747%_)))
                                    (_%$%hd268705268750%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e268704268747%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl268706268752%_))
                                    (_%__kont270001270002%_
                                     _%$%hd268705268750%_
                                     _%$%hd268682268798%_)
                                    (_%__kont270003270004%_))))
                            (_%__kont270003270004%_)))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%$%tl268683268800%_))
                    (let ((_%$%e268704268747%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl268683268800%_))))
                      (let ((_%$%tl268706268752%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e268704268747%_)))
                            (_%$%hd268705268750%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e268704268747%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl268706268752%_))
                            (_%__kont270001270002%_
                             _%$%hd268705268750%_
                             _%$%hd268682268798%_)
                            (_%__kont270003270004%_))))
                    (_%__kont270003270004%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl268683268800%_))
                                                        (let ((_%$%e268704268747%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl268683268800%_))))
                  (let ((_%$%tl268706268752%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e268704268747%_)))
                        (_%$%hd268705268750%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e268704268747%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl268706268752%_))
                        (_%__kont270001270002%_
                         _%$%hd268705268750%_
                         _%$%hd268682268798%_)
                        (_%__kont270003270004%_))))
                (_%__kont270003270004%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl268683268800%_))
                                                    (let ((_%$%e268704268747%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl268683268800%_))))
                                                      (let ((_%$%tl268706268752%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e268704268747%_)))
                    (_%$%hd268705268750%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e268704268747%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl268706268752%_))
                    (_%__kont270001270002%_
                     _%$%hd268705268750%_
                     _%$%hd268682268798%_)
                    (_%__kont270003270004%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont270003270004%_)))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl268683268800%_))
                                            (let ((_%$%e268704268747%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl268683268800%_))))
                                              (let ((_%$%tl268706268752%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e268704268747%_)))
                                                    (_%$%hd268705268750%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e268704268747%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl268706268752%_))
                                                    (_%__kont270001270002%_
                                                     _%$%hd268705268750%_
                                                     _%$%hd268682268798%_)
                                                    (_%__kont270003270004%_))))
                                            (_%__kont270003270004%_)))))
                                (_%__kont270003270004%_))))
                        (_%__kont270003270004%_))))
                (_%__kont270003270004%_))))))
    (define gxc#special-procedure-optimizers
      (let ((_%ht268663%_
             (let () (declare (not safe)) (make-hash-table-eq 'size: '1))))
        (let ()
          (declare (not safe))
          (__hash-put! _%ht268663%_ 'cast gxc#optimize-special-cast))
        _%ht268663%_))
    (define gxc#!procedure::optimize-call
      (lambda (_%self268625%_ _%ctx268626%_ _%stx268627%_ _%args268628%_)
        (let ((_%self268631%_ _%self268625%_))
          (if (let ((__method270674
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self268631%_ 'check-arguments))))
                (if __method270674
                    (let ()
                      (declare (not safe))
                      (__method270674
                       _%self268631%_
                       _%ctx268626%_
                       _%stx268627%_
                       _%args268628%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self268631%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature268641%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self268631%_ '2 '#f '#f)))
                     (_%signature268643%_ _%signature268641%_)
                     (_%$e268653%_
                      (if _%signature268643%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature268643%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e268653%_
                    (if (let ()
                          (declare (not safe))
                          (gxc#symbol-in-local-scope? _%$e268653%_))
                        (let ((__tmp270716
                               (cons '%#call
                                     (cons (cons '%#ref
                                                 (cons _%$e268653%_ '()))
                                           (map (lambda (_%$%g268657268659%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%ctx268626%_
                                                     _%$%g268657268659%_)))
                                                _%args268628%_)))))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp270716
                           _%stx268627%_
                           _%ctx268626%_))
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx268626%_ _%stx268627%_)))
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx268626%_ _%stx268627%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx268626%_ _%stx268627%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass269746 __method-table269747)
        (let ((__check-arguments269748
               (let ((__tmp270717
                      (lambda ()
                        (let ((__method269749
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table269747
                                  'check-arguments
                                  '#f))))
                          (if __method269749
                              __method269749
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp270717))))
          (lambda (_%self268625%_ _%ctx268626%_ _%stx268627%_ _%args268628%_)
            (let ((_%self268631%_ _%self268625%_))
              (if ((force __check-arguments269748)
                   _%self268631%_
                   _%ctx268626%_
                   _%stx268627%_
                   _%args268628%_)
                  (let* ((_%signature268641%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self268631%_
                             '2
                             '#f
                             '#f)))
                         (_%signature268643%_ _%signature268641%_)
                         (_%$e268653%_
                          (if _%signature268643%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature268643%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e268653%_
                        (if (let ()
                              (declare (not safe))
                              (gxc#symbol-in-local-scope? _%$e268653%_))
                            (let ((__tmp270718
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%$e268653%_ '()))
                                               (map (lambda (_%$%g268657268659%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%ctx268626%_
                                                         _%$%g268657268659%_)))
                                                    _%args268628%_)))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp270718
                               _%stx268627%_
                               _%ctx268626%_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _%ctx268626%_ _%stx268627%_)))
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx268626%_ _%stx268627%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx268626%_ _%stx268627%_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!procedure::optimize-call
       gxc#!procedure::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!procedure::t
       'optimize-call
       gxc#!procedure::optimize-call
       '#f))
    (define gxc#!procedure::check-arguments
      (lambda (_%self268378%_ _%ctx268379%_ _%stx268380%_ _%args268381%_)
        (let* ((_%self268384%_ _%self268378%_)
               (_%$%signature268393268395%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self268384%_ '2 '#f '#f))))
          (if _%$%signature268393268395%_
              (let* ((_%signature268397%_ _%$%signature268393268395%_)
                     (_%$%argument-types268398268400%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature268397%_
                         '3
                         '#f
                         '#f))))
                (if _%$%argument-types268398268400%_
                    (let* ((_%argument-types268402%_
                            _%$%argument-types268398268400%_)
                           (_%argument-types268407%_
                            (let ((__tmp270719
                                   (lambda (_%t268405%_)
                                     (if _%t268405%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-type-expression
                                            _%stx268380%_
                                            _%t268405%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map-type-expressions
                               __tmp270719
                               _%argument-types268402%_))))
                      (let _%loop268409%_ ((_%rest-args268411%_ _%args268381%_)
                                           (_%rest-types268412%_
                                            _%argument-types268407%_)
                                           (_%result268413%_ '#t))
                        (let* ((_%$%rest-args268414268422%_
                                _%rest-args268411%_)
                               (_%$%else268416268430%_
                                (lambda () _%result268413%_))
                               (_%$%K268418268491%_
                                (lambda (_%rest-args268433%_ _%arg268434%_)
                                  (let* ((_%$%rest-types268435268446%_
                                          _%rest-types268412%_)
                                         (_%$%E268439268450%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%$%rest-types268435268446%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%$%K268442268479%_
                                           (lambda (_%rest-types268476%_
                                                    _%type268477%_)
                                             (_%loop268409%_
                                              _%rest-args268433%_
                                              _%rest-types268476%_
                                              (if (gxc#check-expression-type!
                                                   _%stx268380%_
                                                   _%arg268434%_
                                                   _%type268477%_)
                                                  _%result268413%_
                                                  '#f))))
                                          (_%$%K268441268470%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx268380%_
                                                _%argument-types268407%_))))
                                          (_%$%K268440268460%_
                                           (lambda (_%tail-type268454%_)
                                             (if (let ((__tmp270720
                                                        (lambda (_%$%g268455268457%_)
                                                          (gxc#check-expression-type!
                                                           _%stx268380%_
                                                           _%$%g268455268457%_
                                                           _%tail-type268454%_))))
                                                   (declare (not safe))
                                                   (andmap__0
                                                    __tmp270720
                                                    _%rest-args268433%_))
                                                 _%result268413%_
                                                 '#f))))
                                      (let ((_%$%try-match268437268473%_
                                             (lambda ()
                                               (if (null? _%$%rest-types268435268446%_)
                                                   (_%$%K268441268470%_)
                                                   (let ((_%tail-type268463%_
                                                          _%$%rest-types268435268446%_))
                                                     (_%$%K268440268460%_
                                                      _%tail-type268463%_))))))
                                        (if (pair? _%$%rest-types268435268446%_)
                                            (let ((_%$%tl268444268484%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%rest-types268435268446%_)))
                                                  (_%$%hd268443268482%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%rest-types268435268446%_))))
                                              (let ((_%type268487%_
                                                     _%$%hd268443268482%_)
                                                    (_%rest-types268489%_
                                                     _%$%tl268444268484%_))
                                                (_%$%K268442268479%_
                                                 _%rest-types268489%_
                                                 _%type268487%_)))
                                            (_%$%try-match268437268473%_))))))))
                          (if (pair? _%$%rest-args268414268422%_)
                              (let ((_%$%hd268419268494%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest-args268414268422%_)))
                                    (_%$%tl268420268496%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest-args268414268422%_))))
                                (let* ((_%arg268499%_ _%$%hd268419268494%_)
                                       (_%rest-args268501%_
                                        _%$%tl268420268496%_))
                                  (_%$%K268418268491%_
                                   _%rest-args268501%_
                                   _%arg268499%_)))
                              (_%$%else268416268430%_)))))
                    '#f))
              '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!procedure::t
       'check-arguments
       gxc#!procedure::check-arguments
       '#f))
    (define gxc#!primitive-predicate::optimize-call
      (lambda (_%self268181%_ _%ctx268182%_ _%stx268183%_ _%args268184%_)
        (let* ((_%self268187%_ _%self268181%_)
               (_%$%g268197268207%_
                (lambda (_%$%g268198268204%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g268198268204%_))))
               (_%$%g268196268253%_
                (lambda (_%$%g268198268210%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g268198268210%_))
                      (let ((_%$%e268200268212%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g268198268210%_))))
                        (let ((_%$%hd268201268215%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e268200268212%_)))
                              (_%$%tl268202268217%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e268200268212%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl268202268217%_))
                              (let* ((_%klass268232%_
                                      (let ((__tmp270721
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self268187%_
                                                '1
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx268183%_
                                         __tmp270721)))
                                     (_%object268234%_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%ctx268182%_
                                         _%$%hd268201268215%_)))
                                     (_%instance?268239%_
                                      (let ((_%$e268236%_
                                             (gxc#expression-type?
                                              _%object268234%_
                                              _%klass268232%_)))
                                        (if _%$e268236%_
                                            _%$e268236%_
                                            (gxc#expression-type?
                                             _%$%hd268201268215%_
                                             _%klass268232%_))))
                                     (_%incompatible?268244%_
                                      (let ((_%$e268241%_
                                             (gxc#incompatible-type?
                                              _%object268234%_
                                              _%klass268232%_)))
                                        (if _%$e268241%_
                                            _%$e268241%_
                                            (gxc#incompatible-type?
                                             _%$%hd268201268215%_
                                             _%klass268232%_)))))
                                (if _%instance?268239%_
                                    (let ((__tmp270722
                                           (if (or (gxc#expression-no-side-effects?
                                                    _%object268234%_)
                                                   (gxc#expression-no-side-effects?
                                                    _%$%hd268201268215%_))
                                               (cons '%#quote (cons '#t '()))
                                               (cons '%#begin
                                                     (cons _%object268234%_
                                                           (cons '(%#quote #t)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp270722
                                       _%stx268183%_))
                                    (if _%incompatible?268244%_
                                        (let ((__tmp270723
                                               (cons '%#begin
                                                     (cons _%object268234%_
                                                           (cons '(%#quote #f)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp270723
                                           _%stx268183%_))
                                        (let ()
                                          (declare (not safe))
                                          (gxc#xform-call%
                                           _%ctx268182%_
                                           _%stx268183%_)))))
                              (_%$%g268197268207%_ _%$%g268198268210%_))))
                      (_%$%g268197268207%_ _%$%g268198268210%_)))))
          (_%$%g268196268253%_ _%args268184%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self267970%_ _%ctx267971%_ _%stx267972%_ _%args267973%_)
        (let* ((_%self267976%_ _%self267970%_)
               (_%$%g267986267996%_
                (lambda (_%$%g267987267993%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g267987267993%_))))
               (_%$%g267985268056%_
                (lambda (_%$%g267987267999%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g267987267999%_))
                      (let ((_%$%e267989268001%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g267987267999%_))))
                        (let ((_%$%hd267990268004%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e267989268001%_)))
                              (_%$%tl267991268006%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e267989268001%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl267991268006%_))
                              (let* ((_%klass268021%_
                                      (let ((__tmp270724
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self267976%_
                                                '1
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx267972%_
                                         __tmp270724)))
                                     (_%object268023%_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%ctx267971%_
                                         _%$%hd267990268004%_)))
                                     (_%instance?268028%_
                                      (let ((_%$e268025%_
                                             (gxc#expression-type?
                                              _%object268023%_
                                              _%klass268021%_)))
                                        (if _%$e268025%_
                                            _%$e268025%_
                                            (gxc#expression-type?
                                             _%$%hd267990268004%_
                                             _%klass268021%_))))
                                     (_%incompatible?268033%_
                                      (let ((_%$e268030%_
                                             (gxc#incompatible-type?
                                              _%object268023%_
                                              _%klass268021%_)))
                                        (if _%$e268030%_
                                            _%$e268030%_
                                            (gxc#incompatible-type?
                                             _%$%hd267990268004%_
                                             _%klass268021%_))))
                                     (_%klass268036%_ _%klass268021%_))
                                (if _%instance?268028%_
                                    (let ((__tmp270725
                                           (if (or (gxc#expression-no-side-effects?
                                                    _%object268023%_)
                                                   (gxc#expression-no-side-effects?
                                                    _%$%hd267990268004%_))
                                               (cons '%#quote (cons '#t '()))
                                               (cons '%#begin
                                                     (cons _%object268023%_
                                                           (cons '(%#quote #t)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp270725
                                       _%stx267972%_))
                                    (if _%incompatible?268033%_
                                        (let ((__tmp270726
                                               (cons '%#begin
                                                     (cons _%object268023%_
                                                           (cons '(%#quote #f)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp270726
                                           _%stx267972%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass268036%_
                                               '8
                                               '#f
                                               '#f))
                                            (let ((__tmp270727
                                                   (cons '%#struct-direct-instance?
                                                         (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass268036%_
                                      '1
                                      '#f
                                      '#f))
                                   '()))
                       (cons _%object268023%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp270727
                                               _%stx267972%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass268036%_
                                                   '7
                                                   '#f
                                                   '#f))
                                                (let ((__tmp270728
                                                       (cons '%#struct-instance?
                                                             (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass268036%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons _%object268023%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp270728
                                                   _%stx267972%_))
                                                (let ((__tmp270729
                                                       (cons '%#call
                                                             (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons 'class-instance? '()))
                           (cons (cons '%#ref
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self267976%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons _%object268023%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp270729
                                                   _%stx267972%_)))))))
                              (_%$%g267986267996%_ _%$%g267987267999%_))))
                      (_%$%g267986267996%_ _%$%g267987267999%_)))))
          (_%$%g267985268056%_ _%args267973%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx267638%_)
        (let* ((_%__stx270084270085%_ _%stx267638%_)
               (_%$%g267643267684%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx270084270085%_)))))
          (let ((_%__kont270086270087%_ (lambda () '#t))
                (_%__kont270088270089%_ (lambda () '#t))
                (_%__kont270090270091%_
                 (lambda (_%$%g267657267750%_ _%$%g267658267751%_)
                   (let ((_%$%rator-type267772267774%_
                          (let ((__tmp270730
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol
                                    _%$%g267658267751%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp270730))))
                     (if _%$%rator-type267772267774%_
                         (let* ((_%rator-type267776%_
                                 _%$%rator-type267772267774%_)
                                (_%$%rator-signature267777267779%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type267776%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type267776%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%$%rator-signature267777267779%_
                               (let* ((_%rator-signature267781%_
                                       _%$%rator-signature267777267779%_)
                                      (_%$%rator-effect267782267784%_
                                       (if _%rator-signature267781%_
                                           (##direct-structure-ref
                                            _%rator-signature267781%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%$%rator-effect267782267784%_
                                     (let ((_%rator-effect267786%_
                                            _%$%rator-effect267782267784%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect267786%_)
                                               (equal? '(alloc)
                                                       _%rator-effect267786%_))
                                           (let ((__tmp270731
                                                  (let ((__tmp270732
                                                         (lambda (_%$%g267791267794%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g267792267796%_)
                   (cons _%$%g267791267794%_ _%$%g267792267796%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp270732
                                                     '()
                                                     _%$%g267657267750%_))))
                                             (declare (not safe))
                                             (andmap__0
                                              gxc#expression-no-side-effects?
                                              __tmp270731))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont270094270095%_ (lambda () '#f)))
            (let ((_%__match270173270174%_
                   (lambda (_%$%e267659267696%_
                            _%$%hd267660267699%_
                            _%$%tl267661267701%_
                            _%$%e267662267704%_
                            _%$%hd267663267707%_
                            _%$%tl267664267709%_
                            _%$%e267665267712%_
                            _%$%hd267666267715%_
                            _%$%tl267667267717%_
                            _%$%e267668267720%_
                            _%$%hd267669267723%_
                            _%$%tl267670267725%_
                            _%__splice270092270093%_
                            _%$%target267671267728%_
                            _%$%tl267673267730%_)
                     (letrec ((_%$%loop267674267733%_
                               (lambda (_%$%hd267672267736%_
                                        _%$%rand267678267738%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd267672267736%_))
                                     (let ((_%$%e267675267740%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd267672267736%_))))
                                       (let ((_%$%lp-tl267677267745%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e267675267740%_)))
                                             (_%$%lp-hd267676267743%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e267675267740%_))))
                                         (_%$%loop267674267733%_
                                          _%$%lp-tl267677267745%_
                                          (cons _%$%lp-hd267676267743%_
                                                _%$%rand267678267738%_))))
                                     (let ((_%$%rand267679267748%_
                                            (reverse _%$%rand267678267738%_)))
                                       (_%__kont270090270091%_
                                        _%$%rand267679267748%_
                                        _%$%hd267669267723%_))))))
                       (_%$%loop267674267733%_
                        _%$%target267671267728%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx270084270085%_))
                  (let ((_%$%e267645267827%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx270084270085%_))))
                    (let ((_%$%tl267647267832%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e267645267827%_)))
                          (_%$%hd267646267830%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e267645267827%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%$%hd267646267830%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%$%hd267646267830%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl267647267832%_))
                                  (let ((_%$%e267648267835%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl267647267832%_))))
                                    (let ((_%$%tl267650267840%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e267648267835%_)))
                                          (_%$%hd267649267838%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e267648267835%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl267650267840%_))
                                          (_%__kont270086270087%_)
                                          (_%__kont270094270095%_))))
                                  (_%__kont270094270095%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%$%hd267646267830%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl267647267832%_))
                                      (let ((_%$%e267654267812%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl267647267832%_))))
                                        (let ((_%$%tl267656267817%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e267654267812%_)))
                                              (_%$%hd267655267815%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e267654267812%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl267656267817%_))
                                              (_%__kont270088270089%_)
                                              (_%__kont270094270095%_))))
                                      (_%__kont270094270095%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%$%hd267646267830%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl267647267832%_))
                                          (let ((_%$%e267662267704%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl267647267832%_))))
                                            (let ((_%$%tl267664267709%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e267662267704%_)))
                                                  (_%$%hd267663267707%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e267662267704%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd267663267707%_))
                                                  (let ((_%$%e267665267712%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd267663267707%_))))
                                                    (let ((_%$%tl267667267717%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e267665267712%_)))
                                                          (_%$%hd267666267715%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e267665267712%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd267666267715%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%$%hd267666267715%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl267667267717%_))
                          (let ((_%$%e267668267720%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl267667267717%_))))
                            (let ((_%$%tl267670267725%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e267668267720%_)))
                                  (_%$%hd267669267723%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e267668267720%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl267670267725%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl267664267709%_))
                                      (let ((_%__splice270092270093%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%tl267664267709%_
                                                '0))))
                                        (let ((_%$%tl267673267730%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice270092270093%_
                                                  '1)))
                                              (_%$%target267671267728%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice270092270093%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl267673267730%_))
                                              (_%__match270173270174%_
                                               _%$%e267645267827%_
                                               _%$%hd267646267830%_
                                               _%$%tl267647267832%_
                                               _%$%e267662267704%_
                                               _%$%hd267663267707%_
                                               _%$%tl267664267709%_
                                               _%$%e267665267712%_
                                               _%$%hd267666267715%_
                                               _%$%tl267667267717%_
                                               _%$%e267668267720%_
                                               _%$%hd267669267723%_
                                               _%$%tl267670267725%_
                                               _%__splice270092270093%_
                                               _%$%target267671267728%_
                                               _%$%tl267673267730%_)
                                              (_%__kont270094270095%_))))
                                      (_%__kont270094270095%_))
                                  (_%__kont270094270095%_))))
                          (_%__kont270094270095%_))
                      (_%__kont270094270095%_))
                  (_%__kont270094270095%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont270094270095%_))))
                                          (_%__kont270094270095%_))
                                      (_%__kont270094270095%_))))
                          (_%__kont270094270095%_))))
                  (_%__kont270094270095%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx267633%_ _%klass267634%_)
        (let ((_%expr-type267636%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx267633%_))))
          (if _%expr-type267636%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type267636%_ _%klass267634%_))
              '#f))))
    (define gxc#incompatible-type?
      (lambda (_%expr267613%_ _%type267614%_)
        (if _%type267614%_
            (if (eq? (##structure-ref _%type267614%_ '1 gxc#!type::t '#f) 't)
                '#f
                (if (eq? (##structure-ref _%type267614%_ '1 gxc#!type::t '#f)
                         'false)
                    '#f
                    (let ((_%expr-type267620%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr267613%_))))
                      (if _%expr-type267620%_
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type267620%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              '#f
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%expr-type267620%_
                                     'gxc#!abort::t))
                                  '#f
                                  (if (let ()
                                        (declare (not safe))
                                        (gxc#!type-subtype?
                                         _%expr-type267620%_
                                         _%type267614%_))
                                      '#f
                                      (if (or (let ()
                                                (declare (not safe))
                                                (##structure-instance-of?
                                                 _%expr-type267620%_
                                                 'gxc#!nullable-type::t))
                                              (let ()
                                                (declare (not safe))
                                                (##structure-instance-of?
                                                 _%type267614%_
                                                 'gxc#!nullable-type::t)))
                                          '#f
                                          (if (let ()
                                                (declare (not safe))
                                                (gxc#!interface-instance?
                                                 _%type267614%_))
                                              '#f
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gxc#!type-subtype?
                                                     _%type267614%_
                                                     _%expr-type267620%_))
                                                  '#f
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#!type-disjoint?
                                                     _%expr-type267620%_
                                                     _%type267614%_))))))))
                          '#f))))
            '#f)))
    (define gxc#check-expression-type!
      (lambda (_%stx267586%_ _%expr267587%_ _%type267588%_)
        (if _%type267588%_
            (let ((_%$e267591%_
                   (eq? (##structure-ref _%type267588%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e267591%_
                  _%$e267591%_
                  (let ((_%expr-type267595%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr267587%_))))
                    (if _%expr-type267595%_
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type267595%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e267599%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type267595%_
                                      'gxc#!abort::t))))
                              (if _%$e267599%_
                                  _%$e267599%_
                                  (let ((_%$e267602%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type267595%_
                                            _%type267588%_))))
                                    (if _%$e267602%_
                                        _%$e267602%_
                                        (if (or (let ()
                                                  (declare (not safe))
                                                  (##structure-instance-of?
                                                   _%expr-type267595%_
                                                   'gxc#!nullable-type::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-instance-of?
                                                   _%type267588%_
                                                   'gxc#!nullable-type::t)))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!interface-instance?
                                                   _%type267588%_))
                                                '#f
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gxc#!type-subtype?
                                                       _%type267588%_
                                                       _%expr-type267595%_))
                                                    '#f
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gxc#!type-disjoint?
                                                           _%expr-type267595%_
                                                           _%type267588%_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#raise-compile-error
                                                           '"signature type mismatch"
                                                           _%stx267586%_
                                                           _%expr267587%_
                                                           _%expr-type267595%_
                                                           _%type267588%_))
                                                        '#f)))))))))
                        '#f))))
            '#f)))
    (define gxc#!constructor::optimize-call
      (lambda (_%self267400%_ _%ctx267401%_ _%stx267402%_ _%args267403%_)
        (let* ((_%self267406%_ _%self267400%_)
               (_%klass267416%_
                (let ((__tmp270733
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self267406%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx267402%_ __tmp270733)))
               (_%fields267418%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass267416%_
                           '5
                           '#f
                           '#f))))
               (_%args267424%_
                (map (lambda (_%$%g267419267421%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx267401%_ _%$%g267419267421%_)))
                     _%args267403%_))
               (_%inline-make-object267426%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self267406%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons '##structure '()))
                                              (cons (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self267406%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields267418%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass267429%_ _%klass267416%_)
               (_%$e267443%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass267429%_ '6 '#f '#f))))
          (if _%$e267443%_
              (let ((_%$obj267448%_
                     (let ((__tmp270734
                            (let () (declare (not safe)) (##gensym '__obj))))
                       (declare (not safe))
                       (make-symbol__0 __tmp270734)))
                    (_%ctor-impl267449%_
                     (let ()
                       (declare (not safe))
                       (gxc#!class-lookup-method
                        _%klass267429%_
                        _%$e267443%_))))
                (let ((__tmp270735
                       (cons '%#let-values
                             (cons (cons (cons (cons _%$obj267448%_ '())
                                               (cons _%inline-make-object267426%_
                                                     '()))
                                         '())
                                   (cons (cons '%#begin
                                               (cons (if _%ctor-impl267449%_
                                                         (let ((__tmp270736
                                                                (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref
                                          (cons _%ctor-impl267449%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj267448%_ '()))
                                          _%args267424%_)))))
                   (declare (not safe))
                   (gxc#xform-wrap-apply
                    __tmp270736
                    _%stx267402%_
                    _%ctx267401%_))
                 (let ((_%$ctor267451%_
                        (let ((__tmp270737
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__constructor))))
                          (declare (not safe))
                          (make-symbol__0 __tmp270737))))
                   (cons '%#let-values
                         (cons (cons (cons (cons _%$ctor267451%_ '())
                                           (cons (cons '%#call
                                                       (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'direct-method-ref '()))
                     (cons (cons '%#ref
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self267406%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#ref (cons _%$obj267448%_ '()))
                                 (cons (cons '%#quote (cons _%$e267443%_ '()))
                                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons (cons '%#if
                                           (cons (cons '%#ref
                                                       (cons _%$ctor267451%_
                                                             '()))
                                                 (cons (cons '%#call
                                                             (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%$ctor267451%_ '()))
                           (cons (cons '%#ref (cons _%$obj267448%_ '()))
                                 _%args267424%_)))
               (cons (cons '%#call
                           (cons (cons '%#ref (cons 'error '()))
                                 (cons (cons '%#quote
                                             (cons '"missing constructor method implementation"
                                                   '()))
                                       (cons (cons '%#quote (cons 'class: '()))
                                             (cons (cons '%#ref
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref _%self267406%_ '1 '#f '#f))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons '%#quote
                                                               (cons 'method:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote (cons _%$e267443%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$obj267448%_ '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp270735 _%stx267402%_)))
              (let ((_%$e267453%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass267429%_
                        '10
                        '#f
                        '#f))))
                (if _%$e267453%_
                    (let* ((_%$obj267458%_
                            (let ((__tmp270738
                                   (let ()
                                     (declare (not safe))
                                     (##gensym '__obj))))
                              (declare (not safe))
                              (make-symbol__0 __tmp270738)))
                           (_%metakons267460%_
                            (let ((__tmp270739
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx267402%_
                                      _%$e267453%_))))
                              (declare (not safe))
                              (gxc#!class-lookup-method
                               __tmp270739
                               'instance-init!)))
                           (__tmp270740
                            (cons '%#let-values
                                  (cons (cons (cons (cons _%$obj267458%_ '())
                                                    (cons _%inline-make-object267426%_
                                                          '()))
                                              '())
                                        (cons (cons '%#begin
                                                    (cons (if _%metakons267460%_
                                                              (let ((__tmp270741
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons _%metakons267460%_ '()))
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self267406%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$obj267458%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%args267424%_))))))
                        (declare (not safe))
                        (gxc#xform-wrap-apply
                         __tmp270741
                         _%stx267402%_
                         _%ctx267401%_))
                      (cons '%#call
                            (cons (cons '%#ref (cons 'call-method '()))
                                  (cons (cons '%#ref
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self267406%_
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '()))
                                        (cons (cons '%#quote
                                                    (cons 'instance-init! '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj267458%_
                                                                '()))
                                                    _%args267424%_))))))
                  (cons (cons '%#ref (cons _%$obj267458%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp270740 _%stx267402%_))
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass267429%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp270742
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args267424%_))))
                              (declare (not safe))
                              (##fx= __tmp270742 _%fields267418%_))
                            (let ((__tmp270743
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self267406%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons '##structure '()))
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self267406%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args267424%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp270743
                               _%stx267402%_))
                            (let ((__tmp270745
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self267406%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp270744
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass267429%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx267402%_
                               __tmp270745
                               __tmp270744)))
                        (let ((_%$obj267465%_
                               (let ((__tmp270746
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp270746))))
                          (let _%lp267467%_ ((_%rest267469%_ _%args267424%_)
                                             (_%initializers267470%_ '()))
                            (let* ((_%__stx270176270177%_ _%rest267469%_)
                                   (_%$%g267474267495%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx270176270177%_)))))
                              (let ((_%__kont270178270179%_
                                     (lambda (_%$%g267476267549%_
                                              _%$%g267477267550%_
                                              _%$%g267478267551%_)
                                       (let* ((_%slot267578%_
                                               (let ((__tmp270747
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%g267478267551%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp270747)))
                                              (_%off267580%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass267429%_
                                                  _%slot267578%_))))
                                         (if _%off267580%_
                                             (_%lp267467%_
                                              _%$%g267476267549%_
                                              (cons (cons _%off267580%_
                                                          _%$%g267477267550%_)
                                                    _%initializers267470%_))
                                             (let ((__tmp270748
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self267406%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx267402%_
                                                __tmp270748
                                                _%slot267578%_))))))
                                    (_%__kont270180270181%_
                                     (lambda ()
                                       (let ((__tmp270749
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj267465%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object267426%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp270751
                                     (let ((__tmp270752
                                            (lambda (_%i267509%_ _%r267510%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self267406%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i267509%_) '()))
                              (cons (cons '%#ref (cons _%$obj267465%_ '()))
                                    (cons (cdr _%i267509%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r267510%_))))
                                       (declare (not safe))
                                       (foldl__0
                                        __tmp270752
                                        '()
                                        _%initializers267470%_)))
                                    (__tmp270750
                                     (cons (cons '%#ref
                                                 (cons _%$obj267465%_ '()))
                                           '())))
                                (declare (not safe))
                                (##append __tmp270751 __tmp270750)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp270749
                                          _%stx267402%_))))
                                    (_%__kont270182270183%_
                                     (lambda ()
                                       (let ((__tmp270753
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj267465%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object267426%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj267465%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args267424%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj267465%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp270753
                                          _%stx267402%_)))))
                                (let* ((_%$%g267472267512%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx270176270177%_))
                                              (_%__kont270180270181%_)
                                              (_%__kont270182270183%_))))
                                       (_%__match270213270214%_
                                        (lambda (_%$%e267479267517%_
                                                 _%$%hd267480267520%_
                                                 _%$%tl267481267522%_
                                                 _%$%e267482267525%_
                                                 _%$%hd267483267528%_
                                                 _%$%tl267484267530%_
                                                 _%$%e267485267533%_
                                                 _%$%hd267486267536%_
                                                 _%$%tl267487267538%_
                                                 _%$%e267488267541%_
                                                 _%$%hd267489267544%_
                                                 _%$%tl267490267546%_)
                                          (let ((_%$%g267476267549%_
                                                 _%$%tl267490267546%_)
                                                (_%$%g267477267550%_
                                                 _%$%hd267489267544%_)
                                                (_%$%g267478267551%_
                                                 _%$%hd267486267536%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%$%g267478267551%_))
                                                (_%__kont270178270179%_
                                                 _%$%g267476267549%_
                                                 _%$%g267477267550%_
                                                 _%$%g267478267551%_)
                                                (_%__kont270182270183%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx270176270177%_))
                                      (let ((_%$%e267479267517%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx270176270177%_))))
                                        (let ((_%$%tl267481267522%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e267479267517%_)))
                                              (_%$%hd267480267520%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e267479267517%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%hd267480267520%_))
                                              (let ((_%$%e267482267525%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd267480267520%_))))
                                                (let ((_%$%tl267484267530%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e267482267525%_)))
                                                      (_%$%hd267483267528%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e267482267525%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%$%hd267483267528%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%$%hd267483267528%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl267484267530%_))
                      (let ((_%$%e267485267533%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl267484267530%_))))
                        (let ((_%$%tl267487267538%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e267485267533%_)))
                              (_%$%hd267486267536%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e267485267533%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl267487267538%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl267481267522%_))
                                  (let ((_%$%e267488267541%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl267481267522%_))))
                                    (let ((_%$%tl267490267546%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e267488267541%_)))
                                          (_%$%hd267489267544%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e267488267541%_))))
                                      (_%__match270213270214%_
                                       _%$%e267479267517%_
                                       _%$%hd267480267520%_
                                       _%$%tl267481267522%_
                                       _%$%e267482267525%_
                                       _%$%hd267483267528%_
                                       _%$%tl267484267530%_
                                       _%$%e267485267533%_
                                       _%$%hd267486267536%_
                                       _%$%tl267487267538%_
                                       _%$%e267488267541%_
                                       _%$%hd267489267544%_
                                       _%$%tl267490267546%_)))
                                  (_%__kont270182270183%_))
                              (_%__kont270182270183%_))))
                      (_%__kont270182270183%_))
                  (_%__kont270182270183%_))
              (_%__kont270182270183%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont270182270183%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g267472267512%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::check-arguments
      (lambda (_%self267262%_ _%ctx267263%_ _%stx267264%_ _%args267265%_)
        (let ((_%self267268%_ _%self267262%_))
          (if (let ()
                (declare (not safe))
                (##unchecked-structure-ref _%self267268%_ '4 '#f '#f))
              (gxc#!procedure::check-arguments
               _%self267268%_
               _%ctx267263%_
               _%stx267264%_
               _%args267265%_)
              '#t))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!accessor::t
       'check-arguments
       gxc#!accessor::check-arguments
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self267045%_ _%ctx267046%_ _%stx267047%_ _%args267048%_)
        (let* ((_%self267051%_ _%self267045%_)
               (_%arguments-ok?267061%_
                (let ((__method270675
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self267051%_ 'check-arguments))))
                  (if __method270675
                      (let ()
                        (declare (not safe))
                        (__method270675
                         _%self267051%_
                         _%ctx267046%_
                         _%stx267047%_
                         _%args267048%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self267051%_
                                 'check-arguments))
                        '#!void))))
               (_%$%g267063267073%_
                (lambda (_%$%g267064267070%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g267064267070%_))))
               (_%$%g267062267137%_
                (lambda (_%$%g267064267076%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g267064267076%_))
                      (let ((_%$%e267066267078%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g267064267076%_))))
                        (let ((_%$%hd267067267081%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e267066267078%_)))
                              (_%$%tl267068267083%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e267066267078%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl267068267083%_))
                              (let* ((_%klass267099%_
                                      (let ((__tmp270754
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self267051%_
                                                '1
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx267047%_
                                         __tmp270754)))
                                     (_%field267101%_
                                      (let ((__tmp270755
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self267051%_
                                                '3
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#!class-slot->field-offset
                                         _%klass267099%_
                                         __tmp270755)))
                                     (_%object267103%_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%ctx267046%_
                                         _%$%hd267067267081%_)))
                                     (_%klass267106%_ _%klass267099%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass267106%_
                                       '8
                                       '#f
                                       '#f))
                                    (let ((__tmp270756
                                           (cons (if (or _%arguments-ok?267061%_
                                                         (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%self267051%_
                         '4
                         '#f
                         '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '%#struct-unchecked-ref
                                                     '%#struct-direct-ref)
                                                 (cons (cons '%#ref
                                                             (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%self267051%_
                              '1
                              '#f
                              '#f))
                           '()))
               (cons (cons '%#quote (cons _%field267101%_ '()))
                     (cons _%object267103%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp270756
                                       _%stx267047%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass267106%_
                                           '7
                                           '#f
                                           '#f))
                                        (let ((__tmp270757
                                               (cons (if (or _%arguments-ok?267061%_
                                                             (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self267051%_
                             '4
                             '#f
                             '#f))))
                 '%#struct-unchecked-ref
                 '%#struct-ref)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%self267051%_
                                  '1
                                  '#f
                                  '#f))
                               '()))
                   (cons (cons '%#quote (cons _%field267101%_ '()))
                         (cons _%object267103%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp270757
                                           _%stx267047%_))
                                        (let ((_%$e267125%_
                                               (let ((__tmp270758
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self267051%_
                                                         '3
                                                         '#f
                                                         '#f))))
                                                 (declare (not safe))
                                                 (gxc#!class-slot-find-struct
                                                  _%klass267106%_
                                                  __tmp270758))))
                                          (if _%$e267125%_
                                              (let ((__tmp270759
                                                     (cons (if (or _%arguments-ok?267061%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (not (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self267051%_
                                   '4
                                   '#f
                                   '#f))))
                       '%#struct-unchecked-ref
                       '%#struct-ref)
                   (cons (cons '%#ref
                               (cons (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self267051%_
                                        '1
                                        '#f
                                        '#f))
                                     '()))
                         (cons (cons '%#quote (cons _%field267101%_ '()))
                               (cons _%object267103%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp270759
                                                 _%stx267047%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self267051%_
                                                     '4
                                                     '#f
                                                     '#f))
                                                  (let ((__tmp270760
                                                         (let ((_%$obj267134%_
                                                                (let ((__tmp270761
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp270761))))
                   (cons '%#let-values
                         (cons (cons (cons (cons _%$obj267134%_ '())
                                           (cons _%object267103%_ '()))
                                     '())
                               (cons (cons '%#if
                                           (cons (cons '%#struct-direct-instance?
                                                       (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass267106%_
                                    '1
                                    '#f
                                    '#f))
                                 '()))
                     (cons (cons '%#ref (cons _%$obj267134%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons '%#struct-unchecked-ref
                                                             (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self267051%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#quote (cons _%field267101%_ '()))
                                 (cons (cons '%#ref (cons _%$obj267134%_ '()))
                                       '()))))
               (cons (if _%arguments-ok?267061%_
                         (cons '%#call
                               (cons (cons '%#ref
                                           (cons 'unchecked-slot-ref '()))
                                     (cons (cons '%#ref
                                                 (cons _%$obj267134%_ '()))
                                           (cons (cons '%#quote
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self267051%_ '3 '#f '#f))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'class-slot-ref '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self267051%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#ref
                                                       (cons _%$obj267134%_
                                                             '()))
                                                 (cons (cons '%#quote
                                                             (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%self267051%_
                              '3
                              '#f
                              '#f))
                           '()))
               '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp270760
                                                     _%stx267047%_))
                                                  (let ((__tmp270762
                                                         (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'unchecked-slot-ref '()))
                             (cons _%object267103%_
                                   (cons (cons '%#quote
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self267051%_
                                                        '3
                                                        '#f
                                                        '#f))
                                                     '()))
                                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp270762
                                                     _%stx267047%_))))))))
                              (_%$%g267063267073%_ _%$%g267064267076%_))))
                      (_%$%g267063267073%_ _%$%g267064267076%_)))))
          (_%$%g267062267137%_ _%args267048%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass269750 __method-table269751)
        (let ((__check-arguments269752
               (let ((__tmp270763
                      (lambda ()
                        (let ((__method269753
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table269751
                                  'check-arguments
                                  '#f))))
                          (if __method269753
                              __method269753
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp270763)))
              (__slot269754
               (let ((__slot269755
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass269750 'slot))))
                 (if __slot269755
                     __slot269755
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self267045%_ _%ctx267046%_ _%stx267047%_ _%args267048%_)
            (let* ((_%self267051%_ _%self267045%_)
                   (_%arguments-ok?267061%_
                    ((force __check-arguments269752)
                     _%self267051%_
                     _%ctx267046%_
                     _%stx267047%_
                     _%args267048%_))
                   (_%$%g267063267073%_
                    (lambda (_%$%g267064267070%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g267064267070%_))))
                   (_%$%g267062267137%_
                    (lambda (_%$%g267064267076%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%g267064267076%_))
                          (let ((_%$%e267066267078%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%g267064267076%_))))
                            (let ((_%$%hd267067267081%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e267066267078%_)))
                                  (_%$%tl267068267083%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e267066267078%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl267068267083%_))
                                  (let* ((_%klass267099%_
                                          (let ((__tmp270764
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self267051%_
                                                    '1
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             _%stx267047%_
                                             __tmp270764)))
                                         (_%field267101%_
                                          (let ((__tmp270765
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self267051%_
                                                    '3
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (gxc#!class-slot->field-offset
                                             _%klass267099%_
                                             __tmp270765)))
                                         (_%object267103%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%ctx267046%_
                                             _%$%hd267067267081%_)))
                                         (_%klass267106%_ _%klass267099%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass267106%_
                                           '8
                                           '#f
                                           '#f))
                                        (let ((__tmp270766
                                               (cons (if (or _%arguments-ok?267061%_
                                                             (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self267051%_
                             '4
                             '#f
                             '#f))))
                 '%#struct-unchecked-ref
                 '%#struct-direct-ref)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%self267051%_
                                  '1
                                  '#f
                                  '#f))
                               '()))
                   (cons (cons '%#quote (cons _%field267101%_ '()))
                         (cons _%object267103%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp270766
                                           _%stx267047%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass267106%_
                                               '7
                                               '#f
                                               '#f))
                                            (let ((__tmp270767
                                                   (cons (if (or _%arguments-ok?267061%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self267051%_
                                 '4
                                 '#f
                                 '#f))))
                     '%#struct-unchecked-ref
                     '%#struct-ref)
                 (cons (cons '%#ref
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self267051%_
                                      '1
                                      '#f
                                      '#f))
                                   '()))
                       (cons (cons '%#quote (cons _%field267101%_ '()))
                             (cons _%object267103%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp270767
                                               _%stx267047%_))
                                            (let ((_%$e267125%_
                                                   (let ((__tmp270768
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%self267051%_
                                                             '3
                                                             '#f
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#!class-slot-find-struct
                                                      _%klass267106%_
                                                      __tmp270768))))
                                              (if _%$e267125%_
                                                  (let ((__tmp270769
                                                         (cons (if (or _%arguments-ok?267061%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (not (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self267051%_
                                       '4
                                       '#f
                                       '#f))))
                           '%#struct-unchecked-ref
                           '%#struct-ref)
                       (cons (cons '%#ref
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self267051%_
                                            '1
                                            '#f
                                            '#f))
                                         '()))
                             (cons (cons '%#quote (cons _%field267101%_ '()))
                                   (cons _%object267103%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp270769
                                                     _%stx267047%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self267051%_
                                                         '4
                                                         '#f
                                                         '#f))
                                                      (let ((__tmp270770
                                                             (let ((_%$obj267134%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp270771
                                   (let ()
                                     (declare (not safe))
                                     (##gensym '__obj))))
                              (declare (not safe))
                              (make-symbol__0 __tmp270771))))
                       (cons '%#let-values
                             (cons (cons (cons (cons _%$obj267134%_ '())
                                               (cons _%object267103%_ '()))
                                         '())
                                   (cons (cons '%#if
                                               (cons (cons '%#struct-direct-instance?
                                                           (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%klass267106%_
                                        '1
                                        '#f
                                        '#f))
                                     '()))
                         (cons (cons '%#ref (cons _%$obj267134%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#struct-unchecked-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self267051%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field267101%_ '()))
                                     (cons (cons '%#ref
                                                 (cons _%$obj267134%_ '()))
                                           '()))))
                   (cons (if _%arguments-ok?267061%_
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons 'unchecked-slot-ref '()))
                                         (cons (cons '%#ref
                                                     (cons _%$obj267134%_ '()))
                                               (cons (cons '%#quote
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self267051%_
                            __slot269754
                            '#f
                            '#f))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons 'class-slot-ref '()))
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self267051%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$obj267134%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%self267051%_
                                  '3
                                  '#f
                                  '#f))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp270770 _%stx267047%_))
              (let ((__tmp270772
                     (cons '%#call
                           (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                 (cons _%object267103%_
                                       (cons (cons '%#quote
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self267051%_
                                                            '3
                                                            '#f
                                                            '#f))
                                                         '()))
                                             '()))))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp270772 _%stx267047%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%$%g267063267073%_ _%$%g267064267076%_))))
                          (_%$%g267063267073%_ _%$%g267064267076%_)))))
              (_%$%g267062267137%_ _%args267048%_))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!accessor::optimize-call
       gxc#!accessor::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!accessor::t
       'optimize-call
       gxc#!accessor::optimize-call
       '#f))
    (define gxc#!mutator::optimize-call
      (lambda (_%self266809%_ _%ctx266810%_ _%stx266811%_ _%args266812%_)
        (let* ((_%self266815%_ _%self266809%_)
               (_%arguments-ok?266825%_
                (let ((__method270676
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self266815%_ 'check-arguments))))
                  (if __method270676
                      (let ()
                        (declare (not safe))
                        (__method270676
                         _%self266815%_
                         _%ctx266810%_
                         _%stx266811%_
                         _%args266812%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self266815%_
                                 'check-arguments))
                        '#!void))))
               (_%$%g266827266841%_
                (lambda (_%$%g266828266838%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g266828266838%_))))
               (_%$%g266826266920%_
                (lambda (_%$%g266828266844%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g266828266844%_))
                      (let ((_%$%e266831266846%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g266828266844%_))))
                        (let ((_%$%hd266832266849%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e266831266846%_)))
                              (_%$%tl266833266851%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e266831266846%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl266833266851%_))
                              (let ((_%$%e266834266854%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl266833266851%_))))
                                (let ((_%$%hd266835266857%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e266834266854%_)))
                                      (_%$%tl266836266859%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e266834266854%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl266836266859%_))
                                      (let* ((_%klass266879%_
                                              (let ((__tmp270773
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self266815%_
                                                        '1
                                                        '#f
                                                        '#f))))
                                                (declare (not safe))
                                                (gxc#optimizer-resolve-class
                                                 _%stx266811%_
                                                 __tmp270773)))
                                             (_%field266881%_
                                              (let ((__tmp270774
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self266815%_
                                                        '3
                                                        '#f
                                                        '#f))))
                                                (declare (not safe))
                                                (gxc#!class-slot->field-offset
                                                 _%klass266879%_
                                                 __tmp270774)))
                                             (_%object266883%_
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%ctx266810%_
                                                 _%$%hd266832266849%_)))
                                             (_%value266885%_
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%ctx266810%_
                                                 _%$%hd266835266857%_)))
                                             (_%klass266888%_ _%klass266879%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass266888%_
                                               '8
                                               '#f
                                               '#f))
                                            (let ((__tmp270775
                                                   (cons (if (or _%arguments-ok?266825%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self266815%_
                                 '4
                                 '#f
                                 '#f))))
                     '%#struct-unchecked-set!
                     '%#struct-direct-set!)
                 (cons (cons '%#ref
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self266815%_
                                      '1
                                      '#f
                                      '#f))
                                   '()))
                       (cons (cons '%#quote (cons _%field266881%_ '()))
                             (cons _%object266883%_
                                   (cons _%value266885%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp270775
                                               _%stx266811%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass266888%_
                                                   '7
                                                   '#f
                                                   '#f))
                                                (let ((__tmp270776
                                                       (cons (if (or _%arguments-ok?266825%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (not (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self266815%_
                                     '4
                                     '#f
                                     '#f))))
                         '%#struct-unchecked-set!
                         '%#struct-set!)
                     (cons (cons '%#ref
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self266815%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#quote (cons _%field266881%_ '()))
                                 (cons _%object266883%_
                                       (cons _%value266885%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp270776
                                                   _%stx266811%_))
                                                (let ((_%$e266908%_
                                                       (let ((__tmp270777
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%self266815%_
                         '3
                         '#f
                         '#f))))
                 (declare (not safe))
                 (gxc#!class-slot-find-struct _%klass266888%_ __tmp270777))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if _%$e266908%_
                                                      (let ((__tmp270778
                                                             (cons (if (or _%arguments-ok?266825%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (not (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self266815%_
                                           '3
                                           '#f
                                           '#f))))
                               '%#struct-unchecked-set!
                               '%#struct-set!)
                           (cons (cons '%#ref
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self266815%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons (cons '%#quote
                                             (cons _%field266881%_ '()))
                                       (cons _%object266883%_
                                             (cons _%value266885%_ '())))))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp270778 _%stx266811%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%self266815%_ '4 '#f '#f))
                  (let ((__tmp270779
                         (let ((_%$obj266917%_
                                (let ((__tmp270780
                                       (let ()
                                         (declare (not safe))
                                         (##gensym '__obj))))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp270780))))
                           (cons '%#let-values
                                 (cons (cons (cons (cons _%$obj266917%_ '())
                                                   (cons _%object266883%_ '()))
                                             '())
                                       (cons (cons '%#if
                                                   (cons (cons '%#struct-direct-instance?
                                                               (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%klass266888%_
                                            '1
                                            '#f
                                            '#f))
                                         '()))
                             (cons (cons '%#ref (cons _%$obj266917%_ '()))
                                   '())))
                 (cons (cons '%#struct-unchecked-set!
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self266815%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field266881%_ '()))
                                         (cons (cons '%#ref
                                                     (cons _%$obj266917%_ '()))
                                               (cons _%value266885%_ '())))))
                       (cons (if _%arguments-ok?266825%_
                                 (cons '%#call
                                       (cons (cons '%#ref
                                                   (cons 'unchecked-slot-set!
                                                         '()))
                                             (cons (cons '%#ref
                                                         (cons _%$obj266917%_
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self266815%_
                                '3
                                '#f
                                '#f))
                             '()))
                 (cons _%value266885%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (cons '%#call
                                       (cons (cons '%#ref
                                                   (cons 'class-slot-set! '()))
                                             (cons (cons '%#ref
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref _%self266815%_ '1 '#f '#f))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons '%#ref
                                                               (cons _%$obj266917%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self266815%_
                                      '3
                                      '#f
                                      '#f))
                                   '()))
                       (cons _%value266885%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp270779 _%stx266811%_))
                  (let ((__tmp270781
                         (cons '%#call
                               (cons (cons '%#ref
                                           (cons 'unchecked-slot-set! '()))
                                     (cons _%object266883%_
                                           (cons (cons '%#quote
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self266815%_ '3 '#f '#f))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%value266885%_
                                                       '())))))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp270781 _%stx266811%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g266827266841%_
                                       _%$%g266828266844%_))))
                              (_%$%g266827266841%_ _%$%g266828266844%_))))
                      (_%$%g266827266841%_ _%$%g266828266844%_)))))
          (_%$%g266826266920%_ _%args266812%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass269756 __method-table269757)
        (let ((__check-arguments269758
               (let ((__tmp270782
                      (lambda ()
                        (let ((__method269759
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table269757
                                  'check-arguments
                                  '#f))))
                          (if __method269759
                              __method269759
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp270782))))
          (lambda (_%self266809%_ _%ctx266810%_ _%stx266811%_ _%args266812%_)
            (let* ((_%self266815%_ _%self266809%_)
                   (_%arguments-ok?266825%_
                    ((force __check-arguments269758)
                     _%self266815%_
                     _%ctx266810%_
                     _%stx266811%_
                     _%args266812%_))
                   (_%$%g266827266841%_
                    (lambda (_%$%g266828266838%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g266828266838%_))))
                   (_%$%g266826266920%_
                    (lambda (_%$%g266828266844%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%g266828266844%_))
                          (let ((_%$%e266831266846%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%g266828266844%_))))
                            (let ((_%$%hd266832266849%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e266831266846%_)))
                                  (_%$%tl266833266851%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e266831266846%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl266833266851%_))
                                  (let ((_%$%e266834266854%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl266833266851%_))))
                                    (let ((_%$%hd266835266857%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e266834266854%_)))
                                          (_%$%tl266836266859%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e266834266854%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl266836266859%_))
                                          (let* ((_%klass266879%_
                                                  (let ((__tmp270783
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self266815%_
                                                            '1
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#optimizer-resolve-class
                                                     _%stx266811%_
                                                     __tmp270783)))
                                                 (_%field266881%_
                                                  (let ((__tmp270784
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self266815%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot->field-offset
                                                     _%klass266879%_
                                                     __tmp270784)))
                                                 (_%object266883%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%ctx266810%_
                                                     _%$%hd266832266849%_)))
                                                 (_%value266885%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%ctx266810%_
                                                     _%$%hd266835266857%_)))
                                                 (_%klass266888%_
                                                  _%klass266879%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass266888%_
                                                   '8
                                                   '#f
                                                   '#f))
                                                (let ((__tmp270785
                                                       (cons (if (or _%arguments-ok?266825%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (not (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self266815%_
                                     '4
                                     '#f
                                     '#f))))
                         '%#struct-unchecked-set!
                         '%#struct-direct-set!)
                     (cons (cons '%#ref
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self266815%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#quote (cons _%field266881%_ '()))
                                 (cons _%object266883%_
                                       (cons _%value266885%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp270785
                                                   _%stx266811%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%klass266888%_
                                                       '7
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp270786
                                                           (cons (if (or _%arguments-ok?266825%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self266815%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-set!
                             '%#struct-set!)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self266815%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field266881%_ '()))
                                     (cons _%object266883%_
                                           (cons _%value266885%_ '())))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp270786 _%stx266811%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$e266908%_
                                                           (let ((__tmp270787
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self266815%_
                             '3
                             '#f
                             '#f))))
                     (declare (not safe))
                     (gxc#!class-slot-find-struct
                      _%klass266888%_
                      __tmp270787))))
              (if _%$e266908%_
                  (let ((__tmp270788
                         (cons (if (or _%arguments-ok?266825%_
                                       (not (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self266815%_
                                               '3
                                               '#f
                                               '#f))))
                                   '%#struct-unchecked-set!
                                   '%#struct-set!)
                               (cons (cons '%#ref
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self266815%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 '()))
                                     (cons (cons '%#quote
                                                 (cons _%field266881%_ '()))
                                           (cons _%object266883%_
                                                 (cons _%value266885%_
                                                       '())))))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp270788 _%stx266811%_))
                  (if (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self266815%_ '4 '#f '#f))
                      (let ((__tmp270789
                             (let ((_%$obj266917%_
                                    (let ((__tmp270790
                                           (let ()
                                             (declare (not safe))
                                             (##gensym '__obj))))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp270790))))
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj266917%_
                                                             '())
                                                       (cons _%object266883%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#if
                                                       (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons '%#quote
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%klass266888%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons (cons '%#ref (cons _%$obj266917%_ '()))
                                       '())))
                     (cons (cons '%#struct-unchecked-set!
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self266815%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field266881%_ '()))
                                             (cons (cons '%#ref
                                                         (cons _%$obj266917%_
                                                               '()))
                                                   (cons _%value266885%_
                                                         '())))))
                           (cons (if _%arguments-ok?266825%_
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'unchecked-slot-set!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj266917%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons '%#quote
                           (cons (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self266815%_
                                    '3
                                    '#f
                                    '#f))
                                 '()))
                     (cons _%value266885%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'class-slot-set!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%self266815%_
                              '1
                              '#f
                              '#f))
                           '()))
               (cons (cons '%#ref (cons _%$obj266917%_ '()))
                     (cons (cons '%#quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self266815%_
                                          '3
                                          '#f
                                          '#f))
                                       '()))
                           (cons _%value266885%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp270789 _%stx266811%_))
                      (let ((__tmp270791
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons 'unchecked-slot-set! '()))
                                         (cons _%object266883%_
                                               (cons (cons '%#quote
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self266815%_
                            '3
                            '#f
                            '#f))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%value266885%_
                                                           '())))))))
                        (declare (not safe))
                        (gxc#xform-wrap-source
                         __tmp270791
                         _%stx266811%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g266827266841%_
                                           _%$%g266828266844%_))))
                                  (_%$%g266827266841%_ _%$%g266828266844%_))))
                          (_%$%g266827266841%_ _%$%g266828266844%_)))))
              (_%$%g266826266920%_ _%args266812%_))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!mutator::optimize-call
       gxc#!mutator::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!mutator::t
       'optimize-call
       gxc#!mutator::optimize-call
       '#f))
    (define gxc#!lambda::optimize-call
      (lambda (_%self266625%_ _%ctx266626%_ _%stx266627%_ _%args266628%_)
        (let* ((_%self266631%_ _%self266625%_)
               (_%$%self266640266650%_ _%self266631%_)
               (_%$%E266642266653%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%self266640266650%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%$%K266643266663%_
                (lambda (_%inline266656%_ _%dispatch266657%_ _%arity266658%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self266631%_
                         _%args266628%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx266627%_
                         _%arity266658%_)))
                  (if _%inline266656%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp270792 (_%inline266656%_ _%stx266627%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp270792
                           _%stx266627%_
                           _%ctx266626%_)))
                      (if (and _%dispatch266657%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch266657%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch266657%_))
                            (let ((__tmp270793
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch266657%_
                                                           '()))
                                               _%args266628%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp270793
                               _%stx266627%_
                               _%ctx266626%_)))
                          (gxc#!procedure::optimize-call
                           _%self266631%_
                           _%ctx266626%_
                           _%stx266627%_
                           _%args266628%_)))))
               (_%$%e266644266666%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self266640266650%_
                   '1
                   '#f
                   '#f)))
               (_%$%e266645266669%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self266640266650%_
                   '2
                   '#f
                   '#f)))
               (_%$%e266646266672%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self266640266650%_
                   '3
                   '#f
                   '#f)))
               (_%arity266675%_ _%$%e266646266672%_)
               (_%$%e266647266677%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self266640266650%_
                   '4
                   '#f
                   '#f)))
               (_%dispatch266680%_ _%$%e266647266677%_)
               (_%$%e266648266682%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self266640266650%_
                   '5
                   '#f
                   '#f)))
               (_%inline266685%_ _%$%e266648266682%_))
          (_%$%K266643266663%_
           _%inline266685%_
           _%dispatch266680%_
           _%arity266675%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self266477%_ _%ctx266478%_ _%stx266479%_ _%args266480%_)
        (let* ((_%self266483%_ _%self266477%_)
               (_%$e266497%_
                (let ((__tmp270795
                       (lambda (_%$%g266492266494%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%$%g266492266494%_
                            _%args266480%_))))
                      (__tmp270794
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self266483%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp270795 __tmp270794))))
          (if _%$e266497%_
              (let ((__method270677
                     (let ()
                       (declare (not safe))
                       (__method-ref _%$e266497%_ 'optimize-call))))
                (if __method270677
                    (let ()
                      (declare (not safe))
                      (__method270677
                       _%$e266497%_
                       _%ctx266478%_
                       _%stx266479%_
                       _%args266480%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method" _%$e266497%_ 'optimize-call))
                      '#!void)))
              (let ((__tmp270796
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self266483%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx266479%_
                 __tmp270796))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self266218%_ _%ctx266219%_ _%stx266220%_ _%args266221%_)
        (let* ((_%self266224%_ _%self266218%_)
               (_%$%self266233266242%_ _%self266224%_)
               (_%$%E266235266245%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%self266233266242%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%$%K266236266336%_
                (lambda (_%dispatch266248%_ _%table266249%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch266248%_))
                      (let* ((_%$%g266250266260%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch266248%_)))
                             (_%$%else266252266268%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch266248%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx266219%_
                                   _%stx266220%_))))
                             (_%$%K266254266317%_
                              (lambda (_%main266271%_ _%keys266272%_)
                                (let ((_g270797_
                                       (gxc#!kw-lambda-split-args
                                        _%stx266220%_
                                        _%args266221%_)))
                                  (begin
                                    (let ((_g270798_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g270797_)
                                                 (##values-length _g270797_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g270798_ 2)))
                                          (error "Context expects 2 values"
                                                 _g270798_)))
                                    (let ((_%pargs266274%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g270797_ 0)))
                                          (_%kwargs266275%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g270797_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main266271%_))
                                        (if _%table266249%_
                                            (let ((_%xargs266283%_
                                                   (map (lambda (_%key266277%_)
                                                          (let ((_%$e266279%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key266277%_ _%kwargs266275%_))))
                    (if _%$e266279%_ _%$e266279%_ '(%#ref absent-value))))
                _%keys266272%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw266285%_)
                                                 (if (memq (car _%kw266285%_)
                                                           _%keys266272%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx266220%_
                                                        _%keys266272%_
                                                        _%kw266285%_))))
                                               _%kwargs266275%_)
                                              (let ((__tmp270799
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main266271%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (append _%xargs266283%_ _%pargs266274%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp270799
                                                 _%stx266220%_
                                                 _%ctx266219%_)))
                                            (let* ((_%kwt266287%_
                                                    (let ((__tmp270800
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp270800)))
                                                   (_%kwvars266291%_
                                                    (map (lambda (_%_266289%_)
                                                           (let ((__tmp270801
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp270801)))
                 _%kwargs266275%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind266296%_
                                                    (map (lambda (_%kw266293%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar266294%_)
                   (cons (cons _%kwvar266294%_ '())
                         (cons (cdr _%kw266293%_) '())))
                 _%kwargs266275%_
                 _%kwvars266291%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset266301%_
                                                    (map (lambda (_%kw266298%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar266299%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt266287%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw266298%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar266299%_
                                                             '()))
                                                 '()))))))
                 _%kwargs266275%_
                 _%kwvars266291%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs266306%_
                                                    (map (lambda (_%kw266303%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar266304%_)
                   (cons (car _%kw266303%_)
                         (cons '%#ref (cons _%kwvar266304%_ '()))))
                 _%kwargs266275%_
                 _%kwvars266291%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs266314%_
                                                    (map (lambda (_%key266308%_)
                                                           (let ((_%$e266310%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key266308%_ _%xkwargs266306%_))))
                     (if _%$e266310%_ _%$e266310%_ '(%#ref absent-value))))
                 _%keys266272%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp270802
                                                    (cons '%#let-values
                                                          (cons _%kwbind266296%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt266287%_ '())
                                                      (cons (let ((__tmp270803
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs266275%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp270803 _%stx266220%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp270804
                                                             (cons (let ((__tmp270805
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main266271%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt266287%_
                                                                '()))
                                                    (append _%xargs266314%_
                                                            _%pargs266274%_))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp270805 _%stx266220%_))
                           '())))
                (declare (not safe))
                (##append _%kwset266301%_ __tmp270804)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp270802
                                               _%stx266220%_
                                               _%ctx266219%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%$%g266250266260%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%$%e266255266320%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%g266250266260%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%$%e266256266323%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%g266250266260%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%$%e266257266326%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%g266250266260%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys266329%_ _%$%e266257266326%_)
                                   (_%$%e266258266331%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%g266250266260%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main266334%_ _%$%e266258266331%_))
                              (_%$%K266254266317%_
                               _%main266334%_
                               _%keys266329%_))
                            (_%$%else266252266268%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx266219%_ _%stx266220%_)))))
               (_%$%e266237266339%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self266233266242%_
                   '1
                   '#f
                   '#f)))
               (_%$%e266238266342%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self266233266242%_
                   '2
                   '#f
                   '#f)))
               (_%$%e266239266345%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self266233266242%_
                   '3
                   '#f
                   '#f)))
               (_%table266348%_ _%$%e266239266345%_)
               (_%$%e266240266350%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self266233266242%_
                   '4
                   '#f
                   '#f)))
               (_%dispatch266353%_ _%$%e266240266350%_))
          (_%$%K266236266336%_ _%dispatch266353%_ _%table266348%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx265831%_ _%args265832%_)
        (let _%lp265834%_ ((_%rest265836%_ _%args265832%_)
                           (_%pargs265837%_ '())
                           (_%kwargs265838%_ '()))
          (let* ((_%__stx270218270219%_ _%rest265836%_)
                 (_%$%g265844265896%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx270218270219%_)))))
            (let ((_%__kont270220270221%_
                   (lambda (_%$%g265846266075%_ _%$%g265847266076%_)
                     (_%lp265834%_
                      _%$%g265846266075%_
                      (cons _%$%g265847266076%_ _%pargs265837%_)
                      _%kwargs265838%_)))
                  (_%__kont270222270223%_
                   (lambda (_%$%g265861266021%_)
                     (values (let ()
                               (declare (not safe))
                               (foldl__0
                                cons
                                _%$%g265861266021%_
                                _%pargs265837%_))
                             (reverse _%kwargs265838%_))))
                  (_%__kont270224270225%_
                   (lambda (_%$%g265872265968%_
                            _%$%g265873265969%_
                            _%$%g265874265970%_)
                     (let ((_%kw265987%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%g265874265970%_))))
                       (if (assq _%kw265987%_ _%kwargs265838%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx265831%_
                              _%kw265987%_))
                           (_%lp265834%_
                            _%$%g265872265968%_
                            _%pargs265837%_
                            (cons (cons _%kw265987%_ _%$%g265873265969%_)
                                  _%kwargs265838%_))))))
                  (_%__kont270226270227%_
                   (lambda (_%$%g265887265916%_ _%$%g265888265917%_)
                     (_%lp265834%_
                      _%$%g265887265916%_
                      (cons _%$%g265888265917%_ _%pargs265837%_)
                      _%kwargs265838%_)))
                  (_%__kont270228270229%_
                   (lambda ()
                     (values (reverse _%pargs265837%_)
                             (reverse _%kwargs265838%_)))))
              (let ((_%__match270325270326%_
                     (lambda (_%$%e265875265936%_
                              _%$%hd265876265939%_
                              _%$%tl265877265941%_
                              _%$%e265878265944%_
                              _%$%hd265879265947%_
                              _%$%tl265880265949%_
                              _%$%e265881265952%_
                              _%$%hd265882265955%_
                              _%$%tl265883265957%_
                              _%$%e265884265960%_
                              _%$%hd265885265963%_
                              _%$%tl265886265965%_)
                       (let ((_%$%g265872265968%_ _%$%tl265886265965%_)
                             (_%$%g265873265969%_ _%$%hd265885265963%_)
                             (_%$%g265874265970%_ _%$%hd265882265955%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%$%g265874265970%_))
                             (_%__kont270224270225%_
                              _%$%g265872265968%_
                              _%$%g265873265969%_
                              _%$%g265874265970%_)
                             (_%__kont270226270227%_
                              _%$%tl265877265941%_
                              _%$%hd265876265939%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx270218270219%_))
                    (let ((_%$%e265848266040%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx270218270219%_))))
                      (let ((_%$%tl265850266045%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e265848266040%_)))
                            (_%$%hd265849266043%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e265848266040%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%hd265849266043%_))
                            (let ((_%$%e265851266048%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd265849266043%_))))
                              (let ((_%$%tl265853266053%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e265851266048%_)))
                                    (_%$%hd265852266051%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e265851266048%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd265852266051%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%$%hd265852266051%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl265853266053%_))
                                            (let ((_%$%e265854266056%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl265853266053%_))))
                                              (let ((_%$%tl265856266061%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e265854266056%_)))
                                                    (_%$%hd265855266059%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e265854266056%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%$%hd265855266059%_))
                                                    (let ((_%$%e265857266064%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd265855266059%_))))
                                                      (if (equal? _%$%e265857266064%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl265856266061%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl265850266045%_))
                          (let ((_%$%e265858266067%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl265850266045%_))))
                            (let ((_%$%tl265860266072%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e265858266067%_)))
                                  (_%$%hd265859266070%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e265858266067%_))))
                              (_%__kont270220270221%_
                               _%$%tl265860266072%_
                               _%$%hd265859266070%_)))
                          (_%__kont270226270227%_
                           _%$%tl265850266045%_
                           _%$%hd265849266043%_))
                      (_%__kont270226270227%_
                       _%$%tl265850266045%_
                       _%$%hd265849266043%_))
                  (if (equal? _%$%e265857266064%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl265856266061%_))
                          (_%__kont270222270223%_ _%$%tl265850266045%_)
                          (_%__kont270226270227%_
                           _%$%tl265850266045%_
                           _%$%hd265849266043%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl265856266061%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl265850266045%_))
                              (let ((_%$%e265884265960%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl265850266045%_))))
                                (let ((_%$%tl265886265965%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e265884265960%_)))
                                      (_%$%hd265885265963%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e265884265960%_))))
                                  (_%__match270325270326%_
                                   _%$%e265848266040%_
                                   _%$%hd265849266043%_
                                   _%$%tl265850266045%_
                                   _%$%e265851266048%_
                                   _%$%hd265852266051%_
                                   _%$%tl265853266053%_
                                   _%$%e265854266056%_
                                   _%$%hd265855266059%_
                                   _%$%tl265856266061%_
                                   _%$%e265884265960%_
                                   _%$%hd265885265963%_
                                   _%$%tl265886265965%_)))
                              (_%__kont270226270227%_
                               _%$%tl265850266045%_
                               _%$%hd265849266043%_))
                          (_%__kont270226270227%_
                           _%$%tl265850266045%_
                           _%$%hd265849266043%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl265856266061%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl265850266045%_))
                                                            (let ((_%$%e265884265960%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl265850266045%_))))
                      (let ((_%$%tl265886265965%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e265884265960%_)))
                            (_%$%hd265885265963%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e265884265960%_))))
                        (_%__match270325270326%_
                         _%$%e265848266040%_
                         _%$%hd265849266043%_
                         _%$%tl265850266045%_
                         _%$%e265851266048%_
                         _%$%hd265852266051%_
                         _%$%tl265853266053%_
                         _%$%e265854266056%_
                         _%$%hd265855266059%_
                         _%$%tl265856266061%_
                         _%$%e265884265960%_
                         _%$%hd265885265963%_
                         _%$%tl265886265965%_)))
                    (_%__kont270226270227%_
                     _%$%tl265850266045%_
                     _%$%hd265849266043%_))
                (_%__kont270226270227%_
                 _%$%tl265850266045%_
                 _%$%hd265849266043%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont270226270227%_
                                             _%$%tl265850266045%_
                                             _%$%hd265849266043%_))
                                        (_%__kont270226270227%_
                                         _%$%tl265850266045%_
                                         _%$%hd265849266043%_))
                                    (_%__kont270226270227%_
                                     _%$%tl265850266045%_
                                     _%$%hd265849266043%_))))
                            (_%__kont270226270227%_
                             _%$%tl265850266045%_
                             _%$%hd265849266043%_))))
                    (_%__kont270228270229%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self265815%_ _%ctx265816%_ _%stx265817%_ _%args265818%_)
        (let ((_%self265821%_ _%self265815%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx265816%_ _%stx265817%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self265415%_ _%stx265416%_)
        (let* ((_%__stx270334270335%_ _%stx265416%_)
               (_%$%g265420265477%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx270334270335%_)))))
          (let ((_%__kont270336270337%_
                 (lambda (_%$%g265422265662%_ _%$%g265423265663%_)
                   (let ((_%type265681%_
                          (let ((__tmp270806
                                 (let ()
                                   (declare (not safe))
                                   (gxc#type-expression->datum
                                    _%$%g265423265663%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type-expression
                             _%stx265416%_
                             __tmp270806)))
                         (_%expr-type265682%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type
                             _%$%g265422265662%_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _%type265681%_
                            'gxc#!nullable-type::t))
                         (if (and _%expr-type265682%_
                                  (let ((__tmp270807
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx265416%_
                                            'false::t))))
                                    (declare (not safe))
                                    (gxc#!type-subtype?
                                     __tmp270807
                                     _%expr-type265682%_)))
                             '#!void
                             (gxc#check-expression-type!
                              _%stx265416%_
                              _%$%g265422265662%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%type265681%_
                                 '2
                                 '#f
                                 '#f))))
                         (let ((_%$e265685%_
                                (let ((__tmp270808
                                       (##structure-ref
                                        _%type265681%_
                                        '1
                                        gxc#!type::t
                                        '#f)))
                                  (declare (not safe))
                                  (##memq __tmp270808 '(t void)))))
                           (if _%$e265685%_
                               _%$e265685%_
                               (if (and _%expr-type265682%_
                                        (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%expr-type265682%_
                                           'gxc#!nullable-type::t)))
                                   (gxc#check-return-type!
                                    _%stx265416%_
                                    _%$%g265422265662%_
                                    _%type265681%_)
                                   '#!void))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1
                        _%self265415%_
                        _%$%g265422265662%_)))))
                (_%__kont270338270339%_
                 (lambda (_%$%g265439265581%_ _%$%g265440265582%_)
                   (let ((_%$e265609%_
                          (member 'return:
                                  (let ((__tmp270809
                                         (lambda (_%$%g265601265604%_
                                                  _%$%g265602265606%_)
                                           (cons _%$%g265601265604%_
                                                 _%$%g265602265606%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp270809
                                     '()
                                     _%$%g265440265582%_))
                                  gx#stx-eq?)))
                     (if _%$e265609%_
                         (let ((_%type265614%_
                                (let ((__tmp270810
                                       (let ((__tmp270811 (cadr _%$e265609%_)))
                                         (declare (not safe))
                                         (gxc#type-expression->datum
                                          __tmp270811))))
                                  (declare (not safe))
                                  (gxc#optimizer-resolve-type-expression
                                   _%stx265416%_
                                   __tmp270810))))
                           (gxc#check-return-type!
                            _%stx265416%_
                            _%$%g265439265581%_
                            _%type265614%_)
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self265415%_
                              _%$%g265439265581%_)))
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1
                            _%self265415%_
                            _%$%g265439265581%_))))))
                (_%__kont270342270343%_
                 (lambda (_%$%g265462265506%_ _%$%g265463265507%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self265415%_ _%$%g265462265506%_)))))
            (let ((_%__match270411270412%_
                   (lambda (_%$%e265441265527%_
                            _%$%hd265442265530%_
                            _%$%tl265443265532%_
                            _%$%e265444265535%_
                            _%$%hd265445265538%_
                            _%$%tl265446265540%_
                            _%$%e265447265543%_
                            _%$%hd265448265546%_
                            _%$%tl265449265548%_
                            _%__splice270340270341%_
                            _%$%target265450265551%_
                            _%$%tl265452265553%_)
                     (letrec ((_%$%loop265453265556%_
                               (lambda (_%$%hd265451265559%_
                                        _%$%signature265457265561%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd265451265559%_))
                                     (let ((_%$%e265454265563%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd265451265559%_))))
                                       (let ((_%$%lp-tl265456265568%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e265454265563%_)))
                                             (_%$%lp-hd265455265566%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e265454265563%_))))
                                         (_%$%loop265453265556%_
                                          _%$%lp-tl265456265568%_
                                          (cons _%$%lp-hd265455265566%_
                                                _%$%signature265457265561%_))))
                                     (let ((_%$%signature265458265571%_
                                            (reverse _%$%signature265457265561%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl265446265540%_))
                                           (let ((_%$%e265459265573%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl265446265540%_))))
                                             (let ((_%$%tl265461265578%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e265459265573%_)))
                                                   (_%$%hd265460265576%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e265459265573%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl265461265578%_))
                                                   (_%__kont270338270339%_
                                                    _%$%hd265460265576%_
                                                    _%$%signature265458265571%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g265420265477%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g265420265477%_))))))))
                       (_%$%loop265453265556%_
                        _%$%target265450265551%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx270334270335%_))
                  (let ((_%$%e265424265622%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx270334270335%_))))
                    (let ((_%$%tl265426265627%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e265424265622%_)))
                          (_%$%hd265425265625%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e265424265622%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl265426265627%_))
                          (let ((_%$%e265427265630%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl265426265627%_))))
                            (let ((_%$%tl265429265635%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e265427265630%_)))
                                  (_%$%hd265428265633%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e265427265630%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd265428265633%_))
                                  (let ((_%$%e265430265638%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd265428265633%_))))
                                    (let ((_%$%tl265432265643%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e265430265638%_)))
                                          (_%$%hd265431265641%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e265430265638%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd265431265641%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.return
                                                 _%$%hd265431265641%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl265432265643%_))
                                                  (let ((_%$%e265433265646%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl265432265643%_))))
                                                    (let ((_%$%tl265435265651%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e265433265646%_)))
                                                          (_%$%hd265434265649%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e265433265646%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl265435265651%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl265429265635%_))
                      (let ((_%$%e265436265654%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl265429265635%_))))
                        (let ((_%$%tl265438265659%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e265436265654%_)))
                              (_%$%hd265437265657%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e265436265654%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl265438265659%_))
                              (_%__kont270336270337%_
                               _%$%hd265437265657%_
                               _%$%hd265434265649%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g265420265477%_)))))
                      (let () (declare (not safe)) (_%$%g265420265477%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl265429265635%_))
                      (let ((_%$%e265470265498%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl265429265635%_))))
                        (let ((_%$%tl265472265503%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e265470265498%_)))
                              (_%$%hd265471265501%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e265470265498%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl265472265503%_))
                              (_%__kont270342270343%_
                               _%$%hd265471265501%_
                               _%$%hd265428265633%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g265420265477%_)))))
                      (let () (declare (not safe)) (_%$%g265420265477%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl265429265635%_))
                                                      (let ((_%$%e265470265498%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl265429265635%_))))
                (let ((_%$%tl265472265503%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e265470265498%_)))
                      (_%$%hd265471265501%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e265470265498%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl265472265503%_))
                      (_%__kont270342270343%_
                       _%$%hd265471265501%_
                       _%$%hd265428265633%_)
                      (let () (declare (not safe)) (_%$%g265420265477%_)))))
              (let () (declare (not safe)) (_%$%g265420265477%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '@type.signature
                                                     _%$%hd265431265641%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl265432265643%_))
                                                      (let ((_%__splice270340270341%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl265432265643%_
                        '0))))
                (let ((_%$%tl265452265553%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice270340270341%_ '1)))
                      (_%$%target265450265551%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice270340270341%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl265452265553%_))
                      (_%__match270411270412%_
                       _%$%e265424265622%_
                       _%$%hd265425265625%_
                       _%$%tl265426265627%_
                       _%$%e265427265630%_
                       _%$%hd265428265633%_
                       _%$%tl265429265635%_
                       _%$%e265430265638%_
                       _%$%hd265431265641%_
                       _%$%tl265432265643%_
                       _%__splice270340270341%_
                       _%$%target265450265551%_
                       _%$%tl265452265553%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl265429265635%_))
                          (let ((_%$%e265470265498%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl265429265635%_))))
                            (let ((_%$%tl265472265503%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e265470265498%_)))
                                  (_%$%hd265471265501%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e265470265498%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl265472265503%_))
                                  (_%__kont270342270343%_
                                   _%$%hd265471265501%_
                                   _%$%hd265428265633%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g265420265477%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g265420265477%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%$%tl265429265635%_))
                  (let ((_%$%e265470265498%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl265429265635%_))))
                    (let ((_%$%tl265472265503%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e265470265498%_)))
                          (_%$%hd265471265501%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e265470265498%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl265472265503%_))
                          (_%__kont270342270343%_
                           _%$%hd265471265501%_
                           _%$%hd265428265633%_)
                          (let ()
                            (declare (not safe))
                            (_%$%g265420265477%_)))))
                  (let () (declare (not safe)) (_%$%g265420265477%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl265429265635%_))
                                                      (let ((_%$%e265470265498%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl265429265635%_))))
                (let ((_%$%tl265472265503%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e265470265498%_)))
                      (_%$%hd265471265501%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e265470265498%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl265472265503%_))
                      (_%__kont270342270343%_
                       _%$%hd265471265501%_
                       _%$%hd265428265633%_)
                      (let () (declare (not safe)) (_%$%g265420265477%_)))))
              (let () (declare (not safe)) (_%$%g265420265477%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl265429265635%_))
                                              (let ((_%$%e265470265498%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl265429265635%_))))
                                                (let ((_%$%tl265472265503%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e265470265498%_)))
                                                      (_%$%hd265471265501%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e265470265498%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl265472265503%_))
                                                      (_%__kont270342270343%_
                                                       _%$%hd265471265501%_
                                                       _%$%hd265428265633%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g265420265477%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g265420265477%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl265429265635%_))
                                      (let ((_%$%e265470265498%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl265429265635%_))))
                                        (let ((_%$%tl265472265503%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e265470265498%_)))
                                              (_%$%hd265471265501%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e265470265498%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl265472265503%_))
                                              (_%__kont270342270343%_
                                               _%$%hd265471265501%_
                                               _%$%hd265428265633%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g265420265477%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g265420265477%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g265420265477%_)))))
                  (let () (declare (not safe)) (_%$%g265420265477%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx265390%_ _%expr265391%_ _%type265392%_)
        (let ((_%$e265394%_ (not _%type265392%_)))
          (if _%$e265394%_
              _%$e265394%_
              (let ((_%$e265397%_
                     (eq? (##structure-ref _%type265392%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e265397%_
                    _%$e265397%_
                    (let ((_%$e265400%_
                           (eq? (##structure-ref
                                 _%type265392%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e265400%_
                          _%$e265400%_
                          (let ((_%expr-type265404%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr265391%_))))
                            (if _%expr-type265404%_
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type265404%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx265390%_
                                       _%type265392%_
                                       _%expr-type265404%_))
                                    (let ((_%$e265408%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type265404%_
                                              'gxc#!abort::t))))
                                      (if _%$e265408%_
                                          _%$e265408%_
                                          (let ((_%$e265411%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type265404%_
                                                    _%type265392%_))))
                                            (if _%$e265411%_
                                                _%$e265411%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx265390%_
                                                   _%type265392%_
                                                   _%expr-type265404%_)))))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx265390%_
                                   _%type265392%_))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self264997%_ _%stx264998%_)
        (gxc#check-contract-violation!
         _%stx264998%_
         (let* ((_%__stx270460270461%_ _%stx264998%_)
                (_%$%g265002265075%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gx#raise-syntax-error
                      '#f
                      '"Bad syntax; invalid match target"
                      _%__stx270460270461%_)))))
           (let ((_%__kont270462270463%_
                  (lambda (_%$%g265004265364%_
                           _%$%g265005265365%_
                           _%$%g265006265366%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-e _%$%g265006265366%_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self264997%_
                           _%$%g265005265365%_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self264997%_
                           _%$%g265004265364%_)))))
                 (_%__kont270464270465%_
                  (lambda (_%$%g265025265280%_
                           _%$%g265026265281%_
                           _%$%g265027265282%_
                           _%$%g265028265283%_)
                    (gxc#optimize-if%
                     _%self264997%_
                     (let ((__tmp270812
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f '%#if))
                                  (cons _%$%g265027265282%_
                                        (cons _%$%g265025265280%_
                                              (cons _%$%g265026265281%_
                                                    '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp270812 _%stx264998%_)))))
                 (_%__kont270466270467%_
                  (lambda (_%$%g265056265112%_
                           _%$%g265057265113%_
                           _%$%g265058265114%_)
                    (let ((_g270813_
                           (let ()
                             (declare (not safe))
                             (gxc#expression-path-types _%$%g265058265114%_))))
                      (begin
                        (let ((_g270814_
                               (let ()
                                 (declare (not safe))
                                 (if (##values? _g270813_)
                                     (##values-length _g270813_)
                                     1))))
                          (if (not (let ()
                                     (declare (not safe))
                                     (##fx= _g270814_ 2)))
                              (error "Context expects 2 values" _g270814_)))
                        (let ((_%true-path265132%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g270813_ 0)))
                              (_%false-path265133%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g270813_ 1))))
                          (let ((_%test265139%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self264997%_
                                    _%$%g265058265114%_)))
                                (_%K265140%_
                                 (let ((__tmp270815
                                        (lambda ()
                                          (let ((__tmp270816
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self264997%_
                                                      _%$%g265057265113%_)))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp270816
                                             gxc#current-compile-path-type
                                             _%true-path265132%_)))))
                                   (declare (not safe))
                                   (__make-promise __tmp270815)))
                                (_%E265141%_
                                 (let ((__tmp270817
                                        (lambda ()
                                          (let ((__tmp270818
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self264997%_
                                                      _%$%g265056265112%_)))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp270818
                                             gxc#current-compile-path-type
                                             _%false-path265133%_)))))
                                   (declare (not safe))
                                   (__make-promise __tmp270817))))
                            (let* ((_%__stx270434270435%_ _%test265139%_)
                                   (_%$%g265144265157%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx270434270435%_)))))
                              (let ((_%__kont270436270437%_
                                     (lambda (_%$%g265146265185%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%g265146265185%_))
                                           (force _%K265140%_)
                                           (force _%E265141%_))))
                                    (_%__kont270438270439%_
                                     (lambda ()
                                       (let ((__tmp270819
                                              (cons '%#if
                                                    (cons _%test265139%_
                                                          (cons (force _%K265140%_)
                                                                (cons (force _%E265141%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp270819
                                          _%stx264998%_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx270434270435%_))
                                    (let ((_%$%e265147265169%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx270434270435%_))))
                                      (let ((_%$%tl265149265174%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e265147265169%_)))
                                            (_%$%hd265148265172%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e265147265169%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%$%hd265148265172%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%$%hd265148265172%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl265149265174%_))
                                                    (let ((_%$%e265150265177%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl265149265174%_))))
                                                      (let ((_%$%tl265152265182%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e265150265177%_)))
                    (_%$%hd265151265180%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e265150265177%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl265152265182%_))
                    (_%__kont270436270437%_ _%$%hd265151265180%_)
                    (_%__kont270438270439%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont270438270439%_))
                                                (_%__kont270438270439%_))
                                            (_%__kont270438270439%_))))
                                    (_%__kont270438270439%_)))))))))))
             (let ((_%__match270579270580%_
                    (lambda (_%$%e265029265208%_
                             _%$%hd265030265211%_
                             _%$%tl265031265213%_
                             _%$%e265032265216%_
                             _%$%hd265033265219%_
                             _%$%tl265034265221%_
                             _%$%e265035265224%_
                             _%$%hd265036265227%_
                             _%$%tl265037265229%_
                             _%$%e265038265232%_
                             _%$%hd265039265235%_
                             _%$%tl265040265237%_
                             _%$%e265041265240%_
                             _%$%hd265042265243%_
                             _%$%tl265043265245%_
                             _%$%e265044265248%_
                             _%$%hd265045265251%_
                             _%$%tl265046265253%_
                             _%$%e265047265256%_
                             _%$%hd265048265259%_
                             _%$%tl265049265261%_
                             _%$%e265050265264%_
                             _%$%hd265051265267%_
                             _%$%tl265052265269%_
                             _%$%e265053265272%_
                             _%$%hd265054265275%_
                             _%$%tl265055265277%_)
                      (let ((_%$%g265025265280%_ _%$%hd265054265275%_)
                            (_%$%g265026265281%_ _%$%hd265051265267%_)
                            (_%$%g265027265282%_ _%$%hd265048265259%_)
                            (_%$%g265028265283%_ _%$%hd265045265251%_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _%$%g265028265283%_
                               'not))
                            (_%__kont270464270465%_
                             _%$%g265025265280%_
                             _%$%g265026265281%_
                             _%$%g265027265282%_
                             _%$%g265028265283%_)
                            (_%__kont270466270467%_
                             _%$%hd265054265275%_
                             _%$%hd265051265267%_
                             _%$%hd265033265219%_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? _%__stx270460270461%_))
                   (let ((_%$%e265007265316%_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%__stx270460270461%_))))
                     (let ((_%$%tl265009265321%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e265007265316%_)))
                           (_%$%hd265008265319%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e265007265316%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl265009265321%_))
                           (let ((_%$%e265010265324%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl265009265321%_))))
                             (let ((_%$%tl265012265329%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e265010265324%_)))
                                   (_%$%hd265011265327%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e265010265324%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd265011265327%_))
                                   (let ((_%$%e265013265332%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%hd265011265327%_))))
                                     (let ((_%$%tl265015265337%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e265013265332%_)))
                                           (_%$%hd265014265335%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e265013265332%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%$%hd265014265335%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#quote
                                                  _%$%hd265014265335%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl265015265337%_))
                                                   (let ((_%$%e265016265340%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl265015265337%_))))
                                                     (let ((_%$%tl265018265345%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e265016265340%_)))
                                                           (_%$%hd265017265343%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e265016265340%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl265018265345%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl265012265329%_))
                       (let ((_%$%e265019265348%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl265012265329%_))))
                         (let ((_%$%tl265021265353%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e265019265348%_)))
                               (_%$%hd265020265351%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e265019265348%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl265021265353%_))
                               (let ((_%$%e265022265356%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl265021265353%_))))
                                 (let ((_%$%tl265024265361%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e265022265356%_)))
                                       (_%$%hd265023265359%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e265022265356%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl265024265361%_))
                                       (_%__kont270462270463%_
                                        _%$%hd265023265359%_
                                        _%$%hd265020265351%_
                                        _%$%hd265017265343%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g265002265075%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%$%g265002265075%_)))))
                       (let () (declare (not safe)) (_%$%g265002265075%_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl265012265329%_))
                       (let ((_%$%e265065265096%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl265012265329%_))))
                         (let ((_%$%tl265067265101%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e265065265096%_)))
                               (_%$%hd265066265099%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e265065265096%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl265067265101%_))
                               (let ((_%$%e265068265104%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl265067265101%_))))
                                 (let ((_%$%tl265070265109%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e265068265104%_)))
                                       (_%$%hd265069265107%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e265068265104%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl265070265109%_))
                                       (_%__kont270466270467%_
                                        _%$%hd265069265107%_
                                        _%$%hd265066265099%_
                                        _%$%hd265011265327%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g265002265075%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%$%g265002265075%_)))))
                       (let () (declare (not safe)) (_%$%g265002265075%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl265012265329%_))
                                                       (let ((_%$%e265065265096%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl265012265329%_))))
                 (let ((_%$%tl265067265101%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e265065265096%_)))
                       (_%$%hd265066265099%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e265065265096%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl265067265101%_))
                       (let ((_%$%e265068265104%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl265067265101%_))))
                         (let ((_%$%tl265070265109%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e265068265104%_)))
                               (_%$%hd265069265107%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e265068265104%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl265070265109%_))
                               (_%__kont270466270467%_
                                _%$%hd265069265107%_
                                _%$%hd265066265099%_
                                _%$%hd265011265327%_)
                               (let ()
                                 (declare (not safe))
                                 (_%$%g265002265075%_)))))
                       (let () (declare (not safe)) (_%$%g265002265075%_)))))
               (let () (declare (not safe)) (_%$%g265002265075%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-eq?
                                                      '%#call
                                                      _%$%hd265014265335%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl265015265337%_))
                                                       (let ((_%$%e265038265232%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl265015265337%_))))
                 (let ((_%$%tl265040265237%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e265038265232%_)))
                       (_%$%hd265039265235%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e265038265232%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%hd265039265235%_))
                       (let ((_%$%e265041265240%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%hd265039265235%_))))
                         (let ((_%$%tl265043265245%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e265041265240%_)))
                               (_%$%hd265042265243%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e265041265240%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#identifier? _%$%hd265042265243%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-eq? '%#ref _%$%hd265042265243%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl265043265245%_))
                                       (let ((_%$%e265044265248%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl265043265245%_))))
                                         (let ((_%$%tl265046265253%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e265044265248%_)))
                                               (_%$%hd265045265251%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e265044265248%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%$%tl265046265253%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl265040265237%_))
                                                   (let ((_%$%e265047265256%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl265040265237%_))))
                                                     (let ((_%$%tl265049265261%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e265047265256%_)))
                                                           (_%$%hd265048265259%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e265047265256%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl265049265261%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl265012265329%_))
                       (let ((_%$%e265050265264%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl265012265329%_))))
                         (let ((_%$%tl265052265269%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e265050265264%_)))
                               (_%$%hd265051265267%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e265050265264%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl265052265269%_))
                               (let ((_%$%e265053265272%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl265052265269%_))))
                                 (let ((_%$%tl265055265277%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e265053265272%_)))
                                       (_%$%hd265054265275%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e265053265272%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl265055265277%_))
                                       (_%__match270579270580%_
                                        _%$%e265007265316%_
                                        _%$%hd265008265319%_
                                        _%$%tl265009265321%_
                                        _%$%e265010265324%_
                                        _%$%hd265011265327%_
                                        _%$%tl265012265329%_
                                        _%$%e265013265332%_
                                        _%$%hd265014265335%_
                                        _%$%tl265015265337%_
                                        _%$%e265038265232%_
                                        _%$%hd265039265235%_
                                        _%$%tl265040265237%_
                                        _%$%e265041265240%_
                                        _%$%hd265042265243%_
                                        _%$%tl265043265245%_
                                        _%$%e265044265248%_
                                        _%$%hd265045265251%_
                                        _%$%tl265046265253%_
                                        _%$%e265047265256%_
                                        _%$%hd265048265259%_
                                        _%$%tl265049265261%_
                                        _%$%e265050265264%_
                                        _%$%hd265051265267%_
                                        _%$%tl265052265269%_
                                        _%$%e265053265272%_
                                        _%$%hd265054265275%_
                                        _%$%tl265055265277%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g265002265075%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%$%g265002265075%_)))))
                       (let () (declare (not safe)) (_%$%g265002265075%_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl265012265329%_))
                       (let ((_%$%e265065265096%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl265012265329%_))))
                         (let ((_%$%tl265067265101%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e265065265096%_)))
                               (_%$%hd265066265099%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e265065265096%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl265067265101%_))
                               (let ((_%$%e265068265104%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl265067265101%_))))
                                 (let ((_%$%tl265070265109%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e265068265104%_)))
                                       (_%$%hd265069265107%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e265068265104%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl265070265109%_))
                                       (_%__kont270466270467%_
                                        _%$%hd265069265107%_
                                        _%$%hd265066265099%_
                                        _%$%hd265011265327%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g265002265075%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%$%g265002265075%_)))))
                       (let () (declare (not safe)) (_%$%g265002265075%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl265012265329%_))
                                                       (let ((_%$%e265065265096%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl265012265329%_))))
                 (let ((_%$%tl265067265101%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e265065265096%_)))
                       (_%$%hd265066265099%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e265065265096%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl265067265101%_))
                       (let ((_%$%e265068265104%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl265067265101%_))))
                         (let ((_%$%tl265070265109%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e265068265104%_)))
                               (_%$%hd265069265107%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e265068265104%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl265070265109%_))
                               (_%__kont270466270467%_
                                _%$%hd265069265107%_
                                _%$%hd265066265099%_
                                _%$%hd265011265327%_)
                               (let ()
                                 (declare (not safe))
                                 (_%$%g265002265075%_)))))
                       (let () (declare (not safe)) (_%$%g265002265075%_)))))
               (let () (declare (not safe)) (_%$%g265002265075%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl265012265329%_))
                                                   (let ((_%$%e265065265096%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl265012265329%_))))
                                                     (let ((_%$%tl265067265101%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e265065265096%_)))
                                                           (_%$%hd265066265099%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e265065265096%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl265067265101%_))
                                                           (let ((_%$%e265068265104%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl265067265101%_))))
                     (let ((_%$%tl265070265109%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e265068265104%_)))
                           (_%$%hd265069265107%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e265068265104%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl265070265109%_))
                           (_%__kont270466270467%_
                            _%$%hd265069265107%_
                            _%$%hd265066265099%_
                            _%$%hd265011265327%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g265002265075%_)))))
                   (let () (declare (not safe)) (_%$%g265002265075%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g265002265075%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl265012265329%_))
                                           (let ((_%$%e265065265096%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl265012265329%_))))
                                             (let ((_%$%tl265067265101%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e265065265096%_)))
                                                   (_%$%hd265066265099%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e265065265096%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl265067265101%_))
                                                   (let ((_%$%e265068265104%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl265067265101%_))))
                                                     (let ((_%$%tl265070265109%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e265068265104%_)))
                                                           (_%$%hd265069265107%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e265068265104%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl265070265109%_))
                                                           (_%__kont270466270467%_
                                                            _%$%hd265069265107%_
                                                            _%$%hd265066265099%_
                                                            _%$%hd265011265327%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%$%g265002265075%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g265002265075%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g265002265075%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl265012265329%_))
                                       (let ((_%$%e265065265096%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl265012265329%_))))
                                         (let ((_%$%tl265067265101%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e265065265096%_)))
                                               (_%$%hd265066265099%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e265065265096%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl265067265101%_))
                                               (let ((_%$%e265068265104%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl265067265101%_))))
                                                 (let ((_%$%tl265070265109%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e265068265104%_)))
                                                       (_%$%hd265069265107%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e265068265104%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl265070265109%_))
                                                       (_%__kont270466270467%_
                                                        _%$%hd265069265107%_
                                                        _%$%hd265066265099%_
                                                        _%$%hd265011265327%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%$%g265002265075%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g265002265075%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g265002265075%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl265012265329%_))
                                   (let ((_%$%e265065265096%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl265012265329%_))))
                                     (let ((_%$%tl265067265101%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e265065265096%_)))
                                           (_%$%hd265066265099%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e265065265096%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl265067265101%_))
                                           (let ((_%$%e265068265104%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl265067265101%_))))
                                             (let ((_%$%tl265070265109%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e265068265104%_)))
                                                   (_%$%hd265069265107%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e265068265104%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl265070265109%_))
                                                   (_%__kont270466270467%_
                                                    _%$%hd265069265107%_
                                                    _%$%hd265066265099%_
                                                    _%$%hd265011265327%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g265002265075%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g265002265075%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g265002265075%_))))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl265012265329%_))
                           (let ((_%$%e265065265096%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl265012265329%_))))
                             (let ((_%$%tl265067265101%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e265065265096%_)))
                                   (_%$%hd265066265099%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e265065265096%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl265067265101%_))
                                   (let ((_%$%e265068265104%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl265067265101%_))))
                                     (let ((_%$%tl265070265109%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e265068265104%_)))
                                           (_%$%hd265069265107%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e265068265104%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl265070265109%_))
                                           (_%__kont270466270467%_
                                            _%$%hd265069265107%_
                                            _%$%hd265066265099%_
                                            _%$%hd265011265327%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g265002265075%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g265002265075%_)))))
                           (let ()
                             (declare (not safe))
                             (_%$%g265002265075%_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? _%$%tl265012265329%_))
                   (let ((_%$%e265065265096%_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl265012265329%_))))
                     (let ((_%$%tl265067265101%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e265065265096%_)))
                           (_%$%hd265066265099%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e265065265096%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl265067265101%_))
                           (let ((_%$%e265068265104%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl265067265101%_))))
                             (let ((_%$%tl265070265109%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e265068265104%_)))
                                   (_%$%hd265069265107%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e265068265104%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%$%tl265070265109%_))
                                   (_%__kont270466270467%_
                                    _%$%hd265069265107%_
                                    _%$%hd265066265099%_
                                    _%$%hd265011265327%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g265002265075%_)))))
                           (let ()
                             (declare (not safe))
                             (_%$%g265002265075%_)))))
                   (let () (declare (not safe)) (_%$%g265002265075%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl265012265329%_))
                                                       (let ((_%$%e265065265096%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl265012265329%_))))
                 (let ((_%$%tl265067265101%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e265065265096%_)))
                       (_%$%hd265066265099%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e265065265096%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl265067265101%_))
                       (let ((_%$%e265068265104%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl265067265101%_))))
                         (let ((_%$%tl265070265109%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e265068265104%_)))
                               (_%$%hd265069265107%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e265068265104%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl265070265109%_))
                               (_%__kont270466270467%_
                                _%$%hd265069265107%_
                                _%$%hd265066265099%_
                                _%$%hd265011265327%_)
                               (let ()
                                 (declare (not safe))
                                 (_%$%g265002265075%_)))))
                       (let () (declare (not safe)) (_%$%g265002265075%_)))))
               (let () (declare (not safe)) (_%$%g265002265075%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl265012265329%_))
                                               (let ((_%$%e265065265096%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl265012265329%_))))
                                                 (let ((_%$%tl265067265101%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e265065265096%_)))
                                                       (_%$%hd265066265099%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e265065265096%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl265067265101%_))
                                                       (let ((_%$%e265068265104%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl265067265101%_))))
                 (let ((_%$%tl265070265109%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e265068265104%_)))
                       (_%$%hd265069265107%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e265068265104%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl265070265109%_))
                       (_%__kont270466270467%_
                        _%$%hd265069265107%_
                        _%$%hd265066265099%_
                        _%$%hd265011265327%_)
                       (let () (declare (not safe)) (_%$%g265002265075%_)))))
               (let () (declare (not safe)) (_%$%g265002265075%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g265002265075%_))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl265012265329%_))
                                       (let ((_%$%e265065265096%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl265012265329%_))))
                                         (let ((_%$%tl265067265101%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e265065265096%_)))
                                               (_%$%hd265066265099%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e265065265096%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl265067265101%_))
                                               (let ((_%$%e265068265104%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl265067265101%_))))
                                                 (let ((_%$%tl265070265109%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e265068265104%_)))
                                                       (_%$%hd265069265107%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e265068265104%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl265070265109%_))
                                                       (_%__kont270466270467%_
                                                        _%$%hd265069265107%_
                                                        _%$%hd265066265099%_
                                                        _%$%hd265011265327%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%$%g265002265075%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g265002265075%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g265002265075%_))))))
                           (let ()
                             (declare (not safe))
                             (_%$%g265002265075%_)))))
                   (let () (declare (not safe)) (_%$%g265002265075%_)))))))))
    (define gxc#check-contract-violation!
      (lambda (_%stx264865%_ _%expr264866%_)
        (let* ((_%__stx270608270609%_ _%expr264866%_)
               (_%$%g264869264899%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx270608270609%_)))))
          (let ((_%__kont270610270611%_
                 (lambda (_%$%g264871264967%_
                          _%$%g264872264968%_
                          _%$%g264873264969%_)
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"contract violation"
                      _%stx264865%_
                      _%$%g264873264969%_
                      _%$%g264872264968%_
                      _%$%g264871264967%_))))
                (_%__kont270612270613%_ (lambda () _%expr264866%_)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx270608270609%_))
                (let ((_%$%e264874264911%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx270608270609%_))))
                  (let ((_%$%tl264876264916%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e264874264911%_)))
                        (_%$%hd264875264914%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e264874264911%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%$%hd264875264914%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq?
                               '%#begin-annotation
                               _%$%hd264875264914%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl264876264916%_))
                                (let ((_%$%e264877264919%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl264876264916%_))))
                                  (let ((_%$%tl264879264924%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e264877264919%_)))
                                        (_%$%hd264878264922%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e264877264919%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd264878264922%_))
                                        (let ((_%$%e264880264927%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd264878264922%_))))
                                          (let ((_%$%tl264882264932%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e264880264927%_)))
                                                (_%$%hd264881264930%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e264880264927%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd264881264930%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '@contract-violation
                                                       _%$%hd264881264930%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl264882264932%_))
                                                        (let ((_%$%e264883264935%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl264882264932%_))))
                  (let ((_%$%tl264885264940%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e264883264935%_)))
                        (_%$%hd264884264938%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e264883264935%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl264885264940%_))
                        (let ((_%$%e264886264943%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl264885264940%_))))
                          (let ((_%$%tl264888264948%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e264886264943%_)))
                                (_%$%hd264887264946%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e264886264943%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl264888264948%_))
                                (let ((_%$%e264889264951%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl264888264948%_))))
                                  (let ((_%$%tl264891264956%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e264889264951%_)))
                                        (_%$%hd264890264954%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e264889264951%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl264891264956%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl264879264924%_))
                                            (let ((_%$%e264892264959%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl264879264924%_))))
                                              (let ((_%$%tl264894264964%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e264892264959%_)))
                                                    (_%$%hd264893264962%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e264892264959%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl264894264964%_))
                                                    (_%__kont270610270611%_
                                                     _%$%hd264890264954%_
                                                     _%$%hd264887264946%_
                                                     _%$%hd264884264938%_)
                                                    (_%__kont270612270613%_))))
                                            (_%__kont270612270613%_))
                                        (_%__kont270612270613%_))))
                                (_%__kont270612270613%_))))
                        (_%__kont270612270613%_))))
                (_%__kont270612270613%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont270612270613%_))
                                                (_%__kont270612270613%_))))
                                        (_%__kont270612270613%_))))
                                (_%__kont270612270613%_))
                            (_%__kont270612270613%_))
                        (_%__kont270612270613%_))))
                (_%__kont270612270613%_))))))))
