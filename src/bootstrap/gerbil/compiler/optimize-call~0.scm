(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1789371548)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp270424 (list gxc#::basic-xform::t))
            (__tmp270423 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp270424
         '()
         __tmp270423
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args269489%_
        (apply make-instance gxc#::optimize-call::t _%$args269489%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp270425
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
        (__make-atomic-promise __tmp270425)))
    (define gxc#apply-optimize-call
      (lambda (_%stx269481%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self269484%_
                (let ((__obj270415
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj270415))
               (__tmp270426
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self269484%_ _%stx269481%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp270426
           gxc#current-compile-method
           _%self269484%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp270428 (list gxc#::void::t))
            (__tmp270427 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp270428
         '()
         __tmp270427
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args269478%_
        (apply make-instance gxc#::check-return-type::t _%$args269478%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp270429
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
        (__make-atomic-promise __tmp270429)))
    (define gxc#apply-check-return-type
      (lambda (_%stx269470%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self269473%_
                (let ((__obj270417
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj270417))
               (__tmp270430
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self269473%_ _%stx269470%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp270430
           gxc#current-compile-method
           _%self269473%_))))
    (define gxc#optimize-call%
      (lambda (_%self268606%_ _%stx268607%_)
        (let* ((_%__stx269630269631%_ _%stx268607%_)
               (_%$%g268611268693%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx269630269631%_)))))
          (let ((_%__kont269632269633%_
                 (lambda (_%$%g268613269257%_ _%$%g268614269258%_)
                   (let* ((_%rator-id269278%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%$%g268614269258%_)))
                          (_%rator-type269280%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id269278%_)))
                          (_%$e269283%_
                           (let ()
                             (declare (not safe))
                             (__hash-get
                              gxc#special-procedure-optimizers
                              _%rator-id269278%_))))
                     (if _%$e269283%_
                         (_%$e269283%_ _%self268606%_ _%stx268607%_)
                         (if (or (not _%rator-type269280%_)
                                 (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%rator-type269280%_
                                    'gxc#!nullable-type::t))
                                 (eq? (##structure-ref
                                       _%rator-type269280%_
                                       '1
                                       gxc#!type::t
                                       '#f)
                                      't))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self268606%_ _%stx268607%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%rator-type269280%_
                                    'gxc#!procedure::t))
                                 (let ()
                                   (let ((__tmp270431
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%rator-type269280%_
                                             '1
                                             '#f
                                             '#f))))
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"optimize-call "
                                      _%rator-id269278%_
                                      '" => "
                                      _%rator-type269280%_
                                      '" "
                                      __tmp270431))
                                   (let* ((_%optimized269303%_
                                           (let ((__method270418
                                                  (let ()
                                                    (declare (not safe))
                                                    (__method-ref
                                                     _%rator-type269280%_
                                                     'optimize-call))))
                                             (if __method270418
                                                 (let ((__tmp270432
                                                        (let ((__tmp270433
                                                               (lambda (_%$%g269295269298%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%$%g269296269300%_)
                         (cons _%$%g269295269298%_ _%$%g269296269300%_))))
                  (declare (not safe))
                  (foldr__0 __tmp270433 '() _%$%g268613269257%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__method270418
                                                    _%rator-type269280%_
                                                    _%self268606%_
                                                    _%stx268607%_
                                                    __tmp270432))
                                                 (begin
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Missing method"
                                                            _%rator-type269280%_
                                                            'optimize-call))
                                                   '#!void))))
                                          (_%__stx269578269579%_
                                           _%optimized269303%_)
                                          (_%$%g269306269335%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx269578269579%_)))))
                                     (let ((_%__kont269580269581%_
                                            (lambda (_%$%g269308269401%_
                                                     _%$%g269309269402%_)
                                              (let* ((_%optimized-rator-id269430%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#identifier-symbol
                                                         _%$%g269309269402%_)))
                                                     (_%rator-type269435%_
                                                      (let ((_%$e269432%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#optimizer-lookup-type
                        _%optimized-rator-id269430%_))))
                (if _%$e269432%_ _%$e269432%_ _%rator-type269280%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (or (let ()
                                                          (declare (not safe))
                                                          (class-instance?
                                                           gxc#!primitive::t
                                                           _%rator-type269435%_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##memq _%optimized-rator-id269430%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          gxc#checked-primitives))
                (and (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%rator-type269435%_
                        'gxc#!procedure::t))
                     (eq? (let ()
                            (declare (not safe))
                            (gxc#!procedure-origin _%rator-type269435%_))
                          (##structure-ref
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))
                           '1
                           gx#expander-context::t
                           '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%optimized269303%_
                                                    (let ((__tmp270434
                                                           (cons '%#call-unchecked
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f '%#ref))
                                     (cons _%$%g269309269402%_ '()))
                               (let ((__tmp270435
                                      (lambda (_%$%g269443269446%_
                                               _%$%g269444269448%_)
                                        (cons _%$%g269443269446%_
                                              _%$%g269444269448%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp270435
                                  '()
                                  _%$%g269308269401%_))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp270434 _%stx268607%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont269584269585%_
                                            (lambda () _%optimized269303%_)))
                                       (let ((_%__match269627269628%_
                                              (lambda (_%$%e269310269347%_
                                                       _%$%hd269311269350%_
                                                       _%$%tl269312269352%_
                                                       _%$%e269313269355%_
                                                       _%$%hd269314269358%_
                                                       _%$%tl269315269360%_
                                                       _%$%e269316269363%_
                                                       _%$%hd269317269366%_
                                                       _%$%tl269318269368%_
                                                       _%$%e269319269371%_
                                                       _%$%hd269320269374%_
                                                       _%$%tl269321269376%_
                                                       _%__splice269582269583%_
                                                       _%$%target269322269379%_
                                                       _%$%tl269324269381%_)
                                                (letrec ((_%$%loop269325269384%_
                                                          (lambda (_%$%hd269323269387%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%arg269329269389%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd269323269387%_))
                        (let ((_%$%e269326269391%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd269323269387%_))))
                          (let ((_%$%lp-tl269328269396%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e269326269391%_)))
                                (_%$%lp-hd269327269394%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e269326269391%_))))
                            (_%$%loop269325269384%_
                             _%$%lp-tl269328269396%_
                             (cons _%$%lp-hd269327269394%_
                                   _%$%arg269329269389%_))))
                        (let ((_%$%arg269330269399%_
                               (reverse _%$%arg269329269389%_)))
                          (_%__kont269580269581%_
                           _%$%arg269330269399%_
                           _%$%hd269320269374%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop269325269384%_
                                                   _%$%target269322269379%_
                                                   '())))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx269578269579%_))
                                             (let ((_%$%e269310269347%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx269578269579%_))))
                                               (let ((_%$%tl269312269352%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e269310269347%_)))
                                                     (_%$%hd269311269350%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e269310269347%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%$%hd269311269350%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#call
                                                            _%$%hd269311269350%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%tl269312269352%_))
                     (let ((_%$%e269313269355%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl269312269352%_))))
                       (let ((_%$%tl269315269360%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e269313269355%_)))
                             (_%$%hd269314269358%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e269313269355%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%hd269314269358%_))
                             (let ((_%$%e269316269363%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%hd269314269358%_))))
                               (let ((_%$%tl269318269368%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e269316269363%_)))
                                     (_%$%hd269317269366%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e269316269363%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#identifier? _%$%hd269317269366%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-eq?
                                            '%#ref
                                            _%$%hd269317269366%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%tl269318269368%_))
                                             (let ((_%$%e269319269371%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%tl269318269368%_))))
                                               (let ((_%$%tl269321269376%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e269319269371%_)))
                                                     (_%$%hd269320269374%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e269319269371%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%$%tl269321269376%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%$%tl269315269360%_))
                                                         (let ((_%__splice269582269583%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%$%tl269315269360%_
                           '0))))
                   (let ((_%$%tl269324269381%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice269582269583%_ '1)))
                         (_%$%target269322269379%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice269582269583%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl269324269381%_))
                         (_%__match269627269628%_
                          _%$%e269310269347%_
                          _%$%hd269311269350%_
                          _%$%tl269312269352%_
                          _%$%e269313269355%_
                          _%$%hd269314269358%_
                          _%$%tl269315269360%_
                          _%$%e269316269363%_
                          _%$%hd269317269366%_
                          _%$%tl269318269368%_
                          _%$%e269319269371%_
                          _%$%hd269320269374%_
                          _%$%tl269321269376%_
                          _%__splice269582269583%_
                          _%$%target269322269379%_
                          _%$%tl269324269381%_)
                         (_%__kont269584269585%_))))
                 (_%__kont269584269585%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont269584269585%_))))
                                             (_%__kont269584269585%_))
                                         (_%__kont269584269585%_))
                                     (_%__kont269584269585%_))))
                             (_%__kont269584269585%_))))
                     (_%__kont269584269585%_))
                 (_%__kont269584269585%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont269584269585%_))))
                                             (_%__kont269584269585%_))))))
                                 (if (and (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%rator-type269280%_
                                             'gxc#!class::t))
                                          (eq? (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%rator-type269280%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               'procedure))
                                     (let ((__tmp270436
                                            (cons '%#call-unchecked
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f '%#ref))
                      (cons _%$%g268614269258%_ '()))
                (map (lambda (_%$%g269454269456%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self268606%_
                          _%$%g269454269456%_)))
                     (let ((__tmp270437
                            (lambda (_%$%g269458269461%_ _%$%g269459269463%_)
                              (cons _%$%g269458269461%_ _%$%g269459269463%_))))
                       (declare (not safe))
                       (foldr__0 __tmp270437 '() _%$%g268613269257%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp270436
                                        _%stx268607%_))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"illegal application; not a procedure"
                                        _%stx268607%_
                                        _%rator-type269280%_)))))))))
                (_%__kont269636269637%_
                 (lambda (_%$%g268636268865%_
                          _%$%g268637268866%_
                          _%$%g268638268867%_)
                   (let _%loop268985%_ ((_%rest-arg268987%_
                                         (let ((__tmp270444
                                                (lambda (_%$%g269183269186%_
                                                         _%$%g269184269188%_)
                                                  (cons _%$%g269183269186%_
                                                        _%$%g269184269188%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp270444
                                            '()
                                            _%$%g268638268867%_)))
                                        (_%rest-rand268988%_
                                         (let ((__tmp270445
                                                (lambda (_%$%g269190269193%_
                                                         _%$%g269191269195%_)
                                                  (cons _%$%g269190269193%_
                                                        _%$%g269191269195%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp270445
                                            '()
                                            _%$%g268636268865%_)))
                                        (_%bind268989%_ '())
                                        (_%subst268990%_ '()))
                     (let* ((_%$%rest-arg268991268999%_ _%rest-arg268987%_)
                            (_%$%else268993269012%_
                             (lambda ()
                               (let* ((_%body269007%_
                                       (if (null? _%subst268990%_)
                                           _%$%g268637268866%_
                                           (let ((__tmp270438
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-inline-subst__%
                                                     '#f
                                                     _%subst268990%_
                                                     _%$%g268637268866%_))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp270438
                                              _%stx268607%_))))
                                      (_%expr269009%_
                                       (let ((__tmp270439
                                              (cons '%#let-values
                                                    (cons _%bind268989%_
                                                          (cons _%body269007%_
                                                                '())))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp270439
                                          _%stx268607%_))))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-refine-type-info _%expr269009%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self268606%_
                                    _%expr269009%_)))))
                            (_%$%K268995269172%_
                             (lambda (_%rest-arg269015%_ _%arg-id269016%_)
                               (let* ((_%$%rest-rand269017269025%_
                                       _%rest-rand268988%_)
                                      (_%$%else269019269047%_
                                       (lambda ()
                                         (let ((__tmp270442
                                                (let ((__tmp270443
                                                       (lambda (_%$%g269032269035%_
                                                                _%$%g269033269037%_)
                                                         (cons _%$%g269032269035%_
                                                               _%$%g269033269037%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp270443
                                                   '()
                                                   _%$%g268638268867%_)))
                                               (__tmp270440
                                                (let ((__tmp270441
                                                       (lambda (_%$%g269039269042%_
                                                                _%$%g269040269044%_)
                                                         (cons _%$%g269039269042%_
                                                               _%$%g269040269044%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp270441
                                                   '()
                                                   _%$%g268636268865%_))))
                                           (declare (not safe))
                                           (gxc#raise-compile-error
                                            '"inline lambda arity mismatch"
                                            _%stx268607%_
                                            __tmp270442
                                            __tmp270440))))
                                      (_%$%K269021269160%_
                                       (lambda (_%rest-rand269050%_
                                                _%rand269051%_)
                                         (let* ((_%__stx269532269533%_
                                                 _%rand269051%_)
                                                (_%$%g269055269075%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx269532269533%_)))))
                                           (let ((_%__kont269534269535%_
                                                  (lambda (_%$%g269057269146%_)
                                                    (_%loop268985%_
                                                     _%rest-arg269015%_
                                                     _%rest-rand269050%_
                                                     _%bind268989%_
                                                     (cons (cons _%arg-id269016%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%rand269051%_)
                   _%subst268990%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont269536269537%_
                                                  (lambda (_%$%g269064269103%_)
                                                    (_%loop268985%_
                                                     _%rest-arg269015%_
                                                     _%rest-rand269050%_
                                                     _%bind268989%_
                                                     (cons (cons _%arg-id269016%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%rand269051%_)
                   _%subst268990%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont269538269539%_
                                                  (lambda ()
                                                    (_%loop268985%_
                                                     _%rest-arg269015%_
                                                     _%rest-rand269050%_
                                                     (cons (cons (cons _%arg-id269016%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons _%rand269051%_ '()))
                   _%bind268989%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%subst268990%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx269532269533%_))
                                                 (let ((_%$%e269058269130%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx269532269533%_))))
                                                   (let ((_%$%tl269060269135%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e269058269130%_)))
                                                         (_%$%hd269059269133%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e269058269130%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%$%hd269059269133%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#quote _%$%hd269059269133%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%tl269060269135%_))
                         (let ((_%$%e269061269138%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%tl269060269135%_))))
                           (let ((_%$%tl269063269143%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e269061269138%_)))
                                 (_%$%hd269062269141%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e269061269138%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%$%tl269063269143%_))
                                 (_%__kont269534269535%_ _%$%hd269062269141%_)
                                 (_%__kont269538269539%_))))
                         (_%__kont269538269539%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#ref _%$%hd269059269133%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%tl269060269135%_))
                             (let ((_%$%e269068269095%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%tl269060269135%_))))
                               (let ((_%$%tl269070269100%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e269068269095%_)))
                                     (_%$%hd269069269098%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e269068269095%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%$%tl269070269100%_))
                                     (_%__kont269536269537%_
                                      _%$%hd269069269098%_)
                                     (_%__kont269538269539%_))))
                             (_%__kont269538269539%_))
                         (_%__kont269538269539%_)))
                 (_%__kont269538269539%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont269538269539%_)))))))
                                 (if (pair? _%$%rest-rand269017269025%_)
                                     (let ((_%$%hd269022269163%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%rest-rand269017269025%_)))
                                           (_%$%tl269023269165%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%rest-rand269017269025%_))))
                                       (let* ((_%rand269168%_
                                               _%$%hd269022269163%_)
                                              (_%rest-rand269170%_
                                               _%$%tl269023269165%_))
                                         (_%$%K269021269160%_
                                          _%rest-rand269170%_
                                          _%rand269168%_)))
                                     (_%$%else269019269047%_))))))
                       (if (pair? _%$%rest-arg268991268999%_)
                           (let ((_%$%hd268996269175%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%rest-arg268991268999%_)))
                                 (_%$%tl268997269177%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%rest-arg268991268999%_))))
                             (let* ((_%arg-id269180%_ _%$%hd268996269175%_)
                                    (_%rest-arg269182%_ _%$%tl268997269177%_))
                               (_%$%K268995269172%_
                                _%rest-arg269182%_
                                _%arg-id269180%_)))
                           (_%$%else268993269012%_))))))
                (_%__kont269642269643%_
                 (lambda (_%$%g268672268736%_ _%$%g268673268737%_)
                   (let ((_%rator-type268754%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type
                             _%$%g268673268737%_))))
                     (if (and _%rator-type268754%_
                              (eq? (##structure-ref
                                    _%rator-type268754%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type268754%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type268754%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type268754%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp270446
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self268606%_
                                               _%$%g268673268737%_))
                                            (map (lambda (_%$%g268756268758%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self268606%_
                                                      _%$%g268756268758%_)))
                                                 (let ((__tmp270447
                                                        (lambda (_%$%g268760268763%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g268761268765%_)
                  (cons _%$%g268760268763%_ _%$%g268761268765%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp270447
                                                    '()
                                                    _%$%g268672268736%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp270446 _%stx268607%_))
                         (if (or (not _%rator-type268754%_)
                                 (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%rator-type268754%_
                                    'gxc#!nullable-type::t))
                                 (let ((__tmp270448
                                        (##structure-ref
                                         _%rator-type268754%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp270448 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self268606%_ _%stx268607%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx268607%_
                                _%rator-type268754%_))))))))
            (let* ((_%__match269739269740%_
                    (lambda (_%$%e268674268698%_
                             _%$%hd268675268701%_
                             _%$%tl268676268703%_
                             _%$%e268677268706%_
                             _%$%hd268678268709%_
                             _%$%tl268679268711%_
                             _%__splice269644269645%_
                             _%$%target268680268714%_
                             _%$%tl268682268716%_)
                      (letrec ((_%$%loop268683268719%_
                                (lambda (_%$%hd268681268722%_
                                         _%$%rand268687268724%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd268681268722%_))
                                      (let ((_%$%e268684268726%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd268681268722%_))))
                                        (let ((_%$%lp-tl268686268731%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e268684268726%_)))
                                              (_%$%lp-hd268685268729%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e268684268726%_))))
                                          (_%$%loop268683268719%_
                                           _%$%lp-tl268686268731%_
                                           (cons _%$%lp-hd268685268729%_
                                                 _%$%rand268687268724%_))))
                                      (let ((_%$%rand268688268734%_
                                             (reverse _%$%rand268687268724%_)))
                                        (_%__kont269642269643%_
                                         _%$%rand268688268734%_
                                         _%$%hd268678268709%_))))))
                        (_%$%loop268683268719%_
                         _%$%target268680268714%_
                         '()))))
                   (_%__match269731269732%_
                    (lambda (_%$%e268674268698%_
                             _%$%hd268675268701%_
                             _%$%tl268676268703%_
                             _%$%e268677268706%_
                             _%$%hd268678268709%_
                             _%$%tl268679268711%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%$%tl268679268711%_))
                          (let ((_%__splice269644269645%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%$%tl268679268711%_
                                    '0))))
                            (let ((_%$%tl268682268716%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice269644269645%_
                                      '1)))
                                  (_%$%target268680268714%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice269644269645%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl268682268716%_))
                                  (_%__match269739269740%_
                                   _%$%e268674268698%_
                                   _%$%hd268675268701%_
                                   _%$%tl268676268703%_
                                   _%$%e268677268706%_
                                   _%$%hd268678268709%_
                                   _%$%tl268679268711%_
                                   _%__splice269644269645%_
                                   _%$%target268680268714%_
                                   _%$%tl268682268716%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g268611268693%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g268611268693%_)))))
                   (_%__match269719269720%_
                    (lambda (_%$%e268639268781%_
                             _%$%hd268640268784%_
                             _%$%tl268641268786%_
                             _%$%e268642268789%_
                             _%$%hd268643268792%_
                             _%$%tl268644268794%_
                             _%$%e268645268797%_
                             _%$%hd268646268800%_
                             _%$%tl268647268802%_
                             _%$%e268648268805%_
                             _%$%hd268649268808%_
                             _%$%tl268650268810%_
                             _%__splice269638269639%_
                             _%$%target268651268813%_
                             _%$%tl268653268815%_)
                      (letrec ((_%$%loop268654268818%_
                                (lambda (_%$%hd268652268821%_
                                         _%$%arg268658268823%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd268652268821%_))
                                      (let ((_%$%e268655268825%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd268652268821%_))))
                                        (let ((_%$%lp-tl268657268830%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e268655268825%_)))
                                              (_%$%lp-hd268656268828%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e268655268825%_))))
                                          (_%$%loop268654268818%_
                                           _%$%lp-tl268657268830%_
                                           (cons _%$%lp-hd268656268828%_
                                                 _%$%arg268658268823%_))))
                                      (let ((_%$%arg268659268833%_
                                             (reverse _%$%arg268658268823%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl268650268810%_))
                                            (let ((_%$%e268660268835%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl268650268810%_))))
                                              (let ((_%$%tl268662268840%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e268660268835%_)))
                                                    (_%$%hd268661268838%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e268660268835%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl268662268840%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%$%tl268644268794%_))
                                                        (let ((_%__splice269640269641%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%$%tl268644268794%_
                          '0))))
                  (let ((_%$%tl268665268845%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice269640269641%_ '1)))
                        (_%$%target268663268843%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice269640269641%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl268665268845%_))
                        (letrec ((_%$%loop268666268848%_
                                  (lambda (_%$%hd268664268851%_
                                           _%$%rand268670268853%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd268664268851%_))
                                        (let ((_%$%e268667268855%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd268664268851%_))))
                                          (let ((_%$%lp-tl268669268860%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e268667268855%_)))
                                                (_%$%lp-hd268668268858%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e268667268855%_))))
                                            (_%$%loop268666268848%_
                                             _%$%lp-tl268669268860%_
                                             (cons _%$%lp-hd268668268858%_
                                                   _%$%rand268670268853%_))))
                                        (let ((_%$%rand268671268863%_
                                               (reverse _%$%rand268670268853%_)))
                                          (let ((_%$%g268636268865%_
                                                 _%$%rand268671268863%_)
                                                (_%$%g268637268866%_
                                                 _%$%hd268661268838%_)
                                                (_%$%g268638268867%_
                                                 _%$%arg268659268833%_))
                                            (if (and (= (length (let ((__tmp270449
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_%$%g268893268896%_
                                        _%$%g268894268898%_)
                                 (cons _%$%g268893268896%_
                                       _%$%g268894268898%_))))
                          (declare (not safe))
                          (foldr__0 __tmp270449 '() _%$%g268638268867%_)))
                (length (let ((__tmp270450
                               (lambda (_%$%g268900268903%_
                                        _%$%g268901268905%_)
                                 (cons _%$%g268900268903%_
                                       _%$%g268901268905%_))))
                          (declare (not safe))
                          (foldr__0 __tmp270450 '() _%$%g268636268865%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp270453
                                                            (lambda (_%id268908%_)
                                                              (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gxc#mutable-binding? _%id268908%_)))))
                   (__tmp270451
                    (let ((__tmp270452
                           (lambda (_%$%g268909268912%_ _%$%g268910268914%_)
                             (cons _%$%g268909268912%_ _%$%g268910268914%_))))
                      (declare (not safe))
                      (foldr__0 __tmp270452 '() _%$%g268638268867%_))))
               (declare (not safe))
               (andmap__0 __tmp270453 __tmp270451))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp270456
                                                            (lambda (_%rand268917%_)
                                                              (let* ((_%__stx269506269507%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%rand268917%_)
                             (_%$%g268920268933%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx269506269507%_)))))
                        (let ((_%__kont269508269509%_
                               (lambda (_%$%g268922268961%_)
                                 (not (let ()
                                        (declare (not safe))
                                        (gxc#mutable-binding?
                                         _%$%g268922268961%_)))))
                              (_%__kont269510269511%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx269506269507%_))
                              (let ((_%$%e268923268945%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx269506269507%_))))
                                (let ((_%$%tl268925268950%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e268923268945%_)))
                                      (_%$%hd268924268948%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e268923268945%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd268924268948%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd268924268948%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl268925268950%_))
                                              (let ((_%$%e268926268953%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl268925268950%_))))
                                                (let ((_%$%tl268928268958%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e268926268953%_)))
                                                      (_%$%hd268927268956%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e268926268953%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl268928268958%_))
                                                      (_%__kont269508269509%_
                                                       _%$%hd268927268956%_)
                                                      (_%__kont269510269511%_))))
                                              (_%__kont269510269511%_))
                                          (_%__kont269510269511%_))
                                      (_%__kont269510269511%_))))
                              (_%__kont269510269511%_))))))
                   (__tmp270454
                    (let ((__tmp270455
                           (lambda (_%$%g268977268980%_ _%$%g268978268982%_)
                             (cons _%$%g268977268980%_ _%$%g268978268982%_))))
                      (declare (not safe))
                      (foldr__0 __tmp270455 '() _%$%g268636268865%_))))
               (declare (not safe))
               (andmap__0 __tmp270456 __tmp270454)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont269636269637%_
                                                 _%$%g268636268865%_
                                                 _%$%g268637268866%_
                                                 _%$%g268638268867%_)
                                                (_%__match269739269740%_
                                                 _%$%e268639268781%_
                                                 _%$%hd268640268784%_
                                                 _%$%tl268641268786%_
                                                 _%$%e268642268789%_
                                                 _%$%hd268643268792%_
                                                 _%$%tl268644268794%_
                                                 _%__splice269640269641%_
                                                 _%$%target268663268843%_
                                                 _%$%tl268665268845%_))))))))
                          (_%$%loop268666268848%_
                           _%$%target268663268843%_
                           '()))
                        (let () (declare (not safe)) (_%$%g268611268693%_)))))
                (let () (declare (not safe)) (_%$%g268611268693%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match269731269732%_
                                                     _%$%e268639268781%_
                                                     _%$%hd268640268784%_
                                                     _%$%tl268641268786%_
                                                     _%$%e268642268789%_
                                                     _%$%hd268643268792%_
                                                     _%$%tl268644268794%_))))
                                            (_%__match269731269732%_
                                             _%$%e268639268781%_
                                             _%$%hd268640268784%_
                                             _%$%tl268641268786%_
                                             _%$%e268642268789%_
                                             _%$%hd268643268792%_
                                             _%$%tl268644268794%_)))))))
                        (_%$%loop268654268818%_
                         _%$%target268651268813%_
                         '()))))
                   (_%__match269683269684%_
                    (lambda (_%$%e268615269203%_
                             _%$%hd268616269206%_
                             _%$%tl268617269208%_
                             _%$%e268618269211%_
                             _%$%hd268619269214%_
                             _%$%tl268620269216%_
                             _%$%e268621269219%_
                             _%$%hd268622269222%_
                             _%$%tl268623269224%_
                             _%$%e268624269227%_
                             _%$%hd268625269230%_
                             _%$%tl268626269232%_
                             _%__splice269634269635%_
                             _%$%target268627269235%_
                             _%$%tl268629269237%_)
                      (letrec ((_%$%loop268630269240%_
                                (lambda (_%$%hd268628269243%_
                                         _%$%rand268634269245%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd268628269243%_))
                                      (let ((_%$%e268631269247%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd268628269243%_))))
                                        (let ((_%$%lp-tl268633269252%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e268631269247%_)))
                                              (_%$%lp-hd268632269250%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e268631269247%_))))
                                          (_%$%loop268630269240%_
                                           _%$%lp-tl268633269252%_
                                           (cons _%$%lp-hd268632269250%_
                                                 _%$%rand268634269245%_))))
                                      (let ((_%$%rand268635269255%_
                                             (reverse _%$%rand268634269245%_)))
                                        (_%__kont269632269633%_
                                         _%$%rand268635269255%_
                                         _%$%hd268625269230%_))))))
                        (_%$%loop268630269240%_
                         _%$%target268627269235%_
                         '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx269630269631%_))
                  (let ((_%$%e268615269203%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx269630269631%_))))
                    (let ((_%$%tl268617269208%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e268615269203%_)))
                          (_%$%hd268616269206%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e268615269203%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl268617269208%_))
                          (let ((_%$%e268618269211%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl268617269208%_))))
                            (let ((_%$%tl268620269216%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e268618269211%_)))
                                  (_%$%hd268619269214%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e268618269211%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd268619269214%_))
                                  (let ((_%$%e268621269219%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd268619269214%_))))
                                    (let ((_%$%tl268623269224%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e268621269219%_)))
                                          (_%$%hd268622269222%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e268621269219%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd268622269222%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd268622269222%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl268623269224%_))
                                                  (let ((_%$%e268624269227%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl268623269224%_))))
                                                    (let ((_%$%tl268626269232%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e268624269227%_)))
                                                          (_%$%hd268625269230%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e268624269227%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl268626269232%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%$%tl268620269216%_))
                      (let ((_%__splice269634269635%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl268620269216%_
                                '0))))
                        (let ((_%$%tl268629269237%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice269634269635%_ '1)))
                              (_%$%target268627269235%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice269634269635%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl268629269237%_))
                              (_%__match269683269684%_
                               _%$%e268615269203%_
                               _%$%hd268616269206%_
                               _%$%tl268617269208%_
                               _%$%e268618269211%_
                               _%$%hd268619269214%_
                               _%$%tl268620269216%_
                               _%$%e268621269219%_
                               _%$%hd268622269222%_
                               _%$%tl268623269224%_
                               _%$%e268624269227%_
                               _%$%hd268625269230%_
                               _%$%tl268626269232%_
                               _%__splice269634269635%_
                               _%$%target268627269235%_
                               _%$%tl268629269237%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g268611268693%_)))))
                      (let () (declare (not safe)) (_%$%g268611268693%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%$%tl268620269216%_))
                      (let ((_%__splice269644269645%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl268620269216%_
                                '0))))
                        (let ((_%$%tl268682268716%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice269644269645%_ '1)))
                              (_%$%target268680268714%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice269644269645%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl268682268716%_))
                              (_%__match269739269740%_
                               _%$%e268615269203%_
                               _%$%hd268616269206%_
                               _%$%tl268617269208%_
                               _%$%e268618269211%_
                               _%$%hd268619269214%_
                               _%$%tl268620269216%_
                               _%__splice269644269645%_
                               _%$%target268680268714%_
                               _%$%tl268682268716%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g268611268693%_)))))
                      (let () (declare (not safe)) (_%$%g268611268693%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl268620269216%_))
                                                      (let ((_%__splice269644269645%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl268620269216%_
                        '0))))
                (let ((_%$%tl268682268716%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice269644269645%_ '1)))
                      (_%$%target268680268714%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice269644269645%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl268682268716%_))
                      (_%__match269739269740%_
                       _%$%e268615269203%_
                       _%$%hd268616269206%_
                       _%$%tl268617269208%_
                       _%$%e268618269211%_
                       _%$%hd268619269214%_
                       _%$%tl268620269216%_
                       _%__splice269644269645%_
                       _%$%target268680268714%_
                       _%$%tl268682268716%_)
                      (let () (declare (not safe)) (_%$%g268611268693%_)))))
              (let () (declare (not safe)) (_%$%g268611268693%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#lambda
                                                     _%$%hd268622269222%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl268623269224%_))
                                                      (let ((_%$%e268648268805%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl268623269224%_))))
                (let ((_%$%tl268650268810%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e268648268805%_)))
                      (_%$%hd268649268808%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e268648268805%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%$%hd268649268808%_))
                      (let ((_%__splice269638269639%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%hd268649268808%_
                                '0))))
                        (let ((_%$%tl268653268815%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice269638269639%_ '1)))
                              (_%$%target268651268813%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice269638269639%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl268653268815%_))
                              (_%__match269719269720%_
                               _%$%e268615269203%_
                               _%$%hd268616269206%_
                               _%$%tl268617269208%_
                               _%$%e268618269211%_
                               _%$%hd268619269214%_
                               _%$%tl268620269216%_
                               _%$%e268621269219%_
                               _%$%hd268622269222%_
                               _%$%tl268623269224%_
                               _%$%e268648268805%_
                               _%$%hd268649268808%_
                               _%$%tl268650268810%_
                               _%__splice269638269639%_
                               _%$%target268651268813%_
                               _%$%tl268653268815%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _%$%tl268620269216%_))
                                  (let ((_%__splice269644269645%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice->vector
                                            _%$%tl268620269216%_
                                            '0))))
                                    (let ((_%$%tl268682268716%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice269644269645%_
                                              '1)))
                                          (_%$%target268680268714%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice269644269645%_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl268682268716%_))
                                          (_%__match269739269740%_
                                           _%$%e268615269203%_
                                           _%$%hd268616269206%_
                                           _%$%tl268617269208%_
                                           _%$%e268618269211%_
                                           _%$%hd268619269214%_
                                           _%$%tl268620269216%_
                                           _%__splice269644269645%_
                                           _%$%target268680268714%_
                                           _%$%tl268682268716%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g268611268693%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g268611268693%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%$%tl268620269216%_))
                          (let ((_%__splice269644269645%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%$%tl268620269216%_
                                    '0))))
                            (let ((_%$%tl268682268716%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice269644269645%_
                                      '1)))
                                  (_%$%target268680268714%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice269644269645%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl268682268716%_))
                                  (_%__match269739269740%_
                                   _%$%e268615269203%_
                                   _%$%hd268616269206%_
                                   _%$%tl268617269208%_
                                   _%$%e268618269211%_
                                   _%$%hd268619269214%_
                                   _%$%tl268620269216%_
                                   _%__splice269644269645%_
                                   _%$%target268680268714%_
                                   _%$%tl268682268716%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g268611268693%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g268611268693%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%$%tl268620269216%_))
                  (let ((_%__splice269644269645%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%$%tl268620269216%_
                            '0))))
                    (let ((_%$%tl268682268716%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice269644269645%_ '1)))
                          (_%$%target268680268714%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice269644269645%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl268682268716%_))
                          (_%__match269739269740%_
                           _%$%e268615269203%_
                           _%$%hd268616269206%_
                           _%$%tl268617269208%_
                           _%$%e268618269211%_
                           _%$%hd268619269214%_
                           _%$%tl268620269216%_
                           _%__splice269644269645%_
                           _%$%target268680268714%_
                           _%$%tl268682268716%_)
                          (let ()
                            (declare (not safe))
                            (_%$%g268611268693%_)))))
                  (let () (declare (not safe)) (_%$%g268611268693%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl268620269216%_))
                                                      (let ((_%__splice269644269645%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl268620269216%_
                        '0))))
                (let ((_%$%tl268682268716%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice269644269645%_ '1)))
                      (_%$%target268680268714%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice269644269645%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl268682268716%_))
                      (_%__match269739269740%_
                       _%$%e268615269203%_
                       _%$%hd268616269206%_
                       _%$%tl268617269208%_
                       _%$%e268618269211%_
                       _%$%hd268619269214%_
                       _%$%tl268620269216%_
                       _%__splice269644269645%_
                       _%$%target268680268714%_
                       _%$%tl268682268716%_)
                      (let () (declare (not safe)) (_%$%g268611268693%_)))))
              (let () (declare (not safe)) (_%$%g268611268693%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%$%tl268620269216%_))
                                              (let ((_%__splice269644269645%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl268620269216%_
                                                        '0))))
                                                (let ((_%$%tl268682268716%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice269644269645%_
                                                          '1)))
                                                      (_%$%target268680268714%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice269644269645%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl268682268716%_))
                                                      (_%__match269739269740%_
                                                       _%$%e268615269203%_
                                                       _%$%hd268616269206%_
                                                       _%$%tl268617269208%_
                                                       _%$%e268618269211%_
                                                       _%$%hd268619269214%_
                                                       _%$%tl268620269216%_
                                                       _%__splice269644269645%_
                                                       _%$%target268680268714%_
                                                       _%$%tl268682268716%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g268611268693%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g268611268693%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl268620269216%_))
                                      (let ((_%__splice269644269645%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%tl268620269216%_
                                                '0))))
                                        (let ((_%$%tl268682268716%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice269644269645%_
                                                  '1)))
                                              (_%$%target268680268714%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice269644269645%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl268682268716%_))
                                              (_%__match269739269740%_
                                               _%$%e268615269203%_
                                               _%$%hd268616269206%_
                                               _%$%tl268617269208%_
                                               _%$%e268618269211%_
                                               _%$%hd268619269214%_
                                               _%$%tl268620269216%_
                                               _%__splice269644269645%_
                                               _%$%target268680268714%_
                                               _%$%tl268682268716%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g268611268693%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g268611268693%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g268611268693%_)))))
                  (let () (declare (not safe)) (_%$%g268611268693%_))))))))
    (define gxc#optimize-special-cast
      (lambda (_%self268411%_ _%stx268412%_)
        (let* ((_%__stx269742269743%_ _%stx268412%_)
               (_%$%g268416268456%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx269742269743%_)))))
          (let ((_%__kont269744269745%_
                 (lambda (_%$%g268418268572%_ _%$%g268419268573%_)
                   (let* ((_%descriptor-id268593%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%$%g268419268573%_)))
                          (_%descriptor-type268595%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type
                              _%descriptor-id268593%_)))
                          (_%object-type268597%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%$%g268418268572%_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _%descriptor-type268595%_
                            'gxc#!interface::t))
                         (if (and _%object-type268597%_
                                  (let ((__tmp270457
                                         (let ((__tmp270458
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%descriptor-type268595%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx268412%_
                                            __tmp270458))))
                                    (declare (not safe))
                                    (gxc#!type-subtype?
                                     _%object-type268597%_
                                     __tmp270457)))
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self268411%_
                                _%$%g268418268572%_))
                             (let ((__tmp270459
                                    (cons '%#call-unchecked
                                          (cons '(%#ref cast)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#ref))
                                                            (cons _%$%g268419268573%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self268411%_ _%$%g268418268572%_))
                    '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp270459
                                _%stx268412%_)))
                         (let ()
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"illegal cast; not an interface type"
                            _%stx268412%_
                            _%descriptor-type268595%_))))))
                (_%__kont269746269747%_
                 (lambda (_%$%g268438268500%_ _%$%g268439268501%_)
                   (let ((__tmp270460
                          (cons '%#call-unchecked
                                (cons '(%#ref cast)
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self268411%_
                                               _%$%g268439268501%_))
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self268411%_
                                                     _%$%g268438268500%_))
                                                  '()))))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp270460 _%stx268412%_))))
                (_%__kont269748269749%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"illegal cast; arity mismatch"
                      _%stx268412%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx269742269743%_))
                (let ((_%$%e268420268524%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx269742269743%_))))
                  (let ((_%$%tl268422268529%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e268420268524%_)))
                        (_%$%hd268421268527%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e268420268524%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl268422268529%_))
                        (let ((_%$%e268423268532%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl268422268529%_))))
                          (let ((_%$%tl268425268537%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e268423268532%_)))
                                (_%$%hd268424268535%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e268423268532%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl268425268537%_))
                                (let ((_%$%e268426268540%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl268425268537%_))))
                                  (let ((_%$%tl268428268545%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e268426268540%_)))
                                        (_%$%hd268427268543%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e268426268540%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd268427268543%_))
                                        (let ((_%$%e268429268548%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd268427268543%_))))
                                          (let ((_%$%tl268431268553%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e268429268548%_)))
                                                (_%$%hd268430268551%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e268429268548%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd268430268551%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%$%hd268430268551%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl268431268553%_))
                                                        (let ((_%$%e268432268556%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl268431268553%_))))
                  (let ((_%$%tl268434268561%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e268432268556%_)))
                        (_%$%hd268433268559%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e268432268556%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl268434268561%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl268428268545%_))
                            (let ((_%$%e268435268564%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl268428268545%_))))
                              (let ((_%$%tl268437268569%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e268435268564%_)))
                                    (_%$%hd268436268567%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e268435268564%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl268437268569%_))
                                    (_%__kont269744269745%_
                                     _%$%hd268436268567%_
                                     _%$%hd268433268559%_)
                                    (_%__kont269748269749%_))))
                            (_%__kont269748269749%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl268428268545%_))
                            (let ((_%$%e268449268492%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl268428268545%_))))
                              (let ((_%$%tl268451268497%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e268449268492%_)))
                                    (_%$%hd268450268495%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e268449268492%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl268451268497%_))
                                    (_%__kont269746269747%_
                                     _%$%hd268450268495%_
                                     _%$%hd268427268543%_)
                                    (_%__kont269748269749%_))))
                            (_%__kont269748269749%_)))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%$%tl268428268545%_))
                    (let ((_%$%e268449268492%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl268428268545%_))))
                      (let ((_%$%tl268451268497%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e268449268492%_)))
                            (_%$%hd268450268495%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e268449268492%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl268451268497%_))
                            (_%__kont269746269747%_
                             _%$%hd268450268495%_
                             _%$%hd268427268543%_)
                            (_%__kont269748269749%_))))
                    (_%__kont269748269749%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl268428268545%_))
                                                        (let ((_%$%e268449268492%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl268428268545%_))))
                  (let ((_%$%tl268451268497%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e268449268492%_)))
                        (_%$%hd268450268495%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e268449268492%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl268451268497%_))
                        (_%__kont269746269747%_
                         _%$%hd268450268495%_
                         _%$%hd268427268543%_)
                        (_%__kont269748269749%_))))
                (_%__kont269748269749%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl268428268545%_))
                                                    (let ((_%$%e268449268492%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl268428268545%_))))
                                                      (let ((_%$%tl268451268497%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e268449268492%_)))
                    (_%$%hd268450268495%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e268449268492%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl268451268497%_))
                    (_%__kont269746269747%_
                     _%$%hd268450268495%_
                     _%$%hd268427268543%_)
                    (_%__kont269748269749%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont269748269749%_)))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl268428268545%_))
                                            (let ((_%$%e268449268492%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl268428268545%_))))
                                              (let ((_%$%tl268451268497%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e268449268492%_)))
                                                    (_%$%hd268450268495%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e268449268492%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl268451268497%_))
                                                    (_%__kont269746269747%_
                                                     _%$%hd268450268495%_
                                                     _%$%hd268427268543%_)
                                                    (_%__kont269748269749%_))))
                                            (_%__kont269748269749%_)))))
                                (_%__kont269748269749%_))))
                        (_%__kont269748269749%_))))
                (_%__kont269748269749%_))))))
    (define gxc#special-procedure-optimizers
      (let ((_%ht268408%_
             (let () (declare (not safe)) (make-hash-table-eq 'size: '1))))
        (let ()
          (declare (not safe))
          (__hash-put! _%ht268408%_ 'cast gxc#optimize-special-cast))
        _%ht268408%_))
    (define gxc#!procedure::optimize-call
      (lambda (_%self268370%_ _%ctx268371%_ _%stx268372%_ _%args268373%_)
        (let ((_%self268376%_ _%self268370%_))
          (if (let ((__method270419
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self268376%_ 'check-arguments))))
                (if __method270419
                    (let ()
                      (declare (not safe))
                      (__method270419
                       _%self268376%_
                       _%ctx268371%_
                       _%stx268372%_
                       _%args268373%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self268376%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature268386%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self268376%_ '2 '#f '#f)))
                     (_%signature268388%_ _%signature268386%_)
                     (_%$e268398%_
                      (if _%signature268388%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature268388%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e268398%_
                    (if (let ()
                          (declare (not safe))
                          (gxc#symbol-in-local-scope? _%$e268398%_))
                        (let ((__tmp270461
                               (cons '%#call
                                     (cons (cons '%#ref
                                                 (cons _%$e268398%_ '()))
                                           (map (lambda (_%$%g268402268404%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%ctx268371%_
                                                     _%$%g268402268404%_)))
                                                _%args268373%_)))))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp270461
                           _%stx268372%_
                           _%ctx268371%_))
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx268371%_ _%stx268372%_)))
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx268371%_ _%stx268372%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx268371%_ _%stx268372%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass269491 __method-table269492)
        (let ((__check-arguments269493
               (let ((__tmp270462
                      (lambda ()
                        (let ((__method269494
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table269492
                                  'check-arguments
                                  '#f))))
                          (if __method269494
                              __method269494
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp270462))))
          (lambda (_%self268370%_ _%ctx268371%_ _%stx268372%_ _%args268373%_)
            (let ((_%self268376%_ _%self268370%_))
              (if ((force __check-arguments269493)
                   _%self268376%_
                   _%ctx268371%_
                   _%stx268372%_
                   _%args268373%_)
                  (let* ((_%signature268386%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self268376%_
                             '2
                             '#f
                             '#f)))
                         (_%signature268388%_ _%signature268386%_)
                         (_%$e268398%_
                          (if _%signature268388%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature268388%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e268398%_
                        (if (let ()
                              (declare (not safe))
                              (gxc#symbol-in-local-scope? _%$e268398%_))
                            (let ((__tmp270463
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%$e268398%_ '()))
                                               (map (lambda (_%$%g268402268404%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%ctx268371%_
                                                         _%$%g268402268404%_)))
                                                    _%args268373%_)))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp270463
                               _%stx268372%_
                               _%ctx268371%_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _%ctx268371%_ _%stx268372%_)))
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx268371%_ _%stx268372%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx268371%_ _%stx268372%_))))))))
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
      (lambda (_%self268123%_ _%ctx268124%_ _%stx268125%_ _%args268126%_)
        (let* ((_%self268129%_ _%self268123%_)
               (_%$%signature268138268140%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self268129%_ '2 '#f '#f))))
          (if _%$%signature268138268140%_
              (let* ((_%signature268142%_ _%$%signature268138268140%_)
                     (_%$%argument-types268143268145%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature268142%_
                         '3
                         '#f
                         '#f))))
                (if _%$%argument-types268143268145%_
                    (let* ((_%argument-types268147%_
                            _%$%argument-types268143268145%_)
                           (_%argument-types268152%_
                            (let ((__tmp270464
                                   (lambda (_%t268150%_)
                                     (if _%t268150%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-type-expression
                                            _%stx268125%_
                                            _%t268150%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map-type-expressions
                               __tmp270464
                               _%argument-types268147%_))))
                      (let _%loop268154%_ ((_%rest-args268156%_ _%args268126%_)
                                           (_%rest-types268157%_
                                            _%argument-types268152%_)
                                           (_%result268158%_ '#t))
                        (let* ((_%$%rest-args268159268167%_
                                _%rest-args268156%_)
                               (_%$%else268161268175%_
                                (lambda () _%result268158%_))
                               (_%$%K268163268236%_
                                (lambda (_%rest-args268178%_ _%arg268179%_)
                                  (let* ((_%$%rest-types268180268191%_
                                          _%rest-types268157%_)
                                         (_%$%E268184268195%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%$%rest-types268180268191%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%$%K268187268224%_
                                           (lambda (_%rest-types268221%_
                                                    _%type268222%_)
                                             (_%loop268154%_
                                              _%rest-args268178%_
                                              _%rest-types268221%_
                                              (if (gxc#check-expression-type!
                                                   _%stx268125%_
                                                   _%arg268179%_
                                                   _%type268222%_)
                                                  _%result268158%_
                                                  '#f))))
                                          (_%$%K268186268215%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx268125%_
                                                _%argument-types268152%_))))
                                          (_%$%K268185268205%_
                                           (lambda (_%tail-type268199%_)
                                             (if (let ((__tmp270465
                                                        (lambda (_%$%g268200268202%_)
                                                          (gxc#check-expression-type!
                                                           _%stx268125%_
                                                           _%$%g268200268202%_
                                                           _%tail-type268199%_))))
                                                   (declare (not safe))
                                                   (andmap__0
                                                    __tmp270465
                                                    _%rest-args268178%_))
                                                 _%result268158%_
                                                 '#f))))
                                      (let ((_%$%try-match268182268218%_
                                             (lambda ()
                                               (if (null? _%$%rest-types268180268191%_)
                                                   (_%$%K268186268215%_)
                                                   (let ((_%tail-type268208%_
                                                          _%$%rest-types268180268191%_))
                                                     (_%$%K268185268205%_
                                                      _%tail-type268208%_))))))
                                        (if (pair? _%$%rest-types268180268191%_)
                                            (let ((_%$%tl268189268229%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%rest-types268180268191%_)))
                                                  (_%$%hd268188268227%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%rest-types268180268191%_))))
                                              (let ((_%type268232%_
                                                     _%$%hd268188268227%_)
                                                    (_%rest-types268234%_
                                                     _%$%tl268189268229%_))
                                                (_%$%K268187268224%_
                                                 _%rest-types268234%_
                                                 _%type268232%_)))
                                            (_%$%try-match268182268218%_))))))))
                          (if (pair? _%$%rest-args268159268167%_)
                              (let ((_%$%hd268164268239%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest-args268159268167%_)))
                                    (_%$%tl268165268241%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest-args268159268167%_))))
                                (let* ((_%arg268244%_ _%$%hd268164268239%_)
                                       (_%rest-args268246%_
                                        _%$%tl268165268241%_))
                                  (_%$%K268163268236%_
                                   _%rest-args268246%_
                                   _%arg268244%_)))
                              (_%$%else268161268175%_)))))
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
      (lambda (_%self267926%_ _%ctx267927%_ _%stx267928%_ _%args267929%_)
        (let* ((_%self267932%_ _%self267926%_)
               (_%$%g267942267952%_
                (lambda (_%$%g267943267949%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g267943267949%_))))
               (_%$%g267941267998%_
                (lambda (_%$%g267943267955%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g267943267955%_))
                      (let ((_%$%e267945267957%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g267943267955%_))))
                        (let ((_%$%hd267946267960%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e267945267957%_)))
                              (_%$%tl267947267962%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e267945267957%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl267947267962%_))
                              (let* ((_%klass267977%_
                                      (let ((__tmp270466
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self267932%_
                                                '1
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx267928%_
                                         __tmp270466)))
                                     (_%object267979%_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%ctx267927%_
                                         _%$%hd267946267960%_)))
                                     (_%instance?267984%_
                                      (let ((_%$e267981%_
                                             (gxc#expression-type?
                                              _%object267979%_
                                              _%klass267977%_)))
                                        (if _%$e267981%_
                                            _%$e267981%_
                                            (gxc#expression-type?
                                             _%$%hd267946267960%_
                                             _%klass267977%_))))
                                     (_%incompatible?267989%_
                                      (let ((_%$e267986%_
                                             (gxc#incompatible-type?
                                              _%object267979%_
                                              _%klass267977%_)))
                                        (if _%$e267986%_
                                            _%$e267986%_
                                            (gxc#incompatible-type?
                                             _%$%hd267946267960%_
                                             _%klass267977%_)))))
                                (if _%instance?267984%_
                                    (let ((__tmp270467
                                           (if (or (gxc#expression-no-side-effects?
                                                    _%object267979%_)
                                                   (gxc#expression-no-side-effects?
                                                    _%$%hd267946267960%_))
                                               (cons '%#quote (cons '#t '()))
                                               (cons '%#begin
                                                     (cons _%object267979%_
                                                           (cons '(%#quote #t)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp270467
                                       _%stx267928%_))
                                    (if _%incompatible?267989%_
                                        (let ((__tmp270468
                                               (cons '%#begin
                                                     (cons _%object267979%_
                                                           (cons '(%#quote #f)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp270468
                                           _%stx267928%_))
                                        (let ()
                                          (declare (not safe))
                                          (gxc#xform-call%
                                           _%ctx267927%_
                                           _%stx267928%_)))))
                              (_%$%g267942267952%_ _%$%g267943267955%_))))
                      (_%$%g267942267952%_ _%$%g267943267955%_)))))
          (_%$%g267941267998%_ _%args267929%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self267715%_ _%ctx267716%_ _%stx267717%_ _%args267718%_)
        (let* ((_%self267721%_ _%self267715%_)
               (_%$%g267731267741%_
                (lambda (_%$%g267732267738%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g267732267738%_))))
               (_%$%g267730267801%_
                (lambda (_%$%g267732267744%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g267732267744%_))
                      (let ((_%$%e267734267746%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g267732267744%_))))
                        (let ((_%$%hd267735267749%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e267734267746%_)))
                              (_%$%tl267736267751%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e267734267746%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl267736267751%_))
                              (let* ((_%klass267766%_
                                      (let ((__tmp270469
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self267721%_
                                                '1
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx267717%_
                                         __tmp270469)))
                                     (_%object267768%_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%ctx267716%_
                                         _%$%hd267735267749%_)))
                                     (_%instance?267773%_
                                      (let ((_%$e267770%_
                                             (gxc#expression-type?
                                              _%object267768%_
                                              _%klass267766%_)))
                                        (if _%$e267770%_
                                            _%$e267770%_
                                            (gxc#expression-type?
                                             _%$%hd267735267749%_
                                             _%klass267766%_))))
                                     (_%incompatible?267778%_
                                      (let ((_%$e267775%_
                                             (gxc#incompatible-type?
                                              _%object267768%_
                                              _%klass267766%_)))
                                        (if _%$e267775%_
                                            _%$e267775%_
                                            (gxc#incompatible-type?
                                             _%$%hd267735267749%_
                                             _%klass267766%_))))
                                     (_%klass267781%_ _%klass267766%_))
                                (if _%instance?267773%_
                                    (let ((__tmp270470
                                           (if (or (gxc#expression-no-side-effects?
                                                    _%object267768%_)
                                                   (gxc#expression-no-side-effects?
                                                    _%$%hd267735267749%_))
                                               (cons '%#quote (cons '#t '()))
                                               (cons '%#begin
                                                     (cons _%object267768%_
                                                           (cons '(%#quote #t)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp270470
                                       _%stx267717%_))
                                    (if _%incompatible?267778%_
                                        (let ((__tmp270471
                                               (cons '%#begin
                                                     (cons _%object267768%_
                                                           (cons '(%#quote #f)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp270471
                                           _%stx267717%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass267781%_
                                               '8
                                               '#f
                                               '#f))
                                            (let ((__tmp270472
                                                   (cons '%#struct-direct-instance?
                                                         (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass267781%_
                                      '1
                                      '#f
                                      '#f))
                                   '()))
                       (cons _%object267768%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp270472
                                               _%stx267717%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass267781%_
                                                   '7
                                                   '#f
                                                   '#f))
                                                (let ((__tmp270473
                                                       (cons '%#struct-instance?
                                                             (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass267781%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons _%object267768%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp270473
                                                   _%stx267717%_))
                                                (let ((__tmp270474
                                                       (cons '%#call
                                                             (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons 'class-instance? '()))
                           (cons (cons '%#ref
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self267721%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons _%object267768%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp270474
                                                   _%stx267717%_)))))))
                              (_%$%g267731267741%_ _%$%g267732267744%_))))
                      (_%$%g267731267741%_ _%$%g267732267744%_)))))
          (_%$%g267730267801%_ _%args267718%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx267383%_)
        (let* ((_%__stx269829269830%_ _%stx267383%_)
               (_%$%g267388267429%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx269829269830%_)))))
          (let ((_%__kont269831269832%_ (lambda () '#t))
                (_%__kont269833269834%_ (lambda () '#t))
                (_%__kont269835269836%_
                 (lambda (_%$%g267402267495%_ _%$%g267403267496%_)
                   (let ((_%$%rator-type267517267519%_
                          (let ((__tmp270475
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol
                                    _%$%g267403267496%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp270475))))
                     (if _%$%rator-type267517267519%_
                         (let* ((_%rator-type267521%_
                                 _%$%rator-type267517267519%_)
                                (_%$%rator-signature267522267524%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type267521%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type267521%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%$%rator-signature267522267524%_
                               (let* ((_%rator-signature267526%_
                                       _%$%rator-signature267522267524%_)
                                      (_%$%rator-effect267527267529%_
                                       (if _%rator-signature267526%_
                                           (##direct-structure-ref
                                            _%rator-signature267526%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%$%rator-effect267527267529%_
                                     (let ((_%rator-effect267531%_
                                            _%$%rator-effect267527267529%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect267531%_)
                                               (equal? '(alloc)
                                                       _%rator-effect267531%_))
                                           (let ((__tmp270476
                                                  (let ((__tmp270477
                                                         (lambda (_%$%g267536267539%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g267537267541%_)
                   (cons _%$%g267536267539%_ _%$%g267537267541%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp270477
                                                     '()
                                                     _%$%g267402267495%_))))
                                             (declare (not safe))
                                             (andmap__0
                                              gxc#expression-no-side-effects?
                                              __tmp270476))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont269839269840%_ (lambda () '#f)))
            (let ((_%__match269918269919%_
                   (lambda (_%$%e267404267441%_
                            _%$%hd267405267444%_
                            _%$%tl267406267446%_
                            _%$%e267407267449%_
                            _%$%hd267408267452%_
                            _%$%tl267409267454%_
                            _%$%e267410267457%_
                            _%$%hd267411267460%_
                            _%$%tl267412267462%_
                            _%$%e267413267465%_
                            _%$%hd267414267468%_
                            _%$%tl267415267470%_
                            _%__splice269837269838%_
                            _%$%target267416267473%_
                            _%$%tl267418267475%_)
                     (letrec ((_%$%loop267419267478%_
                               (lambda (_%$%hd267417267481%_
                                        _%$%rand267423267483%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd267417267481%_))
                                     (let ((_%$%e267420267485%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd267417267481%_))))
                                       (let ((_%$%lp-tl267422267490%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e267420267485%_)))
                                             (_%$%lp-hd267421267488%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e267420267485%_))))
                                         (_%$%loop267419267478%_
                                          _%$%lp-tl267422267490%_
                                          (cons _%$%lp-hd267421267488%_
                                                _%$%rand267423267483%_))))
                                     (let ((_%$%rand267424267493%_
                                            (reverse _%$%rand267423267483%_)))
                                       (_%__kont269835269836%_
                                        _%$%rand267424267493%_
                                        _%$%hd267414267468%_))))))
                       (_%$%loop267419267478%_
                        _%$%target267416267473%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx269829269830%_))
                  (let ((_%$%e267390267572%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx269829269830%_))))
                    (let ((_%$%tl267392267577%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e267390267572%_)))
                          (_%$%hd267391267575%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e267390267572%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%$%hd267391267575%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%$%hd267391267575%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl267392267577%_))
                                  (let ((_%$%e267393267580%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl267392267577%_))))
                                    (let ((_%$%tl267395267585%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e267393267580%_)))
                                          (_%$%hd267394267583%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e267393267580%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl267395267585%_))
                                          (_%__kont269831269832%_)
                                          (_%__kont269839269840%_))))
                                  (_%__kont269839269840%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%$%hd267391267575%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl267392267577%_))
                                      (let ((_%$%e267399267557%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl267392267577%_))))
                                        (let ((_%$%tl267401267562%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e267399267557%_)))
                                              (_%$%hd267400267560%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e267399267557%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl267401267562%_))
                                              (_%__kont269833269834%_)
                                              (_%__kont269839269840%_))))
                                      (_%__kont269839269840%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%$%hd267391267575%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl267392267577%_))
                                          (let ((_%$%e267407267449%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl267392267577%_))))
                                            (let ((_%$%tl267409267454%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e267407267449%_)))
                                                  (_%$%hd267408267452%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e267407267449%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd267408267452%_))
                                                  (let ((_%$%e267410267457%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd267408267452%_))))
                                                    (let ((_%$%tl267412267462%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e267410267457%_)))
                                                          (_%$%hd267411267460%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e267410267457%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd267411267460%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%$%hd267411267460%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl267412267462%_))
                          (let ((_%$%e267413267465%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl267412267462%_))))
                            (let ((_%$%tl267415267470%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e267413267465%_)))
                                  (_%$%hd267414267468%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e267413267465%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl267415267470%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl267409267454%_))
                                      (let ((_%__splice269837269838%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%tl267409267454%_
                                                '0))))
                                        (let ((_%$%tl267418267475%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice269837269838%_
                                                  '1)))
                                              (_%$%target267416267473%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice269837269838%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl267418267475%_))
                                              (_%__match269918269919%_
                                               _%$%e267390267572%_
                                               _%$%hd267391267575%_
                                               _%$%tl267392267577%_
                                               _%$%e267407267449%_
                                               _%$%hd267408267452%_
                                               _%$%tl267409267454%_
                                               _%$%e267410267457%_
                                               _%$%hd267411267460%_
                                               _%$%tl267412267462%_
                                               _%$%e267413267465%_
                                               _%$%hd267414267468%_
                                               _%$%tl267415267470%_
                                               _%__splice269837269838%_
                                               _%$%target267416267473%_
                                               _%$%tl267418267475%_)
                                              (_%__kont269839269840%_))))
                                      (_%__kont269839269840%_))
                                  (_%__kont269839269840%_))))
                          (_%__kont269839269840%_))
                      (_%__kont269839269840%_))
                  (_%__kont269839269840%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont269839269840%_))))
                                          (_%__kont269839269840%_))
                                      (_%__kont269839269840%_))))
                          (_%__kont269839269840%_))))
                  (_%__kont269839269840%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx267378%_ _%klass267379%_)
        (let ((_%expr-type267381%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx267378%_))))
          (if _%expr-type267381%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type267381%_ _%klass267379%_))
              '#f))))
    (define gxc#incompatible-type?
      (lambda (_%expr267358%_ _%type267359%_)
        (if _%type267359%_
            (if (eq? (##structure-ref _%type267359%_ '1 gxc#!type::t '#f) 't)
                '#f
                (if (eq? (##structure-ref _%type267359%_ '1 gxc#!type::t '#f)
                         'false)
                    '#f
                    (let ((_%expr-type267365%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr267358%_))))
                      (if _%expr-type267365%_
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type267365%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              '#f
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%expr-type267365%_
                                     'gxc#!abort::t))
                                  '#f
                                  (if (let ()
                                        (declare (not safe))
                                        (gxc#!type-subtype?
                                         _%expr-type267365%_
                                         _%type267359%_))
                                      '#f
                                      (if (or (let ()
                                                (declare (not safe))
                                                (##structure-instance-of?
                                                 _%expr-type267365%_
                                                 'gxc#!nullable-type::t))
                                              (let ()
                                                (declare (not safe))
                                                (##structure-instance-of?
                                                 _%type267359%_
                                                 'gxc#!nullable-type::t)))
                                          '#f
                                          (if (let ()
                                                (declare (not safe))
                                                (gxc#!interface-instance?
                                                 _%type267359%_))
                                              '#f
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gxc#!type-subtype?
                                                     _%type267359%_
                                                     _%expr-type267365%_))
                                                  '#f
                                                  '#t))))))
                          '#f))))
            '#f)))
    (define gxc#check-expression-type!
      (lambda (_%stx267332%_ _%expr267333%_ _%type267334%_)
        (if _%type267334%_
            (let ((_%$e267337%_
                   (eq? (##structure-ref _%type267334%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e267337%_
                  _%$e267337%_
                  (let ((_%expr-type267341%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr267333%_))))
                    (if _%expr-type267341%_
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type267341%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e267345%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type267341%_
                                      'gxc#!abort::t))))
                              (if _%$e267345%_
                                  _%$e267345%_
                                  (let ((_%$e267348%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type267341%_
                                            _%type267334%_))))
                                    (if _%$e267348%_
                                        _%$e267348%_
                                        (if (or (let ()
                                                  (declare (not safe))
                                                  (##structure-instance-of?
                                                   _%expr-type267341%_
                                                   'gxc#!nullable-type::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-instance-of?
                                                   _%type267334%_
                                                   'gxc#!nullable-type::t)))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!interface-instance?
                                                   _%type267334%_))
                                                '#f
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gxc#!type-subtype?
                                                       _%type267334%_
                                                       _%expr-type267341%_))
                                                    '#f
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#raise-compile-error
                                                       '"signature type mismatch"
                                                       _%stx267332%_
                                                       _%expr267333%_
                                                       _%expr-type267341%_
                                                       _%type267334%_))))))))))
                        '#f))))
            '#f)))
    (define gxc#!constructor::optimize-call
      (lambda (_%self267146%_ _%ctx267147%_ _%stx267148%_ _%args267149%_)
        (let* ((_%self267152%_ _%self267146%_)
               (_%klass267162%_
                (let ((__tmp270478
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self267152%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx267148%_ __tmp270478)))
               (_%fields267164%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass267162%_
                           '5
                           '#f
                           '#f))))
               (_%args267170%_
                (map (lambda (_%$%g267165267167%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx267147%_ _%$%g267165267167%_)))
                     _%args267149%_))
               (_%inline-make-object267172%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self267152%_
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
                           _%self267152%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields267164%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass267175%_ _%klass267162%_)
               (_%$e267189%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass267175%_ '6 '#f '#f))))
          (if _%$e267189%_
              (let ((_%$obj267194%_
                     (let ((__tmp270479
                            (let () (declare (not safe)) (##gensym '__obj))))
                       (declare (not safe))
                       (make-symbol__0 __tmp270479)))
                    (_%ctor-impl267195%_
                     (let ()
                       (declare (not safe))
                       (gxc#!class-lookup-method
                        _%klass267175%_
                        _%$e267189%_))))
                (let ((__tmp270480
                       (cons '%#let-values
                             (cons (cons (cons (cons _%$obj267194%_ '())
                                               (cons _%inline-make-object267172%_
                                                     '()))
                                         '())
                                   (cons (cons '%#begin
                                               (cons (if _%ctor-impl267195%_
                                                         (let ((__tmp270481
                                                                (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref
                                          (cons _%ctor-impl267195%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj267194%_ '()))
                                          _%args267170%_)))))
                   (declare (not safe))
                   (gxc#xform-wrap-apply
                    __tmp270481
                    _%stx267148%_
                    _%ctx267147%_))
                 (let ((_%$ctor267197%_
                        (let ((__tmp270482
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__constructor))))
                          (declare (not safe))
                          (make-symbol__0 __tmp270482))))
                   (cons '%#let-values
                         (cons (cons (cons (cons _%$ctor267197%_ '())
                                           (cons (cons '%#call
                                                       (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'direct-method-ref '()))
                     (cons (cons '%#ref
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self267152%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#ref (cons _%$obj267194%_ '()))
                                 (cons (cons '%#quote (cons _%$e267189%_ '()))
                                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons (cons '%#if
                                           (cons (cons '%#ref
                                                       (cons _%$ctor267197%_
                                                             '()))
                                                 (cons (cons '%#call
                                                             (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%$ctor267197%_ '()))
                           (cons (cons '%#ref (cons _%$obj267194%_ '()))
                                 _%args267170%_)))
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
                         (##unchecked-structure-ref _%self267152%_ '1 '#f '#f))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons '%#quote
                                                               (cons 'method:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote (cons _%$e267189%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$obj267194%_ '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp270480 _%stx267148%_)))
              (let ((_%$e267199%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass267175%_
                        '10
                        '#f
                        '#f))))
                (if _%$e267199%_
                    (let* ((_%$obj267204%_
                            (let ((__tmp270483
                                   (let ()
                                     (declare (not safe))
                                     (##gensym '__obj))))
                              (declare (not safe))
                              (make-symbol__0 __tmp270483)))
                           (_%metakons267206%_
                            (let ((__tmp270484
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx267148%_
                                      _%$e267199%_))))
                              (declare (not safe))
                              (gxc#!class-lookup-method
                               __tmp270484
                               'instance-init!)))
                           (__tmp270485
                            (cons '%#let-values
                                  (cons (cons (cons (cons _%$obj267204%_ '())
                                                    (cons _%inline-make-object267172%_
                                                          '()))
                                              '())
                                        (cons (cons '%#begin
                                                    (cons (if _%metakons267206%_
                                                              (let ((__tmp270486
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons _%metakons267206%_ '()))
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self267152%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$obj267204%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%args267170%_))))))
                        (declare (not safe))
                        (gxc#xform-wrap-apply
                         __tmp270486
                         _%stx267148%_
                         _%ctx267147%_))
                      (cons '%#call
                            (cons (cons '%#ref (cons 'call-method '()))
                                  (cons (cons '%#ref
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self267152%_
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '()))
                                        (cons (cons '%#quote
                                                    (cons 'instance-init! '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj267204%_
                                                                '()))
                                                    _%args267170%_))))))
                  (cons (cons '%#ref (cons _%$obj267204%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp270485 _%stx267148%_))
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass267175%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp270487
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args267170%_))))
                              (declare (not safe))
                              (##fx= __tmp270487 _%fields267164%_))
                            (let ((__tmp270488
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self267152%_
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
                                              _%self267152%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args267170%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp270488
                               _%stx267148%_))
                            (let ((__tmp270490
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self267152%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp270489
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass267175%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx267148%_
                               __tmp270490
                               __tmp270489)))
                        (let ((_%$obj267211%_
                               (let ((__tmp270491
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp270491))))
                          (let _%lp267213%_ ((_%rest267215%_ _%args267170%_)
                                             (_%initializers267216%_ '()))
                            (let* ((_%__stx269921269922%_ _%rest267215%_)
                                   (_%$%g267220267241%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx269921269922%_)))))
                              (let ((_%__kont269923269924%_
                                     (lambda (_%$%g267222267295%_
                                              _%$%g267223267296%_
                                              _%$%g267224267297%_)
                                       (let* ((_%slot267324%_
                                               (let ((__tmp270492
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%g267224267297%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp270492)))
                                              (_%off267326%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass267175%_
                                                  _%slot267324%_))))
                                         (if _%off267326%_
                                             (_%lp267213%_
                                              _%$%g267222267295%_
                                              (cons (cons _%off267326%_
                                                          _%$%g267223267296%_)
                                                    _%initializers267216%_))
                                             (let ((__tmp270493
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self267152%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx267148%_
                                                __tmp270493
                                                _%slot267324%_))))))
                                    (_%__kont269925269926%_
                                     (lambda ()
                                       (let ((__tmp270494
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj267211%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object267172%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp270496
                                     (let ((__tmp270497
                                            (lambda (_%i267255%_ _%r267256%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self267152%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i267255%_) '()))
                              (cons (cons '%#ref (cons _%$obj267211%_ '()))
                                    (cons (cdr _%i267255%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r267256%_))))
                                       (declare (not safe))
                                       (foldl__0
                                        __tmp270497
                                        '()
                                        _%initializers267216%_)))
                                    (__tmp270495
                                     (cons (cons '%#ref
                                                 (cons _%$obj267211%_ '()))
                                           '())))
                                (declare (not safe))
                                (##append __tmp270496 __tmp270495)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp270494
                                          _%stx267148%_))))
                                    (_%__kont269927269928%_
                                     (lambda ()
                                       (let ((__tmp270498
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj267211%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object267172%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj267211%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args267170%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj267211%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp270498
                                          _%stx267148%_)))))
                                (let* ((_%$%g267218267258%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx269921269922%_))
                                              (_%__kont269925269926%_)
                                              (_%__kont269927269928%_))))
                                       (_%__match269958269959%_
                                        (lambda (_%$%e267225267263%_
                                                 _%$%hd267226267266%_
                                                 _%$%tl267227267268%_
                                                 _%$%e267228267271%_
                                                 _%$%hd267229267274%_
                                                 _%$%tl267230267276%_
                                                 _%$%e267231267279%_
                                                 _%$%hd267232267282%_
                                                 _%$%tl267233267284%_
                                                 _%$%e267234267287%_
                                                 _%$%hd267235267290%_
                                                 _%$%tl267236267292%_)
                                          (let ((_%$%g267222267295%_
                                                 _%$%tl267236267292%_)
                                                (_%$%g267223267296%_
                                                 _%$%hd267235267290%_)
                                                (_%$%g267224267297%_
                                                 _%$%hd267232267282%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%$%g267224267297%_))
                                                (_%__kont269923269924%_
                                                 _%$%g267222267295%_
                                                 _%$%g267223267296%_
                                                 _%$%g267224267297%_)
                                                (_%__kont269927269928%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx269921269922%_))
                                      (let ((_%$%e267225267263%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx269921269922%_))))
                                        (let ((_%$%tl267227267268%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e267225267263%_)))
                                              (_%$%hd267226267266%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e267225267263%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%hd267226267266%_))
                                              (let ((_%$%e267228267271%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd267226267266%_))))
                                                (let ((_%$%tl267230267276%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e267228267271%_)))
                                                      (_%$%hd267229267274%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e267228267271%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%$%hd267229267274%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%$%hd267229267274%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl267230267276%_))
                      (let ((_%$%e267231267279%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl267230267276%_))))
                        (let ((_%$%tl267233267284%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e267231267279%_)))
                              (_%$%hd267232267282%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e267231267279%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl267233267284%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl267227267268%_))
                                  (let ((_%$%e267234267287%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl267227267268%_))))
                                    (let ((_%$%tl267236267292%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e267234267287%_)))
                                          (_%$%hd267235267290%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e267234267287%_))))
                                      (_%__match269958269959%_
                                       _%$%e267225267263%_
                                       _%$%hd267226267266%_
                                       _%$%tl267227267268%_
                                       _%$%e267228267271%_
                                       _%$%hd267229267274%_
                                       _%$%tl267230267276%_
                                       _%$%e267231267279%_
                                       _%$%hd267232267282%_
                                       _%$%tl267233267284%_
                                       _%$%e267234267287%_
                                       _%$%hd267235267290%_
                                       _%$%tl267236267292%_)))
                                  (_%__kont269927269928%_))
                              (_%__kont269927269928%_))))
                      (_%__kont269927269928%_))
                  (_%__kont269927269928%_))
              (_%__kont269927269928%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont269927269928%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g267218267258%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::check-arguments
      (lambda (_%self267008%_ _%ctx267009%_ _%stx267010%_ _%args267011%_)
        (let ((_%self267014%_ _%self267008%_))
          (if (let ()
                (declare (not safe))
                (##unchecked-structure-ref _%self267014%_ '4 '#f '#f))
              (gxc#!procedure::check-arguments
               _%self267014%_
               _%ctx267009%_
               _%stx267010%_
               _%args267011%_)
              '#t))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!accessor::t
       'check-arguments
       gxc#!accessor::check-arguments
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self266791%_ _%ctx266792%_ _%stx266793%_ _%args266794%_)
        (let* ((_%self266797%_ _%self266791%_)
               (_%arguments-ok?266807%_
                (let ((__method270420
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self266797%_ 'check-arguments))))
                  (if __method270420
                      (let ()
                        (declare (not safe))
                        (__method270420
                         _%self266797%_
                         _%ctx266792%_
                         _%stx266793%_
                         _%args266794%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self266797%_
                                 'check-arguments))
                        '#!void))))
               (_%$%g266809266819%_
                (lambda (_%$%g266810266816%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g266810266816%_))))
               (_%$%g266808266883%_
                (lambda (_%$%g266810266822%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g266810266822%_))
                      (let ((_%$%e266812266824%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g266810266822%_))))
                        (let ((_%$%hd266813266827%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e266812266824%_)))
                              (_%$%tl266814266829%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e266812266824%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl266814266829%_))
                              (let* ((_%klass266845%_
                                      (let ((__tmp270499
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self266797%_
                                                '1
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx266793%_
                                         __tmp270499)))
                                     (_%field266847%_
                                      (let ((__tmp270500
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self266797%_
                                                '3
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#!class-slot->field-offset
                                         _%klass266845%_
                                         __tmp270500)))
                                     (_%object266849%_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%ctx266792%_
                                         _%$%hd266813266827%_)))
                                     (_%klass266852%_ _%klass266845%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass266852%_
                                       '8
                                       '#f
                                       '#f))
                                    (let ((__tmp270501
                                           (cons (if (or _%arguments-ok?266807%_
                                                         (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%self266797%_
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
                              _%self266797%_
                              '1
                              '#f
                              '#f))
                           '()))
               (cons (cons '%#quote (cons _%field266847%_ '()))
                     (cons _%object266849%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp270501
                                       _%stx266793%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass266852%_
                                           '7
                                           '#f
                                           '#f))
                                        (let ((__tmp270502
                                               (cons (if (or _%arguments-ok?266807%_
                                                             (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self266797%_
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
                                  _%self266797%_
                                  '1
                                  '#f
                                  '#f))
                               '()))
                   (cons (cons '%#quote (cons _%field266847%_ '()))
                         (cons _%object266849%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp270502
                                           _%stx266793%_))
                                        (let ((_%$e266871%_
                                               (let ((__tmp270503
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self266797%_
                                                         '3
                                                         '#f
                                                         '#f))))
                                                 (declare (not safe))
                                                 (gxc#!class-slot-find-struct
                                                  _%klass266852%_
                                                  __tmp270503))))
                                          (if _%$e266871%_
                                              (let ((__tmp270504
                                                     (cons (if (or _%arguments-ok?266807%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (not (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self266797%_
                                   '4
                                   '#f
                                   '#f))))
                       '%#struct-unchecked-ref
                       '%#struct-ref)
                   (cons (cons '%#ref
                               (cons (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self266797%_
                                        '1
                                        '#f
                                        '#f))
                                     '()))
                         (cons (cons '%#quote (cons _%field266847%_ '()))
                               (cons _%object266849%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp270504
                                                 _%stx266793%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self266797%_
                                                     '4
                                                     '#f
                                                     '#f))
                                                  (let ((__tmp270505
                                                         (let ((_%$obj266880%_
                                                                (let ((__tmp270506
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp270506))))
                   (cons '%#let-values
                         (cons (cons (cons (cons _%$obj266880%_ '())
                                           (cons _%object266849%_ '()))
                                     '())
                               (cons (cons '%#if
                                           (cons (cons '%#struct-direct-instance?
                                                       (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass266852%_
                                    '1
                                    '#f
                                    '#f))
                                 '()))
                     (cons (cons '%#ref (cons _%$obj266880%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons '%#struct-unchecked-ref
                                                             (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self266797%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#quote (cons _%field266847%_ '()))
                                 (cons (cons '%#ref (cons _%$obj266880%_ '()))
                                       '()))))
               (cons (if _%arguments-ok?266807%_
                         (cons '%#call
                               (cons (cons '%#ref
                                           (cons 'unchecked-slot-ref '()))
                                     (cons (cons '%#ref
                                                 (cons _%$obj266880%_ '()))
                                           (cons (cons '%#quote
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self266797%_ '3 '#f '#f))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'class-slot-ref '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self266797%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#ref
                                                       (cons _%$obj266880%_
                                                             '()))
                                                 (cons (cons '%#quote
                                                             (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%self266797%_
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
                                                     __tmp270505
                                                     _%stx266793%_))
                                                  (let ((__tmp270507
                                                         (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'unchecked-slot-ref '()))
                             (cons _%object266849%_
                                   (cons (cons '%#quote
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self266797%_
                                                        '3
                                                        '#f
                                                        '#f))
                                                     '()))
                                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp270507
                                                     _%stx266793%_))))))))
                              (_%$%g266809266819%_ _%$%g266810266822%_))))
                      (_%$%g266809266819%_ _%$%g266810266822%_)))))
          (_%$%g266808266883%_ _%args266794%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass269495 __method-table269496)
        (let ((__check-arguments269497
               (let ((__tmp270508
                      (lambda ()
                        (let ((__method269498
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table269496
                                  'check-arguments
                                  '#f))))
                          (if __method269498
                              __method269498
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp270508)))
              (__slot269499
               (let ((__slot269500
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass269495 'slot))))
                 (if __slot269500
                     __slot269500
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self266791%_ _%ctx266792%_ _%stx266793%_ _%args266794%_)
            (let* ((_%self266797%_ _%self266791%_)
                   (_%arguments-ok?266807%_
                    ((force __check-arguments269497)
                     _%self266797%_
                     _%ctx266792%_
                     _%stx266793%_
                     _%args266794%_))
                   (_%$%g266809266819%_
                    (lambda (_%$%g266810266816%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g266810266816%_))))
                   (_%$%g266808266883%_
                    (lambda (_%$%g266810266822%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%g266810266822%_))
                          (let ((_%$%e266812266824%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%g266810266822%_))))
                            (let ((_%$%hd266813266827%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e266812266824%_)))
                                  (_%$%tl266814266829%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e266812266824%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl266814266829%_))
                                  (let* ((_%klass266845%_
                                          (let ((__tmp270509
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self266797%_
                                                    '1
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             _%stx266793%_
                                             __tmp270509)))
                                         (_%field266847%_
                                          (let ((__tmp270510
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self266797%_
                                                    '3
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (gxc#!class-slot->field-offset
                                             _%klass266845%_
                                             __tmp270510)))
                                         (_%object266849%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%ctx266792%_
                                             _%$%hd266813266827%_)))
                                         (_%klass266852%_ _%klass266845%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass266852%_
                                           '8
                                           '#f
                                           '#f))
                                        (let ((__tmp270511
                                               (cons (if (or _%arguments-ok?266807%_
                                                             (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self266797%_
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
                                  _%self266797%_
                                  '1
                                  '#f
                                  '#f))
                               '()))
                   (cons (cons '%#quote (cons _%field266847%_ '()))
                         (cons _%object266849%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp270511
                                           _%stx266793%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass266852%_
                                               '7
                                               '#f
                                               '#f))
                                            (let ((__tmp270512
                                                   (cons (if (or _%arguments-ok?266807%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self266797%_
                                 '4
                                 '#f
                                 '#f))))
                     '%#struct-unchecked-ref
                     '%#struct-ref)
                 (cons (cons '%#ref
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self266797%_
                                      '1
                                      '#f
                                      '#f))
                                   '()))
                       (cons (cons '%#quote (cons _%field266847%_ '()))
                             (cons _%object266849%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp270512
                                               _%stx266793%_))
                                            (let ((_%$e266871%_
                                                   (let ((__tmp270513
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%self266797%_
                                                             '3
                                                             '#f
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#!class-slot-find-struct
                                                      _%klass266852%_
                                                      __tmp270513))))
                                              (if _%$e266871%_
                                                  (let ((__tmp270514
                                                         (cons (if (or _%arguments-ok?266807%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (not (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self266797%_
                                       '4
                                       '#f
                                       '#f))))
                           '%#struct-unchecked-ref
                           '%#struct-ref)
                       (cons (cons '%#ref
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self266797%_
                                            '1
                                            '#f
                                            '#f))
                                         '()))
                             (cons (cons '%#quote (cons _%field266847%_ '()))
                                   (cons _%object266849%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp270514
                                                     _%stx266793%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self266797%_
                                                         '4
                                                         '#f
                                                         '#f))
                                                      (let ((__tmp270515
                                                             (let ((_%$obj266880%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp270516
                                   (let ()
                                     (declare (not safe))
                                     (##gensym '__obj))))
                              (declare (not safe))
                              (make-symbol__0 __tmp270516))))
                       (cons '%#let-values
                             (cons (cons (cons (cons _%$obj266880%_ '())
                                               (cons _%object266849%_ '()))
                                         '())
                                   (cons (cons '%#if
                                               (cons (cons '%#struct-direct-instance?
                                                           (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%klass266852%_
                                        '1
                                        '#f
                                        '#f))
                                     '()))
                         (cons (cons '%#ref (cons _%$obj266880%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#struct-unchecked-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self266797%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field266847%_ '()))
                                     (cons (cons '%#ref
                                                 (cons _%$obj266880%_ '()))
                                           '()))))
                   (cons (if _%arguments-ok?266807%_
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons 'unchecked-slot-ref '()))
                                         (cons (cons '%#ref
                                                     (cons _%$obj266880%_ '()))
                                               (cons (cons '%#quote
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self266797%_
                            __slot269499
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
                                                              _%self266797%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$obj266880%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%self266797%_
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
                (gxc#xform-wrap-source __tmp270515 _%stx266793%_))
              (let ((__tmp270517
                     (cons '%#call
                           (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                 (cons _%object266849%_
                                       (cons (cons '%#quote
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self266797%_
                                                            '3
                                                            '#f
                                                            '#f))
                                                         '()))
                                             '()))))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp270517 _%stx266793%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%$%g266809266819%_ _%$%g266810266822%_))))
                          (_%$%g266809266819%_ _%$%g266810266822%_)))))
              (_%$%g266808266883%_ _%args266794%_))))))
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
      (lambda (_%self266555%_ _%ctx266556%_ _%stx266557%_ _%args266558%_)
        (let* ((_%self266561%_ _%self266555%_)
               (_%arguments-ok?266571%_
                (let ((__method270421
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self266561%_ 'check-arguments))))
                  (if __method270421
                      (let ()
                        (declare (not safe))
                        (__method270421
                         _%self266561%_
                         _%ctx266556%_
                         _%stx266557%_
                         _%args266558%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self266561%_
                                 'check-arguments))
                        '#!void))))
               (_%$%g266573266587%_
                (lambda (_%$%g266574266584%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g266574266584%_))))
               (_%$%g266572266666%_
                (lambda (_%$%g266574266590%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g266574266590%_))
                      (let ((_%$%e266577266592%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g266574266590%_))))
                        (let ((_%$%hd266578266595%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e266577266592%_)))
                              (_%$%tl266579266597%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e266577266592%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl266579266597%_))
                              (let ((_%$%e266580266600%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl266579266597%_))))
                                (let ((_%$%hd266581266603%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e266580266600%_)))
                                      (_%$%tl266582266605%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e266580266600%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl266582266605%_))
                                      (let* ((_%klass266625%_
                                              (let ((__tmp270518
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self266561%_
                                                        '1
                                                        '#f
                                                        '#f))))
                                                (declare (not safe))
                                                (gxc#optimizer-resolve-class
                                                 _%stx266557%_
                                                 __tmp270518)))
                                             (_%field266627%_
                                              (let ((__tmp270519
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self266561%_
                                                        '3
                                                        '#f
                                                        '#f))))
                                                (declare (not safe))
                                                (gxc#!class-slot->field-offset
                                                 _%klass266625%_
                                                 __tmp270519)))
                                             (_%object266629%_
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%ctx266556%_
                                                 _%$%hd266578266595%_)))
                                             (_%value266631%_
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%ctx266556%_
                                                 _%$%hd266581266603%_)))
                                             (_%klass266634%_ _%klass266625%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass266634%_
                                               '8
                                               '#f
                                               '#f))
                                            (let ((__tmp270520
                                                   (cons (if (or _%arguments-ok?266571%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self266561%_
                                 '4
                                 '#f
                                 '#f))))
                     '%#struct-unchecked-set!
                     '%#struct-direct-set!)
                 (cons (cons '%#ref
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self266561%_
                                      '1
                                      '#f
                                      '#f))
                                   '()))
                       (cons (cons '%#quote (cons _%field266627%_ '()))
                             (cons _%object266629%_
                                   (cons _%value266631%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp270520
                                               _%stx266557%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass266634%_
                                                   '7
                                                   '#f
                                                   '#f))
                                                (let ((__tmp270521
                                                       (cons (if (or _%arguments-ok?266571%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (not (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self266561%_
                                     '4
                                     '#f
                                     '#f))))
                         '%#struct-unchecked-set!
                         '%#struct-set!)
                     (cons (cons '%#ref
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self266561%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#quote (cons _%field266627%_ '()))
                                 (cons _%object266629%_
                                       (cons _%value266631%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp270521
                                                   _%stx266557%_))
                                                (let ((_%$e266654%_
                                                       (let ((__tmp270522
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%self266561%_
                         '3
                         '#f
                         '#f))))
                 (declare (not safe))
                 (gxc#!class-slot-find-struct _%klass266634%_ __tmp270522))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if _%$e266654%_
                                                      (let ((__tmp270523
                                                             (cons (if (or _%arguments-ok?266571%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (not (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self266561%_
                                           '3
                                           '#f
                                           '#f))))
                               '%#struct-unchecked-set!
                               '%#struct-set!)
                           (cons (cons '%#ref
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self266561%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons (cons '%#quote
                                             (cons _%field266627%_ '()))
                                       (cons _%object266629%_
                                             (cons _%value266631%_ '())))))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp270523 _%stx266557%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%self266561%_ '4 '#f '#f))
                  (let ((__tmp270524
                         (let ((_%$obj266663%_
                                (let ((__tmp270525
                                       (let ()
                                         (declare (not safe))
                                         (##gensym '__obj))))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp270525))))
                           (cons '%#let-values
                                 (cons (cons (cons (cons _%$obj266663%_ '())
                                                   (cons _%object266629%_ '()))
                                             '())
                                       (cons (cons '%#if
                                                   (cons (cons '%#struct-direct-instance?
                                                               (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%klass266634%_
                                            '1
                                            '#f
                                            '#f))
                                         '()))
                             (cons (cons '%#ref (cons _%$obj266663%_ '()))
                                   '())))
                 (cons (cons '%#struct-unchecked-set!
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self266561%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field266627%_ '()))
                                         (cons (cons '%#ref
                                                     (cons _%$obj266663%_ '()))
                                               (cons _%value266631%_ '())))))
                       (cons (if _%arguments-ok?266571%_
                                 (cons '%#call
                                       (cons (cons '%#ref
                                                   (cons 'unchecked-slot-set!
                                                         '()))
                                             (cons (cons '%#ref
                                                         (cons _%$obj266663%_
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self266561%_
                                '3
                                '#f
                                '#f))
                             '()))
                 (cons _%value266631%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (cons '%#call
                                       (cons (cons '%#ref
                                                   (cons 'class-slot-set! '()))
                                             (cons (cons '%#ref
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref _%self266561%_ '1 '#f '#f))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons '%#ref
                                                               (cons _%$obj266663%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self266561%_
                                      '3
                                      '#f
                                      '#f))
                                   '()))
                       (cons _%value266631%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp270524 _%stx266557%_))
                  (let ((__tmp270526
                         (cons '%#call
                               (cons (cons '%#ref
                                           (cons 'unchecked-slot-set! '()))
                                     (cons _%object266629%_
                                           (cons (cons '%#quote
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self266561%_ '3 '#f '#f))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%value266631%_
                                                       '())))))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp270526 _%stx266557%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g266573266587%_
                                       _%$%g266574266590%_))))
                              (_%$%g266573266587%_ _%$%g266574266590%_))))
                      (_%$%g266573266587%_ _%$%g266574266590%_)))))
          (_%$%g266572266666%_ _%args266558%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass269501 __method-table269502)
        (let ((__check-arguments269503
               (let ((__tmp270527
                      (lambda ()
                        (let ((__method269504
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table269502
                                  'check-arguments
                                  '#f))))
                          (if __method269504
                              __method269504
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp270527))))
          (lambda (_%self266555%_ _%ctx266556%_ _%stx266557%_ _%args266558%_)
            (let* ((_%self266561%_ _%self266555%_)
                   (_%arguments-ok?266571%_
                    ((force __check-arguments269503)
                     _%self266561%_
                     _%ctx266556%_
                     _%stx266557%_
                     _%args266558%_))
                   (_%$%g266573266587%_
                    (lambda (_%$%g266574266584%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g266574266584%_))))
                   (_%$%g266572266666%_
                    (lambda (_%$%g266574266590%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%g266574266590%_))
                          (let ((_%$%e266577266592%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%g266574266590%_))))
                            (let ((_%$%hd266578266595%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e266577266592%_)))
                                  (_%$%tl266579266597%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e266577266592%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl266579266597%_))
                                  (let ((_%$%e266580266600%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl266579266597%_))))
                                    (let ((_%$%hd266581266603%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e266580266600%_)))
                                          (_%$%tl266582266605%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e266580266600%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl266582266605%_))
                                          (let* ((_%klass266625%_
                                                  (let ((__tmp270528
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self266561%_
                                                            '1
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#optimizer-resolve-class
                                                     _%stx266557%_
                                                     __tmp270528)))
                                                 (_%field266627%_
                                                  (let ((__tmp270529
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self266561%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot->field-offset
                                                     _%klass266625%_
                                                     __tmp270529)))
                                                 (_%object266629%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%ctx266556%_
                                                     _%$%hd266578266595%_)))
                                                 (_%value266631%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%ctx266556%_
                                                     _%$%hd266581266603%_)))
                                                 (_%klass266634%_
                                                  _%klass266625%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass266634%_
                                                   '8
                                                   '#f
                                                   '#f))
                                                (let ((__tmp270530
                                                       (cons (if (or _%arguments-ok?266571%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (not (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self266561%_
                                     '4
                                     '#f
                                     '#f))))
                         '%#struct-unchecked-set!
                         '%#struct-direct-set!)
                     (cons (cons '%#ref
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self266561%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#quote (cons _%field266627%_ '()))
                                 (cons _%object266629%_
                                       (cons _%value266631%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp270530
                                                   _%stx266557%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%klass266634%_
                                                       '7
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp270531
                                                           (cons (if (or _%arguments-ok?266571%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self266561%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-set!
                             '%#struct-set!)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self266561%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field266627%_ '()))
                                     (cons _%object266629%_
                                           (cons _%value266631%_ '())))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp270531 _%stx266557%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$e266654%_
                                                           (let ((__tmp270532
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self266561%_
                             '3
                             '#f
                             '#f))))
                     (declare (not safe))
                     (gxc#!class-slot-find-struct
                      _%klass266634%_
                      __tmp270532))))
              (if _%$e266654%_
                  (let ((__tmp270533
                         (cons (if (or _%arguments-ok?266571%_
                                       (not (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self266561%_
                                               '3
                                               '#f
                                               '#f))))
                                   '%#struct-unchecked-set!
                                   '%#struct-set!)
                               (cons (cons '%#ref
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self266561%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 '()))
                                     (cons (cons '%#quote
                                                 (cons _%field266627%_ '()))
                                           (cons _%object266629%_
                                                 (cons _%value266631%_
                                                       '())))))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp270533 _%stx266557%_))
                  (if (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self266561%_ '4 '#f '#f))
                      (let ((__tmp270534
                             (let ((_%$obj266663%_
                                    (let ((__tmp270535
                                           (let ()
                                             (declare (not safe))
                                             (##gensym '__obj))))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp270535))))
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj266663%_
                                                             '())
                                                       (cons _%object266629%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#if
                                                       (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons '%#quote
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%klass266634%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons (cons '%#ref (cons _%$obj266663%_ '()))
                                       '())))
                     (cons (cons '%#struct-unchecked-set!
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self266561%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field266627%_ '()))
                                             (cons (cons '%#ref
                                                         (cons _%$obj266663%_
                                                               '()))
                                                   (cons _%value266631%_
                                                         '())))))
                           (cons (if _%arguments-ok?266571%_
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'unchecked-slot-set!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj266663%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons '%#quote
                           (cons (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self266561%_
                                    '3
                                    '#f
                                    '#f))
                                 '()))
                     (cons _%value266631%_ '())))))
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
                              _%self266561%_
                              '1
                              '#f
                              '#f))
                           '()))
               (cons (cons '%#ref (cons _%$obj266663%_ '()))
                     (cons (cons '%#quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self266561%_
                                          '3
                                          '#f
                                          '#f))
                                       '()))
                           (cons _%value266631%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp270534 _%stx266557%_))
                      (let ((__tmp270536
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons 'unchecked-slot-set! '()))
                                         (cons _%object266629%_
                                               (cons (cons '%#quote
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self266561%_
                            '3
                            '#f
                            '#f))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%value266631%_
                                                           '())))))))
                        (declare (not safe))
                        (gxc#xform-wrap-source
                         __tmp270536
                         _%stx266557%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g266573266587%_
                                           _%$%g266574266590%_))))
                                  (_%$%g266573266587%_ _%$%g266574266590%_))))
                          (_%$%g266573266587%_ _%$%g266574266590%_)))))
              (_%$%g266572266666%_ _%args266558%_))))))
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
      (lambda (_%self266371%_ _%ctx266372%_ _%stx266373%_ _%args266374%_)
        (let* ((_%self266377%_ _%self266371%_)
               (_%$%self266386266396%_ _%self266377%_)
               (_%$%E266388266399%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%self266386266396%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%$%K266389266409%_
                (lambda (_%inline266402%_ _%dispatch266403%_ _%arity266404%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self266377%_
                         _%args266374%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx266373%_
                         _%arity266404%_)))
                  (if _%inline266402%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp270537 (_%inline266402%_ _%stx266373%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp270537
                           _%stx266373%_
                           _%ctx266372%_)))
                      (if (and _%dispatch266403%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch266403%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch266403%_))
                            (let ((__tmp270538
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch266403%_
                                                           '()))
                                               _%args266374%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp270538
                               _%stx266373%_
                               _%ctx266372%_)))
                          (gxc#!procedure::optimize-call
                           _%self266377%_
                           _%ctx266372%_
                           _%stx266373%_
                           _%args266374%_)))))
               (_%$%e266390266412%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self266386266396%_
                   '1
                   '#f
                   '#f)))
               (_%$%e266391266415%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self266386266396%_
                   '2
                   '#f
                   '#f)))
               (_%$%e266392266418%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self266386266396%_
                   '3
                   '#f
                   '#f)))
               (_%arity266421%_ _%$%e266392266418%_)
               (_%$%e266393266423%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self266386266396%_
                   '4
                   '#f
                   '#f)))
               (_%dispatch266426%_ _%$%e266393266423%_)
               (_%$%e266394266428%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self266386266396%_
                   '5
                   '#f
                   '#f)))
               (_%inline266431%_ _%$%e266394266428%_))
          (_%$%K266389266409%_
           _%inline266431%_
           _%dispatch266426%_
           _%arity266421%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self266223%_ _%ctx266224%_ _%stx266225%_ _%args266226%_)
        (let* ((_%self266229%_ _%self266223%_)
               (_%$e266243%_
                (let ((__tmp270540
                       (lambda (_%$%g266238266240%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%$%g266238266240%_
                            _%args266226%_))))
                      (__tmp270539
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self266229%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp270540 __tmp270539))))
          (if _%$e266243%_
              (let ((__method270422
                     (let ()
                       (declare (not safe))
                       (__method-ref _%$e266243%_ 'optimize-call))))
                (if __method270422
                    (let ()
                      (declare (not safe))
                      (__method270422
                       _%$e266243%_
                       _%ctx266224%_
                       _%stx266225%_
                       _%args266226%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method" _%$e266243%_ 'optimize-call))
                      '#!void)))
              (let ((__tmp270541
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self266229%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx266225%_
                 __tmp270541))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self265964%_ _%ctx265965%_ _%stx265966%_ _%args265967%_)
        (let* ((_%self265970%_ _%self265964%_)
               (_%$%self265979265988%_ _%self265970%_)
               (_%$%E265981265991%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%self265979265988%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%$%K265982266082%_
                (lambda (_%dispatch265994%_ _%table265995%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch265994%_))
                      (let* ((_%$%g265996266006%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch265994%_)))
                             (_%$%else265998266014%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch265994%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx265965%_
                                   _%stx265966%_))))
                             (_%$%K266000266063%_
                              (lambda (_%main266017%_ _%keys266018%_)
                                (let ((_g270542_
                                       (gxc#!kw-lambda-split-args
                                        _%stx265966%_
                                        _%args265967%_)))
                                  (begin
                                    (let ((_g270543_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g270542_)
                                                 (##values-length _g270542_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g270543_ 2)))
                                          (error "Context expects 2 values"
                                                 _g270543_)))
                                    (let ((_%pargs266020%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g270542_ 0)))
                                          (_%kwargs266021%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g270542_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main266017%_))
                                        (if _%table265995%_
                                            (let ((_%xargs266029%_
                                                   (map (lambda (_%key266023%_)
                                                          (let ((_%$e266025%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key266023%_ _%kwargs266021%_))))
                    (if _%$e266025%_ _%$e266025%_ '(%#ref absent-value))))
                _%keys266018%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw266031%_)
                                                 (if (memq (car _%kw266031%_)
                                                           _%keys266018%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx265966%_
                                                        _%keys266018%_
                                                        _%kw266031%_))))
                                               _%kwargs266021%_)
                                              (let ((__tmp270544
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main266017%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (append _%xargs266029%_ _%pargs266020%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp270544
                                                 _%stx265966%_
                                                 _%ctx265965%_)))
                                            (let* ((_%kwt266033%_
                                                    (let ((__tmp270545
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp270545)))
                                                   (_%kwvars266037%_
                                                    (map (lambda (_%_266035%_)
                                                           (let ((__tmp270546
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp270546)))
                 _%kwargs266021%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind266042%_
                                                    (map (lambda (_%kw266039%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar266040%_)
                   (cons (cons _%kwvar266040%_ '())
                         (cons (cdr _%kw266039%_) '())))
                 _%kwargs266021%_
                 _%kwvars266037%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset266047%_
                                                    (map (lambda (_%kw266044%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar266045%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt266033%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw266044%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar266045%_
                                                             '()))
                                                 '()))))))
                 _%kwargs266021%_
                 _%kwvars266037%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs266052%_
                                                    (map (lambda (_%kw266049%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar266050%_)
                   (cons (car _%kw266049%_)
                         (cons '%#ref (cons _%kwvar266050%_ '()))))
                 _%kwargs266021%_
                 _%kwvars266037%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs266060%_
                                                    (map (lambda (_%key266054%_)
                                                           (let ((_%$e266056%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key266054%_ _%xkwargs266052%_))))
                     (if _%$e266056%_ _%$e266056%_ '(%#ref absent-value))))
                 _%keys266018%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp270547
                                                    (cons '%#let-values
                                                          (cons _%kwbind266042%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt266033%_ '())
                                                      (cons (let ((__tmp270548
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs266021%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp270548 _%stx265966%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp270549
                                                             (cons (let ((__tmp270550
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main266017%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt266033%_
                                                                '()))
                                                    (append _%xargs266060%_
                                                            _%pargs266020%_))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp270550 _%stx265966%_))
                           '())))
                (declare (not safe))
                (##append _%kwset266047%_ __tmp270549)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp270547
                                               _%stx265966%_
                                               _%ctx265965%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%$%g265996266006%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%$%e266001266066%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%g265996266006%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%$%e266002266069%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%g265996266006%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%$%e266003266072%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%g265996266006%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys266075%_ _%$%e266003266072%_)
                                   (_%$%e266004266077%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%g265996266006%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main266080%_ _%$%e266004266077%_))
                              (_%$%K266000266063%_
                               _%main266080%_
                               _%keys266075%_))
                            (_%$%else265998266014%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx265965%_ _%stx265966%_)))))
               (_%$%e265983266085%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self265979265988%_
                   '1
                   '#f
                   '#f)))
               (_%$%e265984266088%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self265979265988%_
                   '2
                   '#f
                   '#f)))
               (_%$%e265985266091%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self265979265988%_
                   '3
                   '#f
                   '#f)))
               (_%table266094%_ _%$%e265985266091%_)
               (_%$%e265986266096%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self265979265988%_
                   '4
                   '#f
                   '#f)))
               (_%dispatch266099%_ _%$%e265986266096%_))
          (_%$%K265982266082%_ _%dispatch266099%_ _%table266094%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx265577%_ _%args265578%_)
        (let _%lp265580%_ ((_%rest265582%_ _%args265578%_)
                           (_%pargs265583%_ '())
                           (_%kwargs265584%_ '()))
          (let* ((_%__stx269963269964%_ _%rest265582%_)
                 (_%$%g265590265642%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx269963269964%_)))))
            (let ((_%__kont269965269966%_
                   (lambda (_%$%g265592265821%_ _%$%g265593265822%_)
                     (_%lp265580%_
                      _%$%g265592265821%_
                      (cons _%$%g265593265822%_ _%pargs265583%_)
                      _%kwargs265584%_)))
                  (_%__kont269967269968%_
                   (lambda (_%$%g265607265767%_)
                     (values (let ()
                               (declare (not safe))
                               (foldl__0
                                cons
                                _%$%g265607265767%_
                                _%pargs265583%_))
                             (reverse _%kwargs265584%_))))
                  (_%__kont269969269970%_
                   (lambda (_%$%g265618265714%_
                            _%$%g265619265715%_
                            _%$%g265620265716%_)
                     (let ((_%kw265733%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%g265620265716%_))))
                       (if (assq _%kw265733%_ _%kwargs265584%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx265577%_
                              _%kw265733%_))
                           (_%lp265580%_
                            _%$%g265618265714%_
                            _%pargs265583%_
                            (cons (cons _%kw265733%_ _%$%g265619265715%_)
                                  _%kwargs265584%_))))))
                  (_%__kont269971269972%_
                   (lambda (_%$%g265633265662%_ _%$%g265634265663%_)
                     (_%lp265580%_
                      _%$%g265633265662%_
                      (cons _%$%g265634265663%_ _%pargs265583%_)
                      _%kwargs265584%_)))
                  (_%__kont269973269974%_
                   (lambda ()
                     (values (reverse _%pargs265583%_)
                             (reverse _%kwargs265584%_)))))
              (let ((_%__match270070270071%_
                     (lambda (_%$%e265621265682%_
                              _%$%hd265622265685%_
                              _%$%tl265623265687%_
                              _%$%e265624265690%_
                              _%$%hd265625265693%_
                              _%$%tl265626265695%_
                              _%$%e265627265698%_
                              _%$%hd265628265701%_
                              _%$%tl265629265703%_
                              _%$%e265630265706%_
                              _%$%hd265631265709%_
                              _%$%tl265632265711%_)
                       (let ((_%$%g265618265714%_ _%$%tl265632265711%_)
                             (_%$%g265619265715%_ _%$%hd265631265709%_)
                             (_%$%g265620265716%_ _%$%hd265628265701%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%$%g265620265716%_))
                             (_%__kont269969269970%_
                              _%$%g265618265714%_
                              _%$%g265619265715%_
                              _%$%g265620265716%_)
                             (_%__kont269971269972%_
                              _%$%tl265623265687%_
                              _%$%hd265622265685%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx269963269964%_))
                    (let ((_%$%e265594265786%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx269963269964%_))))
                      (let ((_%$%tl265596265791%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e265594265786%_)))
                            (_%$%hd265595265789%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e265594265786%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%hd265595265789%_))
                            (let ((_%$%e265597265794%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd265595265789%_))))
                              (let ((_%$%tl265599265799%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e265597265794%_)))
                                    (_%$%hd265598265797%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e265597265794%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd265598265797%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%$%hd265598265797%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl265599265799%_))
                                            (let ((_%$%e265600265802%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl265599265799%_))))
                                              (let ((_%$%tl265602265807%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e265600265802%_)))
                                                    (_%$%hd265601265805%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e265600265802%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%$%hd265601265805%_))
                                                    (let ((_%$%e265603265810%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd265601265805%_))))
                                                      (if (equal? _%$%e265603265810%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl265602265807%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl265596265791%_))
                          (let ((_%$%e265604265813%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl265596265791%_))))
                            (let ((_%$%tl265606265818%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e265604265813%_)))
                                  (_%$%hd265605265816%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e265604265813%_))))
                              (_%__kont269965269966%_
                               _%$%tl265606265818%_
                               _%$%hd265605265816%_)))
                          (_%__kont269971269972%_
                           _%$%tl265596265791%_
                           _%$%hd265595265789%_))
                      (_%__kont269971269972%_
                       _%$%tl265596265791%_
                       _%$%hd265595265789%_))
                  (if (equal? _%$%e265603265810%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl265602265807%_))
                          (_%__kont269967269968%_ _%$%tl265596265791%_)
                          (_%__kont269971269972%_
                           _%$%tl265596265791%_
                           _%$%hd265595265789%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl265602265807%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl265596265791%_))
                              (let ((_%$%e265630265706%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl265596265791%_))))
                                (let ((_%$%tl265632265711%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e265630265706%_)))
                                      (_%$%hd265631265709%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e265630265706%_))))
                                  (_%__match270070270071%_
                                   _%$%e265594265786%_
                                   _%$%hd265595265789%_
                                   _%$%tl265596265791%_
                                   _%$%e265597265794%_
                                   _%$%hd265598265797%_
                                   _%$%tl265599265799%_
                                   _%$%e265600265802%_
                                   _%$%hd265601265805%_
                                   _%$%tl265602265807%_
                                   _%$%e265630265706%_
                                   _%$%hd265631265709%_
                                   _%$%tl265632265711%_)))
                              (_%__kont269971269972%_
                               _%$%tl265596265791%_
                               _%$%hd265595265789%_))
                          (_%__kont269971269972%_
                           _%$%tl265596265791%_
                           _%$%hd265595265789%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl265602265807%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl265596265791%_))
                                                            (let ((_%$%e265630265706%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl265596265791%_))))
                      (let ((_%$%tl265632265711%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e265630265706%_)))
                            (_%$%hd265631265709%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e265630265706%_))))
                        (_%__match270070270071%_
                         _%$%e265594265786%_
                         _%$%hd265595265789%_
                         _%$%tl265596265791%_
                         _%$%e265597265794%_
                         _%$%hd265598265797%_
                         _%$%tl265599265799%_
                         _%$%e265600265802%_
                         _%$%hd265601265805%_
                         _%$%tl265602265807%_
                         _%$%e265630265706%_
                         _%$%hd265631265709%_
                         _%$%tl265632265711%_)))
                    (_%__kont269971269972%_
                     _%$%tl265596265791%_
                     _%$%hd265595265789%_))
                (_%__kont269971269972%_
                 _%$%tl265596265791%_
                 _%$%hd265595265789%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont269971269972%_
                                             _%$%tl265596265791%_
                                             _%$%hd265595265789%_))
                                        (_%__kont269971269972%_
                                         _%$%tl265596265791%_
                                         _%$%hd265595265789%_))
                                    (_%__kont269971269972%_
                                     _%$%tl265596265791%_
                                     _%$%hd265595265789%_))))
                            (_%__kont269971269972%_
                             _%$%tl265596265791%_
                             _%$%hd265595265789%_))))
                    (_%__kont269973269974%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self265561%_ _%ctx265562%_ _%stx265563%_ _%args265564%_)
        (let ((_%self265567%_ _%self265561%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx265562%_ _%stx265563%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self265161%_ _%stx265162%_)
        (let* ((_%__stx270079270080%_ _%stx265162%_)
               (_%$%g265166265223%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx270079270080%_)))))
          (let ((_%__kont270081270082%_
                 (lambda (_%$%g265168265408%_ _%$%g265169265409%_)
                   (let ((_%type265427%_
                          (let ((__tmp270551
                                 (let ()
                                   (declare (not safe))
                                   (gxc#type-expression->datum
                                    _%$%g265169265409%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type-expression
                             _%stx265162%_
                             __tmp270551)))
                         (_%expr-type265428%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type
                             _%$%g265168265408%_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _%type265427%_
                            'gxc#!nullable-type::t))
                         (if (and _%expr-type265428%_
                                  (let ((__tmp270552
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx265162%_
                                            'false::t))))
                                    (declare (not safe))
                                    (gxc#!type-subtype?
                                     __tmp270552
                                     _%expr-type265428%_)))
                             '#!void
                             (gxc#check-expression-type!
                              _%stx265162%_
                              _%$%g265168265408%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%type265427%_
                                 '2
                                 '#f
                                 '#f))))
                         (let ((_%$e265431%_
                                (let ((__tmp270553
                                       (##structure-ref
                                        _%type265427%_
                                        '1
                                        gxc#!type::t
                                        '#f)))
                                  (declare (not safe))
                                  (##memq __tmp270553 '(t void)))))
                           (if _%$e265431%_
                               _%$e265431%_
                               (if (and _%expr-type265428%_
                                        (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%expr-type265428%_
                                           'gxc#!nullable-type::t)))
                                   (gxc#check-return-type!
                                    _%stx265162%_
                                    _%$%g265168265408%_
                                    _%type265427%_)
                                   '#!void))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1
                        _%self265161%_
                        _%$%g265168265408%_)))))
                (_%__kont270083270084%_
                 (lambda (_%$%g265185265327%_ _%$%g265186265328%_)
                   (let ((_%$e265355%_
                          (member 'return:
                                  (let ((__tmp270554
                                         (lambda (_%$%g265347265350%_
                                                  _%$%g265348265352%_)
                                           (cons _%$%g265347265350%_
                                                 _%$%g265348265352%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp270554
                                     '()
                                     _%$%g265186265328%_))
                                  gx#stx-eq?)))
                     (if _%$e265355%_
                         (let ((_%type265360%_
                                (let ((__tmp270555
                                       (let ((__tmp270556 (cadr _%$e265355%_)))
                                         (declare (not safe))
                                         (gxc#type-expression->datum
                                          __tmp270556))))
                                  (declare (not safe))
                                  (gxc#optimizer-resolve-type-expression
                                   _%stx265162%_
                                   __tmp270555))))
                           (gxc#check-return-type!
                            _%stx265162%_
                            _%$%g265185265327%_
                            _%type265360%_)
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self265161%_
                              _%$%g265185265327%_)))
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1
                            _%self265161%_
                            _%$%g265185265327%_))))))
                (_%__kont270087270088%_
                 (lambda (_%$%g265208265252%_ _%$%g265209265253%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self265161%_ _%$%g265208265252%_)))))
            (let ((_%__match270156270157%_
                   (lambda (_%$%e265187265273%_
                            _%$%hd265188265276%_
                            _%$%tl265189265278%_
                            _%$%e265190265281%_
                            _%$%hd265191265284%_
                            _%$%tl265192265286%_
                            _%$%e265193265289%_
                            _%$%hd265194265292%_
                            _%$%tl265195265294%_
                            _%__splice270085270086%_
                            _%$%target265196265297%_
                            _%$%tl265198265299%_)
                     (letrec ((_%$%loop265199265302%_
                               (lambda (_%$%hd265197265305%_
                                        _%$%signature265203265307%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd265197265305%_))
                                     (let ((_%$%e265200265309%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd265197265305%_))))
                                       (let ((_%$%lp-tl265202265314%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e265200265309%_)))
                                             (_%$%lp-hd265201265312%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e265200265309%_))))
                                         (_%$%loop265199265302%_
                                          _%$%lp-tl265202265314%_
                                          (cons _%$%lp-hd265201265312%_
                                                _%$%signature265203265307%_))))
                                     (let ((_%$%signature265204265317%_
                                            (reverse _%$%signature265203265307%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl265192265286%_))
                                           (let ((_%$%e265205265319%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl265192265286%_))))
                                             (let ((_%$%tl265207265324%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e265205265319%_)))
                                                   (_%$%hd265206265322%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e265205265319%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl265207265324%_))
                                                   (_%__kont270083270084%_
                                                    _%$%hd265206265322%_
                                                    _%$%signature265204265317%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g265166265223%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g265166265223%_))))))))
                       (_%$%loop265199265302%_
                        _%$%target265196265297%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx270079270080%_))
                  (let ((_%$%e265170265368%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx270079270080%_))))
                    (let ((_%$%tl265172265373%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e265170265368%_)))
                          (_%$%hd265171265371%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e265170265368%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl265172265373%_))
                          (let ((_%$%e265173265376%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl265172265373%_))))
                            (let ((_%$%tl265175265381%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e265173265376%_)))
                                  (_%$%hd265174265379%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e265173265376%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd265174265379%_))
                                  (let ((_%$%e265176265384%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd265174265379%_))))
                                    (let ((_%$%tl265178265389%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e265176265384%_)))
                                          (_%$%hd265177265387%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e265176265384%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd265177265387%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.return
                                                 _%$%hd265177265387%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl265178265389%_))
                                                  (let ((_%$%e265179265392%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl265178265389%_))))
                                                    (let ((_%$%tl265181265397%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e265179265392%_)))
                                                          (_%$%hd265180265395%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e265179265392%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl265181265397%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl265175265381%_))
                      (let ((_%$%e265182265400%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl265175265381%_))))
                        (let ((_%$%tl265184265405%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e265182265400%_)))
                              (_%$%hd265183265403%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e265182265400%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl265184265405%_))
                              (_%__kont270081270082%_
                               _%$%hd265183265403%_
                               _%$%hd265180265395%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g265166265223%_)))))
                      (let () (declare (not safe)) (_%$%g265166265223%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl265175265381%_))
                      (let ((_%$%e265216265244%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl265175265381%_))))
                        (let ((_%$%tl265218265249%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e265216265244%_)))
                              (_%$%hd265217265247%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e265216265244%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl265218265249%_))
                              (_%__kont270087270088%_
                               _%$%hd265217265247%_
                               _%$%hd265174265379%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g265166265223%_)))))
                      (let () (declare (not safe)) (_%$%g265166265223%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl265175265381%_))
                                                      (let ((_%$%e265216265244%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl265175265381%_))))
                (let ((_%$%tl265218265249%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e265216265244%_)))
                      (_%$%hd265217265247%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e265216265244%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl265218265249%_))
                      (_%__kont270087270088%_
                       _%$%hd265217265247%_
                       _%$%hd265174265379%_)
                      (let () (declare (not safe)) (_%$%g265166265223%_)))))
              (let () (declare (not safe)) (_%$%g265166265223%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '@type.signature
                                                     _%$%hd265177265387%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl265178265389%_))
                                                      (let ((_%__splice270085270086%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl265178265389%_
                        '0))))
                (let ((_%$%tl265198265299%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice270085270086%_ '1)))
                      (_%$%target265196265297%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice270085270086%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl265198265299%_))
                      (_%__match270156270157%_
                       _%$%e265170265368%_
                       _%$%hd265171265371%_
                       _%$%tl265172265373%_
                       _%$%e265173265376%_
                       _%$%hd265174265379%_
                       _%$%tl265175265381%_
                       _%$%e265176265384%_
                       _%$%hd265177265387%_
                       _%$%tl265178265389%_
                       _%__splice270085270086%_
                       _%$%target265196265297%_
                       _%$%tl265198265299%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl265175265381%_))
                          (let ((_%$%e265216265244%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl265175265381%_))))
                            (let ((_%$%tl265218265249%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e265216265244%_)))
                                  (_%$%hd265217265247%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e265216265244%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl265218265249%_))
                                  (_%__kont270087270088%_
                                   _%$%hd265217265247%_
                                   _%$%hd265174265379%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g265166265223%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g265166265223%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%$%tl265175265381%_))
                  (let ((_%$%e265216265244%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl265175265381%_))))
                    (let ((_%$%tl265218265249%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e265216265244%_)))
                          (_%$%hd265217265247%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e265216265244%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl265218265249%_))
                          (_%__kont270087270088%_
                           _%$%hd265217265247%_
                           _%$%hd265174265379%_)
                          (let ()
                            (declare (not safe))
                            (_%$%g265166265223%_)))))
                  (let () (declare (not safe)) (_%$%g265166265223%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl265175265381%_))
                                                      (let ((_%$%e265216265244%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl265175265381%_))))
                (let ((_%$%tl265218265249%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e265216265244%_)))
                      (_%$%hd265217265247%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e265216265244%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl265218265249%_))
                      (_%__kont270087270088%_
                       _%$%hd265217265247%_
                       _%$%hd265174265379%_)
                      (let () (declare (not safe)) (_%$%g265166265223%_)))))
              (let () (declare (not safe)) (_%$%g265166265223%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl265175265381%_))
                                              (let ((_%$%e265216265244%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl265175265381%_))))
                                                (let ((_%$%tl265218265249%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e265216265244%_)))
                                                      (_%$%hd265217265247%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e265216265244%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl265218265249%_))
                                                      (_%__kont270087270088%_
                                                       _%$%hd265217265247%_
                                                       _%$%hd265174265379%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g265166265223%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g265166265223%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl265175265381%_))
                                      (let ((_%$%e265216265244%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl265175265381%_))))
                                        (let ((_%$%tl265218265249%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e265216265244%_)))
                                              (_%$%hd265217265247%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e265216265244%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl265218265249%_))
                                              (_%__kont270087270088%_
                                               _%$%hd265217265247%_
                                               _%$%hd265174265379%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g265166265223%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g265166265223%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g265166265223%_)))))
                  (let () (declare (not safe)) (_%$%g265166265223%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx265136%_ _%expr265137%_ _%type265138%_)
        (let ((_%$e265140%_ (not _%type265138%_)))
          (if _%$e265140%_
              _%$e265140%_
              (let ((_%$e265143%_
                     (eq? (##structure-ref _%type265138%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e265143%_
                    _%$e265143%_
                    (let ((_%$e265146%_
                           (eq? (##structure-ref
                                 _%type265138%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e265146%_
                          _%$e265146%_
                          (let ((_%expr-type265150%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr265137%_))))
                            (if _%expr-type265150%_
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type265150%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx265136%_
                                       _%type265138%_
                                       _%expr-type265150%_))
                                    (let ((_%$e265154%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type265150%_
                                              'gxc#!abort::t))))
                                      (if _%$e265154%_
                                          _%$e265154%_
                                          (let ((_%$e265157%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type265150%_
                                                    _%type265138%_))))
                                            (if _%$e265157%_
                                                _%$e265157%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx265136%_
                                                   _%type265138%_
                                                   _%expr-type265150%_)))))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx265136%_
                                   _%type265138%_))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self264743%_ _%stx264744%_)
        (gxc#check-contract-violation!
         _%stx264744%_
         (let* ((_%__stx270205270206%_ _%stx264744%_)
                (_%$%g264748264821%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gx#raise-syntax-error
                      '#f
                      '"Bad syntax; invalid match target"
                      _%__stx270205270206%_)))))
           (let ((_%__kont270207270208%_
                  (lambda (_%$%g264750265110%_
                           _%$%g264751265111%_
                           _%$%g264752265112%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-e _%$%g264752265112%_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self264743%_
                           _%$%g264751265111%_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self264743%_
                           _%$%g264750265110%_)))))
                 (_%__kont270209270210%_
                  (lambda (_%$%g264771265026%_
                           _%$%g264772265027%_
                           _%$%g264773265028%_
                           _%$%g264774265029%_)
                    (gxc#optimize-if%
                     _%self264743%_
                     (let ((__tmp270557
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f '%#if))
                                  (cons _%$%g264773265028%_
                                        (cons _%$%g264771265026%_
                                              (cons _%$%g264772265027%_
                                                    '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp270557 _%stx264744%_)))))
                 (_%__kont270211270212%_
                  (lambda (_%$%g264802264858%_
                           _%$%g264803264859%_
                           _%$%g264804264860%_)
                    (let ((_g270558_
                           (let ()
                             (declare (not safe))
                             (gxc#expression-path-types _%$%g264804264860%_))))
                      (begin
                        (let ((_g270559_
                               (let ()
                                 (declare (not safe))
                                 (if (##values? _g270558_)
                                     (##values-length _g270558_)
                                     1))))
                          (if (not (let ()
                                     (declare (not safe))
                                     (##fx= _g270559_ 2)))
                              (error "Context expects 2 values" _g270559_)))
                        (let ((_%true-path264878%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g270558_ 0)))
                              (_%false-path264879%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g270558_ 1))))
                          (let ((_%test264885%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self264743%_
                                    _%$%g264804264860%_)))
                                (_%K264886%_
                                 (let ((__tmp270560
                                        (lambda ()
                                          (let ((__tmp270561
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self264743%_
                                                      _%$%g264803264859%_)))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp270561
                                             gxc#current-compile-path-type
                                             _%true-path264878%_)))))
                                   (declare (not safe))
                                   (__make-promise __tmp270560)))
                                (_%E264887%_
                                 (let ((__tmp270562
                                        (lambda ()
                                          (let ((__tmp270563
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self264743%_
                                                      _%$%g264802264858%_)))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp270563
                                             gxc#current-compile-path-type
                                             _%false-path264879%_)))))
                                   (declare (not safe))
                                   (__make-promise __tmp270562))))
                            (let* ((_%__stx270179270180%_ _%test264885%_)
                                   (_%$%g264890264903%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx270179270180%_)))))
                              (let ((_%__kont270181270182%_
                                     (lambda (_%$%g264892264931%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%g264892264931%_))
                                           (force _%K264886%_)
                                           (force _%E264887%_))))
                                    (_%__kont270183270184%_
                                     (lambda ()
                                       (let ((__tmp270564
                                              (cons '%#if
                                                    (cons _%test264885%_
                                                          (cons (force _%K264886%_)
                                                                (cons (force _%E264887%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp270564
                                          _%stx264744%_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx270179270180%_))
                                    (let ((_%$%e264893264915%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx270179270180%_))))
                                      (let ((_%$%tl264895264920%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e264893264915%_)))
                                            (_%$%hd264894264918%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e264893264915%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%$%hd264894264918%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%$%hd264894264918%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl264895264920%_))
                                                    (let ((_%$%e264896264923%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl264895264920%_))))
                                                      (let ((_%$%tl264898264928%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e264896264923%_)))
                    (_%$%hd264897264926%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e264896264923%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl264898264928%_))
                    (_%__kont270181270182%_ _%$%hd264897264926%_)
                    (_%__kont270183270184%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont270183270184%_))
                                                (_%__kont270183270184%_))
                                            (_%__kont270183270184%_))))
                                    (_%__kont270183270184%_)))))))))))
             (let ((_%__match270324270325%_
                    (lambda (_%$%e264775264954%_
                             _%$%hd264776264957%_
                             _%$%tl264777264959%_
                             _%$%e264778264962%_
                             _%$%hd264779264965%_
                             _%$%tl264780264967%_
                             _%$%e264781264970%_
                             _%$%hd264782264973%_
                             _%$%tl264783264975%_
                             _%$%e264784264978%_
                             _%$%hd264785264981%_
                             _%$%tl264786264983%_
                             _%$%e264787264986%_
                             _%$%hd264788264989%_
                             _%$%tl264789264991%_
                             _%$%e264790264994%_
                             _%$%hd264791264997%_
                             _%$%tl264792264999%_
                             _%$%e264793265002%_
                             _%$%hd264794265005%_
                             _%$%tl264795265007%_
                             _%$%e264796265010%_
                             _%$%hd264797265013%_
                             _%$%tl264798265015%_
                             _%$%e264799265018%_
                             _%$%hd264800265021%_
                             _%$%tl264801265023%_)
                      (let ((_%$%g264771265026%_ _%$%hd264800265021%_)
                            (_%$%g264772265027%_ _%$%hd264797265013%_)
                            (_%$%g264773265028%_ _%$%hd264794265005%_)
                            (_%$%g264774265029%_ _%$%hd264791264997%_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _%$%g264774265029%_
                               'not))
                            (_%__kont270209270210%_
                             _%$%g264771265026%_
                             _%$%g264772265027%_
                             _%$%g264773265028%_
                             _%$%g264774265029%_)
                            (_%__kont270211270212%_
                             _%$%hd264800265021%_
                             _%$%hd264797265013%_
                             _%$%hd264779264965%_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? _%__stx270205270206%_))
                   (let ((_%$%e264753265062%_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%__stx270205270206%_))))
                     (let ((_%$%tl264755265067%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e264753265062%_)))
                           (_%$%hd264754265065%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e264753265062%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl264755265067%_))
                           (let ((_%$%e264756265070%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl264755265067%_))))
                             (let ((_%$%tl264758265075%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e264756265070%_)))
                                   (_%$%hd264757265073%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e264756265070%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd264757265073%_))
                                   (let ((_%$%e264759265078%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%hd264757265073%_))))
                                     (let ((_%$%tl264761265083%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e264759265078%_)))
                                           (_%$%hd264760265081%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e264759265078%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%$%hd264760265081%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#quote
                                                  _%$%hd264760265081%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl264761265083%_))
                                                   (let ((_%$%e264762265086%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl264761265083%_))))
                                                     (let ((_%$%tl264764265091%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e264762265086%_)))
                                                           (_%$%hd264763265089%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e264762265086%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl264764265091%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl264758265075%_))
                       (let ((_%$%e264765265094%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl264758265075%_))))
                         (let ((_%$%tl264767265099%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e264765265094%_)))
                               (_%$%hd264766265097%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e264765265094%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl264767265099%_))
                               (let ((_%$%e264768265102%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl264767265099%_))))
                                 (let ((_%$%tl264770265107%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e264768265102%_)))
                                       (_%$%hd264769265105%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e264768265102%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl264770265107%_))
                                       (_%__kont270207270208%_
                                        _%$%hd264769265105%_
                                        _%$%hd264766265097%_
                                        _%$%hd264763265089%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g264748264821%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%$%g264748264821%_)))))
                       (let () (declare (not safe)) (_%$%g264748264821%_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl264758265075%_))
                       (let ((_%$%e264811264842%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl264758265075%_))))
                         (let ((_%$%tl264813264847%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e264811264842%_)))
                               (_%$%hd264812264845%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e264811264842%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl264813264847%_))
                               (let ((_%$%e264814264850%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl264813264847%_))))
                                 (let ((_%$%tl264816264855%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e264814264850%_)))
                                       (_%$%hd264815264853%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e264814264850%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl264816264855%_))
                                       (_%__kont270211270212%_
                                        _%$%hd264815264853%_
                                        _%$%hd264812264845%_
                                        _%$%hd264757265073%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g264748264821%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%$%g264748264821%_)))))
                       (let () (declare (not safe)) (_%$%g264748264821%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl264758265075%_))
                                                       (let ((_%$%e264811264842%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl264758265075%_))))
                 (let ((_%$%tl264813264847%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e264811264842%_)))
                       (_%$%hd264812264845%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e264811264842%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl264813264847%_))
                       (let ((_%$%e264814264850%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl264813264847%_))))
                         (let ((_%$%tl264816264855%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e264814264850%_)))
                               (_%$%hd264815264853%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e264814264850%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl264816264855%_))
                               (_%__kont270211270212%_
                                _%$%hd264815264853%_
                                _%$%hd264812264845%_
                                _%$%hd264757265073%_)
                               (let ()
                                 (declare (not safe))
                                 (_%$%g264748264821%_)))))
                       (let () (declare (not safe)) (_%$%g264748264821%_)))))
               (let () (declare (not safe)) (_%$%g264748264821%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-eq?
                                                      '%#call
                                                      _%$%hd264760265081%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl264761265083%_))
                                                       (let ((_%$%e264784264978%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl264761265083%_))))
                 (let ((_%$%tl264786264983%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e264784264978%_)))
                       (_%$%hd264785264981%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e264784264978%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%hd264785264981%_))
                       (let ((_%$%e264787264986%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%hd264785264981%_))))
                         (let ((_%$%tl264789264991%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e264787264986%_)))
                               (_%$%hd264788264989%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e264787264986%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#identifier? _%$%hd264788264989%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-eq? '%#ref _%$%hd264788264989%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl264789264991%_))
                                       (let ((_%$%e264790264994%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl264789264991%_))))
                                         (let ((_%$%tl264792264999%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e264790264994%_)))
                                               (_%$%hd264791264997%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e264790264994%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%$%tl264792264999%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl264786264983%_))
                                                   (let ((_%$%e264793265002%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl264786264983%_))))
                                                     (let ((_%$%tl264795265007%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e264793265002%_)))
                                                           (_%$%hd264794265005%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e264793265002%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl264795265007%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl264758265075%_))
                       (let ((_%$%e264796265010%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl264758265075%_))))
                         (let ((_%$%tl264798265015%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e264796265010%_)))
                               (_%$%hd264797265013%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e264796265010%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl264798265015%_))
                               (let ((_%$%e264799265018%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl264798265015%_))))
                                 (let ((_%$%tl264801265023%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e264799265018%_)))
                                       (_%$%hd264800265021%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e264799265018%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl264801265023%_))
                                       (_%__match270324270325%_
                                        _%$%e264753265062%_
                                        _%$%hd264754265065%_
                                        _%$%tl264755265067%_
                                        _%$%e264756265070%_
                                        _%$%hd264757265073%_
                                        _%$%tl264758265075%_
                                        _%$%e264759265078%_
                                        _%$%hd264760265081%_
                                        _%$%tl264761265083%_
                                        _%$%e264784264978%_
                                        _%$%hd264785264981%_
                                        _%$%tl264786264983%_
                                        _%$%e264787264986%_
                                        _%$%hd264788264989%_
                                        _%$%tl264789264991%_
                                        _%$%e264790264994%_
                                        _%$%hd264791264997%_
                                        _%$%tl264792264999%_
                                        _%$%e264793265002%_
                                        _%$%hd264794265005%_
                                        _%$%tl264795265007%_
                                        _%$%e264796265010%_
                                        _%$%hd264797265013%_
                                        _%$%tl264798265015%_
                                        _%$%e264799265018%_
                                        _%$%hd264800265021%_
                                        _%$%tl264801265023%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g264748264821%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%$%g264748264821%_)))))
                       (let () (declare (not safe)) (_%$%g264748264821%_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl264758265075%_))
                       (let ((_%$%e264811264842%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl264758265075%_))))
                         (let ((_%$%tl264813264847%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e264811264842%_)))
                               (_%$%hd264812264845%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e264811264842%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl264813264847%_))
                               (let ((_%$%e264814264850%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl264813264847%_))))
                                 (let ((_%$%tl264816264855%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e264814264850%_)))
                                       (_%$%hd264815264853%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e264814264850%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl264816264855%_))
                                       (_%__kont270211270212%_
                                        _%$%hd264815264853%_
                                        _%$%hd264812264845%_
                                        _%$%hd264757265073%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g264748264821%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%$%g264748264821%_)))))
                       (let () (declare (not safe)) (_%$%g264748264821%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl264758265075%_))
                                                       (let ((_%$%e264811264842%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl264758265075%_))))
                 (let ((_%$%tl264813264847%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e264811264842%_)))
                       (_%$%hd264812264845%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e264811264842%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl264813264847%_))
                       (let ((_%$%e264814264850%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl264813264847%_))))
                         (let ((_%$%tl264816264855%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e264814264850%_)))
                               (_%$%hd264815264853%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e264814264850%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl264816264855%_))
                               (_%__kont270211270212%_
                                _%$%hd264815264853%_
                                _%$%hd264812264845%_
                                _%$%hd264757265073%_)
                               (let ()
                                 (declare (not safe))
                                 (_%$%g264748264821%_)))))
                       (let () (declare (not safe)) (_%$%g264748264821%_)))))
               (let () (declare (not safe)) (_%$%g264748264821%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl264758265075%_))
                                                   (let ((_%$%e264811264842%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl264758265075%_))))
                                                     (let ((_%$%tl264813264847%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e264811264842%_)))
                                                           (_%$%hd264812264845%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e264811264842%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl264813264847%_))
                                                           (let ((_%$%e264814264850%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl264813264847%_))))
                     (let ((_%$%tl264816264855%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e264814264850%_)))
                           (_%$%hd264815264853%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e264814264850%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl264816264855%_))
                           (_%__kont270211270212%_
                            _%$%hd264815264853%_
                            _%$%hd264812264845%_
                            _%$%hd264757265073%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g264748264821%_)))))
                   (let () (declare (not safe)) (_%$%g264748264821%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g264748264821%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl264758265075%_))
                                           (let ((_%$%e264811264842%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl264758265075%_))))
                                             (let ((_%$%tl264813264847%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e264811264842%_)))
                                                   (_%$%hd264812264845%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e264811264842%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl264813264847%_))
                                                   (let ((_%$%e264814264850%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl264813264847%_))))
                                                     (let ((_%$%tl264816264855%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e264814264850%_)))
                                                           (_%$%hd264815264853%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e264814264850%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl264816264855%_))
                                                           (_%__kont270211270212%_
                                                            _%$%hd264815264853%_
                                                            _%$%hd264812264845%_
                                                            _%$%hd264757265073%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%$%g264748264821%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g264748264821%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g264748264821%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl264758265075%_))
                                       (let ((_%$%e264811264842%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl264758265075%_))))
                                         (let ((_%$%tl264813264847%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e264811264842%_)))
                                               (_%$%hd264812264845%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e264811264842%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl264813264847%_))
                                               (let ((_%$%e264814264850%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl264813264847%_))))
                                                 (let ((_%$%tl264816264855%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e264814264850%_)))
                                                       (_%$%hd264815264853%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e264814264850%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl264816264855%_))
                                                       (_%__kont270211270212%_
                                                        _%$%hd264815264853%_
                                                        _%$%hd264812264845%_
                                                        _%$%hd264757265073%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%$%g264748264821%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g264748264821%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g264748264821%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl264758265075%_))
                                   (let ((_%$%e264811264842%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl264758265075%_))))
                                     (let ((_%$%tl264813264847%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e264811264842%_)))
                                           (_%$%hd264812264845%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e264811264842%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl264813264847%_))
                                           (let ((_%$%e264814264850%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl264813264847%_))))
                                             (let ((_%$%tl264816264855%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e264814264850%_)))
                                                   (_%$%hd264815264853%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e264814264850%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl264816264855%_))
                                                   (_%__kont270211270212%_
                                                    _%$%hd264815264853%_
                                                    _%$%hd264812264845%_
                                                    _%$%hd264757265073%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g264748264821%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g264748264821%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g264748264821%_))))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl264758265075%_))
                           (let ((_%$%e264811264842%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl264758265075%_))))
                             (let ((_%$%tl264813264847%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e264811264842%_)))
                                   (_%$%hd264812264845%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e264811264842%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl264813264847%_))
                                   (let ((_%$%e264814264850%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl264813264847%_))))
                                     (let ((_%$%tl264816264855%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e264814264850%_)))
                                           (_%$%hd264815264853%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e264814264850%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl264816264855%_))
                                           (_%__kont270211270212%_
                                            _%$%hd264815264853%_
                                            _%$%hd264812264845%_
                                            _%$%hd264757265073%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g264748264821%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g264748264821%_)))))
                           (let ()
                             (declare (not safe))
                             (_%$%g264748264821%_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? _%$%tl264758265075%_))
                   (let ((_%$%e264811264842%_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl264758265075%_))))
                     (let ((_%$%tl264813264847%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e264811264842%_)))
                           (_%$%hd264812264845%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e264811264842%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl264813264847%_))
                           (let ((_%$%e264814264850%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl264813264847%_))))
                             (let ((_%$%tl264816264855%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e264814264850%_)))
                                   (_%$%hd264815264853%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e264814264850%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%$%tl264816264855%_))
                                   (_%__kont270211270212%_
                                    _%$%hd264815264853%_
                                    _%$%hd264812264845%_
                                    _%$%hd264757265073%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g264748264821%_)))))
                           (let ()
                             (declare (not safe))
                             (_%$%g264748264821%_)))))
                   (let () (declare (not safe)) (_%$%g264748264821%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl264758265075%_))
                                                       (let ((_%$%e264811264842%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl264758265075%_))))
                 (let ((_%$%tl264813264847%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e264811264842%_)))
                       (_%$%hd264812264845%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e264811264842%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl264813264847%_))
                       (let ((_%$%e264814264850%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl264813264847%_))))
                         (let ((_%$%tl264816264855%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e264814264850%_)))
                               (_%$%hd264815264853%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e264814264850%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl264816264855%_))
                               (_%__kont270211270212%_
                                _%$%hd264815264853%_
                                _%$%hd264812264845%_
                                _%$%hd264757265073%_)
                               (let ()
                                 (declare (not safe))
                                 (_%$%g264748264821%_)))))
                       (let () (declare (not safe)) (_%$%g264748264821%_)))))
               (let () (declare (not safe)) (_%$%g264748264821%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl264758265075%_))
                                               (let ((_%$%e264811264842%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl264758265075%_))))
                                                 (let ((_%$%tl264813264847%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e264811264842%_)))
                                                       (_%$%hd264812264845%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e264811264842%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl264813264847%_))
                                                       (let ((_%$%e264814264850%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl264813264847%_))))
                 (let ((_%$%tl264816264855%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e264814264850%_)))
                       (_%$%hd264815264853%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e264814264850%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl264816264855%_))
                       (_%__kont270211270212%_
                        _%$%hd264815264853%_
                        _%$%hd264812264845%_
                        _%$%hd264757265073%_)
                       (let () (declare (not safe)) (_%$%g264748264821%_)))))
               (let () (declare (not safe)) (_%$%g264748264821%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g264748264821%_))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl264758265075%_))
                                       (let ((_%$%e264811264842%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl264758265075%_))))
                                         (let ((_%$%tl264813264847%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e264811264842%_)))
                                               (_%$%hd264812264845%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e264811264842%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl264813264847%_))
                                               (let ((_%$%e264814264850%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl264813264847%_))))
                                                 (let ((_%$%tl264816264855%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e264814264850%_)))
                                                       (_%$%hd264815264853%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e264814264850%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl264816264855%_))
                                                       (_%__kont270211270212%_
                                                        _%$%hd264815264853%_
                                                        _%$%hd264812264845%_
                                                        _%$%hd264757265073%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%$%g264748264821%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g264748264821%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g264748264821%_))))))
                           (let ()
                             (declare (not safe))
                             (_%$%g264748264821%_)))))
                   (let () (declare (not safe)) (_%$%g264748264821%_)))))))))
    (define gxc#check-contract-violation!
      (lambda (_%stx264611%_ _%expr264612%_)
        (let* ((_%__stx270353270354%_ _%expr264612%_)
               (_%$%g264615264645%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx270353270354%_)))))
          (let ((_%__kont270355270356%_
                 (lambda (_%$%g264617264713%_
                          _%$%g264618264714%_
                          _%$%g264619264715%_)
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"contract violation"
                      _%stx264611%_
                      _%$%g264619264715%_
                      _%$%g264618264714%_
                      _%$%g264617264713%_))))
                (_%__kont270357270358%_ (lambda () _%expr264612%_)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx270353270354%_))
                (let ((_%$%e264620264657%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx270353270354%_))))
                  (let ((_%$%tl264622264662%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e264620264657%_)))
                        (_%$%hd264621264660%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e264620264657%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%$%hd264621264660%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq?
                               '%#begin-annotation
                               _%$%hd264621264660%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl264622264662%_))
                                (let ((_%$%e264623264665%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl264622264662%_))))
                                  (let ((_%$%tl264625264670%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e264623264665%_)))
                                        (_%$%hd264624264668%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e264623264665%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd264624264668%_))
                                        (let ((_%$%e264626264673%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd264624264668%_))))
                                          (let ((_%$%tl264628264678%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e264626264673%_)))
                                                (_%$%hd264627264676%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e264626264673%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd264627264676%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '@contract-violation
                                                       _%$%hd264627264676%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl264628264678%_))
                                                        (let ((_%$%e264629264681%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl264628264678%_))))
                  (let ((_%$%tl264631264686%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e264629264681%_)))
                        (_%$%hd264630264684%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e264629264681%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl264631264686%_))
                        (let ((_%$%e264632264689%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl264631264686%_))))
                          (let ((_%$%tl264634264694%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e264632264689%_)))
                                (_%$%hd264633264692%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e264632264689%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl264634264694%_))
                                (let ((_%$%e264635264697%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl264634264694%_))))
                                  (let ((_%$%tl264637264702%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e264635264697%_)))
                                        (_%$%hd264636264700%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e264635264697%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl264637264702%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl264625264670%_))
                                            (let ((_%$%e264638264705%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl264625264670%_))))
                                              (let ((_%$%tl264640264710%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e264638264705%_)))
                                                    (_%$%hd264639264708%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e264638264705%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl264640264710%_))
                                                    (_%__kont270355270356%_
                                                     _%$%hd264636264700%_
                                                     _%$%hd264633264692%_
                                                     _%$%hd264630264684%_)
                                                    (_%__kont270357270358%_))))
                                            (_%__kont270357270358%_))
                                        (_%__kont270357270358%_))))
                                (_%__kont270357270358%_))))
                        (_%__kont270357270358%_))))
                (_%__kont270357270358%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont270357270358%_))
                                                (_%__kont270357270358%_))))
                                        (_%__kont270357270358%_))))
                                (_%__kont270357270358%_))
                            (_%__kont270357270358%_))
                        (_%__kont270357270358%_))))
                (_%__kont270357270358%_))))))))
