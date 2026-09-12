(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1789188916)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp268770 (list gxc#::basic-xform::t))
            (__tmp268769 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp268770
         '()
         __tmp268769
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args267787%_
        (apply make-instance gxc#::optimize-call::t _%$args267787%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp268771
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
        (__make-atomic-promise __tmp268771)))
    (define gxc#apply-optimize-call
      (lambda (_%stx267779%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self267782%_
                (let ((__obj268761
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj268761))
               (__tmp268772
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self267782%_ _%stx267779%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp268772
           gxc#current-compile-method
           _%self267782%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp268774 (list gxc#::void::t))
            (__tmp268773 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp268774
         '()
         __tmp268773
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args267776%_
        (apply make-instance gxc#::check-return-type::t _%$args267776%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp268775
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
        (__make-atomic-promise __tmp268775)))
    (define gxc#apply-check-return-type
      (lambda (_%stx267768%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self267771%_
                (let ((__obj268763
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj268763))
               (__tmp268776
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self267771%_ _%stx267768%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp268776
           gxc#current-compile-method
           _%self267771%_))))
    (define gxc#optimize-call%
      (lambda (_%self266910%_ _%stx266911%_)
        (let* ((_%__stx267928267929%_ _%stx266911%_)
               (_%$%g266915266997%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx267928267929%_)))))
          (let ((_%__kont267930267931%_
                 (lambda (_%$%g266917267558%_ _%$%g266918267559%_)
                   (let* ((_%rator-id267579%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%$%g266918267559%_)))
                          (_%rator-type267581%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id267579%_)))
                          (_%$e267584%_
                           (let ()
                             (declare (not safe))
                             (__hash-get
                              gxc#special-procedure-optimizers
                              _%rator-id267579%_))))
                     (if _%$e267584%_
                         (_%$e267584%_ _%self266910%_ _%stx266911%_)
                         (if (or (not _%rator-type267581%_)
                                 (eq? (##structure-ref
                                       _%rator-type267581%_
                                       '1
                                       gxc#!type::t
                                       '#f)
                                      't))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self266910%_ _%stx266911%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%rator-type267581%_
                                    'gxc#!procedure::t))
                                 (let ()
                                   (let ((__tmp268777
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%rator-type267581%_
                                             '1
                                             '#f
                                             '#f))))
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"optimize-call "
                                      _%rator-id267579%_
                                      '" => "
                                      _%rator-type267581%_
                                      '" "
                                      __tmp268777))
                                   (let* ((_%optimized267601%_
                                           (let ((__method268764
                                                  (let ()
                                                    (declare (not safe))
                                                    (__method-ref
                                                     _%rator-type267581%_
                                                     'optimize-call))))
                                             (if __method268764
                                                 (let ((__tmp268778
                                                        (let ((__tmp268779
                                                               (lambda (_%$%g267593267596%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%$%g267594267598%_)
                         (cons _%$%g267593267596%_ _%$%g267594267598%_))))
                  (declare (not safe))
                  (foldr__0 __tmp268779 '() _%$%g266917267558%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__method268764
                                                    _%rator-type267581%_
                                                    _%self266910%_
                                                    _%stx266911%_
                                                    __tmp268778))
                                                 (begin
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Missing method"
                                                            _%rator-type267581%_
                                                            'optimize-call))
                                                   '#!void))))
                                          (_%__stx267876267877%_
                                           _%optimized267601%_)
                                          (_%$%g267604267633%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx267876267877%_)))))
                                     (let ((_%__kont267878267879%_
                                            (lambda (_%$%g267606267699%_
                                                     _%$%g267607267700%_)
                                              (let* ((_%optimized-rator-id267728%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#identifier-symbol
                                                         _%$%g267607267700%_)))
                                                     (_%rator-type267733%_
                                                      (let ((_%$e267730%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#optimizer-lookup-type
                        _%optimized-rator-id267728%_))))
                (if _%$e267730%_ _%$e267730%_ _%rator-type267581%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (or (let ()
                                                          (declare (not safe))
                                                          (class-instance?
                                                           gxc#!primitive::t
                                                           _%rator-type267733%_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##memq _%optimized-rator-id267728%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          gxc#checked-primitives))
                (and (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%rator-type267733%_
                        'gxc#!procedure::t))
                     (eq? (let ()
                            (declare (not safe))
                            (gxc#!procedure-origin _%rator-type267733%_))
                          (##structure-ref
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))
                           '1
                           gx#expander-context::t
                           '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%optimized267601%_
                                                    (let ((__tmp268780
                                                           (cons '%#call-unchecked
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f '%#ref))
                                     (cons _%$%g267607267700%_ '()))
                               (let ((__tmp268781
                                      (lambda (_%$%g267741267744%_
                                               _%$%g267742267746%_)
                                        (cons _%$%g267741267744%_
                                              _%$%g267742267746%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp268781
                                  '()
                                  _%$%g267606267699%_))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp268780 _%stx266911%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont267882267883%_
                                            (lambda () _%optimized267601%_)))
                                       (let ((_%__match267925267926%_
                                              (lambda (_%$%e267608267645%_
                                                       _%$%hd267609267648%_
                                                       _%$%tl267610267650%_
                                                       _%$%e267611267653%_
                                                       _%$%hd267612267656%_
                                                       _%$%tl267613267658%_
                                                       _%$%e267614267661%_
                                                       _%$%hd267615267664%_
                                                       _%$%tl267616267666%_
                                                       _%$%e267617267669%_
                                                       _%$%hd267618267672%_
                                                       _%$%tl267619267674%_
                                                       _%__splice267880267881%_
                                                       _%$%target267620267677%_
                                                       _%$%tl267622267679%_)
                                                (letrec ((_%$%loop267623267682%_
                                                          (lambda (_%$%hd267621267685%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%arg267627267687%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd267621267685%_))
                        (let ((_%$%e267624267689%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd267621267685%_))))
                          (let ((_%$%lp-tl267626267694%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e267624267689%_)))
                                (_%$%lp-hd267625267692%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e267624267689%_))))
                            (_%$%loop267623267682%_
                             _%$%lp-tl267626267694%_
                             (cons _%$%lp-hd267625267692%_
                                   _%$%arg267627267687%_))))
                        (let ((_%$%arg267628267697%_
                               (reverse _%$%arg267627267687%_)))
                          (_%__kont267878267879%_
                           _%$%arg267628267697%_
                           _%$%hd267618267672%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop267623267682%_
                                                   _%$%target267620267677%_
                                                   '())))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx267876267877%_))
                                             (let ((_%$%e267608267645%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx267876267877%_))))
                                               (let ((_%$%tl267610267650%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e267608267645%_)))
                                                     (_%$%hd267609267648%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e267608267645%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%$%hd267609267648%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#call
                                                            _%$%hd267609267648%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%tl267610267650%_))
                     (let ((_%$%e267611267653%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl267610267650%_))))
                       (let ((_%$%tl267613267658%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e267611267653%_)))
                             (_%$%hd267612267656%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e267611267653%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%hd267612267656%_))
                             (let ((_%$%e267614267661%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%hd267612267656%_))))
                               (let ((_%$%tl267616267666%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e267614267661%_)))
                                     (_%$%hd267615267664%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e267614267661%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#identifier? _%$%hd267615267664%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-eq?
                                            '%#ref
                                            _%$%hd267615267664%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%tl267616267666%_))
                                             (let ((_%$%e267617267669%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%tl267616267666%_))))
                                               (let ((_%$%tl267619267674%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e267617267669%_)))
                                                     (_%$%hd267618267672%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e267617267669%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%$%tl267619267674%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%$%tl267613267658%_))
                                                         (let ((_%__splice267880267881%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%$%tl267613267658%_
                           '0))))
                   (let ((_%$%tl267622267679%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice267880267881%_ '1)))
                         (_%$%target267620267677%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice267880267881%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl267622267679%_))
                         (_%__match267925267926%_
                          _%$%e267608267645%_
                          _%$%hd267609267648%_
                          _%$%tl267610267650%_
                          _%$%e267611267653%_
                          _%$%hd267612267656%_
                          _%$%tl267613267658%_
                          _%$%e267614267661%_
                          _%$%hd267615267664%_
                          _%$%tl267616267666%_
                          _%$%e267617267669%_
                          _%$%hd267618267672%_
                          _%$%tl267619267674%_
                          _%__splice267880267881%_
                          _%$%target267620267677%_
                          _%$%tl267622267679%_)
                         (_%__kont267882267883%_))))
                 (_%__kont267882267883%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont267882267883%_))))
                                             (_%__kont267882267883%_))
                                         (_%__kont267882267883%_))
                                     (_%__kont267882267883%_))))
                             (_%__kont267882267883%_))))
                     (_%__kont267882267883%_))
                 (_%__kont267882267883%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont267882267883%_))))
                                             (_%__kont267882267883%_))))))
                                 (if (and (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%rator-type267581%_
                                             'gxc#!class::t))
                                          (eq? (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%rator-type267581%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               'procedure))
                                     (let ((__tmp268782
                                            (cons '%#call-unchecked
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f '%#ref))
                      (cons _%$%g266918267559%_ '()))
                (map (lambda (_%$%g267752267754%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self266910%_
                          _%$%g267752267754%_)))
                     (let ((__tmp268783
                            (lambda (_%$%g267756267759%_ _%$%g267757267761%_)
                              (cons _%$%g267756267759%_ _%$%g267757267761%_))))
                       (declare (not safe))
                       (foldr__0 __tmp268783 '() _%$%g266917267558%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp268782
                                        _%stx266911%_))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"illegal application; not a procedure"
                                        _%stx266911%_
                                        _%rator-type267581%_)))))))))
                (_%__kont267934267935%_
                 (lambda (_%$%g266940267166%_
                          _%$%g266941267167%_
                          _%$%g266942267168%_)
                   (let _%loop267286%_ ((_%rest-arg267288%_
                                         (let ((__tmp268790
                                                (lambda (_%$%g267484267487%_
                                                         _%$%g267485267489%_)
                                                  (cons _%$%g267484267487%_
                                                        _%$%g267485267489%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp268790
                                            '()
                                            _%$%g266942267168%_)))
                                        (_%rest-rand267289%_
                                         (let ((__tmp268791
                                                (lambda (_%$%g267491267494%_
                                                         _%$%g267492267496%_)
                                                  (cons _%$%g267491267494%_
                                                        _%$%g267492267496%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp268791
                                            '()
                                            _%$%g266940267166%_)))
                                        (_%bind267290%_ '())
                                        (_%subst267291%_ '()))
                     (let* ((_%$%rest-arg267292267300%_ _%rest-arg267288%_)
                            (_%$%else267294267313%_
                             (lambda ()
                               (let* ((_%body267308%_
                                       (if (null? _%subst267291%_)
                                           _%$%g266941267167%_
                                           (let ((__tmp268784
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-inline-subst__%
                                                     '#f
                                                     _%subst267291%_
                                                     _%$%g266941267167%_))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp268784
                                              _%stx266911%_))))
                                      (_%expr267310%_
                                       (let ((__tmp268785
                                              (cons '%#let-values
                                                    (cons _%bind267290%_
                                                          (cons _%body267308%_
                                                                '())))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp268785
                                          _%stx266911%_))))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-refine-type-info _%expr267310%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self266910%_
                                    _%expr267310%_)))))
                            (_%$%K267296267473%_
                             (lambda (_%rest-arg267316%_ _%arg-id267317%_)
                               (let* ((_%$%rest-rand267318267326%_
                                       _%rest-rand267289%_)
                                      (_%$%else267320267348%_
                                       (lambda ()
                                         (let ((__tmp268788
                                                (let ((__tmp268789
                                                       (lambda (_%$%g267333267336%_
                                                                _%$%g267334267338%_)
                                                         (cons _%$%g267333267336%_
                                                               _%$%g267334267338%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp268789
                                                   '()
                                                   _%$%g266942267168%_)))
                                               (__tmp268786
                                                (let ((__tmp268787
                                                       (lambda (_%$%g267340267343%_
                                                                _%$%g267341267345%_)
                                                         (cons _%$%g267340267343%_
                                                               _%$%g267341267345%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp268787
                                                   '()
                                                   _%$%g266940267166%_))))
                                           (declare (not safe))
                                           (gxc#raise-compile-error
                                            '"inline lambda arity mismatch"
                                            _%stx266911%_
                                            __tmp268788
                                            __tmp268786))))
                                      (_%$%K267322267461%_
                                       (lambda (_%rest-rand267351%_
                                                _%rand267352%_)
                                         (let* ((_%__stx267830267831%_
                                                 _%rand267352%_)
                                                (_%$%g267356267376%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx267830267831%_)))))
                                           (let ((_%__kont267832267833%_
                                                  (lambda (_%$%g267358267447%_)
                                                    (_%loop267286%_
                                                     _%rest-arg267316%_
                                                     _%rest-rand267351%_
                                                     _%bind267290%_
                                                     (cons (cons _%arg-id267317%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%rand267352%_)
                   _%subst267291%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont267834267835%_
                                                  (lambda (_%$%g267365267404%_)
                                                    (_%loop267286%_
                                                     _%rest-arg267316%_
                                                     _%rest-rand267351%_
                                                     _%bind267290%_
                                                     (cons (cons _%arg-id267317%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%rand267352%_)
                   _%subst267291%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont267836267837%_
                                                  (lambda ()
                                                    (_%loop267286%_
                                                     _%rest-arg267316%_
                                                     _%rest-rand267351%_
                                                     (cons (cons (cons _%arg-id267317%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons _%rand267352%_ '()))
                   _%bind267290%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%subst267291%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx267830267831%_))
                                                 (let ((_%$%e267359267431%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx267830267831%_))))
                                                   (let ((_%$%tl267361267436%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e267359267431%_)))
                                                         (_%$%hd267360267434%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e267359267431%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%$%hd267360267434%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#quote _%$%hd267360267434%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%tl267361267436%_))
                         (let ((_%$%e267362267439%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%tl267361267436%_))))
                           (let ((_%$%tl267364267444%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e267362267439%_)))
                                 (_%$%hd267363267442%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e267362267439%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%$%tl267364267444%_))
                                 (_%__kont267832267833%_ _%$%hd267363267442%_)
                                 (_%__kont267836267837%_))))
                         (_%__kont267836267837%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#ref _%$%hd267360267434%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%tl267361267436%_))
                             (let ((_%$%e267369267396%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%tl267361267436%_))))
                               (let ((_%$%tl267371267401%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e267369267396%_)))
                                     (_%$%hd267370267399%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e267369267396%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%$%tl267371267401%_))
                                     (_%__kont267834267835%_
                                      _%$%hd267370267399%_)
                                     (_%__kont267836267837%_))))
                             (_%__kont267836267837%_))
                         (_%__kont267836267837%_)))
                 (_%__kont267836267837%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont267836267837%_)))))))
                                 (if (pair? _%$%rest-rand267318267326%_)
                                     (let ((_%$%hd267323267464%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%rest-rand267318267326%_)))
                                           (_%$%tl267324267466%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%rest-rand267318267326%_))))
                                       (let* ((_%rand267469%_
                                               _%$%hd267323267464%_)
                                              (_%rest-rand267471%_
                                               _%$%tl267324267466%_))
                                         (_%$%K267322267461%_
                                          _%rest-rand267471%_
                                          _%rand267469%_)))
                                     (_%$%else267320267348%_))))))
                       (if (pair? _%$%rest-arg267292267300%_)
                           (let ((_%$%hd267297267476%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%rest-arg267292267300%_)))
                                 (_%$%tl267298267478%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%rest-arg267292267300%_))))
                             (let* ((_%arg-id267481%_ _%$%hd267297267476%_)
                                    (_%rest-arg267483%_ _%$%tl267298267478%_))
                               (_%$%K267296267473%_
                                _%rest-arg267483%_
                                _%arg-id267481%_)))
                           (_%$%else267294267313%_))))))
                (_%__kont267940267941%_
                 (lambda (_%$%g266976267040%_ _%$%g266977267041%_)
                   (let ((_%rator-type267058%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type
                             _%$%g266977267041%_))))
                     (if (and _%rator-type267058%_
                              (eq? (##structure-ref
                                    _%rator-type267058%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type267058%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type267058%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type267058%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp268792
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self266910%_
                                               _%$%g266977267041%_))
                                            (map (lambda (_%$%g267060267062%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self266910%_
                                                      _%$%g267060267062%_)))
                                                 (let ((__tmp268793
                                                        (lambda (_%$%g267064267067%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g267065267069%_)
                  (cons _%$%g267064267067%_ _%$%g267065267069%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp268793
                                                    '()
                                                    _%$%g266976267040%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp268792 _%stx266911%_))
                         (if (or (not _%rator-type267058%_)
                                 (let ((__tmp268794
                                        (##structure-ref
                                         _%rator-type267058%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp268794 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self266910%_ _%stx266911%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx266911%_
                                _%rator-type267058%_))))))))
            (let* ((_%__match268037268038%_
                    (lambda (_%$%e266978267002%_
                             _%$%hd266979267005%_
                             _%$%tl266980267007%_
                             _%$%e266981267010%_
                             _%$%hd266982267013%_
                             _%$%tl266983267015%_
                             _%__splice267942267943%_
                             _%$%target266984267018%_
                             _%$%tl266986267020%_)
                      (letrec ((_%$%loop266987267023%_
                                (lambda (_%$%hd266985267026%_
                                         _%$%rand266991267028%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd266985267026%_))
                                      (let ((_%$%e266988267030%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd266985267026%_))))
                                        (let ((_%$%lp-tl266990267035%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e266988267030%_)))
                                              (_%$%lp-hd266989267033%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e266988267030%_))))
                                          (_%$%loop266987267023%_
                                           _%$%lp-tl266990267035%_
                                           (cons _%$%lp-hd266989267033%_
                                                 _%$%rand266991267028%_))))
                                      (let ((_%$%rand266992267038%_
                                             (reverse _%$%rand266991267028%_)))
                                        (_%__kont267940267941%_
                                         _%$%rand266992267038%_
                                         _%$%hd266982267013%_))))))
                        (_%$%loop266987267023%_
                         _%$%target266984267018%_
                         '()))))
                   (_%__match268029268030%_
                    (lambda (_%$%e266978267002%_
                             _%$%hd266979267005%_
                             _%$%tl266980267007%_
                             _%$%e266981267010%_
                             _%$%hd266982267013%_
                             _%$%tl266983267015%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%$%tl266983267015%_))
                          (let ((_%__splice267942267943%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%$%tl266983267015%_
                                    '0))))
                            (let ((_%$%tl266986267020%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice267942267943%_
                                      '1)))
                                  (_%$%target266984267018%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice267942267943%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl266986267020%_))
                                  (_%__match268037268038%_
                                   _%$%e266978267002%_
                                   _%$%hd266979267005%_
                                   _%$%tl266980267007%_
                                   _%$%e266981267010%_
                                   _%$%hd266982267013%_
                                   _%$%tl266983267015%_
                                   _%__splice267942267943%_
                                   _%$%target266984267018%_
                                   _%$%tl266986267020%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g266915266997%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g266915266997%_)))))
                   (_%__match268017268018%_
                    (lambda (_%$%e266943267082%_
                             _%$%hd266944267085%_
                             _%$%tl266945267087%_
                             _%$%e266946267090%_
                             _%$%hd266947267093%_
                             _%$%tl266948267095%_
                             _%$%e266949267098%_
                             _%$%hd266950267101%_
                             _%$%tl266951267103%_
                             _%$%e266952267106%_
                             _%$%hd266953267109%_
                             _%$%tl266954267111%_
                             _%__splice267936267937%_
                             _%$%target266955267114%_
                             _%$%tl266957267116%_)
                      (letrec ((_%$%loop266958267119%_
                                (lambda (_%$%hd266956267122%_
                                         _%$%arg266962267124%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd266956267122%_))
                                      (let ((_%$%e266959267126%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd266956267122%_))))
                                        (let ((_%$%lp-tl266961267131%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e266959267126%_)))
                                              (_%$%lp-hd266960267129%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e266959267126%_))))
                                          (_%$%loop266958267119%_
                                           _%$%lp-tl266961267131%_
                                           (cons _%$%lp-hd266960267129%_
                                                 _%$%arg266962267124%_))))
                                      (let ((_%$%arg266963267134%_
                                             (reverse _%$%arg266962267124%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl266954267111%_))
                                            (let ((_%$%e266964267136%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl266954267111%_))))
                                              (let ((_%$%tl266966267141%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e266964267136%_)))
                                                    (_%$%hd266965267139%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e266964267136%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl266966267141%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%$%tl266948267095%_))
                                                        (let ((_%__splice267938267939%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%$%tl266948267095%_
                          '0))))
                  (let ((_%$%tl266969267146%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice267938267939%_ '1)))
                        (_%$%target266967267144%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice267938267939%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl266969267146%_))
                        (letrec ((_%$%loop266970267149%_
                                  (lambda (_%$%hd266968267152%_
                                           _%$%rand266974267154%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd266968267152%_))
                                        (let ((_%$%e266971267156%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd266968267152%_))))
                                          (let ((_%$%lp-tl266973267161%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e266971267156%_)))
                                                (_%$%lp-hd266972267159%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e266971267156%_))))
                                            (_%$%loop266970267149%_
                                             _%$%lp-tl266973267161%_
                                             (cons _%$%lp-hd266972267159%_
                                                   _%$%rand266974267154%_))))
                                        (let ((_%$%rand266975267164%_
                                               (reverse _%$%rand266974267154%_)))
                                          (let ((_%$%g266940267166%_
                                                 _%$%rand266975267164%_)
                                                (_%$%g266941267167%_
                                                 _%$%hd266965267139%_)
                                                (_%$%g266942267168%_
                                                 _%$%arg266963267134%_))
                                            (if (and (= (length (let ((__tmp268795
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_%$%g267194267197%_
                                        _%$%g267195267199%_)
                                 (cons _%$%g267194267197%_
                                       _%$%g267195267199%_))))
                          (declare (not safe))
                          (foldr__0 __tmp268795 '() _%$%g266942267168%_)))
                (length (let ((__tmp268796
                               (lambda (_%$%g267201267204%_
                                        _%$%g267202267206%_)
                                 (cons _%$%g267201267204%_
                                       _%$%g267202267206%_))))
                          (declare (not safe))
                          (foldr__0 __tmp268796 '() _%$%g266940267166%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp268799
                                                            (lambda (_%id267209%_)
                                                              (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gxc#mutable-binding? _%id267209%_)))))
                   (__tmp268797
                    (let ((__tmp268798
                           (lambda (_%$%g267210267213%_ _%$%g267211267215%_)
                             (cons _%$%g267210267213%_ _%$%g267211267215%_))))
                      (declare (not safe))
                      (foldr__0 __tmp268798 '() _%$%g266942267168%_))))
               (declare (not safe))
               (andmap__0 __tmp268799 __tmp268797))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp268802
                                                            (lambda (_%rand267218%_)
                                                              (let* ((_%__stx267804267805%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%rand267218%_)
                             (_%$%g267221267234%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx267804267805%_)))))
                        (let ((_%__kont267806267807%_
                               (lambda (_%$%g267223267262%_)
                                 (not (let ()
                                        (declare (not safe))
                                        (gxc#mutable-binding?
                                         _%$%g267223267262%_)))))
                              (_%__kont267808267809%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx267804267805%_))
                              (let ((_%$%e267224267246%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx267804267805%_))))
                                (let ((_%$%tl267226267251%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e267224267246%_)))
                                      (_%$%hd267225267249%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e267224267246%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd267225267249%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd267225267249%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl267226267251%_))
                                              (let ((_%$%e267227267254%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl267226267251%_))))
                                                (let ((_%$%tl267229267259%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e267227267254%_)))
                                                      (_%$%hd267228267257%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e267227267254%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl267229267259%_))
                                                      (_%__kont267806267807%_
                                                       _%$%hd267228267257%_)
                                                      (_%__kont267808267809%_))))
                                              (_%__kont267808267809%_))
                                          (_%__kont267808267809%_))
                                      (_%__kont267808267809%_))))
                              (_%__kont267808267809%_))))))
                   (__tmp268800
                    (let ((__tmp268801
                           (lambda (_%$%g267278267281%_ _%$%g267279267283%_)
                             (cons _%$%g267278267281%_ _%$%g267279267283%_))))
                      (declare (not safe))
                      (foldr__0 __tmp268801 '() _%$%g266940267166%_))))
               (declare (not safe))
               (andmap__0 __tmp268802 __tmp268800)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont267934267935%_
                                                 _%$%g266940267166%_
                                                 _%$%g266941267167%_
                                                 _%$%g266942267168%_)
                                                (_%__match268037268038%_
                                                 _%$%e266943267082%_
                                                 _%$%hd266944267085%_
                                                 _%$%tl266945267087%_
                                                 _%$%e266946267090%_
                                                 _%$%hd266947267093%_
                                                 _%$%tl266948267095%_
                                                 _%__splice267938267939%_
                                                 _%$%target266967267144%_
                                                 _%$%tl266969267146%_))))))))
                          (_%$%loop266970267149%_
                           _%$%target266967267144%_
                           '()))
                        (let () (declare (not safe)) (_%$%g266915266997%_)))))
                (let () (declare (not safe)) (_%$%g266915266997%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match268029268030%_
                                                     _%$%e266943267082%_
                                                     _%$%hd266944267085%_
                                                     _%$%tl266945267087%_
                                                     _%$%e266946267090%_
                                                     _%$%hd266947267093%_
                                                     _%$%tl266948267095%_))))
                                            (_%__match268029268030%_
                                             _%$%e266943267082%_
                                             _%$%hd266944267085%_
                                             _%$%tl266945267087%_
                                             _%$%e266946267090%_
                                             _%$%hd266947267093%_
                                             _%$%tl266948267095%_)))))))
                        (_%$%loop266958267119%_
                         _%$%target266955267114%_
                         '()))))
                   (_%__match267981267982%_
                    (lambda (_%$%e266919267504%_
                             _%$%hd266920267507%_
                             _%$%tl266921267509%_
                             _%$%e266922267512%_
                             _%$%hd266923267515%_
                             _%$%tl266924267517%_
                             _%$%e266925267520%_
                             _%$%hd266926267523%_
                             _%$%tl266927267525%_
                             _%$%e266928267528%_
                             _%$%hd266929267531%_
                             _%$%tl266930267533%_
                             _%__splice267932267933%_
                             _%$%target266931267536%_
                             _%$%tl266933267538%_)
                      (letrec ((_%$%loop266934267541%_
                                (lambda (_%$%hd266932267544%_
                                         _%$%rand266938267546%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd266932267544%_))
                                      (let ((_%$%e266935267548%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd266932267544%_))))
                                        (let ((_%$%lp-tl266937267553%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e266935267548%_)))
                                              (_%$%lp-hd266936267551%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e266935267548%_))))
                                          (_%$%loop266934267541%_
                                           _%$%lp-tl266937267553%_
                                           (cons _%$%lp-hd266936267551%_
                                                 _%$%rand266938267546%_))))
                                      (let ((_%$%rand266939267556%_
                                             (reverse _%$%rand266938267546%_)))
                                        (_%__kont267930267931%_
                                         _%$%rand266939267556%_
                                         _%$%hd266929267531%_))))))
                        (_%$%loop266934267541%_
                         _%$%target266931267536%_
                         '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx267928267929%_))
                  (let ((_%$%e266919267504%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx267928267929%_))))
                    (let ((_%$%tl266921267509%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e266919267504%_)))
                          (_%$%hd266920267507%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e266919267504%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl266921267509%_))
                          (let ((_%$%e266922267512%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl266921267509%_))))
                            (let ((_%$%tl266924267517%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e266922267512%_)))
                                  (_%$%hd266923267515%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e266922267512%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd266923267515%_))
                                  (let ((_%$%e266925267520%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd266923267515%_))))
                                    (let ((_%$%tl266927267525%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e266925267520%_)))
                                          (_%$%hd266926267523%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e266925267520%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd266926267523%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd266926267523%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl266927267525%_))
                                                  (let ((_%$%e266928267528%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl266927267525%_))))
                                                    (let ((_%$%tl266930267533%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e266928267528%_)))
                                                          (_%$%hd266929267531%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e266928267528%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl266930267533%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%$%tl266924267517%_))
                      (let ((_%__splice267932267933%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl266924267517%_
                                '0))))
                        (let ((_%$%tl266933267538%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice267932267933%_ '1)))
                              (_%$%target266931267536%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice267932267933%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl266933267538%_))
                              (_%__match267981267982%_
                               _%$%e266919267504%_
                               _%$%hd266920267507%_
                               _%$%tl266921267509%_
                               _%$%e266922267512%_
                               _%$%hd266923267515%_
                               _%$%tl266924267517%_
                               _%$%e266925267520%_
                               _%$%hd266926267523%_
                               _%$%tl266927267525%_
                               _%$%e266928267528%_
                               _%$%hd266929267531%_
                               _%$%tl266930267533%_
                               _%__splice267932267933%_
                               _%$%target266931267536%_
                               _%$%tl266933267538%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g266915266997%_)))))
                      (let () (declare (not safe)) (_%$%g266915266997%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%$%tl266924267517%_))
                      (let ((_%__splice267942267943%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl266924267517%_
                                '0))))
                        (let ((_%$%tl266986267020%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice267942267943%_ '1)))
                              (_%$%target266984267018%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice267942267943%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl266986267020%_))
                              (_%__match268037268038%_
                               _%$%e266919267504%_
                               _%$%hd266920267507%_
                               _%$%tl266921267509%_
                               _%$%e266922267512%_
                               _%$%hd266923267515%_
                               _%$%tl266924267517%_
                               _%__splice267942267943%_
                               _%$%target266984267018%_
                               _%$%tl266986267020%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g266915266997%_)))))
                      (let () (declare (not safe)) (_%$%g266915266997%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl266924267517%_))
                                                      (let ((_%__splice267942267943%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl266924267517%_
                        '0))))
                (let ((_%$%tl266986267020%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice267942267943%_ '1)))
                      (_%$%target266984267018%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice267942267943%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl266986267020%_))
                      (_%__match268037268038%_
                       _%$%e266919267504%_
                       _%$%hd266920267507%_
                       _%$%tl266921267509%_
                       _%$%e266922267512%_
                       _%$%hd266923267515%_
                       _%$%tl266924267517%_
                       _%__splice267942267943%_
                       _%$%target266984267018%_
                       _%$%tl266986267020%_)
                      (let () (declare (not safe)) (_%$%g266915266997%_)))))
              (let () (declare (not safe)) (_%$%g266915266997%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#lambda
                                                     _%$%hd266926267523%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl266927267525%_))
                                                      (let ((_%$%e266952267106%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl266927267525%_))))
                (let ((_%$%tl266954267111%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e266952267106%_)))
                      (_%$%hd266953267109%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e266952267106%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%$%hd266953267109%_))
                      (let ((_%__splice267936267937%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%hd266953267109%_
                                '0))))
                        (let ((_%$%tl266957267116%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice267936267937%_ '1)))
                              (_%$%target266955267114%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice267936267937%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl266957267116%_))
                              (_%__match268017268018%_
                               _%$%e266919267504%_
                               _%$%hd266920267507%_
                               _%$%tl266921267509%_
                               _%$%e266922267512%_
                               _%$%hd266923267515%_
                               _%$%tl266924267517%_
                               _%$%e266925267520%_
                               _%$%hd266926267523%_
                               _%$%tl266927267525%_
                               _%$%e266952267106%_
                               _%$%hd266953267109%_
                               _%$%tl266954267111%_
                               _%__splice267936267937%_
                               _%$%target266955267114%_
                               _%$%tl266957267116%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _%$%tl266924267517%_))
                                  (let ((_%__splice267942267943%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice->vector
                                            _%$%tl266924267517%_
                                            '0))))
                                    (let ((_%$%tl266986267020%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice267942267943%_
                                              '1)))
                                          (_%$%target266984267018%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice267942267943%_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl266986267020%_))
                                          (_%__match268037268038%_
                                           _%$%e266919267504%_
                                           _%$%hd266920267507%_
                                           _%$%tl266921267509%_
                                           _%$%e266922267512%_
                                           _%$%hd266923267515%_
                                           _%$%tl266924267517%_
                                           _%__splice267942267943%_
                                           _%$%target266984267018%_
                                           _%$%tl266986267020%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g266915266997%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g266915266997%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%$%tl266924267517%_))
                          (let ((_%__splice267942267943%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%$%tl266924267517%_
                                    '0))))
                            (let ((_%$%tl266986267020%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice267942267943%_
                                      '1)))
                                  (_%$%target266984267018%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice267942267943%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl266986267020%_))
                                  (_%__match268037268038%_
                                   _%$%e266919267504%_
                                   _%$%hd266920267507%_
                                   _%$%tl266921267509%_
                                   _%$%e266922267512%_
                                   _%$%hd266923267515%_
                                   _%$%tl266924267517%_
                                   _%__splice267942267943%_
                                   _%$%target266984267018%_
                                   _%$%tl266986267020%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g266915266997%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g266915266997%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%$%tl266924267517%_))
                  (let ((_%__splice267942267943%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%$%tl266924267517%_
                            '0))))
                    (let ((_%$%tl266986267020%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice267942267943%_ '1)))
                          (_%$%target266984267018%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice267942267943%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl266986267020%_))
                          (_%__match268037268038%_
                           _%$%e266919267504%_
                           _%$%hd266920267507%_
                           _%$%tl266921267509%_
                           _%$%e266922267512%_
                           _%$%hd266923267515%_
                           _%$%tl266924267517%_
                           _%__splice267942267943%_
                           _%$%target266984267018%_
                           _%$%tl266986267020%_)
                          (let ()
                            (declare (not safe))
                            (_%$%g266915266997%_)))))
                  (let () (declare (not safe)) (_%$%g266915266997%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl266924267517%_))
                                                      (let ((_%__splice267942267943%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl266924267517%_
                        '0))))
                (let ((_%$%tl266986267020%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice267942267943%_ '1)))
                      (_%$%target266984267018%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice267942267943%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl266986267020%_))
                      (_%__match268037268038%_
                       _%$%e266919267504%_
                       _%$%hd266920267507%_
                       _%$%tl266921267509%_
                       _%$%e266922267512%_
                       _%$%hd266923267515%_
                       _%$%tl266924267517%_
                       _%__splice267942267943%_
                       _%$%target266984267018%_
                       _%$%tl266986267020%_)
                      (let () (declare (not safe)) (_%$%g266915266997%_)))))
              (let () (declare (not safe)) (_%$%g266915266997%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%$%tl266924267517%_))
                                              (let ((_%__splice267942267943%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl266924267517%_
                                                        '0))))
                                                (let ((_%$%tl266986267020%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice267942267943%_
                                                          '1)))
                                                      (_%$%target266984267018%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice267942267943%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl266986267020%_))
                                                      (_%__match268037268038%_
                                                       _%$%e266919267504%_
                                                       _%$%hd266920267507%_
                                                       _%$%tl266921267509%_
                                                       _%$%e266922267512%_
                                                       _%$%hd266923267515%_
                                                       _%$%tl266924267517%_
                                                       _%__splice267942267943%_
                                                       _%$%target266984267018%_
                                                       _%$%tl266986267020%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g266915266997%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g266915266997%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl266924267517%_))
                                      (let ((_%__splice267942267943%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%tl266924267517%_
                                                '0))))
                                        (let ((_%$%tl266986267020%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice267942267943%_
                                                  '1)))
                                              (_%$%target266984267018%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice267942267943%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl266986267020%_))
                                              (_%__match268037268038%_
                                               _%$%e266919267504%_
                                               _%$%hd266920267507%_
                                               _%$%tl266921267509%_
                                               _%$%e266922267512%_
                                               _%$%hd266923267515%_
                                               _%$%tl266924267517%_
                                               _%__splice267942267943%_
                                               _%$%target266984267018%_
                                               _%$%tl266986267020%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g266915266997%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g266915266997%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g266915266997%_)))))
                  (let () (declare (not safe)) (_%$%g266915266997%_))))))))
    (define gxc#optimize-special-cast
      (lambda (_%self266715%_ _%stx266716%_)
        (let* ((_%__stx268040268041%_ _%stx266716%_)
               (_%$%g266720266760%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx268040268041%_)))))
          (let ((_%__kont268042268043%_
                 (lambda (_%$%g266722266876%_ _%$%g266723266877%_)
                   (let* ((_%descriptor-id266897%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%$%g266723266877%_)))
                          (_%descriptor-type266899%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type
                              _%descriptor-id266897%_)))
                          (_%object-type266901%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%$%g266722266876%_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _%descriptor-type266899%_
                            'gxc#!interface::t))
                         (if (and _%object-type266901%_
                                  (eq? (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%descriptor-type266899%_
                                          '1
                                          '#f
                                          '#f))
                                       (##structure-ref
                                        _%object-type266901%_
                                        '1
                                        gxc#!type::t
                                        '#f)))
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self266715%_
                                _%$%g266722266876%_))
                             (let ((__tmp268803
                                    (cons '%#call-unchecked
                                          (cons '(%#ref cast)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#ref))
                                                            (cons _%$%g266723266877%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self266715%_ _%$%g266722266876%_))
                    '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp268803
                                _%stx266716%_)))
                         (let ()
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"illegal cast; not an interface type"
                            _%stx266716%_
                            _%descriptor-type266899%_))))))
                (_%__kont268044268045%_
                 (lambda (_%$%g266742266804%_ _%$%g266743266805%_)
                   (let ((__tmp268804
                          (cons '%#call-unchecked
                                (cons '(%#ref cast)
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self266715%_
                                               _%$%g266743266805%_))
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self266715%_
                                                     _%$%g266742266804%_))
                                                  '()))))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp268804 _%stx266716%_))))
                (_%__kont268046268047%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"illegal cast; arity mismatch"
                      _%stx266716%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx268040268041%_))
                (let ((_%$%e266724266828%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx268040268041%_))))
                  (let ((_%$%tl266726266833%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e266724266828%_)))
                        (_%$%hd266725266831%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e266724266828%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl266726266833%_))
                        (let ((_%$%e266727266836%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl266726266833%_))))
                          (let ((_%$%tl266729266841%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e266727266836%_)))
                                (_%$%hd266728266839%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e266727266836%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl266729266841%_))
                                (let ((_%$%e266730266844%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl266729266841%_))))
                                  (let ((_%$%tl266732266849%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e266730266844%_)))
                                        (_%$%hd266731266847%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e266730266844%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd266731266847%_))
                                        (let ((_%$%e266733266852%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd266731266847%_))))
                                          (let ((_%$%tl266735266857%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e266733266852%_)))
                                                (_%$%hd266734266855%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e266733266852%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd266734266855%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%$%hd266734266855%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl266735266857%_))
                                                        (let ((_%$%e266736266860%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl266735266857%_))))
                  (let ((_%$%tl266738266865%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e266736266860%_)))
                        (_%$%hd266737266863%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e266736266860%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl266738266865%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl266732266849%_))
                            (let ((_%$%e266739266868%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl266732266849%_))))
                              (let ((_%$%tl266741266873%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e266739266868%_)))
                                    (_%$%hd266740266871%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e266739266868%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl266741266873%_))
                                    (_%__kont268042268043%_
                                     _%$%hd266740266871%_
                                     _%$%hd266737266863%_)
                                    (_%__kont268046268047%_))))
                            (_%__kont268046268047%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl266732266849%_))
                            (let ((_%$%e266753266796%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl266732266849%_))))
                              (let ((_%$%tl266755266801%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e266753266796%_)))
                                    (_%$%hd266754266799%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e266753266796%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl266755266801%_))
                                    (_%__kont268044268045%_
                                     _%$%hd266754266799%_
                                     _%$%hd266731266847%_)
                                    (_%__kont268046268047%_))))
                            (_%__kont268046268047%_)))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%$%tl266732266849%_))
                    (let ((_%$%e266753266796%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl266732266849%_))))
                      (let ((_%$%tl266755266801%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e266753266796%_)))
                            (_%$%hd266754266799%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e266753266796%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl266755266801%_))
                            (_%__kont268044268045%_
                             _%$%hd266754266799%_
                             _%$%hd266731266847%_)
                            (_%__kont268046268047%_))))
                    (_%__kont268046268047%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl266732266849%_))
                                                        (let ((_%$%e266753266796%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl266732266849%_))))
                  (let ((_%$%tl266755266801%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e266753266796%_)))
                        (_%$%hd266754266799%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e266753266796%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl266755266801%_))
                        (_%__kont268044268045%_
                         _%$%hd266754266799%_
                         _%$%hd266731266847%_)
                        (_%__kont268046268047%_))))
                (_%__kont268046268047%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl266732266849%_))
                                                    (let ((_%$%e266753266796%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl266732266849%_))))
                                                      (let ((_%$%tl266755266801%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e266753266796%_)))
                    (_%$%hd266754266799%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e266753266796%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl266755266801%_))
                    (_%__kont268044268045%_
                     _%$%hd266754266799%_
                     _%$%hd266731266847%_)
                    (_%__kont268046268047%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont268046268047%_)))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl266732266849%_))
                                            (let ((_%$%e266753266796%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl266732266849%_))))
                                              (let ((_%$%tl266755266801%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e266753266796%_)))
                                                    (_%$%hd266754266799%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e266753266796%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl266755266801%_))
                                                    (_%__kont268044268045%_
                                                     _%$%hd266754266799%_
                                                     _%$%hd266731266847%_)
                                                    (_%__kont268046268047%_))))
                                            (_%__kont268046268047%_)))))
                                (_%__kont268046268047%_))))
                        (_%__kont268046268047%_))))
                (_%__kont268046268047%_))))))
    (define gxc#special-procedure-optimizers
      (let ((_%ht266712%_
             (let () (declare (not safe)) (make-hash-table-eq 'size: '1))))
        (let ()
          (declare (not safe))
          (__hash-put! _%ht266712%_ 'cast gxc#optimize-special-cast))
        _%ht266712%_))
    (define gxc#!procedure::optimize-call
      (lambda (_%self266674%_ _%ctx266675%_ _%stx266676%_ _%args266677%_)
        (let ((_%self266680%_ _%self266674%_))
          (if (let ((__method268765
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self266680%_ 'check-arguments))))
                (if __method268765
                    (let ()
                      (declare (not safe))
                      (__method268765
                       _%self266680%_
                       _%ctx266675%_
                       _%stx266676%_
                       _%args266677%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self266680%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature266690%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self266680%_ '2 '#f '#f)))
                     (_%signature266692%_ _%signature266690%_)
                     (_%$e266702%_
                      (if _%signature266692%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature266692%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e266702%_
                    (if (let ()
                          (declare (not safe))
                          (gxc#symbol-in-local-scope? _%$e266702%_))
                        (let ((__tmp268805
                               (cons '%#call
                                     (cons (cons '%#ref
                                                 (cons _%$e266702%_ '()))
                                           (map (lambda (_%$%g266706266708%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%ctx266675%_
                                                     _%$%g266706266708%_)))
                                                _%args266677%_)))))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp268805
                           _%stx266676%_
                           _%ctx266675%_))
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx266675%_ _%stx266676%_)))
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx266675%_ _%stx266676%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx266675%_ _%stx266676%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass267789 __method-table267790)
        (let ((__check-arguments267791
               (let ((__tmp268806
                      (lambda ()
                        (let ((__method267792
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table267790
                                  'check-arguments
                                  '#f))))
                          (if __method267792
                              __method267792
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp268806))))
          (lambda (_%self266674%_ _%ctx266675%_ _%stx266676%_ _%args266677%_)
            (let ((_%self266680%_ _%self266674%_))
              (if ((force __check-arguments267791)
                   _%self266680%_
                   _%ctx266675%_
                   _%stx266676%_
                   _%args266677%_)
                  (let* ((_%signature266690%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self266680%_
                             '2
                             '#f
                             '#f)))
                         (_%signature266692%_ _%signature266690%_)
                         (_%$e266702%_
                          (if _%signature266692%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature266692%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e266702%_
                        (if (let ()
                              (declare (not safe))
                              (gxc#symbol-in-local-scope? _%$e266702%_))
                            (let ((__tmp268807
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%$e266702%_ '()))
                                               (map (lambda (_%$%g266706266708%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%ctx266675%_
                                                         _%$%g266706266708%_)))
                                                    _%args266677%_)))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp268807
                               _%stx266676%_
                               _%ctx266675%_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _%ctx266675%_ _%stx266676%_)))
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx266675%_ _%stx266676%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx266675%_ _%stx266676%_))))))))
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
      (lambda (_%self266427%_ _%ctx266428%_ _%stx266429%_ _%args266430%_)
        (let* ((_%self266433%_ _%self266427%_)
               (_%$%signature266442266444%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self266433%_ '2 '#f '#f))))
          (if _%$%signature266442266444%_
              (let* ((_%signature266446%_ _%$%signature266442266444%_)
                     (_%$%argument-types266447266449%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature266446%_
                         '3
                         '#f
                         '#f))))
                (if _%$%argument-types266447266449%_
                    (let* ((_%argument-types266451%_
                            _%$%argument-types266447266449%_)
                           (_%argument-types266456%_
                            (let ((__tmp268808
                                   (lambda (_%t266454%_)
                                     (if _%t266454%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx266429%_
                                            _%t266454%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp268808
                               _%argument-types266451%_))))
                      (let _%loop266458%_ ((_%rest-args266460%_ _%args266430%_)
                                           (_%rest-types266461%_
                                            _%argument-types266456%_)
                                           (_%result266462%_ '#t))
                        (let* ((_%$%rest-args266463266471%_
                                _%rest-args266460%_)
                               (_%$%else266465266479%_
                                (lambda () _%result266462%_))
                               (_%$%K266467266540%_
                                (lambda (_%rest-args266482%_ _%arg266483%_)
                                  (let* ((_%$%rest-types266484266495%_
                                          _%rest-types266461%_)
                                         (_%$%E266488266499%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%$%rest-types266484266495%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%$%K266491266528%_
                                           (lambda (_%rest-types266525%_
                                                    _%type266526%_)
                                             (_%loop266458%_
                                              _%rest-args266482%_
                                              _%rest-types266525%_
                                              (if (gxc#check-expression-type!
                                                   _%stx266429%_
                                                   _%arg266483%_
                                                   _%type266526%_)
                                                  _%result266462%_
                                                  '#f))))
                                          (_%$%K266490266519%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx266429%_
                                                _%argument-types266456%_))))
                                          (_%$%K266489266509%_
                                           (lambda (_%tail-type266503%_)
                                             (if (let ((__tmp268809
                                                        (lambda (_%$%g266504266506%_)
                                                          (gxc#check-expression-type!
                                                           _%stx266429%_
                                                           _%$%g266504266506%_
                                                           _%tail-type266503%_))))
                                                   (declare (not safe))
                                                   (andmap__0
                                                    __tmp268809
                                                    _%rest-args266482%_))
                                                 _%result266462%_
                                                 '#f))))
                                      (let ((_%$%try-match266486266522%_
                                             (lambda ()
                                               (if (null? _%$%rest-types266484266495%_)
                                                   (_%$%K266490266519%_)
                                                   (let ((_%tail-type266512%_
                                                          _%$%rest-types266484266495%_))
                                                     (_%$%K266489266509%_
                                                      _%tail-type266512%_))))))
                                        (if (pair? _%$%rest-types266484266495%_)
                                            (let ((_%$%tl266493266533%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%rest-types266484266495%_)))
                                                  (_%$%hd266492266531%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%rest-types266484266495%_))))
                                              (let ((_%type266536%_
                                                     _%$%hd266492266531%_)
                                                    (_%rest-types266538%_
                                                     _%$%tl266493266533%_))
                                                (_%$%K266491266528%_
                                                 _%rest-types266538%_
                                                 _%type266536%_)))
                                            (_%$%try-match266486266522%_))))))))
                          (if (pair? _%$%rest-args266463266471%_)
                              (let ((_%$%hd266468266543%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest-args266463266471%_)))
                                    (_%$%tl266469266545%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest-args266463266471%_))))
                                (let* ((_%arg266548%_ _%$%hd266468266543%_)
                                       (_%rest-args266550%_
                                        _%$%tl266469266545%_))
                                  (_%$%K266467266540%_
                                   _%rest-args266550%_
                                   _%arg266548%_)))
                              (_%$%else266465266479%_)))))
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
      (lambda (_%self266230%_ _%ctx266231%_ _%stx266232%_ _%args266233%_)
        (let* ((_%self266236%_ _%self266230%_)
               (_%$%g266246266256%_
                (lambda (_%$%g266247266253%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g266247266253%_))))
               (_%$%g266245266302%_
                (lambda (_%$%g266247266259%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g266247266259%_))
                      (let ((_%$%e266249266261%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g266247266259%_))))
                        (let ((_%$%hd266250266264%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e266249266261%_)))
                              (_%$%tl266251266266%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e266249266261%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl266251266266%_))
                              (let* ((_%klass266281%_
                                      (let ((__tmp268810
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self266236%_
                                                '1
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx266232%_
                                         __tmp268810)))
                                     (_%object266283%_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%ctx266231%_
                                         _%$%hd266250266264%_)))
                                     (_%instance?266288%_
                                      (let ((_%$e266285%_
                                             (gxc#expression-type?
                                              _%object266283%_
                                              _%klass266281%_)))
                                        (if _%$e266285%_
                                            _%$e266285%_
                                            (gxc#expression-type?
                                             _%$%hd266250266264%_
                                             _%klass266281%_))))
                                     (_%incompatible?266293%_
                                      (let ((_%$e266290%_
                                             (gxc#incompatible-type?
                                              _%object266283%_
                                              _%klass266281%_)))
                                        (if _%$e266290%_
                                            _%$e266290%_
                                            (gxc#incompatible-type?
                                             _%$%hd266250266264%_
                                             _%klass266281%_)))))
                                (if _%instance?266288%_
                                    (let ((__tmp268811
                                           (if (or (gxc#expression-no-side-effects?
                                                    _%object266283%_)
                                                   (gxc#expression-no-side-effects?
                                                    _%$%hd266250266264%_))
                                               (cons '%#quote (cons '#t '()))
                                               (cons '%#begin
                                                     (cons _%object266283%_
                                                           (cons '(%#quote #t)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp268811
                                       _%stx266232%_))
                                    (if _%incompatible?266293%_
                                        (cons '%#quote (cons '#f '()))
                                        (let ()
                                          (declare (not safe))
                                          (gxc#xform-call%
                                           _%ctx266231%_
                                           _%stx266232%_)))))
                              (_%$%g266246266256%_ _%$%g266247266259%_))))
                      (_%$%g266246266256%_ _%$%g266247266259%_)))))
          (_%$%g266245266302%_ _%args266233%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self266019%_ _%ctx266020%_ _%stx266021%_ _%args266022%_)
        (let* ((_%self266025%_ _%self266019%_)
               (_%$%g266035266045%_
                (lambda (_%$%g266036266042%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g266036266042%_))))
               (_%$%g266034266105%_
                (lambda (_%$%g266036266048%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g266036266048%_))
                      (let ((_%$%e266038266050%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g266036266048%_))))
                        (let ((_%$%hd266039266053%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e266038266050%_)))
                              (_%$%tl266040266055%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e266038266050%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl266040266055%_))
                              (let* ((_%klass266070%_
                                      (let ((__tmp268812
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self266025%_
                                                '1
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx266021%_
                                         __tmp268812)))
                                     (_%object266072%_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%ctx266020%_
                                         _%$%hd266039266053%_)))
                                     (_%instance?266077%_
                                      (let ((_%$e266074%_
                                             (gxc#expression-type?
                                              _%object266072%_
                                              _%klass266070%_)))
                                        (if _%$e266074%_
                                            _%$e266074%_
                                            (gxc#expression-type?
                                             _%$%hd266039266053%_
                                             _%klass266070%_))))
                                     (_%incompatible?266082%_
                                      (let ((_%$e266079%_
                                             (gxc#incompatible-type?
                                              _%object266072%_
                                              _%klass266070%_)))
                                        (if _%$e266079%_
                                            _%$e266079%_
                                            (gxc#incompatible-type?
                                             _%$%hd266039266053%_
                                             _%klass266070%_))))
                                     (_%klass266085%_ _%klass266070%_))
                                (if _%instance?266077%_
                                    (let ((__tmp268813
                                           (if (or (gxc#expression-no-side-effects?
                                                    _%object266072%_)
                                                   (gxc#expression-no-side-effects?
                                                    _%$%hd266039266053%_))
                                               (cons '%#quote (cons '#t '()))
                                               (cons '%#begin
                                                     (cons _%object266072%_
                                                           (cons '(%#quote #t)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp268813
                                       _%stx266021%_))
                                    (if _%incompatible?266082%_
                                        (cons '%#quote (cons '#f '()))
                                        (if (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass266085%_
                                               '8
                                               '#f
                                               '#f))
                                            (let ((__tmp268814
                                                   (cons '%#struct-direct-instance?
                                                         (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass266085%_
                                      '1
                                      '#f
                                      '#f))
                                   '()))
                       (cons _%object266072%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp268814
                                               _%stx266021%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass266085%_
                                                   '7
                                                   '#f
                                                   '#f))
                                                (let ((__tmp268815
                                                       (cons '%#struct-instance?
                                                             (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass266085%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons _%object266072%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp268815
                                                   _%stx266021%_))
                                                (let ((__tmp268816
                                                       (cons '%#call
                                                             (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons 'class-instance? '()))
                           (cons (cons '%#ref
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self266025%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons _%object266072%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp268816
                                                   _%stx266021%_)))))))
                              (_%$%g266035266045%_ _%$%g266036266048%_))))
                      (_%$%g266035266045%_ _%$%g266036266048%_)))))
          (_%$%g266034266105%_ _%args266022%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx265687%_)
        (let* ((_%__stx268127268128%_ _%stx265687%_)
               (_%$%g265692265733%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx268127268128%_)))))
          (let ((_%__kont268129268130%_ (lambda () '#t))
                (_%__kont268131268132%_ (lambda () '#t))
                (_%__kont268133268134%_
                 (lambda (_%$%g265706265799%_ _%$%g265707265800%_)
                   (let ((_%$%rator-type265821265823%_
                          (let ((__tmp268817
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol
                                    _%$%g265707265800%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp268817))))
                     (if _%$%rator-type265821265823%_
                         (let* ((_%rator-type265825%_
                                 _%$%rator-type265821265823%_)
                                (_%$%rator-signature265826265828%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type265825%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type265825%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%$%rator-signature265826265828%_
                               (let* ((_%rator-signature265830%_
                                       _%$%rator-signature265826265828%_)
                                      (_%$%rator-effect265831265833%_
                                       (if _%rator-signature265830%_
                                           (##direct-structure-ref
                                            _%rator-signature265830%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%$%rator-effect265831265833%_
                                     (let ((_%rator-effect265835%_
                                            _%$%rator-effect265831265833%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect265835%_)
                                               (equal? '(alloc)
                                                       _%rator-effect265835%_))
                                           (let ((__tmp268818
                                                  (let ((__tmp268819
                                                         (lambda (_%$%g265840265843%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g265841265845%_)
                   (cons _%$%g265840265843%_ _%$%g265841265845%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp268819
                                                     '()
                                                     _%$%g265706265799%_))))
                                             (declare (not safe))
                                             (andmap__0
                                              gxc#expression-no-side-effects?
                                              __tmp268818))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont268137268138%_ (lambda () '#f)))
            (let ((_%__match268216268217%_
                   (lambda (_%$%e265708265745%_
                            _%$%hd265709265748%_
                            _%$%tl265710265750%_
                            _%$%e265711265753%_
                            _%$%hd265712265756%_
                            _%$%tl265713265758%_
                            _%$%e265714265761%_
                            _%$%hd265715265764%_
                            _%$%tl265716265766%_
                            _%$%e265717265769%_
                            _%$%hd265718265772%_
                            _%$%tl265719265774%_
                            _%__splice268135268136%_
                            _%$%target265720265777%_
                            _%$%tl265722265779%_)
                     (letrec ((_%$%loop265723265782%_
                               (lambda (_%$%hd265721265785%_
                                        _%$%rand265727265787%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd265721265785%_))
                                     (let ((_%$%e265724265789%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd265721265785%_))))
                                       (let ((_%$%lp-tl265726265794%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e265724265789%_)))
                                             (_%$%lp-hd265725265792%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e265724265789%_))))
                                         (_%$%loop265723265782%_
                                          _%$%lp-tl265726265794%_
                                          (cons _%$%lp-hd265725265792%_
                                                _%$%rand265727265787%_))))
                                     (let ((_%$%rand265728265797%_
                                            (reverse _%$%rand265727265787%_)))
                                       (_%__kont268133268134%_
                                        _%$%rand265728265797%_
                                        _%$%hd265718265772%_))))))
                       (_%$%loop265723265782%_
                        _%$%target265720265777%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx268127268128%_))
                  (let ((_%$%e265694265876%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx268127268128%_))))
                    (let ((_%$%tl265696265881%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e265694265876%_)))
                          (_%$%hd265695265879%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e265694265876%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%$%hd265695265879%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%$%hd265695265879%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl265696265881%_))
                                  (let ((_%$%e265697265884%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl265696265881%_))))
                                    (let ((_%$%tl265699265889%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e265697265884%_)))
                                          (_%$%hd265698265887%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e265697265884%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl265699265889%_))
                                          (_%__kont268129268130%_)
                                          (_%__kont268137268138%_))))
                                  (_%__kont268137268138%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%$%hd265695265879%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl265696265881%_))
                                      (let ((_%$%e265703265861%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl265696265881%_))))
                                        (let ((_%$%tl265705265866%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e265703265861%_)))
                                              (_%$%hd265704265864%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e265703265861%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl265705265866%_))
                                              (_%__kont268131268132%_)
                                              (_%__kont268137268138%_))))
                                      (_%__kont268137268138%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%$%hd265695265879%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl265696265881%_))
                                          (let ((_%$%e265711265753%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl265696265881%_))))
                                            (let ((_%$%tl265713265758%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e265711265753%_)))
                                                  (_%$%hd265712265756%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e265711265753%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd265712265756%_))
                                                  (let ((_%$%e265714265761%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd265712265756%_))))
                                                    (let ((_%$%tl265716265766%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e265714265761%_)))
                                                          (_%$%hd265715265764%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e265714265761%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd265715265764%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%$%hd265715265764%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl265716265766%_))
                          (let ((_%$%e265717265769%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl265716265766%_))))
                            (let ((_%$%tl265719265774%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e265717265769%_)))
                                  (_%$%hd265718265772%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e265717265769%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl265719265774%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl265713265758%_))
                                      (let ((_%__splice268135268136%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%tl265713265758%_
                                                '0))))
                                        (let ((_%$%tl265722265779%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice268135268136%_
                                                  '1)))
                                              (_%$%target265720265777%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice268135268136%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl265722265779%_))
                                              (_%__match268216268217%_
                                               _%$%e265694265876%_
                                               _%$%hd265695265879%_
                                               _%$%tl265696265881%_
                                               _%$%e265711265753%_
                                               _%$%hd265712265756%_
                                               _%$%tl265713265758%_
                                               _%$%e265714265761%_
                                               _%$%hd265715265764%_
                                               _%$%tl265716265766%_
                                               _%$%e265717265769%_
                                               _%$%hd265718265772%_
                                               _%$%tl265719265774%_
                                               _%__splice268135268136%_
                                               _%$%target265720265777%_
                                               _%$%tl265722265779%_)
                                              (_%__kont268137268138%_))))
                                      (_%__kont268137268138%_))
                                  (_%__kont268137268138%_))))
                          (_%__kont268137268138%_))
                      (_%__kont268137268138%_))
                  (_%__kont268137268138%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont268137268138%_))))
                                          (_%__kont268137268138%_))
                                      (_%__kont268137268138%_))))
                          (_%__kont268137268138%_))))
                  (_%__kont268137268138%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx265682%_ _%klass265683%_)
        (let ((_%expr-type265685%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx265682%_))))
          (if _%expr-type265685%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type265685%_ _%klass265683%_))
              '#f))))
    (define gxc#incompatible-type?
      (lambda (_%expr265666%_ _%type265667%_)
        (if (not _%type265667%_)
            '#f
            (if (eq? (##structure-ref _%type265667%_ '1 gxc#!type::t '#f) 't)
                '#f
                (if (eq? (##structure-ref _%type265667%_ '1 gxc#!type::t '#f)
                         'false)
                    '#f
                    (let ((_%expr-type265673%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr265666%_))))
                      (if (not _%expr-type265673%_)
                          '#f
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type265673%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              '#f
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%expr-type265673%_
                                     'gxc#!abort::t))
                                  '#f
                                  (if (let ()
                                        (declare (not safe))
                                        (gxc#!type-subtype?
                                         _%expr-type265673%_
                                         _%type265667%_))
                                      '#f
                                      (if (let ()
                                            (declare (not safe))
                                            (gxc#!interface-instance?
                                             _%type265667%_))
                                          '#f
                                          (if (let ()
                                                (declare (not safe))
                                                (gxc#!type-subtype?
                                                 _%type265667%_
                                                 _%expr-type265673%_))
                                              '#f
                                              '#t))))))))))))
    (define gxc#check-expression-type!
      (lambda (_%stx265644%_ _%expr265645%_ _%type265646%_)
        (if (not _%type265646%_)
            '#f
            (let ((_%$e265649%_
                   (eq? (##structure-ref _%type265646%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e265649%_
                  _%$e265649%_
                  (let ((_%expr-type265653%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr265645%_))))
                    (if (not _%expr-type265653%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type265653%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e265657%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type265653%_
                                      'gxc#!abort::t))))
                              (if _%$e265657%_
                                  _%$e265657%_
                                  (let ((_%$e265660%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type265653%_
                                            _%type265646%_))))
                                    (if _%$e265660%_
                                        _%$e265660%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type265646%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type265646%_
                                                   _%expr-type265653%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx265644%_
                                                   _%expr265645%_
                                                   _%expr-type265653%_
                                                   _%type265646%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self265458%_ _%ctx265459%_ _%stx265460%_ _%args265461%_)
        (let* ((_%self265464%_ _%self265458%_)
               (_%klass265474%_
                (let ((__tmp268820
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self265464%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx265460%_ __tmp268820)))
               (_%fields265476%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass265474%_
                           '5
                           '#f
                           '#f))))
               (_%args265482%_
                (map (lambda (_%$%g265477265479%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx265459%_ _%$%g265477265479%_)))
                     _%args265461%_))
               (_%inline-make-object265484%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self265464%_
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
                           _%self265464%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields265476%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass265487%_ _%klass265474%_)
               (_%$e265501%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass265487%_ '6 '#f '#f))))
          (if _%$e265501%_
              (let ((_%$obj265506%_
                     (let ((__tmp268821
                            (let () (declare (not safe)) (##gensym '__obj))))
                       (declare (not safe))
                       (make-symbol__0 __tmp268821)))
                    (_%ctor-impl265507%_
                     (let ()
                       (declare (not safe))
                       (gxc#!class-lookup-method
                        _%klass265487%_
                        _%$e265501%_))))
                (let ((__tmp268822
                       (cons '%#let-values
                             (cons (cons (cons (cons _%$obj265506%_ '())
                                               (cons _%inline-make-object265484%_
                                                     '()))
                                         '())
                                   (cons (cons '%#begin
                                               (cons (if _%ctor-impl265507%_
                                                         (let ((__tmp268823
                                                                (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref
                                          (cons _%ctor-impl265507%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj265506%_ '()))
                                          _%args265482%_)))))
                   (declare (not safe))
                   (gxc#xform-wrap-apply
                    __tmp268823
                    _%stx265460%_
                    _%ctx265459%_))
                 (let ((_%$ctor265509%_
                        (let ((__tmp268824
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__constructor))))
                          (declare (not safe))
                          (make-symbol__0 __tmp268824))))
                   (cons '%#let-values
                         (cons (cons (cons (cons _%$ctor265509%_ '())
                                           (cons (cons '%#call
                                                       (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'direct-method-ref '()))
                     (cons (cons '%#ref
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self265464%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#ref (cons _%$obj265506%_ '()))
                                 (cons (cons '%#quote (cons _%$e265501%_ '()))
                                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons (cons '%#if
                                           (cons (cons '%#ref
                                                       (cons _%$ctor265509%_
                                                             '()))
                                                 (cons (cons '%#call
                                                             (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%$ctor265509%_ '()))
                           (cons (cons '%#ref (cons _%$obj265506%_ '()))
                                 _%args265482%_)))
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
                         (##unchecked-structure-ref _%self265464%_ '1 '#f '#f))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons '%#quote
                                                               (cons 'method:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote (cons _%$e265501%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$obj265506%_ '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp268822 _%stx265460%_)))
              (let ((_%$e265511%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass265487%_
                        '10
                        '#f
                        '#f))))
                (if _%$e265511%_
                    (let* ((_%$obj265516%_
                            (let ((__tmp268825
                                   (let ()
                                     (declare (not safe))
                                     (##gensym '__obj))))
                              (declare (not safe))
                              (make-symbol__0 __tmp268825)))
                           (_%metakons265518%_
                            (let ((__tmp268826
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx265460%_
                                      _%$e265511%_))))
                              (declare (not safe))
                              (gxc#!class-lookup-method
                               __tmp268826
                               'instance-init!)))
                           (__tmp268827
                            (cons '%#let-values
                                  (cons (cons (cons (cons _%$obj265516%_ '())
                                                    (cons _%inline-make-object265484%_
                                                          '()))
                                              '())
                                        (cons (cons '%#begin
                                                    (cons (if _%metakons265518%_
                                                              (let ((__tmp268828
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons _%metakons265518%_ '()))
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self265464%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$obj265516%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%args265482%_))))))
                        (declare (not safe))
                        (gxc#xform-wrap-apply
                         __tmp268828
                         _%stx265460%_
                         _%ctx265459%_))
                      (cons '%#call
                            (cons (cons '%#ref (cons 'call-method '()))
                                  (cons (cons '%#ref
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self265464%_
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '()))
                                        (cons (cons '%#quote
                                                    (cons 'instance-init! '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj265516%_
                                                                '()))
                                                    _%args265482%_))))))
                  (cons (cons '%#ref (cons _%$obj265516%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp268827 _%stx265460%_))
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass265487%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp268829
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args265482%_))))
                              (declare (not safe))
                              (##fx= __tmp268829 _%fields265476%_))
                            (let ((__tmp268830
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self265464%_
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
                                              _%self265464%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args265482%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp268830
                               _%stx265460%_))
                            (let ((__tmp268832
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self265464%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp268831
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass265487%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx265460%_
                               __tmp268832
                               __tmp268831)))
                        (let ((_%$obj265523%_
                               (let ((__tmp268833
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp268833))))
                          (let _%lp265525%_ ((_%rest265527%_ _%args265482%_)
                                             (_%initializers265528%_ '()))
                            (let* ((_%__stx268219268220%_ _%rest265527%_)
                                   (_%$%g265532265553%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx268219268220%_)))))
                              (let ((_%__kont268221268222%_
                                     (lambda (_%$%g265534265607%_
                                              _%$%g265535265608%_
                                              _%$%g265536265609%_)
                                       (let* ((_%slot265636%_
                                               (let ((__tmp268834
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%g265536265609%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp268834)))
                                              (_%off265638%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass265487%_
                                                  _%slot265636%_))))
                                         (if _%off265638%_
                                             (_%lp265525%_
                                              _%$%g265534265607%_
                                              (cons (cons _%off265638%_
                                                          _%$%g265535265608%_)
                                                    _%initializers265528%_))
                                             (let ((__tmp268835
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self265464%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx265460%_
                                                __tmp268835
                                                _%slot265636%_))))))
                                    (_%__kont268223268224%_
                                     (lambda ()
                                       (let ((__tmp268836
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj265523%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object265484%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp268838
                                     (let ((__tmp268839
                                            (lambda (_%i265567%_ _%r265568%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self265464%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i265567%_) '()))
                              (cons (cons '%#ref (cons _%$obj265523%_ '()))
                                    (cons (cdr _%i265567%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r265568%_))))
                                       (declare (not safe))
                                       (foldl__0
                                        __tmp268839
                                        '()
                                        _%initializers265528%_)))
                                    (__tmp268837
                                     (cons (cons '%#ref
                                                 (cons _%$obj265523%_ '()))
                                           '())))
                                (declare (not safe))
                                (##append __tmp268838 __tmp268837)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp268836
                                          _%stx265460%_))))
                                    (_%__kont268225268226%_
                                     (lambda ()
                                       (let ((__tmp268840
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj265523%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object265484%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj265523%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args265482%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj265523%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp268840
                                          _%stx265460%_)))))
                                (let* ((_%$%g265530265570%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx268219268220%_))
                                              (_%__kont268223268224%_)
                                              (_%__kont268225268226%_))))
                                       (_%__match268256268257%_
                                        (lambda (_%$%e265537265575%_
                                                 _%$%hd265538265578%_
                                                 _%$%tl265539265580%_
                                                 _%$%e265540265583%_
                                                 _%$%hd265541265586%_
                                                 _%$%tl265542265588%_
                                                 _%$%e265543265591%_
                                                 _%$%hd265544265594%_
                                                 _%$%tl265545265596%_
                                                 _%$%e265546265599%_
                                                 _%$%hd265547265602%_
                                                 _%$%tl265548265604%_)
                                          (let ((_%$%g265534265607%_
                                                 _%$%tl265548265604%_)
                                                (_%$%g265535265608%_
                                                 _%$%hd265547265602%_)
                                                (_%$%g265536265609%_
                                                 _%$%hd265544265594%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%$%g265536265609%_))
                                                (_%__kont268221268222%_
                                                 _%$%g265534265607%_
                                                 _%$%g265535265608%_
                                                 _%$%g265536265609%_)
                                                (_%__kont268225268226%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx268219268220%_))
                                      (let ((_%$%e265537265575%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx268219268220%_))))
                                        (let ((_%$%tl265539265580%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e265537265575%_)))
                                              (_%$%hd265538265578%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e265537265575%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%hd265538265578%_))
                                              (let ((_%$%e265540265583%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd265538265578%_))))
                                                (let ((_%$%tl265542265588%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e265540265583%_)))
                                                      (_%$%hd265541265586%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e265540265583%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%$%hd265541265586%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%$%hd265541265586%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl265542265588%_))
                      (let ((_%$%e265543265591%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl265542265588%_))))
                        (let ((_%$%tl265545265596%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e265543265591%_)))
                              (_%$%hd265544265594%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e265543265591%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl265545265596%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl265539265580%_))
                                  (let ((_%$%e265546265599%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl265539265580%_))))
                                    (let ((_%$%tl265548265604%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e265546265599%_)))
                                          (_%$%hd265547265602%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e265546265599%_))))
                                      (_%__match268256268257%_
                                       _%$%e265537265575%_
                                       _%$%hd265538265578%_
                                       _%$%tl265539265580%_
                                       _%$%e265540265583%_
                                       _%$%hd265541265586%_
                                       _%$%tl265542265588%_
                                       _%$%e265543265591%_
                                       _%$%hd265544265594%_
                                       _%$%tl265545265596%_
                                       _%$%e265546265599%_
                                       _%$%hd265547265602%_
                                       _%$%tl265548265604%_)))
                                  (_%__kont268225268226%_))
                              (_%__kont268225268226%_))))
                      (_%__kont268225268226%_))
                  (_%__kont268225268226%_))
              (_%__kont268225268226%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont268225268226%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g265530265570%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::check-arguments
      (lambda (_%self265320%_ _%ctx265321%_ _%stx265322%_ _%args265323%_)
        (let ((_%self265326%_ _%self265320%_))
          (if (let ()
                (declare (not safe))
                (##unchecked-structure-ref _%self265326%_ '4 '#f '#f))
              (gxc#!procedure::check-arguments
               _%self265326%_
               _%ctx265321%_
               _%stx265322%_
               _%args265323%_)
              '#t))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!accessor::t
       'check-arguments
       gxc#!accessor::check-arguments
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self265103%_ _%ctx265104%_ _%stx265105%_ _%args265106%_)
        (let* ((_%self265109%_ _%self265103%_)
               (_%arguments-ok?265119%_
                (let ((__method268766
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self265109%_ 'check-arguments))))
                  (if __method268766
                      (let ()
                        (declare (not safe))
                        (__method268766
                         _%self265109%_
                         _%ctx265104%_
                         _%stx265105%_
                         _%args265106%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self265109%_
                                 'check-arguments))
                        '#!void))))
               (_%$%g265121265131%_
                (lambda (_%$%g265122265128%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g265122265128%_))))
               (_%$%g265120265195%_
                (lambda (_%$%g265122265134%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g265122265134%_))
                      (let ((_%$%e265124265136%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g265122265134%_))))
                        (let ((_%$%hd265125265139%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e265124265136%_)))
                              (_%$%tl265126265141%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e265124265136%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl265126265141%_))
                              (let* ((_%klass265157%_
                                      (let ((__tmp268841
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self265109%_
                                                '1
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx265105%_
                                         __tmp268841)))
                                     (_%field265159%_
                                      (let ((__tmp268842
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self265109%_
                                                '3
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#!class-slot->field-offset
                                         _%klass265157%_
                                         __tmp268842)))
                                     (_%object265161%_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%ctx265104%_
                                         _%$%hd265125265139%_)))
                                     (_%klass265164%_ _%klass265157%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass265164%_
                                       '8
                                       '#f
                                       '#f))
                                    (let ((__tmp268843
                                           (cons (if (or _%arguments-ok?265119%_
                                                         (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%self265109%_
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
                              _%self265109%_
                              '1
                              '#f
                              '#f))
                           '()))
               (cons (cons '%#quote (cons _%field265159%_ '()))
                     (cons _%object265161%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp268843
                                       _%stx265105%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass265164%_
                                           '7
                                           '#f
                                           '#f))
                                        (let ((__tmp268844
                                               (cons (if (or _%arguments-ok?265119%_
                                                             (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self265109%_
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
                                  _%self265109%_
                                  '1
                                  '#f
                                  '#f))
                               '()))
                   (cons (cons '%#quote (cons _%field265159%_ '()))
                         (cons _%object265161%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp268844
                                           _%stx265105%_))
                                        (let ((_%$e265183%_
                                               (let ((__tmp268845
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self265109%_
                                                         '3
                                                         '#f
                                                         '#f))))
                                                 (declare (not safe))
                                                 (gxc#!class-slot-find-struct
                                                  _%klass265164%_
                                                  __tmp268845))))
                                          (if _%$e265183%_
                                              (let ((__tmp268846
                                                     (cons (if (or _%arguments-ok?265119%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (not (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self265109%_
                                   '4
                                   '#f
                                   '#f))))
                       '%#struct-unchecked-ref
                       '%#struct-ref)
                   (cons (cons '%#ref
                               (cons (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self265109%_
                                        '1
                                        '#f
                                        '#f))
                                     '()))
                         (cons (cons '%#quote (cons _%field265159%_ '()))
                               (cons _%object265161%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp268846
                                                 _%stx265105%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self265109%_
                                                     '4
                                                     '#f
                                                     '#f))
                                                  (let ((__tmp268847
                                                         (let ((_%$obj265192%_
                                                                (let ((__tmp268848
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp268848))))
                   (cons '%#let-values
                         (cons (cons (cons (cons _%$obj265192%_ '())
                                           (cons _%object265161%_ '()))
                                     '())
                               (cons (cons '%#if
                                           (cons (cons '%#struct-direct-instance?
                                                       (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass265164%_
                                    '1
                                    '#f
                                    '#f))
                                 '()))
                     (cons (cons '%#ref (cons _%$obj265192%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons '%#struct-unchecked-ref
                                                             (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self265109%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#quote (cons _%field265159%_ '()))
                                 (cons (cons '%#ref (cons _%$obj265192%_ '()))
                                       '()))))
               (cons (if _%arguments-ok?265119%_
                         (cons '%#call
                               (cons (cons '%#ref
                                           (cons 'unchecked-slot-ref '()))
                                     (cons (cons '%#ref
                                                 (cons _%$obj265192%_ '()))
                                           (cons (cons '%#quote
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self265109%_ '3 '#f '#f))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'class-slot-ref '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self265109%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#ref
                                                       (cons _%$obj265192%_
                                                             '()))
                                                 (cons (cons '%#quote
                                                             (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%self265109%_
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
                                                     __tmp268847
                                                     _%stx265105%_))
                                                  (let ((__tmp268849
                                                         (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'unchecked-slot-ref '()))
                             (cons _%object265161%_
                                   (cons (cons '%#quote
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self265109%_
                                                        '3
                                                        '#f
                                                        '#f))
                                                     '()))
                                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp268849
                                                     _%stx265105%_))))))))
                              (_%$%g265121265131%_ _%$%g265122265134%_))))
                      (_%$%g265121265131%_ _%$%g265122265134%_)))))
          (_%$%g265120265195%_ _%args265106%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass267793 __method-table267794)
        (let ((__check-arguments267795
               (let ((__tmp268850
                      (lambda ()
                        (let ((__method267796
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table267794
                                  'check-arguments
                                  '#f))))
                          (if __method267796
                              __method267796
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp268850)))
              (__slot267797
               (let ((__slot267798
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass267793 'slot))))
                 (if __slot267798
                     __slot267798
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self265103%_ _%ctx265104%_ _%stx265105%_ _%args265106%_)
            (let* ((_%self265109%_ _%self265103%_)
                   (_%arguments-ok?265119%_
                    ((force __check-arguments267795)
                     _%self265109%_
                     _%ctx265104%_
                     _%stx265105%_
                     _%args265106%_))
                   (_%$%g265121265131%_
                    (lambda (_%$%g265122265128%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g265122265128%_))))
                   (_%$%g265120265195%_
                    (lambda (_%$%g265122265134%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%g265122265134%_))
                          (let ((_%$%e265124265136%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%g265122265134%_))))
                            (let ((_%$%hd265125265139%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e265124265136%_)))
                                  (_%$%tl265126265141%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e265124265136%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl265126265141%_))
                                  (let* ((_%klass265157%_
                                          (let ((__tmp268851
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self265109%_
                                                    '1
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             _%stx265105%_
                                             __tmp268851)))
                                         (_%field265159%_
                                          (let ((__tmp268852
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self265109%_
                                                    '3
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (gxc#!class-slot->field-offset
                                             _%klass265157%_
                                             __tmp268852)))
                                         (_%object265161%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%ctx265104%_
                                             _%$%hd265125265139%_)))
                                         (_%klass265164%_ _%klass265157%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass265164%_
                                           '8
                                           '#f
                                           '#f))
                                        (let ((__tmp268853
                                               (cons (if (or _%arguments-ok?265119%_
                                                             (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self265109%_
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
                                  _%self265109%_
                                  '1
                                  '#f
                                  '#f))
                               '()))
                   (cons (cons '%#quote (cons _%field265159%_ '()))
                         (cons _%object265161%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp268853
                                           _%stx265105%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass265164%_
                                               '7
                                               '#f
                                               '#f))
                                            (let ((__tmp268854
                                                   (cons (if (or _%arguments-ok?265119%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self265109%_
                                 '4
                                 '#f
                                 '#f))))
                     '%#struct-unchecked-ref
                     '%#struct-ref)
                 (cons (cons '%#ref
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self265109%_
                                      '1
                                      '#f
                                      '#f))
                                   '()))
                       (cons (cons '%#quote (cons _%field265159%_ '()))
                             (cons _%object265161%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp268854
                                               _%stx265105%_))
                                            (let ((_%$e265183%_
                                                   (let ((__tmp268855
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%self265109%_
                                                             '3
                                                             '#f
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#!class-slot-find-struct
                                                      _%klass265164%_
                                                      __tmp268855))))
                                              (if _%$e265183%_
                                                  (let ((__tmp268856
                                                         (cons (if (or _%arguments-ok?265119%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (not (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self265109%_
                                       '4
                                       '#f
                                       '#f))))
                           '%#struct-unchecked-ref
                           '%#struct-ref)
                       (cons (cons '%#ref
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self265109%_
                                            '1
                                            '#f
                                            '#f))
                                         '()))
                             (cons (cons '%#quote (cons _%field265159%_ '()))
                                   (cons _%object265161%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp268856
                                                     _%stx265105%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self265109%_
                                                         '4
                                                         '#f
                                                         '#f))
                                                      (let ((__tmp268857
                                                             (let ((_%$obj265192%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp268858
                                   (let ()
                                     (declare (not safe))
                                     (##gensym '__obj))))
                              (declare (not safe))
                              (make-symbol__0 __tmp268858))))
                       (cons '%#let-values
                             (cons (cons (cons (cons _%$obj265192%_ '())
                                               (cons _%object265161%_ '()))
                                         '())
                                   (cons (cons '%#if
                                               (cons (cons '%#struct-direct-instance?
                                                           (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%klass265164%_
                                        '1
                                        '#f
                                        '#f))
                                     '()))
                         (cons (cons '%#ref (cons _%$obj265192%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#struct-unchecked-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self265109%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field265159%_ '()))
                                     (cons (cons '%#ref
                                                 (cons _%$obj265192%_ '()))
                                           '()))))
                   (cons (if _%arguments-ok?265119%_
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons 'unchecked-slot-ref '()))
                                         (cons (cons '%#ref
                                                     (cons _%$obj265192%_ '()))
                                               (cons (cons '%#quote
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self265109%_
                            __slot267797
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
                                                              _%self265109%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$obj265192%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%self265109%_
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
                (gxc#xform-wrap-source __tmp268857 _%stx265105%_))
              (let ((__tmp268859
                     (cons '%#call
                           (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                 (cons _%object265161%_
                                       (cons (cons '%#quote
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self265109%_
                                                            '3
                                                            '#f
                                                            '#f))
                                                         '()))
                                             '()))))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp268859 _%stx265105%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%$%g265121265131%_ _%$%g265122265134%_))))
                          (_%$%g265121265131%_ _%$%g265122265134%_)))))
              (_%$%g265120265195%_ _%args265106%_))))))
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
      (lambda (_%self264867%_ _%ctx264868%_ _%stx264869%_ _%args264870%_)
        (let* ((_%self264873%_ _%self264867%_)
               (_%arguments-ok?264883%_
                (let ((__method268767
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self264873%_ 'check-arguments))))
                  (if __method268767
                      (let ()
                        (declare (not safe))
                        (__method268767
                         _%self264873%_
                         _%ctx264868%_
                         _%stx264869%_
                         _%args264870%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self264873%_
                                 'check-arguments))
                        '#!void))))
               (_%$%g264885264899%_
                (lambda (_%$%g264886264896%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g264886264896%_))))
               (_%$%g264884264978%_
                (lambda (_%$%g264886264902%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g264886264902%_))
                      (let ((_%$%e264889264904%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g264886264902%_))))
                        (let ((_%$%hd264890264907%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e264889264904%_)))
                              (_%$%tl264891264909%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e264889264904%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl264891264909%_))
                              (let ((_%$%e264892264912%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl264891264909%_))))
                                (let ((_%$%hd264893264915%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e264892264912%_)))
                                      (_%$%tl264894264917%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e264892264912%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl264894264917%_))
                                      (let* ((_%klass264937%_
                                              (let ((__tmp268860
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self264873%_
                                                        '1
                                                        '#f
                                                        '#f))))
                                                (declare (not safe))
                                                (gxc#optimizer-resolve-class
                                                 _%stx264869%_
                                                 __tmp268860)))
                                             (_%field264939%_
                                              (let ((__tmp268861
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self264873%_
                                                        '3
                                                        '#f
                                                        '#f))))
                                                (declare (not safe))
                                                (gxc#!class-slot->field-offset
                                                 _%klass264937%_
                                                 __tmp268861)))
                                             (_%object264941%_
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%ctx264868%_
                                                 _%$%hd264890264907%_)))
                                             (_%value264943%_
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%ctx264868%_
                                                 _%$%hd264893264915%_)))
                                             (_%klass264946%_ _%klass264937%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass264946%_
                                               '8
                                               '#f
                                               '#f))
                                            (let ((__tmp268862
                                                   (cons (if (or _%arguments-ok?264883%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self264873%_
                                 '4
                                 '#f
                                 '#f))))
                     '%#struct-unchecked-set!
                     '%#struct-direct-set!)
                 (cons (cons '%#ref
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self264873%_
                                      '1
                                      '#f
                                      '#f))
                                   '()))
                       (cons (cons '%#quote (cons _%field264939%_ '()))
                             (cons _%object264941%_
                                   (cons _%value264943%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp268862
                                               _%stx264869%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass264946%_
                                                   '7
                                                   '#f
                                                   '#f))
                                                (let ((__tmp268863
                                                       (cons (if (or _%arguments-ok?264883%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (not (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self264873%_
                                     '4
                                     '#f
                                     '#f))))
                         '%#struct-unchecked-set!
                         '%#struct-set!)
                     (cons (cons '%#ref
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self264873%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#quote (cons _%field264939%_ '()))
                                 (cons _%object264941%_
                                       (cons _%value264943%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp268863
                                                   _%stx264869%_))
                                                (let ((_%$e264966%_
                                                       (let ((__tmp268864
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%self264873%_
                         '3
                         '#f
                         '#f))))
                 (declare (not safe))
                 (gxc#!class-slot-find-struct _%klass264946%_ __tmp268864))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if _%$e264966%_
                                                      (let ((__tmp268865
                                                             (cons (if (or _%arguments-ok?264883%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (not (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self264873%_
                                           '3
                                           '#f
                                           '#f))))
                               '%#struct-unchecked-set!
                               '%#struct-set!)
                           (cons (cons '%#ref
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self264873%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons (cons '%#quote
                                             (cons _%field264939%_ '()))
                                       (cons _%object264941%_
                                             (cons _%value264943%_ '())))))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp268865 _%stx264869%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%self264873%_ '4 '#f '#f))
                  (let ((__tmp268866
                         (let ((_%$obj264975%_
                                (let ((__tmp268867
                                       (let ()
                                         (declare (not safe))
                                         (##gensym '__obj))))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp268867))))
                           (cons '%#let-values
                                 (cons (cons (cons (cons _%$obj264975%_ '())
                                                   (cons _%object264941%_ '()))
                                             '())
                                       (cons (cons '%#if
                                                   (cons (cons '%#struct-direct-instance?
                                                               (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%klass264946%_
                                            '1
                                            '#f
                                            '#f))
                                         '()))
                             (cons (cons '%#ref (cons _%$obj264975%_ '()))
                                   '())))
                 (cons (cons '%#struct-unchecked-set!
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self264873%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field264939%_ '()))
                                         (cons (cons '%#ref
                                                     (cons _%$obj264975%_ '()))
                                               (cons _%value264943%_ '())))))
                       (cons (if _%arguments-ok?264883%_
                                 (cons '%#call
                                       (cons (cons '%#ref
                                                   (cons 'unchecked-slot-set!
                                                         '()))
                                             (cons (cons '%#ref
                                                         (cons _%$obj264975%_
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self264873%_
                                '3
                                '#f
                                '#f))
                             '()))
                 (cons _%value264943%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (cons '%#call
                                       (cons (cons '%#ref
                                                   (cons 'class-slot-set! '()))
                                             (cons (cons '%#ref
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref _%self264873%_ '1 '#f '#f))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons '%#ref
                                                               (cons _%$obj264975%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self264873%_
                                      '3
                                      '#f
                                      '#f))
                                   '()))
                       (cons _%value264943%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp268866 _%stx264869%_))
                  (let ((__tmp268868
                         (cons '%#call
                               (cons (cons '%#ref
                                           (cons 'unchecked-slot-set! '()))
                                     (cons _%object264941%_
                                           (cons (cons '%#quote
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self264873%_ '3 '#f '#f))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%value264943%_
                                                       '())))))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp268868 _%stx264869%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g264885264899%_
                                       _%$%g264886264902%_))))
                              (_%$%g264885264899%_ _%$%g264886264902%_))))
                      (_%$%g264885264899%_ _%$%g264886264902%_)))))
          (_%$%g264884264978%_ _%args264870%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass267799 __method-table267800)
        (let ((__check-arguments267801
               (let ((__tmp268869
                      (lambda ()
                        (let ((__method267802
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table267800
                                  'check-arguments
                                  '#f))))
                          (if __method267802
                              __method267802
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp268869))))
          (lambda (_%self264867%_ _%ctx264868%_ _%stx264869%_ _%args264870%_)
            (let* ((_%self264873%_ _%self264867%_)
                   (_%arguments-ok?264883%_
                    ((force __check-arguments267801)
                     _%self264873%_
                     _%ctx264868%_
                     _%stx264869%_
                     _%args264870%_))
                   (_%$%g264885264899%_
                    (lambda (_%$%g264886264896%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g264886264896%_))))
                   (_%$%g264884264978%_
                    (lambda (_%$%g264886264902%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%g264886264902%_))
                          (let ((_%$%e264889264904%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%g264886264902%_))))
                            (let ((_%$%hd264890264907%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e264889264904%_)))
                                  (_%$%tl264891264909%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e264889264904%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl264891264909%_))
                                  (let ((_%$%e264892264912%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl264891264909%_))))
                                    (let ((_%$%hd264893264915%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e264892264912%_)))
                                          (_%$%tl264894264917%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e264892264912%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl264894264917%_))
                                          (let* ((_%klass264937%_
                                                  (let ((__tmp268870
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self264873%_
                                                            '1
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#optimizer-resolve-class
                                                     _%stx264869%_
                                                     __tmp268870)))
                                                 (_%field264939%_
                                                  (let ((__tmp268871
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self264873%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot->field-offset
                                                     _%klass264937%_
                                                     __tmp268871)))
                                                 (_%object264941%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%ctx264868%_
                                                     _%$%hd264890264907%_)))
                                                 (_%value264943%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%ctx264868%_
                                                     _%$%hd264893264915%_)))
                                                 (_%klass264946%_
                                                  _%klass264937%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass264946%_
                                                   '8
                                                   '#f
                                                   '#f))
                                                (let ((__tmp268872
                                                       (cons (if (or _%arguments-ok?264883%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (not (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self264873%_
                                     '4
                                     '#f
                                     '#f))))
                         '%#struct-unchecked-set!
                         '%#struct-direct-set!)
                     (cons (cons '%#ref
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self264873%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#quote (cons _%field264939%_ '()))
                                 (cons _%object264941%_
                                       (cons _%value264943%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp268872
                                                   _%stx264869%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%klass264946%_
                                                       '7
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp268873
                                                           (cons (if (or _%arguments-ok?264883%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self264873%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-set!
                             '%#struct-set!)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self264873%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field264939%_ '()))
                                     (cons _%object264941%_
                                           (cons _%value264943%_ '())))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp268873 _%stx264869%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$e264966%_
                                                           (let ((__tmp268874
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self264873%_
                             '3
                             '#f
                             '#f))))
                     (declare (not safe))
                     (gxc#!class-slot-find-struct
                      _%klass264946%_
                      __tmp268874))))
              (if _%$e264966%_
                  (let ((__tmp268875
                         (cons (if (or _%arguments-ok?264883%_
                                       (not (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self264873%_
                                               '3
                                               '#f
                                               '#f))))
                                   '%#struct-unchecked-set!
                                   '%#struct-set!)
                               (cons (cons '%#ref
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self264873%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 '()))
                                     (cons (cons '%#quote
                                                 (cons _%field264939%_ '()))
                                           (cons _%object264941%_
                                                 (cons _%value264943%_
                                                       '())))))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp268875 _%stx264869%_))
                  (if (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self264873%_ '4 '#f '#f))
                      (let ((__tmp268876
                             (let ((_%$obj264975%_
                                    (let ((__tmp268877
                                           (let ()
                                             (declare (not safe))
                                             (##gensym '__obj))))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp268877))))
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj264975%_
                                                             '())
                                                       (cons _%object264941%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#if
                                                       (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons '%#quote
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%klass264946%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons (cons '%#ref (cons _%$obj264975%_ '()))
                                       '())))
                     (cons (cons '%#struct-unchecked-set!
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self264873%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field264939%_ '()))
                                             (cons (cons '%#ref
                                                         (cons _%$obj264975%_
                                                               '()))
                                                   (cons _%value264943%_
                                                         '())))))
                           (cons (if _%arguments-ok?264883%_
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'unchecked-slot-set!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj264975%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons '%#quote
                           (cons (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self264873%_
                                    '3
                                    '#f
                                    '#f))
                                 '()))
                     (cons _%value264943%_ '())))))
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
                              _%self264873%_
                              '1
                              '#f
                              '#f))
                           '()))
               (cons (cons '%#ref (cons _%$obj264975%_ '()))
                     (cons (cons '%#quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self264873%_
                                          '3
                                          '#f
                                          '#f))
                                       '()))
                           (cons _%value264943%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp268876 _%stx264869%_))
                      (let ((__tmp268878
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons 'unchecked-slot-set! '()))
                                         (cons _%object264941%_
                                               (cons (cons '%#quote
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self264873%_
                            '3
                            '#f
                            '#f))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%value264943%_
                                                           '())))))))
                        (declare (not safe))
                        (gxc#xform-wrap-source
                         __tmp268878
                         _%stx264869%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g264885264899%_
                                           _%$%g264886264902%_))))
                                  (_%$%g264885264899%_ _%$%g264886264902%_))))
                          (_%$%g264885264899%_ _%$%g264886264902%_)))))
              (_%$%g264884264978%_ _%args264870%_))))))
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
      (lambda (_%self264683%_ _%ctx264684%_ _%stx264685%_ _%args264686%_)
        (let* ((_%self264689%_ _%self264683%_)
               (_%$%self264698264708%_ _%self264689%_)
               (_%$%E264700264711%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%self264698264708%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%$%K264701264721%_
                (lambda (_%inline264714%_ _%dispatch264715%_ _%arity264716%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self264689%_
                         _%args264686%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx264685%_
                         _%arity264716%_)))
                  (if _%inline264714%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp268879 (_%inline264714%_ _%stx264685%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp268879
                           _%stx264685%_
                           _%ctx264684%_)))
                      (if (and _%dispatch264715%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch264715%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch264715%_))
                            (let ((__tmp268880
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch264715%_
                                                           '()))
                                               _%args264686%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp268880
                               _%stx264685%_
                               _%ctx264684%_)))
                          (gxc#!procedure::optimize-call
                           _%self264689%_
                           _%ctx264684%_
                           _%stx264685%_
                           _%args264686%_)))))
               (_%$%e264702264724%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self264698264708%_
                   '1
                   '#f
                   '#f)))
               (_%$%e264703264727%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self264698264708%_
                   '2
                   '#f
                   '#f)))
               (_%$%e264704264730%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self264698264708%_
                   '3
                   '#f
                   '#f)))
               (_%arity264733%_ _%$%e264704264730%_)
               (_%$%e264705264735%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self264698264708%_
                   '4
                   '#f
                   '#f)))
               (_%dispatch264738%_ _%$%e264705264735%_)
               (_%$%e264706264740%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self264698264708%_
                   '5
                   '#f
                   '#f)))
               (_%inline264743%_ _%$%e264706264740%_))
          (_%$%K264701264721%_
           _%inline264743%_
           _%dispatch264738%_
           _%arity264733%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self264535%_ _%ctx264536%_ _%stx264537%_ _%args264538%_)
        (let* ((_%self264541%_ _%self264535%_)
               (_%$e264555%_
                (let ((__tmp268882
                       (lambda (_%$%g264550264552%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%$%g264550264552%_
                            _%args264538%_))))
                      (__tmp268881
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self264541%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp268882 __tmp268881))))
          (if _%$e264555%_
              (let ((__method268768
                     (let ()
                       (declare (not safe))
                       (__method-ref _%$e264555%_ 'optimize-call))))
                (if __method268768
                    (let ()
                      (declare (not safe))
                      (__method268768
                       _%$e264555%_
                       _%ctx264536%_
                       _%stx264537%_
                       _%args264538%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method" _%$e264555%_ 'optimize-call))
                      '#!void)))
              (let ((__tmp268883
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self264541%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx264537%_
                 __tmp268883))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self264276%_ _%ctx264277%_ _%stx264278%_ _%args264279%_)
        (let* ((_%self264282%_ _%self264276%_)
               (_%$%self264291264300%_ _%self264282%_)
               (_%$%E264293264303%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%self264291264300%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%$%K264294264394%_
                (lambda (_%dispatch264306%_ _%table264307%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch264306%_))
                      (let* ((_%$%g264308264318%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch264306%_)))
                             (_%$%else264310264326%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch264306%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx264277%_
                                   _%stx264278%_))))
                             (_%$%K264312264375%_
                              (lambda (_%main264329%_ _%keys264330%_)
                                (let ((_g268884_
                                       (gxc#!kw-lambda-split-args
                                        _%stx264278%_
                                        _%args264279%_)))
                                  (begin
                                    (let ((_g268885_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g268884_)
                                                 (##values-length _g268884_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g268885_ 2)))
                                          (error "Context expects 2 values"
                                                 _g268885_)))
                                    (let ((_%pargs264332%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g268884_ 0)))
                                          (_%kwargs264333%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g268884_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main264329%_))
                                        (if _%table264307%_
                                            (let ((_%xargs264341%_
                                                   (map (lambda (_%key264335%_)
                                                          (let ((_%$e264337%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key264335%_ _%kwargs264333%_))))
                    (if _%$e264337%_ _%$e264337%_ '(%#ref absent-value))))
                _%keys264330%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw264343%_)
                                                 (if (memq (car _%kw264343%_)
                                                           _%keys264330%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx264278%_
                                                        _%keys264330%_
                                                        _%kw264343%_))))
                                               _%kwargs264333%_)
                                              (let ((__tmp268886
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main264329%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (append _%xargs264341%_ _%pargs264332%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp268886
                                                 _%stx264278%_
                                                 _%ctx264277%_)))
                                            (let* ((_%kwt264345%_
                                                    (let ((__tmp268887
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp268887)))
                                                   (_%kwvars264349%_
                                                    (map (lambda (_%_264347%_)
                                                           (let ((__tmp268888
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp268888)))
                 _%kwargs264333%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind264354%_
                                                    (map (lambda (_%kw264351%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar264352%_)
                   (cons (cons _%kwvar264352%_ '())
                         (cons (cdr _%kw264351%_) '())))
                 _%kwargs264333%_
                 _%kwvars264349%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset264359%_
                                                    (map (lambda (_%kw264356%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar264357%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt264345%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw264356%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar264357%_
                                                             '()))
                                                 '()))))))
                 _%kwargs264333%_
                 _%kwvars264349%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs264364%_
                                                    (map (lambda (_%kw264361%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar264362%_)
                   (cons (car _%kw264361%_)
                         (cons '%#ref (cons _%kwvar264362%_ '()))))
                 _%kwargs264333%_
                 _%kwvars264349%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs264372%_
                                                    (map (lambda (_%key264366%_)
                                                           (let ((_%$e264368%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key264366%_ _%xkwargs264364%_))))
                     (if _%$e264368%_ _%$e264368%_ '(%#ref absent-value))))
                 _%keys264330%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp268889
                                                    (cons '%#let-values
                                                          (cons _%kwbind264354%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt264345%_ '())
                                                      (cons (let ((__tmp268890
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs264333%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp268890 _%stx264278%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp268891
                                                             (cons (let ((__tmp268892
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main264329%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt264345%_
                                                                '()))
                                                    (append _%xargs264372%_
                                                            _%pargs264332%_))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp268892 _%stx264278%_))
                           '())))
                (declare (not safe))
                (##append _%kwset264359%_ __tmp268891)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp268889
                                               _%stx264278%_
                                               _%ctx264277%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%$%g264308264318%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%$%e264313264378%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%g264308264318%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%$%e264314264381%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%g264308264318%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%$%e264315264384%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%g264308264318%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys264387%_ _%$%e264315264384%_)
                                   (_%$%e264316264389%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%g264308264318%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main264392%_ _%$%e264316264389%_))
                              (_%$%K264312264375%_
                               _%main264392%_
                               _%keys264387%_))
                            (_%$%else264310264326%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx264277%_ _%stx264278%_)))))
               (_%$%e264295264397%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self264291264300%_
                   '1
                   '#f
                   '#f)))
               (_%$%e264296264400%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self264291264300%_
                   '2
                   '#f
                   '#f)))
               (_%$%e264297264403%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self264291264300%_
                   '3
                   '#f
                   '#f)))
               (_%table264406%_ _%$%e264297264403%_)
               (_%$%e264298264408%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self264291264300%_
                   '4
                   '#f
                   '#f)))
               (_%dispatch264411%_ _%$%e264298264408%_))
          (_%$%K264294264394%_ _%dispatch264411%_ _%table264406%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx263889%_ _%args263890%_)
        (let _%lp263892%_ ((_%rest263894%_ _%args263890%_)
                           (_%pargs263895%_ '())
                           (_%kwargs263896%_ '()))
          (let* ((_%__stx268261268262%_ _%rest263894%_)
                 (_%$%g263902263954%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx268261268262%_)))))
            (let ((_%__kont268263268264%_
                   (lambda (_%$%g263904264133%_ _%$%g263905264134%_)
                     (_%lp263892%_
                      _%$%g263904264133%_
                      (cons _%$%g263905264134%_ _%pargs263895%_)
                      _%kwargs263896%_)))
                  (_%__kont268265268266%_
                   (lambda (_%$%g263919264079%_)
                     (values (let ()
                               (declare (not safe))
                               (foldl__0
                                cons
                                _%$%g263919264079%_
                                _%pargs263895%_))
                             (reverse _%kwargs263896%_))))
                  (_%__kont268267268268%_
                   (lambda (_%$%g263930264026%_
                            _%$%g263931264027%_
                            _%$%g263932264028%_)
                     (let ((_%kw264045%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%g263932264028%_))))
                       (if (assq _%kw264045%_ _%kwargs263896%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx263889%_
                              _%kw264045%_))
                           (_%lp263892%_
                            _%$%g263930264026%_
                            _%pargs263895%_
                            (cons (cons _%kw264045%_ _%$%g263931264027%_)
                                  _%kwargs263896%_))))))
                  (_%__kont268269268270%_
                   (lambda (_%$%g263945263974%_ _%$%g263946263975%_)
                     (_%lp263892%_
                      _%$%g263945263974%_
                      (cons _%$%g263946263975%_ _%pargs263895%_)
                      _%kwargs263896%_)))
                  (_%__kont268271268272%_
                   (lambda ()
                     (values (reverse _%pargs263895%_)
                             (reverse _%kwargs263896%_)))))
              (let ((_%__match268368268369%_
                     (lambda (_%$%e263933263994%_
                              _%$%hd263934263997%_
                              _%$%tl263935263999%_
                              _%$%e263936264002%_
                              _%$%hd263937264005%_
                              _%$%tl263938264007%_
                              _%$%e263939264010%_
                              _%$%hd263940264013%_
                              _%$%tl263941264015%_
                              _%$%e263942264018%_
                              _%$%hd263943264021%_
                              _%$%tl263944264023%_)
                       (let ((_%$%g263930264026%_ _%$%tl263944264023%_)
                             (_%$%g263931264027%_ _%$%hd263943264021%_)
                             (_%$%g263932264028%_ _%$%hd263940264013%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%$%g263932264028%_))
                             (_%__kont268267268268%_
                              _%$%g263930264026%_
                              _%$%g263931264027%_
                              _%$%g263932264028%_)
                             (_%__kont268269268270%_
                              _%$%tl263935263999%_
                              _%$%hd263934263997%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx268261268262%_))
                    (let ((_%$%e263906264098%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx268261268262%_))))
                      (let ((_%$%tl263908264103%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e263906264098%_)))
                            (_%$%hd263907264101%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e263906264098%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%hd263907264101%_))
                            (let ((_%$%e263909264106%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd263907264101%_))))
                              (let ((_%$%tl263911264111%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e263909264106%_)))
                                    (_%$%hd263910264109%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e263909264106%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd263910264109%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%$%hd263910264109%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl263911264111%_))
                                            (let ((_%$%e263912264114%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl263911264111%_))))
                                              (let ((_%$%tl263914264119%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e263912264114%_)))
                                                    (_%$%hd263913264117%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e263912264114%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%$%hd263913264117%_))
                                                    (let ((_%$%e263915264122%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd263913264117%_))))
                                                      (if (equal? _%$%e263915264122%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl263914264119%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl263908264103%_))
                          (let ((_%$%e263916264125%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl263908264103%_))))
                            (let ((_%$%tl263918264130%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e263916264125%_)))
                                  (_%$%hd263917264128%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e263916264125%_))))
                              (_%__kont268263268264%_
                               _%$%tl263918264130%_
                               _%$%hd263917264128%_)))
                          (_%__kont268269268270%_
                           _%$%tl263908264103%_
                           _%$%hd263907264101%_))
                      (_%__kont268269268270%_
                       _%$%tl263908264103%_
                       _%$%hd263907264101%_))
                  (if (equal? _%$%e263915264122%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl263914264119%_))
                          (_%__kont268265268266%_ _%$%tl263908264103%_)
                          (_%__kont268269268270%_
                           _%$%tl263908264103%_
                           _%$%hd263907264101%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl263914264119%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl263908264103%_))
                              (let ((_%$%e263942264018%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl263908264103%_))))
                                (let ((_%$%tl263944264023%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e263942264018%_)))
                                      (_%$%hd263943264021%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e263942264018%_))))
                                  (_%__match268368268369%_
                                   _%$%e263906264098%_
                                   _%$%hd263907264101%_
                                   _%$%tl263908264103%_
                                   _%$%e263909264106%_
                                   _%$%hd263910264109%_
                                   _%$%tl263911264111%_
                                   _%$%e263912264114%_
                                   _%$%hd263913264117%_
                                   _%$%tl263914264119%_
                                   _%$%e263942264018%_
                                   _%$%hd263943264021%_
                                   _%$%tl263944264023%_)))
                              (_%__kont268269268270%_
                               _%$%tl263908264103%_
                               _%$%hd263907264101%_))
                          (_%__kont268269268270%_
                           _%$%tl263908264103%_
                           _%$%hd263907264101%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl263914264119%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl263908264103%_))
                                                            (let ((_%$%e263942264018%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl263908264103%_))))
                      (let ((_%$%tl263944264023%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e263942264018%_)))
                            (_%$%hd263943264021%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e263942264018%_))))
                        (_%__match268368268369%_
                         _%$%e263906264098%_
                         _%$%hd263907264101%_
                         _%$%tl263908264103%_
                         _%$%e263909264106%_
                         _%$%hd263910264109%_
                         _%$%tl263911264111%_
                         _%$%e263912264114%_
                         _%$%hd263913264117%_
                         _%$%tl263914264119%_
                         _%$%e263942264018%_
                         _%$%hd263943264021%_
                         _%$%tl263944264023%_)))
                    (_%__kont268269268270%_
                     _%$%tl263908264103%_
                     _%$%hd263907264101%_))
                (_%__kont268269268270%_
                 _%$%tl263908264103%_
                 _%$%hd263907264101%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont268269268270%_
                                             _%$%tl263908264103%_
                                             _%$%hd263907264101%_))
                                        (_%__kont268269268270%_
                                         _%$%tl263908264103%_
                                         _%$%hd263907264101%_))
                                    (_%__kont268269268270%_
                                     _%$%tl263908264103%_
                                     _%$%hd263907264101%_))))
                            (_%__kont268269268270%_
                             _%$%tl263908264103%_
                             _%$%hd263907264101%_))))
                    (_%__kont268271268272%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self263873%_ _%ctx263874%_ _%stx263875%_ _%args263876%_)
        (let ((_%self263879%_ _%self263873%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx263874%_ _%stx263875%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self263563%_ _%stx263564%_)
        (let* ((_%__stx268377268378%_ _%stx263564%_)
               (_%$%g263567263607%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx268377268378%_)))))
          (let ((_%__kont268379268380%_
                 (lambda (_%$%g263569263711%_ _%$%g263570263712%_)
                   (let ((_%$e263739%_
                          (member 'return:
                                  (let ((__tmp268893
                                         (lambda (_%$%g263731263734%_
                                                  _%$%g263732263736%_)
                                           (cons _%$%g263731263734%_
                                                 _%$%g263732263736%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp268893
                                     '()
                                     _%$%g263570263712%_))
                                  gx#stx-eq?)))
                     (if _%$e263739%_
                         (let ((_%type263744%_
                                (let ((__tmp268894
                                       (let ((__tmp268895 (cadr _%$e263739%_)))
                                         (declare (not safe))
                                         (gxc#identifier-symbol __tmp268895))))
                                  (declare (not safe))
                                  (gxc#optimizer-resolve-class
                                   _%stx263564%_
                                   __tmp268894))))
                           (gxc#check-return-type!
                            _%stx263564%_
                            _%$%g263569263711%_
                            _%type263744%_)
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self263563%_
                              _%$%g263569263711%_)))
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1
                            _%self263563%_
                            _%$%g263569263711%_))))))
                (_%__kont268383268384%_
                 (lambda (_%$%g263592263636%_ _%$%g263593263637%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self263563%_ _%$%g263592263636%_)))))
            (let ((_%__match268414268415%_
                   (lambda (_%$%e263571263657%_
                            _%$%hd263572263660%_
                            _%$%tl263573263662%_
                            _%$%e263574263665%_
                            _%$%hd263575263668%_
                            _%$%tl263576263670%_
                            _%$%e263577263673%_
                            _%$%hd263578263676%_
                            _%$%tl263579263678%_
                            _%__splice268381268382%_
                            _%$%target263580263681%_
                            _%$%tl263582263683%_)
                     (letrec ((_%$%loop263583263686%_
                               (lambda (_%$%hd263581263689%_
                                        _%$%signature263587263691%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd263581263689%_))
                                     (let ((_%$%e263584263693%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd263581263689%_))))
                                       (let ((_%$%lp-tl263586263698%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e263584263693%_)))
                                             (_%$%lp-hd263585263696%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e263584263693%_))))
                                         (_%$%loop263583263686%_
                                          _%$%lp-tl263586263698%_
                                          (cons _%$%lp-hd263585263696%_
                                                _%$%signature263587263691%_))))
                                     (let ((_%$%signature263588263701%_
                                            (reverse _%$%signature263587263691%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl263576263670%_))
                                           (let ((_%$%e263589263703%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl263576263670%_))))
                                             (let ((_%$%tl263591263708%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e263589263703%_)))
                                                   (_%$%hd263590263706%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e263589263703%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl263591263708%_))
                                                   (_%__kont268379268380%_
                                                    _%$%hd263590263706%_
                                                    _%$%signature263588263701%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g263567263607%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g263567263607%_))))))))
                       (_%$%loop263583263686%_
                        _%$%target263580263681%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx268377268378%_))
                  (let ((_%$%e263571263657%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx268377268378%_))))
                    (let ((_%$%tl263573263662%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e263571263657%_)))
                          (_%$%hd263572263660%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e263571263657%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl263573263662%_))
                          (let ((_%$%e263574263665%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl263573263662%_))))
                            (let ((_%$%tl263576263670%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e263574263665%_)))
                                  (_%$%hd263575263668%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e263574263665%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd263575263668%_))
                                  (let ((_%$%e263577263673%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd263575263668%_))))
                                    (let ((_%$%tl263579263678%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e263577263673%_)))
                                          (_%$%hd263578263676%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e263577263673%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd263578263676%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%$%hd263578263676%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%$%tl263579263678%_))
                                                  (let ((_%__splice268381268382%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl263579263678%_
                                                            '0))))
                                                    (let ((_%$%tl263582263683%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice268381268382%_
                                                              '1)))
                                                          (_%$%target263580263681%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice268381268382%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl263582263683%_))
                                                          (_%__match268414268415%_
                                                           _%$%e263571263657%_
                                                           _%$%hd263572263660%_
                                                           _%$%tl263573263662%_
                                                           _%$%e263574263665%_
                                                           _%$%hd263575263668%_
                                                           _%$%tl263576263670%_
                                                           _%$%e263577263673%_
                                                           _%$%hd263578263676%_
                                                           _%$%tl263579263678%_
                                                           _%__splice268381268382%_
                                                           _%$%target263580263681%_
                                                           _%$%tl263582263683%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl263576263670%_))
                      (let ((_%$%e263600263628%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl263576263670%_))))
                        (let ((_%$%tl263602263633%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e263600263628%_)))
                              (_%$%hd263601263631%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e263600263628%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl263602263633%_))
                              (_%__kont268383268384%_
                               _%$%hd263601263631%_
                               _%$%hd263575263668%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g263567263607%_)))))
                      (let () (declare (not safe)) (_%$%g263567263607%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl263576263670%_))
                                                      (let ((_%$%e263600263628%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl263576263670%_))))
                (let ((_%$%tl263602263633%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e263600263628%_)))
                      (_%$%hd263601263631%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e263600263628%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl263602263633%_))
                      (_%__kont268383268384%_
                       _%$%hd263601263631%_
                       _%$%hd263575263668%_)
                      (let () (declare (not safe)) (_%$%g263567263607%_)))))
              (let () (declare (not safe)) (_%$%g263567263607%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl263576263670%_))
                                                  (let ((_%$%e263600263628%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl263576263670%_))))
                                                    (let ((_%$%tl263602263633%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e263600263628%_)))
                                                          (_%$%hd263601263631%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e263600263628%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl263602263633%_))
                                                          (_%__kont268383268384%_
                                                           _%$%hd263601263631%_
                                                           _%$%hd263575263668%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g263567263607%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g263567263607%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl263576263670%_))
                                              (let ((_%$%e263600263628%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl263576263670%_))))
                                                (let ((_%$%tl263602263633%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e263600263628%_)))
                                                      (_%$%hd263601263631%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e263600263628%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl263602263633%_))
                                                      (_%__kont268383268384%_
                                                       _%$%hd263601263631%_
                                                       _%$%hd263575263668%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g263567263607%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g263567263607%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl263576263670%_))
                                      (let ((_%$%e263600263628%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl263576263670%_))))
                                        (let ((_%$%tl263602263633%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e263600263628%_)))
                                              (_%$%hd263601263631%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e263600263628%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl263602263633%_))
                                              (_%__kont268383268384%_
                                               _%$%hd263601263631%_
                                               _%$%hd263575263668%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g263567263607%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g263567263607%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g263567263607%_)))))
                  (let () (declare (not safe)) (_%$%g263567263607%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx263538%_ _%expr263539%_ _%type263540%_)
        (let ((_%$e263542%_ (not _%type263540%_)))
          (if _%$e263542%_
              _%$e263542%_
              (let ((_%$e263545%_
                     (eq? (##structure-ref _%type263540%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e263545%_
                    _%$e263545%_
                    (let ((_%$e263548%_
                           (eq? (##structure-ref
                                 _%type263540%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e263548%_
                          _%$e263548%_
                          (let ((_%expr-type263552%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr263539%_))))
                            (if (not _%expr-type263552%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx263538%_
                                   _%type263540%_))
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type263552%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx263538%_
                                       _%type263540%_
                                       _%expr-type263552%_))
                                    (let ((_%$e263556%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type263552%_
                                              'gxc#!abort::t))))
                                      (if _%$e263556%_
                                          _%$e263556%_
                                          (let ((_%$e263559%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type263552%_
                                                    _%type263540%_))))
                                            (if _%$e263559%_
                                                _%$e263559%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx263538%_
                                                   _%type263540%_
                                                   _%expr-type263552%_)))))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self262967%_ _%stx262968%_)
        (gxc#check-contract-violation!
         _%stx262968%_
         (let* ((_%__stx268463268464%_ _%stx262968%_)
                (_%$%g262973263083%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gx#raise-syntax-error
                      '#f
                      '"Bad syntax; invalid match target"
                      _%__stx268463268464%_)))))
           (let ((_%__kont268465268466%_
                  (lambda (_%$%g262975263512%_
                           _%$%g262976263513%_
                           _%$%g262977263514%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-e _%$%g262977263514%_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self262967%_
                           _%$%g262976263513%_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self262967%_
                           _%$%g262975263512%_)))))
                 (_%__kont268467268468%_
                  (lambda (_%$%g262996263341%_
                           _%$%g262997263342%_
                           _%$%g262998263343%_
                           _%$%g262999263344%_)
                    (let ((_%$e263376%_
                           (let ((__tmp268896
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%$%g262999263344%_))))
                             (declare (not safe))
                             (gxc#optimizer-lookup-type __tmp268896))))
                      (if _%$e263376%_
                          (if (or (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%$e263376%_
                                     'gxc#!predicate::t))
                                  (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%$e263376%_
                                     'gxc#!primitive-predicate::t)))
                              (let* ((_%test263384%_
                                      (let ((__tmp268897
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      '%#call))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f '%#ref))
                       (cons _%$%g262999263344%_ '()))
                 (cons (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#ref))
                             (cons _%$%g262998263343%_ '()))
                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (declare (not safe))
                                        (gxc#xform-wrap-apply
                                         __tmp268897
                                         _%stx262968%_
                                         _%self262967%_)))
                                     (_%K263388%_
                                      (let ((__tmp268898
                                             (lambda ()
                                               (let ((__tmp268901
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self262967%_
                                                           _%$%g262997263342%_))))
                                                     (__tmp268899
                                                      (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#identifier-symbol _%$%g262998263343%_))
                          (let ((__tmp268900
                                 (##structure-ref
                                  _%$e263376%_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             _%stx262968%_
                             __tmp268900)))
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp268901
                                                  gxc#current-compile-path-type
                                                  __tmp268899)))))
                                        (declare (not safe))
                                        (__make-promise __tmp268898)))
                                     (_%E263391%_
                                      (let ((__tmp268902
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self262967%_
                                                  _%$%g262996263341%_)))))
                                        (declare (not safe))
                                        (__make-promise __tmp268902)))
                                     (_%__stx268437268438%_ _%test263384%_)
                                     (_%$%g263395263408%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx268437268438%_)))))
                                (let ((_%__kont268439268440%_
                                       (lambda (_%$%g263397263436%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%$%g263397263436%_))
                                             (force _%K263388%_)
                                             (force _%E263391%_))))
                                      (_%__kont268441268442%_
                                       (lambda ()
                                         (let ((__tmp268903
                                                (cons '%#if
                                                      (cons _%test263384%_
                                                            (cons (force _%K263388%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (force _%E263391%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp268903
                                            _%stx262968%_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx268437268438%_))
                                      (let ((_%$%e263398263420%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx268437268438%_))))
                                        (let ((_%$%tl263400263425%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e263398263420%_)))
                                              (_%$%hd263399263423%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e263398263420%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%$%hd263399263423%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#quote
                                                     _%$%hd263399263423%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl263400263425%_))
                                                      (let ((_%$%e263401263428%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl263400263425%_))))
                (let ((_%$%tl263403263433%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e263401263428%_)))
                      (_%$%hd263402263431%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e263401263428%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl263403263433%_))
                      (_%__kont268439268440%_ _%$%hd263402263431%_)
                      (_%__kont268441268442%_))))
              (_%__kont268441268442%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont268441268442%_))
                                              (_%__kont268441268442%_))))
                                      (_%__kont268441268442%_))))
                              (let ()
                                (declare (not safe))
                                (gxc#xform-operands
                                 _%self262967%_
                                 _%stx262968%_)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-operands
                             _%self262967%_
                             _%stx262968%_))))))
                 (_%__kont268469268470%_
                  (lambda (_%$%g263033263217%_
                           _%$%g263034263218%_
                           _%$%g263035263219%_
                           _%$%g263036263220%_)
                    (gxc#optimize-if%
                     _%self262967%_
                     (let ((__tmp268904
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f '%#if))
                                  (cons _%$%g263035263219%_
                                        (cons _%$%g263033263217%_
                                              (cons _%$%g263034263218%_
                                                    '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp268904 _%stx262968%_)))))
                 (_%__kont268471268472%_
                  (lambda (_%$%g263064263120%_
                           _%$%g263065263121%_
                           _%$%g263066263122%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-operands _%self262967%_ _%stx262968%_)))))
             (let ((_%__match268670268671%_
                    (lambda (_%$%e263037263145%_
                             _%$%hd263038263148%_
                             _%$%tl263039263150%_
                             _%$%e263040263153%_
                             _%$%hd263041263156%_
                             _%$%tl263042263158%_
                             _%$%e263043263161%_
                             _%$%hd263044263164%_
                             _%$%tl263045263166%_
                             _%$%e263046263169%_
                             _%$%hd263047263172%_
                             _%$%tl263048263174%_
                             _%$%e263049263177%_
                             _%$%hd263050263180%_
                             _%$%tl263051263182%_
                             _%$%e263052263185%_
                             _%$%hd263053263188%_
                             _%$%tl263054263190%_
                             _%$%e263055263193%_
                             _%$%hd263056263196%_
                             _%$%tl263057263198%_
                             _%$%e263058263201%_
                             _%$%hd263059263204%_
                             _%$%tl263060263206%_
                             _%$%e263061263209%_
                             _%$%hd263062263212%_
                             _%$%tl263063263214%_)
                      (let ((_%$%g263033263217%_ _%$%hd263062263212%_)
                            (_%$%g263034263218%_ _%$%hd263059263204%_)
                            (_%$%g263035263219%_ _%$%hd263056263196%_)
                            (_%$%g263036263220%_ _%$%hd263053263188%_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _%$%g263036263220%_
                               'not))
                            (_%__kont268469268470%_
                             _%$%g263033263217%_
                             _%$%g263034263218%_
                             _%$%g263035263219%_
                             _%$%g263036263220%_)
                            (_%__kont268471268472%_
                             _%$%hd263062263212%_
                             _%$%hd263059263204%_
                             _%$%hd263041263156%_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? _%__stx268463268464%_))
                   (let ((_%$%e262978263464%_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%__stx268463268464%_))))
                     (let ((_%$%tl262980263469%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e262978263464%_)))
                           (_%$%hd262979263467%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e262978263464%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl262980263469%_))
                           (let ((_%$%e262981263472%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl262980263469%_))))
                             (let ((_%$%tl262983263477%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e262981263472%_)))
                                   (_%$%hd262982263475%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e262981263472%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd262982263475%_))
                                   (let ((_%$%e262984263480%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%hd262982263475%_))))
                                     (let ((_%$%tl262986263485%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e262984263480%_)))
                                           (_%$%hd262985263483%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e262984263480%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%$%hd262985263483%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#quote
                                                  _%$%hd262985263483%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl262986263485%_))
                                                   (let ((_%$%e262987263488%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl262986263485%_))))
                                                     (let ((_%$%tl262989263493%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e262987263488%_)))
                                                           (_%$%hd262988263491%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e262987263488%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl262989263493%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl262983263477%_))
                       (let ((_%$%e262990263496%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl262983263477%_))))
                         (let ((_%$%tl262992263501%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e262990263496%_)))
                               (_%$%hd262991263499%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e262990263496%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl262992263501%_))
                               (let ((_%$%e262993263504%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl262992263501%_))))
                                 (let ((_%$%tl262995263509%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e262993263504%_)))
                                       (_%$%hd262994263507%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e262993263504%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl262995263509%_))
                                       (_%__kont268465268466%_
                                        _%$%hd262994263507%_
                                        _%$%hd262991263499%_
                                        _%$%hd262988263491%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g262973263083%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%$%g262973263083%_)))))
                       (let () (declare (not safe)) (_%$%g262973263083%_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl262983263477%_))
                       (let ((_%$%e263073263104%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl262983263477%_))))
                         (let ((_%$%tl263075263109%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e263073263104%_)))
                               (_%$%hd263074263107%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e263073263104%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl263075263109%_))
                               (let ((_%$%e263076263112%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl263075263109%_))))
                                 (let ((_%$%tl263078263117%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e263076263112%_)))
                                       (_%$%hd263077263115%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e263076263112%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl263078263117%_))
                                       (_%__kont268471268472%_
                                        _%$%hd263077263115%_
                                        _%$%hd263074263107%_
                                        _%$%hd262982263475%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g262973263083%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%$%g262973263083%_)))))
                       (let () (declare (not safe)) (_%$%g262973263083%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl262983263477%_))
                                                       (let ((_%$%e263073263104%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl262983263477%_))))
                 (let ((_%$%tl263075263109%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e263073263104%_)))
                       (_%$%hd263074263107%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e263073263104%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl263075263109%_))
                       (let ((_%$%e263076263112%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl263075263109%_))))
                         (let ((_%$%tl263078263117%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e263076263112%_)))
                               (_%$%hd263077263115%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e263076263112%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl263078263117%_))
                               (_%__kont268471268472%_
                                _%$%hd263077263115%_
                                _%$%hd263074263107%_
                                _%$%hd262982263475%_)
                               (let ()
                                 (declare (not safe))
                                 (_%$%g262973263083%_)))))
                       (let () (declare (not safe)) (_%$%g262973263083%_)))))
               (let () (declare (not safe)) (_%$%g262973263083%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-eq?
                                                      '%#call
                                                      _%$%hd262985263483%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl262986263485%_))
                                                       (let ((_%$%e263009263277%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl262986263485%_))))
                 (let ((_%$%tl263011263282%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e263009263277%_)))
                       (_%$%hd263010263280%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e263009263277%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%hd263010263280%_))
                       (let ((_%$%e263012263285%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%hd263010263280%_))))
                         (let ((_%$%tl263014263290%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e263012263285%_)))
                               (_%$%hd263013263288%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e263012263285%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#identifier? _%$%hd263013263288%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-eq? '%#ref _%$%hd263013263288%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl263014263290%_))
                                       (let ((_%$%e263015263293%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl263014263290%_))))
                                         (let ((_%$%tl263017263298%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e263015263293%_)))
                                               (_%$%hd263016263296%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e263015263293%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%$%tl263017263298%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl263011263282%_))
                                                   (let ((_%$%e263018263301%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl263011263282%_))))
                                                     (let ((_%$%tl263020263306%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e263018263301%_)))
                                                           (_%$%hd263019263304%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e263018263301%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%hd263019263304%_))
                                                           (let ((_%$%e263021263309%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%hd263019263304%_))))
                     (let ((_%$%tl263023263314%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e263021263309%_)))
                           (_%$%hd263022263312%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e263021263309%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%$%hd263022263312%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-eq? '%#ref _%$%hd263022263312%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl263023263314%_))
                                   (let ((_%$%e263024263317%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl263023263314%_))))
                                     (let ((_%$%tl263026263322%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e263024263317%_)))
                                           (_%$%hd263025263320%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e263024263317%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl263026263322%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%$%tl263020263306%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl262983263477%_))
                                                   (let ((_%$%e263027263325%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl262983263477%_))))
                                                     (let ((_%$%tl263029263330%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e263027263325%_)))
                                                           (_%$%hd263028263328%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e263027263325%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl263029263330%_))
                                                           (let ((_%$%e263030263333%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl263029263330%_))))
                     (let ((_%$%tl263032263338%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e263030263333%_)))
                           (_%$%hd263031263336%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e263030263333%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl263032263338%_))
                           (_%__kont268467268468%_
                            _%$%hd263031263336%_
                            _%$%hd263028263328%_
                            _%$%hd263025263320%_
                            _%$%hd263016263296%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g262973263083%_)))))
                   (let () (declare (not safe)) (_%$%g262973263083%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g262973263083%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl262983263477%_))
                                                   (let ((_%$%e263073263104%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl262983263477%_))))
                                                     (let ((_%$%tl263075263109%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e263073263104%_)))
                                                           (_%$%hd263074263107%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e263073263104%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl263075263109%_))
                                                           (let ((_%$%e263076263112%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl263075263109%_))))
                     (let ((_%$%tl263078263117%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e263076263112%_)))
                           (_%$%hd263077263115%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e263076263112%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl263078263117%_))
                           (_%__kont268471268472%_
                            _%$%hd263077263115%_
                            _%$%hd263074263107%_
                            _%$%hd262982263475%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g262973263083%_)))))
                   (let () (declare (not safe)) (_%$%g262973263083%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g262973263083%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%$%tl263020263306%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl262983263477%_))
                                                   (let ((_%$%e263058263201%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl262983263477%_))))
                                                     (let ((_%$%tl263060263206%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e263058263201%_)))
                                                           (_%$%hd263059263204%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e263058263201%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl263060263206%_))
                                                           (let ((_%$%e263061263209%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl263060263206%_))))
                     (let ((_%$%tl263063263214%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e263061263209%_)))
                           (_%$%hd263062263212%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e263061263209%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl263063263214%_))
                           (_%__match268670268671%_
                            _%$%e262978263464%_
                            _%$%hd262979263467%_
                            _%$%tl262980263469%_
                            _%$%e262981263472%_
                            _%$%hd262982263475%_
                            _%$%tl262983263477%_
                            _%$%e262984263480%_
                            _%$%hd262985263483%_
                            _%$%tl262986263485%_
                            _%$%e263009263277%_
                            _%$%hd263010263280%_
                            _%$%tl263011263282%_
                            _%$%e263012263285%_
                            _%$%hd263013263288%_
                            _%$%tl263014263290%_
                            _%$%e263015263293%_
                            _%$%hd263016263296%_
                            _%$%tl263017263298%_
                            _%$%e263018263301%_
                            _%$%hd263019263304%_
                            _%$%tl263020263306%_
                            _%$%e263058263201%_
                            _%$%hd263059263204%_
                            _%$%tl263060263206%_
                            _%$%e263061263209%_
                            _%$%hd263062263212%_
                            _%$%tl263063263214%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g262973263083%_)))))
                   (let () (declare (not safe)) (_%$%g262973263083%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g262973263083%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl262983263477%_))
                                                   (let ((_%$%e263073263104%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl262983263477%_))))
                                                     (let ((_%$%tl263075263109%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e263073263104%_)))
                                                           (_%$%hd263074263107%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e263073263104%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl263075263109%_))
                                                           (let ((_%$%e263076263112%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl263075263109%_))))
                     (let ((_%$%tl263078263117%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e263076263112%_)))
                           (_%$%hd263077263115%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e263076263112%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl263078263117%_))
                           (_%__kont268471268472%_
                            _%$%hd263077263115%_
                            _%$%hd263074263107%_
                            _%$%hd262982263475%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g262973263083%_)))))
                   (let () (declare (not safe)) (_%$%g262973263083%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g262973263083%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl263020263306%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl262983263477%_))
                                           (let ((_%$%e263058263201%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl262983263477%_))))
                                             (let ((_%$%tl263060263206%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e263058263201%_)))
                                                   (_%$%hd263059263204%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e263058263201%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl263060263206%_))
                                                   (let ((_%$%e263061263209%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl263060263206%_))))
                                                     (let ((_%$%tl263063263214%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e263061263209%_)))
                                                           (_%$%hd263062263212%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e263061263209%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl263063263214%_))
                                                           (_%__match268670268671%_
                                                            _%$%e262978263464%_
                                                            _%$%hd262979263467%_
                                                            _%$%tl262980263469%_
                                                            _%$%e262981263472%_
                                                            _%$%hd262982263475%_
                                                            _%$%tl262983263477%_
                                                            _%$%e262984263480%_
                                                            _%$%hd262985263483%_
                                                            _%$%tl262986263485%_
                                                            _%$%e263009263277%_
                                                            _%$%hd263010263280%_
                                                            _%$%tl263011263282%_
                                                            _%$%e263012263285%_
                                                            _%$%hd263013263288%_
                                                            _%$%tl263014263290%_
                                                            _%$%e263015263293%_
                                                            _%$%hd263016263296%_
                                                            _%$%tl263017263298%_
                                                            _%$%e263018263301%_
                                                            _%$%hd263019263304%_
                                                            _%$%tl263020263306%_
                                                            _%$%e263058263201%_
                                                            _%$%hd263059263204%_
                                                            _%$%tl263060263206%_
                                                            _%$%e263061263209%_
                                                            _%$%hd263062263212%_
                                                            _%$%tl263063263214%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%$%g262973263083%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g262973263083%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g262973263083%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl262983263477%_))
                                           (let ((_%$%e263073263104%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl262983263477%_))))
                                             (let ((_%$%tl263075263109%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e263073263104%_)))
                                                   (_%$%hd263074263107%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e263073263104%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl263075263109%_))
                                                   (let ((_%$%e263076263112%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl263075263109%_))))
                                                     (let ((_%$%tl263078263117%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e263076263112%_)))
                                                           (_%$%hd263077263115%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e263076263112%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl263078263117%_))
                                                           (_%__kont268471268472%_
                                                            _%$%hd263077263115%_
                                                            _%$%hd263074263107%_
                                                            _%$%hd262982263475%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%$%g262973263083%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g262973263083%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g262973263083%_)))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%$%tl263020263306%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl262983263477%_))
                                       (let ((_%$%e263058263201%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl262983263477%_))))
                                         (let ((_%$%tl263060263206%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e263058263201%_)))
                                               (_%$%hd263059263204%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e263058263201%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl263060263206%_))
                                               (let ((_%$%e263061263209%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl263060263206%_))))
                                                 (let ((_%$%tl263063263214%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e263061263209%_)))
                                                       (_%$%hd263062263212%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e263061263209%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl263063263214%_))
                                                       (_%__match268670268671%_
                                                        _%$%e262978263464%_
                                                        _%$%hd262979263467%_
                                                        _%$%tl262980263469%_
                                                        _%$%e262981263472%_
                                                        _%$%hd262982263475%_
                                                        _%$%tl262983263477%_
                                                        _%$%e262984263480%_
                                                        _%$%hd262985263483%_
                                                        _%$%tl262986263485%_
                                                        _%$%e263009263277%_
                                                        _%$%hd263010263280%_
                                                        _%$%tl263011263282%_
                                                        _%$%e263012263285%_
                                                        _%$%hd263013263288%_
                                                        _%$%tl263014263290%_
                                                        _%$%e263015263293%_
                                                        _%$%hd263016263296%_
                                                        _%$%tl263017263298%_
                                                        _%$%e263018263301%_
                                                        _%$%hd263019263304%_
                                                        _%$%tl263020263306%_
                                                        _%$%e263058263201%_
                                                        _%$%hd263059263204%_
                                                        _%$%tl263060263206%_
                                                        _%$%e263061263209%_
                                                        _%$%hd263062263212%_
                                                        _%$%tl263063263214%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%$%g262973263083%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g262973263083%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g262973263083%_)))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl262983263477%_))
                                       (let ((_%$%e263073263104%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl262983263477%_))))
                                         (let ((_%$%tl263075263109%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e263073263104%_)))
                                               (_%$%hd263074263107%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e263073263104%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl263075263109%_))
                                               (let ((_%$%e263076263112%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl263075263109%_))))
                                                 (let ((_%$%tl263078263117%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e263076263112%_)))
                                                       (_%$%hd263077263115%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e263076263112%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl263078263117%_))
                                                       (_%__kont268471268472%_
                                                        _%$%hd263077263115%_
                                                        _%$%hd263074263107%_
                                                        _%$%hd262982263475%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%$%g262973263083%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g262973263083%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g262973263083%_)))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl263020263306%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl262983263477%_))
                                   (let ((_%$%e263058263201%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl262983263477%_))))
                                     (let ((_%$%tl263060263206%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e263058263201%_)))
                                           (_%$%hd263059263204%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e263058263201%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl263060263206%_))
                                           (let ((_%$%e263061263209%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl263060263206%_))))
                                             (let ((_%$%tl263063263214%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e263061263209%_)))
                                                   (_%$%hd263062263212%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e263061263209%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl263063263214%_))
                                                   (_%__match268670268671%_
                                                    _%$%e262978263464%_
                                                    _%$%hd262979263467%_
                                                    _%$%tl262980263469%_
                                                    _%$%e262981263472%_
                                                    _%$%hd262982263475%_
                                                    _%$%tl262983263477%_
                                                    _%$%e262984263480%_
                                                    _%$%hd262985263483%_
                                                    _%$%tl262986263485%_
                                                    _%$%e263009263277%_
                                                    _%$%hd263010263280%_
                                                    _%$%tl263011263282%_
                                                    _%$%e263012263285%_
                                                    _%$%hd263013263288%_
                                                    _%$%tl263014263290%_
                                                    _%$%e263015263293%_
                                                    _%$%hd263016263296%_
                                                    _%$%tl263017263298%_
                                                    _%$%e263018263301%_
                                                    _%$%hd263019263304%_
                                                    _%$%tl263020263306%_
                                                    _%$%e263058263201%_
                                                    _%$%hd263059263204%_
                                                    _%$%tl263060263206%_
                                                    _%$%e263061263209%_
                                                    _%$%hd263062263212%_
                                                    _%$%tl263063263214%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g262973263083%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g262973263083%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g262973263083%_)))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl262983263477%_))
                                   (let ((_%$%e263073263104%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl262983263477%_))))
                                     (let ((_%$%tl263075263109%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e263073263104%_)))
                                           (_%$%hd263074263107%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e263073263104%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl263075263109%_))
                                           (let ((_%$%e263076263112%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl263075263109%_))))
                                             (let ((_%$%tl263078263117%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e263076263112%_)))
                                                   (_%$%hd263077263115%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e263076263112%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl263078263117%_))
                                                   (_%__kont268471268472%_
                                                    _%$%hd263077263115%_
                                                    _%$%hd263074263107%_
                                                    _%$%hd262982263475%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g262973263083%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g262973263083%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g262973263083%_)))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl263020263306%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl262983263477%_))
                           (let ((_%$%e263058263201%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl262983263477%_))))
                             (let ((_%$%tl263060263206%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e263058263201%_)))
                                   (_%$%hd263059263204%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e263058263201%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl263060263206%_))
                                   (let ((_%$%e263061263209%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl263060263206%_))))
                                     (let ((_%$%tl263063263214%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e263061263209%_)))
                                           (_%$%hd263062263212%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e263061263209%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl263063263214%_))
                                           (_%__match268670268671%_
                                            _%$%e262978263464%_
                                            _%$%hd262979263467%_
                                            _%$%tl262980263469%_
                                            _%$%e262981263472%_
                                            _%$%hd262982263475%_
                                            _%$%tl262983263477%_
                                            _%$%e262984263480%_
                                            _%$%hd262985263483%_
                                            _%$%tl262986263485%_
                                            _%$%e263009263277%_
                                            _%$%hd263010263280%_
                                            _%$%tl263011263282%_
                                            _%$%e263012263285%_
                                            _%$%hd263013263288%_
                                            _%$%tl263014263290%_
                                            _%$%e263015263293%_
                                            _%$%hd263016263296%_
                                            _%$%tl263017263298%_
                                            _%$%e263018263301%_
                                            _%$%hd263019263304%_
                                            _%$%tl263020263306%_
                                            _%$%e263058263201%_
                                            _%$%hd263059263204%_
                                            _%$%tl263060263206%_
                                            _%$%e263061263209%_
                                            _%$%hd263062263212%_
                                            _%$%tl263063263214%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g262973263083%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g262973263083%_)))))
                           (let () (declare (not safe)) (_%$%g262973263083%_)))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl262983263477%_))
                           (let ((_%$%e263073263104%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl262983263477%_))))
                             (let ((_%$%tl263075263109%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e263073263104%_)))
                                   (_%$%hd263074263107%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e263073263104%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl263075263109%_))
                                   (let ((_%$%e263076263112%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl263075263109%_))))
                                     (let ((_%$%tl263078263117%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e263076263112%_)))
                                           (_%$%hd263077263115%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e263076263112%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl263078263117%_))
                                           (_%__kont268471268472%_
                                            _%$%hd263077263115%_
                                            _%$%hd263074263107%_
                                            _%$%hd262982263475%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g262973263083%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g262973263083%_)))))
                           (let ()
                             (declare (not safe))
                             (_%$%g262973263083%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl262983263477%_))
                                                       (let ((_%$%e263073263104%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl262983263477%_))))
                 (let ((_%$%tl263075263109%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e263073263104%_)))
                       (_%$%hd263074263107%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e263073263104%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl263075263109%_))
                       (let ((_%$%e263076263112%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl263075263109%_))))
                         (let ((_%$%tl263078263117%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e263076263112%_)))
                               (_%$%hd263077263115%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e263076263112%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl263078263117%_))
                               (_%__kont268471268472%_
                                _%$%hd263077263115%_
                                _%$%hd263074263107%_
                                _%$%hd262982263475%_)
                               (let ()
                                 (declare (not safe))
                                 (_%$%g262973263083%_)))))
                       (let () (declare (not safe)) (_%$%g262973263083%_)))))
               (let () (declare (not safe)) (_%$%g262973263083%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl262983263477%_))
                                                   (let ((_%$%e263073263104%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl262983263477%_))))
                                                     (let ((_%$%tl263075263109%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e263073263104%_)))
                                                           (_%$%hd263074263107%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e263073263104%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl263075263109%_))
                                                           (let ((_%$%e263076263112%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl263075263109%_))))
                     (let ((_%$%tl263078263117%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e263076263112%_)))
                           (_%$%hd263077263115%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e263076263112%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl263078263117%_))
                           (_%__kont268471268472%_
                            _%$%hd263077263115%_
                            _%$%hd263074263107%_
                            _%$%hd262982263475%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g262973263083%_)))))
                   (let () (declare (not safe)) (_%$%g262973263083%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g262973263083%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl262983263477%_))
                                           (let ((_%$%e263073263104%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl262983263477%_))))
                                             (let ((_%$%tl263075263109%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e263073263104%_)))
                                                   (_%$%hd263074263107%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e263073263104%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl263075263109%_))
                                                   (let ((_%$%e263076263112%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl263075263109%_))))
                                                     (let ((_%$%tl263078263117%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e263076263112%_)))
                                                           (_%$%hd263077263115%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e263076263112%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl263078263117%_))
                                                           (_%__kont268471268472%_
                                                            _%$%hd263077263115%_
                                                            _%$%hd263074263107%_
                                                            _%$%hd262982263475%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%$%g262973263083%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g262973263083%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g262973263083%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl262983263477%_))
                                       (let ((_%$%e263073263104%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl262983263477%_))))
                                         (let ((_%$%tl263075263109%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e263073263104%_)))
                                               (_%$%hd263074263107%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e263073263104%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl263075263109%_))
                                               (let ((_%$%e263076263112%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl263075263109%_))))
                                                 (let ((_%$%tl263078263117%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e263076263112%_)))
                                                       (_%$%hd263077263115%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e263076263112%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl263078263117%_))
                                                       (_%__kont268471268472%_
                                                        _%$%hd263077263115%_
                                                        _%$%hd263074263107%_
                                                        _%$%hd262982263475%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%$%g262973263083%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g262973263083%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g262973263083%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl262983263477%_))
                                   (let ((_%$%e263073263104%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl262983263477%_))))
                                     (let ((_%$%tl263075263109%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e263073263104%_)))
                                           (_%$%hd263074263107%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e263073263104%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl263075263109%_))
                                           (let ((_%$%e263076263112%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl263075263109%_))))
                                             (let ((_%$%tl263078263117%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e263076263112%_)))
                                                   (_%$%hd263077263115%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e263076263112%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl263078263117%_))
                                                   (_%__kont268471268472%_
                                                    _%$%hd263077263115%_
                                                    _%$%hd263074263107%_
                                                    _%$%hd262982263475%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g262973263083%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g262973263083%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g262973263083%_))))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl262983263477%_))
                           (let ((_%$%e263073263104%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl262983263477%_))))
                             (let ((_%$%tl263075263109%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e263073263104%_)))
                                   (_%$%hd263074263107%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e263073263104%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl263075263109%_))
                                   (let ((_%$%e263076263112%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl263075263109%_))))
                                     (let ((_%$%tl263078263117%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e263076263112%_)))
                                           (_%$%hd263077263115%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e263076263112%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl263078263117%_))
                                           (_%__kont268471268472%_
                                            _%$%hd263077263115%_
                                            _%$%hd263074263107%_
                                            _%$%hd262982263475%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g262973263083%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g262973263083%_)))))
                           (let ()
                             (declare (not safe))
                             (_%$%g262973263083%_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? _%$%tl262983263477%_))
                   (let ((_%$%e263073263104%_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl262983263477%_))))
                     (let ((_%$%tl263075263109%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e263073263104%_)))
                           (_%$%hd263074263107%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e263073263104%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl263075263109%_))
                           (let ((_%$%e263076263112%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl263075263109%_))))
                             (let ((_%$%tl263078263117%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e263076263112%_)))
                                   (_%$%hd263077263115%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e263076263112%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%$%tl263078263117%_))
                                   (_%__kont268471268472%_
                                    _%$%hd263077263115%_
                                    _%$%hd263074263107%_
                                    _%$%hd262982263475%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g262973263083%_)))))
                           (let ()
                             (declare (not safe))
                             (_%$%g262973263083%_)))))
                   (let () (declare (not safe)) (_%$%g262973263083%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl262983263477%_))
                                                       (let ((_%$%e263073263104%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl262983263477%_))))
                 (let ((_%$%tl263075263109%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e263073263104%_)))
                       (_%$%hd263074263107%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e263073263104%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl263075263109%_))
                       (let ((_%$%e263076263112%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl263075263109%_))))
                         (let ((_%$%tl263078263117%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e263076263112%_)))
                               (_%$%hd263077263115%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e263076263112%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl263078263117%_))
                               (_%__kont268471268472%_
                                _%$%hd263077263115%_
                                _%$%hd263074263107%_
                                _%$%hd262982263475%_)
                               (let ()
                                 (declare (not safe))
                                 (_%$%g262973263083%_)))))
                       (let () (declare (not safe)) (_%$%g262973263083%_)))))
               (let () (declare (not safe)) (_%$%g262973263083%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl262983263477%_))
                                               (let ((_%$%e263073263104%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl262983263477%_))))
                                                 (let ((_%$%tl263075263109%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e263073263104%_)))
                                                       (_%$%hd263074263107%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e263073263104%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl263075263109%_))
                                                       (let ((_%$%e263076263112%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl263075263109%_))))
                 (let ((_%$%tl263078263117%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e263076263112%_)))
                       (_%$%hd263077263115%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e263076263112%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl263078263117%_))
                       (_%__kont268471268472%_
                        _%$%hd263077263115%_
                        _%$%hd263074263107%_
                        _%$%hd262982263475%_)
                       (let () (declare (not safe)) (_%$%g262973263083%_)))))
               (let () (declare (not safe)) (_%$%g262973263083%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g262973263083%_))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl262983263477%_))
                                       (let ((_%$%e263073263104%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl262983263477%_))))
                                         (let ((_%$%tl263075263109%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e263073263104%_)))
                                               (_%$%hd263074263107%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e263073263104%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl263075263109%_))
                                               (let ((_%$%e263076263112%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl263075263109%_))))
                                                 (let ((_%$%tl263078263117%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e263076263112%_)))
                                                       (_%$%hd263077263115%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e263076263112%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl263078263117%_))
                                                       (_%__kont268471268472%_
                                                        _%$%hd263077263115%_
                                                        _%$%hd263074263107%_
                                                        _%$%hd262982263475%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%$%g262973263083%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g262973263083%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g262973263083%_))))))
                           (let ()
                             (declare (not safe))
                             (_%$%g262973263083%_)))))
                   (let () (declare (not safe)) (_%$%g262973263083%_)))))))))
    (define gxc#check-contract-violation!
      (lambda (_%stx262835%_ _%expr262836%_)
        (let* ((_%__stx268699268700%_ _%expr262836%_)
               (_%$%g262839262869%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx268699268700%_)))))
          (let ((_%__kont268701268702%_
                 (lambda (_%$%g262841262937%_
                          _%$%g262842262938%_
                          _%$%g262843262939%_)
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"contract violation"
                      _%stx262835%_
                      _%$%g262843262939%_
                      _%$%g262842262938%_
                      _%$%g262841262937%_))))
                (_%__kont268703268704%_ (lambda () _%expr262836%_)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx268699268700%_))
                (let ((_%$%e262844262881%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx268699268700%_))))
                  (let ((_%$%tl262846262886%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e262844262881%_)))
                        (_%$%hd262845262884%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e262844262881%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%$%hd262845262884%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq?
                               '%#begin-annotation
                               _%$%hd262845262884%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl262846262886%_))
                                (let ((_%$%e262847262889%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl262846262886%_))))
                                  (let ((_%$%tl262849262894%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e262847262889%_)))
                                        (_%$%hd262848262892%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e262847262889%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd262848262892%_))
                                        (let ((_%$%e262850262897%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd262848262892%_))))
                                          (let ((_%$%tl262852262902%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e262850262897%_)))
                                                (_%$%hd262851262900%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e262850262897%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd262851262900%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '@contract-violation
                                                       _%$%hd262851262900%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl262852262902%_))
                                                        (let ((_%$%e262853262905%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl262852262902%_))))
                  (let ((_%$%tl262855262910%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e262853262905%_)))
                        (_%$%hd262854262908%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e262853262905%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl262855262910%_))
                        (let ((_%$%e262856262913%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl262855262910%_))))
                          (let ((_%$%tl262858262918%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e262856262913%_)))
                                (_%$%hd262857262916%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e262856262913%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl262858262918%_))
                                (let ((_%$%e262859262921%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl262858262918%_))))
                                  (let ((_%$%tl262861262926%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e262859262921%_)))
                                        (_%$%hd262860262924%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e262859262921%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl262861262926%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl262849262894%_))
                                            (let ((_%$%e262862262929%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl262849262894%_))))
                                              (let ((_%$%tl262864262934%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e262862262929%_)))
                                                    (_%$%hd262863262932%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e262862262929%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl262864262934%_))
                                                    (_%__kont268701268702%_
                                                     _%$%hd262860262924%_
                                                     _%$%hd262857262916%_
                                                     _%$%hd262854262908%_)
                                                    (_%__kont268703268704%_))))
                                            (_%__kont268703268704%_))
                                        (_%__kont268703268704%_))))
                                (_%__kont268703268704%_))))
                        (_%__kont268703268704%_))))
                (_%__kont268703268704%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont268703268704%_))
                                                (_%__kont268703268704%_))))
                                        (_%__kont268703268704%_))))
                                (_%__kont268703268704%_))
                            (_%__kont268703268704%_))
                        (_%__kont268703268704%_))))
                (_%__kont268703268704%_))))))))
