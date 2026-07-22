(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1784758132)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp268787 (list gxc#::basic-xform::t))
            (__tmp268786 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp268787
         '()
         __tmp268786
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args267804%_
        (apply make-instance gxc#::optimize-call::t _%$args267804%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp268788
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
        (__make-atomic-promise __tmp268788)))
    (define gxc#apply-optimize-call
      (lambda (_%stx267796%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self267799%_
                (let ((__obj268778
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj268778))
               (__tmp268789
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self267799%_ _%stx267796%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp268789
           gxc#current-compile-method
           _%self267799%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp268791 (list gxc#::void::t))
            (__tmp268790 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp268791
         '()
         __tmp268790
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args267793%_
        (apply make-instance gxc#::check-return-type::t _%$args267793%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp268792
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
        (__make-atomic-promise __tmp268792)))
    (define gxc#apply-check-return-type
      (lambda (_%stx267785%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self267788%_
                (let ((__obj268780
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj268780))
               (__tmp268793
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self267788%_ _%stx267785%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp268793
           gxc#current-compile-method
           _%self267788%_))))
    (define gxc#optimize-call%
      (lambda (_%self266927%_ _%stx266928%_)
        (let* ((_%__stx267945267946%_ _%stx266928%_)
               (_%$%g266932267014%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx267945267946%_)))))
          (let ((_%__kont267947267948%_
                 (lambda (_%$%g266934267575%_ _%$%g266935267576%_)
                   (let* ((_%rator-id267596%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%$%g266935267576%_)))
                          (_%rator-type267598%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id267596%_)))
                          (_%$e267601%_
                           (let ()
                             (declare (not safe))
                             (__hash-get
                              gxc#special-procedure-optimizers
                              _%rator-id267596%_))))
                     (if _%$e267601%_
                         (_%$e267601%_ _%self266927%_ _%stx266928%_)
                         (if (or (not _%rator-type267598%_)
                                 (eq? (##structure-ref
                                       _%rator-type267598%_
                                       '1
                                       gxc#!type::t
                                       '#f)
                                      't))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self266927%_ _%stx266928%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%rator-type267598%_
                                    'gxc#!procedure::t))
                                 (let ()
                                   (let ((__tmp268794
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%rator-type267598%_
                                             '1
                                             '#f
                                             '#f))))
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"optimize-call "
                                      _%rator-id267596%_
                                      '" => "
                                      _%rator-type267598%_
                                      '" "
                                      __tmp268794))
                                   (let* ((_%optimized267618%_
                                           (let ((__method268781
                                                  (let ()
                                                    (declare (not safe))
                                                    (__method-ref
                                                     _%rator-type267598%_
                                                     'optimize-call))))
                                             (if __method268781
                                                 (let ((__tmp268795
                                                        (let ((__tmp268796
                                                               (lambda (_%$%g267610267613%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%$%g267611267615%_)
                         (cons _%$%g267610267613%_ _%$%g267611267615%_))))
                  (declare (not safe))
                  (foldr__0 __tmp268796 '() _%$%g266934267575%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__method268781
                                                    _%rator-type267598%_
                                                    _%self266927%_
                                                    _%stx266928%_
                                                    __tmp268795))
                                                 (begin
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Missing method"
                                                            _%rator-type267598%_
                                                            'optimize-call))
                                                   '#!void))))
                                          (_%__stx267893267894%_
                                           _%optimized267618%_)
                                          (_%$%g267621267650%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx267893267894%_)))))
                                     (let ((_%__kont267895267896%_
                                            (lambda (_%$%g267623267716%_
                                                     _%$%g267624267717%_)
                                              (let* ((_%optimized-rator-id267745%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#identifier-symbol
                                                         _%$%g267624267717%_)))
                                                     (_%rator-type267750%_
                                                      (let ((_%$e267747%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#optimizer-lookup-type
                        _%optimized-rator-id267745%_))))
                (if _%$e267747%_ _%$e267747%_ _%rator-type267598%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (or (let ()
                                                          (declare (not safe))
                                                          (class-instance?
                                                           gxc#!primitive::t
                                                           _%rator-type267750%_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##memq _%optimized-rator-id267745%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          gxc#checked-primitives))
                (and (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%rator-type267750%_
                        'gxc#!procedure::t))
                     (eq? (let ()
                            (declare (not safe))
                            (gxc#!procedure-origin _%rator-type267750%_))
                          (##structure-ref
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))
                           '1
                           gx#expander-context::t
                           '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%optimized267618%_
                                                    (let ((__tmp268797
                                                           (cons '%#call-unchecked
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f '%#ref))
                                     (cons _%$%g267624267717%_ '()))
                               (let ((__tmp268798
                                      (lambda (_%$%g267758267761%_
                                               _%$%g267759267763%_)
                                        (cons _%$%g267758267761%_
                                              _%$%g267759267763%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp268798
                                  '()
                                  _%$%g267623267716%_))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp268797 _%stx266928%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont267899267900%_
                                            (lambda () _%optimized267618%_)))
                                       (let ((_%__match267942267943%_
                                              (lambda (_%$%e267625267662%_
                                                       _%$%hd267626267665%_
                                                       _%$%tl267627267667%_
                                                       _%$%e267628267670%_
                                                       _%$%hd267629267673%_
                                                       _%$%tl267630267675%_
                                                       _%$%e267631267678%_
                                                       _%$%hd267632267681%_
                                                       _%$%tl267633267683%_
                                                       _%$%e267634267686%_
                                                       _%$%hd267635267689%_
                                                       _%$%tl267636267691%_
                                                       _%__splice267897267898%_
                                                       _%$%target267637267694%_
                                                       _%$%tl267639267696%_)
                                                (letrec ((_%$%loop267640267699%_
                                                          (lambda (_%$%hd267638267702%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%arg267644267704%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd267638267702%_))
                        (let ((_%$%e267641267706%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd267638267702%_))))
                          (let ((_%$%lp-tl267643267711%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e267641267706%_)))
                                (_%$%lp-hd267642267709%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e267641267706%_))))
                            (_%$%loop267640267699%_
                             _%$%lp-tl267643267711%_
                             (cons _%$%lp-hd267642267709%_
                                   _%$%arg267644267704%_))))
                        (let ((_%$%arg267645267714%_
                               (reverse _%$%arg267644267704%_)))
                          (_%__kont267895267896%_
                           _%$%arg267645267714%_
                           _%$%hd267635267689%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop267640267699%_
                                                   _%$%target267637267694%_
                                                   '())))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx267893267894%_))
                                             (let ((_%$%e267625267662%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx267893267894%_))))
                                               (let ((_%$%tl267627267667%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e267625267662%_)))
                                                     (_%$%hd267626267665%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e267625267662%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%$%hd267626267665%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#call
                                                            _%$%hd267626267665%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%tl267627267667%_))
                     (let ((_%$%e267628267670%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl267627267667%_))))
                       (let ((_%$%tl267630267675%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e267628267670%_)))
                             (_%$%hd267629267673%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e267628267670%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%hd267629267673%_))
                             (let ((_%$%e267631267678%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%hd267629267673%_))))
                               (let ((_%$%tl267633267683%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e267631267678%_)))
                                     (_%$%hd267632267681%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e267631267678%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#identifier? _%$%hd267632267681%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-eq?
                                            '%#ref
                                            _%$%hd267632267681%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%tl267633267683%_))
                                             (let ((_%$%e267634267686%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%tl267633267683%_))))
                                               (let ((_%$%tl267636267691%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e267634267686%_)))
                                                     (_%$%hd267635267689%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e267634267686%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%$%tl267636267691%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%$%tl267630267675%_))
                                                         (let ((_%__splice267897267898%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%$%tl267630267675%_
                           '0))))
                   (let ((_%$%tl267639267696%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice267897267898%_ '1)))
                         (_%$%target267637267694%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice267897267898%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl267639267696%_))
                         (_%__match267942267943%_
                          _%$%e267625267662%_
                          _%$%hd267626267665%_
                          _%$%tl267627267667%_
                          _%$%e267628267670%_
                          _%$%hd267629267673%_
                          _%$%tl267630267675%_
                          _%$%e267631267678%_
                          _%$%hd267632267681%_
                          _%$%tl267633267683%_
                          _%$%e267634267686%_
                          _%$%hd267635267689%_
                          _%$%tl267636267691%_
                          _%__splice267897267898%_
                          _%$%target267637267694%_
                          _%$%tl267639267696%_)
                         (_%__kont267899267900%_))))
                 (_%__kont267899267900%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont267899267900%_))))
                                             (_%__kont267899267900%_))
                                         (_%__kont267899267900%_))
                                     (_%__kont267899267900%_))))
                             (_%__kont267899267900%_))))
                     (_%__kont267899267900%_))
                 (_%__kont267899267900%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont267899267900%_))))
                                             (_%__kont267899267900%_))))))
                                 (if (and (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%rator-type267598%_
                                             'gxc#!class::t))
                                          (eq? (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%rator-type267598%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               'procedure))
                                     (let ((__tmp268799
                                            (cons '%#call-unchecked
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f '%#ref))
                      (cons _%$%g266935267576%_ '()))
                (map (lambda (_%$%g267769267771%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self266927%_
                          _%$%g267769267771%_)))
                     (let ((__tmp268800
                            (lambda (_%$%g267773267776%_ _%$%g267774267778%_)
                              (cons _%$%g267773267776%_ _%$%g267774267778%_))))
                       (declare (not safe))
                       (foldr__0 __tmp268800 '() _%$%g266934267575%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp268799
                                        _%stx266928%_))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"illegal application; not a procedure"
                                        _%stx266928%_
                                        _%rator-type267598%_)))))))))
                (_%__kont267951267952%_
                 (lambda (_%$%g266957267183%_
                          _%$%g266958267184%_
                          _%$%g266959267185%_)
                   (let _%loop267303%_ ((_%rest-arg267305%_
                                         (let ((__tmp268807
                                                (lambda (_%$%g267501267504%_
                                                         _%$%g267502267506%_)
                                                  (cons _%$%g267501267504%_
                                                        _%$%g267502267506%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp268807
                                            '()
                                            _%$%g266959267185%_)))
                                        (_%rest-rand267306%_
                                         (let ((__tmp268808
                                                (lambda (_%$%g267508267511%_
                                                         _%$%g267509267513%_)
                                                  (cons _%$%g267508267511%_
                                                        _%$%g267509267513%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp268808
                                            '()
                                            _%$%g266957267183%_)))
                                        (_%bind267307%_ '())
                                        (_%subst267308%_ '()))
                     (let* ((_%$%rest-arg267309267317%_ _%rest-arg267305%_)
                            (_%$%else267311267330%_
                             (lambda ()
                               (let* ((_%body267325%_
                                       (if (null? _%subst267308%_)
                                           _%$%g266958267184%_
                                           (let ((__tmp268801
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-inline-subst__%
                                                     '#f
                                                     _%subst267308%_
                                                     _%$%g266958267184%_))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp268801
                                              _%stx266928%_))))
                                      (_%expr267327%_
                                       (let ((__tmp268802
                                              (cons '%#let-values
                                                    (cons _%bind267307%_
                                                          (cons _%body267325%_
                                                                '())))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp268802
                                          _%stx266928%_))))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-refine-type-info _%expr267327%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self266927%_
                                    _%expr267327%_)))))
                            (_%$%K267313267490%_
                             (lambda (_%rest-arg267333%_ _%arg-id267334%_)
                               (let* ((_%$%rest-rand267335267343%_
                                       _%rest-rand267306%_)
                                      (_%$%else267337267365%_
                                       (lambda ()
                                         (let ((__tmp268805
                                                (let ((__tmp268806
                                                       (lambda (_%$%g267350267353%_
                                                                _%$%g267351267355%_)
                                                         (cons _%$%g267350267353%_
                                                               _%$%g267351267355%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp268806
                                                   '()
                                                   _%$%g266959267185%_)))
                                               (__tmp268803
                                                (let ((__tmp268804
                                                       (lambda (_%$%g267357267360%_
                                                                _%$%g267358267362%_)
                                                         (cons _%$%g267357267360%_
                                                               _%$%g267358267362%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp268804
                                                   '()
                                                   _%$%g266957267183%_))))
                                           (declare (not safe))
                                           (gxc#raise-compile-error
                                            '"inline lambda arity mismatch"
                                            _%stx266928%_
                                            __tmp268805
                                            __tmp268803))))
                                      (_%$%K267339267478%_
                                       (lambda (_%rest-rand267368%_
                                                _%rand267369%_)
                                         (let* ((_%__stx267847267848%_
                                                 _%rand267369%_)
                                                (_%$%g267373267393%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx267847267848%_)))))
                                           (let ((_%__kont267849267850%_
                                                  (lambda (_%$%g267375267464%_)
                                                    (_%loop267303%_
                                                     _%rest-arg267333%_
                                                     _%rest-rand267368%_
                                                     _%bind267307%_
                                                     (cons (cons _%arg-id267334%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%rand267369%_)
                   _%subst267308%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont267851267852%_
                                                  (lambda (_%$%g267382267421%_)
                                                    (_%loop267303%_
                                                     _%rest-arg267333%_
                                                     _%rest-rand267368%_
                                                     _%bind267307%_
                                                     (cons (cons _%arg-id267334%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%rand267369%_)
                   _%subst267308%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont267853267854%_
                                                  (lambda ()
                                                    (_%loop267303%_
                                                     _%rest-arg267333%_
                                                     _%rest-rand267368%_
                                                     (cons (cons (cons _%arg-id267334%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons _%rand267369%_ '()))
                   _%bind267307%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%subst267308%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx267847267848%_))
                                                 (let ((_%$%e267376267448%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx267847267848%_))))
                                                   (let ((_%$%tl267378267453%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e267376267448%_)))
                                                         (_%$%hd267377267451%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e267376267448%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%$%hd267377267451%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#quote _%$%hd267377267451%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%tl267378267453%_))
                         (let ((_%$%e267379267456%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%tl267378267453%_))))
                           (let ((_%$%tl267381267461%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e267379267456%_)))
                                 (_%$%hd267380267459%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e267379267456%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%$%tl267381267461%_))
                                 (_%__kont267849267850%_ _%$%hd267380267459%_)
                                 (_%__kont267853267854%_))))
                         (_%__kont267853267854%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#ref _%$%hd267377267451%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%tl267378267453%_))
                             (let ((_%$%e267386267413%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%tl267378267453%_))))
                               (let ((_%$%tl267388267418%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e267386267413%_)))
                                     (_%$%hd267387267416%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e267386267413%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%$%tl267388267418%_))
                                     (_%__kont267851267852%_
                                      _%$%hd267387267416%_)
                                     (_%__kont267853267854%_))))
                             (_%__kont267853267854%_))
                         (_%__kont267853267854%_)))
                 (_%__kont267853267854%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont267853267854%_)))))))
                                 (if (pair? _%$%rest-rand267335267343%_)
                                     (let ((_%$%hd267340267481%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%rest-rand267335267343%_)))
                                           (_%$%tl267341267483%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%rest-rand267335267343%_))))
                                       (let* ((_%rand267486%_
                                               _%$%hd267340267481%_)
                                              (_%rest-rand267488%_
                                               _%$%tl267341267483%_))
                                         (_%$%K267339267478%_
                                          _%rest-rand267488%_
                                          _%rand267486%_)))
                                     (_%$%else267337267365%_))))))
                       (if (pair? _%$%rest-arg267309267317%_)
                           (let ((_%$%hd267314267493%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%rest-arg267309267317%_)))
                                 (_%$%tl267315267495%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%rest-arg267309267317%_))))
                             (let* ((_%arg-id267498%_ _%$%hd267314267493%_)
                                    (_%rest-arg267500%_ _%$%tl267315267495%_))
                               (_%$%K267313267490%_
                                _%rest-arg267500%_
                                _%arg-id267498%_)))
                           (_%$%else267311267330%_))))))
                (_%__kont267957267958%_
                 (lambda (_%$%g266993267057%_ _%$%g266994267058%_)
                   (let ((_%rator-type267075%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type
                             _%$%g266994267058%_))))
                     (if (and _%rator-type267075%_
                              (eq? (##structure-ref
                                    _%rator-type267075%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type267075%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type267075%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type267075%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp268809
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self266927%_
                                               _%$%g266994267058%_))
                                            (map (lambda (_%$%g267077267079%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self266927%_
                                                      _%$%g267077267079%_)))
                                                 (let ((__tmp268810
                                                        (lambda (_%$%g267081267084%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g267082267086%_)
                  (cons _%$%g267081267084%_ _%$%g267082267086%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp268810
                                                    '()
                                                    _%$%g266993267057%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp268809 _%stx266928%_))
                         (if (or (not _%rator-type267075%_)
                                 (let ((__tmp268811
                                        (##structure-ref
                                         _%rator-type267075%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp268811 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self266927%_ _%stx266928%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx266928%_
                                _%rator-type267075%_))))))))
            (let* ((_%__match268054268055%_
                    (lambda (_%$%e266995267019%_
                             _%$%hd266996267022%_
                             _%$%tl266997267024%_
                             _%$%e266998267027%_
                             _%$%hd266999267030%_
                             _%$%tl267000267032%_
                             _%__splice267959267960%_
                             _%$%target267001267035%_
                             _%$%tl267003267037%_)
                      (letrec ((_%$%loop267004267040%_
                                (lambda (_%$%hd267002267043%_
                                         _%$%rand267008267045%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd267002267043%_))
                                      (let ((_%$%e267005267047%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd267002267043%_))))
                                        (let ((_%$%lp-tl267007267052%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e267005267047%_)))
                                              (_%$%lp-hd267006267050%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e267005267047%_))))
                                          (_%$%loop267004267040%_
                                           _%$%lp-tl267007267052%_
                                           (cons _%$%lp-hd267006267050%_
                                                 _%$%rand267008267045%_))))
                                      (let ((_%$%rand267009267055%_
                                             (reverse _%$%rand267008267045%_)))
                                        (_%__kont267957267958%_
                                         _%$%rand267009267055%_
                                         _%$%hd266999267030%_))))))
                        (_%$%loop267004267040%_
                         _%$%target267001267035%_
                         '()))))
                   (_%__match268046268047%_
                    (lambda (_%$%e266995267019%_
                             _%$%hd266996267022%_
                             _%$%tl266997267024%_
                             _%$%e266998267027%_
                             _%$%hd266999267030%_
                             _%$%tl267000267032%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%$%tl267000267032%_))
                          (let ((_%__splice267959267960%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%$%tl267000267032%_
                                    '0))))
                            (let ((_%$%tl267003267037%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice267959267960%_
                                      '1)))
                                  (_%$%target267001267035%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice267959267960%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl267003267037%_))
                                  (_%__match268054268055%_
                                   _%$%e266995267019%_
                                   _%$%hd266996267022%_
                                   _%$%tl266997267024%_
                                   _%$%e266998267027%_
                                   _%$%hd266999267030%_
                                   _%$%tl267000267032%_
                                   _%__splice267959267960%_
                                   _%$%target267001267035%_
                                   _%$%tl267003267037%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g266932267014%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g266932267014%_)))))
                   (_%__match268034268035%_
                    (lambda (_%$%e266960267099%_
                             _%$%hd266961267102%_
                             _%$%tl266962267104%_
                             _%$%e266963267107%_
                             _%$%hd266964267110%_
                             _%$%tl266965267112%_
                             _%$%e266966267115%_
                             _%$%hd266967267118%_
                             _%$%tl266968267120%_
                             _%$%e266969267123%_
                             _%$%hd266970267126%_
                             _%$%tl266971267128%_
                             _%__splice267953267954%_
                             _%$%target266972267131%_
                             _%$%tl266974267133%_)
                      (letrec ((_%$%loop266975267136%_
                                (lambda (_%$%hd266973267139%_
                                         _%$%arg266979267141%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd266973267139%_))
                                      (let ((_%$%e266976267143%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd266973267139%_))))
                                        (let ((_%$%lp-tl266978267148%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e266976267143%_)))
                                              (_%$%lp-hd266977267146%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e266976267143%_))))
                                          (_%$%loop266975267136%_
                                           _%$%lp-tl266978267148%_
                                           (cons _%$%lp-hd266977267146%_
                                                 _%$%arg266979267141%_))))
                                      (let ((_%$%arg266980267151%_
                                             (reverse _%$%arg266979267141%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl266971267128%_))
                                            (let ((_%$%e266981267153%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl266971267128%_))))
                                              (let ((_%$%tl266983267158%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e266981267153%_)))
                                                    (_%$%hd266982267156%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e266981267153%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl266983267158%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%$%tl266965267112%_))
                                                        (let ((_%__splice267955267956%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%$%tl266965267112%_
                          '0))))
                  (let ((_%$%tl266986267163%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice267955267956%_ '1)))
                        (_%$%target266984267161%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice267955267956%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl266986267163%_))
                        (letrec ((_%$%loop266987267166%_
                                  (lambda (_%$%hd266985267169%_
                                           _%$%rand266991267171%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd266985267169%_))
                                        (let ((_%$%e266988267173%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd266985267169%_))))
                                          (let ((_%$%lp-tl266990267178%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e266988267173%_)))
                                                (_%$%lp-hd266989267176%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e266988267173%_))))
                                            (_%$%loop266987267166%_
                                             _%$%lp-tl266990267178%_
                                             (cons _%$%lp-hd266989267176%_
                                                   _%$%rand266991267171%_))))
                                        (let ((_%$%rand266992267181%_
                                               (reverse _%$%rand266991267171%_)))
                                          (let ((_%$%g266957267183%_
                                                 _%$%rand266992267181%_)
                                                (_%$%g266958267184%_
                                                 _%$%hd266982267156%_)
                                                (_%$%g266959267185%_
                                                 _%$%arg266980267151%_))
                                            (if (and (= (length (let ((__tmp268812
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_%$%g267211267214%_
                                        _%$%g267212267216%_)
                                 (cons _%$%g267211267214%_
                                       _%$%g267212267216%_))))
                          (declare (not safe))
                          (foldr__0 __tmp268812 '() _%$%g266959267185%_)))
                (length (let ((__tmp268813
                               (lambda (_%$%g267218267221%_
                                        _%$%g267219267223%_)
                                 (cons _%$%g267218267221%_
                                       _%$%g267219267223%_))))
                          (declare (not safe))
                          (foldr__0 __tmp268813 '() _%$%g266957267183%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp268816
                                                            (lambda (_%id267226%_)
                                                              (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gxc#mutable-binding? _%id267226%_)))))
                   (__tmp268814
                    (let ((__tmp268815
                           (lambda (_%$%g267227267230%_ _%$%g267228267232%_)
                             (cons _%$%g267227267230%_ _%$%g267228267232%_))))
                      (declare (not safe))
                      (foldr__0 __tmp268815 '() _%$%g266959267185%_))))
               (declare (not safe))
               (andmap__0 __tmp268816 __tmp268814))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp268819
                                                            (lambda (_%rand267235%_)
                                                              (let* ((_%__stx267821267822%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%rand267235%_)
                             (_%$%g267238267251%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx267821267822%_)))))
                        (let ((_%__kont267823267824%_
                               (lambda (_%$%g267240267279%_)
                                 (not (let ()
                                        (declare (not safe))
                                        (gxc#mutable-binding?
                                         _%$%g267240267279%_)))))
                              (_%__kont267825267826%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx267821267822%_))
                              (let ((_%$%e267241267263%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx267821267822%_))))
                                (let ((_%$%tl267243267268%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e267241267263%_)))
                                      (_%$%hd267242267266%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e267241267263%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd267242267266%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd267242267266%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl267243267268%_))
                                              (let ((_%$%e267244267271%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl267243267268%_))))
                                                (let ((_%$%tl267246267276%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e267244267271%_)))
                                                      (_%$%hd267245267274%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e267244267271%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl267246267276%_))
                                                      (_%__kont267823267824%_
                                                       _%$%hd267245267274%_)
                                                      (_%__kont267825267826%_))))
                                              (_%__kont267825267826%_))
                                          (_%__kont267825267826%_))
                                      (_%__kont267825267826%_))))
                              (_%__kont267825267826%_))))))
                   (__tmp268817
                    (let ((__tmp268818
                           (lambda (_%$%g267295267298%_ _%$%g267296267300%_)
                             (cons _%$%g267295267298%_ _%$%g267296267300%_))))
                      (declare (not safe))
                      (foldr__0 __tmp268818 '() _%$%g266957267183%_))))
               (declare (not safe))
               (andmap__0 __tmp268819 __tmp268817)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont267951267952%_
                                                 _%$%g266957267183%_
                                                 _%$%g266958267184%_
                                                 _%$%g266959267185%_)
                                                (_%__match268054268055%_
                                                 _%$%e266960267099%_
                                                 _%$%hd266961267102%_
                                                 _%$%tl266962267104%_
                                                 _%$%e266963267107%_
                                                 _%$%hd266964267110%_
                                                 _%$%tl266965267112%_
                                                 _%__splice267955267956%_
                                                 _%$%target266984267161%_
                                                 _%$%tl266986267163%_))))))))
                          (_%$%loop266987267166%_
                           _%$%target266984267161%_
                           '()))
                        (let () (declare (not safe)) (_%$%g266932267014%_)))))
                (let () (declare (not safe)) (_%$%g266932267014%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match268046268047%_
                                                     _%$%e266960267099%_
                                                     _%$%hd266961267102%_
                                                     _%$%tl266962267104%_
                                                     _%$%e266963267107%_
                                                     _%$%hd266964267110%_
                                                     _%$%tl266965267112%_))))
                                            (_%__match268046268047%_
                                             _%$%e266960267099%_
                                             _%$%hd266961267102%_
                                             _%$%tl266962267104%_
                                             _%$%e266963267107%_
                                             _%$%hd266964267110%_
                                             _%$%tl266965267112%_)))))))
                        (_%$%loop266975267136%_
                         _%$%target266972267131%_
                         '()))))
                   (_%__match267998267999%_
                    (lambda (_%$%e266936267521%_
                             _%$%hd266937267524%_
                             _%$%tl266938267526%_
                             _%$%e266939267529%_
                             _%$%hd266940267532%_
                             _%$%tl266941267534%_
                             _%$%e266942267537%_
                             _%$%hd266943267540%_
                             _%$%tl266944267542%_
                             _%$%e266945267545%_
                             _%$%hd266946267548%_
                             _%$%tl266947267550%_
                             _%__splice267949267950%_
                             _%$%target266948267553%_
                             _%$%tl266950267555%_)
                      (letrec ((_%$%loop266951267558%_
                                (lambda (_%$%hd266949267561%_
                                         _%$%rand266955267563%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd266949267561%_))
                                      (let ((_%$%e266952267565%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd266949267561%_))))
                                        (let ((_%$%lp-tl266954267570%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e266952267565%_)))
                                              (_%$%lp-hd266953267568%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e266952267565%_))))
                                          (_%$%loop266951267558%_
                                           _%$%lp-tl266954267570%_
                                           (cons _%$%lp-hd266953267568%_
                                                 _%$%rand266955267563%_))))
                                      (let ((_%$%rand266956267573%_
                                             (reverse _%$%rand266955267563%_)))
                                        (_%__kont267947267948%_
                                         _%$%rand266956267573%_
                                         _%$%hd266946267548%_))))))
                        (_%$%loop266951267558%_
                         _%$%target266948267553%_
                         '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx267945267946%_))
                  (let ((_%$%e266936267521%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx267945267946%_))))
                    (let ((_%$%tl266938267526%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e266936267521%_)))
                          (_%$%hd266937267524%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e266936267521%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl266938267526%_))
                          (let ((_%$%e266939267529%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl266938267526%_))))
                            (let ((_%$%tl266941267534%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e266939267529%_)))
                                  (_%$%hd266940267532%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e266939267529%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd266940267532%_))
                                  (let ((_%$%e266942267537%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd266940267532%_))))
                                    (let ((_%$%tl266944267542%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e266942267537%_)))
                                          (_%$%hd266943267540%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e266942267537%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd266943267540%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd266943267540%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl266944267542%_))
                                                  (let ((_%$%e266945267545%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl266944267542%_))))
                                                    (let ((_%$%tl266947267550%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e266945267545%_)))
                                                          (_%$%hd266946267548%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e266945267545%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl266947267550%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%$%tl266941267534%_))
                      (let ((_%__splice267949267950%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl266941267534%_
                                '0))))
                        (let ((_%$%tl266950267555%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice267949267950%_ '1)))
                              (_%$%target266948267553%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice267949267950%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl266950267555%_))
                              (_%__match267998267999%_
                               _%$%e266936267521%_
                               _%$%hd266937267524%_
                               _%$%tl266938267526%_
                               _%$%e266939267529%_
                               _%$%hd266940267532%_
                               _%$%tl266941267534%_
                               _%$%e266942267537%_
                               _%$%hd266943267540%_
                               _%$%tl266944267542%_
                               _%$%e266945267545%_
                               _%$%hd266946267548%_
                               _%$%tl266947267550%_
                               _%__splice267949267950%_
                               _%$%target266948267553%_
                               _%$%tl266950267555%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g266932267014%_)))))
                      (let () (declare (not safe)) (_%$%g266932267014%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%$%tl266941267534%_))
                      (let ((_%__splice267959267960%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl266941267534%_
                                '0))))
                        (let ((_%$%tl267003267037%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice267959267960%_ '1)))
                              (_%$%target267001267035%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice267959267960%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl267003267037%_))
                              (_%__match268054268055%_
                               _%$%e266936267521%_
                               _%$%hd266937267524%_
                               _%$%tl266938267526%_
                               _%$%e266939267529%_
                               _%$%hd266940267532%_
                               _%$%tl266941267534%_
                               _%__splice267959267960%_
                               _%$%target267001267035%_
                               _%$%tl267003267037%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g266932267014%_)))))
                      (let () (declare (not safe)) (_%$%g266932267014%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl266941267534%_))
                                                      (let ((_%__splice267959267960%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl266941267534%_
                        '0))))
                (let ((_%$%tl267003267037%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice267959267960%_ '1)))
                      (_%$%target267001267035%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice267959267960%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl267003267037%_))
                      (_%__match268054268055%_
                       _%$%e266936267521%_
                       _%$%hd266937267524%_
                       _%$%tl266938267526%_
                       _%$%e266939267529%_
                       _%$%hd266940267532%_
                       _%$%tl266941267534%_
                       _%__splice267959267960%_
                       _%$%target267001267035%_
                       _%$%tl267003267037%_)
                      (let () (declare (not safe)) (_%$%g266932267014%_)))))
              (let () (declare (not safe)) (_%$%g266932267014%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#lambda
                                                     _%$%hd266943267540%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl266944267542%_))
                                                      (let ((_%$%e266969267123%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl266944267542%_))))
                (let ((_%$%tl266971267128%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e266969267123%_)))
                      (_%$%hd266970267126%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e266969267123%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%$%hd266970267126%_))
                      (let ((_%__splice267953267954%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%hd266970267126%_
                                '0))))
                        (let ((_%$%tl266974267133%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice267953267954%_ '1)))
                              (_%$%target266972267131%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice267953267954%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl266974267133%_))
                              (_%__match268034268035%_
                               _%$%e266936267521%_
                               _%$%hd266937267524%_
                               _%$%tl266938267526%_
                               _%$%e266939267529%_
                               _%$%hd266940267532%_
                               _%$%tl266941267534%_
                               _%$%e266942267537%_
                               _%$%hd266943267540%_
                               _%$%tl266944267542%_
                               _%$%e266969267123%_
                               _%$%hd266970267126%_
                               _%$%tl266971267128%_
                               _%__splice267953267954%_
                               _%$%target266972267131%_
                               _%$%tl266974267133%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _%$%tl266941267534%_))
                                  (let ((_%__splice267959267960%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice->vector
                                            _%$%tl266941267534%_
                                            '0))))
                                    (let ((_%$%tl267003267037%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice267959267960%_
                                              '1)))
                                          (_%$%target267001267035%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice267959267960%_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl267003267037%_))
                                          (_%__match268054268055%_
                                           _%$%e266936267521%_
                                           _%$%hd266937267524%_
                                           _%$%tl266938267526%_
                                           _%$%e266939267529%_
                                           _%$%hd266940267532%_
                                           _%$%tl266941267534%_
                                           _%__splice267959267960%_
                                           _%$%target267001267035%_
                                           _%$%tl267003267037%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g266932267014%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g266932267014%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%$%tl266941267534%_))
                          (let ((_%__splice267959267960%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%$%tl266941267534%_
                                    '0))))
                            (let ((_%$%tl267003267037%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice267959267960%_
                                      '1)))
                                  (_%$%target267001267035%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice267959267960%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl267003267037%_))
                                  (_%__match268054268055%_
                                   _%$%e266936267521%_
                                   _%$%hd266937267524%_
                                   _%$%tl266938267526%_
                                   _%$%e266939267529%_
                                   _%$%hd266940267532%_
                                   _%$%tl266941267534%_
                                   _%__splice267959267960%_
                                   _%$%target267001267035%_
                                   _%$%tl267003267037%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g266932267014%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g266932267014%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%$%tl266941267534%_))
                  (let ((_%__splice267959267960%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%$%tl266941267534%_
                            '0))))
                    (let ((_%$%tl267003267037%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice267959267960%_ '1)))
                          (_%$%target267001267035%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice267959267960%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl267003267037%_))
                          (_%__match268054268055%_
                           _%$%e266936267521%_
                           _%$%hd266937267524%_
                           _%$%tl266938267526%_
                           _%$%e266939267529%_
                           _%$%hd266940267532%_
                           _%$%tl266941267534%_
                           _%__splice267959267960%_
                           _%$%target267001267035%_
                           _%$%tl267003267037%_)
                          (let ()
                            (declare (not safe))
                            (_%$%g266932267014%_)))))
                  (let () (declare (not safe)) (_%$%g266932267014%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl266941267534%_))
                                                      (let ((_%__splice267959267960%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl266941267534%_
                        '0))))
                (let ((_%$%tl267003267037%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice267959267960%_ '1)))
                      (_%$%target267001267035%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice267959267960%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl267003267037%_))
                      (_%__match268054268055%_
                       _%$%e266936267521%_
                       _%$%hd266937267524%_
                       _%$%tl266938267526%_
                       _%$%e266939267529%_
                       _%$%hd266940267532%_
                       _%$%tl266941267534%_
                       _%__splice267959267960%_
                       _%$%target267001267035%_
                       _%$%tl267003267037%_)
                      (let () (declare (not safe)) (_%$%g266932267014%_)))))
              (let () (declare (not safe)) (_%$%g266932267014%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%$%tl266941267534%_))
                                              (let ((_%__splice267959267960%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl266941267534%_
                                                        '0))))
                                                (let ((_%$%tl267003267037%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice267959267960%_
                                                          '1)))
                                                      (_%$%target267001267035%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice267959267960%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl267003267037%_))
                                                      (_%__match268054268055%_
                                                       _%$%e266936267521%_
                                                       _%$%hd266937267524%_
                                                       _%$%tl266938267526%_
                                                       _%$%e266939267529%_
                                                       _%$%hd266940267532%_
                                                       _%$%tl266941267534%_
                                                       _%__splice267959267960%_
                                                       _%$%target267001267035%_
                                                       _%$%tl267003267037%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g266932267014%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g266932267014%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl266941267534%_))
                                      (let ((_%__splice267959267960%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%tl266941267534%_
                                                '0))))
                                        (let ((_%$%tl267003267037%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice267959267960%_
                                                  '1)))
                                              (_%$%target267001267035%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice267959267960%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl267003267037%_))
                                              (_%__match268054268055%_
                                               _%$%e266936267521%_
                                               _%$%hd266937267524%_
                                               _%$%tl266938267526%_
                                               _%$%e266939267529%_
                                               _%$%hd266940267532%_
                                               _%$%tl266941267534%_
                                               _%__splice267959267960%_
                                               _%$%target267001267035%_
                                               _%$%tl267003267037%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g266932267014%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g266932267014%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g266932267014%_)))))
                  (let () (declare (not safe)) (_%$%g266932267014%_))))))))
    (define gxc#optimize-special-cast
      (lambda (_%self266732%_ _%stx266733%_)
        (let* ((_%__stx268057268058%_ _%stx266733%_)
               (_%$%g266737266777%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx268057268058%_)))))
          (let ((_%__kont268059268060%_
                 (lambda (_%$%g266739266893%_ _%$%g266740266894%_)
                   (let* ((_%descriptor-id266914%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%$%g266740266894%_)))
                          (_%descriptor-type266916%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type
                              _%descriptor-id266914%_)))
                          (_%object-type266918%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%$%g266739266893%_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _%descriptor-type266916%_
                            'gxc#!interface::t))
                         (if (and _%object-type266918%_
                                  (eq? (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%descriptor-type266916%_
                                          '1
                                          '#f
                                          '#f))
                                       (##structure-ref
                                        _%object-type266918%_
                                        '1
                                        gxc#!type::t
                                        '#f)))
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self266732%_
                                _%$%g266739266893%_))
                             (let ((__tmp268820
                                    (cons '%#call-unchecked
                                          (cons '(%#ref cast)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#ref))
                                                            (cons _%$%g266740266894%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self266732%_ _%$%g266739266893%_))
                    '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp268820
                                _%stx266733%_)))
                         (let ()
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"illegal cast; not an interface type"
                            _%stx266733%_
                            _%descriptor-type266916%_))))))
                (_%__kont268061268062%_
                 (lambda (_%$%g266759266821%_ _%$%g266760266822%_)
                   (let ((__tmp268821
                          (cons '%#call-unchecked
                                (cons '(%#ref cast)
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self266732%_
                                               _%$%g266760266822%_))
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self266732%_
                                                     _%$%g266759266821%_))
                                                  '()))))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp268821 _%stx266733%_))))
                (_%__kont268063268064%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"illegal cast; arity mismatch"
                      _%stx266733%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx268057268058%_))
                (let ((_%$%e266741266845%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx268057268058%_))))
                  (let ((_%$%tl266743266850%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e266741266845%_)))
                        (_%$%hd266742266848%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e266741266845%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl266743266850%_))
                        (let ((_%$%e266744266853%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl266743266850%_))))
                          (let ((_%$%tl266746266858%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e266744266853%_)))
                                (_%$%hd266745266856%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e266744266853%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl266746266858%_))
                                (let ((_%$%e266747266861%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl266746266858%_))))
                                  (let ((_%$%tl266749266866%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e266747266861%_)))
                                        (_%$%hd266748266864%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e266747266861%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd266748266864%_))
                                        (let ((_%$%e266750266869%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd266748266864%_))))
                                          (let ((_%$%tl266752266874%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e266750266869%_)))
                                                (_%$%hd266751266872%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e266750266869%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd266751266872%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%$%hd266751266872%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl266752266874%_))
                                                        (let ((_%$%e266753266877%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl266752266874%_))))
                  (let ((_%$%tl266755266882%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e266753266877%_)))
                        (_%$%hd266754266880%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e266753266877%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl266755266882%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl266749266866%_))
                            (let ((_%$%e266756266885%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl266749266866%_))))
                              (let ((_%$%tl266758266890%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e266756266885%_)))
                                    (_%$%hd266757266888%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e266756266885%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl266758266890%_))
                                    (_%__kont268059268060%_
                                     _%$%hd266757266888%_
                                     _%$%hd266754266880%_)
                                    (_%__kont268063268064%_))))
                            (_%__kont268063268064%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl266749266866%_))
                            (let ((_%$%e266770266813%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl266749266866%_))))
                              (let ((_%$%tl266772266818%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e266770266813%_)))
                                    (_%$%hd266771266816%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e266770266813%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl266772266818%_))
                                    (_%__kont268061268062%_
                                     _%$%hd266771266816%_
                                     _%$%hd266748266864%_)
                                    (_%__kont268063268064%_))))
                            (_%__kont268063268064%_)))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%$%tl266749266866%_))
                    (let ((_%$%e266770266813%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl266749266866%_))))
                      (let ((_%$%tl266772266818%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e266770266813%_)))
                            (_%$%hd266771266816%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e266770266813%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl266772266818%_))
                            (_%__kont268061268062%_
                             _%$%hd266771266816%_
                             _%$%hd266748266864%_)
                            (_%__kont268063268064%_))))
                    (_%__kont268063268064%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl266749266866%_))
                                                        (let ((_%$%e266770266813%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl266749266866%_))))
                  (let ((_%$%tl266772266818%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e266770266813%_)))
                        (_%$%hd266771266816%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e266770266813%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl266772266818%_))
                        (_%__kont268061268062%_
                         _%$%hd266771266816%_
                         _%$%hd266748266864%_)
                        (_%__kont268063268064%_))))
                (_%__kont268063268064%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl266749266866%_))
                                                    (let ((_%$%e266770266813%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl266749266866%_))))
                                                      (let ((_%$%tl266772266818%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e266770266813%_)))
                    (_%$%hd266771266816%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e266770266813%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl266772266818%_))
                    (_%__kont268061268062%_
                     _%$%hd266771266816%_
                     _%$%hd266748266864%_)
                    (_%__kont268063268064%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont268063268064%_)))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl266749266866%_))
                                            (let ((_%$%e266770266813%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl266749266866%_))))
                                              (let ((_%$%tl266772266818%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e266770266813%_)))
                                                    (_%$%hd266771266816%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e266770266813%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl266772266818%_))
                                                    (_%__kont268061268062%_
                                                     _%$%hd266771266816%_
                                                     _%$%hd266748266864%_)
                                                    (_%__kont268063268064%_))))
                                            (_%__kont268063268064%_)))))
                                (_%__kont268063268064%_))))
                        (_%__kont268063268064%_))))
                (_%__kont268063268064%_))))))
    (define gxc#special-procedure-optimizers
      (let ((_%ht266729%_
             (let () (declare (not safe)) (make-hash-table-eq 'size: '1))))
        (let ()
          (declare (not safe))
          (__hash-put! _%ht266729%_ 'cast gxc#optimize-special-cast))
        _%ht266729%_))
    (define gxc#!procedure::optimize-call
      (lambda (_%self266691%_ _%ctx266692%_ _%stx266693%_ _%args266694%_)
        (let ((_%self266697%_ _%self266691%_))
          (if (let ((__method268782
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self266697%_ 'check-arguments))))
                (if __method268782
                    (let ()
                      (declare (not safe))
                      (__method268782
                       _%self266697%_
                       _%ctx266692%_
                       _%stx266693%_
                       _%args266694%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self266697%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature266707%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self266697%_ '2 '#f '#f)))
                     (_%signature266709%_ _%signature266707%_)
                     (_%$e266719%_
                      (if _%signature266709%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature266709%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e266719%_
                    (if (let ()
                          (declare (not safe))
                          (gxc#symbol-in-local-scope? _%$e266719%_))
                        (let ((__tmp268822
                               (cons '%#call
                                     (cons (cons '%#ref
                                                 (cons _%$e266719%_ '()))
                                           (map (lambda (_%$%g266723266725%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%ctx266692%_
                                                     _%$%g266723266725%_)))
                                                _%args266694%_)))))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp268822
                           _%stx266693%_
                           _%ctx266692%_))
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx266692%_ _%stx266693%_)))
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx266692%_ _%stx266693%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx266692%_ _%stx266693%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass267806 __method-table267807)
        (let ((__check-arguments267808
               (let ((__tmp268823
                      (lambda ()
                        (let ((__method267809
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table267807
                                  'check-arguments
                                  '#f))))
                          (if __method267809
                              __method267809
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp268823))))
          (lambda (_%self266691%_ _%ctx266692%_ _%stx266693%_ _%args266694%_)
            (let ((_%self266697%_ _%self266691%_))
              (if ((force __check-arguments267808)
                   _%self266697%_
                   _%ctx266692%_
                   _%stx266693%_
                   _%args266694%_)
                  (let* ((_%signature266707%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self266697%_
                             '2
                             '#f
                             '#f)))
                         (_%signature266709%_ _%signature266707%_)
                         (_%$e266719%_
                          (if _%signature266709%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature266709%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e266719%_
                        (if (let ()
                              (declare (not safe))
                              (gxc#symbol-in-local-scope? _%$e266719%_))
                            (let ((__tmp268824
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%$e266719%_ '()))
                                               (map (lambda (_%$%g266723266725%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%ctx266692%_
                                                         _%$%g266723266725%_)))
                                                    _%args266694%_)))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp268824
                               _%stx266693%_
                               _%ctx266692%_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _%ctx266692%_ _%stx266693%_)))
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx266692%_ _%stx266693%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx266692%_ _%stx266693%_))))))))
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
      (lambda (_%self266444%_ _%ctx266445%_ _%stx266446%_ _%args266447%_)
        (let* ((_%self266450%_ _%self266444%_)
               (_%$%signature266459266461%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self266450%_ '2 '#f '#f))))
          (if _%$%signature266459266461%_
              (let* ((_%signature266463%_ _%$%signature266459266461%_)
                     (_%$%argument-types266464266466%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature266463%_
                         '3
                         '#f
                         '#f))))
                (if _%$%argument-types266464266466%_
                    (let* ((_%argument-types266468%_
                            _%$%argument-types266464266466%_)
                           (_%argument-types266473%_
                            (let ((__tmp268825
                                   (lambda (_%t266471%_)
                                     (if _%t266471%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx266446%_
                                            _%t266471%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp268825
                               _%argument-types266468%_))))
                      (let _%loop266475%_ ((_%rest-args266477%_ _%args266447%_)
                                           (_%rest-types266478%_
                                            _%argument-types266473%_)
                                           (_%result266479%_ '#t))
                        (let* ((_%$%rest-args266480266488%_
                                _%rest-args266477%_)
                               (_%$%else266482266496%_
                                (lambda () _%result266479%_))
                               (_%$%K266484266557%_
                                (lambda (_%rest-args266499%_ _%arg266500%_)
                                  (let* ((_%$%rest-types266501266512%_
                                          _%rest-types266478%_)
                                         (_%$%E266505266516%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%$%rest-types266501266512%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%$%K266508266545%_
                                           (lambda (_%rest-types266542%_
                                                    _%type266543%_)
                                             (_%loop266475%_
                                              _%rest-args266499%_
                                              _%rest-types266542%_
                                              (if (gxc#check-expression-type!
                                                   _%stx266446%_
                                                   _%arg266500%_
                                                   _%type266543%_)
                                                  _%result266479%_
                                                  '#f))))
                                          (_%$%K266507266536%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx266446%_
                                                _%argument-types266473%_))))
                                          (_%$%K266506266526%_
                                           (lambda (_%tail-type266520%_)
                                             (if (let ((__tmp268826
                                                        (lambda (_%$%g266521266523%_)
                                                          (gxc#check-expression-type!
                                                           _%stx266446%_
                                                           _%$%g266521266523%_
                                                           _%tail-type266520%_))))
                                                   (declare (not safe))
                                                   (andmap__0
                                                    __tmp268826
                                                    _%rest-args266499%_))
                                                 _%result266479%_
                                                 '#f))))
                                      (let ((_%$%try-match266503266539%_
                                             (lambda ()
                                               (if (null? _%$%rest-types266501266512%_)
                                                   (_%$%K266507266536%_)
                                                   (let ((_%tail-type266529%_
                                                          _%$%rest-types266501266512%_))
                                                     (_%$%K266506266526%_
                                                      _%tail-type266529%_))))))
                                        (if (pair? _%$%rest-types266501266512%_)
                                            (let ((_%$%tl266510266550%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%rest-types266501266512%_)))
                                                  (_%$%hd266509266548%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%rest-types266501266512%_))))
                                              (let ((_%type266553%_
                                                     _%$%hd266509266548%_)
                                                    (_%rest-types266555%_
                                                     _%$%tl266510266550%_))
                                                (_%$%K266508266545%_
                                                 _%rest-types266555%_
                                                 _%type266553%_)))
                                            (_%$%try-match266503266539%_))))))))
                          (if (pair? _%$%rest-args266480266488%_)
                              (let ((_%$%hd266485266560%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest-args266480266488%_)))
                                    (_%$%tl266486266562%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest-args266480266488%_))))
                                (let* ((_%arg266565%_ _%$%hd266485266560%_)
                                       (_%rest-args266567%_
                                        _%$%tl266486266562%_))
                                  (_%$%K266484266557%_
                                   _%rest-args266567%_
                                   _%arg266565%_)))
                              (_%$%else266482266496%_)))))
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
      (lambda (_%self266247%_ _%ctx266248%_ _%stx266249%_ _%args266250%_)
        (let* ((_%self266253%_ _%self266247%_)
               (_%$%g266263266273%_
                (lambda (_%$%g266264266270%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g266264266270%_))))
               (_%$%g266262266319%_
                (lambda (_%$%g266264266276%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g266264266276%_))
                      (let ((_%$%e266266266278%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g266264266276%_))))
                        (let ((_%$%hd266267266281%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e266266266278%_)))
                              (_%$%tl266268266283%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e266266266278%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl266268266283%_))
                              (let* ((_%klass266298%_
                                      (let ((__tmp268827
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self266253%_
                                                '1
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx266249%_
                                         __tmp268827)))
                                     (_%object266300%_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%ctx266248%_
                                         _%$%hd266267266281%_)))
                                     (_%instance?266305%_
                                      (let ((_%$e266302%_
                                             (gxc#expression-type?
                                              _%object266300%_
                                              _%klass266298%_)))
                                        (if _%$e266302%_
                                            _%$e266302%_
                                            (gxc#expression-type?
                                             _%$%hd266267266281%_
                                             _%klass266298%_))))
                                     (_%incompatible?266310%_
                                      (let ((_%$e266307%_
                                             (gxc#incompatible-type?
                                              _%object266300%_
                                              _%klass266298%_)))
                                        (if _%$e266307%_
                                            _%$e266307%_
                                            (gxc#incompatible-type?
                                             _%$%hd266267266281%_
                                             _%klass266298%_)))))
                                (if _%instance?266305%_
                                    (let ((__tmp268828
                                           (if (or (gxc#expression-no-side-effects?
                                                    _%object266300%_)
                                                   (gxc#expression-no-side-effects?
                                                    _%$%hd266267266281%_))
                                               (cons '%#quote (cons '#t '()))
                                               (cons '%#begin
                                                     (cons _%object266300%_
                                                           (cons '(%#quote #t)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp268828
                                       _%stx266249%_))
                                    (if _%incompatible?266310%_
                                        (cons '%#quote (cons '#f '()))
                                        (let ()
                                          (declare (not safe))
                                          (gxc#xform-call%
                                           _%ctx266248%_
                                           _%stx266249%_)))))
                              (_%$%g266263266273%_ _%$%g266264266276%_))))
                      (_%$%g266263266273%_ _%$%g266264266276%_)))))
          (_%$%g266262266319%_ _%args266250%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self266036%_ _%ctx266037%_ _%stx266038%_ _%args266039%_)
        (let* ((_%self266042%_ _%self266036%_)
               (_%$%g266052266062%_
                (lambda (_%$%g266053266059%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g266053266059%_))))
               (_%$%g266051266122%_
                (lambda (_%$%g266053266065%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g266053266065%_))
                      (let ((_%$%e266055266067%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g266053266065%_))))
                        (let ((_%$%hd266056266070%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e266055266067%_)))
                              (_%$%tl266057266072%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e266055266067%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl266057266072%_))
                              (let* ((_%klass266087%_
                                      (let ((__tmp268829
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self266042%_
                                                '1
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx266038%_
                                         __tmp268829)))
                                     (_%object266089%_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%ctx266037%_
                                         _%$%hd266056266070%_)))
                                     (_%instance?266094%_
                                      (let ((_%$e266091%_
                                             (gxc#expression-type?
                                              _%object266089%_
                                              _%klass266087%_)))
                                        (if _%$e266091%_
                                            _%$e266091%_
                                            (gxc#expression-type?
                                             _%$%hd266056266070%_
                                             _%klass266087%_))))
                                     (_%incompatible?266099%_
                                      (let ((_%$e266096%_
                                             (gxc#incompatible-type?
                                              _%object266089%_
                                              _%klass266087%_)))
                                        (if _%$e266096%_
                                            _%$e266096%_
                                            (gxc#incompatible-type?
                                             _%$%hd266056266070%_
                                             _%klass266087%_))))
                                     (_%klass266102%_ _%klass266087%_))
                                (if _%instance?266094%_
                                    (let ((__tmp268830
                                           (if (or (gxc#expression-no-side-effects?
                                                    _%object266089%_)
                                                   (gxc#expression-no-side-effects?
                                                    _%$%hd266056266070%_))
                                               (cons '%#quote (cons '#t '()))
                                               (cons '%#begin
                                                     (cons _%object266089%_
                                                           (cons '(%#quote #t)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp268830
                                       _%stx266038%_))
                                    (if _%incompatible?266099%_
                                        (cons '%#quote (cons '#f '()))
                                        (if (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass266102%_
                                               '8
                                               '#f
                                               '#f))
                                            (let ((__tmp268831
                                                   (cons '%#struct-direct-instance?
                                                         (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass266102%_
                                      '1
                                      '#f
                                      '#f))
                                   '()))
                       (cons _%object266089%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp268831
                                               _%stx266038%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass266102%_
                                                   '7
                                                   '#f
                                                   '#f))
                                                (let ((__tmp268832
                                                       (cons '%#struct-instance?
                                                             (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass266102%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons _%object266089%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp268832
                                                   _%stx266038%_))
                                                (let ((__tmp268833
                                                       (cons '%#call
                                                             (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons 'class-instance? '()))
                           (cons (cons '%#ref
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self266042%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons _%object266089%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp268833
                                                   _%stx266038%_)))))))
                              (_%$%g266052266062%_ _%$%g266053266065%_))))
                      (_%$%g266052266062%_ _%$%g266053266065%_)))))
          (_%$%g266051266122%_ _%args266039%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx265704%_)
        (let* ((_%__stx268144268145%_ _%stx265704%_)
               (_%$%g265709265750%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx268144268145%_)))))
          (let ((_%__kont268146268147%_ (lambda () '#t))
                (_%__kont268148268149%_ (lambda () '#t))
                (_%__kont268150268151%_
                 (lambda (_%$%g265723265816%_ _%$%g265724265817%_)
                   (let ((_%$%rator-type265838265840%_
                          (let ((__tmp268834
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol
                                    _%$%g265724265817%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp268834))))
                     (if _%$%rator-type265838265840%_
                         (let* ((_%rator-type265842%_
                                 _%$%rator-type265838265840%_)
                                (_%$%rator-signature265843265845%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type265842%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type265842%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%$%rator-signature265843265845%_
                               (let* ((_%rator-signature265847%_
                                       _%$%rator-signature265843265845%_)
                                      (_%$%rator-effect265848265850%_
                                       (if _%rator-signature265847%_
                                           (##direct-structure-ref
                                            _%rator-signature265847%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%$%rator-effect265848265850%_
                                     (let ((_%rator-effect265852%_
                                            _%$%rator-effect265848265850%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect265852%_)
                                               (equal? '(alloc)
                                                       _%rator-effect265852%_))
                                           (let ((__tmp268835
                                                  (let ((__tmp268836
                                                         (lambda (_%$%g265857265860%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g265858265862%_)
                   (cons _%$%g265857265860%_ _%$%g265858265862%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp268836
                                                     '()
                                                     _%$%g265723265816%_))))
                                             (declare (not safe))
                                             (andmap__0
                                              gxc#expression-no-side-effects?
                                              __tmp268835))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont268154268155%_ (lambda () '#f)))
            (let ((_%__match268233268234%_
                   (lambda (_%$%e265725265762%_
                            _%$%hd265726265765%_
                            _%$%tl265727265767%_
                            _%$%e265728265770%_
                            _%$%hd265729265773%_
                            _%$%tl265730265775%_
                            _%$%e265731265778%_
                            _%$%hd265732265781%_
                            _%$%tl265733265783%_
                            _%$%e265734265786%_
                            _%$%hd265735265789%_
                            _%$%tl265736265791%_
                            _%__splice268152268153%_
                            _%$%target265737265794%_
                            _%$%tl265739265796%_)
                     (letrec ((_%$%loop265740265799%_
                               (lambda (_%$%hd265738265802%_
                                        _%$%rand265744265804%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd265738265802%_))
                                     (let ((_%$%e265741265806%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd265738265802%_))))
                                       (let ((_%$%lp-tl265743265811%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e265741265806%_)))
                                             (_%$%lp-hd265742265809%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e265741265806%_))))
                                         (_%$%loop265740265799%_
                                          _%$%lp-tl265743265811%_
                                          (cons _%$%lp-hd265742265809%_
                                                _%$%rand265744265804%_))))
                                     (let ((_%$%rand265745265814%_
                                            (reverse _%$%rand265744265804%_)))
                                       (_%__kont268150268151%_
                                        _%$%rand265745265814%_
                                        _%$%hd265735265789%_))))))
                       (_%$%loop265740265799%_
                        _%$%target265737265794%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx268144268145%_))
                  (let ((_%$%e265711265893%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx268144268145%_))))
                    (let ((_%$%tl265713265898%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e265711265893%_)))
                          (_%$%hd265712265896%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e265711265893%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%$%hd265712265896%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%$%hd265712265896%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl265713265898%_))
                                  (let ((_%$%e265714265901%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl265713265898%_))))
                                    (let ((_%$%tl265716265906%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e265714265901%_)))
                                          (_%$%hd265715265904%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e265714265901%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl265716265906%_))
                                          (_%__kont268146268147%_)
                                          (_%__kont268154268155%_))))
                                  (_%__kont268154268155%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%$%hd265712265896%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl265713265898%_))
                                      (let ((_%$%e265720265878%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl265713265898%_))))
                                        (let ((_%$%tl265722265883%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e265720265878%_)))
                                              (_%$%hd265721265881%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e265720265878%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl265722265883%_))
                                              (_%__kont268148268149%_)
                                              (_%__kont268154268155%_))))
                                      (_%__kont268154268155%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%$%hd265712265896%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl265713265898%_))
                                          (let ((_%$%e265728265770%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl265713265898%_))))
                                            (let ((_%$%tl265730265775%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e265728265770%_)))
                                                  (_%$%hd265729265773%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e265728265770%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd265729265773%_))
                                                  (let ((_%$%e265731265778%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd265729265773%_))))
                                                    (let ((_%$%tl265733265783%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e265731265778%_)))
                                                          (_%$%hd265732265781%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e265731265778%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd265732265781%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%$%hd265732265781%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl265733265783%_))
                          (let ((_%$%e265734265786%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl265733265783%_))))
                            (let ((_%$%tl265736265791%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e265734265786%_)))
                                  (_%$%hd265735265789%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e265734265786%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl265736265791%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl265730265775%_))
                                      (let ((_%__splice268152268153%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%tl265730265775%_
                                                '0))))
                                        (let ((_%$%tl265739265796%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice268152268153%_
                                                  '1)))
                                              (_%$%target265737265794%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice268152268153%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl265739265796%_))
                                              (_%__match268233268234%_
                                               _%$%e265711265893%_
                                               _%$%hd265712265896%_
                                               _%$%tl265713265898%_
                                               _%$%e265728265770%_
                                               _%$%hd265729265773%_
                                               _%$%tl265730265775%_
                                               _%$%e265731265778%_
                                               _%$%hd265732265781%_
                                               _%$%tl265733265783%_
                                               _%$%e265734265786%_
                                               _%$%hd265735265789%_
                                               _%$%tl265736265791%_
                                               _%__splice268152268153%_
                                               _%$%target265737265794%_
                                               _%$%tl265739265796%_)
                                              (_%__kont268154268155%_))))
                                      (_%__kont268154268155%_))
                                  (_%__kont268154268155%_))))
                          (_%__kont268154268155%_))
                      (_%__kont268154268155%_))
                  (_%__kont268154268155%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont268154268155%_))))
                                          (_%__kont268154268155%_))
                                      (_%__kont268154268155%_))))
                          (_%__kont268154268155%_))))
                  (_%__kont268154268155%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx265699%_ _%klass265700%_)
        (let ((_%expr-type265702%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx265699%_))))
          (if _%expr-type265702%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type265702%_ _%klass265700%_))
              '#f))))
    (define gxc#incompatible-type?
      (lambda (_%expr265683%_ _%type265684%_)
        (if (not _%type265684%_)
            '#f
            (if (eq? (##structure-ref _%type265684%_ '1 gxc#!type::t '#f) 't)
                '#f
                (if (eq? (##structure-ref _%type265684%_ '1 gxc#!type::t '#f)
                         'false)
                    '#f
                    (let ((_%expr-type265690%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr265683%_))))
                      (if (not _%expr-type265690%_)
                          '#f
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type265690%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              '#f
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%expr-type265690%_
                                     'gxc#!abort::t))
                                  '#f
                                  (if (let ()
                                        (declare (not safe))
                                        (gxc#!type-subtype?
                                         _%expr-type265690%_
                                         _%type265684%_))
                                      '#f
                                      (if (let ()
                                            (declare (not safe))
                                            (gxc#!interface-instance?
                                             _%type265684%_))
                                          '#f
                                          (if (let ()
                                                (declare (not safe))
                                                (gxc#!type-subtype?
                                                 _%type265684%_
                                                 _%expr-type265690%_))
                                              '#f
                                              '#t))))))))))))
    (define gxc#check-expression-type!
      (lambda (_%stx265661%_ _%expr265662%_ _%type265663%_)
        (if (not _%type265663%_)
            '#f
            (let ((_%$e265666%_
                   (eq? (##structure-ref _%type265663%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e265666%_
                  _%$e265666%_
                  (let ((_%expr-type265670%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr265662%_))))
                    (if (not _%expr-type265670%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type265670%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e265674%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type265670%_
                                      'gxc#!abort::t))))
                              (if _%$e265674%_
                                  _%$e265674%_
                                  (let ((_%$e265677%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type265670%_
                                            _%type265663%_))))
                                    (if _%$e265677%_
                                        _%$e265677%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type265663%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type265663%_
                                                   _%expr-type265670%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx265661%_
                                                   _%expr265662%_
                                                   _%expr-type265670%_
                                                   _%type265663%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self265475%_ _%ctx265476%_ _%stx265477%_ _%args265478%_)
        (let* ((_%self265481%_ _%self265475%_)
               (_%klass265491%_
                (let ((__tmp268837
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self265481%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx265477%_ __tmp268837)))
               (_%fields265493%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass265491%_
                           '5
                           '#f
                           '#f))))
               (_%args265499%_
                (map (lambda (_%$%g265494265496%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx265476%_ _%$%g265494265496%_)))
                     _%args265478%_))
               (_%inline-make-object265501%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self265481%_
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
                           _%self265481%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields265493%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass265504%_ _%klass265491%_)
               (_%$e265518%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass265504%_ '6 '#f '#f))))
          (if _%$e265518%_
              (let ((_%$obj265523%_
                     (let ((__tmp268838
                            (let () (declare (not safe)) (##gensym '__obj))))
                       (declare (not safe))
                       (make-symbol__0 __tmp268838)))
                    (_%ctor-impl265524%_
                     (let ()
                       (declare (not safe))
                       (gxc#!class-lookup-method
                        _%klass265504%_
                        _%$e265518%_))))
                (let ((__tmp268839
                       (cons '%#let-values
                             (cons (cons (cons (cons _%$obj265523%_ '())
                                               (cons _%inline-make-object265501%_
                                                     '()))
                                         '())
                                   (cons (cons '%#begin
                                               (cons (if _%ctor-impl265524%_
                                                         (let ((__tmp268840
                                                                (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref
                                          (cons _%ctor-impl265524%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj265523%_ '()))
                                          _%args265499%_)))))
                   (declare (not safe))
                   (gxc#xform-wrap-apply
                    __tmp268840
                    _%stx265477%_
                    _%ctx265476%_))
                 (let ((_%$ctor265526%_
                        (let ((__tmp268841
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__constructor))))
                          (declare (not safe))
                          (make-symbol__0 __tmp268841))))
                   (cons '%#let-values
                         (cons (cons (cons (cons _%$ctor265526%_ '())
                                           (cons (cons '%#call
                                                       (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'direct-method-ref '()))
                     (cons (cons '%#ref
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self265481%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#ref (cons _%$obj265523%_ '()))
                                 (cons (cons '%#quote (cons _%$e265518%_ '()))
                                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons (cons '%#if
                                           (cons (cons '%#ref
                                                       (cons _%$ctor265526%_
                                                             '()))
                                                 (cons (cons '%#call
                                                             (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%$ctor265526%_ '()))
                           (cons (cons '%#ref (cons _%$obj265523%_ '()))
                                 _%args265499%_)))
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
                         (##unchecked-structure-ref _%self265481%_ '1 '#f '#f))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons '%#quote
                                                               (cons 'method:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote (cons _%$e265518%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$obj265523%_ '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp268839 _%stx265477%_)))
              (let ((_%$e265528%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass265504%_
                        '10
                        '#f
                        '#f))))
                (if _%$e265528%_
                    (let* ((_%$obj265533%_
                            (let ((__tmp268842
                                   (let ()
                                     (declare (not safe))
                                     (##gensym '__obj))))
                              (declare (not safe))
                              (make-symbol__0 __tmp268842)))
                           (_%metakons265535%_
                            (let ((__tmp268843
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx265477%_
                                      _%$e265528%_))))
                              (declare (not safe))
                              (gxc#!class-lookup-method
                               __tmp268843
                               'instance-init!)))
                           (__tmp268844
                            (cons '%#let-values
                                  (cons (cons (cons (cons _%$obj265533%_ '())
                                                    (cons _%inline-make-object265501%_
                                                          '()))
                                              '())
                                        (cons (cons '%#begin
                                                    (cons (if _%metakons265535%_
                                                              (let ((__tmp268845
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons _%metakons265535%_ '()))
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self265481%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$obj265533%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%args265499%_))))))
                        (declare (not safe))
                        (gxc#xform-wrap-apply
                         __tmp268845
                         _%stx265477%_
                         _%ctx265476%_))
                      (cons '%#call
                            (cons (cons '%#ref (cons 'call-method '()))
                                  (cons (cons '%#ref
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self265481%_
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '()))
                                        (cons (cons '%#quote
                                                    (cons 'instance-init! '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj265533%_
                                                                '()))
                                                    _%args265499%_))))))
                  (cons (cons '%#ref (cons _%$obj265533%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp268844 _%stx265477%_))
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass265504%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp268846
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args265499%_))))
                              (declare (not safe))
                              (##fx= __tmp268846 _%fields265493%_))
                            (let ((__tmp268847
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self265481%_
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
                                              _%self265481%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args265499%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp268847
                               _%stx265477%_))
                            (let ((__tmp268849
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self265481%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp268848
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass265504%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx265477%_
                               __tmp268849
                               __tmp268848)))
                        (let ((_%$obj265540%_
                               (let ((__tmp268850
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp268850))))
                          (let _%lp265542%_ ((_%rest265544%_ _%args265499%_)
                                             (_%initializers265545%_ '()))
                            (let* ((_%__stx268236268237%_ _%rest265544%_)
                                   (_%$%g265549265570%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx268236268237%_)))))
                              (let ((_%__kont268238268239%_
                                     (lambda (_%$%g265551265624%_
                                              _%$%g265552265625%_
                                              _%$%g265553265626%_)
                                       (let* ((_%slot265653%_
                                               (let ((__tmp268851
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%g265553265626%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp268851)))
                                              (_%off265655%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass265504%_
                                                  _%slot265653%_))))
                                         (if _%off265655%_
                                             (_%lp265542%_
                                              _%$%g265551265624%_
                                              (cons (cons _%off265655%_
                                                          _%$%g265552265625%_)
                                                    _%initializers265545%_))
                                             (let ((__tmp268852
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self265481%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx265477%_
                                                __tmp268852
                                                _%slot265653%_))))))
                                    (_%__kont268240268241%_
                                     (lambda ()
                                       (let ((__tmp268853
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj265540%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object265501%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp268855
                                     (let ((__tmp268856
                                            (lambda (_%i265584%_ _%r265585%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self265481%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i265584%_) '()))
                              (cons (cons '%#ref (cons _%$obj265540%_ '()))
                                    (cons (cdr _%i265584%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r265585%_))))
                                       (declare (not safe))
                                       (foldl__0
                                        __tmp268856
                                        '()
                                        _%initializers265545%_)))
                                    (__tmp268854
                                     (cons (cons '%#ref
                                                 (cons _%$obj265540%_ '()))
                                           '())))
                                (declare (not safe))
                                (##append __tmp268855 __tmp268854)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp268853
                                          _%stx265477%_))))
                                    (_%__kont268242268243%_
                                     (lambda ()
                                       (let ((__tmp268857
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj265540%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object265501%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj265540%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args265499%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj265540%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp268857
                                          _%stx265477%_)))))
                                (let* ((_%$%g265547265587%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx268236268237%_))
                                              (_%__kont268240268241%_)
                                              (_%__kont268242268243%_))))
                                       (_%__match268273268274%_
                                        (lambda (_%$%e265554265592%_
                                                 _%$%hd265555265595%_
                                                 _%$%tl265556265597%_
                                                 _%$%e265557265600%_
                                                 _%$%hd265558265603%_
                                                 _%$%tl265559265605%_
                                                 _%$%e265560265608%_
                                                 _%$%hd265561265611%_
                                                 _%$%tl265562265613%_
                                                 _%$%e265563265616%_
                                                 _%$%hd265564265619%_
                                                 _%$%tl265565265621%_)
                                          (let ((_%$%g265551265624%_
                                                 _%$%tl265565265621%_)
                                                (_%$%g265552265625%_
                                                 _%$%hd265564265619%_)
                                                (_%$%g265553265626%_
                                                 _%$%hd265561265611%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%$%g265553265626%_))
                                                (_%__kont268238268239%_
                                                 _%$%g265551265624%_
                                                 _%$%g265552265625%_
                                                 _%$%g265553265626%_)
                                                (_%__kont268242268243%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx268236268237%_))
                                      (let ((_%$%e265554265592%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx268236268237%_))))
                                        (let ((_%$%tl265556265597%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e265554265592%_)))
                                              (_%$%hd265555265595%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e265554265592%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%hd265555265595%_))
                                              (let ((_%$%e265557265600%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd265555265595%_))))
                                                (let ((_%$%tl265559265605%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e265557265600%_)))
                                                      (_%$%hd265558265603%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e265557265600%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%$%hd265558265603%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%$%hd265558265603%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl265559265605%_))
                      (let ((_%$%e265560265608%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl265559265605%_))))
                        (let ((_%$%tl265562265613%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e265560265608%_)))
                              (_%$%hd265561265611%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e265560265608%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl265562265613%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl265556265597%_))
                                  (let ((_%$%e265563265616%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl265556265597%_))))
                                    (let ((_%$%tl265565265621%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e265563265616%_)))
                                          (_%$%hd265564265619%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e265563265616%_))))
                                      (_%__match268273268274%_
                                       _%$%e265554265592%_
                                       _%$%hd265555265595%_
                                       _%$%tl265556265597%_
                                       _%$%e265557265600%_
                                       _%$%hd265558265603%_
                                       _%$%tl265559265605%_
                                       _%$%e265560265608%_
                                       _%$%hd265561265611%_
                                       _%$%tl265562265613%_
                                       _%$%e265563265616%_
                                       _%$%hd265564265619%_
                                       _%$%tl265565265621%_)))
                                  (_%__kont268242268243%_))
                              (_%__kont268242268243%_))))
                      (_%__kont268242268243%_))
                  (_%__kont268242268243%_))
              (_%__kont268242268243%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont268242268243%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g265547265587%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::check-arguments
      (lambda (_%self265337%_ _%ctx265338%_ _%stx265339%_ _%args265340%_)
        (let ((_%self265343%_ _%self265337%_))
          (if (let ()
                (declare (not safe))
                (##unchecked-structure-ref _%self265343%_ '4 '#f '#f))
              (gxc#!procedure::check-arguments
               _%self265343%_
               _%ctx265338%_
               _%stx265339%_
               _%args265340%_)
              '#t))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!accessor::t
       'check-arguments
       gxc#!accessor::check-arguments
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self265120%_ _%ctx265121%_ _%stx265122%_ _%args265123%_)
        (let* ((_%self265126%_ _%self265120%_)
               (_%arguments-ok?265136%_
                (let ((__method268783
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self265126%_ 'check-arguments))))
                  (if __method268783
                      (let ()
                        (declare (not safe))
                        (__method268783
                         _%self265126%_
                         _%ctx265121%_
                         _%stx265122%_
                         _%args265123%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self265126%_
                                 'check-arguments))
                        '#!void))))
               (_%$%g265138265148%_
                (lambda (_%$%g265139265145%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g265139265145%_))))
               (_%$%g265137265212%_
                (lambda (_%$%g265139265151%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g265139265151%_))
                      (let ((_%$%e265141265153%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g265139265151%_))))
                        (let ((_%$%hd265142265156%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e265141265153%_)))
                              (_%$%tl265143265158%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e265141265153%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl265143265158%_))
                              (let* ((_%klass265174%_
                                      (let ((__tmp268858
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self265126%_
                                                '1
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx265122%_
                                         __tmp268858)))
                                     (_%field265176%_
                                      (let ((__tmp268859
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self265126%_
                                                '3
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#!class-slot->field-offset
                                         _%klass265174%_
                                         __tmp268859)))
                                     (_%object265178%_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%ctx265121%_
                                         _%$%hd265142265156%_)))
                                     (_%klass265181%_ _%klass265174%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass265181%_
                                       '8
                                       '#f
                                       '#f))
                                    (let ((__tmp268860
                                           (cons (if (or _%arguments-ok?265136%_
                                                         (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%self265126%_
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
                              _%self265126%_
                              '1
                              '#f
                              '#f))
                           '()))
               (cons (cons '%#quote (cons _%field265176%_ '()))
                     (cons _%object265178%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp268860
                                       _%stx265122%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass265181%_
                                           '7
                                           '#f
                                           '#f))
                                        (let ((__tmp268861
                                               (cons (if (or _%arguments-ok?265136%_
                                                             (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self265126%_
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
                                  _%self265126%_
                                  '1
                                  '#f
                                  '#f))
                               '()))
                   (cons (cons '%#quote (cons _%field265176%_ '()))
                         (cons _%object265178%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp268861
                                           _%stx265122%_))
                                        (let ((_%$e265200%_
                                               (let ((__tmp268862
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self265126%_
                                                         '3
                                                         '#f
                                                         '#f))))
                                                 (declare (not safe))
                                                 (gxc#!class-slot-find-struct
                                                  _%klass265181%_
                                                  __tmp268862))))
                                          (if _%$e265200%_
                                              (let ((__tmp268863
                                                     (cons (if (or _%arguments-ok?265136%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (not (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self265126%_
                                   '4
                                   '#f
                                   '#f))))
                       '%#struct-unchecked-ref
                       '%#struct-ref)
                   (cons (cons '%#ref
                               (cons (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self265126%_
                                        '1
                                        '#f
                                        '#f))
                                     '()))
                         (cons (cons '%#quote (cons _%field265176%_ '()))
                               (cons _%object265178%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp268863
                                                 _%stx265122%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self265126%_
                                                     '4
                                                     '#f
                                                     '#f))
                                                  (let ((__tmp268864
                                                         (let ((_%$obj265209%_
                                                                (let ((__tmp268865
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp268865))))
                   (cons '%#let-values
                         (cons (cons (cons (cons _%$obj265209%_ '())
                                           (cons _%object265178%_ '()))
                                     '())
                               (cons (cons '%#if
                                           (cons (cons '%#struct-direct-instance?
                                                       (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass265181%_
                                    '1
                                    '#f
                                    '#f))
                                 '()))
                     (cons (cons '%#ref (cons _%$obj265209%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons '%#struct-unchecked-ref
                                                             (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self265126%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#quote (cons _%field265176%_ '()))
                                 (cons (cons '%#ref (cons _%$obj265209%_ '()))
                                       '()))))
               (cons (if _%arguments-ok?265136%_
                         (cons '%#call
                               (cons (cons '%#ref
                                           (cons 'unchecked-slot-ref '()))
                                     (cons (cons '%#ref
                                                 (cons _%$obj265209%_ '()))
                                           (cons (cons '%#quote
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self265126%_ '3 '#f '#f))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'class-slot-ref '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self265126%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#ref
                                                       (cons _%$obj265209%_
                                                             '()))
                                                 (cons (cons '%#quote
                                                             (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%self265126%_
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
                                                     __tmp268864
                                                     _%stx265122%_))
                                                  (let ((__tmp268866
                                                         (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'unchecked-slot-ref '()))
                             (cons _%object265178%_
                                   (cons (cons '%#quote
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self265126%_
                                                        '3
                                                        '#f
                                                        '#f))
                                                     '()))
                                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp268866
                                                     _%stx265122%_))))))))
                              (_%$%g265138265148%_ _%$%g265139265151%_))))
                      (_%$%g265138265148%_ _%$%g265139265151%_)))))
          (_%$%g265137265212%_ _%args265123%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass267810 __method-table267811)
        (let ((__check-arguments267812
               (let ((__tmp268867
                      (lambda ()
                        (let ((__method267813
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table267811
                                  'check-arguments
                                  '#f))))
                          (if __method267813
                              __method267813
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp268867)))
              (__slot267814
               (let ((__slot267815
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass267810 'slot))))
                 (if __slot267815
                     __slot267815
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self265120%_ _%ctx265121%_ _%stx265122%_ _%args265123%_)
            (let* ((_%self265126%_ _%self265120%_)
                   (_%arguments-ok?265136%_
                    ((force __check-arguments267812)
                     _%self265126%_
                     _%ctx265121%_
                     _%stx265122%_
                     _%args265123%_))
                   (_%$%g265138265148%_
                    (lambda (_%$%g265139265145%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g265139265145%_))))
                   (_%$%g265137265212%_
                    (lambda (_%$%g265139265151%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%g265139265151%_))
                          (let ((_%$%e265141265153%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%g265139265151%_))))
                            (let ((_%$%hd265142265156%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e265141265153%_)))
                                  (_%$%tl265143265158%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e265141265153%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl265143265158%_))
                                  (let* ((_%klass265174%_
                                          (let ((__tmp268868
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self265126%_
                                                    '1
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             _%stx265122%_
                                             __tmp268868)))
                                         (_%field265176%_
                                          (let ((__tmp268869
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self265126%_
                                                    '3
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (gxc#!class-slot->field-offset
                                             _%klass265174%_
                                             __tmp268869)))
                                         (_%object265178%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%ctx265121%_
                                             _%$%hd265142265156%_)))
                                         (_%klass265181%_ _%klass265174%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass265181%_
                                           '8
                                           '#f
                                           '#f))
                                        (let ((__tmp268870
                                               (cons (if (or _%arguments-ok?265136%_
                                                             (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self265126%_
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
                                  _%self265126%_
                                  '1
                                  '#f
                                  '#f))
                               '()))
                   (cons (cons '%#quote (cons _%field265176%_ '()))
                         (cons _%object265178%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp268870
                                           _%stx265122%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass265181%_
                                               '7
                                               '#f
                                               '#f))
                                            (let ((__tmp268871
                                                   (cons (if (or _%arguments-ok?265136%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self265126%_
                                 '4
                                 '#f
                                 '#f))))
                     '%#struct-unchecked-ref
                     '%#struct-ref)
                 (cons (cons '%#ref
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self265126%_
                                      '1
                                      '#f
                                      '#f))
                                   '()))
                       (cons (cons '%#quote (cons _%field265176%_ '()))
                             (cons _%object265178%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp268871
                                               _%stx265122%_))
                                            (let ((_%$e265200%_
                                                   (let ((__tmp268872
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%self265126%_
                                                             '3
                                                             '#f
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#!class-slot-find-struct
                                                      _%klass265181%_
                                                      __tmp268872))))
                                              (if _%$e265200%_
                                                  (let ((__tmp268873
                                                         (cons (if (or _%arguments-ok?265136%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (not (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self265126%_
                                       '4
                                       '#f
                                       '#f))))
                           '%#struct-unchecked-ref
                           '%#struct-ref)
                       (cons (cons '%#ref
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self265126%_
                                            '1
                                            '#f
                                            '#f))
                                         '()))
                             (cons (cons '%#quote (cons _%field265176%_ '()))
                                   (cons _%object265178%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp268873
                                                     _%stx265122%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self265126%_
                                                         '4
                                                         '#f
                                                         '#f))
                                                      (let ((__tmp268874
                                                             (let ((_%$obj265209%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp268875
                                   (let ()
                                     (declare (not safe))
                                     (##gensym '__obj))))
                              (declare (not safe))
                              (make-symbol__0 __tmp268875))))
                       (cons '%#let-values
                             (cons (cons (cons (cons _%$obj265209%_ '())
                                               (cons _%object265178%_ '()))
                                         '())
                                   (cons (cons '%#if
                                               (cons (cons '%#struct-direct-instance?
                                                           (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%klass265181%_
                                        '1
                                        '#f
                                        '#f))
                                     '()))
                         (cons (cons '%#ref (cons _%$obj265209%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#struct-unchecked-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self265126%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field265176%_ '()))
                                     (cons (cons '%#ref
                                                 (cons _%$obj265209%_ '()))
                                           '()))))
                   (cons (if _%arguments-ok?265136%_
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons 'unchecked-slot-ref '()))
                                         (cons (cons '%#ref
                                                     (cons _%$obj265209%_ '()))
                                               (cons (cons '%#quote
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self265126%_
                            __slot267814
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
                                                              _%self265126%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$obj265209%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%self265126%_
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
                (gxc#xform-wrap-source __tmp268874 _%stx265122%_))
              (let ((__tmp268876
                     (cons '%#call
                           (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                 (cons _%object265178%_
                                       (cons (cons '%#quote
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self265126%_
                                                            '3
                                                            '#f
                                                            '#f))
                                                         '()))
                                             '()))))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp268876 _%stx265122%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%$%g265138265148%_ _%$%g265139265151%_))))
                          (_%$%g265138265148%_ _%$%g265139265151%_)))))
              (_%$%g265137265212%_ _%args265123%_))))))
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
      (lambda (_%self264884%_ _%ctx264885%_ _%stx264886%_ _%args264887%_)
        (let* ((_%self264890%_ _%self264884%_)
               (_%arguments-ok?264900%_
                (let ((__method268784
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self264890%_ 'check-arguments))))
                  (if __method268784
                      (let ()
                        (declare (not safe))
                        (__method268784
                         _%self264890%_
                         _%ctx264885%_
                         _%stx264886%_
                         _%args264887%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self264890%_
                                 'check-arguments))
                        '#!void))))
               (_%$%g264902264916%_
                (lambda (_%$%g264903264913%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g264903264913%_))))
               (_%$%g264901264995%_
                (lambda (_%$%g264903264919%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g264903264919%_))
                      (let ((_%$%e264906264921%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g264903264919%_))))
                        (let ((_%$%hd264907264924%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e264906264921%_)))
                              (_%$%tl264908264926%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e264906264921%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl264908264926%_))
                              (let ((_%$%e264909264929%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl264908264926%_))))
                                (let ((_%$%hd264910264932%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e264909264929%_)))
                                      (_%$%tl264911264934%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e264909264929%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl264911264934%_))
                                      (let* ((_%klass264954%_
                                              (let ((__tmp268877
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self264890%_
                                                        '1
                                                        '#f
                                                        '#f))))
                                                (declare (not safe))
                                                (gxc#optimizer-resolve-class
                                                 _%stx264886%_
                                                 __tmp268877)))
                                             (_%field264956%_
                                              (let ((__tmp268878
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self264890%_
                                                        '3
                                                        '#f
                                                        '#f))))
                                                (declare (not safe))
                                                (gxc#!class-slot->field-offset
                                                 _%klass264954%_
                                                 __tmp268878)))
                                             (_%object264958%_
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%ctx264885%_
                                                 _%$%hd264907264924%_)))
                                             (_%value264960%_
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%ctx264885%_
                                                 _%$%hd264910264932%_)))
                                             (_%klass264963%_ _%klass264954%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass264963%_
                                               '8
                                               '#f
                                               '#f))
                                            (let ((__tmp268879
                                                   (cons (if (or _%arguments-ok?264900%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self264890%_
                                 '4
                                 '#f
                                 '#f))))
                     '%#struct-unchecked-set!
                     '%#struct-direct-set!)
                 (cons (cons '%#ref
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self264890%_
                                      '1
                                      '#f
                                      '#f))
                                   '()))
                       (cons (cons '%#quote (cons _%field264956%_ '()))
                             (cons _%object264958%_
                                   (cons _%value264960%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp268879
                                               _%stx264886%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass264963%_
                                                   '7
                                                   '#f
                                                   '#f))
                                                (let ((__tmp268880
                                                       (cons (if (or _%arguments-ok?264900%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (not (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self264890%_
                                     '4
                                     '#f
                                     '#f))))
                         '%#struct-unchecked-set!
                         '%#struct-set!)
                     (cons (cons '%#ref
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self264890%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#quote (cons _%field264956%_ '()))
                                 (cons _%object264958%_
                                       (cons _%value264960%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp268880
                                                   _%stx264886%_))
                                                (let ((_%$e264983%_
                                                       (let ((__tmp268881
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%self264890%_
                         '3
                         '#f
                         '#f))))
                 (declare (not safe))
                 (gxc#!class-slot-find-struct _%klass264963%_ __tmp268881))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if _%$e264983%_
                                                      (let ((__tmp268882
                                                             (cons (if (or _%arguments-ok?264900%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (not (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self264890%_
                                           '3
                                           '#f
                                           '#f))))
                               '%#struct-unchecked-set!
                               '%#struct-set!)
                           (cons (cons '%#ref
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self264890%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons (cons '%#quote
                                             (cons _%field264956%_ '()))
                                       (cons _%object264958%_
                                             (cons _%value264960%_ '())))))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp268882 _%stx264886%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%self264890%_ '4 '#f '#f))
                  (let ((__tmp268883
                         (let ((_%$obj264992%_
                                (let ((__tmp268884
                                       (let ()
                                         (declare (not safe))
                                         (##gensym '__obj))))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp268884))))
                           (cons '%#let-values
                                 (cons (cons (cons (cons _%$obj264992%_ '())
                                                   (cons _%object264958%_ '()))
                                             '())
                                       (cons (cons '%#if
                                                   (cons (cons '%#struct-direct-instance?
                                                               (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%klass264963%_
                                            '1
                                            '#f
                                            '#f))
                                         '()))
                             (cons (cons '%#ref (cons _%$obj264992%_ '()))
                                   '())))
                 (cons (cons '%#struct-unchecked-set!
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self264890%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field264956%_ '()))
                                         (cons (cons '%#ref
                                                     (cons _%$obj264992%_ '()))
                                               (cons _%value264960%_ '())))))
                       (cons (if _%arguments-ok?264900%_
                                 (cons '%#call
                                       (cons (cons '%#ref
                                                   (cons 'unchecked-slot-set!
                                                         '()))
                                             (cons (cons '%#ref
                                                         (cons _%$obj264992%_
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self264890%_
                                '3
                                '#f
                                '#f))
                             '()))
                 (cons _%value264960%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (cons '%#call
                                       (cons (cons '%#ref
                                                   (cons 'class-slot-set! '()))
                                             (cons (cons '%#ref
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref _%self264890%_ '1 '#f '#f))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons '%#ref
                                                               (cons _%$obj264992%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self264890%_
                                      '3
                                      '#f
                                      '#f))
                                   '()))
                       (cons _%value264960%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp268883 _%stx264886%_))
                  (let ((__tmp268885
                         (cons '%#call
                               (cons (cons '%#ref
                                           (cons 'unchecked-slot-set! '()))
                                     (cons _%object264958%_
                                           (cons (cons '%#quote
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self264890%_ '3 '#f '#f))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%value264960%_
                                                       '())))))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp268885 _%stx264886%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g264902264916%_
                                       _%$%g264903264919%_))))
                              (_%$%g264902264916%_ _%$%g264903264919%_))))
                      (_%$%g264902264916%_ _%$%g264903264919%_)))))
          (_%$%g264901264995%_ _%args264887%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass267816 __method-table267817)
        (let ((__check-arguments267818
               (let ((__tmp268886
                      (lambda ()
                        (let ((__method267819
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table267817
                                  'check-arguments
                                  '#f))))
                          (if __method267819
                              __method267819
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp268886))))
          (lambda (_%self264884%_ _%ctx264885%_ _%stx264886%_ _%args264887%_)
            (let* ((_%self264890%_ _%self264884%_)
                   (_%arguments-ok?264900%_
                    ((force __check-arguments267818)
                     _%self264890%_
                     _%ctx264885%_
                     _%stx264886%_
                     _%args264887%_))
                   (_%$%g264902264916%_
                    (lambda (_%$%g264903264913%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g264903264913%_))))
                   (_%$%g264901264995%_
                    (lambda (_%$%g264903264919%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%g264903264919%_))
                          (let ((_%$%e264906264921%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%g264903264919%_))))
                            (let ((_%$%hd264907264924%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e264906264921%_)))
                                  (_%$%tl264908264926%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e264906264921%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl264908264926%_))
                                  (let ((_%$%e264909264929%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl264908264926%_))))
                                    (let ((_%$%hd264910264932%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e264909264929%_)))
                                          (_%$%tl264911264934%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e264909264929%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl264911264934%_))
                                          (let* ((_%klass264954%_
                                                  (let ((__tmp268887
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self264890%_
                                                            '1
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#optimizer-resolve-class
                                                     _%stx264886%_
                                                     __tmp268887)))
                                                 (_%field264956%_
                                                  (let ((__tmp268888
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self264890%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot->field-offset
                                                     _%klass264954%_
                                                     __tmp268888)))
                                                 (_%object264958%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%ctx264885%_
                                                     _%$%hd264907264924%_)))
                                                 (_%value264960%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%ctx264885%_
                                                     _%$%hd264910264932%_)))
                                                 (_%klass264963%_
                                                  _%klass264954%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass264963%_
                                                   '8
                                                   '#f
                                                   '#f))
                                                (let ((__tmp268889
                                                       (cons (if (or _%arguments-ok?264900%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (not (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self264890%_
                                     '4
                                     '#f
                                     '#f))))
                         '%#struct-unchecked-set!
                         '%#struct-direct-set!)
                     (cons (cons '%#ref
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self264890%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#quote (cons _%field264956%_ '()))
                                 (cons _%object264958%_
                                       (cons _%value264960%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp268889
                                                   _%stx264886%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%klass264963%_
                                                       '7
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp268890
                                                           (cons (if (or _%arguments-ok?264900%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self264890%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-set!
                             '%#struct-set!)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self264890%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field264956%_ '()))
                                     (cons _%object264958%_
                                           (cons _%value264960%_ '())))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp268890 _%stx264886%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$e264983%_
                                                           (let ((__tmp268891
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self264890%_
                             '3
                             '#f
                             '#f))))
                     (declare (not safe))
                     (gxc#!class-slot-find-struct
                      _%klass264963%_
                      __tmp268891))))
              (if _%$e264983%_
                  (let ((__tmp268892
                         (cons (if (or _%arguments-ok?264900%_
                                       (not (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self264890%_
                                               '3
                                               '#f
                                               '#f))))
                                   '%#struct-unchecked-set!
                                   '%#struct-set!)
                               (cons (cons '%#ref
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self264890%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 '()))
                                     (cons (cons '%#quote
                                                 (cons _%field264956%_ '()))
                                           (cons _%object264958%_
                                                 (cons _%value264960%_
                                                       '())))))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp268892 _%stx264886%_))
                  (if (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self264890%_ '4 '#f '#f))
                      (let ((__tmp268893
                             (let ((_%$obj264992%_
                                    (let ((__tmp268894
                                           (let ()
                                             (declare (not safe))
                                             (##gensym '__obj))))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp268894))))
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj264992%_
                                                             '())
                                                       (cons _%object264958%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#if
                                                       (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons '%#quote
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%klass264963%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons (cons '%#ref (cons _%$obj264992%_ '()))
                                       '())))
                     (cons (cons '%#struct-unchecked-set!
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self264890%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field264956%_ '()))
                                             (cons (cons '%#ref
                                                         (cons _%$obj264992%_
                                                               '()))
                                                   (cons _%value264960%_
                                                         '())))))
                           (cons (if _%arguments-ok?264900%_
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'unchecked-slot-set!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj264992%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons '%#quote
                           (cons (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self264890%_
                                    '3
                                    '#f
                                    '#f))
                                 '()))
                     (cons _%value264960%_ '())))))
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
                              _%self264890%_
                              '1
                              '#f
                              '#f))
                           '()))
               (cons (cons '%#ref (cons _%$obj264992%_ '()))
                     (cons (cons '%#quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self264890%_
                                          '3
                                          '#f
                                          '#f))
                                       '()))
                           (cons _%value264960%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp268893 _%stx264886%_))
                      (let ((__tmp268895
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons 'unchecked-slot-set! '()))
                                         (cons _%object264958%_
                                               (cons (cons '%#quote
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self264890%_
                            '3
                            '#f
                            '#f))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%value264960%_
                                                           '())))))))
                        (declare (not safe))
                        (gxc#xform-wrap-source
                         __tmp268895
                         _%stx264886%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g264902264916%_
                                           _%$%g264903264919%_))))
                                  (_%$%g264902264916%_ _%$%g264903264919%_))))
                          (_%$%g264902264916%_ _%$%g264903264919%_)))))
              (_%$%g264901264995%_ _%args264887%_))))))
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
      (lambda (_%self264700%_ _%ctx264701%_ _%stx264702%_ _%args264703%_)
        (let* ((_%self264706%_ _%self264700%_)
               (_%$%self264715264725%_ _%self264706%_)
               (_%$%E264717264728%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%self264715264725%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%$%K264718264738%_
                (lambda (_%inline264731%_ _%dispatch264732%_ _%arity264733%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self264706%_
                         _%args264703%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx264702%_
                         _%arity264733%_)))
                  (if _%inline264731%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp268896 (_%inline264731%_ _%stx264702%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp268896
                           _%stx264702%_
                           _%ctx264701%_)))
                      (if (and _%dispatch264732%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch264732%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch264732%_))
                            (let ((__tmp268897
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch264732%_
                                                           '()))
                                               _%args264703%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp268897
                               _%stx264702%_
                               _%ctx264701%_)))
                          (gxc#!procedure::optimize-call
                           _%self264706%_
                           _%ctx264701%_
                           _%stx264702%_
                           _%args264703%_)))))
               (_%$%e264719264741%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self264715264725%_
                   '1
                   '#f
                   '#f)))
               (_%$%e264720264744%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self264715264725%_
                   '2
                   '#f
                   '#f)))
               (_%$%e264721264747%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self264715264725%_
                   '3
                   '#f
                   '#f)))
               (_%arity264750%_ _%$%e264721264747%_)
               (_%$%e264722264752%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self264715264725%_
                   '4
                   '#f
                   '#f)))
               (_%dispatch264755%_ _%$%e264722264752%_)
               (_%$%e264723264757%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self264715264725%_
                   '5
                   '#f
                   '#f)))
               (_%inline264760%_ _%$%e264723264757%_))
          (_%$%K264718264738%_
           _%inline264760%_
           _%dispatch264755%_
           _%arity264750%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self264552%_ _%ctx264553%_ _%stx264554%_ _%args264555%_)
        (let* ((_%self264558%_ _%self264552%_)
               (_%$e264572%_
                (let ((__tmp268899
                       (lambda (_%$%g264567264569%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%$%g264567264569%_
                            _%args264555%_))))
                      (__tmp268898
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self264558%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp268899 __tmp268898))))
          (if _%$e264572%_
              (let ((__method268785
                     (let ()
                       (declare (not safe))
                       (__method-ref _%$e264572%_ 'optimize-call))))
                (if __method268785
                    (let ()
                      (declare (not safe))
                      (__method268785
                       _%$e264572%_
                       _%ctx264553%_
                       _%stx264554%_
                       _%args264555%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method" _%$e264572%_ 'optimize-call))
                      '#!void)))
              (let ((__tmp268900
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self264558%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx264554%_
                 __tmp268900))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self264293%_ _%ctx264294%_ _%stx264295%_ _%args264296%_)
        (let* ((_%self264299%_ _%self264293%_)
               (_%$%self264308264317%_ _%self264299%_)
               (_%$%E264310264320%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%self264308264317%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%$%K264311264411%_
                (lambda (_%dispatch264323%_ _%table264324%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch264323%_))
                      (let* ((_%$%g264325264335%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch264323%_)))
                             (_%$%else264327264343%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch264323%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx264294%_
                                   _%stx264295%_))))
                             (_%$%K264329264392%_
                              (lambda (_%main264346%_ _%keys264347%_)
                                (let ((_g268901_
                                       (gxc#!kw-lambda-split-args
                                        _%stx264295%_
                                        _%args264296%_)))
                                  (begin
                                    (let ((_g268902_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g268901_)
                                                 (##values-length _g268901_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g268902_ 2)))
                                          (error "Context expects 2 values"
                                                 _g268902_)))
                                    (let ((_%pargs264349%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g268901_ 0)))
                                          (_%kwargs264350%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g268901_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main264346%_))
                                        (if _%table264324%_
                                            (let ((_%xargs264358%_
                                                   (map (lambda (_%key264352%_)
                                                          (let ((_%$e264354%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key264352%_ _%kwargs264350%_))))
                    (if _%$e264354%_ _%$e264354%_ '(%#ref absent-value))))
                _%keys264347%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw264360%_)
                                                 (if (memq (car _%kw264360%_)
                                                           _%keys264347%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx264295%_
                                                        _%keys264347%_
                                                        _%kw264360%_))))
                                               _%kwargs264350%_)
                                              (let ((__tmp268903
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main264346%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (append _%xargs264358%_ _%pargs264349%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp268903
                                                 _%stx264295%_
                                                 _%ctx264294%_)))
                                            (let* ((_%kwt264362%_
                                                    (let ((__tmp268904
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp268904)))
                                                   (_%kwvars264366%_
                                                    (map (lambda (_%_264364%_)
                                                           (let ((__tmp268905
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp268905)))
                 _%kwargs264350%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind264371%_
                                                    (map (lambda (_%kw264368%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar264369%_)
                   (cons (cons _%kwvar264369%_ '())
                         (cons (cdr _%kw264368%_) '())))
                 _%kwargs264350%_
                 _%kwvars264366%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset264376%_
                                                    (map (lambda (_%kw264373%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar264374%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt264362%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw264373%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar264374%_
                                                             '()))
                                                 '()))))))
                 _%kwargs264350%_
                 _%kwvars264366%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs264381%_
                                                    (map (lambda (_%kw264378%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar264379%_)
                   (cons (car _%kw264378%_)
                         (cons '%#ref (cons _%kwvar264379%_ '()))))
                 _%kwargs264350%_
                 _%kwvars264366%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs264389%_
                                                    (map (lambda (_%key264383%_)
                                                           (let ((_%$e264385%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key264383%_ _%xkwargs264381%_))))
                     (if _%$e264385%_ _%$e264385%_ '(%#ref absent-value))))
                 _%keys264347%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp268906
                                                    (cons '%#let-values
                                                          (cons _%kwbind264371%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt264362%_ '())
                                                      (cons (let ((__tmp268907
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs264350%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp268907 _%stx264295%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp268908
                                                             (cons (let ((__tmp268909
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main264346%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt264362%_
                                                                '()))
                                                    (append _%xargs264389%_
                                                            _%pargs264349%_))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp268909 _%stx264295%_))
                           '())))
                (declare (not safe))
                (##append _%kwset264376%_ __tmp268908)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp268906
                                               _%stx264295%_
                                               _%ctx264294%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%$%g264325264335%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%$%e264330264395%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%g264325264335%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%$%e264331264398%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%g264325264335%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%$%e264332264401%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%g264325264335%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys264404%_ _%$%e264332264401%_)
                                   (_%$%e264333264406%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%g264325264335%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main264409%_ _%$%e264333264406%_))
                              (_%$%K264329264392%_
                               _%main264409%_
                               _%keys264404%_))
                            (_%$%else264327264343%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx264294%_ _%stx264295%_)))))
               (_%$%e264312264414%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self264308264317%_
                   '1
                   '#f
                   '#f)))
               (_%$%e264313264417%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self264308264317%_
                   '2
                   '#f
                   '#f)))
               (_%$%e264314264420%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self264308264317%_
                   '3
                   '#f
                   '#f)))
               (_%table264423%_ _%$%e264314264420%_)
               (_%$%e264315264425%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self264308264317%_
                   '4
                   '#f
                   '#f)))
               (_%dispatch264428%_ _%$%e264315264425%_))
          (_%$%K264311264411%_ _%dispatch264428%_ _%table264423%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx263906%_ _%args263907%_)
        (let _%lp263909%_ ((_%rest263911%_ _%args263907%_)
                           (_%pargs263912%_ '())
                           (_%kwargs263913%_ '()))
          (let* ((_%__stx268278268279%_ _%rest263911%_)
                 (_%$%g263919263971%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx268278268279%_)))))
            (let ((_%__kont268280268281%_
                   (lambda (_%$%g263921264150%_ _%$%g263922264151%_)
                     (_%lp263909%_
                      _%$%g263921264150%_
                      (cons _%$%g263922264151%_ _%pargs263912%_)
                      _%kwargs263913%_)))
                  (_%__kont268282268283%_
                   (lambda (_%$%g263936264096%_)
                     (values (let ()
                               (declare (not safe))
                               (foldl__0
                                cons
                                _%$%g263936264096%_
                                _%pargs263912%_))
                             (reverse _%kwargs263913%_))))
                  (_%__kont268284268285%_
                   (lambda (_%$%g263947264043%_
                            _%$%g263948264044%_
                            _%$%g263949264045%_)
                     (let ((_%kw264062%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%g263949264045%_))))
                       (if (assq _%kw264062%_ _%kwargs263913%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx263906%_
                              _%kw264062%_))
                           (_%lp263909%_
                            _%$%g263947264043%_
                            _%pargs263912%_
                            (cons (cons _%kw264062%_ _%$%g263948264044%_)
                                  _%kwargs263913%_))))))
                  (_%__kont268286268287%_
                   (lambda (_%$%g263962263991%_ _%$%g263963263992%_)
                     (_%lp263909%_
                      _%$%g263962263991%_
                      (cons _%$%g263963263992%_ _%pargs263912%_)
                      _%kwargs263913%_)))
                  (_%__kont268288268289%_
                   (lambda ()
                     (values (reverse _%pargs263912%_)
                             (reverse _%kwargs263913%_)))))
              (let ((_%__match268385268386%_
                     (lambda (_%$%e263950264011%_
                              _%$%hd263951264014%_
                              _%$%tl263952264016%_
                              _%$%e263953264019%_
                              _%$%hd263954264022%_
                              _%$%tl263955264024%_
                              _%$%e263956264027%_
                              _%$%hd263957264030%_
                              _%$%tl263958264032%_
                              _%$%e263959264035%_
                              _%$%hd263960264038%_
                              _%$%tl263961264040%_)
                       (let ((_%$%g263947264043%_ _%$%tl263961264040%_)
                             (_%$%g263948264044%_ _%$%hd263960264038%_)
                             (_%$%g263949264045%_ _%$%hd263957264030%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%$%g263949264045%_))
                             (_%__kont268284268285%_
                              _%$%g263947264043%_
                              _%$%g263948264044%_
                              _%$%g263949264045%_)
                             (_%__kont268286268287%_
                              _%$%tl263952264016%_
                              _%$%hd263951264014%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx268278268279%_))
                    (let ((_%$%e263923264115%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx268278268279%_))))
                      (let ((_%$%tl263925264120%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e263923264115%_)))
                            (_%$%hd263924264118%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e263923264115%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%hd263924264118%_))
                            (let ((_%$%e263926264123%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd263924264118%_))))
                              (let ((_%$%tl263928264128%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e263926264123%_)))
                                    (_%$%hd263927264126%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e263926264123%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd263927264126%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%$%hd263927264126%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl263928264128%_))
                                            (let ((_%$%e263929264131%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl263928264128%_))))
                                              (let ((_%$%tl263931264136%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e263929264131%_)))
                                                    (_%$%hd263930264134%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e263929264131%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%$%hd263930264134%_))
                                                    (let ((_%$%e263932264139%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd263930264134%_))))
                                                      (if (equal? _%$%e263932264139%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl263931264136%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl263925264120%_))
                          (let ((_%$%e263933264142%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl263925264120%_))))
                            (let ((_%$%tl263935264147%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e263933264142%_)))
                                  (_%$%hd263934264145%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e263933264142%_))))
                              (_%__kont268280268281%_
                               _%$%tl263935264147%_
                               _%$%hd263934264145%_)))
                          (_%__kont268286268287%_
                           _%$%tl263925264120%_
                           _%$%hd263924264118%_))
                      (_%__kont268286268287%_
                       _%$%tl263925264120%_
                       _%$%hd263924264118%_))
                  (if (equal? _%$%e263932264139%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl263931264136%_))
                          (_%__kont268282268283%_ _%$%tl263925264120%_)
                          (_%__kont268286268287%_
                           _%$%tl263925264120%_
                           _%$%hd263924264118%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl263931264136%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl263925264120%_))
                              (let ((_%$%e263959264035%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl263925264120%_))))
                                (let ((_%$%tl263961264040%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e263959264035%_)))
                                      (_%$%hd263960264038%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e263959264035%_))))
                                  (_%__match268385268386%_
                                   _%$%e263923264115%_
                                   _%$%hd263924264118%_
                                   _%$%tl263925264120%_
                                   _%$%e263926264123%_
                                   _%$%hd263927264126%_
                                   _%$%tl263928264128%_
                                   _%$%e263929264131%_
                                   _%$%hd263930264134%_
                                   _%$%tl263931264136%_
                                   _%$%e263959264035%_
                                   _%$%hd263960264038%_
                                   _%$%tl263961264040%_)))
                              (_%__kont268286268287%_
                               _%$%tl263925264120%_
                               _%$%hd263924264118%_))
                          (_%__kont268286268287%_
                           _%$%tl263925264120%_
                           _%$%hd263924264118%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl263931264136%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl263925264120%_))
                                                            (let ((_%$%e263959264035%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl263925264120%_))))
                      (let ((_%$%tl263961264040%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e263959264035%_)))
                            (_%$%hd263960264038%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e263959264035%_))))
                        (_%__match268385268386%_
                         _%$%e263923264115%_
                         _%$%hd263924264118%_
                         _%$%tl263925264120%_
                         _%$%e263926264123%_
                         _%$%hd263927264126%_
                         _%$%tl263928264128%_
                         _%$%e263929264131%_
                         _%$%hd263930264134%_
                         _%$%tl263931264136%_
                         _%$%e263959264035%_
                         _%$%hd263960264038%_
                         _%$%tl263961264040%_)))
                    (_%__kont268286268287%_
                     _%$%tl263925264120%_
                     _%$%hd263924264118%_))
                (_%__kont268286268287%_
                 _%$%tl263925264120%_
                 _%$%hd263924264118%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont268286268287%_
                                             _%$%tl263925264120%_
                                             _%$%hd263924264118%_))
                                        (_%__kont268286268287%_
                                         _%$%tl263925264120%_
                                         _%$%hd263924264118%_))
                                    (_%__kont268286268287%_
                                     _%$%tl263925264120%_
                                     _%$%hd263924264118%_))))
                            (_%__kont268286268287%_
                             _%$%tl263925264120%_
                             _%$%hd263924264118%_))))
                    (_%__kont268288268289%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self263890%_ _%ctx263891%_ _%stx263892%_ _%args263893%_)
        (let ((_%self263896%_ _%self263890%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx263891%_ _%stx263892%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self263580%_ _%stx263581%_)
        (let* ((_%__stx268394268395%_ _%stx263581%_)
               (_%$%g263584263624%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx268394268395%_)))))
          (let ((_%__kont268396268397%_
                 (lambda (_%$%g263586263728%_ _%$%g263587263729%_)
                   (let ((_%$e263756%_
                          (member 'return:
                                  (let ((__tmp268910
                                         (lambda (_%$%g263748263751%_
                                                  _%$%g263749263753%_)
                                           (cons _%$%g263748263751%_
                                                 _%$%g263749263753%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp268910
                                     '()
                                     _%$%g263587263729%_))
                                  gx#stx-eq?)))
                     (if _%$e263756%_
                         (let ((_%type263761%_
                                (let ((__tmp268911
                                       (let ((__tmp268912 (cadr _%$e263756%_)))
                                         (declare (not safe))
                                         (gxc#identifier-symbol __tmp268912))))
                                  (declare (not safe))
                                  (gxc#optimizer-resolve-class
                                   _%stx263581%_
                                   __tmp268911))))
                           (gxc#check-return-type!
                            _%stx263581%_
                            _%$%g263586263728%_
                            _%type263761%_)
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self263580%_
                              _%$%g263586263728%_)))
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1
                            _%self263580%_
                            _%$%g263586263728%_))))))
                (_%__kont268400268401%_
                 (lambda (_%$%g263609263653%_ _%$%g263610263654%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self263580%_ _%$%g263609263653%_)))))
            (let ((_%__match268431268432%_
                   (lambda (_%$%e263588263674%_
                            _%$%hd263589263677%_
                            _%$%tl263590263679%_
                            _%$%e263591263682%_
                            _%$%hd263592263685%_
                            _%$%tl263593263687%_
                            _%$%e263594263690%_
                            _%$%hd263595263693%_
                            _%$%tl263596263695%_
                            _%__splice268398268399%_
                            _%$%target263597263698%_
                            _%$%tl263599263700%_)
                     (letrec ((_%$%loop263600263703%_
                               (lambda (_%$%hd263598263706%_
                                        _%$%signature263604263708%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd263598263706%_))
                                     (let ((_%$%e263601263710%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd263598263706%_))))
                                       (let ((_%$%lp-tl263603263715%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e263601263710%_)))
                                             (_%$%lp-hd263602263713%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e263601263710%_))))
                                         (_%$%loop263600263703%_
                                          _%$%lp-tl263603263715%_
                                          (cons _%$%lp-hd263602263713%_
                                                _%$%signature263604263708%_))))
                                     (let ((_%$%signature263605263718%_
                                            (reverse _%$%signature263604263708%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl263593263687%_))
                                           (let ((_%$%e263606263720%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl263593263687%_))))
                                             (let ((_%$%tl263608263725%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e263606263720%_)))
                                                   (_%$%hd263607263723%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e263606263720%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl263608263725%_))
                                                   (_%__kont268396268397%_
                                                    _%$%hd263607263723%_
                                                    _%$%signature263605263718%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g263584263624%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g263584263624%_))))))))
                       (_%$%loop263600263703%_
                        _%$%target263597263698%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx268394268395%_))
                  (let ((_%$%e263588263674%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx268394268395%_))))
                    (let ((_%$%tl263590263679%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e263588263674%_)))
                          (_%$%hd263589263677%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e263588263674%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl263590263679%_))
                          (let ((_%$%e263591263682%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl263590263679%_))))
                            (let ((_%$%tl263593263687%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e263591263682%_)))
                                  (_%$%hd263592263685%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e263591263682%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd263592263685%_))
                                  (let ((_%$%e263594263690%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd263592263685%_))))
                                    (let ((_%$%tl263596263695%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e263594263690%_)))
                                          (_%$%hd263595263693%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e263594263690%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd263595263693%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%$%hd263595263693%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%$%tl263596263695%_))
                                                  (let ((_%__splice268398268399%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl263596263695%_
                                                            '0))))
                                                    (let ((_%$%tl263599263700%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice268398268399%_
                                                              '1)))
                                                          (_%$%target263597263698%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice268398268399%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl263599263700%_))
                                                          (_%__match268431268432%_
                                                           _%$%e263588263674%_
                                                           _%$%hd263589263677%_
                                                           _%$%tl263590263679%_
                                                           _%$%e263591263682%_
                                                           _%$%hd263592263685%_
                                                           _%$%tl263593263687%_
                                                           _%$%e263594263690%_
                                                           _%$%hd263595263693%_
                                                           _%$%tl263596263695%_
                                                           _%__splice268398268399%_
                                                           _%$%target263597263698%_
                                                           _%$%tl263599263700%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl263593263687%_))
                      (let ((_%$%e263617263645%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl263593263687%_))))
                        (let ((_%$%tl263619263650%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e263617263645%_)))
                              (_%$%hd263618263648%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e263617263645%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl263619263650%_))
                              (_%__kont268400268401%_
                               _%$%hd263618263648%_
                               _%$%hd263592263685%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g263584263624%_)))))
                      (let () (declare (not safe)) (_%$%g263584263624%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl263593263687%_))
                                                      (let ((_%$%e263617263645%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl263593263687%_))))
                (let ((_%$%tl263619263650%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e263617263645%_)))
                      (_%$%hd263618263648%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e263617263645%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl263619263650%_))
                      (_%__kont268400268401%_
                       _%$%hd263618263648%_
                       _%$%hd263592263685%_)
                      (let () (declare (not safe)) (_%$%g263584263624%_)))))
              (let () (declare (not safe)) (_%$%g263584263624%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl263593263687%_))
                                                  (let ((_%$%e263617263645%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl263593263687%_))))
                                                    (let ((_%$%tl263619263650%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e263617263645%_)))
                                                          (_%$%hd263618263648%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e263617263645%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl263619263650%_))
                                                          (_%__kont268400268401%_
                                                           _%$%hd263618263648%_
                                                           _%$%hd263592263685%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g263584263624%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g263584263624%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl263593263687%_))
                                              (let ((_%$%e263617263645%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl263593263687%_))))
                                                (let ((_%$%tl263619263650%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e263617263645%_)))
                                                      (_%$%hd263618263648%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e263617263645%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl263619263650%_))
                                                      (_%__kont268400268401%_
                                                       _%$%hd263618263648%_
                                                       _%$%hd263592263685%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g263584263624%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g263584263624%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl263593263687%_))
                                      (let ((_%$%e263617263645%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl263593263687%_))))
                                        (let ((_%$%tl263619263650%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e263617263645%_)))
                                              (_%$%hd263618263648%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e263617263645%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl263619263650%_))
                                              (_%__kont268400268401%_
                                               _%$%hd263618263648%_
                                               _%$%hd263592263685%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g263584263624%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g263584263624%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g263584263624%_)))))
                  (let () (declare (not safe)) (_%$%g263584263624%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx263555%_ _%expr263556%_ _%type263557%_)
        (let ((_%$e263559%_ (not _%type263557%_)))
          (if _%$e263559%_
              _%$e263559%_
              (let ((_%$e263562%_
                     (eq? (##structure-ref _%type263557%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e263562%_
                    _%$e263562%_
                    (let ((_%$e263565%_
                           (eq? (##structure-ref
                                 _%type263557%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e263565%_
                          _%$e263565%_
                          (let ((_%expr-type263569%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr263556%_))))
                            (if (not _%expr-type263569%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx263555%_
                                   _%type263557%_))
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type263569%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx263555%_
                                       _%type263557%_
                                       _%expr-type263569%_))
                                    (let ((_%$e263573%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type263569%_
                                              'gxc#!abort::t))))
                                      (if _%$e263573%_
                                          _%$e263573%_
                                          (let ((_%$e263576%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type263569%_
                                                    _%type263557%_))))
                                            (if _%$e263576%_
                                                _%$e263576%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx263555%_
                                                   _%type263557%_
                                                   _%expr-type263569%_)))))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self262984%_ _%stx262985%_)
        (gxc#check-contract-violation!
         _%stx262985%_
         (let* ((_%__stx268480268481%_ _%stx262985%_)
                (_%$%g262990263100%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gx#raise-syntax-error
                      '#f
                      '"Bad syntax; invalid match target"
                      _%__stx268480268481%_)))))
           (let ((_%__kont268482268483%_
                  (lambda (_%$%g262992263529%_
                           _%$%g262993263530%_
                           _%$%g262994263531%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-e _%$%g262994263531%_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self262984%_
                           _%$%g262993263530%_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self262984%_
                           _%$%g262992263529%_)))))
                 (_%__kont268484268485%_
                  (lambda (_%$%g263013263358%_
                           _%$%g263014263359%_
                           _%$%g263015263360%_
                           _%$%g263016263361%_)
                    (let ((_%$e263393%_
                           (let ((__tmp268913
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%$%g263016263361%_))))
                             (declare (not safe))
                             (gxc#optimizer-lookup-type __tmp268913))))
                      (if _%$e263393%_
                          (if (or (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%$e263393%_
                                     'gxc#!predicate::t))
                                  (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%$e263393%_
                                     'gxc#!primitive-predicate::t)))
                              (let* ((_%test263401%_
                                      (let ((__tmp268914
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      '%#call))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f '%#ref))
                       (cons _%$%g263016263361%_ '()))
                 (cons (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#ref))
                             (cons _%$%g263015263360%_ '()))
                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (declare (not safe))
                                        (gxc#xform-wrap-apply
                                         __tmp268914
                                         _%stx262985%_
                                         _%self262984%_)))
                                     (_%K263405%_
                                      (let ((__tmp268915
                                             (lambda ()
                                               (let ((__tmp268918
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self262984%_
                                                           _%$%g263014263359%_))))
                                                     (__tmp268916
                                                      (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#identifier-symbol _%$%g263015263360%_))
                          (let ((__tmp268917
                                 (##structure-ref
                                  _%$e263393%_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             _%stx262985%_
                             __tmp268917)))
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp268918
                                                  gxc#current-compile-path-type
                                                  __tmp268916)))))
                                        (declare (not safe))
                                        (__make-promise __tmp268915)))
                                     (_%E263408%_
                                      (let ((__tmp268919
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self262984%_
                                                  _%$%g263013263358%_)))))
                                        (declare (not safe))
                                        (__make-promise __tmp268919)))
                                     (_%__stx268454268455%_ _%test263401%_)
                                     (_%$%g263412263425%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx268454268455%_)))))
                                (let ((_%__kont268456268457%_
                                       (lambda (_%$%g263414263453%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%$%g263414263453%_))
                                             (force _%K263405%_)
                                             (force _%E263408%_))))
                                      (_%__kont268458268459%_
                                       (lambda ()
                                         (let ((__tmp268920
                                                (cons '%#if
                                                      (cons _%test263401%_
                                                            (cons (force _%K263405%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (force _%E263408%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp268920
                                            _%stx262985%_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx268454268455%_))
                                      (let ((_%$%e263415263437%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx268454268455%_))))
                                        (let ((_%$%tl263417263442%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e263415263437%_)))
                                              (_%$%hd263416263440%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e263415263437%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%$%hd263416263440%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#quote
                                                     _%$%hd263416263440%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl263417263442%_))
                                                      (let ((_%$%e263418263445%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl263417263442%_))))
                (let ((_%$%tl263420263450%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e263418263445%_)))
                      (_%$%hd263419263448%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e263418263445%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl263420263450%_))
                      (_%__kont268456268457%_ _%$%hd263419263448%_)
                      (_%__kont268458268459%_))))
              (_%__kont268458268459%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont268458268459%_))
                                              (_%__kont268458268459%_))))
                                      (_%__kont268458268459%_))))
                              (let ()
                                (declare (not safe))
                                (gxc#xform-operands
                                 _%self262984%_
                                 _%stx262985%_)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-operands
                             _%self262984%_
                             _%stx262985%_))))))
                 (_%__kont268486268487%_
                  (lambda (_%$%g263050263234%_
                           _%$%g263051263235%_
                           _%$%g263052263236%_
                           _%$%g263053263237%_)
                    (gxc#optimize-if%
                     _%self262984%_
                     (let ((__tmp268921
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f '%#if))
                                  (cons _%$%g263052263236%_
                                        (cons _%$%g263050263234%_
                                              (cons _%$%g263051263235%_
                                                    '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp268921 _%stx262985%_)))))
                 (_%__kont268488268489%_
                  (lambda (_%$%g263081263137%_
                           _%$%g263082263138%_
                           _%$%g263083263139%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-operands _%self262984%_ _%stx262985%_)))))
             (let ((_%__match268687268688%_
                    (lambda (_%$%e263054263162%_
                             _%$%hd263055263165%_
                             _%$%tl263056263167%_
                             _%$%e263057263170%_
                             _%$%hd263058263173%_
                             _%$%tl263059263175%_
                             _%$%e263060263178%_
                             _%$%hd263061263181%_
                             _%$%tl263062263183%_
                             _%$%e263063263186%_
                             _%$%hd263064263189%_
                             _%$%tl263065263191%_
                             _%$%e263066263194%_
                             _%$%hd263067263197%_
                             _%$%tl263068263199%_
                             _%$%e263069263202%_
                             _%$%hd263070263205%_
                             _%$%tl263071263207%_
                             _%$%e263072263210%_
                             _%$%hd263073263213%_
                             _%$%tl263074263215%_
                             _%$%e263075263218%_
                             _%$%hd263076263221%_
                             _%$%tl263077263223%_
                             _%$%e263078263226%_
                             _%$%hd263079263229%_
                             _%$%tl263080263231%_)
                      (let ((_%$%g263050263234%_ _%$%hd263079263229%_)
                            (_%$%g263051263235%_ _%$%hd263076263221%_)
                            (_%$%g263052263236%_ _%$%hd263073263213%_)
                            (_%$%g263053263237%_ _%$%hd263070263205%_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _%$%g263053263237%_
                               'not))
                            (_%__kont268486268487%_
                             _%$%g263050263234%_
                             _%$%g263051263235%_
                             _%$%g263052263236%_
                             _%$%g263053263237%_)
                            (_%__kont268488268489%_
                             _%$%hd263079263229%_
                             _%$%hd263076263221%_
                             _%$%hd263058263173%_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? _%__stx268480268481%_))
                   (let ((_%$%e262995263481%_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%__stx268480268481%_))))
                     (let ((_%$%tl262997263486%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e262995263481%_)))
                           (_%$%hd262996263484%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e262995263481%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl262997263486%_))
                           (let ((_%$%e262998263489%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl262997263486%_))))
                             (let ((_%$%tl263000263494%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e262998263489%_)))
                                   (_%$%hd262999263492%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e262998263489%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd262999263492%_))
                                   (let ((_%$%e263001263497%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%hd262999263492%_))))
                                     (let ((_%$%tl263003263502%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e263001263497%_)))
                                           (_%$%hd263002263500%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e263001263497%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%$%hd263002263500%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#quote
                                                  _%$%hd263002263500%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl263003263502%_))
                                                   (let ((_%$%e263004263505%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl263003263502%_))))
                                                     (let ((_%$%tl263006263510%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e263004263505%_)))
                                                           (_%$%hd263005263508%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e263004263505%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl263006263510%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl263000263494%_))
                       (let ((_%$%e263007263513%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl263000263494%_))))
                         (let ((_%$%tl263009263518%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e263007263513%_)))
                               (_%$%hd263008263516%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e263007263513%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl263009263518%_))
                               (let ((_%$%e263010263521%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl263009263518%_))))
                                 (let ((_%$%tl263012263526%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e263010263521%_)))
                                       (_%$%hd263011263524%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e263010263521%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl263012263526%_))
                                       (_%__kont268482268483%_
                                        _%$%hd263011263524%_
                                        _%$%hd263008263516%_
                                        _%$%hd263005263508%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g262990263100%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%$%g262990263100%_)))))
                       (let () (declare (not safe)) (_%$%g262990263100%_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl263000263494%_))
                       (let ((_%$%e263090263121%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl263000263494%_))))
                         (let ((_%$%tl263092263126%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e263090263121%_)))
                               (_%$%hd263091263124%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e263090263121%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl263092263126%_))
                               (let ((_%$%e263093263129%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl263092263126%_))))
                                 (let ((_%$%tl263095263134%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e263093263129%_)))
                                       (_%$%hd263094263132%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e263093263129%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl263095263134%_))
                                       (_%__kont268488268489%_
                                        _%$%hd263094263132%_
                                        _%$%hd263091263124%_
                                        _%$%hd262999263492%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g262990263100%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%$%g262990263100%_)))))
                       (let () (declare (not safe)) (_%$%g262990263100%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl263000263494%_))
                                                       (let ((_%$%e263090263121%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl263000263494%_))))
                 (let ((_%$%tl263092263126%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e263090263121%_)))
                       (_%$%hd263091263124%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e263090263121%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl263092263126%_))
                       (let ((_%$%e263093263129%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl263092263126%_))))
                         (let ((_%$%tl263095263134%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e263093263129%_)))
                               (_%$%hd263094263132%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e263093263129%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl263095263134%_))
                               (_%__kont268488268489%_
                                _%$%hd263094263132%_
                                _%$%hd263091263124%_
                                _%$%hd262999263492%_)
                               (let ()
                                 (declare (not safe))
                                 (_%$%g262990263100%_)))))
                       (let () (declare (not safe)) (_%$%g262990263100%_)))))
               (let () (declare (not safe)) (_%$%g262990263100%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-eq?
                                                      '%#call
                                                      _%$%hd263002263500%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl263003263502%_))
                                                       (let ((_%$%e263026263294%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl263003263502%_))))
                 (let ((_%$%tl263028263299%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e263026263294%_)))
                       (_%$%hd263027263297%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e263026263294%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%hd263027263297%_))
                       (let ((_%$%e263029263302%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%hd263027263297%_))))
                         (let ((_%$%tl263031263307%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e263029263302%_)))
                               (_%$%hd263030263305%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e263029263302%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#identifier? _%$%hd263030263305%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-eq? '%#ref _%$%hd263030263305%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl263031263307%_))
                                       (let ((_%$%e263032263310%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl263031263307%_))))
                                         (let ((_%$%tl263034263315%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e263032263310%_)))
                                               (_%$%hd263033263313%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e263032263310%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%$%tl263034263315%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl263028263299%_))
                                                   (let ((_%$%e263035263318%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl263028263299%_))))
                                                     (let ((_%$%tl263037263323%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e263035263318%_)))
                                                           (_%$%hd263036263321%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e263035263318%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%hd263036263321%_))
                                                           (let ((_%$%e263038263326%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%hd263036263321%_))))
                     (let ((_%$%tl263040263331%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e263038263326%_)))
                           (_%$%hd263039263329%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e263038263326%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%$%hd263039263329%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-eq? '%#ref _%$%hd263039263329%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl263040263331%_))
                                   (let ((_%$%e263041263334%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl263040263331%_))))
                                     (let ((_%$%tl263043263339%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e263041263334%_)))
                                           (_%$%hd263042263337%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e263041263334%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl263043263339%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%$%tl263037263323%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl263000263494%_))
                                                   (let ((_%$%e263044263342%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl263000263494%_))))
                                                     (let ((_%$%tl263046263347%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e263044263342%_)))
                                                           (_%$%hd263045263345%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e263044263342%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl263046263347%_))
                                                           (let ((_%$%e263047263350%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl263046263347%_))))
                     (let ((_%$%tl263049263355%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e263047263350%_)))
                           (_%$%hd263048263353%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e263047263350%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl263049263355%_))
                           (_%__kont268484268485%_
                            _%$%hd263048263353%_
                            _%$%hd263045263345%_
                            _%$%hd263042263337%_
                            _%$%hd263033263313%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g262990263100%_)))))
                   (let () (declare (not safe)) (_%$%g262990263100%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g262990263100%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl263000263494%_))
                                                   (let ((_%$%e263090263121%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl263000263494%_))))
                                                     (let ((_%$%tl263092263126%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e263090263121%_)))
                                                           (_%$%hd263091263124%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e263090263121%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl263092263126%_))
                                                           (let ((_%$%e263093263129%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl263092263126%_))))
                     (let ((_%$%tl263095263134%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e263093263129%_)))
                           (_%$%hd263094263132%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e263093263129%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl263095263134%_))
                           (_%__kont268488268489%_
                            _%$%hd263094263132%_
                            _%$%hd263091263124%_
                            _%$%hd262999263492%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g262990263100%_)))))
                   (let () (declare (not safe)) (_%$%g262990263100%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g262990263100%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%$%tl263037263323%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl263000263494%_))
                                                   (let ((_%$%e263075263218%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl263000263494%_))))
                                                     (let ((_%$%tl263077263223%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e263075263218%_)))
                                                           (_%$%hd263076263221%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e263075263218%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl263077263223%_))
                                                           (let ((_%$%e263078263226%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl263077263223%_))))
                     (let ((_%$%tl263080263231%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e263078263226%_)))
                           (_%$%hd263079263229%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e263078263226%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl263080263231%_))
                           (_%__match268687268688%_
                            _%$%e262995263481%_
                            _%$%hd262996263484%_
                            _%$%tl262997263486%_
                            _%$%e262998263489%_
                            _%$%hd262999263492%_
                            _%$%tl263000263494%_
                            _%$%e263001263497%_
                            _%$%hd263002263500%_
                            _%$%tl263003263502%_
                            _%$%e263026263294%_
                            _%$%hd263027263297%_
                            _%$%tl263028263299%_
                            _%$%e263029263302%_
                            _%$%hd263030263305%_
                            _%$%tl263031263307%_
                            _%$%e263032263310%_
                            _%$%hd263033263313%_
                            _%$%tl263034263315%_
                            _%$%e263035263318%_
                            _%$%hd263036263321%_
                            _%$%tl263037263323%_
                            _%$%e263075263218%_
                            _%$%hd263076263221%_
                            _%$%tl263077263223%_
                            _%$%e263078263226%_
                            _%$%hd263079263229%_
                            _%$%tl263080263231%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g262990263100%_)))))
                   (let () (declare (not safe)) (_%$%g262990263100%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g262990263100%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl263000263494%_))
                                                   (let ((_%$%e263090263121%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl263000263494%_))))
                                                     (let ((_%$%tl263092263126%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e263090263121%_)))
                                                           (_%$%hd263091263124%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e263090263121%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl263092263126%_))
                                                           (let ((_%$%e263093263129%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl263092263126%_))))
                     (let ((_%$%tl263095263134%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e263093263129%_)))
                           (_%$%hd263094263132%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e263093263129%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl263095263134%_))
                           (_%__kont268488268489%_
                            _%$%hd263094263132%_
                            _%$%hd263091263124%_
                            _%$%hd262999263492%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g262990263100%_)))))
                   (let () (declare (not safe)) (_%$%g262990263100%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g262990263100%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl263037263323%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl263000263494%_))
                                           (let ((_%$%e263075263218%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl263000263494%_))))
                                             (let ((_%$%tl263077263223%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e263075263218%_)))
                                                   (_%$%hd263076263221%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e263075263218%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl263077263223%_))
                                                   (let ((_%$%e263078263226%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl263077263223%_))))
                                                     (let ((_%$%tl263080263231%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e263078263226%_)))
                                                           (_%$%hd263079263229%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e263078263226%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl263080263231%_))
                                                           (_%__match268687268688%_
                                                            _%$%e262995263481%_
                                                            _%$%hd262996263484%_
                                                            _%$%tl262997263486%_
                                                            _%$%e262998263489%_
                                                            _%$%hd262999263492%_
                                                            _%$%tl263000263494%_
                                                            _%$%e263001263497%_
                                                            _%$%hd263002263500%_
                                                            _%$%tl263003263502%_
                                                            _%$%e263026263294%_
                                                            _%$%hd263027263297%_
                                                            _%$%tl263028263299%_
                                                            _%$%e263029263302%_
                                                            _%$%hd263030263305%_
                                                            _%$%tl263031263307%_
                                                            _%$%e263032263310%_
                                                            _%$%hd263033263313%_
                                                            _%$%tl263034263315%_
                                                            _%$%e263035263318%_
                                                            _%$%hd263036263321%_
                                                            _%$%tl263037263323%_
                                                            _%$%e263075263218%_
                                                            _%$%hd263076263221%_
                                                            _%$%tl263077263223%_
                                                            _%$%e263078263226%_
                                                            _%$%hd263079263229%_
                                                            _%$%tl263080263231%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%$%g262990263100%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g262990263100%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g262990263100%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl263000263494%_))
                                           (let ((_%$%e263090263121%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl263000263494%_))))
                                             (let ((_%$%tl263092263126%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e263090263121%_)))
                                                   (_%$%hd263091263124%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e263090263121%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl263092263126%_))
                                                   (let ((_%$%e263093263129%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl263092263126%_))))
                                                     (let ((_%$%tl263095263134%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e263093263129%_)))
                                                           (_%$%hd263094263132%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e263093263129%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl263095263134%_))
                                                           (_%__kont268488268489%_
                                                            _%$%hd263094263132%_
                                                            _%$%hd263091263124%_
                                                            _%$%hd262999263492%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%$%g262990263100%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g262990263100%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g262990263100%_)))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%$%tl263037263323%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl263000263494%_))
                                       (let ((_%$%e263075263218%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl263000263494%_))))
                                         (let ((_%$%tl263077263223%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e263075263218%_)))
                                               (_%$%hd263076263221%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e263075263218%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl263077263223%_))
                                               (let ((_%$%e263078263226%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl263077263223%_))))
                                                 (let ((_%$%tl263080263231%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e263078263226%_)))
                                                       (_%$%hd263079263229%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e263078263226%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl263080263231%_))
                                                       (_%__match268687268688%_
                                                        _%$%e262995263481%_
                                                        _%$%hd262996263484%_
                                                        _%$%tl262997263486%_
                                                        _%$%e262998263489%_
                                                        _%$%hd262999263492%_
                                                        _%$%tl263000263494%_
                                                        _%$%e263001263497%_
                                                        _%$%hd263002263500%_
                                                        _%$%tl263003263502%_
                                                        _%$%e263026263294%_
                                                        _%$%hd263027263297%_
                                                        _%$%tl263028263299%_
                                                        _%$%e263029263302%_
                                                        _%$%hd263030263305%_
                                                        _%$%tl263031263307%_
                                                        _%$%e263032263310%_
                                                        _%$%hd263033263313%_
                                                        _%$%tl263034263315%_
                                                        _%$%e263035263318%_
                                                        _%$%hd263036263321%_
                                                        _%$%tl263037263323%_
                                                        _%$%e263075263218%_
                                                        _%$%hd263076263221%_
                                                        _%$%tl263077263223%_
                                                        _%$%e263078263226%_
                                                        _%$%hd263079263229%_
                                                        _%$%tl263080263231%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%$%g262990263100%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g262990263100%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g262990263100%_)))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl263000263494%_))
                                       (let ((_%$%e263090263121%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl263000263494%_))))
                                         (let ((_%$%tl263092263126%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e263090263121%_)))
                                               (_%$%hd263091263124%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e263090263121%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl263092263126%_))
                                               (let ((_%$%e263093263129%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl263092263126%_))))
                                                 (let ((_%$%tl263095263134%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e263093263129%_)))
                                                       (_%$%hd263094263132%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e263093263129%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl263095263134%_))
                                                       (_%__kont268488268489%_
                                                        _%$%hd263094263132%_
                                                        _%$%hd263091263124%_
                                                        _%$%hd262999263492%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%$%g262990263100%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g262990263100%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g262990263100%_)))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl263037263323%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl263000263494%_))
                                   (let ((_%$%e263075263218%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl263000263494%_))))
                                     (let ((_%$%tl263077263223%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e263075263218%_)))
                                           (_%$%hd263076263221%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e263075263218%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl263077263223%_))
                                           (let ((_%$%e263078263226%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl263077263223%_))))
                                             (let ((_%$%tl263080263231%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e263078263226%_)))
                                                   (_%$%hd263079263229%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e263078263226%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl263080263231%_))
                                                   (_%__match268687268688%_
                                                    _%$%e262995263481%_
                                                    _%$%hd262996263484%_
                                                    _%$%tl262997263486%_
                                                    _%$%e262998263489%_
                                                    _%$%hd262999263492%_
                                                    _%$%tl263000263494%_
                                                    _%$%e263001263497%_
                                                    _%$%hd263002263500%_
                                                    _%$%tl263003263502%_
                                                    _%$%e263026263294%_
                                                    _%$%hd263027263297%_
                                                    _%$%tl263028263299%_
                                                    _%$%e263029263302%_
                                                    _%$%hd263030263305%_
                                                    _%$%tl263031263307%_
                                                    _%$%e263032263310%_
                                                    _%$%hd263033263313%_
                                                    _%$%tl263034263315%_
                                                    _%$%e263035263318%_
                                                    _%$%hd263036263321%_
                                                    _%$%tl263037263323%_
                                                    _%$%e263075263218%_
                                                    _%$%hd263076263221%_
                                                    _%$%tl263077263223%_
                                                    _%$%e263078263226%_
                                                    _%$%hd263079263229%_
                                                    _%$%tl263080263231%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g262990263100%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g262990263100%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g262990263100%_)))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl263000263494%_))
                                   (let ((_%$%e263090263121%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl263000263494%_))))
                                     (let ((_%$%tl263092263126%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e263090263121%_)))
                                           (_%$%hd263091263124%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e263090263121%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl263092263126%_))
                                           (let ((_%$%e263093263129%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl263092263126%_))))
                                             (let ((_%$%tl263095263134%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e263093263129%_)))
                                                   (_%$%hd263094263132%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e263093263129%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl263095263134%_))
                                                   (_%__kont268488268489%_
                                                    _%$%hd263094263132%_
                                                    _%$%hd263091263124%_
                                                    _%$%hd262999263492%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g262990263100%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g262990263100%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g262990263100%_)))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl263037263323%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl263000263494%_))
                           (let ((_%$%e263075263218%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl263000263494%_))))
                             (let ((_%$%tl263077263223%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e263075263218%_)))
                                   (_%$%hd263076263221%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e263075263218%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl263077263223%_))
                                   (let ((_%$%e263078263226%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl263077263223%_))))
                                     (let ((_%$%tl263080263231%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e263078263226%_)))
                                           (_%$%hd263079263229%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e263078263226%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl263080263231%_))
                                           (_%__match268687268688%_
                                            _%$%e262995263481%_
                                            _%$%hd262996263484%_
                                            _%$%tl262997263486%_
                                            _%$%e262998263489%_
                                            _%$%hd262999263492%_
                                            _%$%tl263000263494%_
                                            _%$%e263001263497%_
                                            _%$%hd263002263500%_
                                            _%$%tl263003263502%_
                                            _%$%e263026263294%_
                                            _%$%hd263027263297%_
                                            _%$%tl263028263299%_
                                            _%$%e263029263302%_
                                            _%$%hd263030263305%_
                                            _%$%tl263031263307%_
                                            _%$%e263032263310%_
                                            _%$%hd263033263313%_
                                            _%$%tl263034263315%_
                                            _%$%e263035263318%_
                                            _%$%hd263036263321%_
                                            _%$%tl263037263323%_
                                            _%$%e263075263218%_
                                            _%$%hd263076263221%_
                                            _%$%tl263077263223%_
                                            _%$%e263078263226%_
                                            _%$%hd263079263229%_
                                            _%$%tl263080263231%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g262990263100%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g262990263100%_)))))
                           (let () (declare (not safe)) (_%$%g262990263100%_)))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl263000263494%_))
                           (let ((_%$%e263090263121%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl263000263494%_))))
                             (let ((_%$%tl263092263126%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e263090263121%_)))
                                   (_%$%hd263091263124%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e263090263121%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl263092263126%_))
                                   (let ((_%$%e263093263129%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl263092263126%_))))
                                     (let ((_%$%tl263095263134%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e263093263129%_)))
                                           (_%$%hd263094263132%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e263093263129%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl263095263134%_))
                                           (_%__kont268488268489%_
                                            _%$%hd263094263132%_
                                            _%$%hd263091263124%_
                                            _%$%hd262999263492%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g262990263100%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g262990263100%_)))))
                           (let ()
                             (declare (not safe))
                             (_%$%g262990263100%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl263000263494%_))
                                                       (let ((_%$%e263090263121%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl263000263494%_))))
                 (let ((_%$%tl263092263126%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e263090263121%_)))
                       (_%$%hd263091263124%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e263090263121%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl263092263126%_))
                       (let ((_%$%e263093263129%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl263092263126%_))))
                         (let ((_%$%tl263095263134%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e263093263129%_)))
                               (_%$%hd263094263132%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e263093263129%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl263095263134%_))
                               (_%__kont268488268489%_
                                _%$%hd263094263132%_
                                _%$%hd263091263124%_
                                _%$%hd262999263492%_)
                               (let ()
                                 (declare (not safe))
                                 (_%$%g262990263100%_)))))
                       (let () (declare (not safe)) (_%$%g262990263100%_)))))
               (let () (declare (not safe)) (_%$%g262990263100%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl263000263494%_))
                                                   (let ((_%$%e263090263121%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl263000263494%_))))
                                                     (let ((_%$%tl263092263126%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e263090263121%_)))
                                                           (_%$%hd263091263124%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e263090263121%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl263092263126%_))
                                                           (let ((_%$%e263093263129%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl263092263126%_))))
                     (let ((_%$%tl263095263134%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e263093263129%_)))
                           (_%$%hd263094263132%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e263093263129%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl263095263134%_))
                           (_%__kont268488268489%_
                            _%$%hd263094263132%_
                            _%$%hd263091263124%_
                            _%$%hd262999263492%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g262990263100%_)))))
                   (let () (declare (not safe)) (_%$%g262990263100%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g262990263100%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl263000263494%_))
                                           (let ((_%$%e263090263121%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl263000263494%_))))
                                             (let ((_%$%tl263092263126%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e263090263121%_)))
                                                   (_%$%hd263091263124%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e263090263121%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl263092263126%_))
                                                   (let ((_%$%e263093263129%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl263092263126%_))))
                                                     (let ((_%$%tl263095263134%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e263093263129%_)))
                                                           (_%$%hd263094263132%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e263093263129%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl263095263134%_))
                                                           (_%__kont268488268489%_
                                                            _%$%hd263094263132%_
                                                            _%$%hd263091263124%_
                                                            _%$%hd262999263492%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%$%g262990263100%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g262990263100%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g262990263100%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl263000263494%_))
                                       (let ((_%$%e263090263121%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl263000263494%_))))
                                         (let ((_%$%tl263092263126%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e263090263121%_)))
                                               (_%$%hd263091263124%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e263090263121%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl263092263126%_))
                                               (let ((_%$%e263093263129%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl263092263126%_))))
                                                 (let ((_%$%tl263095263134%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e263093263129%_)))
                                                       (_%$%hd263094263132%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e263093263129%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl263095263134%_))
                                                       (_%__kont268488268489%_
                                                        _%$%hd263094263132%_
                                                        _%$%hd263091263124%_
                                                        _%$%hd262999263492%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%$%g262990263100%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g262990263100%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g262990263100%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl263000263494%_))
                                   (let ((_%$%e263090263121%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl263000263494%_))))
                                     (let ((_%$%tl263092263126%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e263090263121%_)))
                                           (_%$%hd263091263124%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e263090263121%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl263092263126%_))
                                           (let ((_%$%e263093263129%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl263092263126%_))))
                                             (let ((_%$%tl263095263134%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e263093263129%_)))
                                                   (_%$%hd263094263132%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e263093263129%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl263095263134%_))
                                                   (_%__kont268488268489%_
                                                    _%$%hd263094263132%_
                                                    _%$%hd263091263124%_
                                                    _%$%hd262999263492%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g262990263100%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g262990263100%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g262990263100%_))))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl263000263494%_))
                           (let ((_%$%e263090263121%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl263000263494%_))))
                             (let ((_%$%tl263092263126%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e263090263121%_)))
                                   (_%$%hd263091263124%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e263090263121%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl263092263126%_))
                                   (let ((_%$%e263093263129%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl263092263126%_))))
                                     (let ((_%$%tl263095263134%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e263093263129%_)))
                                           (_%$%hd263094263132%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e263093263129%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl263095263134%_))
                                           (_%__kont268488268489%_
                                            _%$%hd263094263132%_
                                            _%$%hd263091263124%_
                                            _%$%hd262999263492%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g262990263100%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g262990263100%_)))))
                           (let ()
                             (declare (not safe))
                             (_%$%g262990263100%_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? _%$%tl263000263494%_))
                   (let ((_%$%e263090263121%_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl263000263494%_))))
                     (let ((_%$%tl263092263126%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e263090263121%_)))
                           (_%$%hd263091263124%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e263090263121%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl263092263126%_))
                           (let ((_%$%e263093263129%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl263092263126%_))))
                             (let ((_%$%tl263095263134%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e263093263129%_)))
                                   (_%$%hd263094263132%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e263093263129%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%$%tl263095263134%_))
                                   (_%__kont268488268489%_
                                    _%$%hd263094263132%_
                                    _%$%hd263091263124%_
                                    _%$%hd262999263492%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g262990263100%_)))))
                           (let ()
                             (declare (not safe))
                             (_%$%g262990263100%_)))))
                   (let () (declare (not safe)) (_%$%g262990263100%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl263000263494%_))
                                                       (let ((_%$%e263090263121%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl263000263494%_))))
                 (let ((_%$%tl263092263126%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e263090263121%_)))
                       (_%$%hd263091263124%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e263090263121%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl263092263126%_))
                       (let ((_%$%e263093263129%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl263092263126%_))))
                         (let ((_%$%tl263095263134%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e263093263129%_)))
                               (_%$%hd263094263132%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e263093263129%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl263095263134%_))
                               (_%__kont268488268489%_
                                _%$%hd263094263132%_
                                _%$%hd263091263124%_
                                _%$%hd262999263492%_)
                               (let ()
                                 (declare (not safe))
                                 (_%$%g262990263100%_)))))
                       (let () (declare (not safe)) (_%$%g262990263100%_)))))
               (let () (declare (not safe)) (_%$%g262990263100%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl263000263494%_))
                                               (let ((_%$%e263090263121%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl263000263494%_))))
                                                 (let ((_%$%tl263092263126%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e263090263121%_)))
                                                       (_%$%hd263091263124%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e263090263121%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl263092263126%_))
                                                       (let ((_%$%e263093263129%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl263092263126%_))))
                 (let ((_%$%tl263095263134%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e263093263129%_)))
                       (_%$%hd263094263132%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e263093263129%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl263095263134%_))
                       (_%__kont268488268489%_
                        _%$%hd263094263132%_
                        _%$%hd263091263124%_
                        _%$%hd262999263492%_)
                       (let () (declare (not safe)) (_%$%g262990263100%_)))))
               (let () (declare (not safe)) (_%$%g262990263100%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g262990263100%_))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl263000263494%_))
                                       (let ((_%$%e263090263121%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl263000263494%_))))
                                         (let ((_%$%tl263092263126%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e263090263121%_)))
                                               (_%$%hd263091263124%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e263090263121%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl263092263126%_))
                                               (let ((_%$%e263093263129%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl263092263126%_))))
                                                 (let ((_%$%tl263095263134%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e263093263129%_)))
                                                       (_%$%hd263094263132%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e263093263129%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl263095263134%_))
                                                       (_%__kont268488268489%_
                                                        _%$%hd263094263132%_
                                                        _%$%hd263091263124%_
                                                        _%$%hd262999263492%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%$%g262990263100%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g262990263100%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g262990263100%_))))))
                           (let ()
                             (declare (not safe))
                             (_%$%g262990263100%_)))))
                   (let () (declare (not safe)) (_%$%g262990263100%_)))))))))
    (define gxc#check-contract-violation!
      (lambda (_%stx262852%_ _%expr262853%_)
        (let* ((_%__stx268716268717%_ _%expr262853%_)
               (_%$%g262856262886%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx268716268717%_)))))
          (let ((_%__kont268718268719%_
                 (lambda (_%$%g262858262954%_
                          _%$%g262859262955%_
                          _%$%g262860262956%_)
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"contract violation"
                      _%stx262852%_
                      _%$%g262860262956%_
                      _%$%g262859262955%_
                      _%$%g262858262954%_))))
                (_%__kont268720268721%_ (lambda () _%expr262853%_)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx268716268717%_))
                (let ((_%$%e262861262898%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx268716268717%_))))
                  (let ((_%$%tl262863262903%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e262861262898%_)))
                        (_%$%hd262862262901%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e262861262898%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%$%hd262862262901%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq?
                               '%#begin-annotation
                               _%$%hd262862262901%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl262863262903%_))
                                (let ((_%$%e262864262906%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl262863262903%_))))
                                  (let ((_%$%tl262866262911%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e262864262906%_)))
                                        (_%$%hd262865262909%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e262864262906%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd262865262909%_))
                                        (let ((_%$%e262867262914%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd262865262909%_))))
                                          (let ((_%$%tl262869262919%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e262867262914%_)))
                                                (_%$%hd262868262917%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e262867262914%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd262868262917%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '@contract-violation
                                                       _%$%hd262868262917%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl262869262919%_))
                                                        (let ((_%$%e262870262922%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl262869262919%_))))
                  (let ((_%$%tl262872262927%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e262870262922%_)))
                        (_%$%hd262871262925%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e262870262922%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl262872262927%_))
                        (let ((_%$%e262873262930%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl262872262927%_))))
                          (let ((_%$%tl262875262935%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e262873262930%_)))
                                (_%$%hd262874262933%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e262873262930%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl262875262935%_))
                                (let ((_%$%e262876262938%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl262875262935%_))))
                                  (let ((_%$%tl262878262943%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e262876262938%_)))
                                        (_%$%hd262877262941%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e262876262938%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl262878262943%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl262866262911%_))
                                            (let ((_%$%e262879262946%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl262866262911%_))))
                                              (let ((_%$%tl262881262951%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e262879262946%_)))
                                                    (_%$%hd262880262949%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e262879262946%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl262881262951%_))
                                                    (_%__kont268718268719%_
                                                     _%$%hd262877262941%_
                                                     _%$%hd262874262933%_
                                                     _%$%hd262871262925%_)
                                                    (_%__kont268720268721%_))))
                                            (_%__kont268720268721%_))
                                        (_%__kont268720268721%_))))
                                (_%__kont268720268721%_))))
                        (_%__kont268720268721%_))))
                (_%__kont268720268721%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont268720268721%_))
                                                (_%__kont268720268721%_))))
                                        (_%__kont268720268721%_))))
                                (_%__kont268720268721%_))
                            (_%__kont268720268721%_))
                        (_%__kont268720268721%_))))
                (_%__kont268720268721%_))))))))
