(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1789552496)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp270517 (list gxc#::basic-xform::t))
            (__tmp270516 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp270517
         '()
         __tmp270516
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args269582%_
        (apply make-instance gxc#::optimize-call::t _%$args269582%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp270518
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
        (__make-atomic-promise __tmp270518)))
    (define gxc#apply-optimize-call
      (lambda (_%stx269574%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self269577%_
                (let ((__obj270508
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj270508))
               (__tmp270519
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self269577%_ _%stx269574%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp270519
           gxc#current-compile-method
           _%self269577%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp270521 (list gxc#::void::t))
            (__tmp270520 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp270521
         '()
         __tmp270520
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args269571%_
        (apply make-instance gxc#::check-return-type::t _%$args269571%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp270522
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
        (__make-atomic-promise __tmp270522)))
    (define gxc#apply-check-return-type
      (lambda (_%stx269563%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self269566%_
                (let ((__obj270510
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj270510))
               (__tmp270523
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self269566%_ _%stx269563%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp270523
           gxc#current-compile-method
           _%self269566%_))))
    (define gxc#optimize-call%
      (lambda (_%self268699%_ _%stx268700%_)
        (let* ((_%__stx269723269724%_ _%stx268700%_)
               (_%$%g268704268786%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx269723269724%_)))))
          (let ((_%__kont269725269726%_
                 (lambda (_%$%g268706269350%_ _%$%g268707269351%_)
                   (let* ((_%rator-id269371%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%$%g268707269351%_)))
                          (_%rator-type269373%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id269371%_)))
                          (_%$e269376%_
                           (let ()
                             (declare (not safe))
                             (__hash-get
                              gxc#special-procedure-optimizers
                              _%rator-id269371%_))))
                     (if _%$e269376%_
                         (_%$e269376%_ _%self268699%_ _%stx268700%_)
                         (if (or (not _%rator-type269373%_)
                                 (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%rator-type269373%_
                                    'gxc#!nullable-type::t))
                                 (eq? (##structure-ref
                                       _%rator-type269373%_
                                       '1
                                       gxc#!type::t
                                       '#f)
                                      't))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self268699%_ _%stx268700%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%rator-type269373%_
                                    'gxc#!procedure::t))
                                 (let ()
                                   (let ((__tmp270524
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%rator-type269373%_
                                             '1
                                             '#f
                                             '#f))))
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"optimize-call "
                                      _%rator-id269371%_
                                      '" => "
                                      _%rator-type269373%_
                                      '" "
                                      __tmp270524))
                                   (let* ((_%optimized269396%_
                                           (let ((__method270511
                                                  (let ()
                                                    (declare (not safe))
                                                    (__method-ref
                                                     _%rator-type269373%_
                                                     'optimize-call))))
                                             (if __method270511
                                                 (let ((__tmp270525
                                                        (let ((__tmp270526
                                                               (lambda (_%$%g269388269391%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%$%g269389269393%_)
                         (cons _%$%g269388269391%_ _%$%g269389269393%_))))
                  (declare (not safe))
                  (foldr__0 __tmp270526 '() _%$%g268706269350%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__method270511
                                                    _%rator-type269373%_
                                                    _%self268699%_
                                                    _%stx268700%_
                                                    __tmp270525))
                                                 (begin
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Missing method"
                                                            _%rator-type269373%_
                                                            'optimize-call))
                                                   '#!void))))
                                          (_%__stx269671269672%_
                                           _%optimized269396%_)
                                          (_%$%g269399269428%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx269671269672%_)))))
                                     (let ((_%__kont269673269674%_
                                            (lambda (_%$%g269401269494%_
                                                     _%$%g269402269495%_)
                                              (let* ((_%optimized-rator-id269523%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#identifier-symbol
                                                         _%$%g269402269495%_)))
                                                     (_%rator-type269528%_
                                                      (let ((_%$e269525%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#optimizer-lookup-type
                        _%optimized-rator-id269523%_))))
                (if _%$e269525%_ _%$e269525%_ _%rator-type269373%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (or (let ()
                                                          (declare (not safe))
                                                          (class-instance?
                                                           gxc#!primitive::t
                                                           _%rator-type269528%_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##memq _%optimized-rator-id269523%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          gxc#checked-primitives))
                (and (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%rator-type269528%_
                        'gxc#!procedure::t))
                     (eq? (let ()
                            (declare (not safe))
                            (gxc#!procedure-origin _%rator-type269528%_))
                          (##structure-ref
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))
                           '1
                           gx#expander-context::t
                           '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%optimized269396%_
                                                    (let ((__tmp270527
                                                           (cons '%#call-unchecked
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f '%#ref))
                                     (cons _%$%g269402269495%_ '()))
                               (let ((__tmp270528
                                      (lambda (_%$%g269536269539%_
                                               _%$%g269537269541%_)
                                        (cons _%$%g269536269539%_
                                              _%$%g269537269541%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp270528
                                  '()
                                  _%$%g269401269494%_))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp270527 _%stx268700%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont269677269678%_
                                            (lambda () _%optimized269396%_)))
                                       (let ((_%__match269720269721%_
                                              (lambda (_%$%e269403269440%_
                                                       _%$%hd269404269443%_
                                                       _%$%tl269405269445%_
                                                       _%$%e269406269448%_
                                                       _%$%hd269407269451%_
                                                       _%$%tl269408269453%_
                                                       _%$%e269409269456%_
                                                       _%$%hd269410269459%_
                                                       _%$%tl269411269461%_
                                                       _%$%e269412269464%_
                                                       _%$%hd269413269467%_
                                                       _%$%tl269414269469%_
                                                       _%__splice269675269676%_
                                                       _%$%target269415269472%_
                                                       _%$%tl269417269474%_)
                                                (letrec ((_%$%loop269418269477%_
                                                          (lambda (_%$%hd269416269480%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%arg269422269482%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd269416269480%_))
                        (let ((_%$%e269419269484%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd269416269480%_))))
                          (let ((_%$%lp-tl269421269489%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e269419269484%_)))
                                (_%$%lp-hd269420269487%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e269419269484%_))))
                            (_%$%loop269418269477%_
                             _%$%lp-tl269421269489%_
                             (cons _%$%lp-hd269420269487%_
                                   _%$%arg269422269482%_))))
                        (let ((_%$%arg269423269492%_
                               (reverse _%$%arg269422269482%_)))
                          (_%__kont269673269674%_
                           _%$%arg269423269492%_
                           _%$%hd269413269467%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop269418269477%_
                                                   _%$%target269415269472%_
                                                   '())))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx269671269672%_))
                                             (let ((_%$%e269403269440%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx269671269672%_))))
                                               (let ((_%$%tl269405269445%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e269403269440%_)))
                                                     (_%$%hd269404269443%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e269403269440%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%$%hd269404269443%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#call
                                                            _%$%hd269404269443%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%tl269405269445%_))
                     (let ((_%$%e269406269448%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl269405269445%_))))
                       (let ((_%$%tl269408269453%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e269406269448%_)))
                             (_%$%hd269407269451%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e269406269448%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%hd269407269451%_))
                             (let ((_%$%e269409269456%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%hd269407269451%_))))
                               (let ((_%$%tl269411269461%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e269409269456%_)))
                                     (_%$%hd269410269459%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e269409269456%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#identifier? _%$%hd269410269459%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-eq?
                                            '%#ref
                                            _%$%hd269410269459%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%tl269411269461%_))
                                             (let ((_%$%e269412269464%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%tl269411269461%_))))
                                               (let ((_%$%tl269414269469%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e269412269464%_)))
                                                     (_%$%hd269413269467%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e269412269464%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%$%tl269414269469%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%$%tl269408269453%_))
                                                         (let ((_%__splice269675269676%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%$%tl269408269453%_
                           '0))))
                   (let ((_%$%tl269417269474%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice269675269676%_ '1)))
                         (_%$%target269415269472%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice269675269676%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl269417269474%_))
                         (_%__match269720269721%_
                          _%$%e269403269440%_
                          _%$%hd269404269443%_
                          _%$%tl269405269445%_
                          _%$%e269406269448%_
                          _%$%hd269407269451%_
                          _%$%tl269408269453%_
                          _%$%e269409269456%_
                          _%$%hd269410269459%_
                          _%$%tl269411269461%_
                          _%$%e269412269464%_
                          _%$%hd269413269467%_
                          _%$%tl269414269469%_
                          _%__splice269675269676%_
                          _%$%target269415269472%_
                          _%$%tl269417269474%_)
                         (_%__kont269677269678%_))))
                 (_%__kont269677269678%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont269677269678%_))))
                                             (_%__kont269677269678%_))
                                         (_%__kont269677269678%_))
                                     (_%__kont269677269678%_))))
                             (_%__kont269677269678%_))))
                     (_%__kont269677269678%_))
                 (_%__kont269677269678%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont269677269678%_))))
                                             (_%__kont269677269678%_))))))
                                 (if (and (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%rator-type269373%_
                                             'gxc#!class::t))
                                          (eq? (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%rator-type269373%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               'procedure))
                                     (let ((__tmp270529
                                            (cons '%#call-unchecked
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f '%#ref))
                      (cons _%$%g268707269351%_ '()))
                (map (lambda (_%$%g269547269549%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self268699%_
                          _%$%g269547269549%_)))
                     (let ((__tmp270530
                            (lambda (_%$%g269551269554%_ _%$%g269552269556%_)
                              (cons _%$%g269551269554%_ _%$%g269552269556%_))))
                       (declare (not safe))
                       (foldr__0 __tmp270530 '() _%$%g268706269350%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp270529
                                        _%stx268700%_))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"illegal application; not a procedure"
                                        _%stx268700%_
                                        _%rator-type269373%_)))))))))
                (_%__kont269729269730%_
                 (lambda (_%$%g268729268958%_
                          _%$%g268730268959%_
                          _%$%g268731268960%_)
                   (let _%loop269078%_ ((_%rest-arg269080%_
                                         (let ((__tmp270537
                                                (lambda (_%$%g269276269279%_
                                                         _%$%g269277269281%_)
                                                  (cons _%$%g269276269279%_
                                                        _%$%g269277269281%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp270537
                                            '()
                                            _%$%g268731268960%_)))
                                        (_%rest-rand269081%_
                                         (let ((__tmp270538
                                                (lambda (_%$%g269283269286%_
                                                         _%$%g269284269288%_)
                                                  (cons _%$%g269283269286%_
                                                        _%$%g269284269288%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp270538
                                            '()
                                            _%$%g268729268958%_)))
                                        (_%bind269082%_ '())
                                        (_%subst269083%_ '()))
                     (let* ((_%$%rest-arg269084269092%_ _%rest-arg269080%_)
                            (_%$%else269086269105%_
                             (lambda ()
                               (let* ((_%body269100%_
                                       (if (null? _%subst269083%_)
                                           _%$%g268730268959%_
                                           (let ((__tmp270531
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-inline-subst__%
                                                     '#f
                                                     _%subst269083%_
                                                     _%$%g268730268959%_))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp270531
                                              _%stx268700%_))))
                                      (_%expr269102%_
                                       (let ((__tmp270532
                                              (cons '%#let-values
                                                    (cons _%bind269082%_
                                                          (cons _%body269100%_
                                                                '())))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp270532
                                          _%stx268700%_))))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-refine-type-info _%expr269102%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self268699%_
                                    _%expr269102%_)))))
                            (_%$%K269088269265%_
                             (lambda (_%rest-arg269108%_ _%arg-id269109%_)
                               (let* ((_%$%rest-rand269110269118%_
                                       _%rest-rand269081%_)
                                      (_%$%else269112269140%_
                                       (lambda ()
                                         (let ((__tmp270535
                                                (let ((__tmp270536
                                                       (lambda (_%$%g269125269128%_
                                                                _%$%g269126269130%_)
                                                         (cons _%$%g269125269128%_
                                                               _%$%g269126269130%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp270536
                                                   '()
                                                   _%$%g268731268960%_)))
                                               (__tmp270533
                                                (let ((__tmp270534
                                                       (lambda (_%$%g269132269135%_
                                                                _%$%g269133269137%_)
                                                         (cons _%$%g269132269135%_
                                                               _%$%g269133269137%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp270534
                                                   '()
                                                   _%$%g268729268958%_))))
                                           (declare (not safe))
                                           (gxc#raise-compile-error
                                            '"inline lambda arity mismatch"
                                            _%stx268700%_
                                            __tmp270535
                                            __tmp270533))))
                                      (_%$%K269114269253%_
                                       (lambda (_%rest-rand269143%_
                                                _%rand269144%_)
                                         (let* ((_%__stx269625269626%_
                                                 _%rand269144%_)
                                                (_%$%g269148269168%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx269625269626%_)))))
                                           (let ((_%__kont269627269628%_
                                                  (lambda (_%$%g269150269239%_)
                                                    (_%loop269078%_
                                                     _%rest-arg269108%_
                                                     _%rest-rand269143%_
                                                     _%bind269082%_
                                                     (cons (cons _%arg-id269109%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%rand269144%_)
                   _%subst269083%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont269629269630%_
                                                  (lambda (_%$%g269157269196%_)
                                                    (_%loop269078%_
                                                     _%rest-arg269108%_
                                                     _%rest-rand269143%_
                                                     _%bind269082%_
                                                     (cons (cons _%arg-id269109%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%rand269144%_)
                   _%subst269083%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont269631269632%_
                                                  (lambda ()
                                                    (_%loop269078%_
                                                     _%rest-arg269108%_
                                                     _%rest-rand269143%_
                                                     (cons (cons (cons _%arg-id269109%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons _%rand269144%_ '()))
                   _%bind269082%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%subst269083%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx269625269626%_))
                                                 (let ((_%$%e269151269223%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx269625269626%_))))
                                                   (let ((_%$%tl269153269228%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e269151269223%_)))
                                                         (_%$%hd269152269226%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e269151269223%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%$%hd269152269226%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#quote _%$%hd269152269226%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%tl269153269228%_))
                         (let ((_%$%e269154269231%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%tl269153269228%_))))
                           (let ((_%$%tl269156269236%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e269154269231%_)))
                                 (_%$%hd269155269234%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e269154269231%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%$%tl269156269236%_))
                                 (_%__kont269627269628%_ _%$%hd269155269234%_)
                                 (_%__kont269631269632%_))))
                         (_%__kont269631269632%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#ref _%$%hd269152269226%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%tl269153269228%_))
                             (let ((_%$%e269161269188%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%tl269153269228%_))))
                               (let ((_%$%tl269163269193%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e269161269188%_)))
                                     (_%$%hd269162269191%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e269161269188%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%$%tl269163269193%_))
                                     (_%__kont269629269630%_
                                      _%$%hd269162269191%_)
                                     (_%__kont269631269632%_))))
                             (_%__kont269631269632%_))
                         (_%__kont269631269632%_)))
                 (_%__kont269631269632%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont269631269632%_)))))))
                                 (if (pair? _%$%rest-rand269110269118%_)
                                     (let ((_%$%hd269115269256%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%rest-rand269110269118%_)))
                                           (_%$%tl269116269258%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%rest-rand269110269118%_))))
                                       (let* ((_%rand269261%_
                                               _%$%hd269115269256%_)
                                              (_%rest-rand269263%_
                                               _%$%tl269116269258%_))
                                         (_%$%K269114269253%_
                                          _%rest-rand269263%_
                                          _%rand269261%_)))
                                     (_%$%else269112269140%_))))))
                       (if (pair? _%$%rest-arg269084269092%_)
                           (let ((_%$%hd269089269268%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%rest-arg269084269092%_)))
                                 (_%$%tl269090269270%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%rest-arg269084269092%_))))
                             (let* ((_%arg-id269273%_ _%$%hd269089269268%_)
                                    (_%rest-arg269275%_ _%$%tl269090269270%_))
                               (_%$%K269088269265%_
                                _%rest-arg269275%_
                                _%arg-id269273%_)))
                           (_%$%else269086269105%_))))))
                (_%__kont269735269736%_
                 (lambda (_%$%g268765268829%_ _%$%g268766268830%_)
                   (let ((_%rator-type268847%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type
                             _%$%g268766268830%_))))
                     (if (and _%rator-type268847%_
                              (eq? (##structure-ref
                                    _%rator-type268847%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type268847%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type268847%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type268847%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp270539
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self268699%_
                                               _%$%g268766268830%_))
                                            (map (lambda (_%$%g268849268851%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self268699%_
                                                      _%$%g268849268851%_)))
                                                 (let ((__tmp270540
                                                        (lambda (_%$%g268853268856%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g268854268858%_)
                  (cons _%$%g268853268856%_ _%$%g268854268858%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp270540
                                                    '()
                                                    _%$%g268765268829%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp270539 _%stx268700%_))
                         (if (or (not _%rator-type268847%_)
                                 (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%rator-type268847%_
                                    'gxc#!nullable-type::t))
                                 (let ((__tmp270541
                                        (##structure-ref
                                         _%rator-type268847%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp270541 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self268699%_ _%stx268700%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx268700%_
                                _%rator-type268847%_))))))))
            (let* ((_%__match269832269833%_
                    (lambda (_%$%e268767268791%_
                             _%$%hd268768268794%_
                             _%$%tl268769268796%_
                             _%$%e268770268799%_
                             _%$%hd268771268802%_
                             _%$%tl268772268804%_
                             _%__splice269737269738%_
                             _%$%target268773268807%_
                             _%$%tl268775268809%_)
                      (letrec ((_%$%loop268776268812%_
                                (lambda (_%$%hd268774268815%_
                                         _%$%rand268780268817%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd268774268815%_))
                                      (let ((_%$%e268777268819%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd268774268815%_))))
                                        (let ((_%$%lp-tl268779268824%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e268777268819%_)))
                                              (_%$%lp-hd268778268822%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e268777268819%_))))
                                          (_%$%loop268776268812%_
                                           _%$%lp-tl268779268824%_
                                           (cons _%$%lp-hd268778268822%_
                                                 _%$%rand268780268817%_))))
                                      (let ((_%$%rand268781268827%_
                                             (reverse _%$%rand268780268817%_)))
                                        (_%__kont269735269736%_
                                         _%$%rand268781268827%_
                                         _%$%hd268771268802%_))))))
                        (_%$%loop268776268812%_
                         _%$%target268773268807%_
                         '()))))
                   (_%__match269824269825%_
                    (lambda (_%$%e268767268791%_
                             _%$%hd268768268794%_
                             _%$%tl268769268796%_
                             _%$%e268770268799%_
                             _%$%hd268771268802%_
                             _%$%tl268772268804%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%$%tl268772268804%_))
                          (let ((_%__splice269737269738%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%$%tl268772268804%_
                                    '0))))
                            (let ((_%$%tl268775268809%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice269737269738%_
                                      '1)))
                                  (_%$%target268773268807%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice269737269738%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl268775268809%_))
                                  (_%__match269832269833%_
                                   _%$%e268767268791%_
                                   _%$%hd268768268794%_
                                   _%$%tl268769268796%_
                                   _%$%e268770268799%_
                                   _%$%hd268771268802%_
                                   _%$%tl268772268804%_
                                   _%__splice269737269738%_
                                   _%$%target268773268807%_
                                   _%$%tl268775268809%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g268704268786%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g268704268786%_)))))
                   (_%__match269812269813%_
                    (lambda (_%$%e268732268874%_
                             _%$%hd268733268877%_
                             _%$%tl268734268879%_
                             _%$%e268735268882%_
                             _%$%hd268736268885%_
                             _%$%tl268737268887%_
                             _%$%e268738268890%_
                             _%$%hd268739268893%_
                             _%$%tl268740268895%_
                             _%$%e268741268898%_
                             _%$%hd268742268901%_
                             _%$%tl268743268903%_
                             _%__splice269731269732%_
                             _%$%target268744268906%_
                             _%$%tl268746268908%_)
                      (letrec ((_%$%loop268747268911%_
                                (lambda (_%$%hd268745268914%_
                                         _%$%arg268751268916%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd268745268914%_))
                                      (let ((_%$%e268748268918%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd268745268914%_))))
                                        (let ((_%$%lp-tl268750268923%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e268748268918%_)))
                                              (_%$%lp-hd268749268921%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e268748268918%_))))
                                          (_%$%loop268747268911%_
                                           _%$%lp-tl268750268923%_
                                           (cons _%$%lp-hd268749268921%_
                                                 _%$%arg268751268916%_))))
                                      (let ((_%$%arg268752268926%_
                                             (reverse _%$%arg268751268916%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl268743268903%_))
                                            (let ((_%$%e268753268928%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl268743268903%_))))
                                              (let ((_%$%tl268755268933%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e268753268928%_)))
                                                    (_%$%hd268754268931%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e268753268928%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl268755268933%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%$%tl268737268887%_))
                                                        (let ((_%__splice269733269734%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%$%tl268737268887%_
                          '0))))
                  (let ((_%$%tl268758268938%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice269733269734%_ '1)))
                        (_%$%target268756268936%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice269733269734%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl268758268938%_))
                        (letrec ((_%$%loop268759268941%_
                                  (lambda (_%$%hd268757268944%_
                                           _%$%rand268763268946%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd268757268944%_))
                                        (let ((_%$%e268760268948%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd268757268944%_))))
                                          (let ((_%$%lp-tl268762268953%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e268760268948%_)))
                                                (_%$%lp-hd268761268951%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e268760268948%_))))
                                            (_%$%loop268759268941%_
                                             _%$%lp-tl268762268953%_
                                             (cons _%$%lp-hd268761268951%_
                                                   _%$%rand268763268946%_))))
                                        (let ((_%$%rand268764268956%_
                                               (reverse _%$%rand268763268946%_)))
                                          (let ((_%$%g268729268958%_
                                                 _%$%rand268764268956%_)
                                                (_%$%g268730268959%_
                                                 _%$%hd268754268931%_)
                                                (_%$%g268731268960%_
                                                 _%$%arg268752268926%_))
                                            (if (and (= (length (let ((__tmp270542
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_%$%g268986268989%_
                                        _%$%g268987268991%_)
                                 (cons _%$%g268986268989%_
                                       _%$%g268987268991%_))))
                          (declare (not safe))
                          (foldr__0 __tmp270542 '() _%$%g268731268960%_)))
                (length (let ((__tmp270543
                               (lambda (_%$%g268993268996%_
                                        _%$%g268994268998%_)
                                 (cons _%$%g268993268996%_
                                       _%$%g268994268998%_))))
                          (declare (not safe))
                          (foldr__0 __tmp270543 '() _%$%g268729268958%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp270546
                                                            (lambda (_%id269001%_)
                                                              (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gxc#mutable-binding? _%id269001%_)))))
                   (__tmp270544
                    (let ((__tmp270545
                           (lambda (_%$%g269002269005%_ _%$%g269003269007%_)
                             (cons _%$%g269002269005%_ _%$%g269003269007%_))))
                      (declare (not safe))
                      (foldr__0 __tmp270545 '() _%$%g268731268960%_))))
               (declare (not safe))
               (andmap__0 __tmp270546 __tmp270544))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp270549
                                                            (lambda (_%rand269010%_)
                                                              (let* ((_%__stx269599269600%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%rand269010%_)
                             (_%$%g269013269026%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx269599269600%_)))))
                        (let ((_%__kont269601269602%_
                               (lambda (_%$%g269015269054%_)
                                 (not (let ()
                                        (declare (not safe))
                                        (gxc#mutable-binding?
                                         _%$%g269015269054%_)))))
                              (_%__kont269603269604%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx269599269600%_))
                              (let ((_%$%e269016269038%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx269599269600%_))))
                                (let ((_%$%tl269018269043%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e269016269038%_)))
                                      (_%$%hd269017269041%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e269016269038%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd269017269041%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd269017269041%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl269018269043%_))
                                              (let ((_%$%e269019269046%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl269018269043%_))))
                                                (let ((_%$%tl269021269051%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e269019269046%_)))
                                                      (_%$%hd269020269049%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e269019269046%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl269021269051%_))
                                                      (_%__kont269601269602%_
                                                       _%$%hd269020269049%_)
                                                      (_%__kont269603269604%_))))
                                              (_%__kont269603269604%_))
                                          (_%__kont269603269604%_))
                                      (_%__kont269603269604%_))))
                              (_%__kont269603269604%_))))))
                   (__tmp270547
                    (let ((__tmp270548
                           (lambda (_%$%g269070269073%_ _%$%g269071269075%_)
                             (cons _%$%g269070269073%_ _%$%g269071269075%_))))
                      (declare (not safe))
                      (foldr__0 __tmp270548 '() _%$%g268729268958%_))))
               (declare (not safe))
               (andmap__0 __tmp270549 __tmp270547)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont269729269730%_
                                                 _%$%g268729268958%_
                                                 _%$%g268730268959%_
                                                 _%$%g268731268960%_)
                                                (_%__match269832269833%_
                                                 _%$%e268732268874%_
                                                 _%$%hd268733268877%_
                                                 _%$%tl268734268879%_
                                                 _%$%e268735268882%_
                                                 _%$%hd268736268885%_
                                                 _%$%tl268737268887%_
                                                 _%__splice269733269734%_
                                                 _%$%target268756268936%_
                                                 _%$%tl268758268938%_))))))))
                          (_%$%loop268759268941%_
                           _%$%target268756268936%_
                           '()))
                        (let () (declare (not safe)) (_%$%g268704268786%_)))))
                (let () (declare (not safe)) (_%$%g268704268786%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match269824269825%_
                                                     _%$%e268732268874%_
                                                     _%$%hd268733268877%_
                                                     _%$%tl268734268879%_
                                                     _%$%e268735268882%_
                                                     _%$%hd268736268885%_
                                                     _%$%tl268737268887%_))))
                                            (_%__match269824269825%_
                                             _%$%e268732268874%_
                                             _%$%hd268733268877%_
                                             _%$%tl268734268879%_
                                             _%$%e268735268882%_
                                             _%$%hd268736268885%_
                                             _%$%tl268737268887%_)))))))
                        (_%$%loop268747268911%_
                         _%$%target268744268906%_
                         '()))))
                   (_%__match269776269777%_
                    (lambda (_%$%e268708269296%_
                             _%$%hd268709269299%_
                             _%$%tl268710269301%_
                             _%$%e268711269304%_
                             _%$%hd268712269307%_
                             _%$%tl268713269309%_
                             _%$%e268714269312%_
                             _%$%hd268715269315%_
                             _%$%tl268716269317%_
                             _%$%e268717269320%_
                             _%$%hd268718269323%_
                             _%$%tl268719269325%_
                             _%__splice269727269728%_
                             _%$%target268720269328%_
                             _%$%tl268722269330%_)
                      (letrec ((_%$%loop268723269333%_
                                (lambda (_%$%hd268721269336%_
                                         _%$%rand268727269338%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd268721269336%_))
                                      (let ((_%$%e268724269340%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd268721269336%_))))
                                        (let ((_%$%lp-tl268726269345%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e268724269340%_)))
                                              (_%$%lp-hd268725269343%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e268724269340%_))))
                                          (_%$%loop268723269333%_
                                           _%$%lp-tl268726269345%_
                                           (cons _%$%lp-hd268725269343%_
                                                 _%$%rand268727269338%_))))
                                      (let ((_%$%rand268728269348%_
                                             (reverse _%$%rand268727269338%_)))
                                        (_%__kont269725269726%_
                                         _%$%rand268728269348%_
                                         _%$%hd268718269323%_))))))
                        (_%$%loop268723269333%_
                         _%$%target268720269328%_
                         '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx269723269724%_))
                  (let ((_%$%e268708269296%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx269723269724%_))))
                    (let ((_%$%tl268710269301%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e268708269296%_)))
                          (_%$%hd268709269299%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e268708269296%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl268710269301%_))
                          (let ((_%$%e268711269304%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl268710269301%_))))
                            (let ((_%$%tl268713269309%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e268711269304%_)))
                                  (_%$%hd268712269307%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e268711269304%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd268712269307%_))
                                  (let ((_%$%e268714269312%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd268712269307%_))))
                                    (let ((_%$%tl268716269317%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e268714269312%_)))
                                          (_%$%hd268715269315%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e268714269312%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd268715269315%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd268715269315%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl268716269317%_))
                                                  (let ((_%$%e268717269320%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl268716269317%_))))
                                                    (let ((_%$%tl268719269325%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e268717269320%_)))
                                                          (_%$%hd268718269323%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e268717269320%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl268719269325%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%$%tl268713269309%_))
                      (let ((_%__splice269727269728%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl268713269309%_
                                '0))))
                        (let ((_%$%tl268722269330%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice269727269728%_ '1)))
                              (_%$%target268720269328%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice269727269728%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl268722269330%_))
                              (_%__match269776269777%_
                               _%$%e268708269296%_
                               _%$%hd268709269299%_
                               _%$%tl268710269301%_
                               _%$%e268711269304%_
                               _%$%hd268712269307%_
                               _%$%tl268713269309%_
                               _%$%e268714269312%_
                               _%$%hd268715269315%_
                               _%$%tl268716269317%_
                               _%$%e268717269320%_
                               _%$%hd268718269323%_
                               _%$%tl268719269325%_
                               _%__splice269727269728%_
                               _%$%target268720269328%_
                               _%$%tl268722269330%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g268704268786%_)))))
                      (let () (declare (not safe)) (_%$%g268704268786%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%$%tl268713269309%_))
                      (let ((_%__splice269737269738%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl268713269309%_
                                '0))))
                        (let ((_%$%tl268775268809%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice269737269738%_ '1)))
                              (_%$%target268773268807%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice269737269738%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl268775268809%_))
                              (_%__match269832269833%_
                               _%$%e268708269296%_
                               _%$%hd268709269299%_
                               _%$%tl268710269301%_
                               _%$%e268711269304%_
                               _%$%hd268712269307%_
                               _%$%tl268713269309%_
                               _%__splice269737269738%_
                               _%$%target268773268807%_
                               _%$%tl268775268809%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g268704268786%_)))))
                      (let () (declare (not safe)) (_%$%g268704268786%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl268713269309%_))
                                                      (let ((_%__splice269737269738%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl268713269309%_
                        '0))))
                (let ((_%$%tl268775268809%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice269737269738%_ '1)))
                      (_%$%target268773268807%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice269737269738%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl268775268809%_))
                      (_%__match269832269833%_
                       _%$%e268708269296%_
                       _%$%hd268709269299%_
                       _%$%tl268710269301%_
                       _%$%e268711269304%_
                       _%$%hd268712269307%_
                       _%$%tl268713269309%_
                       _%__splice269737269738%_
                       _%$%target268773268807%_
                       _%$%tl268775268809%_)
                      (let () (declare (not safe)) (_%$%g268704268786%_)))))
              (let () (declare (not safe)) (_%$%g268704268786%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#lambda
                                                     _%$%hd268715269315%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl268716269317%_))
                                                      (let ((_%$%e268741268898%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl268716269317%_))))
                (let ((_%$%tl268743268903%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e268741268898%_)))
                      (_%$%hd268742268901%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e268741268898%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%$%hd268742268901%_))
                      (let ((_%__splice269731269732%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%hd268742268901%_
                                '0))))
                        (let ((_%$%tl268746268908%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice269731269732%_ '1)))
                              (_%$%target268744268906%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice269731269732%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl268746268908%_))
                              (_%__match269812269813%_
                               _%$%e268708269296%_
                               _%$%hd268709269299%_
                               _%$%tl268710269301%_
                               _%$%e268711269304%_
                               _%$%hd268712269307%_
                               _%$%tl268713269309%_
                               _%$%e268714269312%_
                               _%$%hd268715269315%_
                               _%$%tl268716269317%_
                               _%$%e268741268898%_
                               _%$%hd268742268901%_
                               _%$%tl268743268903%_
                               _%__splice269731269732%_
                               _%$%target268744268906%_
                               _%$%tl268746268908%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _%$%tl268713269309%_))
                                  (let ((_%__splice269737269738%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice->vector
                                            _%$%tl268713269309%_
                                            '0))))
                                    (let ((_%$%tl268775268809%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice269737269738%_
                                              '1)))
                                          (_%$%target268773268807%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice269737269738%_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl268775268809%_))
                                          (_%__match269832269833%_
                                           _%$%e268708269296%_
                                           _%$%hd268709269299%_
                                           _%$%tl268710269301%_
                                           _%$%e268711269304%_
                                           _%$%hd268712269307%_
                                           _%$%tl268713269309%_
                                           _%__splice269737269738%_
                                           _%$%target268773268807%_
                                           _%$%tl268775268809%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g268704268786%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g268704268786%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%$%tl268713269309%_))
                          (let ((_%__splice269737269738%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%$%tl268713269309%_
                                    '0))))
                            (let ((_%$%tl268775268809%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice269737269738%_
                                      '1)))
                                  (_%$%target268773268807%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice269737269738%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl268775268809%_))
                                  (_%__match269832269833%_
                                   _%$%e268708269296%_
                                   _%$%hd268709269299%_
                                   _%$%tl268710269301%_
                                   _%$%e268711269304%_
                                   _%$%hd268712269307%_
                                   _%$%tl268713269309%_
                                   _%__splice269737269738%_
                                   _%$%target268773268807%_
                                   _%$%tl268775268809%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g268704268786%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g268704268786%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%$%tl268713269309%_))
                  (let ((_%__splice269737269738%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%$%tl268713269309%_
                            '0))))
                    (let ((_%$%tl268775268809%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice269737269738%_ '1)))
                          (_%$%target268773268807%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice269737269738%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl268775268809%_))
                          (_%__match269832269833%_
                           _%$%e268708269296%_
                           _%$%hd268709269299%_
                           _%$%tl268710269301%_
                           _%$%e268711269304%_
                           _%$%hd268712269307%_
                           _%$%tl268713269309%_
                           _%__splice269737269738%_
                           _%$%target268773268807%_
                           _%$%tl268775268809%_)
                          (let ()
                            (declare (not safe))
                            (_%$%g268704268786%_)))))
                  (let () (declare (not safe)) (_%$%g268704268786%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl268713269309%_))
                                                      (let ((_%__splice269737269738%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl268713269309%_
                        '0))))
                (let ((_%$%tl268775268809%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice269737269738%_ '1)))
                      (_%$%target268773268807%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice269737269738%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl268775268809%_))
                      (_%__match269832269833%_
                       _%$%e268708269296%_
                       _%$%hd268709269299%_
                       _%$%tl268710269301%_
                       _%$%e268711269304%_
                       _%$%hd268712269307%_
                       _%$%tl268713269309%_
                       _%__splice269737269738%_
                       _%$%target268773268807%_
                       _%$%tl268775268809%_)
                      (let () (declare (not safe)) (_%$%g268704268786%_)))))
              (let () (declare (not safe)) (_%$%g268704268786%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%$%tl268713269309%_))
                                              (let ((_%__splice269737269738%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl268713269309%_
                                                        '0))))
                                                (let ((_%$%tl268775268809%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice269737269738%_
                                                          '1)))
                                                      (_%$%target268773268807%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice269737269738%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl268775268809%_))
                                                      (_%__match269832269833%_
                                                       _%$%e268708269296%_
                                                       _%$%hd268709269299%_
                                                       _%$%tl268710269301%_
                                                       _%$%e268711269304%_
                                                       _%$%hd268712269307%_
                                                       _%$%tl268713269309%_
                                                       _%__splice269737269738%_
                                                       _%$%target268773268807%_
                                                       _%$%tl268775268809%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g268704268786%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g268704268786%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl268713269309%_))
                                      (let ((_%__splice269737269738%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%tl268713269309%_
                                                '0))))
                                        (let ((_%$%tl268775268809%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice269737269738%_
                                                  '1)))
                                              (_%$%target268773268807%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice269737269738%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl268775268809%_))
                                              (_%__match269832269833%_
                                               _%$%e268708269296%_
                                               _%$%hd268709269299%_
                                               _%$%tl268710269301%_
                                               _%$%e268711269304%_
                                               _%$%hd268712269307%_
                                               _%$%tl268713269309%_
                                               _%__splice269737269738%_
                                               _%$%target268773268807%_
                                               _%$%tl268775268809%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g268704268786%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g268704268786%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g268704268786%_)))))
                  (let () (declare (not safe)) (_%$%g268704268786%_))))))))
    (define gxc#optimize-special-cast
      (lambda (_%self268504%_ _%stx268505%_)
        (let* ((_%__stx269835269836%_ _%stx268505%_)
               (_%$%g268509268549%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx269835269836%_)))))
          (let ((_%__kont269837269838%_
                 (lambda (_%$%g268511268665%_ _%$%g268512268666%_)
                   (let* ((_%descriptor-id268686%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%$%g268512268666%_)))
                          (_%descriptor-type268688%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type
                              _%descriptor-id268686%_)))
                          (_%object-type268690%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%$%g268511268665%_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _%descriptor-type268688%_
                            'gxc#!interface::t))
                         (if (and _%object-type268690%_
                                  (let ((__tmp270550
                                         (let ((__tmp270551
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%descriptor-type268688%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx268505%_
                                            __tmp270551))))
                                    (declare (not safe))
                                    (gxc#!type-subtype?
                                     _%object-type268690%_
                                     __tmp270550)))
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self268504%_
                                _%$%g268511268665%_))
                             (let ((__tmp270552
                                    (cons '%#call-unchecked
                                          (cons '(%#ref cast)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#ref))
                                                            (cons _%$%g268512268666%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self268504%_ _%$%g268511268665%_))
                    '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp270552
                                _%stx268505%_)))
                         (let ()
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"illegal cast; not an interface type"
                            _%stx268505%_
                            _%descriptor-type268688%_))))))
                (_%__kont269839269840%_
                 (lambda (_%$%g268531268593%_ _%$%g268532268594%_)
                   (let ((__tmp270553
                          (cons '%#call-unchecked
                                (cons '(%#ref cast)
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self268504%_
                                               _%$%g268532268594%_))
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self268504%_
                                                     _%$%g268531268593%_))
                                                  '()))))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp270553 _%stx268505%_))))
                (_%__kont269841269842%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"illegal cast; arity mismatch"
                      _%stx268505%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx269835269836%_))
                (let ((_%$%e268513268617%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx269835269836%_))))
                  (let ((_%$%tl268515268622%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e268513268617%_)))
                        (_%$%hd268514268620%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e268513268617%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl268515268622%_))
                        (let ((_%$%e268516268625%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl268515268622%_))))
                          (let ((_%$%tl268518268630%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e268516268625%_)))
                                (_%$%hd268517268628%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e268516268625%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl268518268630%_))
                                (let ((_%$%e268519268633%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl268518268630%_))))
                                  (let ((_%$%tl268521268638%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e268519268633%_)))
                                        (_%$%hd268520268636%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e268519268633%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd268520268636%_))
                                        (let ((_%$%e268522268641%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd268520268636%_))))
                                          (let ((_%$%tl268524268646%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e268522268641%_)))
                                                (_%$%hd268523268644%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e268522268641%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd268523268644%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%$%hd268523268644%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl268524268646%_))
                                                        (let ((_%$%e268525268649%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl268524268646%_))))
                  (let ((_%$%tl268527268654%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e268525268649%_)))
                        (_%$%hd268526268652%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e268525268649%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl268527268654%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl268521268638%_))
                            (let ((_%$%e268528268657%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl268521268638%_))))
                              (let ((_%$%tl268530268662%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e268528268657%_)))
                                    (_%$%hd268529268660%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e268528268657%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl268530268662%_))
                                    (_%__kont269837269838%_
                                     _%$%hd268529268660%_
                                     _%$%hd268526268652%_)
                                    (_%__kont269841269842%_))))
                            (_%__kont269841269842%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl268521268638%_))
                            (let ((_%$%e268542268585%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl268521268638%_))))
                              (let ((_%$%tl268544268590%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e268542268585%_)))
                                    (_%$%hd268543268588%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e268542268585%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl268544268590%_))
                                    (_%__kont269839269840%_
                                     _%$%hd268543268588%_
                                     _%$%hd268520268636%_)
                                    (_%__kont269841269842%_))))
                            (_%__kont269841269842%_)))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%$%tl268521268638%_))
                    (let ((_%$%e268542268585%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl268521268638%_))))
                      (let ((_%$%tl268544268590%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e268542268585%_)))
                            (_%$%hd268543268588%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e268542268585%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl268544268590%_))
                            (_%__kont269839269840%_
                             _%$%hd268543268588%_
                             _%$%hd268520268636%_)
                            (_%__kont269841269842%_))))
                    (_%__kont269841269842%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl268521268638%_))
                                                        (let ((_%$%e268542268585%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl268521268638%_))))
                  (let ((_%$%tl268544268590%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e268542268585%_)))
                        (_%$%hd268543268588%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e268542268585%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl268544268590%_))
                        (_%__kont269839269840%_
                         _%$%hd268543268588%_
                         _%$%hd268520268636%_)
                        (_%__kont269841269842%_))))
                (_%__kont269841269842%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl268521268638%_))
                                                    (let ((_%$%e268542268585%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl268521268638%_))))
                                                      (let ((_%$%tl268544268590%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e268542268585%_)))
                    (_%$%hd268543268588%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e268542268585%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl268544268590%_))
                    (_%__kont269839269840%_
                     _%$%hd268543268588%_
                     _%$%hd268520268636%_)
                    (_%__kont269841269842%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont269841269842%_)))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl268521268638%_))
                                            (let ((_%$%e268542268585%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl268521268638%_))))
                                              (let ((_%$%tl268544268590%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e268542268585%_)))
                                                    (_%$%hd268543268588%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e268542268585%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl268544268590%_))
                                                    (_%__kont269839269840%_
                                                     _%$%hd268543268588%_
                                                     _%$%hd268520268636%_)
                                                    (_%__kont269841269842%_))))
                                            (_%__kont269841269842%_)))))
                                (_%__kont269841269842%_))))
                        (_%__kont269841269842%_))))
                (_%__kont269841269842%_))))))
    (define gxc#special-procedure-optimizers
      (let ((_%ht268501%_
             (let () (declare (not safe)) (make-hash-table-eq 'size: '1))))
        (let ()
          (declare (not safe))
          (__hash-put! _%ht268501%_ 'cast gxc#optimize-special-cast))
        _%ht268501%_))
    (define gxc#!procedure::optimize-call
      (lambda (_%self268463%_ _%ctx268464%_ _%stx268465%_ _%args268466%_)
        (let ((_%self268469%_ _%self268463%_))
          (if (let ((__method270512
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self268469%_ 'check-arguments))))
                (if __method270512
                    (let ()
                      (declare (not safe))
                      (__method270512
                       _%self268469%_
                       _%ctx268464%_
                       _%stx268465%_
                       _%args268466%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self268469%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature268479%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self268469%_ '2 '#f '#f)))
                     (_%signature268481%_ _%signature268479%_)
                     (_%$e268491%_
                      (if _%signature268481%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature268481%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e268491%_
                    (if (let ()
                          (declare (not safe))
                          (gxc#symbol-in-local-scope? _%$e268491%_))
                        (let ((__tmp270554
                               (cons '%#call
                                     (cons (cons '%#ref
                                                 (cons _%$e268491%_ '()))
                                           (map (lambda (_%$%g268495268497%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%ctx268464%_
                                                     _%$%g268495268497%_)))
                                                _%args268466%_)))))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp270554
                           _%stx268465%_
                           _%ctx268464%_))
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx268464%_ _%stx268465%_)))
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx268464%_ _%stx268465%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx268464%_ _%stx268465%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass269584 __method-table269585)
        (let ((__check-arguments269586
               (let ((__tmp270555
                      (lambda ()
                        (let ((__method269587
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table269585
                                  'check-arguments
                                  '#f))))
                          (if __method269587
                              __method269587
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp270555))))
          (lambda (_%self268463%_ _%ctx268464%_ _%stx268465%_ _%args268466%_)
            (let ((_%self268469%_ _%self268463%_))
              (if ((force __check-arguments269586)
                   _%self268469%_
                   _%ctx268464%_
                   _%stx268465%_
                   _%args268466%_)
                  (let* ((_%signature268479%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self268469%_
                             '2
                             '#f
                             '#f)))
                         (_%signature268481%_ _%signature268479%_)
                         (_%$e268491%_
                          (if _%signature268481%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature268481%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e268491%_
                        (if (let ()
                              (declare (not safe))
                              (gxc#symbol-in-local-scope? _%$e268491%_))
                            (let ((__tmp270556
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%$e268491%_ '()))
                                               (map (lambda (_%$%g268495268497%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%ctx268464%_
                                                         _%$%g268495268497%_)))
                                                    _%args268466%_)))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp270556
                               _%stx268465%_
                               _%ctx268464%_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _%ctx268464%_ _%stx268465%_)))
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx268464%_ _%stx268465%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx268464%_ _%stx268465%_))))))))
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
      (lambda (_%self268216%_ _%ctx268217%_ _%stx268218%_ _%args268219%_)
        (let* ((_%self268222%_ _%self268216%_)
               (_%$%signature268231268233%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self268222%_ '2 '#f '#f))))
          (if _%$%signature268231268233%_
              (let* ((_%signature268235%_ _%$%signature268231268233%_)
                     (_%$%argument-types268236268238%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature268235%_
                         '3
                         '#f
                         '#f))))
                (if _%$%argument-types268236268238%_
                    (let* ((_%argument-types268240%_
                            _%$%argument-types268236268238%_)
                           (_%argument-types268245%_
                            (let ((__tmp270557
                                   (lambda (_%t268243%_)
                                     (if _%t268243%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-type-expression
                                            _%stx268218%_
                                            _%t268243%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map-type-expressions
                               __tmp270557
                               _%argument-types268240%_))))
                      (let _%loop268247%_ ((_%rest-args268249%_ _%args268219%_)
                                           (_%rest-types268250%_
                                            _%argument-types268245%_)
                                           (_%result268251%_ '#t))
                        (let* ((_%$%rest-args268252268260%_
                                _%rest-args268249%_)
                               (_%$%else268254268268%_
                                (lambda () _%result268251%_))
                               (_%$%K268256268329%_
                                (lambda (_%rest-args268271%_ _%arg268272%_)
                                  (let* ((_%$%rest-types268273268284%_
                                          _%rest-types268250%_)
                                         (_%$%E268277268288%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%$%rest-types268273268284%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%$%K268280268317%_
                                           (lambda (_%rest-types268314%_
                                                    _%type268315%_)
                                             (_%loop268247%_
                                              _%rest-args268271%_
                                              _%rest-types268314%_
                                              (if (gxc#check-expression-type!
                                                   _%stx268218%_
                                                   _%arg268272%_
                                                   _%type268315%_)
                                                  _%result268251%_
                                                  '#f))))
                                          (_%$%K268279268308%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx268218%_
                                                _%argument-types268245%_))))
                                          (_%$%K268278268298%_
                                           (lambda (_%tail-type268292%_)
                                             (if (let ((__tmp270558
                                                        (lambda (_%$%g268293268295%_)
                                                          (gxc#check-expression-type!
                                                           _%stx268218%_
                                                           _%$%g268293268295%_
                                                           _%tail-type268292%_))))
                                                   (declare (not safe))
                                                   (andmap__0
                                                    __tmp270558
                                                    _%rest-args268271%_))
                                                 _%result268251%_
                                                 '#f))))
                                      (let ((_%$%try-match268275268311%_
                                             (lambda ()
                                               (if (null? _%$%rest-types268273268284%_)
                                                   (_%$%K268279268308%_)
                                                   (let ((_%tail-type268301%_
                                                          _%$%rest-types268273268284%_))
                                                     (_%$%K268278268298%_
                                                      _%tail-type268301%_))))))
                                        (if (pair? _%$%rest-types268273268284%_)
                                            (let ((_%$%tl268282268322%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%rest-types268273268284%_)))
                                                  (_%$%hd268281268320%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%rest-types268273268284%_))))
                                              (let ((_%type268325%_
                                                     _%$%hd268281268320%_)
                                                    (_%rest-types268327%_
                                                     _%$%tl268282268322%_))
                                                (_%$%K268280268317%_
                                                 _%rest-types268327%_
                                                 _%type268325%_)))
                                            (_%$%try-match268275268311%_))))))))
                          (if (pair? _%$%rest-args268252268260%_)
                              (let ((_%$%hd268257268332%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest-args268252268260%_)))
                                    (_%$%tl268258268334%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest-args268252268260%_))))
                                (let* ((_%arg268337%_ _%$%hd268257268332%_)
                                       (_%rest-args268339%_
                                        _%$%tl268258268334%_))
                                  (_%$%K268256268329%_
                                   _%rest-args268339%_
                                   _%arg268337%_)))
                              (_%$%else268254268268%_)))))
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
      (lambda (_%self268019%_ _%ctx268020%_ _%stx268021%_ _%args268022%_)
        (let* ((_%self268025%_ _%self268019%_)
               (_%$%g268035268045%_
                (lambda (_%$%g268036268042%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g268036268042%_))))
               (_%$%g268034268091%_
                (lambda (_%$%g268036268048%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g268036268048%_))
                      (let ((_%$%e268038268050%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g268036268048%_))))
                        (let ((_%$%hd268039268053%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e268038268050%_)))
                              (_%$%tl268040268055%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e268038268050%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl268040268055%_))
                              (let* ((_%klass268070%_
                                      (let ((__tmp270559
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self268025%_
                                                '1
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx268021%_
                                         __tmp270559)))
                                     (_%object268072%_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%ctx268020%_
                                         _%$%hd268039268053%_)))
                                     (_%instance?268077%_
                                      (let ((_%$e268074%_
                                             (gxc#expression-type?
                                              _%object268072%_
                                              _%klass268070%_)))
                                        (if _%$e268074%_
                                            _%$e268074%_
                                            (gxc#expression-type?
                                             _%$%hd268039268053%_
                                             _%klass268070%_))))
                                     (_%incompatible?268082%_
                                      (let ((_%$e268079%_
                                             (gxc#incompatible-type?
                                              _%object268072%_
                                              _%klass268070%_)))
                                        (if _%$e268079%_
                                            _%$e268079%_
                                            (gxc#incompatible-type?
                                             _%$%hd268039268053%_
                                             _%klass268070%_)))))
                                (if _%instance?268077%_
                                    (let ((__tmp270560
                                           (if (or (gxc#expression-no-side-effects?
                                                    _%object268072%_)
                                                   (gxc#expression-no-side-effects?
                                                    _%$%hd268039268053%_))
                                               (cons '%#quote (cons '#t '()))
                                               (cons '%#begin
                                                     (cons _%object268072%_
                                                           (cons '(%#quote #t)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp270560
                                       _%stx268021%_))
                                    (if _%incompatible?268082%_
                                        (let ((__tmp270561
                                               (cons '%#begin
                                                     (cons _%object268072%_
                                                           (cons '(%#quote #f)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp270561
                                           _%stx268021%_))
                                        (let ()
                                          (declare (not safe))
                                          (gxc#xform-call%
                                           _%ctx268020%_
                                           _%stx268021%_)))))
                              (_%$%g268035268045%_ _%$%g268036268048%_))))
                      (_%$%g268035268045%_ _%$%g268036268048%_)))))
          (_%$%g268034268091%_ _%args268022%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self267808%_ _%ctx267809%_ _%stx267810%_ _%args267811%_)
        (let* ((_%self267814%_ _%self267808%_)
               (_%$%g267824267834%_
                (lambda (_%$%g267825267831%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g267825267831%_))))
               (_%$%g267823267894%_
                (lambda (_%$%g267825267837%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g267825267837%_))
                      (let ((_%$%e267827267839%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g267825267837%_))))
                        (let ((_%$%hd267828267842%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e267827267839%_)))
                              (_%$%tl267829267844%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e267827267839%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl267829267844%_))
                              (let* ((_%klass267859%_
                                      (let ((__tmp270562
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self267814%_
                                                '1
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx267810%_
                                         __tmp270562)))
                                     (_%object267861%_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%ctx267809%_
                                         _%$%hd267828267842%_)))
                                     (_%instance?267866%_
                                      (let ((_%$e267863%_
                                             (gxc#expression-type?
                                              _%object267861%_
                                              _%klass267859%_)))
                                        (if _%$e267863%_
                                            _%$e267863%_
                                            (gxc#expression-type?
                                             _%$%hd267828267842%_
                                             _%klass267859%_))))
                                     (_%incompatible?267871%_
                                      (let ((_%$e267868%_
                                             (gxc#incompatible-type?
                                              _%object267861%_
                                              _%klass267859%_)))
                                        (if _%$e267868%_
                                            _%$e267868%_
                                            (gxc#incompatible-type?
                                             _%$%hd267828267842%_
                                             _%klass267859%_))))
                                     (_%klass267874%_ _%klass267859%_))
                                (if _%instance?267866%_
                                    (let ((__tmp270563
                                           (if (or (gxc#expression-no-side-effects?
                                                    _%object267861%_)
                                                   (gxc#expression-no-side-effects?
                                                    _%$%hd267828267842%_))
                                               (cons '%#quote (cons '#t '()))
                                               (cons '%#begin
                                                     (cons _%object267861%_
                                                           (cons '(%#quote #t)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp270563
                                       _%stx267810%_))
                                    (if _%incompatible?267871%_
                                        (let ((__tmp270564
                                               (cons '%#begin
                                                     (cons _%object267861%_
                                                           (cons '(%#quote #f)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp270564
                                           _%stx267810%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass267874%_
                                               '8
                                               '#f
                                               '#f))
                                            (let ((__tmp270565
                                                   (cons '%#struct-direct-instance?
                                                         (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass267874%_
                                      '1
                                      '#f
                                      '#f))
                                   '()))
                       (cons _%object267861%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp270565
                                               _%stx267810%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass267874%_
                                                   '7
                                                   '#f
                                                   '#f))
                                                (let ((__tmp270566
                                                       (cons '%#struct-instance?
                                                             (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass267874%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons _%object267861%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp270566
                                                   _%stx267810%_))
                                                (let ((__tmp270567
                                                       (cons '%#call
                                                             (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons 'class-instance? '()))
                           (cons (cons '%#ref
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self267814%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons _%object267861%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp270567
                                                   _%stx267810%_)))))))
                              (_%$%g267824267834%_ _%$%g267825267837%_))))
                      (_%$%g267824267834%_ _%$%g267825267837%_)))))
          (_%$%g267823267894%_ _%args267811%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx267476%_)
        (let* ((_%__stx269922269923%_ _%stx267476%_)
               (_%$%g267481267522%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx269922269923%_)))))
          (let ((_%__kont269924269925%_ (lambda () '#t))
                (_%__kont269926269927%_ (lambda () '#t))
                (_%__kont269928269929%_
                 (lambda (_%$%g267495267588%_ _%$%g267496267589%_)
                   (let ((_%$%rator-type267610267612%_
                          (let ((__tmp270568
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol
                                    _%$%g267496267589%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp270568))))
                     (if _%$%rator-type267610267612%_
                         (let* ((_%rator-type267614%_
                                 _%$%rator-type267610267612%_)
                                (_%$%rator-signature267615267617%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type267614%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type267614%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%$%rator-signature267615267617%_
                               (let* ((_%rator-signature267619%_
                                       _%$%rator-signature267615267617%_)
                                      (_%$%rator-effect267620267622%_
                                       (if _%rator-signature267619%_
                                           (##direct-structure-ref
                                            _%rator-signature267619%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%$%rator-effect267620267622%_
                                     (let ((_%rator-effect267624%_
                                            _%$%rator-effect267620267622%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect267624%_)
                                               (equal? '(alloc)
                                                       _%rator-effect267624%_))
                                           (let ((__tmp270569
                                                  (let ((__tmp270570
                                                         (lambda (_%$%g267629267632%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g267630267634%_)
                   (cons _%$%g267629267632%_ _%$%g267630267634%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp270570
                                                     '()
                                                     _%$%g267495267588%_))))
                                             (declare (not safe))
                                             (andmap__0
                                              gxc#expression-no-side-effects?
                                              __tmp270569))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont269932269933%_ (lambda () '#f)))
            (let ((_%__match270011270012%_
                   (lambda (_%$%e267497267534%_
                            _%$%hd267498267537%_
                            _%$%tl267499267539%_
                            _%$%e267500267542%_
                            _%$%hd267501267545%_
                            _%$%tl267502267547%_
                            _%$%e267503267550%_
                            _%$%hd267504267553%_
                            _%$%tl267505267555%_
                            _%$%e267506267558%_
                            _%$%hd267507267561%_
                            _%$%tl267508267563%_
                            _%__splice269930269931%_
                            _%$%target267509267566%_
                            _%$%tl267511267568%_)
                     (letrec ((_%$%loop267512267571%_
                               (lambda (_%$%hd267510267574%_
                                        _%$%rand267516267576%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd267510267574%_))
                                     (let ((_%$%e267513267578%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd267510267574%_))))
                                       (let ((_%$%lp-tl267515267583%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e267513267578%_)))
                                             (_%$%lp-hd267514267581%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e267513267578%_))))
                                         (_%$%loop267512267571%_
                                          _%$%lp-tl267515267583%_
                                          (cons _%$%lp-hd267514267581%_
                                                _%$%rand267516267576%_))))
                                     (let ((_%$%rand267517267586%_
                                            (reverse _%$%rand267516267576%_)))
                                       (_%__kont269928269929%_
                                        _%$%rand267517267586%_
                                        _%$%hd267507267561%_))))))
                       (_%$%loop267512267571%_
                        _%$%target267509267566%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx269922269923%_))
                  (let ((_%$%e267483267665%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx269922269923%_))))
                    (let ((_%$%tl267485267670%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e267483267665%_)))
                          (_%$%hd267484267668%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e267483267665%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%$%hd267484267668%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%$%hd267484267668%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl267485267670%_))
                                  (let ((_%$%e267486267673%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl267485267670%_))))
                                    (let ((_%$%tl267488267678%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e267486267673%_)))
                                          (_%$%hd267487267676%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e267486267673%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl267488267678%_))
                                          (_%__kont269924269925%_)
                                          (_%__kont269932269933%_))))
                                  (_%__kont269932269933%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%$%hd267484267668%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl267485267670%_))
                                      (let ((_%$%e267492267650%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl267485267670%_))))
                                        (let ((_%$%tl267494267655%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e267492267650%_)))
                                              (_%$%hd267493267653%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e267492267650%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl267494267655%_))
                                              (_%__kont269926269927%_)
                                              (_%__kont269932269933%_))))
                                      (_%__kont269932269933%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%$%hd267484267668%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl267485267670%_))
                                          (let ((_%$%e267500267542%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl267485267670%_))))
                                            (let ((_%$%tl267502267547%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e267500267542%_)))
                                                  (_%$%hd267501267545%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e267500267542%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd267501267545%_))
                                                  (let ((_%$%e267503267550%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd267501267545%_))))
                                                    (let ((_%$%tl267505267555%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e267503267550%_)))
                                                          (_%$%hd267504267553%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e267503267550%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd267504267553%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%$%hd267504267553%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl267505267555%_))
                          (let ((_%$%e267506267558%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl267505267555%_))))
                            (let ((_%$%tl267508267563%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e267506267558%_)))
                                  (_%$%hd267507267561%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e267506267558%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl267508267563%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl267502267547%_))
                                      (let ((_%__splice269930269931%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%tl267502267547%_
                                                '0))))
                                        (let ((_%$%tl267511267568%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice269930269931%_
                                                  '1)))
                                              (_%$%target267509267566%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice269930269931%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl267511267568%_))
                                              (_%__match270011270012%_
                                               _%$%e267483267665%_
                                               _%$%hd267484267668%_
                                               _%$%tl267485267670%_
                                               _%$%e267500267542%_
                                               _%$%hd267501267545%_
                                               _%$%tl267502267547%_
                                               _%$%e267503267550%_
                                               _%$%hd267504267553%_
                                               _%$%tl267505267555%_
                                               _%$%e267506267558%_
                                               _%$%hd267507267561%_
                                               _%$%tl267508267563%_
                                               _%__splice269930269931%_
                                               _%$%target267509267566%_
                                               _%$%tl267511267568%_)
                                              (_%__kont269932269933%_))))
                                      (_%__kont269932269933%_))
                                  (_%__kont269932269933%_))))
                          (_%__kont269932269933%_))
                      (_%__kont269932269933%_))
                  (_%__kont269932269933%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont269932269933%_))))
                                          (_%__kont269932269933%_))
                                      (_%__kont269932269933%_))))
                          (_%__kont269932269933%_))))
                  (_%__kont269932269933%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx267471%_ _%klass267472%_)
        (let ((_%expr-type267474%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx267471%_))))
          (if _%expr-type267474%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type267474%_ _%klass267472%_))
              '#f))))
    (define gxc#incompatible-type?
      (lambda (_%expr267451%_ _%type267452%_)
        (if _%type267452%_
            (if (eq? (##structure-ref _%type267452%_ '1 gxc#!type::t '#f) 't)
                '#f
                (if (eq? (##structure-ref _%type267452%_ '1 gxc#!type::t '#f)
                         'false)
                    '#f
                    (let ((_%expr-type267458%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr267451%_))))
                      (if _%expr-type267458%_
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type267458%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              '#f
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%expr-type267458%_
                                     'gxc#!abort::t))
                                  '#f
                                  (if (let ()
                                        (declare (not safe))
                                        (gxc#!type-subtype?
                                         _%expr-type267458%_
                                         _%type267452%_))
                                      '#f
                                      (if (or (let ()
                                                (declare (not safe))
                                                (##structure-instance-of?
                                                 _%expr-type267458%_
                                                 'gxc#!nullable-type::t))
                                              (let ()
                                                (declare (not safe))
                                                (##structure-instance-of?
                                                 _%type267452%_
                                                 'gxc#!nullable-type::t)))
                                          '#f
                                          (if (let ()
                                                (declare (not safe))
                                                (gxc#!interface-instance?
                                                 _%type267452%_))
                                              '#f
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gxc#!type-subtype?
                                                     _%type267452%_
                                                     _%expr-type267458%_))
                                                  '#f
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#!type-disjoint?
                                                     _%expr-type267458%_
                                                     _%type267452%_))))))))
                          '#f))))
            '#f)))
    (define gxc#check-expression-type!
      (lambda (_%stx267424%_ _%expr267425%_ _%type267426%_)
        (if _%type267426%_
            (let ((_%$e267429%_
                   (eq? (##structure-ref _%type267426%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e267429%_
                  _%$e267429%_
                  (let ((_%expr-type267433%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr267425%_))))
                    (if _%expr-type267433%_
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type267433%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e267437%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type267433%_
                                      'gxc#!abort::t))))
                              (if _%$e267437%_
                                  _%$e267437%_
                                  (let ((_%$e267440%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type267433%_
                                            _%type267426%_))))
                                    (if _%$e267440%_
                                        _%$e267440%_
                                        (if (or (let ()
                                                  (declare (not safe))
                                                  (##structure-instance-of?
                                                   _%expr-type267433%_
                                                   'gxc#!nullable-type::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-instance-of?
                                                   _%type267426%_
                                                   'gxc#!nullable-type::t)))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!interface-instance?
                                                   _%type267426%_))
                                                '#f
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gxc#!type-subtype?
                                                       _%type267426%_
                                                       _%expr-type267433%_))
                                                    '#f
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gxc#!type-disjoint?
                                                           _%expr-type267433%_
                                                           _%type267426%_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#raise-compile-error
                                                           '"signature type mismatch"
                                                           _%stx267424%_
                                                           _%expr267425%_
                                                           _%expr-type267433%_
                                                           _%type267426%_))
                                                        '#f)))))))))
                        '#f))))
            '#f)))
    (define gxc#!constructor::optimize-call
      (lambda (_%self267238%_ _%ctx267239%_ _%stx267240%_ _%args267241%_)
        (let* ((_%self267244%_ _%self267238%_)
               (_%klass267254%_
                (let ((__tmp270571
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self267244%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx267240%_ __tmp270571)))
               (_%fields267256%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass267254%_
                           '5
                           '#f
                           '#f))))
               (_%args267262%_
                (map (lambda (_%$%g267257267259%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx267239%_ _%$%g267257267259%_)))
                     _%args267241%_))
               (_%inline-make-object267264%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self267244%_
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
                           _%self267244%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields267256%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass267267%_ _%klass267254%_)
               (_%$e267281%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass267267%_ '6 '#f '#f))))
          (if _%$e267281%_
              (let ((_%$obj267286%_
                     (let ((__tmp270572
                            (let () (declare (not safe)) (##gensym '__obj))))
                       (declare (not safe))
                       (make-symbol__0 __tmp270572)))
                    (_%ctor-impl267287%_
                     (let ()
                       (declare (not safe))
                       (gxc#!class-lookup-method
                        _%klass267267%_
                        _%$e267281%_))))
                (let ((__tmp270573
                       (cons '%#let-values
                             (cons (cons (cons (cons _%$obj267286%_ '())
                                               (cons _%inline-make-object267264%_
                                                     '()))
                                         '())
                                   (cons (cons '%#begin
                                               (cons (if _%ctor-impl267287%_
                                                         (let ((__tmp270574
                                                                (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref
                                          (cons _%ctor-impl267287%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj267286%_ '()))
                                          _%args267262%_)))))
                   (declare (not safe))
                   (gxc#xform-wrap-apply
                    __tmp270574
                    _%stx267240%_
                    _%ctx267239%_))
                 (let ((_%$ctor267289%_
                        (let ((__tmp270575
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__constructor))))
                          (declare (not safe))
                          (make-symbol__0 __tmp270575))))
                   (cons '%#let-values
                         (cons (cons (cons (cons _%$ctor267289%_ '())
                                           (cons (cons '%#call
                                                       (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'direct-method-ref '()))
                     (cons (cons '%#ref
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self267244%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#ref (cons _%$obj267286%_ '()))
                                 (cons (cons '%#quote (cons _%$e267281%_ '()))
                                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons (cons '%#if
                                           (cons (cons '%#ref
                                                       (cons _%$ctor267289%_
                                                             '()))
                                                 (cons (cons '%#call
                                                             (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%$ctor267289%_ '()))
                           (cons (cons '%#ref (cons _%$obj267286%_ '()))
                                 _%args267262%_)))
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
                         (##unchecked-structure-ref _%self267244%_ '1 '#f '#f))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons '%#quote
                                                               (cons 'method:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote (cons _%$e267281%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$obj267286%_ '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp270573 _%stx267240%_)))
              (let ((_%$e267291%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass267267%_
                        '10
                        '#f
                        '#f))))
                (if _%$e267291%_
                    (let* ((_%$obj267296%_
                            (let ((__tmp270576
                                   (let ()
                                     (declare (not safe))
                                     (##gensym '__obj))))
                              (declare (not safe))
                              (make-symbol__0 __tmp270576)))
                           (_%metakons267298%_
                            (let ((__tmp270577
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx267240%_
                                      _%$e267291%_))))
                              (declare (not safe))
                              (gxc#!class-lookup-method
                               __tmp270577
                               'instance-init!)))
                           (__tmp270578
                            (cons '%#let-values
                                  (cons (cons (cons (cons _%$obj267296%_ '())
                                                    (cons _%inline-make-object267264%_
                                                          '()))
                                              '())
                                        (cons (cons '%#begin
                                                    (cons (if _%metakons267298%_
                                                              (let ((__tmp270579
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons _%metakons267298%_ '()))
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self267244%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$obj267296%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%args267262%_))))))
                        (declare (not safe))
                        (gxc#xform-wrap-apply
                         __tmp270579
                         _%stx267240%_
                         _%ctx267239%_))
                      (cons '%#call
                            (cons (cons '%#ref (cons 'call-method '()))
                                  (cons (cons '%#ref
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self267244%_
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '()))
                                        (cons (cons '%#quote
                                                    (cons 'instance-init! '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj267296%_
                                                                '()))
                                                    _%args267262%_))))))
                  (cons (cons '%#ref (cons _%$obj267296%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp270578 _%stx267240%_))
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass267267%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp270580
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args267262%_))))
                              (declare (not safe))
                              (##fx= __tmp270580 _%fields267256%_))
                            (let ((__tmp270581
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self267244%_
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
                                              _%self267244%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args267262%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp270581
                               _%stx267240%_))
                            (let ((__tmp270583
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self267244%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp270582
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass267267%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx267240%_
                               __tmp270583
                               __tmp270582)))
                        (let ((_%$obj267303%_
                               (let ((__tmp270584
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp270584))))
                          (let _%lp267305%_ ((_%rest267307%_ _%args267262%_)
                                             (_%initializers267308%_ '()))
                            (let* ((_%__stx270014270015%_ _%rest267307%_)
                                   (_%$%g267312267333%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx270014270015%_)))))
                              (let ((_%__kont270016270017%_
                                     (lambda (_%$%g267314267387%_
                                              _%$%g267315267388%_
                                              _%$%g267316267389%_)
                                       (let* ((_%slot267416%_
                                               (let ((__tmp270585
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%g267316267389%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp270585)))
                                              (_%off267418%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass267267%_
                                                  _%slot267416%_))))
                                         (if _%off267418%_
                                             (_%lp267305%_
                                              _%$%g267314267387%_
                                              (cons (cons _%off267418%_
                                                          _%$%g267315267388%_)
                                                    _%initializers267308%_))
                                             (let ((__tmp270586
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self267244%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx267240%_
                                                __tmp270586
                                                _%slot267416%_))))))
                                    (_%__kont270018270019%_
                                     (lambda ()
                                       (let ((__tmp270587
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj267303%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object267264%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp270589
                                     (let ((__tmp270590
                                            (lambda (_%i267347%_ _%r267348%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self267244%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i267347%_) '()))
                              (cons (cons '%#ref (cons _%$obj267303%_ '()))
                                    (cons (cdr _%i267347%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r267348%_))))
                                       (declare (not safe))
                                       (foldl__0
                                        __tmp270590
                                        '()
                                        _%initializers267308%_)))
                                    (__tmp270588
                                     (cons (cons '%#ref
                                                 (cons _%$obj267303%_ '()))
                                           '())))
                                (declare (not safe))
                                (##append __tmp270589 __tmp270588)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp270587
                                          _%stx267240%_))))
                                    (_%__kont270020270021%_
                                     (lambda ()
                                       (let ((__tmp270591
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj267303%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object267264%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj267303%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args267262%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj267303%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp270591
                                          _%stx267240%_)))))
                                (let* ((_%$%g267310267350%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx270014270015%_))
                                              (_%__kont270018270019%_)
                                              (_%__kont270020270021%_))))
                                       (_%__match270051270052%_
                                        (lambda (_%$%e267317267355%_
                                                 _%$%hd267318267358%_
                                                 _%$%tl267319267360%_
                                                 _%$%e267320267363%_
                                                 _%$%hd267321267366%_
                                                 _%$%tl267322267368%_
                                                 _%$%e267323267371%_
                                                 _%$%hd267324267374%_
                                                 _%$%tl267325267376%_
                                                 _%$%e267326267379%_
                                                 _%$%hd267327267382%_
                                                 _%$%tl267328267384%_)
                                          (let ((_%$%g267314267387%_
                                                 _%$%tl267328267384%_)
                                                (_%$%g267315267388%_
                                                 _%$%hd267327267382%_)
                                                (_%$%g267316267389%_
                                                 _%$%hd267324267374%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%$%g267316267389%_))
                                                (_%__kont270016270017%_
                                                 _%$%g267314267387%_
                                                 _%$%g267315267388%_
                                                 _%$%g267316267389%_)
                                                (_%__kont270020270021%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx270014270015%_))
                                      (let ((_%$%e267317267355%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx270014270015%_))))
                                        (let ((_%$%tl267319267360%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e267317267355%_)))
                                              (_%$%hd267318267358%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e267317267355%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%hd267318267358%_))
                                              (let ((_%$%e267320267363%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd267318267358%_))))
                                                (let ((_%$%tl267322267368%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e267320267363%_)))
                                                      (_%$%hd267321267366%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e267320267363%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%$%hd267321267366%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%$%hd267321267366%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl267322267368%_))
                      (let ((_%$%e267323267371%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl267322267368%_))))
                        (let ((_%$%tl267325267376%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e267323267371%_)))
                              (_%$%hd267324267374%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e267323267371%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl267325267376%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl267319267360%_))
                                  (let ((_%$%e267326267379%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl267319267360%_))))
                                    (let ((_%$%tl267328267384%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e267326267379%_)))
                                          (_%$%hd267327267382%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e267326267379%_))))
                                      (_%__match270051270052%_
                                       _%$%e267317267355%_
                                       _%$%hd267318267358%_
                                       _%$%tl267319267360%_
                                       _%$%e267320267363%_
                                       _%$%hd267321267366%_
                                       _%$%tl267322267368%_
                                       _%$%e267323267371%_
                                       _%$%hd267324267374%_
                                       _%$%tl267325267376%_
                                       _%$%e267326267379%_
                                       _%$%hd267327267382%_
                                       _%$%tl267328267384%_)))
                                  (_%__kont270020270021%_))
                              (_%__kont270020270021%_))))
                      (_%__kont270020270021%_))
                  (_%__kont270020270021%_))
              (_%__kont270020270021%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont270020270021%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g267310267350%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::check-arguments
      (lambda (_%self267100%_ _%ctx267101%_ _%stx267102%_ _%args267103%_)
        (let ((_%self267106%_ _%self267100%_))
          (if (let ()
                (declare (not safe))
                (##unchecked-structure-ref _%self267106%_ '4 '#f '#f))
              (gxc#!procedure::check-arguments
               _%self267106%_
               _%ctx267101%_
               _%stx267102%_
               _%args267103%_)
              '#t))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!accessor::t
       'check-arguments
       gxc#!accessor::check-arguments
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self266883%_ _%ctx266884%_ _%stx266885%_ _%args266886%_)
        (let* ((_%self266889%_ _%self266883%_)
               (_%arguments-ok?266899%_
                (let ((__method270513
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self266889%_ 'check-arguments))))
                  (if __method270513
                      (let ()
                        (declare (not safe))
                        (__method270513
                         _%self266889%_
                         _%ctx266884%_
                         _%stx266885%_
                         _%args266886%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self266889%_
                                 'check-arguments))
                        '#!void))))
               (_%$%g266901266911%_
                (lambda (_%$%g266902266908%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g266902266908%_))))
               (_%$%g266900266975%_
                (lambda (_%$%g266902266914%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g266902266914%_))
                      (let ((_%$%e266904266916%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g266902266914%_))))
                        (let ((_%$%hd266905266919%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e266904266916%_)))
                              (_%$%tl266906266921%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e266904266916%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl266906266921%_))
                              (let* ((_%klass266937%_
                                      (let ((__tmp270592
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self266889%_
                                                '1
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx266885%_
                                         __tmp270592)))
                                     (_%field266939%_
                                      (let ((__tmp270593
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self266889%_
                                                '3
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#!class-slot->field-offset
                                         _%klass266937%_
                                         __tmp270593)))
                                     (_%object266941%_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%ctx266884%_
                                         _%$%hd266905266919%_)))
                                     (_%klass266944%_ _%klass266937%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass266944%_
                                       '8
                                       '#f
                                       '#f))
                                    (let ((__tmp270594
                                           (cons (if (or _%arguments-ok?266899%_
                                                         (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%self266889%_
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
                              _%self266889%_
                              '1
                              '#f
                              '#f))
                           '()))
               (cons (cons '%#quote (cons _%field266939%_ '()))
                     (cons _%object266941%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp270594
                                       _%stx266885%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass266944%_
                                           '7
                                           '#f
                                           '#f))
                                        (let ((__tmp270595
                                               (cons (if (or _%arguments-ok?266899%_
                                                             (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self266889%_
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
                                  _%self266889%_
                                  '1
                                  '#f
                                  '#f))
                               '()))
                   (cons (cons '%#quote (cons _%field266939%_ '()))
                         (cons _%object266941%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp270595
                                           _%stx266885%_))
                                        (let ((_%$e266963%_
                                               (let ((__tmp270596
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self266889%_
                                                         '3
                                                         '#f
                                                         '#f))))
                                                 (declare (not safe))
                                                 (gxc#!class-slot-find-struct
                                                  _%klass266944%_
                                                  __tmp270596))))
                                          (if _%$e266963%_
                                              (let ((__tmp270597
                                                     (cons (if (or _%arguments-ok?266899%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (not (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self266889%_
                                   '4
                                   '#f
                                   '#f))))
                       '%#struct-unchecked-ref
                       '%#struct-ref)
                   (cons (cons '%#ref
                               (cons (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self266889%_
                                        '1
                                        '#f
                                        '#f))
                                     '()))
                         (cons (cons '%#quote (cons _%field266939%_ '()))
                               (cons _%object266941%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp270597
                                                 _%stx266885%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self266889%_
                                                     '4
                                                     '#f
                                                     '#f))
                                                  (let ((__tmp270598
                                                         (let ((_%$obj266972%_
                                                                (let ((__tmp270599
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp270599))))
                   (cons '%#let-values
                         (cons (cons (cons (cons _%$obj266972%_ '())
                                           (cons _%object266941%_ '()))
                                     '())
                               (cons (cons '%#if
                                           (cons (cons '%#struct-direct-instance?
                                                       (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass266944%_
                                    '1
                                    '#f
                                    '#f))
                                 '()))
                     (cons (cons '%#ref (cons _%$obj266972%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons '%#struct-unchecked-ref
                                                             (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self266889%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#quote (cons _%field266939%_ '()))
                                 (cons (cons '%#ref (cons _%$obj266972%_ '()))
                                       '()))))
               (cons (if _%arguments-ok?266899%_
                         (cons '%#call
                               (cons (cons '%#ref
                                           (cons 'unchecked-slot-ref '()))
                                     (cons (cons '%#ref
                                                 (cons _%$obj266972%_ '()))
                                           (cons (cons '%#quote
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self266889%_ '3 '#f '#f))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'class-slot-ref '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self266889%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#ref
                                                       (cons _%$obj266972%_
                                                             '()))
                                                 (cons (cons '%#quote
                                                             (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%self266889%_
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
                                                     __tmp270598
                                                     _%stx266885%_))
                                                  (let ((__tmp270600
                                                         (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'unchecked-slot-ref '()))
                             (cons _%object266941%_
                                   (cons (cons '%#quote
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self266889%_
                                                        '3
                                                        '#f
                                                        '#f))
                                                     '()))
                                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp270600
                                                     _%stx266885%_))))))))
                              (_%$%g266901266911%_ _%$%g266902266914%_))))
                      (_%$%g266901266911%_ _%$%g266902266914%_)))))
          (_%$%g266900266975%_ _%args266886%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass269588 __method-table269589)
        (let ((__check-arguments269590
               (let ((__tmp270601
                      (lambda ()
                        (let ((__method269591
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table269589
                                  'check-arguments
                                  '#f))))
                          (if __method269591
                              __method269591
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp270601)))
              (__slot269592
               (let ((__slot269593
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass269588 'slot))))
                 (if __slot269593
                     __slot269593
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self266883%_ _%ctx266884%_ _%stx266885%_ _%args266886%_)
            (let* ((_%self266889%_ _%self266883%_)
                   (_%arguments-ok?266899%_
                    ((force __check-arguments269590)
                     _%self266889%_
                     _%ctx266884%_
                     _%stx266885%_
                     _%args266886%_))
                   (_%$%g266901266911%_
                    (lambda (_%$%g266902266908%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g266902266908%_))))
                   (_%$%g266900266975%_
                    (lambda (_%$%g266902266914%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%g266902266914%_))
                          (let ((_%$%e266904266916%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%g266902266914%_))))
                            (let ((_%$%hd266905266919%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e266904266916%_)))
                                  (_%$%tl266906266921%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e266904266916%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl266906266921%_))
                                  (let* ((_%klass266937%_
                                          (let ((__tmp270602
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self266889%_
                                                    '1
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             _%stx266885%_
                                             __tmp270602)))
                                         (_%field266939%_
                                          (let ((__tmp270603
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self266889%_
                                                    '3
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (gxc#!class-slot->field-offset
                                             _%klass266937%_
                                             __tmp270603)))
                                         (_%object266941%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%ctx266884%_
                                             _%$%hd266905266919%_)))
                                         (_%klass266944%_ _%klass266937%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass266944%_
                                           '8
                                           '#f
                                           '#f))
                                        (let ((__tmp270604
                                               (cons (if (or _%arguments-ok?266899%_
                                                             (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self266889%_
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
                                  _%self266889%_
                                  '1
                                  '#f
                                  '#f))
                               '()))
                   (cons (cons '%#quote (cons _%field266939%_ '()))
                         (cons _%object266941%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp270604
                                           _%stx266885%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass266944%_
                                               '7
                                               '#f
                                               '#f))
                                            (let ((__tmp270605
                                                   (cons (if (or _%arguments-ok?266899%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self266889%_
                                 '4
                                 '#f
                                 '#f))))
                     '%#struct-unchecked-ref
                     '%#struct-ref)
                 (cons (cons '%#ref
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self266889%_
                                      '1
                                      '#f
                                      '#f))
                                   '()))
                       (cons (cons '%#quote (cons _%field266939%_ '()))
                             (cons _%object266941%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp270605
                                               _%stx266885%_))
                                            (let ((_%$e266963%_
                                                   (let ((__tmp270606
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%self266889%_
                                                             '3
                                                             '#f
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#!class-slot-find-struct
                                                      _%klass266944%_
                                                      __tmp270606))))
                                              (if _%$e266963%_
                                                  (let ((__tmp270607
                                                         (cons (if (or _%arguments-ok?266899%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (not (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self266889%_
                                       '4
                                       '#f
                                       '#f))))
                           '%#struct-unchecked-ref
                           '%#struct-ref)
                       (cons (cons '%#ref
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self266889%_
                                            '1
                                            '#f
                                            '#f))
                                         '()))
                             (cons (cons '%#quote (cons _%field266939%_ '()))
                                   (cons _%object266941%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp270607
                                                     _%stx266885%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self266889%_
                                                         '4
                                                         '#f
                                                         '#f))
                                                      (let ((__tmp270608
                                                             (let ((_%$obj266972%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp270609
                                   (let ()
                                     (declare (not safe))
                                     (##gensym '__obj))))
                              (declare (not safe))
                              (make-symbol__0 __tmp270609))))
                       (cons '%#let-values
                             (cons (cons (cons (cons _%$obj266972%_ '())
                                               (cons _%object266941%_ '()))
                                         '())
                                   (cons (cons '%#if
                                               (cons (cons '%#struct-direct-instance?
                                                           (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%klass266944%_
                                        '1
                                        '#f
                                        '#f))
                                     '()))
                         (cons (cons '%#ref (cons _%$obj266972%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#struct-unchecked-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self266889%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field266939%_ '()))
                                     (cons (cons '%#ref
                                                 (cons _%$obj266972%_ '()))
                                           '()))))
                   (cons (if _%arguments-ok?266899%_
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons 'unchecked-slot-ref '()))
                                         (cons (cons '%#ref
                                                     (cons _%$obj266972%_ '()))
                                               (cons (cons '%#quote
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self266889%_
                            __slot269592
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
                                                              _%self266889%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$obj266972%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%self266889%_
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
                (gxc#xform-wrap-source __tmp270608 _%stx266885%_))
              (let ((__tmp270610
                     (cons '%#call
                           (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                 (cons _%object266941%_
                                       (cons (cons '%#quote
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self266889%_
                                                            '3
                                                            '#f
                                                            '#f))
                                                         '()))
                                             '()))))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp270610 _%stx266885%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%$%g266901266911%_ _%$%g266902266914%_))))
                          (_%$%g266901266911%_ _%$%g266902266914%_)))))
              (_%$%g266900266975%_ _%args266886%_))))))
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
      (lambda (_%self266647%_ _%ctx266648%_ _%stx266649%_ _%args266650%_)
        (let* ((_%self266653%_ _%self266647%_)
               (_%arguments-ok?266663%_
                (let ((__method270514
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self266653%_ 'check-arguments))))
                  (if __method270514
                      (let ()
                        (declare (not safe))
                        (__method270514
                         _%self266653%_
                         _%ctx266648%_
                         _%stx266649%_
                         _%args266650%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self266653%_
                                 'check-arguments))
                        '#!void))))
               (_%$%g266665266679%_
                (lambda (_%$%g266666266676%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g266666266676%_))))
               (_%$%g266664266758%_
                (lambda (_%$%g266666266682%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g266666266682%_))
                      (let ((_%$%e266669266684%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g266666266682%_))))
                        (let ((_%$%hd266670266687%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e266669266684%_)))
                              (_%$%tl266671266689%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e266669266684%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl266671266689%_))
                              (let ((_%$%e266672266692%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl266671266689%_))))
                                (let ((_%$%hd266673266695%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e266672266692%_)))
                                      (_%$%tl266674266697%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e266672266692%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl266674266697%_))
                                      (let* ((_%klass266717%_
                                              (let ((__tmp270611
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self266653%_
                                                        '1
                                                        '#f
                                                        '#f))))
                                                (declare (not safe))
                                                (gxc#optimizer-resolve-class
                                                 _%stx266649%_
                                                 __tmp270611)))
                                             (_%field266719%_
                                              (let ((__tmp270612
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self266653%_
                                                        '3
                                                        '#f
                                                        '#f))))
                                                (declare (not safe))
                                                (gxc#!class-slot->field-offset
                                                 _%klass266717%_
                                                 __tmp270612)))
                                             (_%object266721%_
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%ctx266648%_
                                                 _%$%hd266670266687%_)))
                                             (_%value266723%_
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%ctx266648%_
                                                 _%$%hd266673266695%_)))
                                             (_%klass266726%_ _%klass266717%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass266726%_
                                               '8
                                               '#f
                                               '#f))
                                            (let ((__tmp270613
                                                   (cons (if (or _%arguments-ok?266663%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self266653%_
                                 '4
                                 '#f
                                 '#f))))
                     '%#struct-unchecked-set!
                     '%#struct-direct-set!)
                 (cons (cons '%#ref
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self266653%_
                                      '1
                                      '#f
                                      '#f))
                                   '()))
                       (cons (cons '%#quote (cons _%field266719%_ '()))
                             (cons _%object266721%_
                                   (cons _%value266723%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp270613
                                               _%stx266649%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass266726%_
                                                   '7
                                                   '#f
                                                   '#f))
                                                (let ((__tmp270614
                                                       (cons (if (or _%arguments-ok?266663%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (not (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self266653%_
                                     '4
                                     '#f
                                     '#f))))
                         '%#struct-unchecked-set!
                         '%#struct-set!)
                     (cons (cons '%#ref
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self266653%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#quote (cons _%field266719%_ '()))
                                 (cons _%object266721%_
                                       (cons _%value266723%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp270614
                                                   _%stx266649%_))
                                                (let ((_%$e266746%_
                                                       (let ((__tmp270615
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%self266653%_
                         '3
                         '#f
                         '#f))))
                 (declare (not safe))
                 (gxc#!class-slot-find-struct _%klass266726%_ __tmp270615))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if _%$e266746%_
                                                      (let ((__tmp270616
                                                             (cons (if (or _%arguments-ok?266663%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (not (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self266653%_
                                           '3
                                           '#f
                                           '#f))))
                               '%#struct-unchecked-set!
                               '%#struct-set!)
                           (cons (cons '%#ref
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self266653%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons (cons '%#quote
                                             (cons _%field266719%_ '()))
                                       (cons _%object266721%_
                                             (cons _%value266723%_ '())))))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp270616 _%stx266649%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%self266653%_ '4 '#f '#f))
                  (let ((__tmp270617
                         (let ((_%$obj266755%_
                                (let ((__tmp270618
                                       (let ()
                                         (declare (not safe))
                                         (##gensym '__obj))))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp270618))))
                           (cons '%#let-values
                                 (cons (cons (cons (cons _%$obj266755%_ '())
                                                   (cons _%object266721%_ '()))
                                             '())
                                       (cons (cons '%#if
                                                   (cons (cons '%#struct-direct-instance?
                                                               (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%klass266726%_
                                            '1
                                            '#f
                                            '#f))
                                         '()))
                             (cons (cons '%#ref (cons _%$obj266755%_ '()))
                                   '())))
                 (cons (cons '%#struct-unchecked-set!
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self266653%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field266719%_ '()))
                                         (cons (cons '%#ref
                                                     (cons _%$obj266755%_ '()))
                                               (cons _%value266723%_ '())))))
                       (cons (if _%arguments-ok?266663%_
                                 (cons '%#call
                                       (cons (cons '%#ref
                                                   (cons 'unchecked-slot-set!
                                                         '()))
                                             (cons (cons '%#ref
                                                         (cons _%$obj266755%_
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self266653%_
                                '3
                                '#f
                                '#f))
                             '()))
                 (cons _%value266723%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (cons '%#call
                                       (cons (cons '%#ref
                                                   (cons 'class-slot-set! '()))
                                             (cons (cons '%#ref
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref _%self266653%_ '1 '#f '#f))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons '%#ref
                                                               (cons _%$obj266755%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self266653%_
                                      '3
                                      '#f
                                      '#f))
                                   '()))
                       (cons _%value266723%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp270617 _%stx266649%_))
                  (let ((__tmp270619
                         (cons '%#call
                               (cons (cons '%#ref
                                           (cons 'unchecked-slot-set! '()))
                                     (cons _%object266721%_
                                           (cons (cons '%#quote
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self266653%_ '3 '#f '#f))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%value266723%_
                                                       '())))))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp270619 _%stx266649%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g266665266679%_
                                       _%$%g266666266682%_))))
                              (_%$%g266665266679%_ _%$%g266666266682%_))))
                      (_%$%g266665266679%_ _%$%g266666266682%_)))))
          (_%$%g266664266758%_ _%args266650%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass269594 __method-table269595)
        (let ((__check-arguments269596
               (let ((__tmp270620
                      (lambda ()
                        (let ((__method269597
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table269595
                                  'check-arguments
                                  '#f))))
                          (if __method269597
                              __method269597
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp270620))))
          (lambda (_%self266647%_ _%ctx266648%_ _%stx266649%_ _%args266650%_)
            (let* ((_%self266653%_ _%self266647%_)
                   (_%arguments-ok?266663%_
                    ((force __check-arguments269596)
                     _%self266653%_
                     _%ctx266648%_
                     _%stx266649%_
                     _%args266650%_))
                   (_%$%g266665266679%_
                    (lambda (_%$%g266666266676%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g266666266676%_))))
                   (_%$%g266664266758%_
                    (lambda (_%$%g266666266682%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%g266666266682%_))
                          (let ((_%$%e266669266684%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%g266666266682%_))))
                            (let ((_%$%hd266670266687%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e266669266684%_)))
                                  (_%$%tl266671266689%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e266669266684%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl266671266689%_))
                                  (let ((_%$%e266672266692%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl266671266689%_))))
                                    (let ((_%$%hd266673266695%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e266672266692%_)))
                                          (_%$%tl266674266697%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e266672266692%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl266674266697%_))
                                          (let* ((_%klass266717%_
                                                  (let ((__tmp270621
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self266653%_
                                                            '1
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#optimizer-resolve-class
                                                     _%stx266649%_
                                                     __tmp270621)))
                                                 (_%field266719%_
                                                  (let ((__tmp270622
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self266653%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot->field-offset
                                                     _%klass266717%_
                                                     __tmp270622)))
                                                 (_%object266721%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%ctx266648%_
                                                     _%$%hd266670266687%_)))
                                                 (_%value266723%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%ctx266648%_
                                                     _%$%hd266673266695%_)))
                                                 (_%klass266726%_
                                                  _%klass266717%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass266726%_
                                                   '8
                                                   '#f
                                                   '#f))
                                                (let ((__tmp270623
                                                       (cons (if (or _%arguments-ok?266663%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (not (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self266653%_
                                     '4
                                     '#f
                                     '#f))))
                         '%#struct-unchecked-set!
                         '%#struct-direct-set!)
                     (cons (cons '%#ref
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self266653%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#quote (cons _%field266719%_ '()))
                                 (cons _%object266721%_
                                       (cons _%value266723%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp270623
                                                   _%stx266649%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%klass266726%_
                                                       '7
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp270624
                                                           (cons (if (or _%arguments-ok?266663%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self266653%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-set!
                             '%#struct-set!)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self266653%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field266719%_ '()))
                                     (cons _%object266721%_
                                           (cons _%value266723%_ '())))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp270624 _%stx266649%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$e266746%_
                                                           (let ((__tmp270625
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self266653%_
                             '3
                             '#f
                             '#f))))
                     (declare (not safe))
                     (gxc#!class-slot-find-struct
                      _%klass266726%_
                      __tmp270625))))
              (if _%$e266746%_
                  (let ((__tmp270626
                         (cons (if (or _%arguments-ok?266663%_
                                       (not (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self266653%_
                                               '3
                                               '#f
                                               '#f))))
                                   '%#struct-unchecked-set!
                                   '%#struct-set!)
                               (cons (cons '%#ref
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self266653%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 '()))
                                     (cons (cons '%#quote
                                                 (cons _%field266719%_ '()))
                                           (cons _%object266721%_
                                                 (cons _%value266723%_
                                                       '())))))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp270626 _%stx266649%_))
                  (if (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self266653%_ '4 '#f '#f))
                      (let ((__tmp270627
                             (let ((_%$obj266755%_
                                    (let ((__tmp270628
                                           (let ()
                                             (declare (not safe))
                                             (##gensym '__obj))))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp270628))))
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj266755%_
                                                             '())
                                                       (cons _%object266721%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#if
                                                       (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons '%#quote
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%klass266726%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons (cons '%#ref (cons _%$obj266755%_ '()))
                                       '())))
                     (cons (cons '%#struct-unchecked-set!
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self266653%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field266719%_ '()))
                                             (cons (cons '%#ref
                                                         (cons _%$obj266755%_
                                                               '()))
                                                   (cons _%value266723%_
                                                         '())))))
                           (cons (if _%arguments-ok?266663%_
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'unchecked-slot-set!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj266755%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons '%#quote
                           (cons (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self266653%_
                                    '3
                                    '#f
                                    '#f))
                                 '()))
                     (cons _%value266723%_ '())))))
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
                              _%self266653%_
                              '1
                              '#f
                              '#f))
                           '()))
               (cons (cons '%#ref (cons _%$obj266755%_ '()))
                     (cons (cons '%#quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self266653%_
                                          '3
                                          '#f
                                          '#f))
                                       '()))
                           (cons _%value266723%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp270627 _%stx266649%_))
                      (let ((__tmp270629
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons 'unchecked-slot-set! '()))
                                         (cons _%object266721%_
                                               (cons (cons '%#quote
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self266653%_
                            '3
                            '#f
                            '#f))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%value266723%_
                                                           '())))))))
                        (declare (not safe))
                        (gxc#xform-wrap-source
                         __tmp270629
                         _%stx266649%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g266665266679%_
                                           _%$%g266666266682%_))))
                                  (_%$%g266665266679%_ _%$%g266666266682%_))))
                          (_%$%g266665266679%_ _%$%g266666266682%_)))))
              (_%$%g266664266758%_ _%args266650%_))))))
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
      (lambda (_%self266463%_ _%ctx266464%_ _%stx266465%_ _%args266466%_)
        (let* ((_%self266469%_ _%self266463%_)
               (_%$%self266478266488%_ _%self266469%_)
               (_%$%E266480266491%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%self266478266488%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%$%K266481266501%_
                (lambda (_%inline266494%_ _%dispatch266495%_ _%arity266496%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self266469%_
                         _%args266466%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx266465%_
                         _%arity266496%_)))
                  (if _%inline266494%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp270630 (_%inline266494%_ _%stx266465%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp270630
                           _%stx266465%_
                           _%ctx266464%_)))
                      (if (and _%dispatch266495%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch266495%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch266495%_))
                            (let ((__tmp270631
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch266495%_
                                                           '()))
                                               _%args266466%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp270631
                               _%stx266465%_
                               _%ctx266464%_)))
                          (gxc#!procedure::optimize-call
                           _%self266469%_
                           _%ctx266464%_
                           _%stx266465%_
                           _%args266466%_)))))
               (_%$%e266482266504%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self266478266488%_
                   '1
                   '#f
                   '#f)))
               (_%$%e266483266507%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self266478266488%_
                   '2
                   '#f
                   '#f)))
               (_%$%e266484266510%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self266478266488%_
                   '3
                   '#f
                   '#f)))
               (_%arity266513%_ _%$%e266484266510%_)
               (_%$%e266485266515%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self266478266488%_
                   '4
                   '#f
                   '#f)))
               (_%dispatch266518%_ _%$%e266485266515%_)
               (_%$%e266486266520%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self266478266488%_
                   '5
                   '#f
                   '#f)))
               (_%inline266523%_ _%$%e266486266520%_))
          (_%$%K266481266501%_
           _%inline266523%_
           _%dispatch266518%_
           _%arity266513%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self266315%_ _%ctx266316%_ _%stx266317%_ _%args266318%_)
        (let* ((_%self266321%_ _%self266315%_)
               (_%$e266335%_
                (let ((__tmp270633
                       (lambda (_%$%g266330266332%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%$%g266330266332%_
                            _%args266318%_))))
                      (__tmp270632
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self266321%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp270633 __tmp270632))))
          (if _%$e266335%_
              (let ((__method270515
                     (let ()
                       (declare (not safe))
                       (__method-ref _%$e266335%_ 'optimize-call))))
                (if __method270515
                    (let ()
                      (declare (not safe))
                      (__method270515
                       _%$e266335%_
                       _%ctx266316%_
                       _%stx266317%_
                       _%args266318%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method" _%$e266335%_ 'optimize-call))
                      '#!void)))
              (let ((__tmp270634
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self266321%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx266317%_
                 __tmp270634))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self266056%_ _%ctx266057%_ _%stx266058%_ _%args266059%_)
        (let* ((_%self266062%_ _%self266056%_)
               (_%$%self266071266080%_ _%self266062%_)
               (_%$%E266073266083%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%self266071266080%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%$%K266074266174%_
                (lambda (_%dispatch266086%_ _%table266087%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch266086%_))
                      (let* ((_%$%g266088266098%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch266086%_)))
                             (_%$%else266090266106%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch266086%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx266057%_
                                   _%stx266058%_))))
                             (_%$%K266092266155%_
                              (lambda (_%main266109%_ _%keys266110%_)
                                (let ((_g270635_
                                       (gxc#!kw-lambda-split-args
                                        _%stx266058%_
                                        _%args266059%_)))
                                  (begin
                                    (let ((_g270636_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g270635_)
                                                 (##values-length _g270635_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g270636_ 2)))
                                          (error "Context expects 2 values"
                                                 _g270636_)))
                                    (let ((_%pargs266112%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g270635_ 0)))
                                          (_%kwargs266113%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g270635_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main266109%_))
                                        (if _%table266087%_
                                            (let ((_%xargs266121%_
                                                   (map (lambda (_%key266115%_)
                                                          (let ((_%$e266117%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key266115%_ _%kwargs266113%_))))
                    (if _%$e266117%_ _%$e266117%_ '(%#ref absent-value))))
                _%keys266110%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw266123%_)
                                                 (if (memq (car _%kw266123%_)
                                                           _%keys266110%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx266058%_
                                                        _%keys266110%_
                                                        _%kw266123%_))))
                                               _%kwargs266113%_)
                                              (let ((__tmp270637
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main266109%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (append _%xargs266121%_ _%pargs266112%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp270637
                                                 _%stx266058%_
                                                 _%ctx266057%_)))
                                            (let* ((_%kwt266125%_
                                                    (let ((__tmp270638
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp270638)))
                                                   (_%kwvars266129%_
                                                    (map (lambda (_%_266127%_)
                                                           (let ((__tmp270639
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp270639)))
                 _%kwargs266113%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind266134%_
                                                    (map (lambda (_%kw266131%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar266132%_)
                   (cons (cons _%kwvar266132%_ '())
                         (cons (cdr _%kw266131%_) '())))
                 _%kwargs266113%_
                 _%kwvars266129%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset266139%_
                                                    (map (lambda (_%kw266136%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar266137%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt266125%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw266136%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar266137%_
                                                             '()))
                                                 '()))))))
                 _%kwargs266113%_
                 _%kwvars266129%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs266144%_
                                                    (map (lambda (_%kw266141%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar266142%_)
                   (cons (car _%kw266141%_)
                         (cons '%#ref (cons _%kwvar266142%_ '()))))
                 _%kwargs266113%_
                 _%kwvars266129%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs266152%_
                                                    (map (lambda (_%key266146%_)
                                                           (let ((_%$e266148%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key266146%_ _%xkwargs266144%_))))
                     (if _%$e266148%_ _%$e266148%_ '(%#ref absent-value))))
                 _%keys266110%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp270640
                                                    (cons '%#let-values
                                                          (cons _%kwbind266134%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt266125%_ '())
                                                      (cons (let ((__tmp270641
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs266113%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp270641 _%stx266058%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp270642
                                                             (cons (let ((__tmp270643
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main266109%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt266125%_
                                                                '()))
                                                    (append _%xargs266152%_
                                                            _%pargs266112%_))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp270643 _%stx266058%_))
                           '())))
                (declare (not safe))
                (##append _%kwset266139%_ __tmp270642)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp270640
                                               _%stx266058%_
                                               _%ctx266057%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%$%g266088266098%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%$%e266093266158%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%g266088266098%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%$%e266094266161%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%g266088266098%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%$%e266095266164%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%g266088266098%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys266167%_ _%$%e266095266164%_)
                                   (_%$%e266096266169%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%g266088266098%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main266172%_ _%$%e266096266169%_))
                              (_%$%K266092266155%_
                               _%main266172%_
                               _%keys266167%_))
                            (_%$%else266090266106%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx266057%_ _%stx266058%_)))))
               (_%$%e266075266177%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self266071266080%_
                   '1
                   '#f
                   '#f)))
               (_%$%e266076266180%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self266071266080%_
                   '2
                   '#f
                   '#f)))
               (_%$%e266077266183%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self266071266080%_
                   '3
                   '#f
                   '#f)))
               (_%table266186%_ _%$%e266077266183%_)
               (_%$%e266078266188%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self266071266080%_
                   '4
                   '#f
                   '#f)))
               (_%dispatch266191%_ _%$%e266078266188%_))
          (_%$%K266074266174%_ _%dispatch266191%_ _%table266186%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx265669%_ _%args265670%_)
        (let _%lp265672%_ ((_%rest265674%_ _%args265670%_)
                           (_%pargs265675%_ '())
                           (_%kwargs265676%_ '()))
          (let* ((_%__stx270056270057%_ _%rest265674%_)
                 (_%$%g265682265734%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx270056270057%_)))))
            (let ((_%__kont270058270059%_
                   (lambda (_%$%g265684265913%_ _%$%g265685265914%_)
                     (_%lp265672%_
                      _%$%g265684265913%_
                      (cons _%$%g265685265914%_ _%pargs265675%_)
                      _%kwargs265676%_)))
                  (_%__kont270060270061%_
                   (lambda (_%$%g265699265859%_)
                     (values (let ()
                               (declare (not safe))
                               (foldl__0
                                cons
                                _%$%g265699265859%_
                                _%pargs265675%_))
                             (reverse _%kwargs265676%_))))
                  (_%__kont270062270063%_
                   (lambda (_%$%g265710265806%_
                            _%$%g265711265807%_
                            _%$%g265712265808%_)
                     (let ((_%kw265825%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%g265712265808%_))))
                       (if (assq _%kw265825%_ _%kwargs265676%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx265669%_
                              _%kw265825%_))
                           (_%lp265672%_
                            _%$%g265710265806%_
                            _%pargs265675%_
                            (cons (cons _%kw265825%_ _%$%g265711265807%_)
                                  _%kwargs265676%_))))))
                  (_%__kont270064270065%_
                   (lambda (_%$%g265725265754%_ _%$%g265726265755%_)
                     (_%lp265672%_
                      _%$%g265725265754%_
                      (cons _%$%g265726265755%_ _%pargs265675%_)
                      _%kwargs265676%_)))
                  (_%__kont270066270067%_
                   (lambda ()
                     (values (reverse _%pargs265675%_)
                             (reverse _%kwargs265676%_)))))
              (let ((_%__match270163270164%_
                     (lambda (_%$%e265713265774%_
                              _%$%hd265714265777%_
                              _%$%tl265715265779%_
                              _%$%e265716265782%_
                              _%$%hd265717265785%_
                              _%$%tl265718265787%_
                              _%$%e265719265790%_
                              _%$%hd265720265793%_
                              _%$%tl265721265795%_
                              _%$%e265722265798%_
                              _%$%hd265723265801%_
                              _%$%tl265724265803%_)
                       (let ((_%$%g265710265806%_ _%$%tl265724265803%_)
                             (_%$%g265711265807%_ _%$%hd265723265801%_)
                             (_%$%g265712265808%_ _%$%hd265720265793%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%$%g265712265808%_))
                             (_%__kont270062270063%_
                              _%$%g265710265806%_
                              _%$%g265711265807%_
                              _%$%g265712265808%_)
                             (_%__kont270064270065%_
                              _%$%tl265715265779%_
                              _%$%hd265714265777%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx270056270057%_))
                    (let ((_%$%e265686265878%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx270056270057%_))))
                      (let ((_%$%tl265688265883%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e265686265878%_)))
                            (_%$%hd265687265881%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e265686265878%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%hd265687265881%_))
                            (let ((_%$%e265689265886%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd265687265881%_))))
                              (let ((_%$%tl265691265891%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e265689265886%_)))
                                    (_%$%hd265690265889%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e265689265886%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd265690265889%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%$%hd265690265889%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl265691265891%_))
                                            (let ((_%$%e265692265894%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl265691265891%_))))
                                              (let ((_%$%tl265694265899%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e265692265894%_)))
                                                    (_%$%hd265693265897%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e265692265894%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%$%hd265693265897%_))
                                                    (let ((_%$%e265695265902%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd265693265897%_))))
                                                      (if (equal? _%$%e265695265902%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl265694265899%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl265688265883%_))
                          (let ((_%$%e265696265905%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl265688265883%_))))
                            (let ((_%$%tl265698265910%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e265696265905%_)))
                                  (_%$%hd265697265908%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e265696265905%_))))
                              (_%__kont270058270059%_
                               _%$%tl265698265910%_
                               _%$%hd265697265908%_)))
                          (_%__kont270064270065%_
                           _%$%tl265688265883%_
                           _%$%hd265687265881%_))
                      (_%__kont270064270065%_
                       _%$%tl265688265883%_
                       _%$%hd265687265881%_))
                  (if (equal? _%$%e265695265902%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl265694265899%_))
                          (_%__kont270060270061%_ _%$%tl265688265883%_)
                          (_%__kont270064270065%_
                           _%$%tl265688265883%_
                           _%$%hd265687265881%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl265694265899%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl265688265883%_))
                              (let ((_%$%e265722265798%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl265688265883%_))))
                                (let ((_%$%tl265724265803%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e265722265798%_)))
                                      (_%$%hd265723265801%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e265722265798%_))))
                                  (_%__match270163270164%_
                                   _%$%e265686265878%_
                                   _%$%hd265687265881%_
                                   _%$%tl265688265883%_
                                   _%$%e265689265886%_
                                   _%$%hd265690265889%_
                                   _%$%tl265691265891%_
                                   _%$%e265692265894%_
                                   _%$%hd265693265897%_
                                   _%$%tl265694265899%_
                                   _%$%e265722265798%_
                                   _%$%hd265723265801%_
                                   _%$%tl265724265803%_)))
                              (_%__kont270064270065%_
                               _%$%tl265688265883%_
                               _%$%hd265687265881%_))
                          (_%__kont270064270065%_
                           _%$%tl265688265883%_
                           _%$%hd265687265881%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl265694265899%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl265688265883%_))
                                                            (let ((_%$%e265722265798%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl265688265883%_))))
                      (let ((_%$%tl265724265803%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e265722265798%_)))
                            (_%$%hd265723265801%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e265722265798%_))))
                        (_%__match270163270164%_
                         _%$%e265686265878%_
                         _%$%hd265687265881%_
                         _%$%tl265688265883%_
                         _%$%e265689265886%_
                         _%$%hd265690265889%_
                         _%$%tl265691265891%_
                         _%$%e265692265894%_
                         _%$%hd265693265897%_
                         _%$%tl265694265899%_
                         _%$%e265722265798%_
                         _%$%hd265723265801%_
                         _%$%tl265724265803%_)))
                    (_%__kont270064270065%_
                     _%$%tl265688265883%_
                     _%$%hd265687265881%_))
                (_%__kont270064270065%_
                 _%$%tl265688265883%_
                 _%$%hd265687265881%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont270064270065%_
                                             _%$%tl265688265883%_
                                             _%$%hd265687265881%_))
                                        (_%__kont270064270065%_
                                         _%$%tl265688265883%_
                                         _%$%hd265687265881%_))
                                    (_%__kont270064270065%_
                                     _%$%tl265688265883%_
                                     _%$%hd265687265881%_))))
                            (_%__kont270064270065%_
                             _%$%tl265688265883%_
                             _%$%hd265687265881%_))))
                    (_%__kont270066270067%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self265653%_ _%ctx265654%_ _%stx265655%_ _%args265656%_)
        (let ((_%self265659%_ _%self265653%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx265654%_ _%stx265655%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self265253%_ _%stx265254%_)
        (let* ((_%__stx270172270173%_ _%stx265254%_)
               (_%$%g265258265315%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx270172270173%_)))))
          (let ((_%__kont270174270175%_
                 (lambda (_%$%g265260265500%_ _%$%g265261265501%_)
                   (let ((_%type265519%_
                          (let ((__tmp270644
                                 (let ()
                                   (declare (not safe))
                                   (gxc#type-expression->datum
                                    _%$%g265261265501%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type-expression
                             _%stx265254%_
                             __tmp270644)))
                         (_%expr-type265520%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type
                             _%$%g265260265500%_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _%type265519%_
                            'gxc#!nullable-type::t))
                         (if (and _%expr-type265520%_
                                  (let ((__tmp270645
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx265254%_
                                            'false::t))))
                                    (declare (not safe))
                                    (gxc#!type-subtype?
                                     __tmp270645
                                     _%expr-type265520%_)))
                             '#!void
                             (gxc#check-expression-type!
                              _%stx265254%_
                              _%$%g265260265500%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%type265519%_
                                 '2
                                 '#f
                                 '#f))))
                         (let ((_%$e265523%_
                                (let ((__tmp270646
                                       (##structure-ref
                                        _%type265519%_
                                        '1
                                        gxc#!type::t
                                        '#f)))
                                  (declare (not safe))
                                  (##memq __tmp270646 '(t void)))))
                           (if _%$e265523%_
                               _%$e265523%_
                               (if (and _%expr-type265520%_
                                        (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%expr-type265520%_
                                           'gxc#!nullable-type::t)))
                                   (gxc#check-return-type!
                                    _%stx265254%_
                                    _%$%g265260265500%_
                                    _%type265519%_)
                                   '#!void))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1
                        _%self265253%_
                        _%$%g265260265500%_)))))
                (_%__kont270176270177%_
                 (lambda (_%$%g265277265419%_ _%$%g265278265420%_)
                   (let ((_%$e265447%_
                          (member 'return:
                                  (let ((__tmp270647
                                         (lambda (_%$%g265439265442%_
                                                  _%$%g265440265444%_)
                                           (cons _%$%g265439265442%_
                                                 _%$%g265440265444%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp270647
                                     '()
                                     _%$%g265278265420%_))
                                  gx#stx-eq?)))
                     (if _%$e265447%_
                         (let ((_%type265452%_
                                (let ((__tmp270648
                                       (let ((__tmp270649 (cadr _%$e265447%_)))
                                         (declare (not safe))
                                         (gxc#type-expression->datum
                                          __tmp270649))))
                                  (declare (not safe))
                                  (gxc#optimizer-resolve-type-expression
                                   _%stx265254%_
                                   __tmp270648))))
                           (gxc#check-return-type!
                            _%stx265254%_
                            _%$%g265277265419%_
                            _%type265452%_)
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self265253%_
                              _%$%g265277265419%_)))
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1
                            _%self265253%_
                            _%$%g265277265419%_))))))
                (_%__kont270180270181%_
                 (lambda (_%$%g265300265344%_ _%$%g265301265345%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self265253%_ _%$%g265300265344%_)))))
            (let ((_%__match270249270250%_
                   (lambda (_%$%e265279265365%_
                            _%$%hd265280265368%_
                            _%$%tl265281265370%_
                            _%$%e265282265373%_
                            _%$%hd265283265376%_
                            _%$%tl265284265378%_
                            _%$%e265285265381%_
                            _%$%hd265286265384%_
                            _%$%tl265287265386%_
                            _%__splice270178270179%_
                            _%$%target265288265389%_
                            _%$%tl265290265391%_)
                     (letrec ((_%$%loop265291265394%_
                               (lambda (_%$%hd265289265397%_
                                        _%$%signature265295265399%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd265289265397%_))
                                     (let ((_%$%e265292265401%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd265289265397%_))))
                                       (let ((_%$%lp-tl265294265406%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e265292265401%_)))
                                             (_%$%lp-hd265293265404%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e265292265401%_))))
                                         (_%$%loop265291265394%_
                                          _%$%lp-tl265294265406%_
                                          (cons _%$%lp-hd265293265404%_
                                                _%$%signature265295265399%_))))
                                     (let ((_%$%signature265296265409%_
                                            (reverse _%$%signature265295265399%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl265284265378%_))
                                           (let ((_%$%e265297265411%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl265284265378%_))))
                                             (let ((_%$%tl265299265416%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e265297265411%_)))
                                                   (_%$%hd265298265414%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e265297265411%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl265299265416%_))
                                                   (_%__kont270176270177%_
                                                    _%$%hd265298265414%_
                                                    _%$%signature265296265409%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g265258265315%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g265258265315%_))))))))
                       (_%$%loop265291265394%_
                        _%$%target265288265389%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx270172270173%_))
                  (let ((_%$%e265262265460%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx270172270173%_))))
                    (let ((_%$%tl265264265465%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e265262265460%_)))
                          (_%$%hd265263265463%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e265262265460%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl265264265465%_))
                          (let ((_%$%e265265265468%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl265264265465%_))))
                            (let ((_%$%tl265267265473%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e265265265468%_)))
                                  (_%$%hd265266265471%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e265265265468%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd265266265471%_))
                                  (let ((_%$%e265268265476%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd265266265471%_))))
                                    (let ((_%$%tl265270265481%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e265268265476%_)))
                                          (_%$%hd265269265479%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e265268265476%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd265269265479%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.return
                                                 _%$%hd265269265479%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl265270265481%_))
                                                  (let ((_%$%e265271265484%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl265270265481%_))))
                                                    (let ((_%$%tl265273265489%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e265271265484%_)))
                                                          (_%$%hd265272265487%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e265271265484%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl265273265489%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl265267265473%_))
                      (let ((_%$%e265274265492%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl265267265473%_))))
                        (let ((_%$%tl265276265497%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e265274265492%_)))
                              (_%$%hd265275265495%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e265274265492%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl265276265497%_))
                              (_%__kont270174270175%_
                               _%$%hd265275265495%_
                               _%$%hd265272265487%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g265258265315%_)))))
                      (let () (declare (not safe)) (_%$%g265258265315%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl265267265473%_))
                      (let ((_%$%e265308265336%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl265267265473%_))))
                        (let ((_%$%tl265310265341%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e265308265336%_)))
                              (_%$%hd265309265339%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e265308265336%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl265310265341%_))
                              (_%__kont270180270181%_
                               _%$%hd265309265339%_
                               _%$%hd265266265471%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g265258265315%_)))))
                      (let () (declare (not safe)) (_%$%g265258265315%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl265267265473%_))
                                                      (let ((_%$%e265308265336%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl265267265473%_))))
                (let ((_%$%tl265310265341%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e265308265336%_)))
                      (_%$%hd265309265339%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e265308265336%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl265310265341%_))
                      (_%__kont270180270181%_
                       _%$%hd265309265339%_
                       _%$%hd265266265471%_)
                      (let () (declare (not safe)) (_%$%g265258265315%_)))))
              (let () (declare (not safe)) (_%$%g265258265315%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '@type.signature
                                                     _%$%hd265269265479%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl265270265481%_))
                                                      (let ((_%__splice270178270179%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl265270265481%_
                        '0))))
                (let ((_%$%tl265290265391%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice270178270179%_ '1)))
                      (_%$%target265288265389%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice270178270179%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl265290265391%_))
                      (_%__match270249270250%_
                       _%$%e265262265460%_
                       _%$%hd265263265463%_
                       _%$%tl265264265465%_
                       _%$%e265265265468%_
                       _%$%hd265266265471%_
                       _%$%tl265267265473%_
                       _%$%e265268265476%_
                       _%$%hd265269265479%_
                       _%$%tl265270265481%_
                       _%__splice270178270179%_
                       _%$%target265288265389%_
                       _%$%tl265290265391%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl265267265473%_))
                          (let ((_%$%e265308265336%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl265267265473%_))))
                            (let ((_%$%tl265310265341%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e265308265336%_)))
                                  (_%$%hd265309265339%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e265308265336%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl265310265341%_))
                                  (_%__kont270180270181%_
                                   _%$%hd265309265339%_
                                   _%$%hd265266265471%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g265258265315%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g265258265315%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%$%tl265267265473%_))
                  (let ((_%$%e265308265336%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl265267265473%_))))
                    (let ((_%$%tl265310265341%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e265308265336%_)))
                          (_%$%hd265309265339%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e265308265336%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl265310265341%_))
                          (_%__kont270180270181%_
                           _%$%hd265309265339%_
                           _%$%hd265266265471%_)
                          (let ()
                            (declare (not safe))
                            (_%$%g265258265315%_)))))
                  (let () (declare (not safe)) (_%$%g265258265315%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl265267265473%_))
                                                      (let ((_%$%e265308265336%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl265267265473%_))))
                (let ((_%$%tl265310265341%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e265308265336%_)))
                      (_%$%hd265309265339%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e265308265336%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl265310265341%_))
                      (_%__kont270180270181%_
                       _%$%hd265309265339%_
                       _%$%hd265266265471%_)
                      (let () (declare (not safe)) (_%$%g265258265315%_)))))
              (let () (declare (not safe)) (_%$%g265258265315%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl265267265473%_))
                                              (let ((_%$%e265308265336%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl265267265473%_))))
                                                (let ((_%$%tl265310265341%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e265308265336%_)))
                                                      (_%$%hd265309265339%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e265308265336%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl265310265341%_))
                                                      (_%__kont270180270181%_
                                                       _%$%hd265309265339%_
                                                       _%$%hd265266265471%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g265258265315%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g265258265315%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl265267265473%_))
                                      (let ((_%$%e265308265336%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl265267265473%_))))
                                        (let ((_%$%tl265310265341%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e265308265336%_)))
                                              (_%$%hd265309265339%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e265308265336%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl265310265341%_))
                                              (_%__kont270180270181%_
                                               _%$%hd265309265339%_
                                               _%$%hd265266265471%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g265258265315%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g265258265315%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g265258265315%_)))))
                  (let () (declare (not safe)) (_%$%g265258265315%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx265228%_ _%expr265229%_ _%type265230%_)
        (let ((_%$e265232%_ (not _%type265230%_)))
          (if _%$e265232%_
              _%$e265232%_
              (let ((_%$e265235%_
                     (eq? (##structure-ref _%type265230%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e265235%_
                    _%$e265235%_
                    (let ((_%$e265238%_
                           (eq? (##structure-ref
                                 _%type265230%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e265238%_
                          _%$e265238%_
                          (let ((_%expr-type265242%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr265229%_))))
                            (if _%expr-type265242%_
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type265242%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx265228%_
                                       _%type265230%_
                                       _%expr-type265242%_))
                                    (let ((_%$e265246%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type265242%_
                                              'gxc#!abort::t))))
                                      (if _%$e265246%_
                                          _%$e265246%_
                                          (let ((_%$e265249%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type265242%_
                                                    _%type265230%_))))
                                            (if _%$e265249%_
                                                _%$e265249%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx265228%_
                                                   _%type265230%_
                                                   _%expr-type265242%_)))))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx265228%_
                                   _%type265230%_))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self264835%_ _%stx264836%_)
        (gxc#check-contract-violation!
         _%stx264836%_
         (let* ((_%__stx270298270299%_ _%stx264836%_)
                (_%$%g264840264913%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gx#raise-syntax-error
                      '#f
                      '"Bad syntax; invalid match target"
                      _%__stx270298270299%_)))))
           (let ((_%__kont270300270301%_
                  (lambda (_%$%g264842265202%_
                           _%$%g264843265203%_
                           _%$%g264844265204%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-e _%$%g264844265204%_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self264835%_
                           _%$%g264843265203%_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self264835%_
                           _%$%g264842265202%_)))))
                 (_%__kont270302270303%_
                  (lambda (_%$%g264863265118%_
                           _%$%g264864265119%_
                           _%$%g264865265120%_
                           _%$%g264866265121%_)
                    (gxc#optimize-if%
                     _%self264835%_
                     (let ((__tmp270650
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f '%#if))
                                  (cons _%$%g264865265120%_
                                        (cons _%$%g264863265118%_
                                              (cons _%$%g264864265119%_
                                                    '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp270650 _%stx264836%_)))))
                 (_%__kont270304270305%_
                  (lambda (_%$%g264894264950%_
                           _%$%g264895264951%_
                           _%$%g264896264952%_)
                    (let ((_g270651_
                           (let ()
                             (declare (not safe))
                             (gxc#expression-path-types _%$%g264896264952%_))))
                      (begin
                        (let ((_g270652_
                               (let ()
                                 (declare (not safe))
                                 (if (##values? _g270651_)
                                     (##values-length _g270651_)
                                     1))))
                          (if (not (let ()
                                     (declare (not safe))
                                     (##fx= _g270652_ 2)))
                              (error "Context expects 2 values" _g270652_)))
                        (let ((_%true-path264970%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g270651_ 0)))
                              (_%false-path264971%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g270651_ 1))))
                          (let ((_%test264977%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self264835%_
                                    _%$%g264896264952%_)))
                                (_%K264978%_
                                 (let ((__tmp270653
                                        (lambda ()
                                          (let ((__tmp270654
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self264835%_
                                                      _%$%g264895264951%_)))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp270654
                                             gxc#current-compile-path-type
                                             _%true-path264970%_)))))
                                   (declare (not safe))
                                   (__make-promise __tmp270653)))
                                (_%E264979%_
                                 (let ((__tmp270655
                                        (lambda ()
                                          (let ((__tmp270656
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self264835%_
                                                      _%$%g264894264950%_)))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp270656
                                             gxc#current-compile-path-type
                                             _%false-path264971%_)))))
                                   (declare (not safe))
                                   (__make-promise __tmp270655))))
                            (let* ((_%__stx270272270273%_ _%test264977%_)
                                   (_%$%g264982264995%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx270272270273%_)))))
                              (let ((_%__kont270274270275%_
                                     (lambda (_%$%g264984265023%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%g264984265023%_))
                                           (force _%K264978%_)
                                           (force _%E264979%_))))
                                    (_%__kont270276270277%_
                                     (lambda ()
                                       (let ((__tmp270657
                                              (cons '%#if
                                                    (cons _%test264977%_
                                                          (cons (force _%K264978%_)
                                                                (cons (force _%E264979%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp270657
                                          _%stx264836%_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx270272270273%_))
                                    (let ((_%$%e264985265007%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx270272270273%_))))
                                      (let ((_%$%tl264987265012%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e264985265007%_)))
                                            (_%$%hd264986265010%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e264985265007%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%$%hd264986265010%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%$%hd264986265010%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl264987265012%_))
                                                    (let ((_%$%e264988265015%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl264987265012%_))))
                                                      (let ((_%$%tl264990265020%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e264988265015%_)))
                    (_%$%hd264989265018%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e264988265015%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl264990265020%_))
                    (_%__kont270274270275%_ _%$%hd264989265018%_)
                    (_%__kont270276270277%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont270276270277%_))
                                                (_%__kont270276270277%_))
                                            (_%__kont270276270277%_))))
                                    (_%__kont270276270277%_)))))))))))
             (let ((_%__match270417270418%_
                    (lambda (_%$%e264867265046%_
                             _%$%hd264868265049%_
                             _%$%tl264869265051%_
                             _%$%e264870265054%_
                             _%$%hd264871265057%_
                             _%$%tl264872265059%_
                             _%$%e264873265062%_
                             _%$%hd264874265065%_
                             _%$%tl264875265067%_
                             _%$%e264876265070%_
                             _%$%hd264877265073%_
                             _%$%tl264878265075%_
                             _%$%e264879265078%_
                             _%$%hd264880265081%_
                             _%$%tl264881265083%_
                             _%$%e264882265086%_
                             _%$%hd264883265089%_
                             _%$%tl264884265091%_
                             _%$%e264885265094%_
                             _%$%hd264886265097%_
                             _%$%tl264887265099%_
                             _%$%e264888265102%_
                             _%$%hd264889265105%_
                             _%$%tl264890265107%_
                             _%$%e264891265110%_
                             _%$%hd264892265113%_
                             _%$%tl264893265115%_)
                      (let ((_%$%g264863265118%_ _%$%hd264892265113%_)
                            (_%$%g264864265119%_ _%$%hd264889265105%_)
                            (_%$%g264865265120%_ _%$%hd264886265097%_)
                            (_%$%g264866265121%_ _%$%hd264883265089%_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _%$%g264866265121%_
                               'not))
                            (_%__kont270302270303%_
                             _%$%g264863265118%_
                             _%$%g264864265119%_
                             _%$%g264865265120%_
                             _%$%g264866265121%_)
                            (_%__kont270304270305%_
                             _%$%hd264892265113%_
                             _%$%hd264889265105%_
                             _%$%hd264871265057%_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? _%__stx270298270299%_))
                   (let ((_%$%e264845265154%_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%__stx270298270299%_))))
                     (let ((_%$%tl264847265159%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e264845265154%_)))
                           (_%$%hd264846265157%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e264845265154%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl264847265159%_))
                           (let ((_%$%e264848265162%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl264847265159%_))))
                             (let ((_%$%tl264850265167%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e264848265162%_)))
                                   (_%$%hd264849265165%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e264848265162%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd264849265165%_))
                                   (let ((_%$%e264851265170%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%hd264849265165%_))))
                                     (let ((_%$%tl264853265175%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e264851265170%_)))
                                           (_%$%hd264852265173%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e264851265170%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%$%hd264852265173%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#quote
                                                  _%$%hd264852265173%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl264853265175%_))
                                                   (let ((_%$%e264854265178%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl264853265175%_))))
                                                     (let ((_%$%tl264856265183%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e264854265178%_)))
                                                           (_%$%hd264855265181%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e264854265178%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl264856265183%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl264850265167%_))
                       (let ((_%$%e264857265186%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl264850265167%_))))
                         (let ((_%$%tl264859265191%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e264857265186%_)))
                               (_%$%hd264858265189%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e264857265186%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl264859265191%_))
                               (let ((_%$%e264860265194%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl264859265191%_))))
                                 (let ((_%$%tl264862265199%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e264860265194%_)))
                                       (_%$%hd264861265197%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e264860265194%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl264862265199%_))
                                       (_%__kont270300270301%_
                                        _%$%hd264861265197%_
                                        _%$%hd264858265189%_
                                        _%$%hd264855265181%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g264840264913%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%$%g264840264913%_)))))
                       (let () (declare (not safe)) (_%$%g264840264913%_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl264850265167%_))
                       (let ((_%$%e264903264934%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl264850265167%_))))
                         (let ((_%$%tl264905264939%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e264903264934%_)))
                               (_%$%hd264904264937%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e264903264934%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl264905264939%_))
                               (let ((_%$%e264906264942%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl264905264939%_))))
                                 (let ((_%$%tl264908264947%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e264906264942%_)))
                                       (_%$%hd264907264945%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e264906264942%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl264908264947%_))
                                       (_%__kont270304270305%_
                                        _%$%hd264907264945%_
                                        _%$%hd264904264937%_
                                        _%$%hd264849265165%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g264840264913%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%$%g264840264913%_)))))
                       (let () (declare (not safe)) (_%$%g264840264913%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl264850265167%_))
                                                       (let ((_%$%e264903264934%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl264850265167%_))))
                 (let ((_%$%tl264905264939%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e264903264934%_)))
                       (_%$%hd264904264937%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e264903264934%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl264905264939%_))
                       (let ((_%$%e264906264942%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl264905264939%_))))
                         (let ((_%$%tl264908264947%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e264906264942%_)))
                               (_%$%hd264907264945%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e264906264942%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl264908264947%_))
                               (_%__kont270304270305%_
                                _%$%hd264907264945%_
                                _%$%hd264904264937%_
                                _%$%hd264849265165%_)
                               (let ()
                                 (declare (not safe))
                                 (_%$%g264840264913%_)))))
                       (let () (declare (not safe)) (_%$%g264840264913%_)))))
               (let () (declare (not safe)) (_%$%g264840264913%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-eq?
                                                      '%#call
                                                      _%$%hd264852265173%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl264853265175%_))
                                                       (let ((_%$%e264876265070%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl264853265175%_))))
                 (let ((_%$%tl264878265075%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e264876265070%_)))
                       (_%$%hd264877265073%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e264876265070%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%hd264877265073%_))
                       (let ((_%$%e264879265078%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%hd264877265073%_))))
                         (let ((_%$%tl264881265083%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e264879265078%_)))
                               (_%$%hd264880265081%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e264879265078%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#identifier? _%$%hd264880265081%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-eq? '%#ref _%$%hd264880265081%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl264881265083%_))
                                       (let ((_%$%e264882265086%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl264881265083%_))))
                                         (let ((_%$%tl264884265091%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e264882265086%_)))
                                               (_%$%hd264883265089%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e264882265086%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%$%tl264884265091%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl264878265075%_))
                                                   (let ((_%$%e264885265094%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl264878265075%_))))
                                                     (let ((_%$%tl264887265099%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e264885265094%_)))
                                                           (_%$%hd264886265097%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e264885265094%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl264887265099%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl264850265167%_))
                       (let ((_%$%e264888265102%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl264850265167%_))))
                         (let ((_%$%tl264890265107%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e264888265102%_)))
                               (_%$%hd264889265105%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e264888265102%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl264890265107%_))
                               (let ((_%$%e264891265110%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl264890265107%_))))
                                 (let ((_%$%tl264893265115%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e264891265110%_)))
                                       (_%$%hd264892265113%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e264891265110%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl264893265115%_))
                                       (_%__match270417270418%_
                                        _%$%e264845265154%_
                                        _%$%hd264846265157%_
                                        _%$%tl264847265159%_
                                        _%$%e264848265162%_
                                        _%$%hd264849265165%_
                                        _%$%tl264850265167%_
                                        _%$%e264851265170%_
                                        _%$%hd264852265173%_
                                        _%$%tl264853265175%_
                                        _%$%e264876265070%_
                                        _%$%hd264877265073%_
                                        _%$%tl264878265075%_
                                        _%$%e264879265078%_
                                        _%$%hd264880265081%_
                                        _%$%tl264881265083%_
                                        _%$%e264882265086%_
                                        _%$%hd264883265089%_
                                        _%$%tl264884265091%_
                                        _%$%e264885265094%_
                                        _%$%hd264886265097%_
                                        _%$%tl264887265099%_
                                        _%$%e264888265102%_
                                        _%$%hd264889265105%_
                                        _%$%tl264890265107%_
                                        _%$%e264891265110%_
                                        _%$%hd264892265113%_
                                        _%$%tl264893265115%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g264840264913%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%$%g264840264913%_)))))
                       (let () (declare (not safe)) (_%$%g264840264913%_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl264850265167%_))
                       (let ((_%$%e264903264934%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl264850265167%_))))
                         (let ((_%$%tl264905264939%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e264903264934%_)))
                               (_%$%hd264904264937%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e264903264934%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl264905264939%_))
                               (let ((_%$%e264906264942%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl264905264939%_))))
                                 (let ((_%$%tl264908264947%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e264906264942%_)))
                                       (_%$%hd264907264945%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e264906264942%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl264908264947%_))
                                       (_%__kont270304270305%_
                                        _%$%hd264907264945%_
                                        _%$%hd264904264937%_
                                        _%$%hd264849265165%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g264840264913%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%$%g264840264913%_)))))
                       (let () (declare (not safe)) (_%$%g264840264913%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl264850265167%_))
                                                       (let ((_%$%e264903264934%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl264850265167%_))))
                 (let ((_%$%tl264905264939%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e264903264934%_)))
                       (_%$%hd264904264937%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e264903264934%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl264905264939%_))
                       (let ((_%$%e264906264942%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl264905264939%_))))
                         (let ((_%$%tl264908264947%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e264906264942%_)))
                               (_%$%hd264907264945%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e264906264942%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl264908264947%_))
                               (_%__kont270304270305%_
                                _%$%hd264907264945%_
                                _%$%hd264904264937%_
                                _%$%hd264849265165%_)
                               (let ()
                                 (declare (not safe))
                                 (_%$%g264840264913%_)))))
                       (let () (declare (not safe)) (_%$%g264840264913%_)))))
               (let () (declare (not safe)) (_%$%g264840264913%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl264850265167%_))
                                                   (let ((_%$%e264903264934%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl264850265167%_))))
                                                     (let ((_%$%tl264905264939%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e264903264934%_)))
                                                           (_%$%hd264904264937%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e264903264934%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl264905264939%_))
                                                           (let ((_%$%e264906264942%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl264905264939%_))))
                     (let ((_%$%tl264908264947%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e264906264942%_)))
                           (_%$%hd264907264945%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e264906264942%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl264908264947%_))
                           (_%__kont270304270305%_
                            _%$%hd264907264945%_
                            _%$%hd264904264937%_
                            _%$%hd264849265165%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g264840264913%_)))))
                   (let () (declare (not safe)) (_%$%g264840264913%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g264840264913%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl264850265167%_))
                                           (let ((_%$%e264903264934%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl264850265167%_))))
                                             (let ((_%$%tl264905264939%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e264903264934%_)))
                                                   (_%$%hd264904264937%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e264903264934%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl264905264939%_))
                                                   (let ((_%$%e264906264942%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl264905264939%_))))
                                                     (let ((_%$%tl264908264947%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e264906264942%_)))
                                                           (_%$%hd264907264945%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e264906264942%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl264908264947%_))
                                                           (_%__kont270304270305%_
                                                            _%$%hd264907264945%_
                                                            _%$%hd264904264937%_
                                                            _%$%hd264849265165%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%$%g264840264913%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g264840264913%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g264840264913%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl264850265167%_))
                                       (let ((_%$%e264903264934%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl264850265167%_))))
                                         (let ((_%$%tl264905264939%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e264903264934%_)))
                                               (_%$%hd264904264937%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e264903264934%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl264905264939%_))
                                               (let ((_%$%e264906264942%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl264905264939%_))))
                                                 (let ((_%$%tl264908264947%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e264906264942%_)))
                                                       (_%$%hd264907264945%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e264906264942%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl264908264947%_))
                                                       (_%__kont270304270305%_
                                                        _%$%hd264907264945%_
                                                        _%$%hd264904264937%_
                                                        _%$%hd264849265165%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%$%g264840264913%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g264840264913%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g264840264913%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl264850265167%_))
                                   (let ((_%$%e264903264934%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl264850265167%_))))
                                     (let ((_%$%tl264905264939%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e264903264934%_)))
                                           (_%$%hd264904264937%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e264903264934%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl264905264939%_))
                                           (let ((_%$%e264906264942%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl264905264939%_))))
                                             (let ((_%$%tl264908264947%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e264906264942%_)))
                                                   (_%$%hd264907264945%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e264906264942%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl264908264947%_))
                                                   (_%__kont270304270305%_
                                                    _%$%hd264907264945%_
                                                    _%$%hd264904264937%_
                                                    _%$%hd264849265165%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g264840264913%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g264840264913%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g264840264913%_))))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl264850265167%_))
                           (let ((_%$%e264903264934%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl264850265167%_))))
                             (let ((_%$%tl264905264939%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e264903264934%_)))
                                   (_%$%hd264904264937%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e264903264934%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl264905264939%_))
                                   (let ((_%$%e264906264942%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl264905264939%_))))
                                     (let ((_%$%tl264908264947%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e264906264942%_)))
                                           (_%$%hd264907264945%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e264906264942%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl264908264947%_))
                                           (_%__kont270304270305%_
                                            _%$%hd264907264945%_
                                            _%$%hd264904264937%_
                                            _%$%hd264849265165%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g264840264913%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g264840264913%_)))))
                           (let ()
                             (declare (not safe))
                             (_%$%g264840264913%_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? _%$%tl264850265167%_))
                   (let ((_%$%e264903264934%_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl264850265167%_))))
                     (let ((_%$%tl264905264939%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e264903264934%_)))
                           (_%$%hd264904264937%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e264903264934%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl264905264939%_))
                           (let ((_%$%e264906264942%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl264905264939%_))))
                             (let ((_%$%tl264908264947%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e264906264942%_)))
                                   (_%$%hd264907264945%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e264906264942%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%$%tl264908264947%_))
                                   (_%__kont270304270305%_
                                    _%$%hd264907264945%_
                                    _%$%hd264904264937%_
                                    _%$%hd264849265165%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g264840264913%_)))))
                           (let ()
                             (declare (not safe))
                             (_%$%g264840264913%_)))))
                   (let () (declare (not safe)) (_%$%g264840264913%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl264850265167%_))
                                                       (let ((_%$%e264903264934%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl264850265167%_))))
                 (let ((_%$%tl264905264939%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e264903264934%_)))
                       (_%$%hd264904264937%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e264903264934%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl264905264939%_))
                       (let ((_%$%e264906264942%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl264905264939%_))))
                         (let ((_%$%tl264908264947%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e264906264942%_)))
                               (_%$%hd264907264945%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e264906264942%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl264908264947%_))
                               (_%__kont270304270305%_
                                _%$%hd264907264945%_
                                _%$%hd264904264937%_
                                _%$%hd264849265165%_)
                               (let ()
                                 (declare (not safe))
                                 (_%$%g264840264913%_)))))
                       (let () (declare (not safe)) (_%$%g264840264913%_)))))
               (let () (declare (not safe)) (_%$%g264840264913%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl264850265167%_))
                                               (let ((_%$%e264903264934%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl264850265167%_))))
                                                 (let ((_%$%tl264905264939%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e264903264934%_)))
                                                       (_%$%hd264904264937%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e264903264934%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl264905264939%_))
                                                       (let ((_%$%e264906264942%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl264905264939%_))))
                 (let ((_%$%tl264908264947%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e264906264942%_)))
                       (_%$%hd264907264945%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e264906264942%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl264908264947%_))
                       (_%__kont270304270305%_
                        _%$%hd264907264945%_
                        _%$%hd264904264937%_
                        _%$%hd264849265165%_)
                       (let () (declare (not safe)) (_%$%g264840264913%_)))))
               (let () (declare (not safe)) (_%$%g264840264913%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g264840264913%_))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl264850265167%_))
                                       (let ((_%$%e264903264934%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl264850265167%_))))
                                         (let ((_%$%tl264905264939%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e264903264934%_)))
                                               (_%$%hd264904264937%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e264903264934%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl264905264939%_))
                                               (let ((_%$%e264906264942%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl264905264939%_))))
                                                 (let ((_%$%tl264908264947%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e264906264942%_)))
                                                       (_%$%hd264907264945%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e264906264942%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl264908264947%_))
                                                       (_%__kont270304270305%_
                                                        _%$%hd264907264945%_
                                                        _%$%hd264904264937%_
                                                        _%$%hd264849265165%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%$%g264840264913%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g264840264913%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g264840264913%_))))))
                           (let ()
                             (declare (not safe))
                             (_%$%g264840264913%_)))))
                   (let () (declare (not safe)) (_%$%g264840264913%_)))))))))
    (define gxc#check-contract-violation!
      (lambda (_%stx264703%_ _%expr264704%_)
        (let* ((_%__stx270446270447%_ _%expr264704%_)
               (_%$%g264707264737%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx270446270447%_)))))
          (let ((_%__kont270448270449%_
                 (lambda (_%$%g264709264805%_
                          _%$%g264710264806%_
                          _%$%g264711264807%_)
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"contract violation"
                      _%stx264703%_
                      _%$%g264711264807%_
                      _%$%g264710264806%_
                      _%$%g264709264805%_))))
                (_%__kont270450270451%_ (lambda () _%expr264704%_)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx270446270447%_))
                (let ((_%$%e264712264749%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx270446270447%_))))
                  (let ((_%$%tl264714264754%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e264712264749%_)))
                        (_%$%hd264713264752%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e264712264749%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%$%hd264713264752%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq?
                               '%#begin-annotation
                               _%$%hd264713264752%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl264714264754%_))
                                (let ((_%$%e264715264757%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl264714264754%_))))
                                  (let ((_%$%tl264717264762%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e264715264757%_)))
                                        (_%$%hd264716264760%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e264715264757%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd264716264760%_))
                                        (let ((_%$%e264718264765%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd264716264760%_))))
                                          (let ((_%$%tl264720264770%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e264718264765%_)))
                                                (_%$%hd264719264768%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e264718264765%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd264719264768%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '@contract-violation
                                                       _%$%hd264719264768%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl264720264770%_))
                                                        (let ((_%$%e264721264773%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl264720264770%_))))
                  (let ((_%$%tl264723264778%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e264721264773%_)))
                        (_%$%hd264722264776%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e264721264773%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl264723264778%_))
                        (let ((_%$%e264724264781%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl264723264778%_))))
                          (let ((_%$%tl264726264786%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e264724264781%_)))
                                (_%$%hd264725264784%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e264724264781%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl264726264786%_))
                                (let ((_%$%e264727264789%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl264726264786%_))))
                                  (let ((_%$%tl264729264794%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e264727264789%_)))
                                        (_%$%hd264728264792%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e264727264789%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl264729264794%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl264717264762%_))
                                            (let ((_%$%e264730264797%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl264717264762%_))))
                                              (let ((_%$%tl264732264802%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e264730264797%_)))
                                                    (_%$%hd264731264800%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e264730264797%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl264732264802%_))
                                                    (_%__kont270448270449%_
                                                     _%$%hd264728264792%_
                                                     _%$%hd264725264784%_
                                                     _%$%hd264722264776%_)
                                                    (_%__kont270450270451%_))))
                                            (_%__kont270450270451%_))
                                        (_%__kont270450270451%_))))
                                (_%__kont270450270451%_))))
                        (_%__kont270450270451%_))))
                (_%__kont270450270451%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont270450270451%_))
                                                (_%__kont270450270451%_))))
                                        (_%__kont270450270451%_))))
                                (_%__kont270450270451%_))
                            (_%__kont270450270451%_))
                        (_%__kont270450270451%_))))
                (_%__kont270450270451%_))))))))
